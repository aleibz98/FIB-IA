package edu.upc;

import IA.TSP2.ProbTSPBoard;
import IA.TSP2.ProbTSPHeuristicFunction;
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
        FDS state = (FDS)aState;

        for(int uid = 0; uid < state.getNUsers(); ++uid) {
            for(int rid = 0; rid < state.getNRequests(uid); ++rid) {
                for (int sid : FDS.getServers().fileLocations(state.getFid(uid,rid))){
                    FDS newState = new FDS(state);
                    newState.swapServer(uid, rid, sid);
                    retVal.add(new Successor("", newState));
                }
            }
        }

        return retVal;
    }
}
