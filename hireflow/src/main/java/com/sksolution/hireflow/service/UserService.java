package com.sksolution.hireflow.service;

import com.sksolution.hireflow.entity.User;
import com.sksolution.hireflow.repository.UserRepository;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class UserService {

    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    // Register
    public boolean registerUser(User user) {

        // Check duplicate email
        if (userRepository.findByEmail(user.getEmail()).isPresent()) {
            return false;
        }

        // Default role
        user.setRole("RECRUITER");

        userRepository.save(user);

        return true;
    }

    // Login
    public Optional<User> loginUser(String email, String password) {

        Optional<User> userOptional =
                userRepository.findByEmail(email);

        if (userOptional.isPresent()) {

            User user = userOptional.get();

            if (user.getPassword().equals(password)) {
                return Optional.of(user);
            }
        }

        return Optional.empty();
    }
}