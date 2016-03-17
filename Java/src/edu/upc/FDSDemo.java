package edu.upc;

import IA.DistFS.Requests;
import IA.DistFS.Servers;
import aima.search.framework.Problem;
import aima.search.framework.Search;
import aima.search.framework.SearchAgent;
import aima.search.informed.HillClimbingSearch;
import aima.search.informed.SimulatedAnnealingSearch;

import java.util.Iterator;
import java.util.List;
import java.util.Properties;

public class FDSDemo {
    static int users = 200;
    static int requests = 5;
    static int seed = 0;
    static int nserv = 50;
    static int nrep = 5;

    public static void main(String[] args) throws Servers.WrongParametersException {
        // Inicialitazio del problema
        Requests r = new Requests(users, requests, seed);
        Servers s = new Servers(nserv, nrep, seed);
        FDS fds = new FDS(s, r, users, nserv, FDS.initialType.Random);
        HillClimbing(fds);
        SimulatedAnnealing(fds);
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
            Problem problem = new Problem(fds, new FDSSuccessorFunction(), new FDSGoalTest(), new FDSHeuristicFunction());
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
        Iterator keys = properties.keySet().iterator();
        while (keys.hasNext()) {
            String key = (String) keys.next();
            String property = properties.getProperty(key);
            System.out.println(key + " : " + property);
        }

    }

    private static void printActions(List actions) {
        for (int i = 0; i < actions.size(); i++) {
            String action = (String) actions.get(i);
            System.out.println(action);
        }
    }

}
