package org.project.app.repository;

import org.project.app.model.User;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface UserRepository extends PagingAndSortingRepository<User, Long> {
    ///Metoda koja dobovalja Korisnika iz baze podataka.
    Optional<User> findByUsername(String username);
}

