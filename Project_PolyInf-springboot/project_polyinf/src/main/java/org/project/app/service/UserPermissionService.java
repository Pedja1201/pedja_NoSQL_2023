package org.project.app.service;

import org.project.app.model.UserPermission;
import org.project.app.repository.UserPermissionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class UserPermissionService {
    @Autowired
    private UserPermissionRepository userPermissionRepository;

    public Iterable<UserPermission> findAll() {
        return userPermissionRepository.findAll();
    }

    public Optional<UserPermission> findOne(Long id) {
        return userPermissionRepository.findById(id);
    }

    public UserPermission save(UserPermission userPermission) {
        return userPermissionRepository.save(userPermission);
    }

    public void delete(Long id) {
        userPermissionRepository.deleteById(id);
    }

    public void delete(UserPermission userPermission) {
        userPermissionRepository.delete(userPermission);
    }
}
