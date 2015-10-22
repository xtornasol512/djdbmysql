BEGIN;
CREATE TABLE `energia_compra_de_plutonio` (`id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY, `cantidad` double precision NOT NULL, `fecha_entrega` datetime NOT NULL);
CREATE TABLE `energia_hidroelectrica` (`id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY, `ocupacion` varchar(50) NOT NULL, `capacidad_maxima` double precision NOT NULL, `num_turbinas` integer NOT NULL);
CREATE TABLE `energia_nuclear` (`id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY, `plutonio` double precision NOT NULL, `num_reactores` integer NOT NULL, `num_residuos` integer NOT NULL);
CREATE TABLE `energia_productor` (`id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY, `nombre` varchar(50) NOT NULL UNIQUE, `produccion_media` double precision NOT NULL, `produccion_maxima` double precision NOT NULL, `f_entrada` datetime NOT NULL);
CREATE TABLE `energia_solar` (`id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY, `tipo_energia` varchar(20) NOT NULL, `num_paneles_solares` integer NOT NULL, `media_anual_hrs_sol` integer NOT NULL, `productor_id` integer NOT NULL);
CREATE TABLE `energia_suministrador` (`id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY, `nombre` varchar(50) NOT NULL, `pais` varchar(50) NOT NULL);
CREATE TABLE `energia_suministrador_plantas_nucleares` (`id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY, `suministrador_id` integer NOT NULL, `nuclear_id` integer NOT NULL, UNIQUE (`suministrador_id`, `nuclear_id`));
CREATE TABLE `energia_termica` (`id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY, `num_hornos` integer NOT NULL, `volumen_carbon_consumido` double precision NOT NULL, `productor_id` integer NOT NULL);
CREATE TABLE `energia_transportista` (`id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY, `nombre` varchar(50) NOT NULL, `direccion` varchar(100) NOT NULL);
ALTER TABLE `energia_nuclear` ADD COLUMN `productor_id` integer NOT NULL;
ALTER TABLE `energia_nuclear` ALTER COLUMN `productor_id` DROP DEFAULT;
ALTER TABLE `energia_hidroelectrica` ADD COLUMN `productor_id` integer NOT NULL;
ALTER TABLE `energia_hidroelectrica` ALTER COLUMN `productor_id` DROP DEFAULT;
ALTER TABLE `energia_compra_de_plutonio` ADD COLUMN `planta_nuclear_id` integer NOT NULL;
ALTER TABLE `energia_compra_de_plutonio` ALTER COLUMN `planta_nuclear_id` DROP DEFAULT;
ALTER TABLE `energia_compra_de_plutonio` ADD COLUMN `suministrador_id` integer NOT NULL;
ALTER TABLE `energia_compra_de_plutonio` ALTER COLUMN `suministrador_id` DROP DEFAULT;
ALTER TABLE `energia_compra_de_plutonio` ADD COLUMN `transportista_id` integer NOT NULL;
ALTER TABLE `energia_compra_de_plutonio` ALTER COLUMN `transportista_id` DROP DEFAULT;
ALTER TABLE `energia_solar` ADD CONSTRAINT `energia_so_productor_id_5e6c5da4a1c5f037_fk_energia_productor_id` FOREIGN KEY (`productor_id`) REFERENCES `energia_productor` (`id`);
ALTER TABLE `energia_suministrador_plantas_nucleares` ADD CONSTRAINT `en_suministrador_id_27cabdadd47dc7d3_fk_energia_suministrador_id` FOREIGN KEY (`suministrador_id`) REFERENCES `energia_suministrador` (`id`);
ALTER TABLE `energia_suministrador_plantas_nucleares` ADD CONSTRAINT `energia_sumini_nuclear_id_7ae853ce5388d3d1_fk_energia_nuclear_id` FOREIGN KEY (`nuclear_id`) REFERENCES `energia_nuclear` (`id`);
ALTER TABLE `energia_termica` ADD CONSTRAINT `energia_te_productor_id_15e849de92744161_fk_energia_productor_id` FOREIGN KEY (`productor_id`) REFERENCES `energia_productor` (`id`);
CREATE INDEX `energia_nuclear_b6090adb` ON `energia_nuclear` (`productor_id`);
ALTER TABLE `energia_nuclear` ADD CONSTRAINT `energia_nu_productor_id_56e685477ec71164_fk_energia_productor_id` FOREIGN KEY (`productor_id`) REFERENCES `energia_productor` (`id`);
CREATE INDEX `energia_hidroelectrica_b6090adb` ON `energia_hidroelectrica` (`productor_id`);
ALTER TABLE `energia_hidroelectrica` ADD CONSTRAINT `energia_hi_productor_id_6e57af1e7af687d9_fk_energia_productor_id` FOREIGN KEY (`productor_id`) REFERENCES `energia_productor` (`id`);
CREATE INDEX `energia_compra_de_plutonio_032223ff` ON `energia_compra_de_plutonio` (`planta_nuclear_id`);
ALTER TABLE `energia_compra_de_plutonio` ADD CONSTRAINT `energia_planta_nuclear_id_3d69156e145df3f2_fk_energia_nuclear_id` FOREIGN KEY (`planta_nuclear_id`) REFERENCES `energia_nuclear` (`id`);
CREATE INDEX `energia_compra_de_plutonio_4e371469` ON `energia_compra_de_plutonio` (`suministrador_id`);
ALTER TABLE `energia_compra_de_plutonio` ADD CONSTRAINT `en_suministrador_id_3dc7e02f811b5d30_fk_energia_suministrador_id` FOREIGN KEY (`suministrador_id`) REFERENCES `energia_suministrador` (`id`);
CREATE INDEX `energia_compra_de_plutonio_ab76f6ea` ON `energia_compra_de_plutonio` (`transportista_id`);
ALTER TABLE `energia_compra_de_plutonio` ADD CONSTRAINT `en_transportista_id_733089646b318240_fk_energia_transportista_id` FOREIGN KEY (`transportista_id`) REFERENCES `energia_transportista` (`id`);

COMMIT;