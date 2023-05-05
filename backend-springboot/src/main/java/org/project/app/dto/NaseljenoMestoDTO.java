package org.project.app.dto;

public class NaseljenoMestoDTO {
    private Long id;

    private String naziv;
    private DrzavaDTO drzava;

    public NaseljenoMestoDTO() {super();
    }

    public NaseljenoMestoDTO(Long id, String naziv, DrzavaDTO drzava) {
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

    public DrzavaDTO getDrzava() {
        return drzava;
    }

    public void setDrzava(DrzavaDTO drzava) {
        this.drzava = drzava;
    }
}
