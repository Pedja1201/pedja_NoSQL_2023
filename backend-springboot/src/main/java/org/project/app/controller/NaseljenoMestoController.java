package org.project.app.controller;

import org.project.app.aspect.Logged;
import org.project.app.dto.DrzavaDTO;
import org.project.app.dto.NaseljenoMestoDTO;
import org.project.app.model.NaseljenoMesto;
import org.project.app.service.NaseljenoMestoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.ArrayList;
import java.util.Optional;

@Controller
@RequestMapping(path = "/api/naseljenaMesta")
public class NaseljenoMestoController {
    @Autowired
    private NaseljenoMestoService service;

//    @Logged
    @RequestMapping(path = "", method = RequestMethod.GET)
//    @Secured({"ROLE_ADMIN", "ROLE_USER"})
    public ResponseEntity<Iterable<NaseljenoMestoDTO>> getAll() {
        ArrayList<NaseljenoMestoDTO> mesta = new ArrayList<NaseljenoMestoDTO>();

        for (NaseljenoMesto naselje : service.findAll()) {
            mesta.add(new NaseljenoMestoDTO(naselje.getId(),naselje.getNaziv(),
                    new DrzavaDTO(naselje.getDrzava().getId(),naselje.getDrzava().getOznaka(),
                            naselje.getDrzava().getNaziv())));
        }
        return new ResponseEntity<Iterable<NaseljenoMestoDTO>>(mesta, HttpStatus.OK);
    }

    @RequestMapping(path = "/{naseljeId}", method = RequestMethod.GET)
    public ResponseEntity<NaseljenoMestoDTO> get(@PathVariable("naseljeId") Long naseljeId) {
        Optional<NaseljenoMesto> naselje = service.findOne(naseljeId);
        if (naselje.isPresent()) {
            NaseljenoMestoDTO naseljenoMestoDTO = new NaseljenoMestoDTO(naselje.get().getId(),
                    naselje.get().getNaziv(),
                    new DrzavaDTO(naselje.get().getDrzava().getId(),naselje.get().getDrzava().getOznaka(),
                            naselje.get().getDrzava().getNaziv()));
            return new ResponseEntity<NaseljenoMestoDTO>(naseljenoMestoDTO, HttpStatus.OK);
        }
        return new ResponseEntity<NaseljenoMestoDTO>(HttpStatus.NOT_FOUND);
    }

    @RequestMapping(path = "", method = RequestMethod.POST)
    public ResponseEntity<NaseljenoMesto> create(@RequestBody NaseljenoMesto naselje) {
        try {
            service.save(naselje);
            return new ResponseEntity<NaseljenoMesto>(naselje, HttpStatus.CREATED);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return new ResponseEntity<NaseljenoMesto>(HttpStatus.BAD_REQUEST);
    }

    @RequestMapping(path = "/{naseljeId}", method = RequestMethod.PUT)
    public ResponseEntity<NaseljenoMesto> update(@PathVariable("naseljeId") Long naseljeId,
                                                   @RequestBody NaseljenoMesto izmenjen) {
        NaseljenoMesto naselje = service.findOne(naseljeId).orElse(null);
        if (naselje != null) {
            izmenjen.setId(naseljeId);
            service.save(izmenjen);
            return new ResponseEntity<NaseljenoMesto>(izmenjen, HttpStatus.OK);
        }
        return new ResponseEntity<NaseljenoMesto>(HttpStatus.NOT_FOUND);
    }

    @RequestMapping(path = "/{naseljeId}", method = RequestMethod.DELETE)
    public ResponseEntity<NaseljenoMesto> delete(@PathVariable("naseljeId") Long naseljeId) {
        if (service.findOne(naseljeId).isPresent()) {
            service.delete(naseljeId);
            return new ResponseEntity<NaseljenoMesto>(HttpStatus.OK);
        }
        return new ResponseEntity<NaseljenoMesto>(HttpStatus.NOT_FOUND);
    }
}
