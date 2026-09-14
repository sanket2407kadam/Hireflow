package com.sksolution.hireflow.controller;

import com.sksolution.hireflow.entity.Application;
import com.sksolution.hireflow.entity.Interview;
import com.sksolution.hireflow.service.ApplicationService;
import com.sksolution.hireflow.service.InterviewService;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.time.LocalTime;

@Controller
@RequestMapping("/interviews")
public class InterviewController {

    private final InterviewService interviewService;
    private final ApplicationService applicationService;

    public InterviewController(
            InterviewService interviewService,
            ApplicationService applicationService) {

        this.interviewService = interviewService;
        this.applicationService = applicationService;
    }


    // ==============================
    // VIEW ALL INTERVIEWS
    // ==============================

    @GetMapping
    public String showInterviews(Model model) {

        model.addAttribute(
                "interviews",
                interviewService.getAllInterviews()
        );

        return "interviews";
    }


    // ==============================
    // SHOW ADD INTERVIEW PAGE
    // ==============================

    @GetMapping("/add")
    public String showAddInterviewPage(Model model) {

        model.addAttribute(
                "applications",
                applicationService.getAllApplications()
        );

        return "add-interview";
    }


    // ==============================
    // ADD INTERVIEW
    // ==============================

    @PostMapping("/add")
    public String addInterview(

            @RequestParam Long applicationId,

            @RequestParam String interviewDate,

            @RequestParam String interviewTime,

            @RequestParam String interviewer,

            @RequestParam String interviewRound,

            @RequestParam String mode,

            @RequestParam String status,

            @RequestParam(required = false) String feedback) {


        Application application =
                applicationService
                        .getApplicationById(applicationId)
                        .orElseThrow(() ->
                                new RuntimeException(
                                        "Application not found"
                                )
                        );


        Interview interview =
                new Interview();


        interview.setApplication(application);


        interview.setInterviewDate(
                LocalDate.parse(interviewDate)
        );


        interview.setInterviewTime(
                LocalTime.parse(interviewTime)
        );


        interview.setInterviewer(interviewer);

        interview.setInterviewRound(interviewRound);

        interview.setMode(mode);

        interview.setStatus(status);

        interview.setFeedback(feedback);


        interviewService.addInterview(interview);


        return "redirect:/interviews";
    }


    // ==============================
    // SHOW EDIT INTERVIEW PAGE
    // ==============================

    @GetMapping("/edit/{id}")
    public String showEditInterviewPage(

            @PathVariable Long id,
            Model model) {


        Interview interview =
                interviewService
                        .getInterviewById(id)
                        .orElseThrow(() ->
                                new RuntimeException(
                                        "Interview not found"
                                )
                        );


        model.addAttribute(
                "interview",
                interview
        );


        model.addAttribute(
                "applications",
                applicationService.getAllApplications()
        );


        return "edit-interview";
    }


    // ==============================
    // UPDATE INTERVIEW
    // ==============================

    @PostMapping("/update")
    public String updateInterview(

            @RequestParam Long id,

            @RequestParam Long applicationId,

            @RequestParam String interviewDate,

            @RequestParam String interviewTime,

            @RequestParam String interviewer,

            @RequestParam String interviewRound,

            @RequestParam String mode,

            @RequestParam String status,

            @RequestParam(required = false) String feedback) {


        Interview interview =
                interviewService
                        .getInterviewById(id)
                        .orElseThrow(() ->
                                new RuntimeException(
                                        "Interview not found"
                                )
                        );


        Application application =
                applicationService
                        .getApplicationById(applicationId)
                        .orElseThrow(() ->
                                new RuntimeException(
                                        "Application not found"
                                )
                        );


        interview.setApplication(application);


        interview.setInterviewDate(
                LocalDate.parse(interviewDate)
        );


        interview.setInterviewTime(
                LocalTime.parse(interviewTime)
        );


        interview.setInterviewer(interviewer);

        interview.setInterviewRound(interviewRound);

        interview.setMode(mode);

        interview.setStatus(status);

        interview.setFeedback(feedback);


        interviewService.updateInterview(interview);


        return "redirect:/interviews";
    }


    // ==============================
    // DELETE INTERVIEW
    // ==============================

    @GetMapping("/delete/{id}")
    public String deleteInterview(
            @PathVariable Long id) {

        interviewService.deleteInterview(id);

        return "redirect:/interviews";
    }
}