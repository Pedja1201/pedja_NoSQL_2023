package org.project.app.controller;

import org.project.app.dto.AdminDTO;
import org.project.app.model.Admin;
import org.project.app.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;


import java.util.ArrayList;
import java.util.Optional;

@Controller
@CrossOrigin(origins = "http://localhost:4200")
@RequestMapping(path = "/api/admini")
public class AdminController {
    @Autowired
    private AdminService adminService;


    @RequestMapping(path = "", method = RequestMethod.GET)
    @Secured({"ROLE_ADMIN"})
    public ResponseEntity<Iterable<AdminDTO>> getAll() {
        ArrayList<AdminDTO> admini = new ArrayList<AdminDTO>();
        for (Admin admin : adminService.findAll()) {
            admini.add(new AdminDTO(admin.getId(),admin.getUsername(), admin.getPassword(),
                    admin.getIme(), admin.getPrezime(), admin.getEmail(), admin.getJmbg()));
        }
        return new ResponseEntity<Iterable<AdminDTO>>(admini, HttpStatus.OK);
    }

    @RequestMapping(path = "/{adminId}", method = RequestMethod.GET)
    @Secured({"ROLE_ADMIN"})
    public ResponseEntity<AdminDTO> get(@PathVariable("adminId") Long adminId) {
        Optional<Admin> admin = adminService.findOne(adminId);
        if (admin.isPresent()) {
            AdminDTO adminDTO = new AdminDTO(admin.get().getId(),admin.get().getUsername(),admin.get().getPassword(),
                    admin.get().getIme(),admin.get().getPrezime(),admin.get().getEmail(),admin.get().getJmbg());
            return new ResponseEntity<AdminDTO>(adminDTO, HttpStatus.OK);
        }
        return new ResponseEntity<AdminDTO>(HttpStatus.NOT_FOUND);
    }

    @RequestMapping(path = "", method = RequestMethod.POST)
    @Secured({"ROLE_ADMIN"})
    public ResponseEntity<Admin> create(@RequestBody Admin admin) {
        try {
            adminService.save(admin);
            return new ResponseEntity<Admin>(admin, HttpStatus.CREATED);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return new ResponseEntity<Admin>(HttpStatus.BAD_REQUEST);
    }

    @RequestMapping(path = "/{adminId}", method = RequestMethod.PUT)
    @Secured({"ROLE_ADMIN"})
    public ResponseEntity<Admin> update(@PathVariable("adminId") Long adminId,
                                           @RequestBody Admin izmenjenAdmin) {
        Admin admin = adminService.findOne(adminId).orElse(null);
        if (admin != null) {
            izmenjenAdmin.setId(adminId);
            adminService.save(izmenjenAdmin); //DONE:Sa ovim radi bez BUG-a (Beskonacna rekurzija!)-Roditelj
            return new ResponseEntity<Admin>(izmenjenAdmin, HttpStatus.OK);
        }
        return new ResponseEntity<Admin>(HttpStatus.NOT_FOUND);
    }

    @RequestMapping(path = "/{adminId}", method = RequestMethod.DELETE)
    @Secured({"ROLE_ADMIN"})
    public ResponseEntity<Admin> delete(@PathVariable("adminId") Long adminId) {
        if (adminService.findOne(adminId).isPresent()) {
            adminService.delete(adminId);
            return new ResponseEntity<Admin>(HttpStatus.OK);
        }
        return new ResponseEntity<Admin>(HttpStatus.NOT_FOUND);
    }
}
