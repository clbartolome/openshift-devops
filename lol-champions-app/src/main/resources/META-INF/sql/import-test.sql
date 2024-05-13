-- Import Script for testing and local dev

CREATE TABLE IF NOT EXISTS champion ( 
  id serial PRIMARY KEY, 
  name VARCHAR (50), 
  title VARCHAR ( 255 ),
  position VARCHAR ( 255 ));

INSERT INTO champion(id, name, title, position ) VALUES (1, 'Azir', 'THE EMPEROR OF THE SANDS', 'Mage');
INSERT INTO champion(id, name, title, position ) VALUES (2, 'Heimerdinger', 'THE REVERED INVENTOR', 'Mage');

ALTER SEQUENCE IF EXISTS hibernate_sequence RESTART WITH 3;