package com.sksolution.hireflow.repository;

import com.sksolution.hireflow.entity.Job;
import org.springframework.data.jpa.repository.JpaRepository;

public interface JobRepository extends JpaRepository<Job, Long> {
}