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
  name VARCHAR(25)
);

--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price, type_id, merk_id, land_id, motor_id) values ('Volkswagen Golf', 'German besteller', '816905633-0', 34090.0, 3, 2, 1, 1, 5);
insert into products (name, description, code, price, type_id, merk_id, land_id, motor_id) values ('Ford Model T', 'American bestseller.', '077030122-3', 24200.0, 1, 5, 4, 1, 3);
insert into products (name, description, code, price, type_id, merk_id, land_id, motor_id) values ('Renault Clio', 'French bestseller', '54355232-0', 18569.0, 4, 4, 2, 1, 4);
insert into products (name, description, code, price, type_id, merk_id, land_id, motor_id) values ('Toyota Corolla', 'Japanese bestseller.', '693155505-7', 27395.0, 6, 1, 6, 1, 5);
insert into products (name, description, code, price, type_id, merk_id, land_id, motor_id) values ('Mini', 'British bestseller.', '686928463-6', 27395.0, 2, 6, 5, 1, 3);
insert into products (name, description, code, price, type_id, merk_id, land_id, motor_id) values ('Ford Falcon', 'Australian bestseller.', '492662523-7', 21900.0, 3, 4, 4, 1, 4);
insert into products (name, description, code, price, type_id, merk_id, land_id, motor_id) values ('Ferrari 360', 'Over 17,000 coupés and convertibles.', '87548758-7', 85000.0, 3, 7, 3, 1, 5);
insert into products (name, description, code, price, type_id, merk_id, land_id, motor_id) values ('Mercedes-Benz C-Class', '6,900,000 to November 2006.', '23849243-2', 57064.0, 5, 8, 1, 1, 5);
insert into products (name, description, code, price, type_id, merk_id, land_id, motor_id) values ('Smart Fortwo', 'Over 1,500,000 by mid-2013.', '234579325-6', 23716.0, 3, 9, 1, 1, 3);
insert into products (name, description, code, price, type_id, merk_id, land_id, motor_id) values ('Opel Corsa', 'Over 18,000,000 sold worldwide in 25 years and in 4 generations. 10 million of them were sold only in Europe.', '27345923-3', 18600.0, 4, 10, 1, 1, 4);
insert into products (name, description, code, price, type_id, merk_id, land_id, motor_id) values ('Peugeot 206', 'Approximately 10,000,000 to 2018 in a single generation.', '789234895-3', 7000.0, 3, 11, 2, 1, 4);
insert into products (name, description, code, price, type_id, merk_id, land_id, motor_id) values ('Honda Civic', 'Over 16,500,000 to May 2006.', '812490272-3', 27300.0, 5, 12, 6, 1, 3);
insert into products (name, description, code, price, type_id, merk_id, land_id, motor_id) values ('Jaguar XJ', '800,000 up to 2005.', '78234587-5', 90000.0, 2, 13, 5, 1, 5);
insert into products (name, description, code, price, type_id, merk_id, land_id, motor_id) values ('Porsche 911', '1,000,000 produced up to 2017.', '28734872-2', 155141, 3, 14, 1, 1, 4);
insert into products (name, description, code, price, type_id, merk_id, land_id, motor_id) values ('Tesla Model 3', '1,000,000 by June 2021.', '32847823-5', 49980.0, 1, 15, 4, 4, 5);
insert into products (name, description, code, price, type_id, merk_id, land_id, motor_id) values ('Saturn S-Series', 'Approximately 2,210,000 not counting 2002.', '32847823-5', 9987.0, 2, 16, 4, 1, 3);
insert into products (name, description, code, price, type_id, merk_id, land_id, motor_id) values ('Volvo 200 Series', '2,862,573 saloon, estate and coupe models over a spell of 19 years.', '9435897-2', 8636.0, 3, 17, 7, 1, 4);
insert into products (name, description, code, price, type_id, merk_id, land_id, motor_id) values ('Lancia Ypsilon', 'over 870,000 to 2005.', '2384982-2', 16700.0, 2, 18, 3, 1, 2);
insert into products (name, description, code, price, type_id, merk_id, land_id, motor_id) values ('Eagle Talon', 'Approximately 200,000.', '8238459-2', 3123.0, 5, 19, 4, 1, 3);
insert into products (name, description, code, price, type_id, merk_id, land_id, motor_id) values ('Fiat Uno', 'Sold over six million in Western Europe before being replaced by the Punto in 1995, while production continued in South Africa, Poland and Brazil.', '23748722-2', 2150.0, 4, 20, 3, 1, 5);

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
insert into waardering (name) values ('gemiddeld');
insert into waardering (name) values ('goed');
insert into waardering (name) values ('uitstekend');
