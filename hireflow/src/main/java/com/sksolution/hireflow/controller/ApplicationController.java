package com.sksolution.hireflow.controller;

import com.sksolution.hireflow.entity.Application;
import com.sksolution.hireflow.service.ApplicationService;
import com.sksolution.hireflow.service.CandidateService;
import com.sksolution.hireflow.service.JobService;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/applications")
public class ApplicationController {

    private final ApplicationService applicationService;
    private final CandidateService candidateService;
    private final JobService jobService;

    public ApplicationController(
            ApplicationService applicationService,
            CandidateService candidateService,
            JobService jobService) {

        this.applicationService = applicationService;
        this.candidateService = candidateService;
        this.jobService = jobService;
    }

    // ==============================
    // VIEW ALL APPLICATIONS
    // ==============================

    @GetMapping
    public String showApplications(Model model) {

        model.addAttribute(
                "applications",
                applicationService.getAllApplications()
        );

        return "applications";
    }


    // ==============================
    // SHOW ADD APPLICATION PAGE
    // ==============================

    @GetMapping("/add")
    public String showAddApplicationPage(Model model) {

        model.addAttribute(
                "application",
                new Application()
        );

        model.addAttribute(
                "candidates",
                candidateService.getAllCandidates()
        );

        model.addAttribute(
                "jobs",
                jobService.getAllJobs()
        );

        return "add-application";
    }


    // ==============================
    // ADD APPLICATION
    // ==============================

    @PostMapping("/add")
    public String addApplication(
            @RequestParam Long candidateId,
            @RequestParam Long jobId,
            @RequestParam String status,
            @RequestParam(required = false) String notes) {

        Application application = new Application();

        application.setCandidate(
                candidateService.getCandidateById(candidateId)
                        .orElseThrow(() ->
                                new RuntimeException(
                                        "Candidate not found"
                                )
                        )
        );

        application.setJob(
                jobService.getJobById(jobId)
                        .orElseThrow(() ->
                                new RuntimeException(
                                        "Job not found"
                                )
                        )
        );

        application.setStatus(status);
        application.setNotes(notes);

        applicationService.addApplication(application);

        return "redirect:/applications";
    }


    // ==============================
    // SHOW EDIT PAGE
    // ==============================

    @GetMapping("/edit/{id}")
    public String showEditApplicationPage(
            @PathVariable Long id,
            Model model) {

        Application application =
                applicationService.getApplicationById(id)
                        .orElseThrow(() ->
                                new RuntimeException(
                                        "Application not found"
                                )
                        );

        model.addAttribute(
                "application",
                application
        );

        model.addAttribute(
                "candidates",
                candidateService.getAllCandidates()
        );

        model.addAttribute(
                "jobs",
                jobService.getAllJobs()
        );

        return "edit-application";
    }


    // ==============================
    // UPDATE APPLICATION
    // ==============================

    @PostMapping("/update")
    public String updateApplication(
            @RequestParam Long id,
            @RequestParam Long candidateId,
            @RequestParam Long jobId,
            @RequestParam String status,
            @RequestParam(required = false) String notes) {

        Application application =
                applicationService.getApplicationById(id)
                        .orElseThrow(() ->
                                new RuntimeException(
                                        "Application not found"
                                )
                        );

        application.setCandidate(
                candidateService.getCandidateById(candidateId)
                        .orElseThrow(() ->
                                new RuntimeException(
                                        "Candidate not found"
                                )
                        )
        );

        application.setJob(
                jobService.getJobById(jobId)
                        .orElseThrow(() ->
                                new RuntimeException(
                                        "Job not found"
                                )
                        )
        );

        application.setStatus(status);
        application.setNotes(notes);

        applicationService.updateApplication(application);

        return "redirect:/applications";
    }


    // ==============================
    // DELETE APPLICATION
    // ==============================

    @GetMapping("/delete/{id}")
    public String deleteApplication(
            @PathVariable Long id) {

        applicationService.deleteApplication(id);

        return "redirect:/applications";
    }
}