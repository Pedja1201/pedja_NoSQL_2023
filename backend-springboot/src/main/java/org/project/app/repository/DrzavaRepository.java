package org.project.app.repository;

import org.project.app.model.Drzava;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DrzavaRepository extends CrudRepository<Drzava, Long> {
}
