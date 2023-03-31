-- para crear la base de datos
CREATE DATABASE desafio_Juan_Boscan_124;

-- para seleccionarla
\C desafio_Juan_Boscan_124;

-- para crear la tabla
CREATE TABLE clients(
    id SERIAL PRIMARY KEY,
    email VARCHAR(50),
    name VARCHAR,
    phone VARCHAR(16),
    company VARCHAR(50),
    priority SMALLINT NOT NULL CHECK (priority >=1 AND <= 10)
);

-- para insertar los datos en la tabla 
INSERT INTO clients (email, name, phone, company, priority) VALUES ('juan@gmail.com', 'juan', '123456789', 'Microsoft', '10'),
('sandra@gmail.com', 'sandra', '123456789', 'Facebook', '9'), ('elias@gmail.com', 'elias', '123456789', 'Copyright', '8'),
('pablo@gmail.com', 'pablo', '123456789', 'Entel', '7'), ('paola@gmail.com', 'paola', '123456789', 'Karmac', '6');

-- para ordenarlos de manera descendete y limitandolos solo a 3 datos
SELECT * FROM clients ORDER BY priority DESC, id ASC LIMIT 3;

-- para seleccionar solo dos datos, ordenando que sean el de mas alta prioridad en este caso el numero (10), y el dato de la compañia 'Entel'
SELECT * FROM clients WHERE priority = 10 OR company = 'Entel'
