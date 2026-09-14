package com.sksolution.hireflow.controller;

import com.sksolution.hireflow.entity.User;
import com.sksolution.hireflow.service.ApplicationService;
import com.sksolution.hireflow.service.CandidateService;
import com.sksolution.hireflow.service.InterviewService;
import com.sksolution.hireflow.service.JobService;
import com.sksolution.hireflow.service.UserService;

import jakarta.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/admin")
public class AdminController {

    private final UserService userService;
    private final JobService jobService;
    private final CandidateService candidateService;
    private final ApplicationService applicationService;
    private final InterviewService interviewService;


    public AdminController(
            UserService userService,
            JobService jobService,
            CandidateService candidateService,
            ApplicationService applicationService,
            InterviewService interviewService) {

        this.userService = userService;
        this.jobService = jobService;
        this.candidateService = candidateService;
        this.applicationService = applicationService;
        this.interviewService = interviewService;
    }


    // =========================
    // ADMIN ACCESS CHECK
    // =========================

    private boolean isAdmin(HttpSession session) {

        User user =
                (User) session.getAttribute("loggedInUser");

        return user != null
                && "ADMIN".equalsIgnoreCase(user.getRole());
    }


    // =========================
    // ADMIN DASHBOARD
    // =========================

    @GetMapping("/dashboard")
    public String dashboard(
            HttpSession session,
            Model model) {


        if (!isAdmin(session)) {

            return "redirect:/login";
        }


        model.addAttribute(
                "totalUsers",
                userService.getAllUsers().size()
        );


        model.addAttribute(
                "totalJobs",
                jobService.getAllJobs().size()
        );


        model.addAttribute(
                "totalCandidates",
                candidateService.getAllCandidates().size()
        );


        model.addAttribute(
                "totalApplications",
                applicationService.getAllApplications().size()
        );


        model.addAttribute(
                "totalInterviews",
                interviewService.getAllInterviews().size()
        );


        return "admin-dashboard";
    }


    // =========================
    // MANAGE USERS
    // =========================

    @GetMapping("/users")
    public String users(
            HttpSession session,
            Model model) {


        if (!isAdmin(session)) {

            return "redirect:/login";
        }


        model.addAttribute(
                "users",
                userService.getAllUsers()
        );


        return "admin-users";
    }


    // =========================
    // DELETE USER
    // =========================

    @GetMapping("/users/delete/{id}")
    public String deleteUser(

            @PathVariable Long id,

            HttpSession session) {


        if (!isAdmin(session)) {

            return "redirect:/login";
        }


        userService.deleteUser(id);


        return "redirect:/admin/users";
    }
}