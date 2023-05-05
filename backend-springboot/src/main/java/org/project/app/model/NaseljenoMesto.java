package org.project.app.model;

import javax.persistence.*;

@Entity
public class NaseljenoMesto {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String naziv;

    @ManyToOne(optional = false)
    private Drzava drzava;

    public NaseljenoMesto(){super();}

    public NaseljenoMesto(Long id, String naziv, Drzava drzava) {
        this.id = id;
        this.naziv = naziv;
        this.drzava = drzava;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNaziv() {
        return naziv;
    }

    public void setNaziv(String naziv) {
        this.naziv = naziv;
    }

    public Drzava getDrzava() {
        return drzava;
    }

    public void setDrzava(Drzava drzava) {
        this.drzava = drzava;
    }
}
