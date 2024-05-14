SELECT 
  p.provincia_nombre,
  p.nacimientos_cantidad,
  p.departamento_nombre,
  p.anio AS año
FROM 
  nacimientos p
WHERE 
  (p.provincia_nombre, p.nacimientos_cantidad) IN (
    SELECT 
      provincia_nombre,
      MAX(nacimientos_cantidad)
    FROM 
      nacimientos
    GROUP BY 
      provincia_nombre
  )
ORDER BY 
  p.nacimientos_cantidad DESC;






