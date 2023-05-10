package org.project.app.controller;

import org.project.app.dto.DrzavaDTO;
import org.project.app.model.Drzava;
import org.project.app.service.DrzavaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.Optional;

@Controller
@CrossOrigin(origins = "http://localhost:4200")
@RequestMapping(path = "/api/drzave")
public class DrzavaController {
    @Autowired
    private DrzavaService service;

    @RequestMapping(path = "", method = RequestMethod.GET)
//    @Secured({"ROLE_ADMIN"})
    public ResponseEntity<Iterable<DrzavaDTO>> getAll() {
        ArrayList<DrzavaDTO> drzave = new ArrayList<DrzavaDTO>();
        for (Drzava drzava : service.findAll()) {
            drzave.add(new DrzavaDTO(drzava.getId(),drzava.getOznaka(), drzava.getNaziv()));
        }
        return new ResponseEntity<Iterable<DrzavaDTO>>(drzave, HttpStatus.OK);
    }

    @RequestMapping(path = "/{drzavaId}", method = RequestMethod.GET)
//    @Secured({"ROLE_ADMIN"})
    public ResponseEntity<DrzavaDTO> get(@PathVariable("drzavaId") Long drzavaId) {
        Optional<Drzava> drzava = service.findOne(drzavaId);
        if (drzava.isPresent()) {
            DrzavaDTO drzavaDTO = new DrzavaDTO(drzava.get().getId(),drzava.get().getOznaka(),
                    drzava.get().getNaziv());
            return new ResponseEntity<DrzavaDTO>(drzavaDTO, HttpStatus.OK);
        }
        return new ResponseEntity<DrzavaDTO>(HttpStatus.NOT_FOUND);
    }

    @RequestMapping(path = "", method = RequestMethod.POST)
//    @Secured({"ROLE_ADMIN"})
    public ResponseEntity<Drzava> create(@RequestBody Drzava drzava) {
        try {
            service.save(drzava);
            return new ResponseEntity<Drzava>(drzava, HttpStatus.CREATED);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return new ResponseEntity<Drzava>(HttpStatus.BAD_REQUEST);
    }

    @RequestMapping(path = "/{drzavaId}", method = RequestMethod.PUT)
//    @Secured({"ROLE_ADMIN"})
    public ResponseEntity<Drzava> update(@PathVariable("drzavaId") Long drzavaId,
                                           @RequestBody Drzava izmenjen) {
        Drzava drzava = service.findOne(drzavaId).orElse(null);
        if (drzava != null) {
            izmenjen.setId(drzavaId);
            service.save(izmenjen);
            return new ResponseEntity<Drzava>(izmenjen, HttpStatus.OK);
        }
        return new ResponseEntity<Drzava>(HttpStatus.NOT_FOUND);
    }

    @RequestMapping(path = "/{drzavaId}", method = RequestMethod.DELETE)
//    @Secured({"ROLE_ADMIN"})
    public ResponseEntity<Drzava> delete(@PathVariable("drzavaId") Long drzavaId) {
        if (service.findOne(drzavaId).isPresent()) {
            service.delete(drzavaId);
            return new ResponseEntity<Drzava>(HttpStatus.OK);
        }
        return new ResponseEntity<Drzava>(HttpStatus.NOT_FOUND);
    }
}
