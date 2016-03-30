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

        FDSSuccessorFunction simple = new FDSSuccessorFunction();
        List firststep= simple.getSuccessors(state);
        for (Object o : firststep){
            Successor s = (Successor) o;
            retVal.addAll(simple.getSuccessors(((Successor) o).getState()));
        }

        return retVal;
    }
}
