package edu.upc;

import IA.DistFS.Requests;
import IA.DistFS.Servers;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

/**
 * Created by Joan on 15/03/2016.
 */
public class FileDistribSystem {

    public static HashMap<Integer, Integer> idUserCon = new HashMap<>();
    public static int[] idUserConBack;
    public static int[] serverTimes;



    public enum initialType{
        Random, BestServer
    }
    /**
     * Vector containing all the requests of every user, every request is of size 2 [IdServer, IdFile]
     * Users[] => Requests[] => [IdServer,IdFile]
     */
    public int[][][] system;

    /**
     * Creates the initial state
     */
    public FileDistribSystem(Servers servers, Requests requests, int users, int nServ, initialType init) {
        idUserConBack = new int[users];
        if (init==initialType.Random)initialRandom(servers, requests, users);
        else if (init==initialType.BestServer)initialBestServer(servers, requests, users);
        calculateServerTimes(servers, nServ);
    }

    /**
     * Creates initial state with random assignment
     *
     * @param servers  Container for servers
     * @param requests All requests to the servers
     * @param users    Users count
     */
    private void initialRandom(Servers servers, Requests requests, int users) {
        //system = new int[users][][];

        ArrayList<ArrayList<ArrayList<Integer>>> st = new ArrayList<>();
        for (int i = 0; i < users; ++i) {
            st.add(new ArrayList<>());
        }

        for (int i = 0; i < requests.size(); ++i) {
            int[] req = requests.getRequest(i);
            int uid = getUid(req[0]);

            Integer fid = req[1];
            Set<Integer> locations = servers.fileLocations(fid);

            Iterator<Integer> itLoc = locations.iterator();
            ArrayList<Integer> query = new ArrayList<>();
            query.add(itLoc.next());
            query.add(fid);

            st.get(uid).add(query);
        }

        system = convertToArray(st);
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
            idUserConBack[userID] = uid;            // Store new ID for backwards conversion
        }
        uid = userID;
        return uid;
    }

    private void initialBestServer(Servers servers, Requests requests, int users) {
        ArrayList<ArrayList<ArrayList<Integer>>> st = new ArrayList<>();
        for (int i = 0; i < users; ++i) {
            st.add(new ArrayList<>());
        }
        for (int i = 0; i < requests.size(); ++i) {
            int[] req = requests.getRequest(i);
            int uid = getUid(req[0]);

            int fid = req[1];
            Set<Integer> locations = servers.fileLocations(fid);

            int bestSid = -1;
            int bestTime = 10000;

            for (int sid : locations) {
                if (bestSid == -1) {
                    bestSid = sid;
                } else {
                    int time = servers.tranmissionTime(sid, uid);
                    if (time < bestTime) {
                        bestTime = time;
                        bestSid = sid;
                    }
                }
            }
            ArrayList<Integer> query = new ArrayList<>();
            query.add(bestSid);
            query.add(fid);

            st.get(uid).add(query);
        }
        system = convertToArray(st);
    }

    /**
     * Converts from an ArrayList to an Array
     * @param st Array to convert
     */
    private int[][][] convertToArray(ArrayList<ArrayList<ArrayList<Integer>>> st) {
        // Conversion from ArrayList to Array
        int[][][] res = new int[st.size()][][];
        for (int i = 0; i < st.size(); ++i) {
            ArrayList<ArrayList<Integer>> req = st.get(i);
            res[i] = new int[req.size()][2];

            for (int j = 0; j < req.size(); ++j) {
                res[i][j][0] = req.get(j).get(0);
                res[i][j][1] = req.get(j).get(1);
            }
        }
        return res;
    }

    private void calculateServerTimes(Servers servers, int nServ){
        serverTimes= new int[nServ];
        for (int i=0; i<nServ; i++){
            serverTimes[i]=0;
        }
        for (int uid = 0; uid < system.length; uid++) {
            int[][] user = system[uid];
            for (int[] request : user) {
                serverTimes[request[0]] += servers.tranmissionTime(request[0],idUserConBack[uid]);
            }
        }
    }

    public int[] getServertimes() {
        return serverTimes;
    }
}
