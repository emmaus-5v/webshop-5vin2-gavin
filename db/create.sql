--
-- create tables
--

DROP TABLE IF EXISTS products; 
CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2),
  type_id INTEGER,
  merk_id INTEGER,
  land_id INTEGER,
  motor_id INTEGER,
  waardering_id INTEGER
);

DROP TABLE IF EXISTS type; 
CREATE TABLE type (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(25)
);

DROP TABLE IF EXISTS merk; 
CREATE TABLE merk (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(25)
);

DROP TABLE IF EXISTS land; 
CREATE TABLE land (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(25)
);

DROP TABLE IF EXISTS motor; 
CREATE TABLE motor (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(25)
);

DROP TABLE IF EXISTS waardering; 
CREATE TABLE waardering (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(50)
);

DROP TABLE IF EXISTS verkrijgbaar; 
CREATE TABLE verkrijgbaar (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(100)
);

DROP TABLE IF EXISTS product_verkrijgbaar; 
CREATE TABLE product_verkrijgbaar (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  product_id INTEGER,
  verkrijgbaar_id INTEGER
);

--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price, type_id, merk_id, land_id, motor_id, waardering_id) values ('Volkswagen Golf', 'Duitse bestseller.', '816905633-0', 34090.0, 3, 2, 1, 1, 5);
insert into products (name, description, code, price, type_id, merk_id, land_id, motor_id, waardering_id) values ('Ford Model T', 'Amerikaanse bestseller.', '077030122-3', 24200.0, 1, 5, 4, 1, 3);
insert into products (name, description, code, price, type_id, merk_id, land_id, motor_id, waardering_id) values ('Renault Clio', 'Franse bestseller.', '54355232-0', 18569.0, 4, 4, 2, 1, 4);
insert into products (name, description, code, price, type_id, merk_id, land_id, motor_id, waardering_id) values ('Toyota Corolla', 'Japanse bestseller.', '693155505-7', 27395.0, 6, 1, 6, 1, 5);
insert into products (name, description, code, price, type_id, merk_id, land_id, motor_id, waardering_id) values ('Mini', 'Britse bestseller.', '686928463-6', 27395.0, 2, 6, 5, 1, 3);
insert into products (name, description, code, price, type_id, merk_id, land_id, motor_id, waardering_id) values ('Ford Falcon', 'Australische bestseller.', '492662523-7', 21900.0, 3, 4, 4, 1, 4);
insert into products (name, description, code, price, type_id, merk_id, land_id, motor_id, waardering_id) values ('Ferrari 360', 'Meer dan 17,000 verkocht wereldwijd.', '87548758-7', 85000.0, 3, 7, 3, 1, 5);
insert into products (name, description, code, price, type_id, merk_id, land_id, motor_id, waardering_id) values ('Mercedes-Benz C-Class', '6,900,000 verkocht tot november 2006.', '23849243-2', 57064.0, 5, 8, 1, 1, 5);
insert into products (name, description, code, price, type_id, merk_id, land_id, motor_id, waardering_id) values ('Smart Fortwo', 'Meer dan 1,500,000 verkocht tot 2013.', '234579325-6', 23716.0, 3, 9, 1, 1, 3);
insert into products (name, description, code, price, type_id, merk_id, land_id, motor_id, waardering_id) values ('Opel Corsa', 'Meer dan 18,000,000 verkocht wereldwijd in 25 jaar.', '27345923-3', 18600.0, 4, 10, 1, 1, 4);
insert into products (name, description, code, price, type_id, merk_id, land_id, motor_id, waardering_id) values ('Peugeot 206', 'Ongeveer 10,000,000 verkocht tot 2018.', '789234895-3', 7000.0, 3, 11, 2, 1, 4);
insert into products (name, description, code, price, type_id, merk_id, land_id, motor_id, waardering_id) values ('Honda Civic', 'Meer dan 16,500,000 verkocht tot mei 2006.', '812490272-3', 27300.0, 5, 12, 6, 1, 3);
insert into products (name, description, code, price, type_id, merk_id, land_id, motor_id, waardering_id) values ('Jaguar XJ', '800,000 verkocht tot 2005.', '78234587-5', 90000.0, 2, 13, 5, 1, 5);
insert into products (name, description, code, price, type_id, merk_id, land_id, motor_id, waardering_id) values ('Porsche 911', '1,000,000 geproduceerd tot 2007.', '28734872-2', 155141, 3, 14, 1, 1, 4);
insert into products (name, description, code, price, type_id, merk_id, land_id, motor_id, waardering_id) values ('Tesla Model 3', '1,000,000 verkocht tegen mei 2017.', '32847823-5', 49980.0, 1, 15, 4, 4, 5);
insert into products (name, description, code, price, type_id, merk_id, land_id, motor_id, waardering_id) values ('Saturn S-Series', 'Ongeveer 2,210,000 verkocht', '32847823-5', 9987.0, 2, 16, 4, 1, 3);
insert into products (name, description, code, price, type_id, merk_id, land_id, motor_id, waardering_id) values ('Volvo 200 Series', '2,862,573 verkocht wereldwijd.', '9435897-2', 8636.0, 3, 17, 7, 1, 4);
insert into products (name, description, code, price, type_id, merk_id, land_id, motor_id, waardering_id) values ('Lancia Ypsilon', 'meer dan 870,000 verkocht tot 2005.', '2384982-2', 16700.0, 2, 18, 3, 1, 2);
insert into products (name, description, code, price, type_id, merk_id, land_id, motor_id, waardering_id) values ('Eagle Talon', 'Ongeveer 200,000 verkocht.', '8238459-2', 3123.0, 5, 19, 4, 1, 3);
insert into products (name, description, code, price, type_id, merk_id, land_id, motor_id, waardering_id) values ('Fiat Uno', 'Meer dan 6,000,000 verkocht in West-Europa.', '23748722-2', 2150.0, 4, 20, 3, 1, 5);

insert into type (name) values ('Hatchback');
insert into type (name) values ('Sedan');
insert into type (name) values ('Station');
insert into type (name) values ('Cabriolet');
insert into type (name) values ('Coup');
insert into type (name) values ('MVP');
insert into type (name) values ('Terreinauto');

insert into merk (name) values ('Toyota');
insert into merk (name) values ('Volkswagen');
insert into merk (name) values ('Audi');
insert into merk (name) values ('Renault');
insert into merk (name) values ('Ford');
insert into merk (name) values ('Mini');
insert into merk (name) values ('Ferrari');
insert into merk (name) values ('Mercedes-Benz');
insert into merk (name) values ('Smart');
insert into merk (name) values ('Opel');
insert into merk (name) values ('Peugeot');
insert into merk (name) values ('Honda');
insert into merk (name) values ('Jaguar');
insert into merk (name) values ('Porsche');
insert into merk (name) values ('Tesla');
insert into merk (name) values ('Saturn');
insert into merk (name) values ('Volvo');
insert into merk (name) values ('Lancia');
insert into merk (name) values ('Eagle');
insert into merk (name) values ('Fiat');

insert into land (name) values ('Duitsland');
insert into land (name) values ('Frankrijk');
insert into land (name) values ('Italië');
insert into land (name) values ('Amerika');
insert into land (name) values ('Engeland');
insert into land (name) values ('Japan');
insert into land (name) values ('Zweden');

insert into motor (name) values ('Benzine');
insert into motor (name) values ('Diesel');
insert into motor (name) values ('LPG');
insert into motor (name) values ('Elektrisch');

insert into waardering (name) values ('slecht');
insert into waardering (name) values ('matig');
insert into waardering (name) values ('prima');
insert into waardering (name) values ('goed');
insert into waardering (name) values ('perfect');

insert into verkrijgbaar (name) values ('West-Europa');
insert into verkrijgbaar (name) values ('Oost-Europa');
insert into verkrijgbaar (name) values ('Noord-Amerika');
insert into verkrijgbaar (name) values ('Zuid-Amerika');
insert into verkrijgbaar (name) values ('Noord-Afrika');
insert into verkrijgbaar (name) values ('West-Afrika');
insert into verkrijgbaar (name) values ('Oost-Afrika');
insert into verkrijgbaar (name) values ('Zuid-Afrika');
insert into verkrijgbaar (name) values ('Oost-Azië');
insert into verkrijgbaar (name) values ('Zuidoost-Azïe');
insert into verkrijgbaar (name) values ('Oceanië');

insert into product_verkrijgbaar (product_id, verkrijgbaar_id) values (1, 1);
insert into product_verkrijgbaar (product_id, verkrijgbaar_id) values (2, 1);
insert into product_verkrijgbaar (product_id, verkrijgbaar_id) values (3, 1);
insert into product_verkrijgbaar (product_id, verkrijgbaar_id) values (4, 1);
insert into product_verkrijgbaar (product_id, verkrijgbaar_id) values (5, 1);
insert into product_verkrijgbaar (product_id, verkrijgbaar_id) values (6, 1);
insert into product_verkrijgbaar (product_id, verkrijgbaar_id) values (7, 1);
insert into product_verkrijgbaar (product_id, verkrijgbaar_id) values (8, 1);
insert into product_verkrijgbaar (product_id, verkrijgbaar_id) values (9, 1);
insert into product_verkrijgbaar (product_id, verkrijgbaar_id) values (10, 1);
insert into product_verkrijgbaar (product_id, verkrijgbaar_id) values (11, 1);
insert into product_verkrijgbaar (product_id, verkrijgbaar_id) values (12, 1);
insert into product_verkrijgbaar (product_id, verkrijgbaar_id) values (13, 1);
insert into product_verkrijgbaar (product_id, verkrijgbaar_id) values (14, 1);
insert into product_verkrijgbaar (product_id, verkrijgbaar_id) values (15, 2);
insert into product_verkrijgbaar (product_id, verkrijgbaar_id) values (16, 1);
insert into product_verkrijgbaar (product_id, verkrijgbaar_id) values (17, 2);
insert into product_verkrijgbaar (product_id, verkrijgbaar_id) values (18, 1);
insert into product_verkrijgbaar (product_id, verkrijgbaar_id) values (19, 1);
insert into product_verkrijgbaar (product_id, verkrijgbaar_id) values (20, 1);
