package edu.upc;

import aima.search.framework.SuccessorFunction;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Inigo on 31/03/2016.
 */
public class FDSSuccessorFunction3 extends FDSSuccessorFunction implements SuccessorFunction {

    public FDSSuccessorFunction3() {
    }

    public FDSSuccessorFunction3(boolean debug, boolean worstServer) {
        super(debug, worstServer);
    }

    public List getSuccessors(Object aState) {
        ArrayList<Object> retVal = new ArrayList<>();
        FDSSuccessorFunction fdsSuccessorFunction= new FDSSuccessorFunction();
        FDSSuccessorFunction2 fdsSuccessorFunction2= new FDSSuccessorFunction2();
        retVal.addAll(fdsSuccessorFunction.getSuccessors(aState));
        retVal.addAll(fdsSuccessorFunction2.getSuccessors(aState));
        return retVal;
    }
}
