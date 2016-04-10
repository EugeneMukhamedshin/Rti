--
-- Скрипт сгенерирован Devart dbForge Studio for MySQL, Версия 7.0.49.0
-- Домашняя страница продукта: http://www.devart.com/ru/dbforge/mysql/studio
-- Дата скрипта: 10.04.2016 18:27:48
-- Версия сервера: 5.7.11-log
-- Версия клиента: 4.1
-- Пожалуйста, сохраните резервную копию вашей базы перед запуском этого скрипта
--


SET NAMES 'utf8';

USE rti;


--
-- Изменить таблицу "drawings"
--
ALTER TABLE drawings
  ADD COLUMN sort_order INT(11) DEFAULT NULL AFTER id,
  ADD COLUMN group_id INT(11) DEFAULT NULL AFTER name,
  ADD COLUMN detail_id INT DEFAULT NULL AFTER group_id,
  ADD COLUMN additional_info VARCHAR(500) DEFAULT NULL AFTER detail_id,
  ADD COLUMN material_by_passport_id INT DEFAULT NULL AFTER additional_info,
  ADD COLUMN material_id INT DEFAULT NULL AFTER material_by_passport_id,
  ADD COLUMN measure_unit_id INT DEFAULT NULL AFTER material_id,
  ADD COLUMN code VARCHAR(255) DEFAULT NULL AFTER measure_unit_id,
  ADD COLUMN mass_calculation_id INT DEFAULT NULL AFTER code,
  ADD COLUMN mass_with_shruff DOUBLE DEFAULT NULL AFTER mass_calculation_id,
  ADD COLUMN price DOUBLE DEFAULT NULL AFTER mass_with_shruff,
  ADD COLUMN shaving_price DOUBLE DEFAULT NULL AFTER price,
  ADD COLUMN calculation_price DOUBLE DEFAULT NULL AFTER shaving_price,
  ADD COLUMN equipment_id INT DEFAULT NULL AFTER calculation_price,
  ADD COLUMN method_id INT DEFAULT NULL AFTER equipment_id,
  ADD COLUMN width DOUBLE DEFAULT NULL AFTER method_id,
  ADD COLUMN length DOUBLE DEFAULT NULL AFTER width,
  ADD COLUMN thickness DOUBLE DEFAULT NULL AFTER length,
  ADD COLUMN inner_diameter DOUBLE DEFAULT NULL AFTER thickness,
  ADD COLUMN outer_diameter DOUBLE DEFAULT NULL AFTER inner_diameter,
  ADD COLUMN drawing_image_id INT DEFAULT NULL AFTER outer_diameter,
  ADD COLUMN note VARCHAR(500) DEFAULT NULL AFTER drawing_image_id;

ALTER TABLE drawings
  ADD CONSTRAINT FK_drawings_groups_id FOREIGN KEY (group_id)
    REFERENCES groups(id) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE drawings
  ADD CONSTRAINT FK_drawings_details_id FOREIGN KEY (detail_id)
    REFERENCES details(id) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE drawings
  ADD CONSTRAINT FK_drawings_materials_bp_id FOREIGN KEY (material_by_passport_id)
    REFERENCES materials(id) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE drawings
  ADD CONSTRAINT FK_drawings_materials_id FOREIGN KEY (material_id)
    REFERENCES materials(id) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE drawings
  ADD CONSTRAINT FK_drawings_measure_units_id FOREIGN KEY (measure_unit_id)
    REFERENCES measure_units(id) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE drawings
  ADD CONSTRAINT FK_drawings_equipments_id FOREIGN KEY (equipment_id)
    REFERENCES equipments(id) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE drawings
  ADD CONSTRAINT FK_drawings_methods_id FOREIGN KEY (method_id)
    REFERENCES methods(id) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE drawings
  ADD CONSTRAINT FK_drawings_mass_calculations_id FOREIGN KEY (mass_calculation_id)
    REFERENCES mass_calculations(id) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE drawings
  ADD CONSTRAINT FK_drawings_images_id FOREIGN KEY (drawing_image_id)
    REFERENCES images(id) ON DELETE RESTRICT ON UPDATE RESTRICT;