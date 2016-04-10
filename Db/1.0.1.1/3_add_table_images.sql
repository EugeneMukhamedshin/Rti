--
-- Скрипт сгенерирован Devart dbForge Studio for MySQL, Версия 7.0.49.0
-- Домашняя страница продукта: http://www.devart.com/ru/dbforge/mysql/studio
-- Дата скрипта: 10.04.2016 18:26:54
-- Версия сервера: 5.7.11-log
-- Версия клиента: 4.1
-- Пожалуйста, сохраните резервную копию вашей базы перед запуском этого скрипта
--


SET NAMES 'utf8';

USE rti;


--
-- Создать таблицу "images"
--
CREATE TABLE images (
  id INT NOT NULL AUTO_INCREMENT,
  data BLOB DEFAULT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB;