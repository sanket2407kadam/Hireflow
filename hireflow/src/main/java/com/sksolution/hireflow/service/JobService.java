package com.sksolution.hireflow.service;

import com.sksolution.hireflow.entity.Job;
import com.sksolution.hireflow.repository.JobRepository;

import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class JobService {

    private final JobRepository jobRepository;

    public JobService(JobRepository jobRepository) {
        this.jobRepository = jobRepository;
    }


    // =========================
    // ADD JOB
    // =========================

    public Job addJob(Job job) {

        return jobRepository.save(job);
    }


    // =========================
    // GET ALL JOBS
    // =========================

    public List<Job> getAllJobs() {

        return jobRepository.findAll();
    }


    // =========================
    // GET JOB BY ID
    // =========================

    public Optional<Job> getJobById(Long id) {

        return jobRepository.findById(id);
    }


    // =========================
    // UPDATE JOB
    // =========================

    public Job updateJob(Job job) {

        return jobRepository.save(job);
    }


    // =========================
    // DELETE JOB
    // =========================

    public void deleteJob(Long id) {

        jobRepository.deleteById(id);
    }

}