package org.project.app.dto;

import java.util.ArrayList;


public class DrzavaDTO {
    private Long id;

    private String oznaka;
    private String naziv;

    private ArrayList<NaseljenoMestoDTO> naselja = new ArrayList<NaseljenoMestoDTO>();

    public DrzavaDTO() {super();
    }

    public DrzavaDTO(Long id, String oznaka, String naziv) {
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

    public ArrayList<NaseljenoMestoDTO> getNaselja() {
        return naselja;
    }

    public void setNaselja(ArrayList<NaseljenoMestoDTO> naselja) {
        this.naselja = naselja;
    }
}
