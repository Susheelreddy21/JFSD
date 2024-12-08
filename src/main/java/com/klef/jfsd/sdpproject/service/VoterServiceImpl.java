package com.klef.jfsd.sdpproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.sdpproject.model.Election;
import com.klef.jfsd.sdpproject.model.Voter;
import com.klef.jfsd.sdpproject.repository.VoterRepository;

@Service
public class VoterServiceImpl implements VoterService
{
	@Autowired
	private VoterRepository voterRepository;

	@Override
	public String VoterRegistration(Voter voter) {
		voterRepository.save(voter);
		return "Voter Registered Successfully";
	}

	@Override
	public Voter checkvoterlogin(String vemail, String vpwd) {
		return voterRepository.checkvoterlogin(vemail,vpwd);
	}

	@Override
	public String updatevoter(Voter v) {
		Voter voter = voterRepository.findById(v.getId()).get();
		
		voter.setContact(v.getContact());
		voter.setDateofbirth(v.getDateofbirth());
		voter.setEmail(v.getEmail());
		voter.setGender(v.getEmail());
		voter.setLocation(v.getLocation());
		voter.setMartialstatus(v.getMartialstatus());
		voter.setName(v.getName());
		voter.setPassword(v.getPassword());
		
		voterRepository.save(voter);
		return "Voter Updated Successfully";
	}

	

}
