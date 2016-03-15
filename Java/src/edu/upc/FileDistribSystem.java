package edu.upc;
import IA.DistFS.*;

import java.util.HashMap;
import java.util.Set;

/**
 * Created by Joan on 15/03/2016
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
        //test
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
}
