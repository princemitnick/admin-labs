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

CREATE TABLE IF NOT EXISTS commande
(
    utilisateur_id BIGINT REFERENCES utilisateur(id),
    date_achat TIMESTAMP WITH TIME ZONE,
    num_facture TEXT NOT NULL,
    prix_total NUMERIC(10, 2)
);

INSERT INTO commande (utilisateur_id, date_achat, num_facture, prix_total)
VALUES (1, now(), 'A00103', 203.14),
(1, now(), 'A00104', 124.00),
(2, now(), 'A00105', 149.45),
(2, now(), 'A00106', 235.35),
(5, now(), 'A00107', 47.58 );

