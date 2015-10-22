CREATE TRIGGER agecheck BEFORE INSERT ON people FOR EACH ROW IF NEW.age < 0 THEN SET NEW.age = 0; END IF;


DROP TRIGGER IF EXISTS `deleteVideo`;
DELIMITER //
CREATE TRIGGER `deleteVideo` AFTER DELETE ON `Video`
 FOR EACH ROW begin
 DELETE FROM relVideoCategory WHERE relVideoCategory.idVideo = old.idVideo;
        DELETE FROM relVideoActor WHERE relVideoActor.idVideo = old.idVideo;
END
//
DELIMITER ;

DELIMITER
CREATE TRIGGER consumoMedio AFTER INSERT ON `distribucion_zonaservicio`
    FOR EACH ROW BEGIN
        UPDATE distribucion_zonaservicio SET consumo_promedio = (NEW.consumidores_particulares + NEW.consumidores_empresas + NEW.consumidores_instituciones) / 3 WHERE id = NEW.id;

    END;

DELIMITER;



UPDATE distribucion_zonaservicio SET consumo_promedio = (NEW.consumidores_instituciones + NEW.consumidores_empresas + NEW.consumidores_particulares) / 3 WHERE id = NEW.id;


CREATE TRIGGER fechaActual BEFORE INSERT ON energia_compra_de_plutonio FOR EACH ROW SET NEW.fecha_entrega = NOW()

CREATE TRIGGER consMedio BEFORE INSERT ON distribucion_zonaservicio FOR EACH ROW SET NEW.consumoMedio = NEW.consumidores_particulares + NEW.consumidores_empresas + NEW.consumidores_instituciones;
CREATE TRIGGER consMedio_zonaservicio BEFORE INSERT ON distribucion_zonaservicio FOR EACH ROW SET NEW.consumo_promedio = (NEW.consumidores_particulares + NEW.consumidores_empresas + NEW.consumidores_instituciones) / 3;