package org.project.app.service;

import org.project.app.model.NaseljenoMesto;
import org.project.app.repository.NaseljenoMestoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class NaseljenoMestoService {
    @Autowired
    private NaseljenoMestoRepository naseljenoMestoRepository;

    public Iterable<NaseljenoMesto> findAll() {
        return naseljenoMestoRepository.findAll();
    }

    public Optional<NaseljenoMesto> findOne(Long id) {
        return naseljenoMestoRepository.findById(id);
    }


    public NaseljenoMesto save(NaseljenoMesto naselje) {
        return naseljenoMestoRepository.save(naselje);
    }

    public void delete(Long id) {
        naseljenoMestoRepository.deleteById(id);
    }

    public void delete(NaseljenoMesto naselje) {
        naseljenoMestoRepository.delete(naselje);
    }
}
