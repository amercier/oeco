BEGIN;

TRUNCATE TABLE news;

INSERT INTO news ("url", "title", "summary", "order", "created_at", "updated_at") VALUES
('liget', 'Musée d''Ethnographie', 'Projet finaliste du concours international LIGET BUDAPEST', 0, '2015-01-19 17:18:00', '2015-01-19 17:18:00'),
('cabestany', 'Contruction de l''espace jeunesse et centre d''hébergement collectif de Cabestany (Pyrénées Orientales)', 'Projet Lauréat, démarrage du chantier printemps 2015', 1, '2015-01-19 17:18:00', '2015-01-19 17:18:00'),
('maison-du-golf-livre', 'Maison du golf, Biscarrosse (Landes)', 'Projet livré', 2, '2015-01-19 17:18:00', '2015-01-19 17:18:00'),
('rehab-cahors', 'Restructuration du campus universitaire de Cahors (Lot)', 'Projet Lauréat, démarrage du chantier printemps 2015', 3, '2015-01-19 17:18:00', '2015-01-19 17:18:00'),
('creche-amouroux', 'Centre petite enfance et multi-accueil Amouroux à Toulouse', 'Chantier en cours', 4, '2015-01-19 17:18:00', '2015-01-19 17:18:00'),
('entrevue', 'Conférence', 'Oeco-Architectes & W-Architectures. Echanges autour de différents parcours de conception au CMAV, à Toulouse', 5, '2015-01-19 17:18:00', '2015-01-19 17:18:00'),
('bureaux-l', 'Bureaux L, bureaux pour des agriculteurs à Liposthey (Landes)', 'Prix de la Première Oeuvre Le Moniteur 2011 - Vanessa Larrère Architecte', 6, '2015-01-19 17:18:00', '2015-01-19 17:18:00');

COMMIT;
