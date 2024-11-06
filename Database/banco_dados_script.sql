drop database  `tarefas_db`;
CREATE DATABASE `tarefas_db`;
USE `tarefas_db`;


CREATE TABLE `tarefas` (
  `id_tar` int NOT NULL AUTO_INCREMENT,
  `descricao_tar` text NOT NULL,
  `data_tar` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `feito_tar` boolean DEFAULT false,
  `data_realizado_tar` datetime,
  `id_cat_fk` int NOT NULL,
  foreign key `id_cat_fk` references `categoria`(`id_cat`),
  PRIMARY KEY (`id_tar`)
);

INSERT INTO `tarefas` (`descricao_tar`) VALUES ("Estudo de API - PART 4"), ("Estudo de API - PART 5"), ("Estudo de API - PART 6");
UPDATE tarefas SET feito_tar = TRUE WHERE id_tar = 1;
SELECT * FROM tarefas_db.tarefas;


CREATE TABLE `categoria` (
  `id_cat` int NOT NULL AUTO_INCREMENT,
  `nome_cat` text NOT NULL,
   PRIMARY KEY (`id_cat`)
);

INSERT INTO `categoria` (`nome_cat`) VALUES ("Categoria 1"), ("Categoria 2"), ("Categoria 3");
SELECT * FROM tarefas_db.categoria;