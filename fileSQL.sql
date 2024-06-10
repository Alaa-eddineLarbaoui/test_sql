create database diamant;
use  diamant;
CREATE TABLE Invites (
    id_invite INT PRIMARY KEY,
    nom VARCHAR(255),
    statut VARCHAR(50)
);

CREATE TABLE Rooms (
    id_room INT PRIMARY KEY,
    nom VARCHAR(255)
);


CREATE TABLE Objets (
    id_objet INT PRIMARY KEY,
    nom_objet VARCHAR(255),
    id_room INT,
    FOREIGN KEY (id_room) REFERENCES Rooms(id_room)
);


CREATE TABLE Mouvements (
    id INT PRIMARY KEY,
    id_invite INT,
    id_room INT,
    temps date,
    FOREIGN KEY (id_invite) REFERENCES Invites(id_invite),
    FOREIGN KEY (id_room) REFERENCES Rooms(id_room)
);


CREATE TABLE Indices (
    id_indice INT PRIMARY KEY,
    description_Indice TEXT,
    id_room INT,
    FOREIGN KEY (id_room) REFERENCES Rooms(id_room)
);

