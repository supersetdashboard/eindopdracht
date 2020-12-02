CREATE SCHEMA myschema
CREATE TABLE myschema.RDW
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


INSERT INTO myschema.RDW(id, Kenteken, Merk, Variant, Uitvoering, Kleur, Plaats_chassisnummer, Cilinderinhoud, Aantal_cilinders, Brandstof) VALUES
 (1, 'RP973S','Volkswagen','Polo','Sedan','Zwart','rechts',1896,4,'Diesel'),
 (2, '30BDKN','Volkswagen','Golf','Sedan','Zwart','rechts',1896,4,'Diesel'),
 (3, 'ZN979D','Volkswagen','Tiguan','Sedan','Zwart','rechts',1896,4,'Diesel'),
 (4, 'HF527P','Tesla','Polo','Hatchback','Zwart','links',1896,4,'Diesel'),
 (5, 'KR235D','Tesla','Polo','Hatchback','Zwart','rechts',1896,4,'Diesel'),
 (6, 'GX088Z','Mercedes','Polo','SUV','Groen','rechts',1896,4,'Diesel'),
 (7, 'J889TF','Audi','Polo','SUV','Zwart','rechts',1896,4,'Diesel'),
 (8, 'K507DF','Peugeot','Polo','SUV','Zilver','rechts',1896,4,'Diesel'),
 (9, '4TLB29','Peugeot','Polo','Sedan','Rood','rechts',1896,4,'Diesel'),
 (10, 'GS372S','Peugeot','Polo','Sedan','','rechts',1896,4,'Diesel'),
 (11, 'KK290J','Peugeot','Polo','Sedan','Rood','rechts',1896,4,'Benzine'),
 (12, 'H2O3JZ','Renault','Polo','Sedan','Zwart','rechts',1896,4,'Diesel'),
 (13, '46TSN3','Renault','Polo','Sedan','Zwart','links',1896,4,'Diesel'),
 (14, 'XX048H','BMW','Polo','Sedan','Wit','rechts',1896,4,'Diesel'),
 (15, '49KKD7','BMW','Polo','Sedan','Wit','rechts',1896,4,'Diesel'),
 (16, 'RD630D','BMW','Polo','Sedan','Grijs','rechts',1896,4,'Benzine'),
 (17, '83JXG5','BMW','Polo','Sedan','Groen','rechts',1896,4,'Diesel'),
 (18, 'J409JB','BMW','Polo','Sedan','Zwart','rechts',1896,4,'Electrisch'),
 (19, 'TB220Z','Ford','Polo','Sedan','Oranje','rechts',1896,4,'Benzine'),
 (20, '60ZGNZ','Ford','Polo','Sedan','Zwart','rechts',1896,4,'Diesel'),
 (21, 'J748KV','Ford','Polo','Sedan','Geel','rechts',1896,4,'Diesel'),
 (22, 'K023DV','Lexus','Polo','Sedan','Zwart','rechts',1896,4,'Diesel'),
 (23, 'ZF883S','Alfa Romeo','Polo','Sedan','Zwart','rechts',1896,4,'Diesel'),
 (24, 'V415LJ','Volvo','Polo','Sedan','Zwart','rechts',1896,4,'Diesel'),
 (25, 'RG575R','Volvo','Polo','Sedan','Grijs','rechts',1896,4,'Electrisch'),
 (26, 'ZN274F','Volvo','Polo','Sedan','Blauw','rechts',1896,4,'Diesel'),
 (27, '8ZNR97','Mazda','Polo','Sedan','Zwart','rechts',1896,4,'Electrisch'),
 (28, '59HFNX','Jeep','Polo','Sedan','Zwart','rechts',1896,4,'Diesel'),
 (29, 'JX033T','Fiat','Polo','Sedan','Blauw','rechts',1896,4,'Diesel'),
 (30, '60KPH8','Fiat','Polo','Sedan','Zwart','rechts',1896,4,'Electrisch');

 CREATE TABLE myschema.dashboard_table

