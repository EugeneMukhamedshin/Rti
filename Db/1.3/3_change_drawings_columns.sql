-- 
-- Скрипт сгенерирован Devart dbForge Studio for MySQL, Версия 6.3.358.0
-- Домашняя страница продукта: http://www.devart.com/ru/dbforge/mysql/studio
-- Дата скрипта: 28.04.2016 0:10:38
-- Версия сервера базы данных источника: 5.7.9
-- Строка соединения источника: User Id=root;Host=localhost;Database=rti;Character Set=utf8
-- Версия сервера базы данных получателя: 5.7.12
-- Строка соединения получателя: User Id=root;Host=81.177.174.193;Database=rti;Character Set=utf8
-- Выполните скрипт в базу rti, чтобы синхронизировать ее с базой rti
-- Пожалуйста, сохраните резервную копию вашей базы получателя перед запуском этого скрипта
-- 

--
-- Отключение внешних ключей
--
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

SET NAMES 'utf8';

USE rti_prerelease;


--
-- Изменить таблицу "drawings"
--
ALTER TABLE drawings
  ADD COLUMN code VARCHAR(255) DEFAULT NULL AFTER measure_unit_id,
  CHANGE COLUMN mass_with_shruff mass_with_shruff DECIMAL(10, 3) DEFAULT NULL AFTER mass_calculation_id,
  CHANGE COLUMN price price DECIMAL(10, 2) DEFAULT NULL AFTER mass_with_shruff,
  CHANGE COLUMN shaving_price shaving_price DECIMAL(10, 2) DEFAULT NULL AFTER price,
  CHANGE COLUMN calculation_price calculation_price DECIMAL(10, 2) DEFAULT NULL AFTER shaving_price,
  CHANGE COLUMN width width DECIMAL(10, 2) DEFAULT NULL AFTER method_id,
  CHANGE COLUMN length length DECIMAL(10, 2) DEFAULT NULL AFTER width,
  CHANGE COLUMN thickness thickness DECIMAL(10, 2) DEFAULT NULL AFTER length,
  CHANGE COLUMN inner_diameter inner_diameter DECIMAL(10, 2) DEFAULT NULL AFTER thickness,
  CHANGE COLUMN outer_diameter outer_diameter DECIMAL(10, 2) DEFAULT NULL AFTER inner_diameter;

--
-- Включение внешних ключей
--
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;