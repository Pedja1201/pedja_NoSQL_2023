package org.project.app.model;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
public class Drzava {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String oznaka;
    @Column(nullable = false)
    private String naziv;

    @OneToMany(mappedBy = "drzava")
    private Set<NaseljenoMesto> naselja = new HashSet<NaseljenoMesto>();

    public Drzava(){super();}

    public Drzava(Long id, String oznaka, String naziv) {
        this.id = id;
        this.oznaka = oznaka;
        this.naziv = naziv;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getOznaka() {
        return oznaka;
    }

    public void setOznaka(String oznaka) {
        this.oznaka = oznaka;
    }

    public String getNaziv() {
        return naziv;
    }

    public void setNaziv(String naziv) {
        this.naziv = naziv;
    }

    public Set<NaseljenoMesto> getNaselja() {
        return naselja;
    }

    public void setNaselja(Set<NaseljenoMesto> naselja) {
        this.naselja = naselja;
    }
}
