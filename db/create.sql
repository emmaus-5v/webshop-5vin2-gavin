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
  merk_id INTEGER
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

--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price, type_id, merk_id) values ('Volkswagen Golf', 'German besteller', '816905633-0', 34090.0, 3, 4);
insert into products (name, description, code, price, type_id, merk_id) values ('Ford Model T', 'American bestseller.', '077030122-3', 24200.0, 1, 2);
insert into products (name, description, code, price, type_id, merk_id) values ('Renault Clio', 'French bestseller', '54355232-0', 18569.0, 4, 5);
insert into products (name, description, code, price, type_id, merk_id) values ('Toyota Corolla', 'Japanese bestseller.', '693155505-7', 27395.0, 6, 5);
insert into products (name, description, code, price, type_id, merk_id) values ('Mini', 'British bestseller.', '686928463-6', 27395.0, 2, 3);
insert into products (name, description, code, price, type_id, merk_id) values ('Ford Falcon', 'Australian bestseller.', '492662523-7', 21900.0, 3, 2);
insert into products (name, description, code, price, type_id, merk_id) values ('Ferrari 360', 'Over 17,000 coupés and convertibles.', '87548758-7', 85000.0, 3, 7);
insert into products (name, description, code, price, type_id, merk_id) values ('Mercedes-Benz C-Class', '6,900,000 to November 2006.', '23849243-2', 57064.0, 5, 8);
insert into products (name, description, code, price, type_id, merk_id) values ('Smart Fortwo', 'Over 1,500,000 by mid-2013.', '234579325-6', 23716.0, 3, 9);
insert into products (name, description, code, price, type_id, merk_id) values ('Opel Corsa', 'Over 18,000,000 sold worldwide in 25 years and in 4 generations. 10 million of them were sold only in Europe.', '27345923-3', 18600.0, 4, 10);
insert into products (name, description, code, price, type_id, merk_id) values ('Peugeot 206', 'Approximately 10,000,000 to 2018 in a single generation.', '789234895-3', 7000.0, 3, 11);
insert into products (name, description, code, price, type_id, merk_id) values ('Honda Civic', 'Over 16,500,000 to May 2006.', '812490272-3', 27300.0, 5, 12);
insert into products (name, description, code, price, type_id, merk_id) values ('Jaguar XJ', '800,000 up to 2005.', '78234587-5', 90000.0, 2, 13);
insert into products (name, description, code, price, type_id, merk_id) values ('Porsche 911', '1,000,000 produced up to 2017.', '28734872-2', 155141, 3, 14);
insert into products (name, description, code, price, type_id, merk_id) values ('Tesla Model 3', '1,000,000 by June 2021.', '32847823-5', 49980.0, 1, 15);
insert into products (name, description, code, price, type_id, merk_id) values ('Saturn S-Series', 'Approximately 2,210,000 not counting 2002.', '32847823-5', 9987.0, 2, 16);

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