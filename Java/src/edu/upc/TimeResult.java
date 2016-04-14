package edu.upc;

/**
 * Created by joan on 5/04/16.
 */
public class TimeResult {
    private long transTime;
    private long maxTime;
    private long minTime;
    private int repetitions;
    private long tTransTime = 0;
    private long tMaxTime = 0;
    private long tMinTime = 0;

    public TimeResult() {

    }

    public TimeResult(int reps) {
        repetitions = reps;
    }

    public long getTransTime() {
        return transTime;
    }

    public void setTransTime(long transTime) {
        this.transTime = transTime;
    }

    public long getMaxTime() {
        return maxTime;
    }

    public void setMaxTime(long maxTime) {
        this.maxTime = maxTime;
    }

    public long getMinTime() {
        return minTime;
    }

    public void setMinTime(long minTime) {
        this.minTime = minTime;
    }

    public int getRepetitions() {
        return repetitions;
    }

    public void setRepetitions(int repetitions) {
        this.repetitions = repetitions;
    }

    public void addTransTime(long t) {
        tTransTime += t;
    }

    public void addMaxTime(long t) {
        tMaxTime += t;
    }

    public void addMinTime(long t) {
        tMinTime += t;
    }

    public double getAvgTransTime() {
        return tTransTime / ((double) repetitions);
    }

    public double getAvgMaxTime() {
        return tMaxTime / ((double) repetitions);
    }

    public double getAvgMinTime() {
        return tMinTime / ((double) repetitions);
    }
}
