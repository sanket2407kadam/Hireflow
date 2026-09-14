package com.sksolution.hireflow.service;

import com.sksolution.hireflow.entity.Application;
import com.sksolution.hireflow.repository.ApplicationRepository;

import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ApplicationService {

    private final ApplicationRepository applicationRepository;

    public ApplicationService(
            ApplicationRepository applicationRepository) {

        this.applicationRepository = applicationRepository;
    }

    // ADD APPLICATION
    public Application addApplication(Application application) {
        return applicationRepository.save(application);
    }

    // GET ALL APPLICATIONS
    public List<Application> getAllApplications() {
        return applicationRepository.findAll();
    }

    // GET APPLICATION BY ID
    public Optional<Application> getApplicationById(Long id) {
        return applicationRepository.findById(id);
    }

    // UPDATE APPLICATION
    public Application updateApplication(Application application) {
        return applicationRepository.save(application);
    }

    // DELETE APPLICATION
    public void deleteApplication(Long id) {
        applicationRepository.deleteById(id);
    }
}