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
        FDSHeuristicFunction heuristic = new FDSHeuristicFunction();

        for (int uid1 = 0; uid1 < state.getNUsers(); ++uid1) {
            for (int rid1 = 0; rid1 < state.getNRequests(uid1); ++rid1) {
                for (int sid1 : FDS.getServers().fileLocations(state.getFid(uid1, rid1))) {
                    FDS newState1 = new FDS(state);
                    newState1.swapServer(uid1, rid1, sid1);
                    for (int uid2 = uid1; uid2 < state.getNUsers(); ++uid2) {
                        for (int rid2 = rid1 + 1; rid2 < state.getNRequests(uid2); ++rid2) {
                            for (int sid2 : FDS.getServers().fileLocations(state.getFid(uid2, rid2))) {
                                FDS newState2 = new FDS(newState1);
                                newState2.swapServer(uid2, rid2, sid2);
                                retVal.add(new Successor("", newState2));
                            }
                        }
                    }
                }
            }
        }

        return retVal;
    }
}
