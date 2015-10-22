-- 
-- Este Procedimiento almacenado busca una provincia con la primera letra que le pasemos y tambien devuelve la cantidad
--
DELIMITER //

CREATE PROCEDURE pa_provincia_buscar(
  IN letra CHAR(2),
  OUT num_provincias INT
)
BEGIN

SELECT
  *
FROM
  distribucion_provincia
WHERE
  nombre LIKE letra;
  
SELECT
  COUNT(*)
INTO
  num_provincias
FROM
  distribucion_provincia
WHERE
  nombre LIKE letra;
  
END

//
DELIMITER ;

-- 
-- Se llama con la funcion Call de la siguiente manera
-- h% significa que buscara todas las provincias que comiencen con h y @cantidad es la variable que guardara cuantas ciudades son
--
CALL pa_provincia_buscar('m%', @cantidad);
