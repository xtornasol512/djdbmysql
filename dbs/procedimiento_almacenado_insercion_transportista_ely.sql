-- 
-- Este Procedimiento almacenado busca crea un insert en energia_transportista
-- y nos muestra todos los trasportistas al final
--

DELIMITER //
CREATE PROCEDURE pa_transportista_insert(
  nuevo_nombre VARCHAR(50),
  nuevo_direccion VARCHAR(100)

)
BEGIN
INSERT INTO energia_transportista(
  nombre,
  direccion
)
VALUES(
  nuevo_nombre,
  nuevo_direccion
);

SELECT
  *
FROM
  energia_transportista;

END

//
DELIMITER ;




--CALL para llamar el insert
CALL pa_transportista_insert('ELY','Tehuacan,Puebla');