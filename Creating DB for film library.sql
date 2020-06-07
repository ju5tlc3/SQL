CREATE TABLE GENRES(
ID INT PRIMARY KEY IDENTITY,
TITLE VARCHAR(20) NOT NULL);
CREATE TABLE FILMS(
ID INT IDENTITY PRIMARY KEY,
TITLE VARCHAR(20) NOT NULL,
ID_GENRE INT NOT NULL,
DURATION TIME(0) NOT NULL,
RELEASE INT CHECK(RELEASE BETWEEN 1960 AND 2019) NOT NULL,
COLOR VARCHAR(3) CHECK(COLOR IN('YES','NO'))NOT NULL,
CONSTRAINT ID_GENRE_FOREIGN FOREIGN KEY(ID_GENRE) REFERENCES GENRES(ID));
CREATE TABLE ACTORS(
ID INT PRIMARY KEY IDENTITY,
ACTOR_NAME VARCHAR(20) NOT NULL,
BIRTHDAY DATE NOT NULL,
SEX CHAR(1) CHECK(SEX IN ('M','W')) NOT NULL);
CREATE TABLE FILMS_ACTORS(
ID_FILM INT NOT NULL ,
ID_ACTOR INT NOT NULL,
PRIMARY KEY(ID_FILM, ID_ACTOR),
CONSTRAINT FILM_FOREIGN FOREIGN KEY (ID_FILM) REFERENCES FILMS(ID),
CONSTRAINT ACTOR_FOREIGN FOREIGN KEY (ID_ACTOR) REFERENCES ACTORS(ID));
