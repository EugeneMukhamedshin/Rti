-- 
-- Скрипт сгенерирован Devart dbForge Studio for MySQL, Версия 6.3.358.0
-- Домашняя страница продукта: http://www.devart.com/ru/dbforge/mysql/studio
-- Дата скрипта: 27.04.2016 23:41:24
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
-- Изменить таблицу "constants"
--
ALTER TABLE constants
  CHANGE COLUMN k_tr k_tr DECIMAL(20, 2) NOT NULL,
  CHANGE COLUMN k_esn k_esn DECIMAL(20, 2) NOT NULL,
  CHANGE COLUMN k_ob_ceh k_ob_ceh DECIMAL(20, 2) NOT NULL,
  CHANGE COLUMN k_ob_pr k_ob_pr DECIMAL(20, 2) NOT NULL,
  CHANGE COLUMN k_el k_el DECIMAL(20, 2) NOT NULL,
  CHANGE COLUMN k_nep k_nep DECIMAL(20, 2) NOT NULL,
  CHANGE COLUMN k_ren k_ren DECIMAL(20, 2) NOT NULL,
  CHANGE COLUMN nds nds DECIMAL(20, 2) NOT NULL,
  CHANGE COLUMN k_st k_st DECIMAL(20, 2) NOT NULL;

--
-- Изменить таблицу "contragents"
--
ALTER TABLE contragents
  CHANGE COLUMN type contragent_type_enum INT(11) NOT NULL COMMENT 'тип контрагента (0 - заказчик, 1 - поставщик)';

--
-- Изменить таблицу "equipments"
--
ALTER TABLE equipments
  CHANGE COLUMN existance existance_enum INT(11) NOT NULL,
  CHANGE COLUMN square square DECIMAL(10, 3) NOT NULL;

--
-- Изменить таблицу "images"
--
ALTER TABLE images
  CHANGE COLUMN data data LONGBLOB DEFAULT NULL;

--
-- Изменить таблицу "machines"
--
ALTER TABLE machines
  CHANGE COLUMN plate_power plate_power DECIMAL(10, 3) DEFAULT NULL,
  CHANGE COLUMN engine_power engine_power DECIMAL(10, 3) DEFAULT NULL,
  CHANGE COLUMN total_power total_power DECIMAL(10, 3) DEFAULT NULL,
  CHANGE COLUMN power_price power_price DECIMAL(10, 2) DEFAULT NULL COMMENT 'Цена электроэнергии, руб/КВтч',
  CHANGE COLUMN time_price time_price DECIMAL(10, 2) DEFAULT NULL COMMENT 'Цена электроэнергии, руб/мин';

--
-- Изменить таблицу "mass_calculations"
--
ALTER TABLE mass_calculations
  CHANGE COLUMN material_density material_density DECIMAL(10, 3) DEFAULT NULL,
  CHANGE COLUMN rnd_d_shn rnd_d_shn DECIMAL(10, 3) DEFAULT NULL,
  CHANGE COLUMN rnd_s1 rnd_s1 DECIMAL(10, 3) DEFAULT NULL,
  CHANGE COLUMN rnd_s2 rnd_s2 DECIMAL(10, 3) DEFAULT NULL,
  CHANGE COLUMN rnd_d_nar rnd_d_nar DECIMAL(10, 3) DEFAULT NULL,
  CHANGE COLUMN rnd_d_vn rnd_d_vn DECIMAL(10, 3) DEFAULT NULL,
  CHANGE COLUMN rnd_d_sr rnd_d_sr DECIMAL(10, 3) DEFAULT NULL,
  CHANGE COLUMN rnd_m_ras rnd_m_ras DECIMAL(10, 3) DEFAULT NULL,
  CHANGE COLUMN sq_s sq_s DECIMAL(10, 3) DEFAULT NULL,
  CHANGE COLUMN sq_l sq_l DECIMAL(10, 3) DEFAULT NULL,
  CHANGE COLUMN sq_b sq_b DECIMAL(10, 3) DEFAULT NULL,
  CHANGE COLUMN sq_l1 sq_l1 DECIMAL(10, 3) DEFAULT NULL,
  CHANGE COLUMN sq_b1 sq_b1 DECIMAL(10, 3) DEFAULT NULL,
  CHANGE COLUMN sq_d_vn sq_d_vn DECIMAL(10, 3) DEFAULT NULL,
  CHANGE COLUMN vl_s vl_s DECIMAL(10, 3) DEFAULT NULL,
  CHANGE COLUMN vl_l vl_l DECIMAL(10, 3) DEFAULT NULL,
  CHANGE COLUMN vl_b vl_b DECIMAL(10, 3) DEFAULT NULL,
  CHANGE COLUMN vl_l1 vl_l1 DECIMAL(10, 3) DEFAULT NULL,
  CHANGE COLUMN vl_b1 vl_b1 DECIMAL(10, 3) DEFAULT NULL;

--
-- Изменить таблицу "materials"
--
ALTER TABLE materials
  CHANGE COLUMN density density DECIMAL(10, 3) DEFAULT NULL,
  CHANGE COLUMN thickness thickness DECIMAL(10, 3) DEFAULT NULL,
  CHANGE COLUMN length length DECIMAL(10, 3) DEFAULT NULL,
  CHANGE COLUMN width width DECIMAL(10, 3) DEFAULT NULL,
  CHANGE COLUMN price price DECIMAL(10, 2) DEFAULT NULL;

--
-- Изменить таблицу "request_details"
--
ALTER TABLE request_details
  CHANGE COLUMN count count DECIMAL(10, 2) NOT NULL,
  CHANGE COLUMN price price DECIMAL(10, 2) NOT NULL,
  CHANGE COLUMN calculation_price calculation_price DECIMAL(10, 2) DEFAULT NULL,
  CHANGE COLUMN sum sum DECIMAL(10, 2) NOT NULL;

--
-- Включение внешних ключей
--
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;