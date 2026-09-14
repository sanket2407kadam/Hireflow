package com.sksolution.hireflow.repository;

import com.sksolution.hireflow.entity.Interview;
import org.springframework.data.jpa.repository.JpaRepository;

public interface InterviewRepository
        extends JpaRepository<Interview, Long> {
}