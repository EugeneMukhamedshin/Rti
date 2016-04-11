--
-- Скрипт сгенерирован Devart dbForge Studio for MySQL, Версия 7.0.49.0
-- Домашняя страница продукта: http://www.devart.com/ru/dbforge/mysql/studio
-- Дата скрипта: 12.04.2016 0:15:33
-- Версия сервера: 5.7.11-log
-- Версия клиента: 4.1
-- Пожалуйста, сохраните резервную копию вашей базы перед запуском этого скрипта
--


SET NAMES 'utf8';

USE rti;


--
-- Изменить таблицу "mass_calculations"
--
ALTER TABLE mass_calculations
  CHANGE COLUMN sq_s sq_s DOUBLE DEFAULT NULL,
  CHANGE COLUMN sq_l sq_l DOUBLE DEFAULT NULL,
  CHANGE COLUMN sq_b sq_b DOUBLE DEFAULT NULL,
  CHANGE COLUMN sq_l1 sq_l1 DOUBLE DEFAULT NULL,
  CHANGE COLUMN sq_b1 sq_b1 DOUBLE DEFAULT NULL,
  CHANGE COLUMN sq_d_vn sq_d_vn DOUBLE DEFAULT NULL,
  CHANGE COLUMN vl_s vl_s DOUBLE DEFAULT NULL,
  CHANGE COLUMN vl_l vl_l DOUBLE DEFAULT NULL,
  CHANGE COLUMN vl_b vl_b DOUBLE DEFAULT NULL,
  CHANGE COLUMN vl_l1 vl_l1 DOUBLE DEFAULT NULL,
  CHANGE COLUMN vl_b1 vl_b1 DOUBLE DEFAULT NULL,
  ADD COLUMN mass_formula VARCHAR(500) DEFAULT NULL AFTER vl_b1;