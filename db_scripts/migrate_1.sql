COMMIT ;
START TRANSACTION ;

ALTER TABLE singer ADD role varchar(50), ADD bandName varchar(50);
ALTER TABLE singer CHANGE singerName musicianName varchar(50);
UPDATE singer SET role = 'vocals', bandName = 'Crazy Duo' WHERE musicianName = 'Alina';
UPDATE singer SET role = 'guitar', bandName = 'Mysterio' WHERE musicianName = 'Mysterio';
UPDATE singer SET role = 'percussion', bandName = 'Crazy Duo' WHERE musicianName = 'Rainbow';
UPDATE singer SET role = 'piano', bandName = 'Luna' WHERE musicianName = 'Luna';
ALTER TABLE singer RENAME TO musician;

CREATE TABLE band (bandName VARCHAR(50), creation YEAR, genre VARCHAR(50), PRIMARY KEY (bandName));
INSERT INTO band (bandName, creation, genre) VALUES ('Crazy Duo', 2015, 'rock');
INSERT INTO band (bandName, creation, genre) VALUES ('Luna', 2009, 'classical');
INSERT INTO band (bandName, creation, genre) VALUES ('Mysterio', 2019, 'pop');

