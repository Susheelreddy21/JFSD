package com.klef.jfsd.sdpproject.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import com.klef.jfsd.sdpproject.model.Candidate;

@Repository
public interface CandidateRepository extends JpaRepository<Candidate, Integer> {
    
    @Query("SELECT c FROM Candidate c WHERE c.cemail = ?1 AND c.cpwd = ?2")
    Candidate checkcandidatelogin(String cemail, String cpwd);

    // Method for registration
    Candidate save(Candidate candidate);
    Candidate findById(Long id);
   
}
