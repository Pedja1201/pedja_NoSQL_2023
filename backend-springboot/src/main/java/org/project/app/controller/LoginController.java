package org.project.app.controller;


import org.project.app.dto.AdminDTO;
import org.project.app.dto.TokenDTO;
import org.project.app.dto.UserDTO;
import org.project.app.model.Admin;
import org.project.app.model.UserPermission;
import org.project.app.service.AdminService;
import org.project.app.service.PermissionService;
import org.project.app.utils.TokenUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.HashSet;

@Controller
@RequestMapping("/api")
public class LoginController { //TODO:RAspodeliti uloge prilikom register: ROLE_ADMIN...

    @Autowired
    private AuthenticationManager authenticationManager;

    @Autowired
    private TokenUtils tokenUtils;

    @Autowired
    private UserDetailsService userDetailsService;

    @Autowired
    private AdminService adminService;

    @Autowired
    private PermissionService permissionService;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @RequestMapping(path = "/login", method = RequestMethod.POST)
    public ResponseEntity<TokenDTO> login(@RequestBody UserDTO user) {
        try {
            // Kreiranje tokena za login, token sadrzi korisnicko ime i lozinku.
            UsernamePasswordAuthenticationToken token = new UsernamePasswordAuthenticationToken(
                    user.getUsername(), user.getPassword());
            // Autentifikacija korisnika na osnovu korisnickog imena i lozinke.
            Authentication authentication = authenticationManager.authenticate(token);
            // Dodavanje uspesne autentifikacije u security context.
            SecurityContextHolder.getContext().setAuthentication(authentication);

            // Ucitavanje podatka o korisniku i kreiranje jwt-a.
            UserDetails userDetails = userDetailsService.loadUserByUsername(user.getUsername());
            String jwt = tokenUtils.generateToken(userDetails);
            TokenDTO jwtDTO = new TokenDTO(jwt);

            return new ResponseEntity<TokenDTO>(jwtDTO, HttpStatus.OK);
        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity<TokenDTO>(HttpStatus.UNAUTHORIZED);
        }
    }

    @RequestMapping(path = "/registerAdmin", method = RequestMethod.POST)
    public ResponseEntity<AdminDTO> registerAdmin(@RequestBody AdminDTO admin) {
        // Novi korisnik se registruje kreiranjem instance korisnika
        // cija je lozinka enkodovana.
        Admin newAdmin = new Admin(null, admin.getUsername(),
                passwordEncoder.encode(admin.getPassword()), admin.getIme(),
                admin.getPrezime(), admin.getEmail(), admin.getJmbg());
        newAdmin = adminService.save(newAdmin);
        // Dodavanje prava pristupa.
        newAdmin.setUserPermissions(new HashSet<UserPermission>());
        newAdmin.getUserPermissions()                                //Trazimo id=1 zato sto je Admin Administrator (ROLE_ADMIN)
                .add(new UserPermission(null, newAdmin, permissionService.findOne(1l).get()));
        adminService.save(newAdmin);

        return new ResponseEntity<AdminDTO>(
                new AdminDTO(newAdmin.getId(), newAdmin.getUsername(), null,
                        newAdmin.getIme(), newAdmin.getPrezime(),
                        newAdmin.getEmail(), newAdmin.getJmbg() ), HttpStatus.OK);
    }
}
