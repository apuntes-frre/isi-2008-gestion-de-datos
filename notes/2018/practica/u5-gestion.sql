create database unidad5_ejer2;

use unidad5_ejer2;

create table persona(
idConductor int,
nombre varchar(45),
direccion varchar(45),
primary key (idConductor)
);

create table coche(
matricula varchar(45),
año date,
modelo varchar(45),
primary key (matricula)
);

create table accidente(
numeroInforme int,
fecha date,
lugar varchar(45),
primary key (numeroInforme)
);

create table esDueño(
idConductor int,
matricula varchar(45),
primary key (idConductor, matricula)
);

create table participo(
idConductor int,
coche varchar(45),
numeroInforme int,
importeDanos double,
primary key(idConductor, coche, numeroInforme)
);

ALTER TABLE esdueño ADD CONSTRAINT FK_persona FOREIGN KEY (idConductor)
REFERENCES persona(idConductor);

ALTER TABLE esdueño ADD CONSTRAINT FK_coche FOREIGN KEY (matricula)
REFERENCES coche(matricula);

ALTER TABLE participo ADD CONSTRAINT FK_persona FOREIGN KEY (idConductor)
REFERENCES persona(idConductor);

ALTER TABLE participo ADD CONSTRAINT FK_coche FOREIGN KEY (matricula)
REFERENCES coche(matricula);

ALTER TABLE accidente ADD CONSTRAINT FK_accidente FOREIGN KEY (numeroInforme)
REFERENCES accidente(numeroInforme);