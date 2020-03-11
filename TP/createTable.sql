USE Fac

drop table if exists suit;
drop table if exists etu;
drop table if exists cours;



CREATE TABLE etu
	 (
	  num int NOT NULL,
	  nom varchar(20) ,
	  adr  varchar(20) 
	 )engine = innodb;
	  
		  CREATE TABLE suit
 (num int NOT NULL,
  code varchar(5)not null )engine = innodb;
  
  
  	  CREATE TABLE cours
	 (code varchar(5) NOT NULL,
	  nom_ens  varchar(20) ,
	  salle int, prix decimal(5,2) )engine = innodb;
	   