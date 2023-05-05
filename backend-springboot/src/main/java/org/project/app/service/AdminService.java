package org.project.app.service;

import org.project.app.model.Admin;
import org.project.app.repository.AdminRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class AdminService {
    @Autowired
    private AdminRepository adminRepository;

    public Iterable<Admin> findAll() {
        return adminRepository.findAll();
    }

    public Optional<Admin> findOne(Long id) {
        return adminRepository.findById(id);
    }

    public Admin save(Admin admin) {
        return adminRepository.save(admin);
    }

    public void delete(Long id) {
        adminRepository.deleteById(id);
    }

    public void delete(Admin admin) {
        adminRepository.delete(admin);
    }
}
