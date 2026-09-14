package com.sksolution.hireflow.service;

import com.sksolution.hireflow.entity.User;
import com.sksolution.hireflow.repository.UserRepository;

import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class UserService {

    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    // =========================
    // REGISTER USER
    // =========================

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

    // =========================
    // LOGIN USER
    // =========================

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

    // =========================
    // FIND USER BY EMAIL
    // =========================

    public Optional<User> findByEmail(String email) {

        return userRepository.findByEmail(email);
    }

    // =========================
    // GET ALL USERS
    // =========================

    public List<User> getAllUsers() {

        return userRepository.findAll();
    }

    // =========================
    // GET USER BY ID
    // =========================

    public Optional<User> getUserById(Long id) {

        return userRepository.findById(id);
    }

    // =========================
    // UPDATE USER
    // =========================

    public User updateUser(User user) {

        return userRepository.save(user);
    }

    // =========================
    // UPDATE PASSWORD
    // =========================

    public boolean updatePassword(
            Long userId,
            String currentPassword,
            String newPassword) {

        Optional<User> userOptional =
                userRepository.findById(userId);

        if (userOptional.isEmpty()) {
            return false;
        }

        User user = userOptional.get();

        // Check current password
        if (!user.getPassword().equals(currentPassword)) {
            return false;
        }

        // Update password
        user.setPassword(newPassword);

        userRepository.save(user);

        return true;
    }

    // =========================
    // DELETE USER
    // =========================

    public void deleteUser(Long id) {

        userRepository.deleteById(id);
    }
}