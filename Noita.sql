CREATE TABLE Noita
(Game_seed NUMBER(10),
Health NUMBER(3) NOT NULL,
Status VARCHAR2(10),
    PRIMARY KEY(Game_seed)
);
INSERT INTO Noita
VALUES("1081678920", "125", "none");
INSERT INTO Noita
VALUES("6927562971", "87", "fire");
INSERT INTO Noita
VALUES("8352619836", "500", "none");
INSERT INTO Noita
VALUES("8390765108", "349", "none");
INSERT INTO Noita
VALUES("1065836792", "255", "none");



CREATE TABLE Wand
(Wand_ID NUMBER(10),
Game_seed NUMBER(10),
Shuffle BOOLEAN,
#_Slots NUMBER(2),
Max_mana NUMBER(4),
Mana_recharge_speed NUMBER(4),
Recharge_speed NUMBER(3, 2),
Spell_id number(5),
    PRIMARY KEY(Wand_ID),
    FOREIGN KEY(Game_seed) REFERENCES Noita(Game_seed),
    FOREIGN KEY(Spell_id) REFERENCES Spell_item(Spell_id)
);
INSERT INTO Wand
VALUES("3820785617","1081678920", "1", "7", "330", "650", "2.82", 83754);
INSERT INTO Wand
VALUES("1092873657", "6927562971", "0", "5", "700", "200", "0.92", "29832");
INSERT INTO Wand
VALUES();
INSERT INTO Wand
VALUES();
INSERT INTO Wand
VALUES();

CREATE TABLE Spell_item
(
Spell_id NUMBER(10),
    PRIMARY KEY(Spell_id),
    FOREIGN KEY(Spell_name) REFERENCES Spells(Spell_name)
);
INSERT INTO Spell_item
VALUES();
INSERT INTO Spell_item
VALUES();
INSERT INTO Spell_item
VALUES();
INSERT INTO Spell_item
VALUES();
INSERT INTO Spell_item
VALUES();

CREATE TABLE Spells
(Spell_name VARCHAR2(15),
Damage NUMBER(3),
Mana_cost NUMBER(3),
Spread_effect NUMBER(4,2),
Recharge_effect NUMBER(3, 2),
    PRIMARY KEY(Spell_name)
);
INSERT INTO Spells
VALUES();
INSERT INTO Spells
VALUES();
INSERT INTO Spells
VALUES();
INSERT INTO Spells
VALUES();
INSERT INTO Spells
VALUES();