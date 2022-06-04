CREATE TABLE IF NOT EXISTS utilisateurs
(
    id BIGINT NOT NULL PRIMARY KEY,
    prenom TEXT NOT NULL,
    nom TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    ville TEXT NOT NULL
);

INSERT INTO utilisateurs (id, prenom, nom, email, ville)
VALUES (1, 'Aimee', 'Marechal', 'aime.marechal@gmail.com', 'Paris'),
(2, 'Estimee', 'Lefort', 'estimee.lefort@gmail.com', 'Lyon'),
(3, 'Marine', 'Prevost', 'm.prevost@gmail.com', 'Lille'),
(4, 'Luc', 'Rolland', 'lucrolland@gmail.com', 'Marseille');

CREATE TABLE IF NOT EXISTS command
(
    id BIGINT NOT NULL PRIMARY KEY,
    utilisateur_id BIGINT REFERENCES utilisateur(id)
);