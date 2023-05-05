package org.project.app.repository;

import org.project.app.model.NaseljenoMesto;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface NaseljenoMestoRepository extends CrudRepository<NaseljenoMesto, Long> {
}
