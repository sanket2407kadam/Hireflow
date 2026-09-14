package com.sksolution.hireflow.service;

import com.sksolution.hireflow.entity.Interview;
import com.sksolution.hireflow.repository.InterviewRepository;

import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class InterviewService {

    private final InterviewRepository interviewRepository;

    public InterviewService(
            InterviewRepository interviewRepository) {

        this.interviewRepository = interviewRepository;
    }

    // ADD INTERVIEW
    public Interview addInterview(Interview interview) {
        return interviewRepository.save(interview);
    }

    // GET ALL INTERVIEWS
    public List<Interview> getAllInterviews() {
        return interviewRepository.findAll();
    }

    // GET INTERVIEW BY ID
    public Optional<Interview> getInterviewById(Long id) {
        return interviewRepository.findById(id);
    }

    // UPDATE INTERVIEW
    public Interview updateInterview(Interview interview) {
        return interviewRepository.save(interview);
    }

    // DELETE INTERVIEW
    public void deleteInterview(Long id) {
        interviewRepository.deleteById(id);
    }
}