package com.sksolution.hireflow.service;

import com.sksolution.hireflow.entity.Candidate;
import com.sksolution.hireflow.repository.CandidateRepository;

import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CandidateService {

    private final CandidateRepository candidateRepository;

    public CandidateService(CandidateRepository candidateRepository) {
        this.candidateRepository = candidateRepository;
    }

    // ADD CANDIDATE
    public Candidate addCandidate(Candidate candidate) {
        return candidateRepository.save(candidate);
    }

    // GET ALL CANDIDATES
    public List<Candidate> getAllCandidates() {
        return candidateRepository.findAll();
    }

    // GET CANDIDATE BY ID
    public Optional<Candidate> getCandidateById(Long id) {
        return candidateRepository.findById(id);
    }

    // UPDATE CANDIDATE
    public Candidate updateCandidate(Candidate candidate) {
        return candidateRepository.save(candidate);
    }

    // DELETE CANDIDATE
    public void deleteCandidate(Long id) {
        candidateRepository.deleteById(id);
    }
}