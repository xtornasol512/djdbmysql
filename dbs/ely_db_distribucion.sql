BEGIN;
CREATE TABLE `distribucion_estacionprimaria` (
    `id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `nombre` varchar(50) NOT NULL UNIQUE,
    `num_transformadores` integer NOT NULL
)
;
CREATE TABLE `distribucion_energiaproducidadiaria` (
    `id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `cantidad` double precision NOT NULL,
    `fecha_entrega` datetime NOT NULL,
    `estacion_primaria_id` integer NOT NULL,
    `productor_id` integer NOT NULL
)
;
ALTER TABLE `distribucion_energiaproducidadiaria` ADD CONSTRAINT `productor_id_refs_id_396f1642` FOREIGN KEY (`productor_id`) REFERENCES `energia_productor` (`id`);
ALTER TABLE `distribucion_energiaproducidadiaria` ADD CONSTRAINT `estacion_primaria_id_refs_id_d0826846` FOREIGN KEY (`estacion_primaria_id`) REFERENCES `distribucion_estacionprimaria` (`id`);
CREATE TABLE `distribucion_reddistribucion` (
    `id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `numero_red` integer NOT NULL,
    `cabezera_id` integer NOT NULL
)
;
ALTER TABLE `distribucion_reddistribucion` ADD CONSTRAINT `cabezera_id_refs_id_56e85099` FOREIGN KEY (`cabezera_id`) REFERENCES `distribucion_estacionprimaria` (`id`);
CREATE TABLE `distribucion_companiaelectrica_redes_distribucion_propietarias` (
    `id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `companiaelectrica_id` integer NOT NULL,
    `reddistribucion_id` integer NOT NULL,
    UNIQUE (`companiaelectrica_id`, `reddistribucion_id`)
)
;
ALTER TABLE `distribucion_companiaelectrica_redes_distribucion_propietarias` ADD CONSTRAINT `reddistribucion_id_refs_id_878f5b78` FOREIGN KEY (`reddistribucion_id`) REFERENCES `distribucion_reddistribucion` (`id`);
CREATE TABLE `distribucion_companiaelectrica` (
    `id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `nombre` varchar(50) NOT NULL
)
;
ALTER TABLE `distribucion_companiaelectrica_redes_distribucion_propietarias` ADD CONSTRAINT `companiaelectrica_id_refs_id_fe5da387` FOREIGN KEY (`companiaelectrica_id`) REFERENCES `distribucion_companiaelectrica` (`id`);
CREATE TABLE `distribucion_envioenergiaextra` (
    `id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `volumen_energia` double precision NOT NULL,
    `red_enviante_id` integer NOT NULL,
    `red_receptora_id` integer NOT NULL
)
;
ALTER TABLE `distribucion_envioenergiaextra` ADD CONSTRAINT `red_enviante_id_refs_id_345ae0ac` FOREIGN KEY (`red_enviante_id`) REFERENCES `distribucion_reddistribucion` (`id`);
ALTER TABLE `distribucion_envioenergiaextra` ADD CONSTRAINT `red_receptora_id_refs_id_345ae0ac` FOREIGN KEY (`red_receptora_id`) REFERENCES `distribucion_reddistribucion` (`id`);
CREATE TABLE `distribucion_linea` (
    `id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `red_distribucion_perteneciente_id` integer NOT NULL,
    `numero_linea` varchar(10) NOT NULL
)
;
ALTER TABLE `distribucion_linea` ADD CONSTRAINT `red_distribucion_perteneciente_id_refs_id_e6e9b89a` FOREIGN KEY (`red_distribucion_perteneciente_id`) REFERENCES `distribucion_reddistribucion` (`id`);
CREATE TABLE `distribucion_subestacion` (
    `id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `linea_abastecimiento_id` integer NOT NULL
)
;
ALTER TABLE `distribucion_subestacion` ADD CONSTRAINT `linea_abastecimiento_id_refs_id_ad6dd0be` FOREIGN KEY (`linea_abastecimiento_id`) REFERENCES `distribucion_linea` (`id`);
CREATE TABLE `distribucion_zonaservicio_subestacion_distribuidora` (
    `id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `zonaservicio_id` integer NOT NULL,
    `subestacion_id` integer NOT NULL,
    UNIQUE (`zonaservicio_id`, `subestacion_id`)
)
;
ALTER TABLE `distribucion_zonaservicio_subestacion_distribuidora` ADD CONSTRAINT `subestacion_id_refs_id_927f6dbb` FOREIGN KEY (`subestacion_id`) REFERENCES `distribucion_subestacion` (`id`);
CREATE TABLE `distribucion_zonaservicio` (
    `id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `consumo_promedio` double precision NOT NULL,
    `consumidores_particulares` integer NOT NULL,
    `consumidores_empresas` integer NOT NULL,
    `consumidores_instituciones` integer NOT NULL
)
;
ALTER TABLE `distribucion_zonaservicio_subestacion_distribuidora` ADD CONSTRAINT `zonaservicio_id_refs_id_23c49dae` FOREIGN KEY (`zonaservicio_id`) REFERENCES `distribucion_zonaservicio` (`id`);
CREATE TABLE `distribucion_provincia` (
    `id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `codigo` varchar(10) NOT NULL,
    `nombre` varchar(50) NOT NULL,
    `zona_servicio_id` integer NOT NULL
)
;
ALTER TABLE `distribucion_provincia` ADD CONSTRAINT `zona_servicio_id_refs_id_f745d7ba` FOREIGN KEY (`zona_servicio_id`) REFERENCES `distribucion_zonaservicio` (`id`);

COMMIT;
