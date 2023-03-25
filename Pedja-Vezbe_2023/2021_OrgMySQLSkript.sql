/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     5/17/2022 11:13:51 AM                        */
/*==============================================================*/


drop table if exists DRZAVA;

drop table if exists DRZAVNO_UREDJENJE;

drop table if exists ISTORIJA_UREDJENJA;

drop table if exists MESNE_ZAJEDNICE;

drop table if exists NASELJENO_MESTO;

drop table if exists OBUHVATA_NASELJA;

drop table if exists OPSTINA;

drop table if exists OPSTINE_U_REGIONU;

drop table if exists REGION;

drop table if exists SASTAV_LOKALA;

drop table if exists STRUKTURA;

drop table if exists STRUKTURA_NASELJA;

drop table if exists STRUKTURA_REGIONA;

drop table if exists TIP_REGIONA;

/*==============================================================*/
/* Table: DRZAVA                                                */
/*==============================================================*/
create table DRZAVA
(
   DR_OZNAKA            char(3) not null,
   DR_NAZIV             varchar(120) not null,
   DR_GRB               longblob,
   DR_HIMNA             longblob,
   DR_ZASTAVA           longblob,
   NM_OZNAKA            int,
   DUR_OZNAKA           char(1),
   DRZ_DR_OZNAKA        char(3),
   primary key (DR_OZNAKA)
);

/*==============================================================*/
/* Table: DRZAVNO_UREDJENJE                                     */
/*==============================================================*/
create table DRZAVNO_UREDJENJE
(
   DUR_OZNAKA           char(1) not null,
   DUR_NAZIV            varchar(40) not null,
   primary key (DUR_OZNAKA)
);

/*==============================================================*/
/* Table: ISTORIJA_UREDJENJA                                    */
/*==============================================================*/
create table ISTORIJA_UREDJENJA
(
   DR_OZNAKA            char(3) not null,
   URE_BROJ             numeric(2,0) not null,
   DUR_OZNAKA           char(1) not null,
   URE_OD_KADA          date not null,
   URE_DO_KADA          date,
   primary key (DR_OZNAKA, URE_BROJ)
);

alter table ISTORIJA_UREDJENJA comment 'Omoguæava evidentiranje zapisa o dravnom ureðenju koje je p';

/*==============================================================*/
/* Table: MESNE_ZAJEDNICE                                       */
/*==============================================================*/
create table MESNE_ZAJEDNICE
(
   DR_OZNAKA            char(3) not null,
   OP_OZNAKA            char(3) not null,
   MZ_OZNAKA            numeric(2,0) not null,
   MZ_NAZIV             varchar(120) not null,
   NM_OZNAKA            int,
   primary key (DR_OZNAKA, OP_OZNAKA, MZ_OZNAKA)
);

/*==============================================================*/
/* Table: NASELJENO_MESTO                                       */
/*==============================================================*/
create table NASELJENO_MESTO
(
   DR_OZNAKA            char(3) not null,
   NM_OZNAKA            int not null,
   NM_NAZIV             varchar(60) not null,
   NM_PTT_OZNAKA        varchar(12),
   primary key (DR_OZNAKA, NM_OZNAKA)
);

alter table NASELJENO_MESTO comment 'Registar naselja u sklopu odabrane drave.';

/*==============================================================*/
/* Table: OBUHVATA_NASELJA                                      */
/*==============================================================*/
create table OBUHVATA_NASELJA
(
   MES_DR_OZNAKA        char(3) not null,
   OP_OZNAKA            char(3) not null,
   MZ_OZNAKA            numeric(2,0) not null,
   NM_OZNAKA            int not null,
   primary key (MES_DR_OZNAKA, OP_OZNAKA, MZ_OZNAKA, NM_OZNAKA)
);

/*==============================================================*/
/* Table: OPSTINA                                               */
/*==============================================================*/
create table OPSTINA
(
   DR_OZNAKA            char(3) not null,
   OP_OZNAKA            char(3) not null,
   OP_NAZIV             varchar(60) not null,
   NM_OZNAKA            int,
   primary key (DR_OZNAKA, OP_OZNAKA)
);

alter table OPSTINA comment 'Optina predstavlja osnovnu jedinicu lokalne samouprave.';

/*==============================================================*/
/* Table: OPSTINE_U_REGIONU                                     */
/*==============================================================*/
create table OPSTINE_U_REGIONU
(
   TR_OZNAKA            char(1) not null,
   REG_OZNAKA           numeric(4,0) not null,
   DR_OZNAKA            char(3) not null,
   OP_OZNAKA            char(3) not null,
   primary key (DR_OZNAKA, OP_OZNAKA, TR_OZNAKA, REG_OZNAKA)
);

/*==============================================================*/
/* Table: REGION                                                */
/*==============================================================*/
create table REGION
(
   TR_OZNAKA            char(1) not null,
   REG_OZNAKA           numeric(4,0) not null,
   REG_NAZIV            varchar(80) not null,
   DR_OZNAKA            char(3),
   NAS_DR_OZNAKA        char(3),
   NM_OZNAKA            int,
   primary key (TR_OZNAKA, REG_OZNAKA)
);

alter table REGION comment 'Region obièno opisuje geografsku celinu koja je bilo u celos';

/*==============================================================*/
/* Table: SASTAV_LOKALA                                         */
/*==============================================================*/
create table SASTAV_LOKALA
(
   DR_OZNAKA            char(3) not null,
   OP_OZNAKA            char(3) not null,
   NM_OZNAKA            int not null,
   primary key (DR_OZNAKA, OP_OZNAKA, NM_OZNAKA)
);

alter table SASTAV_LOKALA comment 'Omoguæava evidentiranje naselja koja pripadaju odreðenoj jed';

/*==============================================================*/
/* Table: STRUKTURA                                             */
/*==============================================================*/
create table STRUKTURA
(
   DRZ_DR_OZNAKA        char(3) not null,
   DR_OZNAKA            char(3) not null,
   DS_BROJ              numeric(2,0) not null,
   DS_OD                date,
   DS_DO                date,
   primary key (DRZ_DR_OZNAKA, DR_OZNAKA, DS_BROJ)
);

alter table STRUKTURA comment 'Omoguæava definisanje strukture ili sastava sloene drave u';

/*==============================================================*/
/* Table: STRUKTURA_NASELJA                                     */
/*==============================================================*/
create table STRUKTURA_NASELJA
(
   DR_OZNAKA            char(3) not null,
   NM_OZNAKA            int not null,
   NAS_NM_OZNAKA        int not null,
   primary key (DR_OZNAKA, NM_OZNAKA, NAS_NM_OZNAKA)
);

alter table STRUKTURA_NASELJA comment 'Sloena naseljena mesta mogu biti podeljena
na druga n';

/*==============================================================*/
/* Table: STRUKTURA_REGIONA                                     */
/*==============================================================*/
create table STRUKTURA_REGIONA
(
   TR_OZNAKA            char(1) not null,
   REG_OZNAKA           numeric(4,0) not null,
   REG_TR_OZNAKA        char(1) not null,
   REG_REG_OZNAKA       numeric(4,0) not null,
   primary key (TR_OZNAKA, REG_OZNAKA, REG_TR_OZNAKA, REG_REG_OZNAKA)
);

/*==============================================================*/
/* Table: TIP_REGIONA                                           */
/*==============================================================*/
create table TIP_REGIONA
(
   TR_OZNAKA            char(1) not null,
   TR_NAZIV             varchar(30) not null,
   primary key (TR_OZNAKA)
);

alter table TIP_REGIONA comment 'Klasifikuje regione.';

alter table DRZAVA add constraint FK_GLAVNI_GRAD foreign key (DR_OZNAKA, NM_OZNAKA)
      references NASELJENO_MESTO (DR_OZNAKA, NM_OZNAKA) on delete restrict on update restrict;

alter table DRZAVA add constraint FK_PRAVNI_NASLEDNIK foreign key (DRZ_DR_OZNAKA)
      references DRZAVA (DR_OZNAKA) on delete restrict on update restrict;

alter table DRZAVA add constraint FK_TEKUCE_UREDJENJE foreign key (DUR_OZNAKA)
      references DRZAVNO_UREDJENJE (DUR_OZNAKA) on delete restrict on update restrict;

alter table ISTORIJA_UREDJENJA add constraint FK_KROZ_ISTORIJU foreign key (DR_OZNAKA)
      references DRZAVA (DR_OZNAKA) on delete restrict on update restrict;

alter table ISTORIJA_UREDJENJA add constraint FK_UREDJENJA_DRZAVE foreign key (DUR_OZNAKA)
      references DRZAVNO_UREDJENJE (DUR_OZNAKA) on delete restrict on update restrict;

alter table MESNE_ZAJEDNICE add constraint FK_LOKACIJA_MESNE_KANCELARIJE foreign key (DR_OZNAKA, NM_OZNAKA)
      references NASELJENO_MESTO (DR_OZNAKA, NM_OZNAKA) on delete restrict on update restrict;

alter table MESNE_ZAJEDNICE add constraint FK_MESNA_PODELA_OPSTINE foreign key (DR_OZNAKA, OP_OZNAKA)
      references OPSTINA (DR_OZNAKA, OP_OZNAKA) on delete restrict on update restrict;

alter table NASELJENO_MESTO add constraint FK_MESTA_U_DRZAVI foreign key (DR_OZNAKA)
      references DRZAVA (DR_OZNAKA) on delete restrict on update restrict;

alter table OBUHVATA_NASELJA add constraint FK_OBUHVATA_NASELJA foreign key (MES_DR_OZNAKA, OP_OZNAKA, MZ_OZNAKA)
      references MESNE_ZAJEDNICE (DR_OZNAKA, OP_OZNAKA, MZ_OZNAKA) on delete restrict on update restrict;

alter table OBUHVATA_NASELJA add constraint FK_OBUHVATA_NASELJA2 foreign key (MES_DR_OZNAKA, NM_OZNAKA)
      references NASELJENO_MESTO (DR_OZNAKA, NM_OZNAKA) on delete restrict on update restrict;

alter table OPSTINA add constraint FK_OPSTINSKO_SEDISTE foreign key (DR_OZNAKA, NM_OZNAKA)
      references NASELJENO_MESTO (DR_OZNAKA, NM_OZNAKA) on delete restrict on update restrict;

alter table OPSTINA add constraint FK_POSEDUJE_OPSTINE foreign key (DR_OZNAKA)
      references DRZAVA (DR_OZNAKA) on delete restrict on update restrict;

alter table OPSTINE_U_REGIONU add constraint FK_OPSTINE_U_REGIONU foreign key (DR_OZNAKA, OP_OZNAKA)
      references OPSTINA (DR_OZNAKA, OP_OZNAKA) on delete restrict on update restrict;

alter table OPSTINE_U_REGIONU add constraint FK_OPSTINE_U_REGIONU2 foreign key (TR_OZNAKA, REG_OZNAKA)
      references REGION (TR_OZNAKA, REG_OZNAKA) on delete restrict on update restrict;

alter table REGION add constraint FK_ADMINISTRATIVNO_SEDISTE foreign key (NAS_DR_OZNAKA, NM_OZNAKA)
      references NASELJENO_MESTO (DR_OZNAKA, NM_OZNAKA) on delete restrict on update restrict;

alter table REGION add constraint FK_MATICNA_DRZAVA foreign key (DR_OZNAKA)
      references DRZAVA (DR_OZNAKA) on delete restrict on update restrict;

alter table REGION add constraint FK_TIPIZACIJA_REGIONA foreign key (TR_OZNAKA)
      references TIP_REGIONA (TR_OZNAKA) on delete restrict on update restrict;

alter table SASTAV_LOKALA add constraint FK_SASTAV_LOKALA foreign key (DR_OZNAKA, OP_OZNAKA)
      references OPSTINA (DR_OZNAKA, OP_OZNAKA) on delete restrict on update restrict;

alter table SASTAV_LOKALA add constraint FK_SASTAV_LOKALA2 foreign key (DR_OZNAKA, NM_OZNAKA)
      references NASELJENO_MESTO (DR_OZNAKA, NM_OZNAKA) on delete restrict on update restrict;

alter table STRUKTURA add constraint FK_SLOZENA foreign key (DRZ_DR_OZNAKA)
      references DRZAVA (DR_OZNAKA) on delete restrict on update restrict;

alter table STRUKTURA add constraint FK_U_NJENOM_SASTAVU foreign key (DR_OZNAKA)
      references DRZAVA (DR_OZNAKA) on delete restrict on update restrict;

alter table STRUKTURA_NASELJA add constraint FK_STRUKTURA_NASELJA foreign key (DR_OZNAKA, NM_OZNAKA)
      references NASELJENO_MESTO (DR_OZNAKA, NM_OZNAKA) on delete restrict on update restrict;

alter table STRUKTURA_NASELJA add constraint FK_STRUKTURA_NASELJA2 foreign key (DR_OZNAKA, NAS_NM_OZNAKA)
      references NASELJENO_MESTO (DR_OZNAKA, NM_OZNAKA) on delete restrict on update restrict;

alter table STRUKTURA_REGIONA add constraint FK_STRUKTURA_REGIONA foreign key (TR_OZNAKA, REG_OZNAKA)
      references REGION (TR_OZNAKA, REG_OZNAKA) on delete restrict on update restrict;

alter table STRUKTURA_REGIONA add constraint FK_STRUKTURA_REGIONA2 foreign key (REG_TR_OZNAKA, REG_REG_OZNAKA)
      references REGION (TR_OZNAKA, REG_OZNAKA) on delete restrict on update restrict;

