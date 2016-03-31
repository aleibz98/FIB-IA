package edu.upc;

import aima.search.framework.HeuristicFunction;

/**
 * Created by marc.asenjo on 29/03/2016.
 */
public class FDSHeuristicFunction2 implements HeuristicFunction {

    //factors a modificar per trobar un bon heuristic
    static float factor = 1;
    static boolean squared = true;

    /**
     * Returns the server with the maximum value
     */
    public double getHeuristicValue(Object state) {

        FDS fds = (FDS) state;
        long[] serverTimes = fds.getServerTimes();

        int sum = 0;
        for (long time : serverTimes) sum += time;

        int mig = sum / serverTimes.length;
        long var = 0;
        for (long time : serverTimes) var += (time - mig) * (time - mig);

        double res;
        if (squared) res = var + factor * mig * mig;
        else res = var + factor * mig;
        return res;
    }
}