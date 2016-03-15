package edu.upc;
import IA.DistFS.*;

import java.util.HashMap;
import java.util.Set;

/**
 * Created by Joan on 15/03/2016.
 */
public class FileDistribSystem {

    /**
     * Vector containing all the requests of every user, every request is of size 2 [IdServer, IdFile]
     * Users[] => Requests[] => [IdServer,IdFile]
     */
    public int[][][] system;

    public HashMap<Integer, Integer> idConversion = new HashMap<>();

    /**
     * Creates the initial state
     */
    public FileDistribSystem(Servers servers, Requests requests, int users) {
        initialRandom(servers, requests, users);
    }

    public void initialRandom(Servers servers, Requests requests, int users) {
        system = new int[users][][];

        for (int i = 0; i < requests.size(); ++i) {
            int[] req = requests.getRequest(i);
            int uid = req[0];
            Integer userID = idConversion.get(uid);
            if (userID == null) {
                userID = idConversion.size();
                idConversion.put(uid, idConversion.size());
            }
            uid = userID;

            int fid = req[1];
            Set<Integer> locations = servers.fileLocations(fid);


        }
    }

    public void initialBestServer(Servers servers, Requests requests, int users) {
        system = new int[users][][];
        for (int i = 0; i <requests.size(); ++i) {
            int[] req = requests.getRequest(i);
            int uid = req[0];
            Integer userID = idConversion.get(uid);
            if (userID == null) {
                userID = idConversion.size();
                idConversion.put(uid, idConversion.size());
            }
            uid = userID;

            int fid = req[1];
            Set<Integer> locations = servers.fileLocations(fid);

            int bestSid = -1;
            int bestTime = 10000;

            for (int sid : locations){
                if (bestSid == -1){
                    bestSid=sid;
                }
                else {
                    int time=servers.tranmissionTime(sid,uid);
                    if (time<bestTime){
                        bestTime=time;
                        bestSid=sid;
                    }
                }
            }
        }
    }
}
