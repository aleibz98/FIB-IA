package edu.upc;

import aima.search.framework.GoalTest;

/**
 * Checks if the solution is a correct solution, we want optimization so it always returns false
 */
public class FDSGoalTest implements GoalTest {


    @Override
    public boolean isGoalState(Object o) {
        return false;
    }
}
