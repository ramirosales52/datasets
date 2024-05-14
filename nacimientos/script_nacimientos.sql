DROP DATABASE IF EXISTS nacimientos;
CREATE DATABASE nacimientos;
\c nacimientos

CREATE TABLE nacimientos (
    provincia_id FLOAT,
    provincia_nombre VARCHAR(255),
    departamento_id FLOAT,
    departamento_nombre VARCHAR(255),
    anio INT,
    nacimientos_cantidad INT,
    poblacion_total INT
);


COPY nacimientos FROM '/home/nacimientos/nacimientos_2012_2022_limpio.csv'
DELIMITER ',' CSV HEADER;


