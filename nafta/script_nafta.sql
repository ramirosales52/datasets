DROP DATABASE IF EXISTS nafta;
CREATE DATABASE nafta;
\c nafta

CREATE TABLE precios_nafta (
    indice_tiempo TEXT,
    idempresa INT,
    cuit VARCHAR(20),
    empresa VARCHAR(255),
    direccion VARCHAR(255),
    localidad VARCHAR(255),
    provincia VARCHAR(255),
    region VARCHAR(255),
    idproducto INT,
    producto VARCHAR(255),
    idtipohorario INT,
    tipohorario VARCHAR(255),
    precio TEXT,
    fecha_vigencia TEXT,
    idempresabandera INT,
    empresabandera VARCHAR(255),
    latitud TEXT,
    longitud TEXT
);


COPY precios_nafta FROM '/home/nafta/precios_en_surtidor_limpio.csv'
DELIMITER ',' CSV HEADER;
