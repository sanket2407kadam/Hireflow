package com.sksolution.hireflow.controller;

import com.sksolution.hireflow.entity.Job;
import com.sksolution.hireflow.service.JobService;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/jobs")
public class JobController {

    private final JobService jobService;

    public JobController(JobService jobService) {
        this.jobService = jobService;
    }

    // TEST CONTROLLER
    @GetMapping("/test")
    @ResponseBody
    public String test() {
        return "Job Controller is working!";
    }

    // VIEW ALL JOBS
    @GetMapping
    public String showJobs(Model model) {

        model.addAttribute("jobs", jobService.getAllJobs());

        return "jobs";
    }

    // SHOW ADD JOB PAGE
    @GetMapping("/add")
    public String showAddJobPage(Model model) {

        model.addAttribute("job", new Job());

        return "add-job";
    }

    // ADD JOB
    @PostMapping("/add")
    public String addJob(@ModelAttribute Job job) {

        jobService.addJob(job);

        return "redirect:/jobs";
    }

    // SHOW EDIT JOB PAGE
    @GetMapping("/edit/{id}")
    public String showEditJobPage(
            @PathVariable Long id,
            Model model) {

        Job job = jobService.getJobById(id)
                .orElseThrow(() ->
                        new RuntimeException("Job not found with ID: " + id));

        model.addAttribute("job", job);

        return "edit-job";
    }

    // UPDATE JOB
    @PostMapping("/update")
    public String updateJob(@ModelAttribute Job job) {

        jobService.updateJob(job);

        return "redirect:/jobs";
    }

    // DELETE JOB
    @GetMapping("/delete/{id}")
    public String deleteJob(@PathVariable Long id) {

        jobService.deleteJob(id);

        return "redirect:/jobs";
    }
}