package org.project.app.dto;

public class AdminDTO extends UserDTO{
    private String ime;
    private String prezime;
    private String email;
    private String jmbg;

    public AdminDTO() {super();
    }

    public AdminDTO(Long id, String username, String password, String ime, String prezime, String email, String jmbg) {
        super(id, username, password);
        this.ime = ime;
        this.prezime = prezime;
        this.email = email;
        this.jmbg = jmbg;
    }

    public String getIme() {
        return ime;
    }

    public void setIme(String ime) {
        this.ime = ime;
    }

    public String getPrezime() {
        return prezime;
    }

    public void setPrezime(String prezime) {
        this.prezime = prezime;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getJmbg() {
        return jmbg;
    }

    public void setJmbg(String jmbg) {
        this.jmbg = jmbg;
    }
}
