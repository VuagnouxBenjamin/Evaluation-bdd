DROP DATABASE IF EXISTS exo1; 

CREATE DATABASE exo1;

USE exo1; 

CREATE TABLE client (
    cli_num int NOT NULL PRIMARY KEY, 
    cli_nom varchar(50) NOT NULL, 
    cli_adresse varchar(50) NOT NULL,
    cli_tel varchar(30)
); 

CREATE TABLE commande (
    com_num int NOT NULL PRIMARY KEY, 
    cli_num int REFERENCES client(cli_num), 
    com_date datetime NOT NULL, 
    com_obs varchar(50)
); 

CREATE TABLE produit (
    pro_num int NOT NULL PRIMARY KEY, 
    pro_libelle varchar(50) NOT NULL, 
    pro_description varchar(50)
); 

CREATE TABLE est_compose (
    com_num int REFERENCES commande(com_num), 
    pro_num int REFERENCES produit(pro_num),
    est_qte int
); 

CREATE INDEX index_cli ON client(cli_nom);