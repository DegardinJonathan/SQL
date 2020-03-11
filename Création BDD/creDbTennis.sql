drop database if exists XXtennis;
create database XXtennis;
USE XXtennis;
/* création des tables */

/* joueurs */

CREATE TABLE joueur
 (NumLicence int NOT NULL,
  NomJoueur  varchar(20) NOT NULL,
  Prenom varchar(20) NOT NULL,
  AgeJoueur int NOT NULL,
  Nation varchar(3) NOT NULL,
  NoSponsor int );

  /* sponsors */
  
CREATE TABLE sponsor
(NoSponsor int not null,
 NomSponsor char(20),
 Nationalite char(3),
 ChiffreAffaires numeric(6));
 
 /* clés primaires */
 
 alter table joueur
 add constraint pk_joueur Primary Key (numLicence);
 alter table sponsor
 add constraint pk_sponsor Primary Key (NoSponsor);
  /* clés étrangères*/
 alter table joueur
 add constraint fk_joueur_sponsor Foreign Key (NoSponsor) references sponsor (NoSponsor);
  
 describe joueur;
 describe sponsor;