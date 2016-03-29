package edu.upc;

import aima.search.framework.Successor;
import aima.search.framework.SuccessorFunction;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/**
 * Created by marc.asenjo on 29/03/2016.
 */
public class FDSSuccessorFunctionSA implements SuccessorFunction {
    @Override
    public List getSuccessors(Object aState) {
        ArrayList retVal = new ArrayList();
        FDS state = (FDS) aState;
        FDSHeuristicFunction heuristic = new FDSHeuristicFunction();
        Random myRandom = new Random();


        int uid = myRandom.nextInt(state.getNUsers());
        int rid = myRandom.nextInt(state.getNRequests(uid));

        //POSSIBLEMENT A MILLORAR EFICIENCIA
        Object[] servers = FDS.getServers().fileLocations(state.getFid(uid, rid)).toArray();
        int sid = (int) servers[myRandom.nextInt(servers.length)];

        FDS newState = new FDS(state);
        int oldSid=state.getSid(uid,rid);
        newState.swapServer(uid, rid, sid);


        double v = heuristic.getHeuristicValue(newState);
        //String S = "Intercambio del " + " " + state.getSid() + " " + j + " Coste(" + v + ") ---> ";

        retVal.add(new Successor("U"+uid+"'s request of F"+state.getFid(uid,rid)+" moved from S"+oldSid+" to S"+sid+": cost "+v, newState));

        return retVal;
    }
}
