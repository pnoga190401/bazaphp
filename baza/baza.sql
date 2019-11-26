DROP TABLE IF EXISTS menu;
CREATE TABLE menu (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	nazwa_pliku CHAR(30),
	tytul VARCHAR(40),
	pozycja INTEGER DEFAULT 0
);

INSERT INTO menu VALUES(null, 'glowna', 'Aplikacja wiadomosci', 1);
INSERT INTO menu VALUES(null, 'wiadomosci', 'Lista wiadomosci', 2);
INSERT INTO menu VALUES(null, 'dodaj', 'Dodawanie / Edycja wiadomosci', 3);

DROP TABLE IF EXISTS users;
CREATE TABLE users(
id INTEGER PRIMARY KEY AUTOINCREMENT,
login CHAR(20),
haslo VARCHAR,
email CHAR(50),
data DATE
);

DROP TABLE IF EXISTS posty;
CREATE TABLE posty(
id INTEGER PRIMARY KEY AUTOINCREMENT,
wiadomosc VARCHAR,
id_user INTEGER,
FOREIGN KEY(id_user) REFERENCES user(id)
);