package edu.upc;

import aima.search.framework.Successor;
import aima.search.framework.SuccessorFunction;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by marc.asenjo on 17/03/2016.
 */
public class FDSSuccessorFunction implements SuccessorFunction {
    public List getSuccessors(Object aState) {
        ArrayList retVal = new ArrayList();
        FDS state = (FDS) aState;
        FDSHeuristicFunction heuristic = new FDSHeuristicFunction();

        for (int uid = 0; uid < state.getNUsers(); ++uid) {
            for (int rid = 0; rid < state.getNRequests(uid); ++rid) {
                for (int sid : FDS.getServers().fileLocations(state.getFid(uid, rid))) {
                    FDS newState = new FDS(state);
                    int oldSid = state.getSid(uid, rid);
                    newState.swapServer(uid, rid, sid);
                    double v = heuristic.getHeuristicValue(newState);
                    int time = newState.getTotalTime();
                    retVal.add(new Successor(
                            "U" + uid + " -> F" + state.getFid(uid, rid) + " from S" +
                            oldSid + " -> S" + sid + ": S=" + v + "ms T=" + time + "ms",
                            newState));
                }
            }
        }

        return retVal;
    }
}
