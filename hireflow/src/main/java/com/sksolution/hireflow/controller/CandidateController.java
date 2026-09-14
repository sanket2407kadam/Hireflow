package com.sksolution.hireflow.controller;

import com.sksolution.hireflow.entity.Candidate;
import com.sksolution.hireflow.service.CandidateService;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/candidates")
public class CandidateController {

    private final CandidateService candidateService;

    public CandidateController(CandidateService candidateService) {
        this.candidateService = candidateService;
    }

    // VIEW ALL CANDIDATES
    @GetMapping
    public String showCandidates(Model model) {

        model.addAttribute(
                "candidates",
                candidateService.getAllCandidates()
        );

        return "candidates";
    }

    // SHOW ADD CANDIDATE PAGE
    @GetMapping("/add")
    public String showAddCandidatePage(Model model) {

        model.addAttribute("candidate", new Candidate());

        return "add-candidate";
    }

    // ADD CANDIDATE
    @PostMapping("/add")
    public String addCandidate(
            @ModelAttribute Candidate candidate) {

        candidateService.addCandidate(candidate);

        return "redirect:/candidates";
    }

    // SHOW EDIT CANDIDATE PAGE
    @GetMapping("/edit/{id}")
    public String showEditCandidatePage(
            @PathVariable Long id,
            Model model) {

        Candidate candidate =
                candidateService.getCandidateById(id)
                        .orElseThrow(() ->
                                new RuntimeException(
                                        "Candidate not found with ID: " + id
                                )
                        );

        model.addAttribute("candidate", candidate);

        return "edit-candidate";
    }

    // UPDATE CANDIDATE
    @PostMapping("/update")
    public String updateCandidate(
            @ModelAttribute Candidate candidate) {

        candidateService.updateCandidate(candidate);

        return "redirect:/candidates";
    }

    // DELETE CANDIDATE
    @GetMapping("/delete/{id}")
    public String deleteCandidate(
            @PathVariable Long id) {

        candidateService.deleteCandidate(id);

        return "redirect:/candidates";
    }
}