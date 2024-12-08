package com.klef.jfsd.sdpproject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.sdpproject.model.Candidate;
import com.klef.jfsd.sdpproject.repository.CandidateRepository;
import com.klef.jfsd.sdpproject.service.CandidateService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class CandidateController {
	
	
	 @Autowired
	 private CandidateService candidateService;
	
	 
    @GetMapping("/candidatehome")
    public ModelAndView home() {
        return new ModelAndView("candidatehome");
    }
    @PostMapping("checkcandidatelogin")
    public ModelAndView checkCandidateLogin(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        
        // Retrieve email and password from the request
        String cemail = request.getParameter("cemail");
        String cpwd = request.getParameter("cpwd");

        // Verify login credentials using the service layer
        Candidate candidate = candidateService.checkcandidatelogin(cemail, cpwd);
        
        if (candidate != null) {
            // If valid, store the candidate in the session and redirect to candidate home
            HttpSession session = request.getSession();
            session.setAttribute("candidate", candidate); // "candidate" is a session variable
            mv.setViewName("candidatehome");
        } else {
            // If invalid, redirect to login failure page
            mv.setViewName("candidateloginfail");
            mv.addObject("message", "Login Failed. Invalid email or password.");
        }
        return mv;
    }
    
    @GetMapping("/register")
    public String showRegistrationPage() {
        return "register";
    }// Displays the registration JSP form
    
    
    @PostMapping("/candidate/register")
    public String registerCandidate(@ModelAttribute Candidate candidate, Model model) {
        try {
            // Logic to save candidate details in the database
            candidateService.save(candidate);

            // Add success message
            model.addAttribute("message", "Registration successful! Welcome, " + candidate.getName() + "!");

            // Redirect to the success page
            return "candidateRegistrationSuccess";
        } catch (Exception e) {
            // Handle errors, e.g., duplicate entry, validation issues, etc.
            model.addAttribute("error", "Registration failed. Please try again.");
            return "candidateregsuccess";
        }
    }
    @GetMapping("/vote")
    public String showVotePage(Model model) {
        // Fetch all registered candidates
        try {
            model.addAttribute("candidates", candidateService.getAllCandidates());
        } catch (Exception e) {
            e.printStackTrace();
            model.addAttribute("error", "Could not fetch candidates.");
        }
        return "vote"; // Map this to your JSP file name
    }

}
