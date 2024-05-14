SELECT 
    id_pub,
    anio,
    mes,
    cuenca,
    precio_gnc,
    indice_tiempo
FROM precios_gas
ORDER BY precio_gnc DESC
LIMIT 10;
