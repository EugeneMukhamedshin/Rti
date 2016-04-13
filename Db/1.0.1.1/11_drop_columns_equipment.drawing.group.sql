--
-- Скрипт сгенерирован Devart dbForge Studio for MySQL, Версия 6.3.358.0
-- Домашняя страница продукта: http://www.devart.com/ru/dbforge/mysql/studio
-- Дата скрипта: 13.04.2016 10:48:20
-- Версия сервера: 5.6.26-log
-- Версия клиента: 4.1
-- Пожалуйста, сохраните резервную копию вашей базы перед запуском этого скрипта
--


SET NAMES 'utf8';

USE rti;


--
-- Изменить таблицу "equipments"
--
ALTER TABLE equipments
  DROP COLUMN group_id,
  DROP COLUMN drawing_id,
  DROP FOREIGN KEY FK_equipments_drawings_id,
  DROP INDEX FK_equipments_drawings_id,
  DROP FOREIGN KEY FK_equipments_groups_id,
  DROP INDEX FK_equipments_groups_id;