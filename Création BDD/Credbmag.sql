/*
** Création d'une base de données au moyen
** d'instructions 
*/

drop DATABASE MAGASIN;
CREATE DATABASE MAGASIN;

/*
**  Ce script créé les tables de la base magasin
*/

USE MAGASIN;

DROP TABLE EMPLOYE;
CREATE TABLE EMPLOYE
	(
	noemp int  NOT NULL ,
	nom char(30)  NOT NULL ,
	chef int ,
	salaire decimal (10,2),
	qualif char(15),
	rayon char(2))engine = innodb;
	
DROP TABLE SITE;
CREATE TABLE SITE
	(
	rayon char(2) NOT NULL ,
	etage int NOT NULL,
        libelle char(20))engine = innodb ;
		
DROP TABLE CLASSE;
CREATE TABLE CLASSE
	(
	 noart char(4)  NOT NULL ,
	 marque char(20),
	 rayon char(2))engine = innodb;
			
DROP TABLE VENTES;
CREATE TABLE VENTES
	(
	noart char(4)  NOT NULL ,
	datev date  NOT NULL ,
	nbvendu int)engine = innodb;

/* définition des clés primaires */
			
alter table EMPLOYE
add constraint pk_EMPLOYE PRIMARY KEY (noemp);

alter table SITE
add constraint pk_SITE PRIMARY KEY (rayon);

alter table CLASSE
add constraint pk_CLASSE PRIMARY KEY(noart);



/* définition des clés étrangères */

alter table EMPLOYE
add constraint fk_EMPLOYE_rayon FOREIGN KEY (rayon) REFERENCES SITE(rayon);

alter table EMPLOYE
add constraint fk_EMPLOYE_chef FOREIGN KEY (chef) REFERENCES EMPLOYE(noemp);

alter table CLASSE
add constraint fk_CLASSE_rayon FOREIGN  KEY(rayon)references SITE(rayon);



/* vérification structure des tables */

describe EMPLOYE;
describe SITE;
describe CLASSE;
describe VENTES;


/* implémentation du contenu des tables */

INSERT into EMPLOYE VALUES ( 1, 'Dupont',6,2900, 'vendeur','R1'   );
INSERT into EMPLOYE VALUES ( 2, 'Durand',6,1200 ,'caissiere','R1'   );
INSERT into EMPLOYE VALUES ( 3, 'Martin',8,3100, 'chef de rayon','R4'   );
INSERT into EMPLOYE VALUES ( 4, 'Duval',6,2800 ,'chef de rayon','R1'   );
INSERT into EMPLOYE VALUES ( 5, 'Legrand',7,1300, 'caissiere','R5'   ); 
INSERT into EMPLOYE VALUES ( 6, 'Lenotre',8,4500, 'chef de rayon','R4'   );
INSERT into EMPLOYE VALUES ( 9, 'Berthier',8,5800, 'gestionnaire','R7'   );
INSERT into EMPLOYE VALUES ( 7, 'Berteaux',7,6500 ,'directeur','R5'   );
INSERT into EMPLOYE VALUES ( 8, 'Mansart',7,5500,'gestionnaire','R6'   ); 

INSERT into SITE VALUES (  'R1',1,'hifi' );
INSERT into SITE VALUES (  'R2',1,'bricolage' );
INSERT into SITE VALUES (  'R3',2,'electro-menager' );
INSERT into SITE VALUES (  'R4',2,'confection' );
INSERT into SITE VALUES (  'R5',3,'arts menagers' );
INSERT into SITE VALUES (  'R6',4,'chaussures' );
INSERT into SITE VALUES (  'R7',4,'maroquinerie' );

INSERT into CLASSE VALUES (  'A100','bosch','R2' );
INSERT into CLASSE VALUES (  'A150','AEG','R3' );
INSERT into CLASSE VALUES (  'A200','electrolux','R3' );
INSERT into CLASSE VALUES (  'A250','moulinex','R3' );
INSERT into CLASSE VALUES (  'A300','kappa','R4' );
INSERT into CLASSE VALUES (  'A350','ellesse','R4' );
INSERT into CLASSE VALUES (  'A400','schott','R4' );
INSERT into CLASSE VALUES (  'A450','vans','R4' );
INSERT into CLASSE VALUES (  'A500','philips','R1' );
INSERT into CLASSE VALUES (  'A550','Villeroy & boch','R5' );

INSERT into VENTES VALUES (  'A150','2012/01/01',50  );
INSERT into VENTES VALUES (  'A250','2012/02/01',80  );
INSERT into VENTES VALUES (  'A150','2012/03/01',120  );
INSERT into VENTES VALUES (  'A350','2012/04/01',230  );
INSERT into VENTES VALUES (  'A150','2012/05/01',800  );
INSERT into VENTES VALUES (  'A300','2012/06/01',100  );
INSERT into VENTES VALUES (  'A450','2012/07/01',200  );
INSERT into VENTES VALUES (  'A100','2012/08/01',250  );
INSERT into VENTES VALUES (  'A300','2011/09/01',650  );
INSERT into VENTES VALUES (  'A150','2011/10/01',10  );

/* vérification contenu des tables */

SELECT * FROM EMPLOYE;
SELECT * FROM SITE;
SELECT * FROM CLASSE;
SELECT * FROM VENTES;




