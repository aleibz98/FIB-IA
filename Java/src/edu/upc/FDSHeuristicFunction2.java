package edu.upc;

import aima.search.framework.HeuristicFunction;

/**
 * Created by marc.asenjo on 29/03/2016.
 */
public class FDSHeuristicFunction2 implements HeuristicFunction {

    /**
     * Returns the server with the maximum value
     */
    public double getHeuristicValue(Object state) {
        FDS fds = (FDS) state;
        int[] serverTimes = fds.getServertimes();

        int sum = 0;
        for (int time : serverTimes) sum += time;

        int mig = sum / serverTimes.length;
        int var = 0;
        for (int time : serverTimes) var += (time - mig) * (time - mig);
        return var;
    }
}