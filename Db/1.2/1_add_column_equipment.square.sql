--
-- Скрипт сгенерирован Devart dbForge Studio for MySQL, Версия 7.0.49.0
-- Домашняя страница продукта: http://www.devart.com/ru/dbforge/mysql/studio
-- Дата скрипта: 09.04.2016 19:50:30
-- Версия сервера: 5.7.11-log
-- Версия клиента: 4.1
-- Пожалуйста, сохраните резервную копию вашей базы перед запуском этого скрипта
--


SET NAMES 'utf8';

USE rti;


--
-- Изменить таблицу "equipments"
--
ALTER TABLE equipments
  CHANGE COLUMN group_id group_id INT(11) NOT NULL,
  CHANGE COLUMN drawing_id drawing_id INT(11) NOT NULL,
  ADD COLUMN square DOUBLE NOT NULL AFTER existance,
  CHANGE COLUMN form_count form_count INT(11) NOT NULL AFTER square,
  CHANGE COLUMN slot_count slot_count INT(11) NOT NULL AFTER form_count,
  CHANGE COLUMN output output INT(11) NOT NULL AFTER slot_count;