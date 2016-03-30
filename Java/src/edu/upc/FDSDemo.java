package edu.upc;

import IA.DistFS.Requests;
import IA.DistFS.Servers;
import aima.search.framework.Problem;
import aima.search.framework.Search;
import aima.search.framework.SearchAgent;
import aima.search.informed.HillClimbingSearch;
import aima.search.informed.SimulatedAnnealingSearch;
import javafx.util.Pair;

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
    static int repetitions = 10;
    static boolean hillClimbing = true;
    static boolean testMode = false;

    public static void main(String[] args) throws Servers.WrongParametersException {
        readCommands(args);
        if (seed == -1) seed = new Random().nextInt();

        long start = System.currentTimeMillis();

        // Inicialitazio del problema
        Requests r = new Requests(users, requests, seed);
        Servers s = new Servers(nserv, nrep, seed);
        FDS fds = new FDS(s, r, users, nserv, FDS.InitialType.RANDOM, seed);

        if (hillClimbing) HillClimbing(fds);
        else SimulatedAnnealing(fds);

        long end = System.currentTimeMillis();

        System.out.println("Elapsed time " + Long.toString(end - start) + "ms");
    }

    public static void readCommands(String[] args) throws IllegalArgumentException {
        if (args.length < 2) return;

        List<String> argsList = new ArrayList<>();
        List<Pair<String, String>> optsList = new ArrayList<>();

        for (int i = 0; i < args.length; ++i) {
            switch (args[i].charAt(0)) {
                case '-':
                    if (args.length - i < 2)
                        throw new IllegalArgumentException("Not a valid argument: " + args[i]);
                    else {
                        optsList.add(new Pair<>(args[i].substring(1, args[i].length()), args[i + 1]));
                        ++i;
                    }
                    break;
                default:
                    argsList.add(args[i]);
                    break;
            }
        }

        for (Pair<String, String> o : optsList) {
            switch (o.getKey()) {
                case "u":
                    users = Integer.valueOf(o.getValue());
                    break;
                case "r":
                    requests = Integer.valueOf(o.getValue());
                    break;
                case "seed":
                    seed = Integer.valueOf(o.getValue());
                    break;
                case "serv":
                    nserv = Integer.valueOf(o.getValue());
                    break;
                case "repl":
                    nrep = Integer.valueOf(o.getValue());
                    break;
                case "algorithm":
                    String al = o.getValue().toLowerCase();
                    hillClimbing = al.contains("hill");
                    break;
                default:
                    throw new IllegalArgumentException("Not a valid argument: " + o.getKey());
            }
        }
    }

    private static void HillClimbing(FDS fds) {
        System.out.println("\nHillClimbing  -->");
        try {
            Problem problem = new Problem(fds, new FDSSuccessorFunction(), new FDSGoalTest(), new FDSHeuristicFunction());
            Search search = new HillClimbingSearch();
            SearchAgent agent = new SearchAgent(problem, search);

            System.out.println();
            printActions(agent.getActions());
            printInstrumentation(agent.getInstrumentation());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private static void SimulatedAnnealing(FDS fds) {
        System.out.println("\nTSP Simulated Annealing  -->");
        try {
            Problem problem = new Problem(fds, new FDSSuccessorFunctionSA(), new FDSGoalTest(), new FDSHeuristicFunction());
            SimulatedAnnealingSearch search = new SimulatedAnnealingSearch(2000, 100, 5, 0.001);
            //search.traceOn();
            SearchAgent agent = new SearchAgent(problem, search);

            System.out.println();
            printActions(agent.getActions());
            printInstrumentation(agent.getInstrumentation());
        } catch (Exception e) {
            e.printStackTrace();
        }
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
