package org.project.app.repository;

import org.project.app.model.UserPermission;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserPermissionRepository extends CrudRepository<UserPermission,Long> {
}
