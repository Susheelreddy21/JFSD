package com.klef.jfsd.sdpproject.service;

import java.util.List;

import com.klef.jfsd.sdpproject.model.Candidate;
import java.util.Optional;

public interface CandidateService {

    void castVote(int candidateId, int voterId);

    Candidate checkcandidatelogin(String cemail, String cpwd);

    Candidate registerCandidate(String email, String password, String name, String partyName);
    
    Candidate save(Candidate candidate);
    
     List<Candidate> getAllCandidates();
      Candidate getCandidate(Long id);
      void submitVote(Long candidateId);
    
}
