package edu.upc;

import IA.DistFS.Requests;
import IA.DistFS.Servers;
import aima.search.framework.HeuristicFunction;

import java.util.*;

/**
 * File Distributed System
 */
public class FDS {

    /**
     * Total load (time) for every server
     */
    public static Servers servers;
    /**
     * Used to convert from idUser to array position
     */
    private static HashMap<Integer, Integer> idUserCon;
    /**
     * Used to convert from array position to idUser
     */
    private static int[] idUserConBack;
    private static int[][] req;
    /**
     * Vector containing all the requests of every user, every request is of size 2 [IdServer, IdFile]
     * Users[] => Requests[] => [IdServer,IdFile]
     */
    private int[][] system;
    private long[] serverTimes;

    /**
     * Creates the initial state
     */
    public FDS(Servers servers, Requests requests, int users, int nServ, InitialType init, long seed) {
        idUserConBack = new int[users];
        idUserCon = new HashMap<>();
        if (init == InitialType.RANDOM) initialRandom(servers, requests, users, seed);
        else if (init == InitialType.BEST_SERVER) initialBestServer(servers, requests, users);
        calculateServerTimes(servers, nServ);
        FDS.servers = servers;
    }

    public FDS(FDS f) {
        copy(f);
    }

    public static Servers getServers() {
        return servers;
    }

    public void copy(FDS f) {
        serverTimes = f.serverTimes.clone();
        system = new int[f.system.length][];

        for (int i = 0; i < system.length; ++i) system[i] = f.system[i].clone();
    }

    /**
     * Creates initial state with random assignment
     *
     * @param servers  Container for servers
     * @param requests All requests to the servers
     * @param users    Users count
     */
    private void initialRandom(Servers servers, Requests requests, int users, long seed) {
        //system = new int[users][][];

        ArrayList<ArrayList<Integer>> st = new ArrayList<>();
        ArrayList<ArrayList<Integer>> r = new ArrayList<>();

        for (int i = 0; i < users; ++i) {
            st.add(new ArrayList<>());
            r.add(new ArrayList<>());
        }

        for (int i = 0; i < requests.size(); ++i) {
            int[] req = requests.getRequest(i);
            int uid = getUid(req[0]);
            int fid = req[1];

            Set<Integer> locations = servers.fileLocations(fid);
            st.get(uid).add((Integer) getRandomFromSet(locations, seed));
            r.get(uid).add(fid);
        }

        system = convertToArray(st);
        req = convertToArray(r);
    }

    /**
     * Transforms a user id (can be between 0 and 10000) to an id between 0 and users count
     *
     * @param uid Id to transform
     * @return Id transformed
     */
    private int getUid(int uid) {
        Integer userID = idUserCon.get(uid);
        if (userID == null) {
            userID = idUserCon.size();
            idUserCon.put(uid, idUserCon.size());   // Add new ID
            if (userID >= idUserConBack.length) {
                System.out.println("Out: " + userID + " " + uid);
            }
            idUserConBack[userID] = uid;            // Store new ID for backwards conversion
        }
        uid = userID;
        return uid;
    }

    private void initialBestServer(Servers servers, Requests requests, int users) {
        ArrayList<ArrayList<Integer>> st = new ArrayList<>();
        ArrayList<ArrayList<Integer>> r = new ArrayList<>();

        for (int i = 0; i < users; ++i) {
            st.add(new ArrayList<>());
            r.add(new ArrayList<>());
        }
        for (int i = 0; i < requests.size(); ++i) {
            int[] req = requests.getRequest(i);
            int uid = getUid(req[0]);
            int fid = req[1];

            Set<Integer> locations = servers.fileLocations(fid);

            int bestSid = -1;
            long bestTime = -1;

            for (int sid : locations) {
                int time = servers.tranmissionTime(sid, uid);
                if (time < bestTime || bestSid == -1) {
                    bestTime = time;
                    bestSid = sid;
                }
            }

            st.get(uid).add(bestSid);
            r.get(uid).add(fid);
        }
        system = convertToArray(st);
        req = convertToArray(r);
    }

    /**
     * Converts from an ArrayList to an Array
     *
     * @param st Array to convert
     */
    private int[][] convertToArray(ArrayList<ArrayList<Integer>> st) {
        // Conversion from ArrayList to Array
        int[][] res = new int[st.size()][];
        for (int i = 0; i < st.size(); ++i) {
            ArrayList<Integer> req = st.get(i);
            res[i] = new int[req.size()];

            for (int j = 0; j < req.size(); ++j) res[i][j] = req.get(j);
        }
        return res;
    }

    private void calculateServerTimes(Servers servers, int nServ) {
        serverTimes = new long[nServ];
        for (int i = 0; i < nServ; i++) {
            serverTimes[i] = 0;
        }
        for (int uid = 0; uid < system.length; uid++) {
            int[] reqs = system[uid];
            for (int serv : reqs) {
                serverTimes[serv] += servers.tranmissionTime(serv, idUserConBack[uid]);
            }
        }
    }

    public boolean checkConsistency() {
        long[] aux = serverTimes.clone();
        calculateServerTimes(FDS.servers, serverTimes.length);

        return Arrays.equals(aux, serverTimes);
    }

    public Object getRandomFromSet(Set set, long seed) {
        int size = set.size();
        int item = new Random(seed).nextInt(size);
        int i = 0;
        for (Object b : set) {
            if (i == item) return b;
            ++i;
        }
        Iterator it = set.iterator();
        return it.next();
    }

    public long[] getServerTimes() {
        return serverTimes;
    }

    public int getNUsers() {
        return system.length;
    }

    public int getNRequests(int uid) {
        return system[uid].length;
    }

    public int getSid(int uid, int rid) {
        return system[uid][rid];
    }

    public int getFid(int uid, int rid) {
        return req[uid][rid];
    }

    public long getTotalTime() {
        int sum = 0;
        for (long n : serverTimes) sum += n;
        return sum;
    }

    public long getMaxTime() {
        long max = serverTimes[0];
        for (int i = 1; i < serverTimes.length; ++i) {
            if (serverTimes[i] > max) max = serverTimes[i];
        }
        return max;
    }

    public int getMaxTimeSid() {
        long max = serverTimes[0];
        int uid = 0;
        for (int i = 1; i < serverTimes.length; ++i) {
            if (serverTimes[i] > max) {
                max = serverTimes[i];
                uid=i;
            }
        }
        return uid;
    }

    public long getMinTime() {
        long min = serverTimes[0];
        for (int i = 1; i < serverTimes.length; ++i) {
            if (serverTimes[i] < min) min = serverTimes[i];
        }
        return min;
    }

    public String toString() {
        String ret = "Server Times:\n";
        for (int i = 0; i < serverTimes.length; ++i) {
            ret += i + ": " + serverTimes[i] + "\n";
        }
        ret += "\n";

        for (int i = 0; i < system.length; ++i) {
            ret += "User " + i + ":\n";

            for (int j = 0; j < system[i].length; ++j) {
                ret += "    File: " + req[i][j] + " Server: " + system[i][j] + "\n";
            }
        }

        return ret;
    }

    public void swapServer(int uid, int rid, int sid) {
        int oldSid = system[uid][rid];
        system[uid][rid] = sid;

        long oldTime = servers.tranmissionTime(oldSid, idUserConBack[uid]);
        long newTime = servers.tranmissionTime(sid, idUserConBack[uid]);
        serverTimes[oldSid] -= oldTime;
        serverTimes[sid] += newTime;
    }

    public boolean unstuck(HeuristicFunction heuristic, boolean searchAll, boolean worstServer) {
        double maxHeuristicValue = heuristic.getHeuristicValue(this);
        FDS maxSuccessor = null;
        boolean end = false;
        for (int uid1 = 0; !end && uid1 < getNUsers(); ++uid1) {
            for (int rid1 = 0; !end && rid1 < getNRequests(uid1); ++rid1) {
                for (Iterator<Integer> iterator = FDS.getServers().fileLocations(getFid(uid1, rid1)).iterator(); !end && iterator.hasNext(); ) {
                    int sid1 = iterator.next();
                    FDS newState1 = new FDS(this);
                    newState1.swapServer(uid1, rid1, sid1);
                    int worst1 = newState1.getMaxTimeSid();
                    for (int uid2 = uid1; !end && uid2 < getNUsers(); ++uid2) {
                        for (int rid2 = rid1 + 1; !end && rid2 < getNRequests(uid2); ++rid2) {
                            int oldSid = newState1.getSid(uid2, rid2);
                            if (worstServer || worst1 == oldSid) {
                                for (Iterator<Integer> iterator1 = FDS.getServers().fileLocations(getFid(uid2, rid2)).iterator(); !end && iterator1.hasNext(); ) {
                                    int sid2 = iterator1.next();
                                    FDS newState2 = new FDS(newState1);
                                    newState2.swapServer(uid2, rid2, sid2);
                                    double heuristicValue = heuristic.getHeuristicValue(newState2);
                                    if (heuristicValue < maxHeuristicValue) {
                                        maxHeuristicValue = heuristicValue;
                                        maxSuccessor = newState2;
                                        if (!searchAll) end = true;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        if (maxSuccessor == null) return false;
        copy(maxSuccessor);
        return true;
    }

    public enum InitialType {
        RANDOM, BEST_SERVER
    }
}
