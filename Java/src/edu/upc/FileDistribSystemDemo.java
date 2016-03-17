package edu.upc;

import IA.DistFS.Requests;
import IA.DistFS.Servers;

import java.util.Iterator;
import java.util.Set;

public class FileDistribSystemDemo {
    public static void main(String[] args) throws Servers.WrongParametersException {
        int users = 200;
        int requests = 5;
        int seed = 0;
        int nserv = 50;
        int nrep = 5;

        Requests r = new Requests(users, requests, seed);
        Servers s = null;
        try {
            s = new Servers(nserv, nrep, seed);
        } catch (Servers.WrongParametersException e) {
            e.printStackTrace();
        }

        for(int i = 0; i < r.size(); ++i) {
            System.out.println("USER ID= " + r.getRequest(i)[0] + " FILE ID= " + r.getRequest(i)[1]);
            Set fileServ = s.fileLocations(r.getRequest(i)[1]);

            for (Object aFileServ : fileServ) {
                int srv = (Integer) aFileServ;
                System.out.println("SERVER ID= " + srv + " TT= " + s.tranmissionTime(srv, r.getRequest(i)[0]));
            }
        }
        System.out.println("Times:");
        FileDistribSystem fds = new FileDistribSystem(s, r, users, nserv, FileDistribSystem.initialType.Random);

        int[] servertimes = fds.getServertimes();
        for (int i = 0, servertimesLength = servertimes.length; i < servertimesLength; i++) {
            System.out.println("SERVER ID= " + i + " Total Time= " + servertimes[i]);
        }
    }
}
