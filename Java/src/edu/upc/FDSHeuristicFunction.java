package edu.upc;

import aima.search.framework.HeuristicFunction;

/**
 * Created by marc.asenjo on 17/03/2016.
 */
public class FDSHeuristicFunction implements HeuristicFunction {

    /**
     * Returns the server with the maximum value
     */
    public double getHeuristicValue(Object state) {
        FDS fds = (FDS) state;
        long[] serverTimes = fds.getServerTimes();
        long max = 0;
        for (long time : serverTimes) {
            if (time > max) max = time;
        }
        return max;
    }
}
