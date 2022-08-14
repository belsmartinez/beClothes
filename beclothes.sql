/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     12/08/2022 08:24:22 a. m.                    */
/*==============================================================*/


alter table ROPA 
   drop foreign key FK_ROPA_USER_ROPA_USER;


alter table ROPA 
   drop foreign key FK_ROPA_USER_ROPA_USER;

drop table if exists ROPA;

drop table if exists USER;

/*==============================================================*/
/* Table: ROPA                                                  */
/*==============================================================*/
create table ropa
(
   cve_ropa             varchar(20) not null  comment '',
   cve_user             varchar(20) not null  comment '',
   nom_ropa             varchar(50) not null  comment '',
   color_ropa           varchar(50) not null  comment '',
   talla_ropa           varchar(5) not null  comment '',
   desc_ropa           varchar(100) not null  comment '',
   precio_ropa          decimal(6,2) not null  comment '',
   primary key (cve_ropa)
);

/*==============================================================*/
/* Table: USER                                                  */
/*==============================================================*/
create table user
(
   cve_user             varchar(20) not null  comment '',
   NOM_USER             varchar(50) not null  comment '',
   APELLIDOP_USER       varchar(50) not null  comment '',
   APELLIDOM_USER       varchar(50) not null  comment '',
   primary key (CVE_USER)
);

alter table ROPA add constraint FK_ROPA_USER_ROPA_USER foreign key (CVE_USER)
      references USER (CVE_USER) on delete restrict on update restrict;

