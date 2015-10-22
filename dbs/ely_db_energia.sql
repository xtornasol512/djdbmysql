BEGIN;
CREATE TABLE `energia_productor` (
    `id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `nombre` varchar(50) NOT NULL UNIQUE,
    `produccion_media` double precision NOT NULL,
    `produccion_maxima` double precision NOT NULL,
    `f_entrada` datetime NOT NULL
)
;
CREATE TABLE `energia_hidroelectrica` (
    `id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `productor_id` integer NOT NULL,
    `ocupacion` varchar(50) NOT NULL,
    `capacidad_maxima` double precision NOT NULL,
    `num_turbinas` integer NOT NULL
)
;
ALTER TABLE `energia_hidroelectrica` ADD CONSTRAINT `productor_id_refs_id_132f6b75` FOREIGN KEY (`productor_id`) REFERENCES `energia_productor` (`id`);
CREATE TABLE `energia_solar` (
    `id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `productor_id` integer NOT NULL,
    `tipo_energia` varchar(20) NOT NULL,
    `num_paneles_solares` integer NOT NULL,
    `media_anual_hrs_sol` integer NOT NULL
)
;
ALTER TABLE `energia_solar` ADD CONSTRAINT `productor_id_refs_id_6a59e2e0` FOREIGN KEY (`productor_id`) REFERENCES `energia_productor` (`id`);
CREATE TABLE `energia_termica` (
    `id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `productor_id` integer NOT NULL,
    `num_hornos` integer NOT NULL,
    `volumen_carbon_consumido` double precision NOT NULL
)
;
ALTER TABLE `energia_termica` ADD CONSTRAINT `productor_id_refs_id_7c8cc21c` FOREIGN KEY (`productor_id`) REFERENCES `energia_productor` (`id`);
CREATE TABLE `energia_nuclear` (
    `id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `productor_id` integer NOT NULL,
    `plutonio` double precision NOT NULL,
    `num_reactores` integer NOT NULL,
    `num_residuos` integer NOT NULL
)
;
ALTER TABLE `energia_nuclear` ADD CONSTRAINT `productor_id_refs_id_6512161f` FOREIGN KEY (`productor_id`) REFERENCES `energia_productor` (`id`);
CREATE TABLE `energia_suministrador_plantas_nucleares` (
    `id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `suministrador_id` integer NOT NULL,
    `nuclear_id` integer NOT NULL,
    UNIQUE (`suministrador_id`, `nuclear_id`)
)
;
ALTER TABLE `energia_suministrador_plantas_nucleares` ADD CONSTRAINT `nuclear_id_refs_id_a198245c` FOREIGN KEY (`nuclear_id`) REFERENCES `energia_nuclear` (`id`);
CREATE TABLE `energia_suministrador` (
    `id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `nombre` varchar(50) NOT NULL,
    `pais` varchar(50) NOT NULL
)
;
ALTER TABLE `energia_suministrador_plantas_nucleares` ADD CONSTRAINT `suministrador_id_refs_id_8119aaa0` FOREIGN KEY (`suministrador_id`) REFERENCES `energia_suministrador` (`id`);
CREATE TABLE `energia_transportista` (
    `id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `nombre` varchar(50) NOT NULL,
    `direccion` varchar(100) NOT NULL
)
;
CREATE TABLE `energia_compra_de_plutonio` (
    `id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `cantidad` double precision NOT NULL,
    `fecha_entrega` datetime NOT NULL,
    `transportista_id` integer NOT NULL,
    `planta_nuclear_id` integer NOT NULL,
    `suministrador_id` integer NOT NULL
)
;
ALTER TABLE `energia_compra_de_plutonio` ADD CONSTRAINT `suministrador_id_refs_id_a982ef14` FOREIGN KEY (`suministrador_id`) REFERENCES `energia_suministrador` (`id`);
ALTER TABLE `energia_compra_de_plutonio` ADD CONSTRAINT `planta_nuclear_id_refs_id_3a2d98b9` FOREIGN KEY (`planta_nuclear_id`) REFERENCES `energia_nuclear` (`id`);
ALTER TABLE `energia_compra_de_plutonio` ADD CONSTRAINT `transportista_id_refs_id_476cc129` FOREIGN KEY (`transportista_id`) REFERENCES `energia_transportista` (`id`);

COMMIT;
