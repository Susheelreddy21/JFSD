package com.klef.jfsd.sdpproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.sdpproject.model.Admin;
import com.klef.jfsd.sdpproject.model.Election;
import com.klef.jfsd.sdpproject.model.Voter;
import com.klef.jfsd.sdpproject.repository.AdminRepository;
import com.klef.jfsd.sdpproject.repository.ElectionRepository;
import com.klef.jfsd.sdpproject.repository.VoterRepository;

@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private VoterRepository voterRepository;

    @Autowired
    private AdminRepository adminRepository;
    @Autowired
    private ElectionRepository electionRepository;

    @Override
    public List<Voter> ViewAllVoters() {
        return voterRepository.findAll(); // This can remain as is
    }

    @Override
    public Admin checkadminlogin(String uname, String pwd) {
        return adminRepository.checkadminlogin(uname, pwd); // This can remain as is
    }

    @Override
    public String deletevoter(int eid) {
    	voterRepository.deleteById(eid);
		return "Deleted Successfully";
    }



	@Override
	public Election addElection(Election election) {

		return electionRepository.save(election);
	}

	@Override
	public List<Election> getAllElections() {
		
		return electionRepository.findAll();
	}
}
