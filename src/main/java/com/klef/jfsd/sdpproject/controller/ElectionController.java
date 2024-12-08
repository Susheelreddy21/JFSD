package com.klef.jfsd.sdpproject.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.sdpproject.model.Election;
import com.klef.jfsd.sdpproject.service.AdminService;

@Controller
@RequestMapping("/elections")
public class ElectionController {

    @Autowired
    private AdminService adminService;

    @GetMapping("/viewSchedule")
    public ModelAndView viewSchedule() {
        List<Election> elections = adminService.getAllElections();

        ModelAndView mv = new ModelAndView();
        mv.setViewName("viewSchedule");
        mv.addObject("elections", elections);
        return mv;
    }
}
