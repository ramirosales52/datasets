SELECT 
    indice_tiempo,
    empresa,
    direccion,
    localidad,
    provincia,
    producto,
    tipohorario,
    precio,
    fecha_vigencia,
    empresabandera
FROM
    precios_nafta
WHERE
    localidad='VILLA MARIA' AND
    tipohorario='Diurno' AND
    producto='Nafta (súper) entre 92 y 95 Ron'
  
