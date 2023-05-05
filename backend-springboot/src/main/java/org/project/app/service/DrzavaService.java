package org.project.app.service;

import org.project.app.model.Drzava;
import org.project.app.repository.DrzavaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class DrzavaService {
    @Autowired
    private DrzavaRepository drzavaRepository;

    public Iterable<Drzava> findAll() {
        return drzavaRepository.findAll();
    }

    public Optional<Drzava> findOne(Long id) {
        return drzavaRepository.findById(id);
    }


    public Drzava save(Drzava drzava) {
        return drzavaRepository.save(drzava);
    }

    public void delete(Long id) {
        drzavaRepository.deleteById(id);
    }

    public void delete(Drzava drzava) {
        drzavaRepository.delete(drzava);
    }
}
