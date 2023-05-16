
DROP TABLE IF EXISTS field_mapper;
create table field_mapper
(
	fizicki_naziv						varchar(25),
    logicki_naziv						varchar(25),
    tabela_fizicki_naziv				varchar(250),
    tabela_logicki_naziv				varchar(250)
   -- primary key (fizicki_naziv, logicki_naziv)
);

insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("DR_OZNAKA", "Oznaka", "drzava", "Drzava");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("DR_NAZIV", "Naziv", "drzava", "Drzava");

insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("DR_OZNAKA", "Drzava", "poslovni_subjekt", "Poslovni subjekt");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("PS_ID", "Kompanija", "poslovni_subjekt", "Poslovni subjekt");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("PS_NAZIV", "Naziv", "poslovni_subjekt", "Poslovni subjekt");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("NM_ID", "Sediste", "poslovni_subjekt", "Poslovni subjekt");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("PS_ADRESA", "Adresa", "poslovni_subjekt", "Poslovni subjekt");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("PS_WWW", "www", "poslovni_subjekt", "Poslovni subjekt");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("POS_DR_OZNAKA", "Povezana_Drzava", "poslovni_subjekt", "Poslovni subjekt");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("POS_PS_ID", "Povezana_Kompanija", "poslovni_subjekt", "Poslovni subjekt");

insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("DR_OZNAKA", "Drzava", "organizacione_jedinice", "Organizacione jedinice");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("PS_ID", "Kompanija", "organizacione_jedinice", "Organizacione jedinice");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("OJ_ID", "Organizaciona jedinica", "organizacione_jedinice", "Organizacione jedinice");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("OJ_NAZIV", "Naziv", "organizacione_jedinice", "Organizacione jedinice");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("OJ_ADRESA", "Adresa", "organizacione_jedinice", "Organizacione jedinice");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("NAS_DR_OZNAKA", "Drzava sedista", "organizacione_jedinice", "Organizacione jedinice");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("NM_ID", "Mesto sedista", "organizacione_jedinice", "Organizacione jedinice");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("OJ_PRAVNO", "Pravno lice", "organizacione_jedinice", "Organizacione jedinice");

insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("VP_ID", "Id", "vrsta_partnerstva", "Vrste partnerstva");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("VP_NAZIV", "Naziv", "vrsta_partnerstva", "Vrste partnerstva");

insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("DR_OZNAKA", "Drzava", "radna_mesta", "Radna mesta");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("PS_ID", "Kompanija", "radna_mesta", "Radna mesta");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("RM_ID", "Radno mesto", "radna_mesta", "Radna mesta");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("RM_NAZIV", "Naziv", "radna_mesta", "Radna mesta");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("RM_NORM", "Normativ zaposlenih", "radna_mesta", "Radna mesta");

insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("DR_OZNAKA", "Drzava", "unutrasnja_organizacija", "Unutrasnja organizacija");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("PS_ID", "Kompanija", "unutrasnja_organizacija", "Unutrasnja organizacija");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("ORG_OJ_ID", "Slozena jedinica", "unutrasnja_organizacija", "Unutrasnja organizacija");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("SLJ_BROJ", "Broj", "unutrasnja_organizacija", "Unutrasnja organizacija");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("OJ_ID", "Jedinica u sastavu", "unutrasnja_organizacija", "Unutrasnja organizacija");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("SLJ_OD", "Od", "unutrasnja_organizacija", "Unutrasnja organizacija");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("SLJ_DO", "Do", "unutrasnja_organizacija", "Unutrasnja organizacija");

insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("DR_OZNAKA", "Oznaka", "registar_delatnosti", "Registar delatnosti");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("DEL_ID", "Id", "registar_delatnosti", "Registar delatnosti");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("DEL_NAZIV", "Naziv", "registar_delatnosti", "Registar delatnosti");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("REGD_ID", "Id", "registar_delatnosti", "Registar delatnosti");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("REGD_NAZIV", "Naziv", "registar_delatnosti", "Registar delatnosti");

insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("DR_OZNAKA", "Drzava", "naseljeno_mesto", "Naseljeno mesto");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("NM_ID", "Id naselja", "naseljeno_mesto", "Naseljeno mesto");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("NM_NAZIV", "Naziv", "naseljeno_mesto", "Naseljeno mesto");

insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("DR_OZNAKA", "Drazva", "poslovni_partneri", "Poslovni partneri");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("PS_ID", "Partner", "poslovni_partneri", "Poslovni partneri");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("POS_DR_OZNAKA", "Drazva partnera", "poslovni_partneri", "Poslovni partneri");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("POS_PS_ID", "Kompanija", "poslovni_partneri", "Poslovni partneri");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("VP_ID", "Vrsta partnerstva", "poslovni_partneri", "Poslovni partneri");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("PART_OD", "Od", "poslovni_partneri", "Poslovni partneri");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("PART_DO", "Do", "poslovni_partneri", "Poslovni partneri");

insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("DR_OZNAKA", "Drazva", "raspored_po_jedinicama", "Raspored po jedinicama");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("RAD_DR_OZNAKA", "Drazva", "raspored_po_jedinicama", "Raspored po jedinicama");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("RM_ID", "Radno mesto", "raspored_po_jedinicama", "Raspored po jedinicama");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("OJ_NORM", "Normativ", "raspored_po_jedinicama", "Raspored po jedinicama");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("OJ_ID", "Organizaciona jedinica", "raspored_po_jedinicama", "Raspored po jedinicama");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("PS_ID", "Kompanija", "raspored_po_jedinicama", "Raspored po jedinicama");

insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("DR_OZNAKA", "Oznaka", "registrovan_za_delatnost", "Registrovan za delatnosti");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("POS_DR_OZNAKA", "Oznaka", "registrovan_za_delatnost", "Registrovan za delatnosti");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("PS_ID", "ID", "registrovan_za_delatnost", "Registrovan za delatnosti");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("DEL_ID", "Id2", "registrovan_za_delatnost", "Registrovan za delatnosti");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("REGZ_DATUM", "Datum reg", "registrovan_za_delatnost", "Registrovan za delatnosti");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("REGZ_DO", "Do", "registrovan_za_delatnost", "Registrovan za delatnosti");

insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("ORG_DR_OZNAKA", "Drzava", "podrzane_u", "Podrzane u");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("PS_ID", "Kompanija", "podrzane_u", "Podrzane u");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("OJ_ID", "Organizaciona jedinica", "podrzane_u", "Podrzane u");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("REG_DR_OZNAKA", "Reg_Oznaka", "podrzane_u", "Podrzane u");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("DR_OZNAKA", "Oznaka", "podrzane_u", "Podrzane u");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("REGD_ID", "Delatnost", "podrzane_u", "Podrzane u");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("REG_DATUM_REG", "Datum reg", "podrzane_u", "Podrzane u");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("UOJ_OD", "U org je od", "podrzane_u", "Podrzane u");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("UOJ_DO", "Do", "podrzane_u", "Podrzane u");

insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("DR_OZNAKA", "Drzava", "aktivnost_u_etapi", "aktivnost u etapi");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("PS_ID", "Kompanija", "aktivnost_u_etapi", "aktivnost u etapi");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("TIPP_D", "Tip projekta", "aktivnost_u_etapi", "aktivnost u etapi");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("PROJ_ID", "Projekat", "aktivnost_u_etapi", "aktivnost u etapi");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("PROJ_REVIZIJA", "Revizja", "aktivnost_u_etapi", "aktivnost u etapi");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("ETAPA_ID", "Etapa", "aktivnost_u_etapi", "aktivnost u etapi");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("AKT_OZNAKA", "Aktivnost", "aktivnost_u_etapi", "aktivnost u etapi");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("AKTET_RBR", "Redni Broj", "aktivnost_u_etapi", "aktivnost u etapi");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("AKTET_PLANSKI_POCETAK", "Planski pocetak", "aktivnost_u_etapi", "aktivnost u etapi");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("AKTET_PLANSKI_ZAVRSETAK", "Planski zavrsetak", "aktivnost_u_etapi", "aktivnost u etapi");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("AKTET_STVARNI_POCETAK", "Stvarni Pocetak", "aktivnost_u_etapi", "aktivnost u etapi");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("AKTET_STVARNI_ZAVRSETAK", "Stvarni Zavrsetak", "aktivnost_u_etapi", "aktivnost u etapi");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("AKTET_STVARNI_ZAVRSETAK", "Stvarni Zavrsetak", "aktivnost_u_etapi", "aktivnost u etapi");

insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("DR_OZNAKA", "Drzava", "etape_u_projektu", "Etape u projektu");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("PS_ID", "Kompanija", "etape_u_projektu", "Etape u projektu");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("TIPP_D", "Tip projekta", "etape_u_projektu", "Etape u projektu");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("PROJ_ID", "Projekat", "etape_u_projektu", "Etape u projektu");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("PROJ_REVIZIJA", "Revizija", "etape_u_projektu", "Etape u projektu");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("ETAPA_ID", "Etapa", "etape_u_projektu", "Etape u projektu");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("ETAP_PLANIRANI_POCETAK", "Planirani pocetak etape", "etape_u_projektu", "Etape u projektu");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("ETAP_PLANIRANI_ZAVRSETAK", "Planirani zavrsetak etape", "etape_u_projektu", "Etape u projektu");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("ETAP_STVARNI_POCETAK", "Stvarni pocetak etape", "etape_u_projektu", "Etape u projektu");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("ETAP_STVARNI_ZAVRSETAK", "Stvarni zavrsetak etape", "etape_u_projektu", "Etape u projektu");

insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("AKT_OZNAKA", "Oznaka", "katalog_aktivnosti", "Katalog aktivnosti");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("AKT_NAZIV", "Naziv aktivnosti", "katalog_aktivnosti", "Katalog aktivnosti");

insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("SOF_DR_OZNAKA", "Drzava", "konfiguracija", "Kongfiguracija");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("POS_PS_ID", "Kompanija", "konfiguracija", "Kongfiguracija");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("SRP_KATBR", "Kataloški broj", "konfiguracija", "Kongfiguracija");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("SPR_TIP", "Tip", "konfiguracija", "Kongfiguracija");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("VER_OZNAKA", "Oznaka verzije", "konfiguracija", "Kongfiguracija");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("KONF_ID", "Id konfig", "konfiguracija", "Kongfiguracija");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("KONF_NAZIV", "Naziv konfiguracije", "konfiguracija", "Kongfiguracija");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("KONF_ISPOR", "Isporučuje se?", "konfiguracija", "Kongfiguracija");

insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("DR_OZNAKA", "Drzava", "projekat_realizacije_softvera", "Projekat realizacije softvera");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("PS_ID", "Kompanija", "projekat_realizacije_softvera", "Projekat realizacije softvera");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("TIPP_D", "Id", "projekat_realizacije_softvera", "Projekat realizacije softvera");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("PROJ_ID", "Revizija", "projekat_realizacije_softvera", "Projekat realizacije softvera");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("PROJ_REVIZIJA", "Planirani početak", "projekat_realizacije_softvera", "Projekat realizacije softvera");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("PROJ_NAZIV", "Planirani Završetak", "projekat_realizacije_softvera", "Projekat realizacije softvera");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("PROJ_DATPOKR", "Stvarni početak", "projekat_realizacije_softvera", "Projekat realizacije softvera");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("PROJ_DATOKON", "Stvarni završetak", "projekat_realizacije_softvera", "Projekat realizacije softvera");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("PROJ_STVARNI_POCETAK", "Stvarni početak", "projekat_realizacije_softvera", "Projekat realizacije softvera");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("PROJ_STVARNI_ZAVRSETAK", "Stvarni završetak", "projekat_realizacije_softvera", "Projekat realizacije softvera");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("ID_PROCESA", "Id procesa", "projekat_realizacije_softvera", "Projekat realizacije softvera");

insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("ETA_DR_OZNAKA", "Drzava", "proizvodi_u_etapi", "Proizvodi u etapi");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("ETA_PS_ID", "Kompanija", "proizvodi_u_etapi", "Proizvodi u etapi");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("TIPP_D", "Tip projekta", "proizvodi_u_etapi", "Proizvodi u etapi");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("PROJ_ID", "Projekat", "proizvodi_u_etapi", "Proizvodi u etapi");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("PROJ_REVIZIJA", "Revizija", "proizvodi_u_etapi", "Proizvodi u etapi");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("ETAPA_ID", "Etapa", "proizvodi_u_etapi", "Proizvodi u etapi");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("STA_SPR_KATBR", "Proizvod", "proizvodi_u_etapi", "Proizvodi u etapi");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("STA_SPR_TIP", "Tip proizvoda", "proizvodi_u_etapi", "Proizvodi u etapi");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("STA_VER_OZNAKA", "Verzija proizvoda", "proizvodi_u_etapi", "Proizvodi u etapi");

insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("SOF_DR_OZNAKA", "Drzava", "sastav", "Sastav");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("POS_PS_ID", "Kompanija", "sastav", "Sastav");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("KON_SPR_KATBR", "Kon_Kataloški broj", "sastav", "Sastav");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("KON_SPR_TIP", "Kon_Tip", "sastav", "Sastav");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("KON_VER_OZNAKA", "Kon_Oznaka verzije", "sastav", "Sastav");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("KONF_ID", "Id konfig", "sastav", "Sastav");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("SASTAV_RBR", "Redni broj", "sastav", "Sastav");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("VER_SOF_DR_OZNAKA", "Ver_Sof_Oznaka", "sastav", "Sastav");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("VER_POS_PS_ID", "Ver_Pos_ID", "sastav", "Sastav");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("SPR_KATBR", "Ver_Kataloški broj", "sastav", "Sastav");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("SPR_TIP", "Tip", "sastav", "Sastav");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("VER_OZNAKA", "Oznaka verzije", "sastav", "Sastav");

insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("STR_AKT_OZNAKA", "Slozena aktivnost", "sastav__u_verziji", "Sastav u verziji");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("AKT_VERZIJA", "Verzija", "sastav__u_verziji", "Sastav u verziji");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("AKT_OZNAKA", "Aktivnost u sastavu", "sastav__u_verziji", "Sastav u verziji");

insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("DR_OZNAKA", "Drzava", "softverski_proces", "Softverski proces");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("PS_ID", "Kompanija", "softverski_proces", "Softverski proces");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("ID_PROCESA", "Id procesa", "softverski_proces", "Softverski proces");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("PROC_NAZIV", "Naziv modela", "softverski_proces", "Softverski proces");

insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("TIPP_D", "ID", "tip_projekta", "Tip projekta");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("TIPP_NAZIV", "Naziv", "tip_projekta", "Tip projekta");

insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("SOF_DR_OZNAKA", "Drzava", "verzija", "Verzija");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("POS_PS_ID", "Kompanija", "verzija", "Verzija");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("SPR_KATBR", "Kataloški broj", "verzija", "Verzija");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("SPR_TIP", "Tip", "verzija", "Verzija");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("VER_OZNAKA", "Oznaka verzije", "verzija", "Verzija");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("DR_OZNAKA", "Država verzionera", "verzija", "Verzija");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("PS_ID", "Kompanija verzioner", "verzija", "Verzija");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("VER_DATFORM", "Datum formiranja", "verzija", "Verzija");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("VER_DATUK", "Datum ukidanja", "verzija", "Verzija");

insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("AKT_DR_OZNAKA", "Drzava", "sta_se_predaje_u_aktivnosti", "Sta se predaje u aktivnosti");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("AKT_PS_ID", "Kompanija", "sta_se_predaje_u_aktivnosti", "Sta se predaje u aktivnosti");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("AKT_TIPP_D", "Tip projekta", "sta_se_predaje_u_aktivnosti", "Sta se predaje u aktivnosti");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("AKT_PROJ_ID", "Projekat", "sta_se_predaje_u_aktivnosti", "Sta se predaje u aktivnosti");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("AKT_PROJ_REVIZIJA", "Revizija", "sta_se_predaje_u_aktivnosti", "Sta se predaje u aktivnosti");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("AKT_ETAPA_ID2", "Etapa", "sta_se_predaje_u_aktivnosti", "Sta se predaje u aktivnosti");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("AKT_AKT_OZNAKA", "Aktivnost", "sta_se_predaje_u_aktivnosti", "Sta se predaje u aktivnosti");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("AKT_AKTET_RBR", "Redni broj", "sta_se_predaje_u_aktivnosti", "Sta se predaje u aktivnosti");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("PRO_STA_SPR_KATBR", "Proizvod", "sta_se_predaje_u_aktivnosti", "Sta se predaje u aktivnosti");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("PRO_STA_SPR_TIP", "Tip proizvoda", "sta_se_predaje_u_aktivnosti", "Sta se predaje u aktivnosti");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("STA_VER_OZNAKA", "Verzija proizvoda", "sta_se_predaje_u_aktivnosti", "Sta se predaje u aktivnosti");

insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("DR_OZNAKA", "Država", "softverski_proizvod", "Softverski proizvod");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("POS_PS_ID", "Kompanija", "softverski_proizvod", "Softverski proizvod");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("SPR_KATBR", "Kataloški broj", "softverski_proizvod", "Softverski proizvod");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("SPR_TIP", "Tip", "softverski_proizvod", "Softverski proizvod");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("SPR_NAZIV", "Naziv proizvoda", "softverski_proizvod", "Softverski proizvod");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("DATUM_KATALOGIZIRANJA", "Datum katalogiziranja", "softverski_proizvod", "Softverski proizvod");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("DATUM_OBUSTAVLJANJA", "Datum obustavljanja", "softverski_proizvod", "Softverski proizvod");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("POS_DR_OZNAKA", "Država proizvođača", "softverski_proizvod", "Softverski proizvod");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("PS_ID", "Kompanija proizvođač", "softverski_proizvod", "Softverski proizvod");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("SPR_STATUS", "Status", "softverski_proizvod", "Softverski proizvod");

insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("DR_OZNAKA", "Drzava", "struktura_procesa", "Struktura procesa");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("PS_ID", "Kompanija", "struktura_procesa", "Struktura procesa");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("ID_PROCESA", "Id procesa", "struktura_procesa", "Struktura procesa");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("AKT_OZNAKA", "Aktivnost", "struktura_procesa", "Struktura procesa");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("AKT_VERZIJA", "Verzija", "struktura_procesa", "Struktura procesa");

insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("AKT_OZNAKA", "Aktivnost", "struktura_aktivnosti", "Struktura aktivnosti");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("AKT_VERZIJA", "Verzija", "struktura_aktivnosti", "Struktura aktivnosti");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("AKT_DATFORM", "Datum formiranja", "struktura_aktivnosti", "Struktura aktivnosti");

insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("DR_OZNAKA", "Drzava", "sta_je_predmet_projekta", "Sta je predmet projekta");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("PS_ID", "Kompanija", "sta_je_predmet_projekta", "Sta je predmet projekta");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("TIPP_D", "Tip projekta", "sta_je_predmet_projekta", "Sta je predmet projekta");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("PROJ_ID", "Projekat", "sta_je_predmet_projekta", "Sta je predmet projekta");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("PROJ_REVIZIJA", "Revizija", "sta_je_predmet_projekta", "Sta je predmet projekta");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("SPR_KATBR", "Kataloški broj", "sta_je_predmet_projekta", "Sta je predmet projekta");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("SPR_TIP", "Tip", "sta_je_predmet_projekta", "Sta je predmet projekta");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("VER_OZNAKA", "Oznaka verzije", "sta_je_predmet_projekta", "Sta je predmet projekta");

insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("DZ_ID", "Id", "domen_zahteva", "Domen zahteva");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("DZ_NAZIV", "Naziv", "domen_zahteva", "Domen zahteva");

insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("KAT_ID", "Id", "klasifikator", "Klasifikator");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("KAT_NAZIV", "Naziv", "klasifikator", "Klasifikator");

insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("PRO_DR_OZNAKA", "Drzava", "ko_se_pita", "Ko se pita");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("PRO_PS_ID", "Kompanija", "ko_se_pita", "Ko se pita");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("TIPP_ID", "Tip projekta", "ko_se_pita", "Ko se pita");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("PROJ_ID", "Projekat", "ko_se_pita", "Ko se pita");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("PROJ_REVIZIJA", "Revizija", "ko_se_pita", "Ko se pita");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("DZ_ID", "Domen", "ko_se_pita", "Ko se pita");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("ZAHTEV_ID", "Zahtev", "ko_se_pita", "Ko se pita");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("ZAHTEV_VERZIJA", "Verzija", "ko_se_pita", "Ko se pita");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("ZAIN_ID", "Zainteresovana strana", "ko_se_pita", "Ko se pita");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("ZAIN_TIP", "Tip", "ko_se_pita", "Ko se pita");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("ULO_OZNAKA", "Uloga", "ko_se_pita", "Ko se pita");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("KOM_KOMENTAR", "Komentar", "ko_se_pita", "Ko se pita");


insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("DR_OZNAKA", "Drzava", "projektni_zahtevi", "Projektni zahtev");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("PS_ID", "Kompanija", "projektni_zahtevi", "Projektni zahtev");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("TIPP_ID", "Tip projekta", "projektni_zahtevi", "Projektni zahtev");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("PROJ_ID", "Projekat", "projektni_zahtevi", "Projektni zahtev");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("PROJ_REVIZIJA", "Revizija", "projektni_zahtevi", "Projektni zahtev");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("DZ_ID", "Domen", "projektni_zahtevi", "Projektni zahtev");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("ZAHTEV_ID", "Id", "projektni_zahtevi", "Projektni zahtev");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("ZAHTEB_VERZIJA", "Verzija", "projektni_zahtevi", "Projektni zahtev");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("ZAHTEV_NAZIV", "Naziv", "projektni_zahtevi", "Projektni zahtev");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("ZAHTEV_OPIS", "Opis", "projektni_zahtevi", "Projektni zahtev");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("KAT_ID", "Klasifikacija", "projektni_zahtevi", "Projektni zahtev");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("PRIOR_ID", "Prioritet", "projektni_zahtevi", "Projektni zahtev");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("ISTAT_ID", "Status", "projektni_zahtevi", "Projektni zahtev");

insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("PRIOR_ID", "Id", "prioritet", "Prioritet");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("PRIOR_NAZIV", "Naziv", "prioritet", "Prioritet");

insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("ISTAT_ID", "Id", "status_zahteva", "Status zahteva");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("ISTAT_NAZIV", "Naziv", "status_zahteva", "Status zahteva");

insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("DR_OZNAKA", "Drzava", "zainteresovane_strane", "Zainteresovane strane");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("PS_ID", "Kompanija", "zainteresovane_strane", "Zainteresovane strane");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("ZAIN_ID", "Id", "zainteresovane_strane", "Zainteresovane strane");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("ZAIN_TIP", "Tip", "zainteresovane_strane", "Zainteresovane strane");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("ULO_OZNAKA", "Uloga", "zainteresovane_strane", "Zainteresovane strane");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("POS_DR_OZNAKA", "Pos_Drzava", "zainteresovane_strane", "Zainteresovane strane");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("POS_PS_ID", "Pos_Kompanija", "zainteresovane_strane", "Zainteresovane strane");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("ZAIN_PERSONALNI", "Personalni", "zainteresovane_strane", "Zainteresovane strane");

insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("ULO_OZNAKA", "Oznaka", "zainteresovane_strane", "Zainteresovane strane");
insert into field_mapper(fizicki_naziv, logicki_naziv, tabela_fizicki_naziv, tabela_logicki_naziv) values("ULO_NAZIV", "Naziv uloge", "zainteresovane_strane", "Zainteresovane strane");