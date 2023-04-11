create database compagnia_sharing;

CREATE TABLE compagnia_sharing.utente(
CodUtente INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR(20) NOT NULL,
Cognome VARCHAR(50),
Email VARCHAR(50), 
Carta CHAR(16)
);

CREATE TABLE compagnia_sharing.passeggero(
PCodUtente INT NOT NULL PRIMARY KEY,
NPasseggeroPrenot1 INT,
NPasseggeroPrenot2 INT,
NPasseggeroPrenot3 INT,
NPasseggeroPrenot4 INT,
NPasseggeroPrenot5 INT,
CONSTRAINT FK1_CodUtente FOREIGN KEY (PCodUtente) REFERENCES compagnia_sharing.utente(CodUtente) 
);

CREATE TABLE compagnia_sharing.localita(
CodCitta INT,
Citta VARCHAR(10),
LCodUtente INT NOT NULL PRIMARY KEY,
CONSTRAINT FK2_CodUtente FOREIGN KEY (LCodUtente) REFERENCES compagnia_sharing.utente(CodUtente)
);

CREATE TABLE compagnia_sharing.mezzitrasporto(
CodMezzo INT PRIMARY KEY,
MCodUtente INT,
ValueMezzo INT,
CONSTRAINT FK0_CodUtente FOREIGN KEY (MCodUtente) REFERENCES compagnia_sharing.utente(CodUtente)
);

CREATE TABLE compagnia_sharing.prenotazione(
CodPrenotazione INT AUTO_INCREMENT PRIMARY KEY,
PrCodUtente INT,
PrCodMezzo INT,
Data DATE,
CONSTRAINT FK5_CodUtente FOREIGN KEY (PrCodUtente) REFERENCES compagnia_sharing.utente(CodUtente),
CONSTRAINT FK8_CodMezzo FOREIGN KEY (PrCodMezzo) REFERENCES compagnia_sharing.mezzitrasporto(CodMezzo)
);

CREATE TABLE compagnia_sharing.monopattino(
CodMonopattino INT,
Modello VARCHAR(20),
Anno YEAR,
MoCodMezzo INT PRIMARY KEY,
Type_M CHAR(11),
MoCodUtente INT,
MoManutenzione VARCHAR(3),
MoDisponibilita VARCHAR(3),
MoKm INT,
CONSTRAINT FK9_MoCodMezzo FOREIGN KEY (MoCodMezzo) REFERENCES compagnia_sharing.mezzitrasporto(CodMezzo),
CONSTRAINT FK10_MoCodUtente FOREIGN KEY (MoCodUtente) REFERENCES compagnia_sharing.utente(CodUtente)
);

CREATE TABLE compagnia_sharing.auto(
CodAuto INT,
Modello VARCHAR(20),
Anno YEAR,
ACodMezzo INT PRIMARY KEY,
Type_A CHAR(4),
ACodUtente INT,
AManutenzione VARCHAR(3),
ADisponibilita VARCHAR(3),
AKm INT,
CONSTRAINT FK11_ACodMezzo FOREIGN KEY (ACodMezzo) REFERENCES compagnia_sharing.mezzitrasporto(CodMezzo),
CONSTRAINT FK12_ACodUtente FOREIGN KEY (ACodUtente) REFERENCES compagnia_sharing.utente(CodUtente)
);

CREATE TABLE compagnia_sharing.scooter(
CodScooter INT,
Modello VARCHAR(20),
Anno YEAR,
ScCodMezzo INT PRIMARY KEY,
Type_S CHAR(7),
ScCodUtente INT,
ScManutenzione VARCHAR(3),
ScDisponibilita VARCHAR(3),
ScKm INT,
CONSTRAINT FK12_ScCodMezzo FOREIGN KEY (ScCodMezzo) REFERENCES compagnia_sharing.mezzitrasporto(CodMezzo),
CONSTRAINT FK10_ScCodUtente FOREIGN KEY (ScCodUtente) REFERENCES compagnia_sharing.utente(CodUtente)
);

INSERT INTO compagnia_sharing.utente VALUES (1,'Mario','Rossi', 'm.rossi@gmail.com', '1234123412341234');
INSERT INTO compagnia_sharing.utente VALUES (2,'Francesco','Gialli', 'f.gialli@gmail.com', '4321432143214321');
INSERT INTO compagnia_sharing.utente VALUES (3,'Simone','Verdi', 's.verdi@gmail.com', '4231423142314231');
INSERT INTO compagnia_sharing.utente VALUES (4,'Luca','Bianchi', 'l.bianchi@gmail.com', '2341234123412341');
INSERT INTO compagnia_sharing.utente VALUES (5,'Forestano','Favazzi', 'f.favazzi@gmail.com', '9870987098709870');
INSERT INTO compagnia_sharing.utente VALUES (6,'Leo','Barilla', 'l.barilla@gmail.com', '7865786578657865');
INSERT INTO compagnia_sharing.utente VALUES (7,'Fanzia','Guidone', 'f.guidone@gmail.com', '4567456745674567');
INSERT INTO compagnia_sharing.utente VALUES (8,'Fiorendo','Calafati', 'f.calafati@gmail.com', '7854785478547854');
INSERT INTO compagnia_sharing.utente VALUES (9,'Virgilio','Palermo', 'v.palermo@gmail.com', '1245124512451245');



INSERT INTO compagnia_sharing.passeggero VALUES (1, 4, 0, Null, Null, Null);
INSERT INTO compagnia_sharing.passeggero VALUES (2, 2, Null, Null, Null, Null);
INSERT INTO compagnia_sharing.passeggero VALUES (3, 1, Null, Null, Null, Null);
INSERT INTO compagnia_sharing.passeggero VALUES (4, 0, Null, Null, Null, Null);
INSERT INTO compagnia_sharing.passeggero VALUES (5, 6, Null, Null, Null, Null);
INSERT INTO compagnia_sharing.passeggero VALUES (6, 2, Null, Null, Null, Null);
INSERT INTO compagnia_sharing.passeggero VALUES (7, 3, Null, Null, Null, Null);
INSERT INTO compagnia_sharing.passeggero VALUES (8, 0, Null, Null, Null, Null);
INSERT INTO compagnia_sharing.passeggero VALUES (9, Null, Null, Null, Null, Null);


INSERT INTO compagnia_sharing.localita VALUES (1, 'Roma', 1);
INSERT INTO compagnia_sharing.localita VALUES (2, 'Milano', 2);
INSERT INTO compagnia_sharing.localita VALUES (3, 'Bologna', 3);
INSERT INTO compagnia_sharing.localita VALUES (4, 'Torino', 4);
INSERT INTO compagnia_sharing.localita VALUES (2, 'Milano', 5);
INSERT INTO compagnia_sharing.localita VALUES (4, 'Torino', 6);
INSERT INTO compagnia_sharing.localita VALUES (4, 'Torino', 7);
INSERT INTO compagnia_sharing.localita VALUES (1, 'Roma', 8);
INSERT INTO compagnia_sharing.localita VALUES (1, 'Roma', 9);


INSERT INTO compagnia_sharing.mezzitrasporto VALUES (1, 1, 1);
INSERT INTO compagnia_sharing.mezzitrasporto VALUES (2, 2, 2);
INSERT INTO compagnia_sharing.mezzitrasporto VALUES (3, 3, 3);
INSERT INTO compagnia_sharing.mezzitrasporto VALUES (4, 4, 4);
INSERT INTO compagnia_sharing.mezzitrasporto VALUES (5, 5, 5);
INSERT INTO compagnia_sharing.mezzitrasporto VALUES (6, 6, 6);
INSERT INTO compagnia_sharing.mezzitrasporto VALUES (7, 7, 7);
INSERT INTO compagnia_sharing.mezzitrasporto VALUES (8, 8, 8);
INSERT INTO compagnia_sharing.mezzitrasporto VALUES (9, 9, Null);
INSERT INTO compagnia_sharing.mezzitrasporto VALUES (10, 1, 9);


INSERT INTO compagnia_sharing.prenotazione VALUES (1,1, 1, '2019-02-10');
INSERT INTO compagnia_sharing.prenotazione VALUES (2,2, 2, '2019-04-15');
INSERT INTO compagnia_sharing.prenotazione VALUES (3,3, 3, '2019-07-29');
INSERT INTO compagnia_sharing.prenotazione VALUES (4,4, 4, '2020-01-16');
INSERT INTO compagnia_sharing.prenotazione VALUES (5,5, 5, '2020-02-12');
INSERT INTO compagnia_sharing.prenotazione VALUES (6,6, 6, '2020-04-02');
INSERT INTO compagnia_sharing.prenotazione VALUES (7,7, 7, '2020-05-01');
INSERT INTO compagnia_sharing.prenotazione VALUES (8,8, 8, '2020-06-18');
INSERT INTO compagnia_sharing.prenotazione VALUES (9,Null, Null, Null);
INSERT INTO compagnia_sharing.prenotazione VALUES (10,1, 9, '2019-02-14');


INSERT INTO compagnia_sharing.monopattino VALUES (1, 'BBB', 2020, 4, 'Monopattino', 4, 'No', 'Yes', 2000);
INSERT INTO compagnia_sharing.monopattino VALUES (2, 'BBB', 2019, 8, 'Monopattino', 8, 'No', 'No', 4000);
INSERT INTO compagnia_sharing.monopattino VALUES (3, 'BBB', 2018, 9, 'Monopattino', 1, 'No', 'Yes', 6000);

INSERT INTO compagnia_sharing.auto VALUES (1, 'AAA', 2018, 1, 'Auto', 1, 'No', 'Yes', 23000);
INSERT INTO compagnia_sharing.auto VALUES (2, 'AAA', 2018, 2, 'Auto', 2, 'No', 'Yes', 25000);
INSERT INTO compagnia_sharing.auto VALUES (3, 'AAA', 2020, 5, 'Auto', 5, 'Yes', 'No', 4500);
INSERT INTO compagnia_sharing.auto VALUES (4, 'AAA', 2019, 6, 'Auto', 6, 'No', 'No', 12500);
INSERT INTO compagnia_sharing.auto VALUES (4, 'AAA', 2019, 7, 'Auto', 7, 'Yes', 'No', 12500);

INSERT INTO compagnia_sharing.scooter VALUES (1, 'CCC', 2019, 3, 'Scooter', 3, 'No', 'Yes', 8000);



-- ###############################################################################
-- #        1. FIND THE CITY WITH THE MOST BOOKINGS IN THE LAST YEAR            #
-- ###############################################################################

CREATE TEMPORARY TABLE compagnia_sharing.NewTable 
SELECT * 
FROM compagnia_sharing.prenotazione as P 
LEFT JOIN compagnia_sharing.localita as L
ON P.PrCodUtente = L.LCodUtente
WHERE Data > '2020-01-01';

SELECT Citta, COUNT(*) 
FROM compagnia_sharing.NewTable 
GROUP BY Citta;

-- TORINO = 3


-- ###########################################################
-- # 2. CALCULATING USERS' FAVORITE VEHICLE IN EVERY CITY    #
-- ###########################################################

-- ROMA
CREATE TEMPORARY TABLE compagnia_sharing.NewTableRomaAuto
SELECT Type_A as Tipo, Modello, Anno, AKm as Km, Citta 
FROM compagnia_sharing.auto as A 
LEFT JOIN compagnia_sharing.localita as L
ON A.ACodUtente = L.LCodUtente
WHERE Citta = 'Roma';

CREATE TEMPORARY TABLE compagnia_sharing.NewTableRomaScooter
SELECT Type_S as Tipo, Modello, Anno, ScKm as Km, Citta  
FROM compagnia_sharing.scooter as S
LEFT JOIN compagnia_sharing.localita as L
ON S.ScCodUtente = L.LCodUtente
WHERE Citta = 'Roma';

CREATE TEMPORARY TABLE compagnia_sharing.NewTableRomaMonopattino
SELECT Type_M as Tipo, Modello, Anno, MoKm as Km, Citta 
FROM compagnia_sharing.monopattino as M
LEFT JOIN compagnia_sharing.localita as L
ON M.MoCodUtente = L.LCodUtente
WHERE Citta = 'Roma';

CREATE TEMPORARY TABLE compagnia_sharing.NewTableRoma
SELECT *
FROM compagnia_sharing.NewTableRomaAuto
UNION ALL
SELECT *
FROM compagnia_sharing.NewTableRomaScooter
UNION ALL
SELECT *
FROM compagnia_sharing.NewTableRomaMonopattino;

SELECT Tipo, COUNT(*) as Numero FROM compagnia_sharing.NewTableRoma GROUP BY Tipo;
-- A Roma il mezzo preferito è il monopattino = 2


-- MILANO
CREATE TEMPORARY TABLE compagnia_sharing.NewTableMilanoAuto
SELECT Type_A as Tipo, Modello, Anno, AKm as Km, Citta 
FROM compagnia_sharing.auto as A 
LEFT JOIN compagnia_sharing.localita as L
ON A.ACodUtente = L.LCodUtente
WHERE Citta = 'Milano';

CREATE TEMPORARY TABLE compagnia_sharing.NewTableMilanoScooter
SELECT Type_S as Tipo, Modello, Anno, ScKm as Km, Citta  
FROM compagnia_sharing.scooter as S
LEFT JOIN compagnia_sharing.localita as L
ON S.ScCodUtente = L.LCodUtente
WHERE Citta = 'Milano';

CREATE TEMPORARY TABLE compagnia_sharing.NewTableMilanoMonopattino
SELECT Type_M as Tipo, Modello, Anno, MoKm as Km, Citta 
FROM compagnia_sharing.monopattino as M
LEFT JOIN compagnia_sharing.localita as L
ON M.MoCodUtente = L.LCodUtente
WHERE Citta = 'Milano';

CREATE TEMPORARY TABLE compagnia_sharing.NewTableMilano
SELECT *
FROM compagnia_sharing.NewTableMilanoAuto
UNION ALL
SELECT *
FROM compagnia_sharing.NewTableMilanoScooter
UNION ALL
SELECT *
FROM compagnia_sharing.NewTableMilanoMonopattino;

SELECT Tipo, COUNT(*) as Numero FROM compagnia_sharing.NewTableMilano GROUP BY Tipo;
--A Milano il mezzo preferito è auto = 2


-- TORINO
CREATE TEMPORARY TABLE compagnia_sharing.NewTableTorinoAuto
SELECT Type_A as Tipo, Modello, Anno, AKm as Km, Citta 
FROM compagnia_sharing.auto as A 
LEFT JOIN compagnia_sharing.localita as L
ON A.ACodUtente = L.LCodUtente
WHERE Citta = 'Torino';

CREATE TEMPORARY TABLE compagnia_sharing.NewTableTorinoScooter
SELECT Type_S as Tipo, Modello, Anno, ScKm as Km, Citta  
FROM compagnia_sharing.scooter as S
LEFT JOIN compagnia_sharing.localita as L
ON S.ScCodUtente = L.LCodUtente
WHERE Citta = 'Torino';

CREATE TEMPORARY TABLE compagnia_sharing.NewTableTorinoMonopattino
SELECT Type_M as Tipo, Modello, Anno, MoKm as Km, Citta 
FROM compagnia_sharing.monopattino as M
LEFT JOIN compagnia_sharing.localita as L
ON M.MoCodUtente = L.LCodUtente
WHERE Citta = 'Torino';

CREATE TEMPORARY TABLE compagnia_sharing.NewTableTorino
SELECT *
FROM compagnia_sharing.NewTableTorinoAuto
UNION ALL
SELECT *
FROM compagnia_sharing.NewTableTorinoScooter
UNION ALL
SELECT *
FROM compagnia_sharing.NewTableTorinoMonopattino;

SELECT Tipo, COUNT(*) as Numero FROM compagnia_sharing.NewTableTorino GROUP BY Tipo;
-- A Torino il mezzo preferito è l'auto = 2


-- BOLOGNA
CREATE TEMPORARY TABLE compagnia_sharing.NewTableBolognaAuto
SELECT Type_A as Tipo, Modello, Anno, AKm as Km, Citta 
FROM compagnia_sharing.auto as A 
LEFT JOIN compagnia_sharing.localita as L
ON A.ACodUtente = L.LCodUtente
WHERE Citta = 'Bologna';

CREATE TEMPORARY TABLE compagnia_sharing.NewTableBolognaScooter
SELECT Type_S as Tipo, Modello, Anno, ScKm as Km, Citta  
FROM compagnia_sharing.scooter as S
LEFT JOIN compagnia_sharing.localita as L
ON S.ScCodUtente = L.LCodUtente
WHERE Citta = 'Bologna';

CREATE TEMPORARY TABLE compagnia_sharing.NewTableBolognaMonopattino
SELECT Type_M as Tipo, Modello, Anno, MoKm as Km, Citta 
FROM compagnia_sharing.monopattino as M
LEFT JOIN compagnia_sharing.localita as L
ON M.MoCodUtente = L.LCodUtente
WHERE Citta = 'Bologna';

CREATE TEMPORARY TABLE compagnia_sharing.NewTableBologna
SELECT *
FROM compagnia_sharing.NewTableBolognaAuto
UNION ALL
SELECT *
FROM compagnia_sharing.NewTableBolognaScooter
UNION ALL
SELECT *
FROM compagnia_sharing.NewTableBolognaMonopattino;

SELECT Tipo, COUNT(*) as Numero FROM compagnia_sharing.NewTableBologna GROUP BY Tipo;
-- A Bologna il mezzo preferito è lo scooter = 1




-- ################################################################
-- # 3. CALCULATE THE VEHICLES IN MAINTENANCE MODE FOR EACH CITY  #
-- ################################################################

-- Roma
CREATE TEMPORARY TABLE compagnia_sharing.NewTableRomaManutenzioneMonopattino
SELECT MoManutenzione as Manutenzione, Citta, Type_M as Tipo, Modello, Anno, MoCodMezzo as CodMezzo
FROM compagnia_sharing.monopattino as M
LEFT JOIN compagnia_sharing.localita as L
ON M.MoCodUtente = L.LCodUtente
WHERE Citta = 'Roma'
AND MoManutenzione = 'Yes';

CREATE TEMPORARY TABLE compagnia_sharing.NewTableRomaManutenzioneAuto
SELECT AManutenzione as Manutenzione, Citta, Type_A as Tipo, Modello, Anno, ACodMezzo as CodMezzo
FROM compagnia_sharing.auto as A
LEFT JOIN compagnia_sharing.localita as L
ON A.ACodUtente = L.LCodUtente
WHERE Citta = 'Roma'
AND AManutenzione = 'Yes';

CREATE TEMPORARY TABLE compagnia_sharing.NewTableRomaManutenzioneScooter
SELECT ScManutenzione as Manutenzione, Citta, Type_S as Tipo, Modello, Anno, ScCodMezzo as CodMezzo
FROM compagnia_sharing.scooter as S
LEFT JOIN compagnia_sharing.localita as L
ON S.ScCodUtente = L.LCodUtente
WHERE Citta = 'Roma'
AND ScManutenzione = 'Yes';

CREATE TEMPORARY TABLE compagnia_sharing.NewTable2Roma
SELECT *
FROM compagnia_sharing.NewTableRomaManutenzioneMonopattino
UNION ALL
SELECT *
FROM compagnia_sharing.NewTableRomaManutenzioneAuto
UNION ALL
SELECT *
FROM compagnia_sharing.NewTableRomaManutenzioneScooter;

SELECT * FROM compagnia_sharing.NewTable2Roma;

-- Milano
CREATE TEMPORARY TABLE compagnia_sharing.NewTableMilanoManutenzioneMonopattino
SELECT MoManutenzione as Manutenzione, Citta, Type_M as Tipo, Modello, Anno, MoCodMezzo as CodMezzo
FROM compagnia_sharing.monopattino as M
LEFT JOIN compagnia_sharing.localita as L
ON M.MoCodUtente = L.LCodUtente
WHERE Citta = 'Milano'
AND MoManutenzione = 'Yes';

CREATE TEMPORARY TABLE compagnia_sharing.NewTableMilanoManutenzioneAuto
SELECT AManutenzione as Manutenzione, Citta, Type_A as Tipo, Modello, Anno, ACodMezzo as CodMezzo
FROM compagnia_sharing.auto as A
LEFT JOIN compagnia_sharing.localita as L
ON A.ACodUtente = L.LCodUtente
WHERE Citta = 'Milano'
AND AManutenzione = 'Yes';

CREATE TEMPORARY TABLE compagnia_sharing.NewTableMilanoManutenzioneScooter
SELECT ScManutenzione as Manutenzione, Citta, Type_S as Tipo, Modello, Anno, ScCodMezzo as CodMezzo
FROM compagnia_sharing.scooter as S
LEFT JOIN compagnia_sharing.localita as L
ON S.ScCodUtente = L.LCodUtente
WHERE Citta = 'Milano'
AND ScManutenzione = 'Yes';

CREATE TEMPORARY TABLE compagnia_sharing.NewTable2Milano
SELECT *
FROM compagnia_sharing.NewTableMilanoManutenzioneMonopattino
UNION ALL
SELECT *
FROM compagnia_sharing.NewTableMilanoManutenzioneAuto
UNION ALL
SELECT *
FROM compagnia_sharing.NewTableMilanoManutenzioneScooter;

SELECT * FROM compagnia_sharing.NewTable2Milano;

-- Torino
CREATE TEMPORARY TABLE compagnia_sharing.NewTableTorinoManutenzioneMonopattino
SELECT MoManutenzione as Manutenzione, Citta, Type_M as Tipo, Modello, Anno, MoCodMezzo as CodMezzo
FROM compagnia_sharing.monopattino as M
LEFT JOIN compagnia_sharing.localita as L
ON M.MoCodUtente = L.LCodUtente
WHERE Citta = 'Torino'
AND MoManutenzione = 'Yes';

CREATE TEMPORARY TABLE compagnia_sharing.NewTableTorinoManutenzioneAuto
SELECT AManutenzione as Manutenzione, Citta, Type_A as Tipo, Modello, Anno, ACodMezzo as CodMezzo
FROM compagnia_sharing.auto as A
LEFT JOIN compagnia_sharing.localita as L
ON A.ACodUtente = L.LCodUtente
WHERE Citta = 'Torino'
AND AManutenzione = 'Yes';

CREATE TEMPORARY TABLE compagnia_sharing.NewTableTorinoManutenzioneScooter
SELECT ScManutenzione as Manutenzione, Citta, Type_S as Tipo, Modello, Anno, ScCodMezzo as CodMezzo
FROM compagnia_sharing.scooter as S
LEFT JOIN compagnia_sharing.localita as L
ON S.ScCodUtente = L.LCodUtente
WHERE Citta = 'Torino'
AND ScManutenzione = 'Yes';

CREATE TEMPORARY TABLE compagnia_sharing.NewTable2Torino
SELECT *
FROM compagnia_sharing.NewTableTorinoManutenzioneMonopattino
UNION ALL
SELECT *
FROM compagnia_sharing.NewTableTorinoManutenzioneAuto
UNION ALL
SELECT *
FROM compagnia_sharing.NewTableTorinoManutenzioneScooter;

SELECT * FROM compagnia_sharing.NewTable2Torino;

-- Bologna
CREATE TEMPORARY TABLE compagnia_sharing.NewTableBolognaManutenzioneMonopattino
SELECT MoManutenzione as Manutenzione, Citta, Type_M as Tipo, Modello, Anno, MoCodMezzo as CodMezzo
FROM compagnia_sharing.monopattino as M
LEFT JOIN compagnia_sharing.localita as L
ON M.MoCodUtente = L.LCodUtente
WHERE Citta = 'Bologna'
AND MoManutenzione = 'Yes';

CREATE TEMPORARY TABLE compagnia_sharing.NewTableBolognaManutenzioneAuto
SELECT AManutenzione as Manutenzione, Citta, Type_A as Tipo, Modello, Anno, ACodMezzo as CodMezzo
FROM compagnia_sharing.auto as A
LEFT JOIN compagnia_sharing.localita as L
ON A.ACodUtente = L.LCodUtente
WHERE Citta = 'Bologna'
AND AManutenzione = 'Yes';

CREATE TEMPORARY TABLE compagnia_sharing.NewTableBolognaManutenzioneScooter
SELECT ScManutenzione as Manutenzione, Citta, Type_S as Tipo, Modello, Anno, ScCodMezzo as CodMezzo
FROM compagnia_sharing.scooter as S
LEFT JOIN compagnia_sharing.localita as L
ON S.ScCodUtente = L.LCodUtente
WHERE Citta = 'Bologna'
AND ScManutenzione = 'Yes';

CREATE TEMPORARY TABLE compagnia_sharing.NewTable2Bologna
SELECT *
FROM compagnia_sharing.NewTableBolognaManutenzioneMonopattino
UNION ALL
SELECT *
FROM compagnia_sharing.NewTableBolognaManutenzioneAuto
UNION ALL
SELECT *
FROM compagnia_sharing.NewTableBolognaManutenzioneScooter;

SELECT * FROM compagnia_sharing.NewTable2Bologna;


-- ####################################################################
-- # 4. MAKE A RESERVATION FOR A VEHICLE BY CHECKING ITS AVAILABILITY #
-- ####################################################################

-- monopattino
CREATE TEMPORARY TABLE compagnia_sharing.Disponibilita1
SELECT *
FROM compagnia_sharing.mezzitrasporto as M
LEFT JOIN compagnia_sharing.monopattino as A
ON M.CodMezzo = A.MoCodMezzo
WHERE Type_M IS NOT NULL;

SELECT Type_M as Tipo, Modello, Anno, MoDisponibilita as Disponibilità, Citta as Città
FROM compagnia_sharing.Disponibilita1 as D
LEFT JOIN compagnia_sharing.localita as L
ON D.MCodUtente = L.LCodUtente;

-- auto
CREATE TEMPORARY TABLE compagnia_sharing.Disponibilita2
SELECT *
FROM compagnia_sharing.mezzitrasporto as M
LEFT JOIN compagnia_sharing.auto as A
ON M.CodMezzo = A.ACodMezzo
WHERE Type_A IS NOT NULL;

SELECT Type_A as Tipo, Modello, Anno, ADisponibilita as Disponibilità, Citta as Città
FROM compagnia_sharing.Disponibilita2 as D
LEFT JOIN compagnia_sharing.localita as L
ON D.MCodUtente = L.LCodUtente;

-- scooter
CREATE TEMPORARY TABLE compagnia_sharing.Disponibilita3
SELECT *
FROM compagnia_sharing.mezzitrasporto as M
LEFT JOIN compagnia_sharing.scooter as S
ON M.CodMezzo = S.ScCodMezzo
WHERE Type_S IS NOT NULL;

SELECT Type_S as Tipo, Modello, Anno, ScDisponibilita as Disponibilità, Citta as Città
FROM compagnia_sharing.Disponibilita3 as D
LEFT JOIN compagnia_sharing.localita as L
ON D.MCodUtente = L.LCodUtente;
--


-- ##############################################################
-- # 5. CALCULATE THE AVERAGE KILOMETERS TRAVELED FOR EACH CITY #
-- ##############################################################

-- monopattino
CREATE TEMPORARY TABLE compagnia_sharing.NewTable5
SELECT Type_M as Tipo, MoKm as Km, Citta
FROM compagnia_sharing.localita as L
LEFT JOIN compagnia_sharing.monopattino as M
ON L.LCodUtente = M.MoCodUtente;

-- auto
CREATE TEMPORARY TABLE compagnia_sharing.NewTable6
SELECT Type_A as Tipo, AKm as Km, Citta
FROM compagnia_sharing.localita as L
LEFT JOIN compagnia_sharing.auto as A
ON L.LCodUtente = A.ACodUtente;

-- scooter
CREATE TEMPORARY TABLE compagnia_sharing.NewTable7
SELECT Type_S as Tipo, ScKm as Km, Citta
FROM compagnia_sharing.localita as L
LEFT JOIN compagnia_sharing.scooter as S
ON L.LCodUtente = S.ScCodUtente;

CREATE TEMPORARY TABLE compagnia_sharing.NewTable8
SELECT *
FROM compagnia_sharing.NewTable5
WHERE Tipo is not NULL
UNION ALL
SELECT *
FROM compagnia_sharing.NewTable6
WHERE Tipo is not NULL
UNION ALL
SELECT *
FROM compagnia_sharing.NewTable7
WHERE Tipo is not NULL;


-- Roma
CREATE TEMPORARY TABLE compagnia_sharing.NewTable12
SELECT *
FROM compagnia_sharing.NewTable8
WHERE Citta = 'Roma';

SELECT Citta, AVG(Km) FROM compagnia_sharing.NewTable12 GROUP BY Citta;

-- Torino
CREATE TEMPORARY TABLE compagnia_sharing.NewTable13
SELECT *
FROM compagnia_sharing.NewTable8
WHERE Citta = 'Torino';

SELECT Citta, AVG(Km) FROM compagnia_sharing.NewTable13 GROUP BY Citta;

-- Milano
CREATE TEMPORARY TABLE compagnia_sharing.NewTable14
SELECT *
FROM compagnia_sharing.NewTable8
WHERE Citta = 'Milano';

SELECT Citta, AVG(Km) FROM compagnia_sharing.NewTable14 GROUP BY Citta;

-- Bologna
CREATE TEMPORARY TABLE compagnia_sharing.NewTable15
SELECT *
FROM compagnia_sharing.NewTable8
WHERE Citta = 'Bologna';

SELECT Citta, AVG(Km) FROM compagnia_sharing.NewTable15 GROUP BY Citta;


-- #############################################################################
-- # 6. FIND THE NAMES OF CLIENTS WHO HAVE NOT MADE ANY RUNS IN THE LAST MONTH #
-- #############################################################################

CREATE TEMPORARY TABLE compagnia_sharing.NomiClienti
SELECT *
FROM compagnia_sharing.utente as U
LEFT JOIN compagnia_sharing.prenotazione as P
ON U.CodUtente = P.PrCodUtente;

CREATE TEMPORARY TABLE compagnia_sharing.NomiClienti2
SELECT Nome, Cognome, Email, Data as DataPrenotazione
FROM compagnia_sharing.NomiClienti
WHERE Data < '2020-06-01'; -- Nell'ultimo mese

CREATE TEMPORARY TABLE compagnia_sharing.NomiClienti3
SELECT Nome, Cognome, Email, Data as DataPrenotazione
FROM compagnia_sharing.NomiClienti
WHERE Data IS NULL;

SELECT * 
FROM compagnia_sharing.NomiClienti2
UNION ALL
SELECT * 
FROM compagnia_sharing.NomiClienti3;



-- ###########################################################################
-- # 7. FINDING CUSTOMERS WHO USED MORE THAN ONE TYPE OF TRANSPORTATION MODE #
-- ###########################################################################

CREATE TEMPORARY TABLE compagnia_sharing.UtenteTipologia
SELECT *
FROM compagnia_sharing.mezzitrasporto as M
LEFT JOIN compagnia_sharing.utente as U
ON M.MCodUtente = U.CodUtente;

-- monopattino
CREATE TEMPORARY TABLE compagnia_sharing.UtenteTipologia2
SELECT *
FROM compagnia_sharing.localita as L
LEFT JOIN compagnia_sharing.monopattino as M
ON L.LCodUtente = M.MoCodUtente;

-- auto
CREATE TEMPORARY TABLE compagnia_sharing.UtenteTipologia3
SELECT *
FROM compagnia_sharing.localita as L
LEFT JOIN compagnia_sharing.auto as A
ON L.LCodUtente = A.ACodUtente;

-- scooter
CREATE TEMPORARY TABLE compagnia_sharing.UtenteTipologia4
SELECT *
FROM compagnia_sharing.localita as L
LEFT JOIN compagnia_sharing.scooter as S
ON L.LCodUtente = S.ScCodUtente;

CREATE TEMPORARY TABLE compagnia_sharing.UtenteTipologiaPR
SELECT *
FROM compagnia_sharing.UtenteTipologia2
WHERE Type_M is not NULL
UNION ALL
SELECT *
FROM compagnia_sharing.UtenteTipologia3
WHERE Type_A is not NULL
UNION ALL
SELECT *
FROM compagnia_sharing.UtenteTipologia4
WHERE Type_S is not NULL;

CREATE TEMPORARY TABLE compagnia_sharing.Table1
SELECT LCodUtente as CodUtente1, Type_M as Tipo1
FROM compagnia_sharing.UtenteTipologiaPR;

CREATE TEMPORARY TABLE compagnia_sharing.Table2
SELECT LCodUtente as CodUtente2, Type_M as Tipo2
FROM compagnia_sharing.UtenteTipologiaPR;
        
CREATE TEMPORARY TABLE compagnia_sharing.Table3
SELECT * 
FROM compagnia_sharing.Table1
JOIN compagnia_sharing.Table2
ON Table1.CodUtente1 = Table2.CodUtente2 AND Table1.Tipo1 <> Table2.Tipo2;

SELECT CodUtente1 as CodUtente, Tipo1 as Tipo
FROM compagnia_sharing.Table3;

-- L'utente con il Codice numero 1 ha utilizzato due diversi mezzi: l'auto e il monopattino


-- ##########################################################
-- # 8. FINDING CITIES WITH USE OF NO ECO-FRIENDLY VEHICLES #
-- ##########################################################

CREATE TEMPORARY TABLE compagnia_sharing.MezziEc
SELECT Citta, Type_M as Tipo, Modello, Anno, MoKm as Km
FROM compagnia_sharing.UtenteTipologia2
WHERE Type_M is not NULL

-- #Torino rispetto a Roma, ha meno utilizzi di mezzi ecologici. Ma entrambe ne fanno utilizzo
-- ## rispetto ad altre città come Milano e Bologna (non sono presenti nella tabella degli utilizzi)




