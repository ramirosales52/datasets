CREATE DATABASE gas_natural;
\c gas_natural

CREATE TABLE precios_gas (
  id_pub SERIAL PRIMARY KEY,
  anio INTEGER,
  mes INTEGER,
  cuenca VARCHAR(100),
  contrato VARCHAR(50),
  precio_distribuidora NUMERIC(10, 2),
  precio_gnc NUMERIC(10, 2),
  precio_usina NUMERIC(10, 2),
  precio_industria NUMERIC(10, 2),
  precio_otros NUMERIC(10, 2),
  precio_ppp NUMERIC(10, 2),
  precio_expo NUMERIC(10, 2),
  indice_tiempo VARCHAR(50)
);

COPY precios_gas FROM '/home/gas/precios-de-gas-natural-.csv'
DELIMITER ',' CSV HEADER;

