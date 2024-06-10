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
INSERT INTO Invites (id_invite, nom, statut) VALUES (1, 'Jean Dupont', 'Suspect');
 INSERT INTO Invites (id_invite, nom, statut) VALUES (2, 'Marie Curie', 'Innocent');
 INSERT INTO Invites (id_invite, nom, statut) VALUES (3, 'Albert Einstein', 'Suspect'); 
INSERT INTO Invites (id_invite, nom, statut) VALUES (4, 'Isaac Newton', 'Innocent');
 INSERT INTO Invites (id_invite, nom, statut) VALUES (5, 'Niels Bohr', 'Suspect'); 
 
 
  INSERT INTO rooms (id_room, nom) VALUES (1, 'Salle de Bal');
 INSERT INTO rooms (id_room, nom) VALUES (2, 'Bibliothèque');
 INSERT INTO rooms (id_room, nom) VALUES (3, 'Cuisine'); 
INSERT INTO rooms (id_room, nom) VALUES (4, 'Salon');
 INSERT INTO rooms (id_room, nom) VALUES (5, 'Jardin');
 
 
INSERT INTO Movements (id_mouvement, id_invite, room_id, temps) VALUES ( 1, 1, '2023-06-01','20:00'), (2, 1, '2023-06-01','21:00'), (3, 2, '2023-06-01','22:00'), (4, 3, '2023-06-01','23:00'), (1, 2, '2023-06-02','20:00');


 INSERT INTO Objets (id_objet, nom_objet, id_room) VALUES (1, 'Vase Ancien', 1);
 INSERT INTO Objets (id_objet, nom_objet, id_room) VALUES (2, 'Tableau de Maître', 2);
 INSERT INTO Objets (id_objet, nom_objet, id_room) VALUES (3, 'Statue en Bronze', 3);
 INSERT INTO Objets (id_objet, nom_objet, id_room) VALUES (4, 'Coffre à Bijoux', 2);
 INSERT INTO Objets (id_objet, nom_objet, id_room) VALUES (5, 'Lampe en Cristal', 4);
 
 

 INSERT INTO Indices (id_indice, description_Indice, id_room) VALUES (1, 'Empreintes de pas trouvées près du vase', 1);
 INSERT INTO Indices (id_indice, description_Indice, id_room) VALUES (2, 'Traces de sang sur la table', 2);
 INSERT INTO Indices (id_indice, description_Indice, id_room) VALUES (3, 'Foulard déchiré retrouvé sur le sol', 3);
 INSERT INTO Indices (id_indice, description_Indice, id_room) VALUES (4, 'Clé ancienne trouvée sous le canapé', 4);
 INSERT INTO Indices (id_indice, description_Indice, id_room) VALUES (5, 'Bijou abandonné dans le jardin', 5);

