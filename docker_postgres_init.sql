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
    Code VARCHAR ( 50 ) NOT NULL,
    Jaartal bigint NOT NULL,
    Schade_bedrag bigint NOT NULL,
    Schade_type VARCHAR ( 50 ) NOT NULL,
    Klant_Code VARCHAR ( 50 ) NOT NULL,
    CONSTRAINT RDW_pkey PRIMARY KEY (id)
);


CREATE TABLE myschema.userAccess
(
 id bigint NOT NULL,
 Merk VARCHAR ( 50 ) NOT NULL
);


INSERT INTO myschema.RDW(id, Kenteken, Merk, Variant, Uitvoering, Kleur, Plaats_chassisnummer, Cilinderinhoud, Aantal_cilinders, Brandstof, Code, Jaartal, Schade_bedrag, Schade_type, Klant_Code) VALUES
 (1, 'RP973S','Volkswagen','Polo','Sedan','Zwart','rechts',1896,4,'Diesel','NL-DR',2020,2000,'glas',1),
 (2, '30BDKN','Volkswagen','Golf','Sedan','Zwart','rechts',1896,4,'Diesel','NL-DR',2020,200,'glas',1),
 (3, 'ZN979D','Volkswagen','Tiguan','Sedan','Zwart','rechts',1896,4,'Diesel','NL-DR',2020,1085,'carrosserie',1),
 (4, 'HF527P','Tesla','Polo','Hatchback','Zwart','links',1896,4,'Electrisch','NL-DR',2019,87,'glas',0),
 (5, 'KR235D','Tesla','Polo','Hatchback','Zwart','rechts',1896,4,'Electrisch','NL-DR',2019,8000,'carrosserie',0),
 (6, 'GX088Z','Mercedes','Polo','SUV','Groen','rechts',1896,4,'Diesel','NL-UT',2019,239,'glas',0),
 (7, 'J889TF','Audi','Polo','SUV','Zwart','rechts',1896,4,'Diesel','NL-UT',2018,893,'carrosserie',1),
 (8, 'K507DF','Peugeot','Polo','SUV','Zilver','rechts',1896,4,'Diesel','NL-UT',2017,563,'carrosserie',1),
 (9, '4TLB29','Peugeot','Polo','Sedan','Rood','rechts',1896,4,'Diesel','NL-UT',2017,761,'carrosserie',1),
 (10, 'GS372S','Peugeot','Polo','Sedan','','rechts',1896,4,'Diesel','NL-UT',2017,14896,'carrosserie',1),
 (11, 'KK290J','Peugeot','Polo','Sedan','Rood','rechts',1896,4,'Benzine','NL-UT',2020,230,'glas',1),
 (12, 'H2O3JZ','Renault','Polo','Sedan','Zwart','rechts',1896,4,'Diesel','NL-UT',2020,600,'carrosserie',0),
 (13, '46TSN3','Renault','Polo','Sedan','Zwart','links',1896,4,'Diesel','NL-UT',2018,46,'glas',0),
 (14, 'XX048H','BMW','Polo','Sedan','Wit','rechts',1896,4,'Diesel','NL-UT',2018,347,'carrosserie',1),
 (15, '49KKD7','BMW','Polo','Sedan','Wit','rechts',1896,4,'Diesel','NL-UT',2019,220,'glas',1),
 (16, 'RD630D','BMW','Polo','Sedan','Grijs','rechts',1896,4,'Benzine','NL-UT',2019,126,'glas',1),
 (17, '83JXG5','BMW','Polo','Sedan','Groen','rechts',1896,4,'Diesel','NL-UT',2020,300,'carrosserie',1),
 (18, 'J409JB','Renault','Polo','Sedan','Zwart','rechts',1896,4,'Electrisch','NL-UT',2018,210,'carrosserie',0),
 (19, 'TB220Z','Ford','Polo','Sedan','Oranje','rechts',1896,4,'Benzine','NL-UT',2017,3400,'carrosserie',0),
 (20, '60ZGNZ','Ford','Polo','Sedan','Zwart','rechts',1896,4,'Diesel','NL-NH',2016,5600,'carrosserie',0),
 (21, 'J748KV','Ford','Polo','Sedan','Geel','rechts',1896,4,'Diesel','NL-NH',2016,124,'glas',0),
 (22, 'K023DV','Lexus','Polo','Sedan','Zwart','rechts',1896,4,'Diesel','NL-OV',2016,234,'carrosserie',1),
 (23, 'ZF883S','Alfa Romeo','Polo','Sedan','Zwart','rechts',1896,4,'Diesel','NL-ZE',2018,362,'carrosserie',1),
 (24, 'V415LJ','Volvo','Polo','Sedan','Zwart','rechts',1896,4,'Diesel','NL-OV',2020,129,'glas',1),
 (25, 'RG575R','Volvo','Polo','Sedan','Grijs','rechts',1896,4,'Electrisch','NL-FR',2019,134,'glas',1),
 (26, 'ZN274F','Volvo','Polo','Sedan','Blauw','rechts',1896,4,'Diesel','NL-GE',2018,78,'glas',1),
 (27, '8ZNR97','Mazda','Polo','Sedan','Zwart','rechts',1896,4,'Electrisch','NL-GR',2019,456,'carrosserie',1),
 (28, '59HFNX','Jeep','Polo','Sedan','Zwart','rechts',1896,4,'Benzine','NL-LI',2016,234,'glas',1),
 (29, 'JX033T','Fiat','Polo','Sedan','Blauw','rechts',1896,4,'Diesel','NL-ZH',2017,456,'carrosserie',1),
 (30, '60KPH8','Lexus','Polo','Sedan','Zwart','rechts',1896,4,'Benzine','NL-NH',2020,2000,'glas',1),
 (31, 'J890VV','Fiat','Polo','Sedan','Groen','rechts',1896,4,'Electrisch','NL-NH',2020,180,'carrosserie',1),
 (32, 'ZV720P','Lexus','Polo','Sedan','Zwart','rechts',1896,4,'Benzine','NL-NH',2020,180,'glas',1),
 (33, 'G698RL','Fiat','Polo','Sedan','Groen','rechts',1896,4,'Electrisch','NL-NH',2020,180,'glas',1),
 (34, 'XVI85X','Lexus','Polo','Sedan','Wit','rechts',1896,4,'Benzine','NL-NH',2020,180,'carrosserie',1),
 (35, '59RXV4','Renault','Polo','Sedan','Zwart','rechts',1896,4,'Electrisch','NL-NH',2020,180,'carrosserie',0),
 (36, 'H367VF','Renault','Polo','Sedan','Groen','rechts',1896,4,'Electrisch','NL-ZH',2020,180,'carrosserie',0),
 (37, 'GN884H','Ford','Polo','Sedan','Zwart','rechts',1896,4,'Benzine','NL-OV',2020,180,'glas',0),
 (38, '77PKV9','Tesla','Polo','Sedan','Wit','rechts',1896,4,'Electrisch','NL-OV',2020,180,'carrosserie',0),
 (39, 'GZ882X','Mercedes','Polo','Sedan','Blauw','rechts',1896,4,'Benzine','NL-UT',2020,180,'glas',0),
 (40, '8XKK08','Mercedes','Polo','Sedan','Geel','rechts',1896,4,'Benzine','NL-UT',2020,180,'carrosserie',0),
 (41, 'HD783X','Mercedes','Polo','Sedan','Zwart','rechts',1896,4,'Benzine','NL-LI',2020,2000,'glas',0),
 (42, 'ZD783G','Tesla','Polo','Sedan','Zwart','rechts',1896,4,'Electrisch','NL-LI',2020,180,'carrosserie',0),
 (43, 'HR577L','Alfa Romeo','Polo','Sedan','Rood','rechts',1896,4,'Benzine','NL-LI',2020,180,'carrosserie',1),
 (44, 'J839XZ','BMW','Polo','Sedan','Blauw','rechts',1896,4,'Benzine','NL-FR',2020,180,'glas',1),
 (45, 'ZJ098J','Renault','Polo','Sedan','Wit','rechts',1896,4,'Electrisch','NL-FR',2020,180,'carrosserie',0),
 (46, '4XTV86','Renault','Polo','Sedan','Rood','rechts',1896,4,'Electrisch','NL-FR',2020,1400,'glas',0),
 (47, 'XD737B','Renault','Polo','Sedan','Geel','rechts',1896,4,'Electrisch','NL-GR',2020,180,'glas',0),
 (48, 'SN290H','BMW','Polo','Sedan','Zilver','rechts',1896,4,'Benzine','NL-GR',2020,180,'carrosserie',1),
 (49, 'SL672Z','Alfa Romeo','Polo','Sedan','Groen','rechts',1896,4,'Electrisch','NL-GR',2020,180,'carrosserie',1),
 (50, 'VL780D','Volvo','Polo','Sedan','Wit','rechts',1896,4,'Benzine','NL-NB',2020,180,'glas',1),
 (51, '37RHT9','Tesla','Polo','Sedan','Zwart','rechts',1896,4,'Electrisch','NL-NB',2020,180,'glas',0),
 (52, 'ZP209L','Fiat','Polo','Sedan','Rood','rechts',1896,4,'Electrisch','NL-NB',2020,180,'glas',1),
 (53, '98ZPZL','Ford','Polo','Sedan','Zilver','rechts',1896,4,'Benzine','NL-ZE',2020,180,'carrosserie',0),
 (54, '70SHTN','BMW','Polo','Sedan','Rood','rechts',1896,4,'Benzine','NL-ZE',2020,180,'carrosserie',1),
 (55, '3XKH49','Volkswagen','Polo','Sedan','Wit','rechts',1896,4,'Electrisch','NL-ZE',2020,7000,'carrosserie',1),
 (56, '99LNN6','Volkswagen','Polo','Sedan','Rood','rechts',1896,4,'Benzine','NL-ZE',2020,180,'carrosserie',1),
 (57, '22HLL3','Volkswagen','Polo','Sedan','Blauw','rechts',1896,4,'Benzine','NL-ZH',2020,3000,'carrosserie',1);


INSERT INTO myschema.userAccess(id, Merk) VALUES
 (2,'Mercedes'),
 (2,'Renault');

 CREATE TABLE myschema.dashboard_table