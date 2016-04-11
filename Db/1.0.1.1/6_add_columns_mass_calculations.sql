--
-- Скрипт сгенерирован Devart dbForge Studio for MySQL, Версия 7.0.49.0
-- Домашняя страница продукта: http://www.devart.com/ru/dbforge/mysql/studio
-- Дата скрипта: 12.04.2016 0:11:30
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
  ADD COLUMN detail_type_enum INT(11) NOT NULL AFTER id,
  ADD COLUMN material_density DOUBLE DEFAULT NULL AFTER detail_type_enum,
  ADD COLUMN rnd_d_shn DOUBLE DEFAULT NULL AFTER material_density,
  ADD COLUMN rnd_s1 DOUBLE DEFAULT NULL AFTER rnd_d_shn,
  ADD COLUMN rnd_s2 DOUBLE DEFAULT NULL AFTER rnd_s1,
  ADD COLUMN rnd_d_nar DOUBLE DEFAULT NULL AFTER rnd_s2,
  ADD COLUMN rnd_d_vn DOUBLE DEFAULT NULL AFTER rnd_d_nar,
  ADD COLUMN rnd_d_sr DOUBLE DEFAULT NULL AFTER rnd_d_vn,
  ADD COLUMN rnd_m_ras DOUBLE DEFAULT NULL AFTER rnd_d_sr,
  ADD COLUMN sq_s VARCHAR(255) DEFAULT NULL AFTER rnd_m_ras,
  ADD COLUMN sq_l VARCHAR(255) DEFAULT NULL AFTER sq_s,
  ADD COLUMN sq_b VARCHAR(255) DEFAULT NULL AFTER sq_l,
  ADD COLUMN sq_l1 VARCHAR(255) DEFAULT NULL AFTER sq_b,
  ADD COLUMN sq_b1 VARCHAR(255) DEFAULT NULL AFTER sq_l1,
  ADD COLUMN sq_d_vn VARCHAR(255) DEFAULT NULL AFTER sq_b1,
  ADD COLUMN vl_s VARCHAR(255) DEFAULT NULL AFTER sq_d_vn,
  ADD COLUMN vl_l VARCHAR(255) DEFAULT NULL AFTER vl_s,
  ADD COLUMN vl_b VARCHAR(255) DEFAULT NULL AFTER vl_l,
  ADD COLUMN vl_l1 VARCHAR(255) DEFAULT NULL AFTER vl_b,
  ADD COLUMN vl_b1 VARCHAR(255) DEFAULT NULL AFTER vl_l1;