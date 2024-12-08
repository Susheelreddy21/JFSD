package com.klef.jfsd.sdpproject.service;

import java.util.List;

import com.klef.jfsd.sdpproject.model.Admin;
import com.klef.jfsd.sdpproject.model.Election;
import com.klef.jfsd.sdpproject.model.Voter;

public interface AdminService {
    List<Voter> ViewAllVoters(); // This can remain as is
    Admin checkadminlogin(String uname, String pwd); // This can remain as is
    String deletevoter(int eid); // This can remain as is
    Election addElection(Election election);
     List<Election> getAllElections();
         // Fetch all elections.
    

   
}
