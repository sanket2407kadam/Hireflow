package com.sksolution.hireflow.repository;

import com.sksolution.hireflow.entity.Candidate;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CandidateRepository extends JpaRepository<Candidate, Long> {
}