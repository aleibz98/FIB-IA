package edu.upc;

import aima.search.framework.Successor;
import aima.search.framework.SuccessorFunction;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Inigo on 30/03/2016.
 */
public class FDSSuccessorFunction2 implements SuccessorFunction {
    public List getSuccessors(Object aState) {
        ArrayList<Object> retVal = new ArrayList<>();
        FDS state = (FDS) aState;

        /*FDSSuccessorFunction simple = new FDSSuccessorFunction();
        List firststep= simple.getSuccessors(state);
        for (Object o : firststep){
            Successor s = (Successor) o;
            retVal.addAll(simple.getSuccessors(((Successor) o).getState()));
        }*/

        FDSHeuristicFunction heuristic = new FDSHeuristicFunction();
        for (int uid = 0; uid < state.getNUsers(); ++uid) {
            for (int rid = 0; rid < state.getNRequests(uid); ++rid) {
                for (int rid2 = 0; rid != rid2 && rid2 < state.getNRequests(uid); ++rid2) {
                    int fid1 = state.getFid(uid, rid);
                    int fid2 = state.getFid(uid, rid2);
                    for (int sid : FDS.getServers().fileLocations(fid1)) {
                        int oldSid = state.getSid(uid, rid);
                        for (int sid2 : FDS.getServers().fileLocations(fid2)) {
                            FDS newState = new FDS(state);
                            int oldSid2 = state.getSid(uid, rid2);
                            newState.swapServer(uid, rid, sid);
                            newState.swapServer(uid, rid2, sid2);

                            double v = heuristic.getHeuristicValue(newState);
                            long time = newState.getTotalTime();
                            retVal.add(new Successor(
                                    "U" + uid + " => F" + fid1 + " S" + oldSid + " -> S" + sid +
                                            " | F" + fid2 + " S" + oldSid2 + " -> S" + sid2 +
                                            ": S=" + v + "ms T=" + time + "ms",
                                    newState));
                        }
                    }
                }
            }
        }
        return retVal;
    }
}
