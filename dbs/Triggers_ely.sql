-- 
-- Este trigger calcula el promedio de consumo por  cada zona de servicio cuando se registra (Insert)
--
CREATE TRIGGER consMedio_zonaservicio BEFORE INSERT ON distribucion_zonaservicio FOR EACH ROW SET NEW.consumo_promedio = (NEW.consumidores_particulares + NEW.consumidores_empresas + NEW.consumidores_instituciones) / 3;
-- 
-- Este trigger calcula el promedio de consumo por  cada zona de servicio cuando se hace una modificacion a la tabla (update) 
--
CREATE TRIGGER consMedio_zonaservicio_update BEFORE UPDATE ON distribucion_zonaservicio FOR EACH ROW SET NEW.consumo_promedio = (NEW.consumidores_particulares + NEW.consumidores_empresas + NEW.consumidores_instituciones) / 3;
-- 
-- Este trigger usa la fecha actual de cuando se registra(INSERT) una compra de plutonio
--
CREATE TRIGGER fechaActual BEFORE INSERT ON energia_compra_de_plutonio FOR EACH ROW SET NEW.fecha_entrega = NOW()