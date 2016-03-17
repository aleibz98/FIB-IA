package edu.upc;

import aima.search.framework.HeuristicFunction;

/**
 * Created by joan.marce.igual on 17/03/2016.
 */
public class FDSHeuristicFunctionSA implements HeuristicFunction {
    @Override
    public double getHeuristicValue(Object state) {
        FDS fds = (FDS) state;
        int[] serverTimes = fds.getServertimes();
        int max=0;
        for (int time: serverTimes){
            if (time>max)max=time;
        }
        return max;
    }
}
