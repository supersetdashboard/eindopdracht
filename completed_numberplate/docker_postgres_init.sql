CREATE TABLE RDW
(
    id bigint NOT NULL,
    Kenteken VARCHAR ( 50 ) NOT NULL,
    Merk VARCHAR ( 50 ) NOT NULL,
    Variant VARCHAR ( 50 ) NOT NULL,
    Uitvoering VARCHAR ( 50 ) NOT NULL,
    Kleur VARCHAR ( 50 ) NOT NULL,
    Plaats_chassisnummer VARCHAR ( 50 ) NOT NULL,
    Cilinderinhoud bigint NOT NULL,
    Aantal_cilinders bigint NOT NULL,
    Brandstof VARCHAR ( 50 ) NOT NULL,
    CONSTRAINT RDW_pkey PRIMARY KEY (id)
);


INSERT INTO RDW(id, Kenteken, Merk, Variant, Uitvoering, Kleur, Plaats_chassisnummer, Cilinderinhoud, Aantal_cilinders, Brandstof) VALUES
 (1, '01gbb1','Volkswagen','Polo','Sedan','Zwart','rechts',1896,4,'Diesel'),
 (2, '05gbb1','Volkswagen','Polo','Sedan','Zwart','rechts',1896,4,'Diesel'),
 (3, '00ghob','Volkswagen','Polo','Sedan','Zwart','rechts',1896,4,'Diesel');