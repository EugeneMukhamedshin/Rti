-- 
-- Скрипт сгенерирован Devart dbForge Studio for MySQL, Версия 7.0.49.0
-- Домашняя страница продукта: http://www.devart.com/ru/dbforge/mysql/studio
-- Дата скрипта: 08.05.2016 22:45:58
-- Версия сервера базы данных источника: 5.7.9
-- Строка соединения источника: User Id=root;Host=localhost;Database=estimation;Character Set=AUTO
-- Версия сервера базы данных получателя: 5.7.12
-- Строка соединения получателя: User Id=root;Host=81.177.174.193;Character Set=utf8
-- Выполните скрипт в базу rti, чтобы синхронизировать ее с базой rti
-- Пожалуйста, сохраните резервную копию вашей базы получателя перед запуском этого скрипта
-- 

--
-- Отключение внешних ключей
--
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS = @@foreign_key_checks, foreign_key_checks = 0 */;

SET NAMES 'utf8';

USE rti;

CREATE TABLE drawings_temp AS SELECT
  *
FROM drawings d;

--
-- Изменить таблицу "drawings"
--
ALTER TABLE drawings
CHANGE COLUMN creation_date creation_date datetime DEFAULT NULL,
ADD COLUMN plan_calculation_id int(11) DEFAULT NULL COMMENT 'плановая калькуляция' AFTER shaving_price,
ADD COLUMN fact_calculation_id int(11) DEFAULT NULL COMMENT 'фактическая калькуляция' AFTER plan_calculation_id,
CHANGE COLUMN calculation_price calculation_price_manual decimal(10, 2) DEFAULT NULL AFTER fact_calculation_id,
CHANGE COLUMN width width double DEFAULT NULL AFTER method_id,
CHANGE COLUMN length length double DEFAULT NULL AFTER width,
CHANGE COLUMN thickness thickness double DEFAULT NULL AFTER length,
CHANGE COLUMN inner_diameter inner_diameter double DEFAULT NULL AFTER thickness,
CHANGE COLUMN outer_diameter outer_diameter double DEFAULT NULL AFTER inner_diameter;

ALTER TABLE drawings
ADD CONSTRAINT FK_drawings_details_id FOREIGN KEY (detail_id)
REFERENCES details (id) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE drawings
ADD CONSTRAINT FK_drawings_equipments_id FOREIGN KEY (equipment_id)
REFERENCES equipments (id) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE drawings
ADD CONSTRAINT FK_drawings_fact_calculations_id FOREIGN KEY (fact_calculation_id)
REFERENCES calculations (id) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE drawings
ADD CONSTRAINT FK_drawings_groups_id FOREIGN KEY (group_id)
REFERENCES groups (id) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE drawings
ADD CONSTRAINT FK_drawings_images_id FOREIGN KEY (drawing_image_id)
REFERENCES images (id) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE drawings
ADD CONSTRAINT FK_drawings_mass_calculations_id FOREIGN KEY (mass_calculation_id)
REFERENCES mass_calculations (id) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE drawings
ADD CONSTRAINT FK_drawings_materials_bp_id FOREIGN KEY (material_by_passport_id)
REFERENCES materials (id) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE drawings
ADD CONSTRAINT FK_drawings_materials_id FOREIGN KEY (material_id)
REFERENCES materials (id) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE drawings
ADD CONSTRAINT FK_drawings_measure_units_id FOREIGN KEY (measure_unit_id)
REFERENCES measure_units (id) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE drawings
ADD CONSTRAINT FK_drawings_methods_id FOREIGN KEY (method_id)
REFERENCES methods (id) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE drawings
ADD CONSTRAINT FK_drawings_plan_calculations_id FOREIGN KEY (plan_calculation_id)
REFERENCES calculations (id) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Включение внешних ключей
--
/*!40014 SET foreign_key_checks = @OLD_FOREIGN_KEY_CHECKS */;