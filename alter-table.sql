ALTER TABLE animals
ADD location VARCHAR(255);


INSERT INTO animals ( name, type, age, location ) 
VALUES ('Martha', 'lion', 22, 'zoo'), ('Jim', 'moose', 14, 'woods'), ('Misty', 'snake', 20, 'africa')



ALTER TABLE animals
ALTER Column species type varchar(255);