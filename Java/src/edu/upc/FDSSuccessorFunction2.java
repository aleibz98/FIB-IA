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
        // For all users
        for (int uid = 0; uid < state.getNUsers(); ++uid) {
            // For all files
            for (int rid = 0; rid < state.getNRequests(uid); ++rid) {
                // For all files again (not the same as previows for)
                for (int rid2 = rid + 1; rid2 < state.getNRequests(uid); ++rid2) {
                    // Get File IDs
                    int fid1 = state.getFid(uid, rid);
                    int fid2 = state.getFid(uid, rid2);

                    // For all servers containing file 1
                    for (int sid : FDS.getServers().fileLocations(fid1)) {
                        int oldSid = state.getSid(uid, rid);

                        // For all servers containing file 2
                        for (int sid2 : FDS.getServers().fileLocations(fid2)) {

                            // Create new state
                            FDS newState = new FDS(state);
                            int oldSid2 = state.getSid(uid, rid2);

                            // Change the servers for the 2 files
                            newState.swapServer(uid, rid, sid);
                            newState.swapServer(uid, rid2, sid2);

                            // Print info
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
