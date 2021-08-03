CREATE TABLE Utente (
email VARCHAR(15) NOT NULL,
password VARCHAR(20) NOT NULL,
username VARCHAR(20) NOT NULL UNIQUE, tipo VARCHAR(20) NOT NULL, inizio_collaborazione DATE DEFAULT NULL, PRIMARY KEY (email
)
CREATE TABLE Aggiorna (
email VARCHAR(15) NOT NULL,
id_contenuto INT NOT NULL,
PRIMARY KEY (email, id_contenuto),
FOREIGN KEY (email) REFERENCES Utente (email)
ON DELETE CASCADE ON UPDATE CASCADE, FOREIGN KEY (id_contenuto) REFERENCES Contenuto (id)
ON DELETE CASCADE ON UPDATE CASCADE
)
CREATE TABLE Vota (
email VARCHAR(15) NOT NULL,
id_voto INT NOT NULL,
PRIMARY KEY (email, id_voto),
FOREIGN KEY (email) REFERENCES Utente (email)
ON UPDATE CASCADE,
FOREIGN KEY (id_voto) REFERENCES Voto (id_voto)
ON UPDATE CASCADE
)
CREATE TABLE Preferisce (
email VARCHAR(15) NOT NULL, id_contenuto INT NOT NULL,
 
 )
PRIMARY KEY (email, id_contenuto),
FOREIGN KEY (email) REFERENCES Utente (email)
ON DELETE CASCADE ON UPDATE CASCADE, FOREIGN KEY (id_contenuto) REFERENCES Contenuto (id)
ON DELETE CASCADE ON UPDATE CASCADE
CREATE TABLE TipoContenuto (
tipo_contenuto VARCHAR(1) NOT NULL, nome_contenuto VARCHAR(20) NOT NULL, PRIMARY KEY(tipo_contenuto, nome_contenuto), UNIQUE (nome_contenuto)
)
CREATE TABLE Contenuto (
titolo VARCHAR(15) NOT NULL,
id INT NOT NULL AUTO_INCREMENT, genere VARCHAR(20) NOT NULL, media_voti INT DEFAULT NULL,
anno INT DEFAULT NULL,
paese VARCHAR(20) NOT NULL, PRIMARY KEY (id)
)
CREATE TABLE Attore (
nome VARCHAR(15) NOT NULL,
cognome VARCHAR(20) NOT NULL,
biografia VARCHAR(20) DEFAULT NULL, data_nascita VARCHAR(20) NOT NULL, paese_nascita VARCHAR(20) DEFAULT NULL, foto BLOB,
eta INT,
PRIMARY KEY (nome, cognome, data_nascita)
)
CREATE TABLE Recita (
Protagonista VARCHAR(30) NOT NULL,
nome_attore VARCHAR(15) NOT NULL,
cognome_attore VARCHAR(20) NOT NULL,
data_nascita_attore VARCHAR(20) NOT NULL,
id_contenuto INT NOT NULL,
PRIMARY KEY (nome_attore, cognome_attore, data_nascita_attore, id_contenuto),
FOREIGN KEY (nome_attore, cognome_attore, data_nascita_attore) REFERENCES Attore(nome, cognome, data_nascita)
ON DELETE CASCADE ON UPDATE CASCADE,

 FOREIGN KEY (id_contenuto) REFERENCES Contenuto(id) ON DELETE CASCADE ON UPDATE CASCADE
)
CREATE TABLE ProgrammiTV (
id INT NOT NULL,
piattaforma VARCHAR(20),
durata INT NOT NULL,
descrizione VARCHAR(400),
PRIMARY KEY (id),
FOREIGN KEY (id) REFERENCES Contenuto (id)
ON DELETE CASCADE ON UPDATE CASCADE
)
CREATE TABLE Film (
id INT NOT NULL,
distribuzione VARCHAR(30) NOT NULL, fotografia VARCHAR(30) NOT NULL,
produzione VARCHAR(150) DEFAULT NULL, durata INT(11) NOT NULL,
musiche VARCHAR(30) DEFAULT NULL, sceneggiatura VARCHAR(150) DEFAULT NULL, data_di_uscita DATE,
PRIMARY KEY (id),
FOREIGN KEY (id) REFERENCES Contenuto (id)
ON DELETE CASCADE ON UPDATE CASCADE
)
CREATE TABLE Diretto (
id_film INT NOT NULL,
id_regista INT NOT NULL,
PRIMARY KEY (id_film, id_regista),
FOREIGN KEY (id_film) REFERENCES Contenuto (id)
ON DELETE CASCADE ON UPDATE CASCADE, FOREIGN KEY (id_regista) REFERENCES Regista (id_regista)
ON DELETE CASCADE ON UPDATE CASCADE
)
CREATE TABLE Regista (
data_nascita DATE,
foto BLOB,
nome VARCHAR(20) NOT NULL,
cognome VARCHAR(20) NOT NULL,
id_regista INT NOT NULL AUTO_INCREMENT, paese_nascita VARCHAR(20),

 eta INT,
PRIMARY KEY (id_regista) )
CREATE TABLE Proiettato (
id_film INT NOT NULL,
nome VARCHAR(20) NOT NULL,
indirizzo VARCHAR(50) NOT NULL,
PRIMARY KEY (id_film, nome, indirizzo), FOREIGN KEY (id_film) REFERENCES Film (id)
ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (nome, indirizzo) REFERENCES Cinema (nome, indirizzo)
ON DELETE CASCADE ON UPDATE CASCADE
)
CREATE TABLE Voto(
id_voto INT NOT NULL AUTO_INCREMENT, voto INT NOT NULL, PRIMARY_KEY(id_voto)
)
CREATE TABLE Attribuito(
id_voto INT NOT NULL,
id_contenuto INT NOT NULL,
PRIMARY KEY(id_voto,id_contenuto)
FOREIGN KEY (id_voto) REFERENCES Voto(id_voto)
ON DELETE CASCADE ON UPDATE CASCADE FOREIGN KEY(id_contenuto) REFERENCES Contenuto(id)
ON DELETE CASCADE ON UPDATE CASCADE )
CREATE TABLE Cinema (
nome VARCHAR(20) NOT NULL, indirizzo VARCHAR(50) NOT NULL, regione VARCHAR(20) NOT NULL, provincia VARCHAR(20) NOT NULL, contatti VARCHAR(15),
PRIMARY KEY (nome, indirizzo)
)
CREATE TABLE Sala (
numero_sala INT NOT NULL, nome VARCHAR(20) NOT NULL,
indirizzo VARCHAR(50) NOT NULL, PRIMARY KEY (numero, nome, indirizzo),

 FOREIGN KEY (nome, indirizzo) REFERENCES Cinema(nome, indirizzo) ON DELETE CASCADE ON UPDATE CASCADE
)
CREATE TABLE Proietta (
numero_sala INT NOT NULL,
nome VARCHAR(20) NOT NULL,
indirizzo VARCHAR(50) NOT NULL,
id_film INT NOT NULL,
data DATE NOT NULL,
ora TIME NOT NULL,
PRIMARY KEY (numero, nome, indirizzo, id_film, data, ora),
FOREIGN KEY (numero, nome, indirizzo) REFERENCES Sala(numero, nome, indirizzo)
ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (id_film, data, ora) REFERENCES Proiezione(id_film, data, ora)
ON DELETE CASCADE ON UPDATE CASCADE
)
CREATE TABLE Proiezione (
id_film INT NOT NULL,
data DATE NOT NULL,
ora TIME NOT NULL,
prezzo VARCHAR(6) DEFAULT NULL, PRIMARY KEY (id_film, data, ora)
)
CREATE TABLE SerieTV (
id INT NOT NULL,
piattaforma VARCHAR(20) NOT NULL, distribuzione VARCHAR(30) NOT NULL, fotografia VARCHAR(30) NOT NULL, produzione VARCHAR(150),
musiche VARCHAR(30,
data_di_uscita DATE,
PRIMARY KEY (id),
FOREIGN KEY (id) REFERENCES Contenuto(id)
ON DELETE CASCADE ON UPDATE CASCADE
)
CREATE TABLE Stagione (
id INT NOT NULL,
numero_stagione INT NOT NULL,
PRIMARY KEY (id, numero),
FOREIGN KEY (id) REFERENCES SerieTV(id)
ON DELETE CASCADE ON UPDATE CASCADE

)
CREATE TABLE Episodio (
id_serie_tv INT NOT NULL, numero_stagione INT NOT NULL, titolo_episodio VARCHAR(30) NOT NULL, durata INT NOT NULL,
sceneggiatore VARCHAR(150),
PRIMARY KEY ( id_serie_tv, numero, titolo_episodio),
FOREIGN KEY (id_serie_tv, numero) REFERENCES Stagione(id, numero)
ON DELETE CASCADE ON UPDATE CASCADE
)
CREATE TABLE Regia (
titolo_episodio VARCHAR(30) NOT NULL,
id_serie_tv INT NOT NULL,
numero_stagione INT NOT NULL,
id_regista INT NOT NULL,
PRIMARY KEY (titolo_episodio, id_serie_tv, numero_stagione, id_regista), FOREIGN KEY (id_regista) REFERENCES Regista(id_regista)
ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (id_serie_tv, numero_stagione, titolo_episodio) REFERENCES Episodio(
id_serie_tv, numero, titolo_episodio)
ON DELETE CASCADE ON UPDATE CASCADE
)