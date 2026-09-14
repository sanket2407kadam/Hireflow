package com.sksolution.hireflow.repository;

import com.sksolution.hireflow.entity.Application;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ApplicationRepository
        extends JpaRepository<Application, Long> {
}