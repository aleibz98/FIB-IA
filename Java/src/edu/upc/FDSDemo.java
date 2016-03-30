package edu.upc;

import IA.DistFS.Requests;
import IA.DistFS.Servers;
import aima.search.framework.Problem;
import aima.search.framework.Search;
import aima.search.framework.SearchAgent;
import aima.search.informed.HillClimbingSearch;
import aima.search.informed.SimulatedAnnealingSearch;
import javafx.util.Pair;

import java.io.PrintStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import java.util.Random;

public class FDSDemo {
    static int users = 200;
    static int requests = 5;
    static int seed = 1234;
    static int nserv = 50;
    static int nrep = 5;
    static int repetitions = 1;
    static boolean hillClimbing = true;
    static boolean printActions = false;

    public static void main(String[] args) throws Servers.WrongParametersException {
        readCommands(args);
        if (seed == -1) seed = new Random().nextInt();
        PrintStream out = System.out;

        out.println("Users: " + users);
        out.println("Requests: " + requests);
        out.println("Servers: " + nserv);
        out.println("Replications: " + nrep);
        out.println("Seed: " + seed);

        // Test mode
        if (repetitions != 1) {
            out.println("TestMode: ON");
            out.println("Repetitions: " + repetitions);
        } else out.println("TestMode: OFF");

        SearchAgent agent = null;
        FDS res = null;
        long tTime = 0;
        long transTime = 0;
        long maxTime = 0, minTime = 0;

        if (hillClimbing) System.out.println("\nHillClimbing  -->");
        else System.out.println("\nTSP Simulated Annealing  -->");

        // Repeat the execution and get the mean values
        for (int i = 0; i < repetitions; ++i) {
            System.out.println("Iteration: " + (i + 1));
            long start = System.currentTimeMillis();

            // Inicialitazio del problema
            Requests r = new Requests(users, requests, seed);
            Servers s = new Servers(nserv, nrep, seed);
            FDS fds = new FDS(s, r, users, nserv, FDS.InitialType.RANDOM, seed);

            if (hillClimbing) {
                Pair<SearchAgent, Search> p = HillClimbing(fds);
                if (i + 1 == repetitions) {
                    agent = p.getKey();
                    res = ((FDS) p.getValue().getGoalState());
                    transTime = res.getTotalTime();
                    maxTime = res.getMaxTime();
                    minTime = res.getMinTime();
                }
            } else {
                Pair<SearchAgent, Search> p = SimulatedAnnealing(fds);
                agent = p.getKey();
                res = ((FDS) p.getValue().getGoalState());
                transTime += res.getTotalTime();
                maxTime += res.getMaxTime();
                minTime += res.getMinTime();
            }

            long end = System.currentTimeMillis();
            tTime += end - start;
        }

        // Print results
        if (printActions) printActions(agent.getActions());
        printInstrumentation(agent.getInstrumentation());
        if (hillClimbing) {
            out.println("Total Transmission time: " + String.format("%,d ms", transTime));
            out.println("Maximum transmission time: " + String.format("%,d ms", maxTime));
            out.println("Minimum transmission time: " + String.format("%,d ms", minTime));
        } else {
            double time1 = transTime / ((double) repetitions);
            double time2 = maxTime / ((double) repetitions);
            double time3 = minTime / ((double) repetitions);

            out.println("Average total transmission time: " + String.format("%,f ms", time1));
            out.println("Average max transmission time: " + String.format("%,f ms", time2));
            out.println("Average min transmission time: " + String.format("%,f ms", time3));
        }

        System.out.println();
        out.println("Elapsed time: " + tTime + "ms");
        out.println("Average time: " + tTime / ((double) repetitions) + "ms");
    }

    public static void checkParameter(int val, String s) throws IllegalArgumentException {
        if (val <= 0) throw new IllegalArgumentException("Not a valid argument: " + s);
    }

    public static void readCommands(String[] args) throws IllegalArgumentException {
        if (args.length < 2) return;

        List<String> argsList = new ArrayList<>();
        List<Pair<String, String>> optsList = new ArrayList<>();

        for (int i = 0; i < args.length; i += 2) {
            if (args.length - i < 2) throw new IllegalArgumentException("Not a valid argument: " + args[i]);
            String sub = args[i].substring(1);
            String par = args[i + 1];
            switch (sub) {
                case "a":
                    printActions = true;
                    break;
                case "u":
                    users = Integer.valueOf(args[i + 1]);
                    checkParameter(users, par);
                    break;
                case "r":
                    requests = Integer.valueOf(args[i + 1]);
                    checkParameter(requests, par);
                    break;
                case "seed":
                    seed = Integer.valueOf(args[i + 1]);
                    break;
                case "serv":
                    nserv = Integer.valueOf(args[i + 1]);
                    checkParameter(nserv, par);
                    break;
                case "repl":
                    nrep = Integer.valueOf(par);
                    checkParameter(nrep, par);
                    break;
                case "algorithm":
                    String al = args[i + 1].toLowerCase();
                    hillClimbing = al.contains("hill");
                    break;
                case "R":
                case "repetitions":
                    repetitions = Integer.valueOf(par);
                    checkParameter(repetitions, par);
                    break;
                default:
                    throw new IllegalArgumentException("Not a valid argument: " + args[i]);
            }
        }
    }

    private static Pair<SearchAgent, Search> HillClimbing(FDS fds) {
        try {
            Problem problem = new Problem(fds, new FDSSuccessorFunction(), new FDSGoalTest(), new FDSHeuristicFunction());
            Search search = new HillClimbingSearch();

            return new Pair<>(new SearchAgent(problem, search), search);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    private static Pair<SearchAgent, Search> SimulatedAnnealing(FDS fds) {
        try {
            Problem problem = new Problem(fds, new FDSSuccessorFunctionSA(), new FDSGoalTest(), new FDSHeuristicFunction());
            SimulatedAnnealingSearch search = new SimulatedAnnealingSearch(2000, 100, 5, 0.001);
            //search.traceOn();

            return new Pair<>(new SearchAgent(problem, search), search);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    private static void printInstrumentation(Properties properties) {
        for (Object o : properties.keySet()) {
            String key = (String) o;
            String property = properties.getProperty(key);
            System.out.println(key + " : " + property);
        }

    }

    private static void printActions(List actions) {
        actions.forEach(System.out::println);
    }

}
