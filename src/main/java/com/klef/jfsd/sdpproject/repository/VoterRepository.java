package com.klef.jfsd.sdpproject.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.sdpproject.model.Voter;

@Repository
public interface VoterRepository extends JpaRepository<Voter, Integer>
{
	@Query("select v from Voter v where v.vemail=?1 and v.vpassword=?2")
	public Voter checkvoterlogin(String vemail, String vpwd);

}
