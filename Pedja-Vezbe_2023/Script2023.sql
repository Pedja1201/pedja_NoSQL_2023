/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     4/28/2023 12:08:03 PM                        */
/*==============================================================*/


drop table if exists DRZAVA;

drop table if exists NASELJENO_MESTO;

drop table if exists ORGANIZACIONE_JEDINICE;

drop table if exists PODRZANE_U;

drop table if exists POSLOVNI_PARTNERI;

drop table if exists POSLOVNI_SUBJEKT;

drop table if exists RADNA_MESTA;

drop table if exists RASPORED_PO_JEDINICAMA;

drop table if exists REGISTAR_DELATNOSTI;

drop table if exists REGISTROVAN_ZA_DELATNOSTI;

drop table if exists UNUTRASNJA_ORGANIZACIJA;

drop table if exists VRSTA_PARTNERSTVA;

/*==============================================================*/
/* Table: DRZAVA                                                */
/*==============================================================*/
create table DRZAVA
(
   DR_OZNAKA            char(4) not null,
   DR_NAZIV             varchar(60) not null,
   primary key (DR_OZNAKA)
);

/*==============================================================*/
/* Table: NASELJENO_MESTO                                       */
/*==============================================================*/
create table NASELJENO_MESTO
(
   DR_OZNAKA            char(4) not null,
   NM_ID                int not null,
   NM_NAZIV             varchar(40) not null,
   primary key (DR_OZNAKA, NM_ID)
);

/*==============================================================*/
/* Table: ORGANIZACIONE_JEDINICE                                 */
/*==============================================================*/
create table ORGANIZACIONE_JEDINICE
(
   DR_OZNAKA            char(4) not null,
   PS_ID                int not null,
   OJ_ID                int not null,
   OJ_NAZIV             varchar(120) not null,
   OJ_ADRESA            varchar(60) not null,
   NAS_DR_OZNAKA        char(4),
   NM_ID                int,
   OJ_PRAVNO            bool not null default 0,
   primary key (DR_OZNAKA, PS_ID, OJ_ID)
);

/*==============================================================*/
/* Table: PODRZANE_U                                           */
/*==============================================================*/
create table PODRZANE_U
(
   REG_POS_DR_OZNAKA    char(4) not null,
   REG_PS_ID            int not null,
   REG_DEL_ID           int not null,
   REG_REGZ_DATUM       date not null,
   OJ_ID                int not null,
   UOJ_OD               date not null,
   UOJ_DO               date,
   primary key (REG_POS_DR_OZNAKA, REG_PS_ID, REG_REGZ_DATUM, REG_DEL_ID, UOJ_OD, OJ_ID)
);

/*==============================================================*/
/* Table: POSLOVNI_PARTNERI                                     */
/*==============================================================*/
create table POSLOVNI_PARTNERI
(
   DR_OZNAKA            char(4) not null,
   PS_ID                int not null,
   POS_DR_OZNAKA        char(4) not null,
   POS_PS_ID            int not null,
   VP_ID                smallint not null,
   PART_OD              date not null,
   PART_DO              date,
   primary key (POS_DR_OZNAKA, DR_OZNAKA, PS_ID, POS_PS_ID, VP_ID, PART_OD)
);

/*==============================================================*/
/* Table: POSLOVNI_SUBJEKT                                */
/*==============================================================*/
create table POSLOVNI_SUBJEKT
(
   DR_OZNAKA            char(4) not null,
   PS_ID                int not null,
   PS_NAZIV             varchar(120) not null,
   NM_ID                int,
   PS_ADRESA            varchar(60) not null,
   PS_WWW               varchar(60),
   POS_DR_OZNAKA        char(4),
   POS_PS_ID            int,
   primary key (DR_OZNAKA, PS_ID)
);

/*==============================================================*/
/* Table: RADNA_MESTA                                         */
/*==============================================================*/
create table RADNA_MESTA
(
   DR_OZNAKA            char(4) not null,
   PS_ID                int not null,
   RM_ID                int not null,
   RM_NAZIV             varchar(80) not null,
   RM_NORM              numeric(4,0) not null default 0,
   primary key (DR_OZNAKA, PS_ID, RM_ID)
);

/*==============================================================*/
/* Table: RASPORED_PO_JEDINICAMA                            */
/*==============================================================*/
create table RASPORED_PO_JEDINICAMA
(
   RAD_DR_OZNAKA        char(4) not null,
   PS_ID                int not null,
   RM_ID                int not null,
   OJ_ID                int not null,
   OJ_NORM              numeric(4,0) not null,
   primary key (RAD_DR_OZNAKA, PS_ID, RM_ID, OJ_ID)
);

/*==============================================================*/
/* Table: REGISTAR_DELATNOSTI                                 */
/*==============================================================*/
create table REGISTAR_DELATNOSTI
(
   DR_OZNAKA            char(4) not null,
   DEL_ID               int not null,
   DEL_NAZIV            varchar(120) not null,
   primary key (DR_OZNAKA, DEL_ID)
);

/*==============================================================*/
/* Table: REGISTROVAN_ZA_DELATNOSTI                           */
/*==============================================================*/
create table REGISTROVAN_ZA_DELATNOSTI
(
   POS_DR_OZNAKA        char(4) not null,
   PS_ID                int not null,
   DEL_ID               int not null,
   REGZ_DATUM           date not null,
   REGZ_DO              date,
   primary key (POS_DR_OZNAKA, PS_ID, REGZ_DATUM, DEL_ID)
);

/*==============================================================*/
/* Table: UNUTRASNJA_ORGANIZACIJA                             */
/*==============================================================*/
create table UNUTRASNJA_ORGANIZACIJA
(
   DR_OZNAKA            char(4) not null,
   PS_ID                int not null,
   ORG_OJ_ID            int not null,
   SLJ_BR               smallint not null,
   OJ_ID                int,
   SLJ_OD               date not null,
   SLJ_DO               date,
   primary key (DR_OZNAKA, PS_ID, ORG_OJ_ID, SLJ_BR)
);

/*==============================================================*/
/* Table: VRSTA_PARTNERSTVA                                   */
/*==============================================================*/
create table VRSTA_PARTNERSTVA
(
   VP_ID                smallint not null,
   VP_NAZIV             varchar(40) not null,
   primary key (VP_ID)
);

alter table NASELJENO_MESTO add constraint FK_PRIPADA_DRZAVI foreign key (DR_OZNAKA)
      references DRZAVA (DR_OZNAKA) on delete restrict on update restrict;

alter table ORGANIZACIONE_JEDINICE add constraint FK_DELI_SE_NA foreign key (DR_OZNAKA, PS_ID)
      references POSLOVNI_SUBJEKT (DR_OZNAKA, PS_ID) on delete restrict on update restrict;

alter table ORGANIZACIONE_JEDINICE add constraint FK_SEDISTE_JEDINICE foreign key (NAS_DR_OZNAKA, NM_ID)
      references NASELJENO_MESTO (DR_OZNAKA, NM_ID) on delete restrict on update restrict;

alter table PODRZANE_U add constraint FK_DELATNOSTI_PO_ORGJED foreign key (REG_POS_DR_OZNAKA, REG_PS_ID, OJ_ID)
      references ORGANIZACIONE_JEDINICE (DR_OZNAKA, PS_ID, OJ_ID) on delete restrict on update restrict;

alter table PODRZANE_U add constraint FK_U_ORGJED foreign key (REG_POS_DR_OZNAKA, REG_PS_ID, REG_REGZ_DATUM, REG_DEL_ID)
      references REGISTROVAN_ZA_DELATNOSTI (POS_DR_OZNAKA, PS_ID, REGZ_DATUM, DEL_ID) on delete restrict on update restrict;

alter table POSLOVNI_PARTNERI add constraint FK_KOMPANIJA foreign key (DR_OZNAKA, PS_ID)
      references POSLOVNI_SUBJEKT (DR_OZNAKA, PS_ID) on delete restrict on update restrict;

alter table POSLOVNI_PARTNERI add constraint FK_PARTNER foreign key (POS_DR_OZNAKA, POS_PS_ID)
      references POSLOVNI_SUBJEKT (DR_OZNAKA, PS_ID) on delete restrict on update restrict;

alter table POSLOVNI_PARTNERI add constraint FK_PARTNERSKI_ODNOS foreign key (VP_ID)
      references VRSTA_PARTNERSTVA (VP_ID) on delete restrict on update restrict;

alter table POSLOVNI_SUBJEKT add constraint FK_POVEZANE_KOMPANIJE foreign key (POS_DR_OZNAKA, POS_PS_ID)
      references POSLOVNI_SUBJEKT (DR_OZNAKA, PS_ID) on delete restrict on update restrict;

alter table POSLOVNI_SUBJEKT add constraint FK_REGISTROVANE_KOMPANIJE foreign key (DR_OZNAKA)
      references DRZAVA (DR_OZNAKA) on delete restrict on update restrict;

alter table POSLOVNI_SUBJEKT add constraint FK_SEDISTE_KOMPANIJE foreign key (DR_OZNAKA, NM_ID)
      references NASELJENO_MESTO (DR_OZNAKA, NM_ID) on delete restrict on update restrict;

alter table RADNA_MESTA add constraint FK_ZAPOSLJAVA_NA foreign key (DR_OZNAKA, PS_ID)
      references POSLOVNI_SUBJEKT (DR_OZNAKA, PS_ID) on delete restrict on update restrict;

alter table RASPORED_PO_JEDINICAMA add constraint FK_IMA_RM foreign key (RAD_DR_OZNAKA, PS_ID, OJ_ID)
      references ORGANIZACIONE_JEDINICE (DR_OZNAKA, PS_ID, OJ_ID) on delete restrict on update restrict;

alter table RASPORED_PO_JEDINICAMA add constraint FK_RM_U_JED foreign key (RAD_DR_OZNAKA, PS_ID, RM_ID)
      references RADNA_MESTA (DR_OZNAKA, PS_ID, RM_ID) on delete restrict on update restrict;

alter table REGISTAR_DELATNOSTI add constraint FK_REGISTROVANE_DELATNOSTI foreign key (DR_OZNAKA)
      references DRZAVA (DR_OZNAKA) on delete restrict on update restrict;

alter table REGISTROVAN_ZA_DELATNOSTI add constraint FK_KO_JE_REGISTROVAN foreign key (POS_DR_OZNAKA, DEL_ID)
      references REGISTAR_DELATNOSTI (DR_OZNAKA, DEL_ID) on delete restrict on update restrict;

alter table REGISTROVAN_ZA_DELATNOSTI add constraint FK_REGISTROVAN_ZA foreign key (POS_DR_OZNAKA, PS_ID)
      references POSLOVNI_SUBJEKT (DR_OZNAKA, PS_ID) on delete restrict on update restrict;

alter table UNUTRASNJA_ORGANIZACIJA add constraint FK_JEDINICA_U_SASTAVU foreign key (DR_OZNAKA, PS_ID, OJ_ID)
      references ORGANIZACIONE_JEDINICE (DR_OZNAKA, PS_ID, OJ_ID) on delete restrict on update restrict;

alter table UNUTRASNJA_ORGANIZACIJA add constraint FK_SLOZENA_JEDINICA foreign key (DR_OZNAKA, PS_ID, ORG_OJ_ID)
      references ORGANIZACIONE_JEDINICE (DR_OZNAKA, PS_ID, OJ_ID) on delete restrict on update restrict;

