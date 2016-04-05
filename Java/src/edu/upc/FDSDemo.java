package edu.upc;

import IA.DistFS.Requests;
import IA.DistFS.Servers;
import aima.search.framework.*;
import aima.search.informed.HillClimbingSearch;
import aima.search.informed.SimulatedAnnealingSearch;
import javafx.util.Pair;

import java.io.PrintStream;
import java.util.Locale;
import java.util.Properties;
import java.util.Random;

@SuppressWarnings("unchecked")
public class FDSDemo {
    private static int users = 200;
    private static int requests = 5;
    private static int seed = 1234;
    private static int diffSeeds = 1;
    private static int nserv = 50;
    private static int nrep = 5;
    private static int repetitions = 1;
    private static int successors = 1;
    private static int heuristic = 1;
    private static Algorithm algorithm = Algorithm.HILL_CLIMBING;
    private static boolean debug = false;
    private static boolean printActions = false;
    private static boolean randomInit = true;
    private static boolean showHelp = false;
    private static String help =
            "-h             Print this help\n\n" +
                    "-a             Print actions\n" +
                    "-d             Print debug info\n" +
                    "-R n           Repeat n times\n" +
                    "-s n           Select successor function [1|2|3]\n" +
                    "-heuristic s   Set s as desired heuristic [1|2]\n" +
                    "-algorithm s   Set s as desired algorithm [1|2|3]\n" +
                    "-initial s     Set s as desired initial solution [best|random]\n\n" +
                    "-u n           Set n users for the problem\n" +
                    "-r n           Set n requests for the problem\n" +
                    "-serv n        Set n servers\n" +
                    "-repl n        Set n as minimum replications\n\n" +
                    "-seed n        Set n as seed\n" +
                    "-diffS n       Start from selected seed and do the problem with n different seeds\n";

    public static void main(String[] args) throws Servers.WrongParametersException {
        Locale.setDefault(new Locale("ca"));
        readCommands(args);
        if (seed == -1) seed = new Random().nextInt();
        PrintStream out = System.out;

        if (showHelp) {
            out.println(help);
            System.exit(0);
        }

        out.println("Users: " + users);
        out.println("Requests: " + requests);
        out.println("Servers: " + nserv);
        out.println("Replications: " + nrep);
        out.println("Successor F: " + successors);
        out.println("Initial solution: " + (randomInit ? "RANDOM" : "BEST_SERVER"));
        out.println("algorithm: " + algorithm.toString());
        out.println("Heuristic: " + heuristic);
        out.println("Diff Seed Mode: " + (diffSeeds != 1 ? "ON" : "OFF"));

        // Test mode
        if (repetitions != 1) {
            out.println("TestMode: ON");
            out.println("Repetitions: " + repetitions);
        } else out.println("TestMode: OFF");

        // Initial type
        FDS.InitialType type;
        if (randomInit) type = FDS.InitialType.RANDOM;
        else type = FDS.InitialType.BEST_SERVER;

        FDSSuccessorFunction.debug = debug;
        FDSSuccessorFunction.worstServer = heuristic == 1;

        for (int sed = seed; sed < seed + diffSeeds; ++sed) {
            SearchAgent agent = null;
            FDS res = null;
            long tTime = 0;
            long transTime = 0;
            long maxTime = 0, minTime = 0;

            long tTransTime = 0;
            long tMaxTime = 0, tMinTime = 0;

            out.println("\n" + algorithm.toString() + " -->");
            out.println("Seed: " + sed);

            // Repeat the execution and get the mean values
            for (int i = 0; i < repetitions; ++i) {
                if (repetitions > 1) System.out.println("Iteration: " + (i + 1));
                long start = System.currentTimeMillis();

                // Problem initialization
                Requests r = new Requests(users, requests, sed);
                Servers s = new Servers(nserv, nrep, sed);
                FDS fds = new FDS(s, r, users, nserv, type, sed);

                switch (algorithm) {
                    case HILL_CLIMBING: {
                        FDSHeuristicFunction2.factor = i + 10;
                        Pair<SearchAgent, Search> p = HillClimbing(fds);
                        if (i + 1 == repetitions || debug) {
                            assert p != null;
                            agent = p.getKey();
                            res = ((FDS) p.getValue().getGoalState());
                            transTime = res.getTotalTime();
                            maxTime = res.getMaxTime();
                            minTime = res.getMinTime();
                        }
                        break;
                    }
                    case SIMULATED_ANNEALING: {
                        Pair<SearchAgent, Search> p = SimulatedAnnealing(fds);
                        assert p != null;
                        agent = p.getKey();
                        res = ((FDS) p.getValue().getGoalState());

                        transTime = res.getTotalTime();
                        maxTime = res.getMaxTime();
                        minTime = res.getMinTime();

                        tTransTime += res.getTotalTime();
                        tMaxTime += res.getMaxTime();
                        tMinTime += res.getMinTime();
                        break;
                    }
                    case HILL_CLIMBING_UNSTUCKING: {
                        Pair<SearchAgent, Search> p = HillClimbingUnstucking(fds);
                        if (i + 1 == repetitions || debug) {
                            assert p != null;
                            agent = p.getKey();
                            res = ((FDS) p.getValue().getGoalState());
                            transTime = res.getTotalTime();
                            maxTime = res.getMaxTime();
                            minTime = res.getMinTime();
                        }
                    }
                }

                long end = System.currentTimeMillis();
                tTime += end - start;

                if (i + 1 == repetitions || debug) {
                    assert agent != null;

                    // Print results
                    if (printActions) {
                        agent.getActions().forEach(out::println);
                        out.println(res.toString());
                    }
                    printInstrumentation(agent.getInstrumentation());

                    switch (algorithm) {
                        case HILL_CLIMBING:
                        case HILL_CLIMBING_UNSTUCKING:
                            out.println("Total Transmission time: " + String.format("%,d ms", transTime));
                            out.println("Maximum transmission time: " + String.format("%,d ms", maxTime));
                            out.println("Minimum transmission time: " + String.format("%,d ms", minTime));
                            break;
                        case SIMULATED_ANNEALING:
                            if (i + 1 != repetitions) break;
                            double time1 = transTime / ((double) repetitions);
                            double time2 = maxTime / ((double) repetitions);
                            double time3 = minTime / ((double) repetitions);

                            out.println("Average total transmission time: " + String.format("%,f ms", time1));
                            out.println("Average max transmission time: " + String.format("%,f ms", time2));
                            out.println("Average min transmission time: " + String.format("%,f ms", time3));
                    }
                }
            }

            System.out.println();
            out.println("Elapsed time: " + String.format("%,d ms", tTime));
            out.println("Average time: " + String.format("%,.2f ms", tTime / ((double) repetitions)));
        }
    }

    private static void checkParameter(int val, String s) throws IllegalArgumentException {
        if (val <= 0) throw new IllegalArgumentException("Not a valid argument: " + s);
    }

    private static void readCommands(String[] args) throws IllegalArgumentException {
        if (args.length == 0) return;

        for (int i = 0; i < args.length; i += 2) {
            String sub = args[i].substring(1);

            // One parameter options
            switch (sub) {
                // -d => Debug mode
                case "d":
                    debug = true;
                    --i;
                    continue;
                case "a":
                    printActions = true;
                    --i;
                    continue;
                case "h":
                    showHelp = true;
                    --i;
                    continue;
                default:
            }

            // Two parameter options
            if (args.length - i < 2) throw new IllegalArgumentException("Not a valid argument: " + args[i]);
            String par = args[i + 1];
            switch (sub) {
                // -u n => Set n users for the problem
                case "u":
                    users = Integer.valueOf(par);
                    checkParameter(users, par);
                    break;
                // -r n => Set n requests for the problem
                case "r":
                    requests = Integer.valueOf(par);
                    checkParameter(requests, par);
                    break;
                // -seed n => Set seed n
                case "seed":
                    seed = Integer.valueOf(par);
                    break;
                // -serv n => Set n servers
                case "serv":
                    nserv = Integer.valueOf(par);
                    checkParameter(nserv, par);
                    break;
                // -repl n => Set n as the replication number
                case "repl":
                    nrep = Integer.valueOf(par);
                    checkParameter(nrep, par);
                    break;
                // -initial [best|random] => Select initial solution
                case "initial":
                    randomInit = par.toLowerCase().contains("rand");
                    break;
                // -algorithm n => Select algorithm n
                case "algorithm":
                    int x = Integer.valueOf(par);
                    try {
                        algorithm = Algorithm.fromInteger(x);
                    } catch (ArrayIndexOutOfBoundsException e) {
                        throw new IllegalArgumentException(e.getMessage());
                    }
                    break;
                // -R n => Repeat n times the search
                // -repetitions n => Repeat n times the search
                case "R":
                    repetitions = Integer.valueOf(par);
                    checkParameter(repetitions, par);
                    break;
                // -diffS n => Start from selected seed and do the problem with n different seeds
                case "diffS":
                    diffSeeds = Integer.valueOf(par);
                    checkParameter(diffSeeds, par);
                    break;
                // -s n => Select successor function
                case "s":
                    successors = Integer.valueOf(par);
                    checkParameter(successors, par);
                    break;
                // -heuristic [1|2]
                case "heuristic":
                    heuristic = Integer.valueOf(par);
                    checkParameter(heuristic, par);
                    break;
                default:
                    throw new IllegalArgumentException("Argument not found: " + args[i]);
            }
        }
    }

    private static Pair<SearchAgent, Search> HillClimbing(FDS fds) {
        try {
            SuccessorFunction f;
            switch (successors) {
                case 1:
                    f = new FDSSuccessorFunction();
                    break;
                case 2:
                    f = new FDSSuccessorFunction2();
                    break;
                case 3:
                    f = new FDSSuccessorFunction3();
                    break;
                default:
                    throw new RuntimeException("Bad successor function");
            }

            HeuristicFunction h;
            switch (heuristic) {
                case 1:
                    h = new FDSHeuristicFunction();
                    break;
                case 2:
                    h = new FDSHeuristicFunction2();
                    break;
                default:
                    throw new RuntimeException("Bad heuristic function");
            }

            Problem problem = new Problem(fds, f, new FDSGoalTest(), h);
            Search search = new HillClimbingSearch();

            return new Pair<>(new SearchAgent(problem, search), search);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    private static Pair<SearchAgent, Search> HillClimbingUnstucking(FDS fds){
        try {
            boolean keep = true;
            SearchAgent searchAgent = null;
            Search search = null;
            Problem problem = null;

            SuccessorFunction f;
            switch (successors) {
                case 1:
                    f = new FDSSuccessorFunction();
                    break;
                case 2:
                    f = new FDSSuccessorFunction2();
                    break;
                case 3:
                    f = new FDSSuccessorFunction3();
                    break;
                default:
                    throw new RuntimeException("Bad successor function");
            }

            HeuristicFunction h;
            switch (heuristic) {
                case 1:
                    h = new FDSHeuristicFunction();
                    break;
                case 2:
                    h = new FDSHeuristicFunction2();
                    break;
                default:
                    throw new RuntimeException("Bad heuristic function");
            }

            int maxUnstucks=-1;
            while (keep && ((maxUnstucks==-1)||(maxUnstucks--)>0)) {
                problem = new Problem(fds, f, new FDSGoalTest(), h);
                search = new HillClimbingSearch();
                searchAgent = new SearchAgent(problem, search);
                fds=(FDS)search.getGoalState();
                //System.out.println("Before unstuck: " + h.getHeuristicValue(fds));
                keep = fds.unstuck(h, false, heuristic == 1);
                if (keep) System.out.println("After unstuck: "+h.getHeuristicValue(fds));
                //else System.out.println("Unstuck failed");
            }

            return new Pair<>(searchAgent, search);
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

    public enum Algorithm {
        HILL_CLIMBING(1),
        SIMULATED_ANNEALING(2),
        HILL_CLIMBING_UNSTUCKING(3);

        private int num;

        Algorithm(int n) {
            this.num = n;
        }

        public static Algorithm fromInteger(int x) throws ArrayIndexOutOfBoundsException {
            switch (x) {
                case 1:
                    return HILL_CLIMBING;
                case 2:
                    return SIMULATED_ANNEALING;
                case 3:
                    return HILL_CLIMBING_UNSTUCKING;
                default:
                    throw new ArrayIndexOutOfBoundsException("No enum for this value " + x);
            }
        }
    }
}