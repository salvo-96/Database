INSERT INTO Utente (
    email, password, username, tipo, inizio_collaborazione
)
VALUES
	(
		‘salvo@gmail.com ', ‘root’, ‘salvo_96’, ‘user’, null),
(‘andrea_boetto@gmail.com’, ‘root’, ‘andreaBoetto’, ‘user’, null) (‘paolo_incastrone@gmail.com’, ‘ciao420’, ‘poseidonon’, ‘admin’,’2019-04-20’) ;
INSERT INTO TipoContenuto (tipo_contenuto, nome_contenuto) VALUES (’s’, ‘SerieTv’) , (‘f’, ‘Film’), (‘p’, ‘ProgrammaTv’);
INSERT INTO Contenuto (titolo, genere, media_voti, anno, paese, tipo) VALUES (‘Stranger Things’, ‘Fantascienza - Horror’, null, ‘2017’, ‘USA’, ’s’),
(‘A Beautiful Mind’, ‘Biografico - Drammatico’, null, ‘2001’, ‘USA’, ‘f’) (‘SuperQuark’, ‘Divulgazione Scientifica’, null, ‘1995’, ‘Italia’, ’p’) ;
INSERT INTO aggiorna (email, id_contenuto) VALUES (‘paolo_incastrone@gmail.com’, 1);

 INSERT INTO vota (email, id_contenuto) VALUES (‘salvo@gmail.com’, 2);
INSERT INTO preferisce (email, id_contenuto) VALUES (‘paolo_incastrone@gmail.com',
		1
	); INSERT INTO Attore (
		nome, cognome, biografia, data_nascita,
		paese_nascita, foto, eta
	)
VALUES
	(
		‘Russe ll’, ‘Crowe’, ‘È noto soprattutto per avere interpretato il ruolo del generale Massimo Decimo Meridio ne Il gladiatore di Ridley Scott,
		ruolo che gli ha dato molta popolarità a livello internazionale e gli ha consentito di aggiudicarsi il Premio Oscar come miglior attore protagonista nel 2001.’,
		‘1964 - 04 - 07‘, ‘Wellington - USA’,
		null, ‘54’
	); INSERT INTO Recita (
		protagonista, nome_attore, cognome_attore,
		data_nascita_attore, id_contenuto
	)
VALUES
	(
		‘John Nash’, ’Russell’, ‘Crowe’, ‘1964 - 04 - 07’,
		2
	); INSERT INTO ProgrammiTV (
		id, piattaforma, durata, descrizione
	)
VALUES
	(
		3,
		‘Rai - TV’,
		120,
		‘Superquark è un programma televisivo di divulgazione culturale,
		nato nel gennaio 1995,
		ideato e condotto da Piero Angela,
		evoluzione della precedente trasmissione Quark.');

INSERT INTO Film (id, distribuzione, fotografia, produzione, durata, musiche, sceneggiatura, data_di_uscita) VALUES (2, ‘Universal Pictures’, ’Roger Deakins’, ’Universal Pictures - DreamWorks’, 135, ‘James Horner’, ‘Akiva Goldsman’, ‘2002-02-15’);
INSERT INTO Regista (data_nascita, foto, nome, cognome, paese_nascita, eta) VALUES (‘1954-03-01’, null, ‘Ron’, ’Howard’, ‘Duncan - USA’, 66);
INSERT INTO Regista (data_nascita, foto, nome, cognome, paese_nascita, eta) VALUES (‘1984-02-15’, null, ‘Matt’, ’Duffer’, ‘Durham - USA’, 36);
INSERT INTO Regista (data_nascita, foto, nome, cognome, paese_nascita, eta) VALUES (‘1984-02-15’, null, ‘Ross’, ’Duffer’, ‘Durham - USA’, 36);
INSERT INTO Diretto (id_film, id_regista) VALUES (2, 1);
INSERT INTO Cinema (nome, indirizzo, regione, provincia, contatti) VALUES (‘Lux’, ‘Torino, Galleria S. Federico 33’, ‘Piemonte’, ‘Torino’, ‘0115628907’);
INSERT INTO Proiettato (id_film, nome, indirizzo) VALUES (2 , ‘Lux’, ‘Galleria S. Federico 33’); INSERT INTO Sala (numero_sala, nome, indirizzo) VALUES ( 1, ‘Lux’, ‘Galleria S. Federico 33’);
INSERT INTO Proietta (numero_sala, nome, indirizzo, id_film, data, ora) VALUES (1, ‘Lux’, ‘Galleria S. Federico 33’, 2, ‘2020-07-13’, ’19:00’);
INSERT INTO Proiezione (id_film, data, ora, prezzo) VALUES (2 , ‘2020-07-13’, ’19:00’, ‘7,50’); INSERT INTO SerieTV (id, piattaforma, distribuzione, fotografia, produzione, musiche, data_di_uscita)

VALUES (1, ‘Netflix’, ‘Netflix’, ‘Matt Duffer - Ross Duffer’, ‘CampHero Productions - 21 Laps Entertainment’, ‘Kyle Dixon - Michael Stein’, ‘2016-07-15’);
INSERT INTO Stagione (id, numero_stagione) VALUES (1, 1);
INSERT INTO Episodio (id_serie_tv, numero_stagione, titolo_episodio, durata, sceneggiatore) VALUES (1 , 1, ‘La scomparsa di Will Byers’, 47, ‘Matt Duffer - Ross Duffer’ );
INSERT INTO Regia (titolo_episodio, id_serie_tv, numero_stagione, id_regista) VALUES (‘La scomparsa di Will Byers’, 1, 1, 2),
(‘La scomparsa di Will Byers’, 1, 1, 3) ;