package edu.upc;

import IA.DistFS.Requests;
import IA.DistFS.Servers;

public class FileDistribSystemDemo {
    public static void main(String[] args) throws Servers.WrongParametersException {
        int users = 200;
        int requests = 5;
        int seed = 0;
        int nserv = 50;
        int nrep = 5;

        Requests r = new Requests(users, requests, seed);
        Servers s = new Servers(nserv, nrep, seed);
        FileDistribSystem fds = new FileDistribSystem(s, r, users);
    }
}
