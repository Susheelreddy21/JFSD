package com.klef.jfsd.sdpproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.klef.jfsd.sdpproject.model.Candidate;
import com.klef.jfsd.sdpproject.repository.CandidateRepository;
import java.util.Optional;

@Service
public class CandidateServiceImpl implements CandidateService {
    
    @Autowired
    private CandidateRepository candidateRepository;

    @Override
    public void castVote(int candidateId, int voterId) {}

    @Override
    public Candidate checkcandidatelogin(String cemail, String cpwd) {
        return candidateRepository.checkcandidatelogin(cemail, cpwd);
    }

    @Override
    public Candidate registerCandidate(String email, String password, String name, String partyName) {
        Candidate newCandidate = new Candidate();
        newCandidate.setCemail(email);
        newCandidate.setCpwd(password);
        newCandidate.setName(name);
        newCandidate.setPartyName(partyName);
        newCandidate.setVotes(0);
        return candidateRepository.save(newCandidate);
    }

	@Override
	public Candidate save(Candidate candidate) {
	
		  return candidateRepository.save(candidate);
	}

	@Override
	public List<Candidate> getAllCandidates() {
		// TODO Auto-generated method stub
		 return candidateRepository.findAll();
	}

	@Override
	public Candidate getCandidate(Long id) {
		// TODO Auto-generated method stub
		return candidateRepository.findById(id);
	}

	@Override
	public void submitVote(Long candidateId) {
        Candidate candidate = getCandidate(candidateId);
        if (candidate != null) {
            candidate.incrementVote();
            candidateRepository.save(candidate);
        }
    }

}

	

