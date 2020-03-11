drop database if exists ecole;
create database ecole;


USE ecole;

/* création de la table ecole */
drop table if exists ecole;
create table ecole
(codeEcole char(4) not null,
nomEcole char(20),
numCommune integer)engine=innodb; 

/*insertion de lignes dans la table ecole */
insert into ecole (codeEcole, nomEcole, numCommune)
values ('E001', 'Ferdinand Buisson', 3);
insert into ecole (codeEcole, nomEcole, numCommune)
values ('E002', 'Republique', 5);
insert into ecole (codeEcole, nomEcole, numCommune)
values ('E003', 'Pasteur', 4);
insert into ecole (codeEcole, nomEcole, numCommune)
values ('E004', 'Lafontaine', 6);
insert into ecole (codeEcole, nomEcole, numCommune)
values ('E005', 'Paul Eluard', 4);
insert into ecole (codeEcole, nomEcole, numCommune)
values ('E006', 'Ronsard', 2);
insert into ecole (codeEcole, nomEcole, numCommune)
values ('E007', 'Lamartine', 1);

select * from ecole;

create table commune
(codeCommune integer not null,
nomCommune char(20),
nbreEcoles integer)engine=innodb;

/*insertion de lignes dans la table commune */

insert into commune (codeCommune, nomCommune, nbreEcoles)
values (1, 'Montmorency', 3);
insert into commune (codeCommune, nomCommune, nbreEcoles)
values (2, 'Enghien', 5);
insert into commune (codeCommune, nomCommune, nbreEcoles)
values (3, 'Soisy', 4);
insert into commune (codeCommune, nomCommune, nbreEcoles)
values (4, 'Groslay', 6);
insert into commune (codeCommune, nomCommune, nbreEcoles)
values (5, 'ST Brice', 4);
insert into commune (codeCommune, nomCommune, nbreEcoles)
values (6, 'Margency', 2);


/* création de la table enfants */

create table enfants
(numEnf integer not null,
nomEnf char(20),
prenomEnf char(15),
codeCommune integer, 
codeEcole char(4))engine=innodb;

/*insertion de lignes dans la table enfants */

insert into enfants (numEnf, nomEnf, prenomEnf, codeCommune,codeEcole )
values (19910, 'Petit', 'Eric',3,'E001');
insert into enfants (numEnf, nomEnf, prenomEnf, codeCommune,codeEcole )
values (19812, 'Legrand', 'Bruno',5,'E001');
insert into enfants (numEnf, nomEnf, prenomEnf, codeCommune,codeEcole )
values (19909, 'Duval', 'Stéphane',4,'E003');
insert into enfants (numEnf, nomEnf, prenomEnf, codeCommune,codeEcole )
values (10005, 'Martin', 'Sébastien',6,'E004');
insert into enfants (numEnf, nomEnf, prenomEnf, codeCommune,codeEcole )
values (20108, 'Cribier', 'Nicole',4,'E005');
insert into enfants (numEnf, nomEnf, prenomEnf, codeCommune,codeEcole )
values (10203, 'Laplane', 'Théo',2,'E006');
insert into enfants (numEnf, nomEnf, prenomEnf, codeCommune,codeEcole )
values (20102, 'Menier', 'Elise',1,'E007');

insert into enfants (numEnf, nomEnf, prenomEnf, codeCommune,codeEcole )
values (10210, 'TOTO', 'Kevin',3,'E005');