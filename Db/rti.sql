﻿--
-- Скрипт сгенерирован Devart dbForge Studio for MySQL, Версия 6.3.358.0
-- Домашняя страница продукта: http://www.devart.com/ru/dbforge/mysql/studio
-- Дата скрипта: 30.05.2016 21:53:06
-- Версия сервера: 5.6.26-log
-- Версия клиента: 4.1
--


-- 
-- Отключение внешних ключей
-- 
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

-- 
-- Установить режим SQL (SQL mode)
-- 
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 
-- Установка кодировки, с использованием которой клиент будет посылать запросы на сервер
--
SET NAMES 'utf8';

-- 
-- Установка базы данных по умолчанию
--
USE rti;

--
-- Описание для таблицы additional_infos
--
DROP TABLE IF EXISTS additional_infos;
CREATE TABLE additional_infos (
  id INT(11) NOT NULL AUTO_INCREMENT,
  sort_order INT(11) NOT NULL,
  name VARCHAR(1000) NOT NULL,
  note VARCHAR(1000) DEFAULT NULL,
  is_deleted INT(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (id)
)
ENGINE = INNODB
AUTO_INCREMENT = 1
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'дополнительная информация'
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы calculations
--
DROP TABLE IF EXISTS calculations;
CREATE TABLE calculations (
  id INT(11) NOT NULL AUTO_INCREMENT,
  Main_Material DECIMAL(20, 2) DEFAULT 0.00,
  Rubber DECIMAL(20, 2) DEFAULT 0.00,
  Clue DECIMAL(20, 2) DEFAULT 0.00,
  Armature DECIMAL(20, 2) DEFAULT 0.00,
  Sand DECIMAL(20, 2) DEFAULT 0.00,
  Textile DECIMAL(20, 2) DEFAULT 0.00,
  Other_Material DECIMAL(20, 2) DEFAULT 0.00,
  Transport DECIMAL(20, 2) DEFAULT 0.00,
  Main_Salary DECIMAL(20, 2) DEFAULT 0.00,
  Additional_Salary DECIMAL(20, 2) DEFAULT 0.00,
  Fixed_Tax DECIMAL(20, 2) DEFAULT 0.00,
  Total_Division DECIMAL(20, 2) DEFAULT 0.00,
  Total_Manufacture DECIMAL(20, 2) DEFAULT 0.00,
  Main_Summary DECIMAL(20, 2) DEFAULT 0.00,
  Power_For_Formed DECIMAL(20, 2) DEFAULT 0.00,
  Other_Power DECIMAL(20, 2) DEFAULT 0.00,
  Main_And_Power_Summary DECIMAL(20, 2) DEFAULT 0.00,
  Unforseen DECIMAL(20, 2) DEFAULT 0.00,
  Net_Cost DECIMAL(20, 2) DEFAULT 0.00,
  Profitability DECIMAL(20, 2) DEFAULT 0.00,
  Price DECIMAL(20, 2) DEFAULT 0.00,
  Nds_Tax DECIMAL(20, 2) DEFAULT 0.00,
  Summary DECIMAL(20, 2) DEFAULT 0.00,
  Note VARCHAR(500) DEFAULT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB
AUTO_INCREMENT = 9
AVG_ROW_LENGTH = 4096
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'калькуляции'
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы constants
--
DROP TABLE IF EXISTS constants;
CREATE TABLE constants (
  id INT(11) NOT NULL AUTO_INCREMENT,
  k_tr DECIMAL(20, 2) NOT NULL,
  k_esn DECIMAL(20, 2) NOT NULL,
  k_ob_ceh DECIMAL(20, 2) NOT NULL,
  k_ob_pr DECIMAL(20, 2) NOT NULL,
  k_el DECIMAL(20, 2) NOT NULL,
  k_nep DECIMAL(20, 2) NOT NULL,
  k_ren DECIMAL(20, 2) NOT NULL,
  nds DECIMAL(20, 2) NOT NULL,
  k_st DECIMAL(20, 2) NOT NULL,
  date_from DATETIME NOT NULL,
  date_to DATETIME NOT NULL,
  is_deleted INT(11) NOT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB
AUTO_INCREMENT = 2
AVG_ROW_LENGTH = 16384
CHARACTER SET utf8
COLLATE utf8_general_ci
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы contragents
--
DROP TABLE IF EXISTS contragents;
CREATE TABLE contragents (
  id INT(11) NOT NULL AUTO_INCREMENT,
  sort_order INT(11) NOT NULL,
  name VARCHAR(1000) NOT NULL,
  contragent_type_enum INT(11) NOT NULL COMMENT 'тип контрагента (0 - заказчик, 1 - поставщик, 2 - изготовитель)',
  address VARCHAR(1000) DEFAULT NULL,
  director VARCHAR(1000) DEFAULT NULL,
  trustee VARCHAR(1000) DEFAULT NULL,
  phone VARCHAR(255) DEFAULT NULL,
  grounding VARCHAR(1000) DEFAULT NULL,
  inn VARCHAR(255) DEFAULT NULL,
  kpp VARCHAR(255) DEFAULT NULL,
  account VARCHAR(255) DEFAULT NULL,
  corr_account VARCHAR(255) DEFAULT NULL,
  okved VARCHAR(255) DEFAULT NULL,
  okato VARCHAR(255) DEFAULT NULL,
  okpo VARCHAR(255) DEFAULT NULL,
  ogrn VARCHAR(255) DEFAULT NULL,
  bik VARCHAR(255) DEFAULT NULL,
  bank VARCHAR(255) DEFAULT NULL,
  email VARCHAR(50) DEFAULT NULL,
  note VARCHAR(1000) DEFAULT NULL,
  is_deleted INT(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (id)
)
ENGINE = INNODB
AUTO_INCREMENT = 7
AVG_ROW_LENGTH = 4096
CHARACTER SET utf8
COLLATE utf8_general_ci
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы details
--
DROP TABLE IF EXISTS details;
CREATE TABLE details (
  id INT(11) NOT NULL AUTO_INCREMENT,
  sort_order INT(11) NOT NULL,
  name VARCHAR(1000) NOT NULL,
  note VARCHAR(1000) DEFAULT NULL,
  is_deleted INT(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (id)
)
ENGINE = INNODB
AUTO_INCREMENT = 3
AVG_ROW_LENGTH = 8192
CHARACTER SET utf8
COLLATE utf8_general_ci
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы drivers
--
DROP TABLE IF EXISTS drivers;
CREATE TABLE drivers (
  id INT(11) NOT NULL AUTO_INCREMENT,
  sort_order INT(11) NOT NULL,
  car_model VARCHAR(255) NOT NULL,
  number VARCHAR(255) NOT NULL,
  name VARCHAR(1000) NOT NULL,
  document VARCHAR(255) NOT NULL,
  is_deleted INT(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (id)
)
ENGINE = INNODB
AUTO_INCREMENT = 3
AVG_ROW_LENGTH = 8192
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'водители'
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы equipments
--
DROP TABLE IF EXISTS equipments;
CREATE TABLE equipments (
  id INT(11) NOT NULL AUTO_INCREMENT,
  sort_order INT(11) NOT NULL,
  name VARCHAR(1000) NOT NULL,
  existance_enum INT(11) NOT NULL,
  square DECIMAL(10, 3) NOT NULL,
  height DECIMAL(10, 2) NOT NULL,
  form_count INT(11) NOT NULL,
  slot_count INT(11) NOT NULL,
  output INT(11) NOT NULL,
  note VARCHAR(1000) DEFAULT NULL,
  is_deleted INT(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (id)
)
ENGINE = INNODB
AUTO_INCREMENT = 5
AVG_ROW_LENGTH = 8192
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'оснастки'
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы groups
--
DROP TABLE IF EXISTS groups;
CREATE TABLE groups (
  id INT(11) NOT NULL AUTO_INCREMENT,
  sort_order INT(11) NOT NULL,
  name VARCHAR(1000) NOT NULL,
  note VARCHAR(1000) DEFAULT NULL,
  is_deleted INT(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (id)
)
ENGINE = INNODB
AUTO_INCREMENT = 6
AVG_ROW_LENGTH = 3276
CHARACTER SET utf8
COLLATE utf8_general_ci
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы images
--
DROP TABLE IF EXISTS images;
CREATE TABLE images (
  id INT(11) NOT NULL AUTO_INCREMENT,
  data LONGBLOB DEFAULT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB
AUTO_INCREMENT = 8
AVG_ROW_LENGTH = 20480
CHARACTER SET utf8
COLLATE utf8_general_ci
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы jobs
--
DROP TABLE IF EXISTS jobs;
CREATE TABLE jobs (
  id INT(11) NOT NULL AUTO_INCREMENT,
  sort_order INT(11) NOT NULL,
  name VARCHAR(1000) NOT NULL,
  login VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  is_deleted INT(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (id),
  UNIQUE INDEX UK_jobs_login (login)
)
ENGINE = INNODB
AUTO_INCREMENT = 4
AVG_ROW_LENGTH = 8192
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'должности'
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы machines
--
DROP TABLE IF EXISTS machines;
CREATE TABLE machines (
  id INT(11) NOT NULL AUTO_INCREMENT,
  sort_order INT(11) NOT NULL,
  name VARCHAR(1000) NOT NULL,
  plate_size VARCHAR(255) DEFAULT NULL,
  inv_number VARCHAR(255) DEFAULT NULL,
  plate_count INT(11) DEFAULT NULL,
  plate_power DECIMAL(10, 3) DEFAULT NULL,
  engine_power DECIMAL(10, 3) DEFAULT NULL,
  total_power DECIMAL(10, 3) DEFAULT NULL,
  power_price DECIMAL(10, 2) DEFAULT NULL COMMENT 'Цена электроэнергии, руб/КВтч',
  time_price DECIMAL(10, 2) DEFAULT NULL COMMENT 'Цена электроэнергии, руб/мин',
  note VARCHAR(1000) DEFAULT NULL,
  is_deleted INT(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (id)
)
ENGINE = INNODB
AUTO_INCREMENT = 4
AVG_ROW_LENGTH = 16384
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'оборудование'
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы mass_calculations
--
DROP TABLE IF EXISTS mass_calculations;
CREATE TABLE mass_calculations (
  id INT(11) NOT NULL AUTO_INCREMENT,
  detail_type_enum INT(11) NOT NULL,
  material_density DECIMAL(10, 3) DEFAULT NULL,
  rnd_d_shn DECIMAL(10, 3) DEFAULT NULL,
  rnd_s1 DECIMAL(10, 3) DEFAULT NULL,
  rnd_s2 DECIMAL(10, 3) DEFAULT NULL,
  rnd_d_nar DECIMAL(10, 3) DEFAULT NULL,
  rnd_d_vn DECIMAL(10, 3) DEFAULT NULL,
  rnd_d_sr DECIMAL(10, 3) DEFAULT NULL,
  rnd_m_ras DECIMAL(10, 3) DEFAULT NULL,
  sq_s DECIMAL(10, 3) DEFAULT NULL,
  sq_l DECIMAL(10, 3) DEFAULT NULL,
  sq_b DECIMAL(10, 3) DEFAULT NULL,
  sq_l1 DECIMAL(10, 3) DEFAULT NULL,
  sq_b1 DECIMAL(10, 3) DEFAULT NULL,
  sq_d_vn DECIMAL(10, 3) DEFAULT NULL,
  vl_s DECIMAL(10, 3) DEFAULT NULL,
  vl_l DECIMAL(10, 3) DEFAULT NULL,
  vl_b DECIMAL(10, 3) DEFAULT NULL,
  vl_l1 DECIMAL(10, 3) DEFAULT NULL,
  vl_b1 DECIMAL(10, 3) DEFAULT NULL,
  mass_formula VARCHAR(500) DEFAULT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB
AUTO_INCREMENT = 5
AVG_ROW_LENGTH = 16384
CHARACTER SET utf8
COLLATE utf8_general_ci
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы materials
--
DROP TABLE IF EXISTS materials;
CREATE TABLE materials (
  id INT(11) NOT NULL AUTO_INCREMENT,
  sort_order INT(11) NOT NULL,
  name VARCHAR(1000) NOT NULL,
  tech_conditions VARCHAR(1000) DEFAULT NULL,
  density DECIMAL(10, 3) DEFAULT NULL,
  thickness DECIMAL(10, 3) DEFAULT NULL,
  length DECIMAL(10, 3) DEFAULT NULL,
  width DECIMAL(10, 3) DEFAULT NULL,
  price DECIMAL(10, 2) DEFAULT NULL,
  note VARCHAR(1000) DEFAULT NULL,
  is_deleted INT(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (id)
)
ENGINE = INNODB
AUTO_INCREMENT = 9
AVG_ROW_LENGTH = 2730
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'справочник материалов'
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы measure_units
--
DROP TABLE IF EXISTS measure_units;
CREATE TABLE measure_units (
  id INT(11) NOT NULL AUTO_INCREMENT,
  sort_order INT(11) NOT NULL,
  name VARCHAR(1000) NOT NULL,
  code VARCHAR(30) DEFAULT NULL,
  is_deleted INT(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (id)
)
ENGINE = INNODB
AUTO_INCREMENT = 2
AVG_ROW_LENGTH = 16384
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'единицы измерения'
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы methods
--
DROP TABLE IF EXISTS methods;
CREATE TABLE methods (
  id INT(11) NOT NULL AUTO_INCREMENT,
  sort_order INT(11) NOT NULL,
  name VARCHAR(1000) NOT NULL,
  note VARCHAR(1000) DEFAULT NULL,
  is_deleted INT(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (id)
)
ENGINE = INNODB
AUTO_INCREMENT = 3
AVG_ROW_LENGTH = 8192
CHARACTER SET utf8
COLLATE utf8_general_ci
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы processes
--
DROP TABLE IF EXISTS processes;
CREATE TABLE processes (
  id INT(11) NOT NULL AUTO_INCREMENT,
  process_type_enum INT(11) NOT NULL,
  name VARCHAR(500) DEFAULT NULL,
  default_operation VARCHAR(500) DEFAULT NULL,
  default_executor VARCHAR(500) DEFAULT NULL,
  variable_name VARCHAR(50) DEFAULT NULL,
  default_norm_time DECIMAL(10, 2) DEFAULT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB
AUTO_INCREMENT = 14
AVG_ROW_LENGTH = 1260
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'типы процессов'
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы shipment_item_work_items
--
DROP TABLE IF EXISTS shipment_item_work_items;
CREATE TABLE shipment_item_work_items (
  id INT(11) NOT NULL AUTO_INCREMENT,
  shipment_item_id INT(11) NOT NULL,
  work_item_id INT(11) NOT NULL,
  count INT(11) NOT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB
AUTO_INCREMENT = 1
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'распределение отгруженных деталей по выполненным партиям';

--
-- Описание для таблицы drawings
--
DROP TABLE IF EXISTS drawings;
CREATE TABLE drawings (
  id INT(11) NOT NULL AUTO_INCREMENT,
  creation_date DATETIME DEFAULT NULL,
  sort_order INT(11) NOT NULL,
  name VARCHAR(500) NOT NULL,
  group_id INT(11) DEFAULT NULL,
  detail_id INT(11) DEFAULT NULL,
  additional_info VARCHAR(500) DEFAULT NULL,
  material_by_passport_id INT(11) DEFAULT NULL,
  material_id INT(11) DEFAULT NULL,
  measure_unit_id INT(11) DEFAULT NULL,
  code VARCHAR(255) DEFAULT NULL,
  mass_calculation_id INT(11) DEFAULT NULL,
  shruff_percent DECIMAL(10, 2) DEFAULT NULL COMMENT 'процент отходов',
  mass_with_shruff DECIMAL(10, 3) DEFAULT NULL,
  price DECIMAL(10, 2) DEFAULT NULL,
  shaving_price DECIMAL(10, 2) DEFAULT NULL,
  plan_calculation_id INT(11) DEFAULT NULL COMMENT 'плановая калькуляция',
  fact_calculation_id INT(11) DEFAULT NULL COMMENT 'фактическая калькуляция',
  calculation_price_manual DECIMAL(10, 2) DEFAULT NULL,
  equipment_id INT(11) DEFAULT NULL,
  method_id INT(11) DEFAULT NULL,
  width DOUBLE DEFAULT NULL,
  length DOUBLE DEFAULT NULL,
  thickness DOUBLE DEFAULT NULL,
  inner_diameter DOUBLE DEFAULT NULL,
  outer_diameter DOUBLE DEFAULT NULL,
  drawing_image_id INT(11) DEFAULT NULL,
  note VARCHAR(500) DEFAULT NULL,
  is_deleted INT(11) NOT NULL DEFAULT 0,
  customer_id INT(11) DEFAULT NULL COMMENT 'заказчик',
  secondary_customer_id INT(11) DEFAULT NULL COMMENT 'вторичный заказчик',
  fact_mass DOUBLE DEFAULT NULL,
  tech_note VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT FK_drawings_customer_id FOREIGN KEY (customer_id)
    REFERENCES contragents(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_drawings_details_id FOREIGN KEY (detail_id)
    REFERENCES details(id) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT FK_drawings_equipments_id FOREIGN KEY (equipment_id)
    REFERENCES equipments(id) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT FK_drawings_fact_calculations_id FOREIGN KEY (fact_calculation_id)
    REFERENCES calculations(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_drawings_groups_id FOREIGN KEY (group_id)
    REFERENCES groups(id) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT FK_drawings_images_id FOREIGN KEY (drawing_image_id)
    REFERENCES images(id) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT FK_drawings_mass_calculations_id FOREIGN KEY (mass_calculation_id)
    REFERENCES mass_calculations(id) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT FK_drawings_materials_bp_id FOREIGN KEY (material_by_passport_id)
    REFERENCES materials(id) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT FK_drawings_materials_id FOREIGN KEY (material_id)
    REFERENCES materials(id) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT FK_drawings_measure_units_id FOREIGN KEY (measure_unit_id)
    REFERENCES measure_units(id) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT FK_drawings_methods_id FOREIGN KEY (method_id)
    REFERENCES methods(id) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT FK_drawings_plan_calculations_id FOREIGN KEY (plan_calculation_id)
    REFERENCES calculations(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_drawings_sec_customer_id FOREIGN KEY (secondary_customer_id)
    REFERENCES contragents(id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 15
AVG_ROW_LENGTH = 2730
CHARACTER SET utf8
COLLATE utf8_general_ci
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы employees
--
DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
  id INT(11) NOT NULL AUTO_INCREMENT,
  sort_order INT(11) NOT NULL,
  code VARCHAR(255) NOT NULL,
  full_name VARCHAR(1000) NOT NULL,
  job_id INT(11) NOT NULL,
  note VARCHAR(1000) DEFAULT NULL,
  is_deleted INT(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (id),
  CONSTRAINT FK_employees_jobs_id FOREIGN KEY (job_id)
    REFERENCES jobs(id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 3
AVG_ROW_LENGTH = 16384
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'сотрудники'
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы material_arrival_records
--
DROP TABLE IF EXISTS material_arrival_records;
CREATE TABLE material_arrival_records (
  id INT(11) NOT NULL AUTO_INCREMENT,
  sort_order INT(11) NOT NULL,
  invoice_number VARCHAR(255) NOT NULL,
  supplier_id INT(11) NOT NULL,
  invoice_sum DECIMAL(10, 2) NOT NULL,
  waybill_date DATETIME NOT NULL,
  waybill_number VARCHAR(255) NOT NULL,
  material_id INT(11) NOT NULL,
  measure_unit_id INT(11) NOT NULL,
  price DECIMAL(19, 2) NOT NULL,
  count DECIMAL(10, 3) NOT NULL,
  forwarded_to VARCHAR(255) DEFAULT NULL,
  is_deleted INT(11) NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT FK_material_arrival_records_contragents_id FOREIGN KEY (supplier_id)
    REFERENCES contragents(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_material_arrival_records_materials_id FOREIGN KEY (material_id)
    REFERENCES materials(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_material_arrival_records_measure_units_id FOREIGN KEY (measure_unit_id)
    REFERENCES measure_units(id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 2
AVG_ROW_LENGTH = 16384
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'журнал прихода материала'
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы requests
--
DROP TABLE IF EXISTS requests;
CREATE TABLE requests (
  id INT(11) NOT NULL AUTO_INCREMENT,
  number INT(11) NOT NULL,
  reg_date DATETIME NOT NULL,
  ship_date DATETIME DEFAULT NULL,
  invoice_date DATETIME DEFAULT NULL COMMENT 'Дата счета',
  lead_time INT(11) DEFAULT NULL,
  customer_id INT(11) DEFAULT NULL,
  manufacturer_id INT(11) DEFAULT NULL COMMENT 'изготовитель',
  is_paid INT(11) DEFAULT NULL COMMENT 'Признак полной оплаты заявки',
  is_deleted INT(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (id),
  CONSTRAINT FK_requests_customer_id FOREIGN KEY (customer_id)
    REFERENCES contragents(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_requests_manufacturer_id FOREIGN KEY (manufacturer_id)
    REFERENCES contragents(id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 61
AVG_ROW_LENGTH = 3276
CHARACTER SET utf8
COLLATE utf8_general_ci
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы drawing_flowsheet_machines
--
DROP TABLE IF EXISTS drawing_flowsheet_machines;
CREATE TABLE drawing_flowsheet_machines (
  id INT(11) NOT NULL AUTO_INCREMENT,
  drawing_id INT(11) NOT NULL,
  sort_order INT(11) NOT NULL,
  machine_id INT(11) NOT NULL,
  plate_temperature DECIMAL(10, 2) DEFAULT NULL,
  cure_time DECIMAL(10, 2) DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT FK_flowsheet_machines_drawings_id FOREIGN KEY (drawing_id)
    REFERENCES drawings(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_flowsheet_machines_machines_id FOREIGN KEY (machine_id)
    REFERENCES machines(id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 16
AVG_ROW_LENGTH = 8192
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'Оборудование технологической карты'
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы drawing_flowsheet_processes
--
DROP TABLE IF EXISTS drawing_flowsheet_processes;
CREATE TABLE drawing_flowsheet_processes (
  id INT(11) NOT NULL AUTO_INCREMENT,
  drawing_id INT(11) DEFAULT NULL,
  sort_order INT(11) DEFAULT NULL,
  process_id INT(11) NOT NULL COMMENT 'тип процесса',
  name VARCHAR(255) DEFAULT NULL,
  operation VARCHAR(255) DEFAULT NULL,
  executor VARCHAR(255) DEFAULT NULL,
  var_name VARCHAR(50) DEFAULT NULL,
  norm_time DECIMAL(10, 2) NOT NULL DEFAULT 0.00,
  note VARCHAR(4000) DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT FK_flowsheet_processes_drawings_id FOREIGN KEY (drawing_id)
    REFERENCES drawings(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_flowsheet_processes_processes_id FOREIGN KEY (process_id)
    REFERENCES processes(id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 115
AVG_ROW_LENGTH = 273
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'технологические процессы'
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы invoices
--
DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (
  id INT(11) NOT NULL AUTO_INCREMENT,
  request_id INT(11) NOT NULL,
  is_deleted INT(11) NOT NULL DEFAULT 0,
  invoice_number VARCHAR(255) NOT NULL,
  invoice_date DATETIME NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT FK_invoices_requests_id FOREIGN KEY (request_id)
    REFERENCES requests(id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 1
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'счета на оплату'
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы payments
--
DROP TABLE IF EXISTS payments;
CREATE TABLE payments (
  id INT(11) NOT NULL AUTO_INCREMENT,
  request_id INT(11) NOT NULL,
  payment_date DATETIME NOT NULL,
  payment_doc_number VARCHAR(255) NOT NULL,
  is_deleted INT(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (id),
  CONSTRAINT FK_payments_requests_id FOREIGN KEY (request_id)
    REFERENCES requests(id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 1
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'платежи';

--
-- Описание для таблицы request_details
--
DROP TABLE IF EXISTS request_details;
CREATE TABLE request_details (
  id INT(11) NOT NULL AUTO_INCREMENT,
  request_id INT(11) NOT NULL,
  sort_order INT(11) NOT NULL,
  drawing_id INT(11) NOT NULL,
  group_id INT(11) DEFAULT NULL,
  detail_id INT(11) DEFAULT NULL,
  additional_info VARCHAR(1000) DEFAULT NULL,
  equipment_lead_time INT(11) DEFAULT NULL,
  count INT(11) NOT NULL,
  done_count INT(11) NOT NULL COMMENT 'количество изготовленных',
  price DECIMAL(10, 2) NOT NULL,
  calculation_price DECIMAL(10, 2) DEFAULT NULL,
  sum DECIMAL(10, 2) NOT NULL,
  material_id INT(11) DEFAULT NULL,
  note VARCHAR(1000) DEFAULT NULL,
  request_detail_state_enum INT(11) NOT NULL DEFAULT 0 COMMENT 'Статус строки заявки: 0 - новая, 1 - готова к производству, 2 - в производстве, 3 - выполнена, 4 - отгружена',
  is_deleted INT(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (id),
  INDEX IDX_request_details_drawing_id (drawing_id),
  UNIQUE INDEX UK_request_details (request_id, sort_order),
  CONSTRAINT FK_request_details_details_id FOREIGN KEY (detail_id)
    REFERENCES details(id) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT FK_request_details_drawings_id FOREIGN KEY (drawing_id)
    REFERENCES drawings(id) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT FK_request_details_groups_id FOREIGN KEY (group_id)
    REFERENCES groups(id) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT FK_request_details_materials_id FOREIGN KEY (material_id)
    REFERENCES materials(id) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT FK_request_details_requests_id FOREIGN KEY (request_id)
    REFERENCES requests(id) ON DELETE NO ACTION ON UPDATE NO ACTION
)
ENGINE = INNODB
AUTO_INCREMENT = 22
AVG_ROW_LENGTH = 2340
CHARACTER SET utf8
COLLATE utf8_general_ci
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы rolling_records
--
DROP TABLE IF EXISTS rolling_records;
CREATE TABLE rolling_records (
  id INT(11) NOT NULL AUTO_INCREMENT,
  sort_order INT(11) NOT NULL,
  rolling_date DATETIME NOT NULL,
  customer_id INT(11) NOT NULL,
  drawing_id INT(11) NOT NULL,
  material_id INT(11) NOT NULL,
  count INT(11) NOT NULL,
  note VARCHAR(500) DEFAULT NULL,
  is_deleted INT(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (id),
  CONSTRAINT FK_rolling_records_contragents_id FOREIGN KEY (customer_id)
    REFERENCES contragents(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_rolling_records_drawings_id FOREIGN KEY (drawing_id)
    REFERENCES drawings(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_rolling_records_materials_id FOREIGN KEY (material_id)
    REFERENCES materials(id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 2
AVG_ROW_LENGTH = 16384
CHARACTER SET utf8
COLLATE utf8_general_ci
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы shaving_records
--
DROP TABLE IF EXISTS shaving_records;
CREATE TABLE shaving_records (
  id INT(11) NOT NULL AUTO_INCREMENT,
  sort_order INT(11) NOT NULL,
  shaver_employee_id INT(11) NOT NULL COMMENT 'Сотрудник - обрезчик',
  shave_date DATETIME NOT NULL,
  drawing_id INT(11) NOT NULL,
  maker_employee_id INT(11) DEFAULT NULL COMMENT 'Изготовитель',
  input_count INT(11) NOT NULL COMMENT 'Входное количество',
  flaw_count INT(11) NOT NULL COMMENT 'Количество брака',
  is_deleted INT(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (id),
  CONSTRAINT FK_shaving_records_drawings_id FOREIGN KEY (drawing_id)
    REFERENCES drawings(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_shaving_records_maker_employees_id FOREIGN KEY (maker_employee_id)
    REFERENCES employees(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_shaving_records_shaver_employees_id FOREIGN KEY (shaver_employee_id)
    REFERENCES employees(id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 2
AVG_ROW_LENGTH = 16384
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'Журнал обрезки облоя'
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы shipments
--
DROP TABLE IF EXISTS shipments;
CREATE TABLE shipments (
  id INT(11) NOT NULL AUTO_INCREMENT,
  sort_order INT(11) NOT NULL,
  date DATETIME DEFAULT NULL COMMENT 'дата отгрузки',
  request_id INT(11) NOT NULL COMMENT 'заявка/счет',
  is_replace INT(11) NOT NULL DEFAULT 0 COMMENT 'признак замены брака',
  is_addition INT(11) NOT NULL DEFAULT 0 COMMENT 'признак довоза продукции',
  is_deleted INT(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (id),
  CONSTRAINT FK_shipments_requests_id FOREIGN KEY (request_id)
    REFERENCES requests(id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 1
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'отгрузка';

--
-- Описание для таблицы shipped_product_records
--
DROP TABLE IF EXISTS shipped_product_records;
CREATE TABLE shipped_product_records (
  id INT(11) NOT NULL AUTO_INCREMENT,
  sort_order INT(11) NOT NULL,
  request_id INT(11) NOT NULL,
  pay_doc_number VARCHAR(255) NOT NULL,
  pay_doc_date DATETIME NOT NULL,
  advance_sum DECIMAL(10, 2) DEFAULT NULL,
  shipment_date DATETIME NOT NULL,
  tax_invoice_number VARCHAR(255) DEFAULT NULL,
  sum DECIMAL(10, 2) NOT NULL,
  equipment_sum DECIMAL(10, 2) DEFAULT NULL,
  equipment_id INT(11) NOT NULL,
  employee_id INT(11) NOT NULL,
  note VARCHAR(500) DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT FK_shipped_product_records_employees_id FOREIGN KEY (employee_id)
    REFERENCES employees(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_shipped_product_records_equipments_id FOREIGN KEY (equipment_id)
    REFERENCES equipments(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_shipped_product_records_request_id FOREIGN KEY (request_id)
    REFERENCES requests(id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 1
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'Журнал учета оплаченной и отгруженной продукции'
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы shipping_order_records
--
DROP TABLE IF EXISTS shipping_order_records;
CREATE TABLE shipping_order_records (
  id INT(11) NOT NULL AUTO_INCREMENT,
  sort_order INT(11) NOT NULL,
  order_date DATETIME NOT NULL,
  customer_id INT(11) NOT NULL,
  drawing_id INT(11) NOT NULL,
  count INT(11) NOT NULL,
  is_deleted INT(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (id),
  CONSTRAINT FK_shipping_order_records_contragents_id FOREIGN KEY (customer_id)
    REFERENCES contragents(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_shipping_order_records_drawings_id FOREIGN KEY (drawing_id)
    REFERENCES drawings(id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 4
AVG_ROW_LENGTH = 5461
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'журнал распоряжений на отгрузку'
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы work_item_package
--
DROP TABLE IF EXISTS work_item_package;
CREATE TABLE work_item_package (
  id INT(11) NOT NULL AUTO_INCREMENT,
  date DATETIME NOT NULL,
  employee_id INT(11) NOT NULL,
  block VARCHAR(255) DEFAULT NULL COMMENT 'Участок',
  PRIMARY KEY (id),
  UNIQUE INDEX UK_employee_work_item_package (employee_id, date),
  CONSTRAINT FK_employee_work_item_package_employees_id FOREIGN KEY (employee_id)
    REFERENCES employees(id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 5
AVG_ROW_LENGTH = 8192
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'индивидуальный наряд'
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы shipment_items
--
DROP TABLE IF EXISTS shipment_items;
CREATE TABLE shipment_items (
  id INT(11) NOT NULL AUTO_INCREMENT,
  shipment_id INT(11) NOT NULL COMMENT 'отгрузка',
  sort_order INT(11) NOT NULL,
  request_detail_id INT(11) NOT NULL,
  count INT(11) NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT FK_shipment_items_request_details_id FOREIGN KEY (request_detail_id)
    REFERENCES request_details(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_shipment_items_shipments_id FOREIGN KEY (shipment_id)
    REFERENCES shipments(id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 1
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'строки отгрузки';

--
-- Описание для таблицы work_item_package_machines
--
DROP TABLE IF EXISTS work_item_package_machines;
CREATE TABLE work_item_package_machines (
  id INT(11) NOT NULL AUTO_INCREMENT,
  work_item_package_id INT(11) NOT NULL,
  flowsheet_machine_id INT(11) NOT NULL,
  full_working_time INT(11) NOT NULL COMMENT 'время работы пресса в смене',
  package_working_time INT(11) NOT NULL COMMENT 'свободное время пресса в смене',
  PRIMARY KEY (id),
  UNIQUE INDEX UK_work_item_package_machines (work_item_package_id, flowsheet_machine_id),
  CONSTRAINT FK_work_item_package_machines_flowsheet_machines_id FOREIGN KEY (flowsheet_machine_id)
    REFERENCES drawing_flowsheet_machines(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_work_item_package_machines_work_item_package_id FOREIGN KEY (work_item_package_id)
    REFERENCES work_item_package(id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 4
AVG_ROW_LENGTH = 8192
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'оборудование по индивидуальному наряду'
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы work_items
--
DROP TABLE IF EXISTS work_items;
CREATE TABLE work_items (
  id INT(11) NOT NULL AUTO_INCREMENT,
  work_date DATE NOT NULL COMMENT 'дата',
  sort_order INT(11) NOT NULL,
  drawing_id INT(11) NOT NULL,
  request_count INT(11) DEFAULT NULL COMMENT 'количество по текущим заявкам. Рассчитывается каждый раз при сохранении (BL)',
  task_count INT(11) DEFAULT NULL,
  done_count INT(11) DEFAULT NULL,
  rejected_count INT(11) DEFAULT NULL COMMENT 'количество брака',
  note VARCHAR(500) DEFAULT NULL,
  employee_id INT(11) NOT NULL COMMENT 'Исполнитель',
  flowsheet_machine_id INT(11) DEFAULT NULL,
  is_parallel INT(11) NOT NULL DEFAULT 0 COMMENT 'признак одновременной работы',
  PRIMARY KEY (id),
  UNIQUE INDEX UK_work_items (work_date, sort_order),
  UNIQUE INDEX UK_work_items2 (work_date, drawing_id),
  CONSTRAINT FK_daily_work_package_details_drawings_id FOREIGN KEY (drawing_id)
    REFERENCES drawings(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_daily_work_package_details_employees_id FOREIGN KEY (employee_id)
    REFERENCES employees(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_work_items_flowsheet_machines_id FOREIGN KEY (flowsheet_machine_id)
    REFERENCES drawing_flowsheet_machines(id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 22
AVG_ROW_LENGTH = 8192
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'Строки дневного наряда'
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы work_item_request_details
--
DROP TABLE IF EXISTS work_item_request_details;
CREATE TABLE work_item_request_details (
  id INT(11) NOT NULL AUTO_INCREMENT,
  work_item_id INT(11) NOT NULL,
  request_detail_id INT(11) NOT NULL,
  sort_order INT(11) DEFAULT NULL,
  task_count INT(11) NOT NULL DEFAULT 0,
  done_count INT(11) NOT NULL DEFAULT 0,
  rejected_count INT(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (id),
  CONSTRAINT FK_work_item_request_details_request_details_id FOREIGN KEY (request_detail_id)
    REFERENCES request_details(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_work_item_request_details_work_items_id FOREIGN KEY (work_item_id)
    REFERENCES work_items(id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 138
AVG_ROW_LENGTH = 2730
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'привязка строк дневного наряда к строкам заявок'
ROW_FORMAT = DYNAMIC;

DELIMITER $$

--
-- Описание для процедуры test
--
DROP PROCEDURE IF EXISTS test$$
CREATE DEFINER = 'root'@'localhost'
PROCEDURE test()
BEGIN
  SELECT * FROM calculations c;

  SELECT * FROM drawings d;

  SELECT * FROM requests r;

  SELECT * FROM request_details rd;
END
$$

DELIMITER ;

-- 
-- Вывод данных для таблицы additional_infos
--

-- Таблица rti.additional_infos не содержит данных

-- 
-- Вывод данных для таблицы calculations
--
INSERT INTO calculations VALUES
(1, 2037.62, 123.00, 234.00, 345.00, 456.00, 567.00, NULL, 50.80, 636.94, 57.90, 14.73, 27.10, 27.79, 4577.88, 33.33, 1.67, 4612.88, 276.77, 4889.66, 342.28, 5231.93, 418.55, 5650.49, NULL),
(2, 11.48, NULL, NULL, NULL, NULL, NULL, NULL, 0.15, 33.33, 3.03, 0.77, 1.42, 1.45, 51.64, 33.33, 1.67, 86.64, 5.20, 91.84, 6.43, 98.27, 7.86, 106.13, NULL),
(3, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL),
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 50.00, 1.00, 1.00, 1.00, 1.00, 1.00, 1.00, 0.76, 120.00, 10.91, 2.78, 5.11, 5.24, 200.78, 16.67, 0.83, 218.28, 13.10, 231.38, 16.20, 247.58, 19.81, 267.38, 'sd gfds hgfdgh '),
(6, 19.32, 100.00, NULL, NULL, NULL, NULL, NULL, 1.61, 50.00, 4.55, 1.16, 2.13, 2.18, 180.94, 16.67, 0.83, 198.44, 11.91, 210.35, 14.72, 225.07, 18.01, 243.08, NULL),
(7, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL),
(8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- 
-- Вывод данных для таблицы constants
--
INSERT INTO constants VALUES
(1, 1.35, 2.12, 3.90, 4.00, 5.00, 6.00, 7.00, 8.00, 10.00, '2016-01-04 00:00:00', '3000-12-31 00:00:00', 0);

-- 
-- Вывод данных для таблицы contragents
--
INSERT INTO contragents VALUES
(1, 1, 'З1', 0, '1', 'Мухамедшин', '1', '89263706340', '1', '1', '1', '4700181012384234980', '1', '1', '1', '1', '1', '1', '1', '1', '111', 0),
(2, 2, '2', 0, '2', '2', '2', '2', '2', '2989867547636', '2', '2', '2', '22132346243653456', '2', '2', '2', '2', '2', 'email@server.ru', '22222', 0),
(3, 1, 'П1', 0, '11', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', NULL, 0),
(4, 1, 'G2', 1, '1', '1', '1', '1', '1', '1', '2', '2', '2', '2', '4', '4', '4', '4', '6', '7', '8', 0),
(5, 1, 'Исполнитель1', 2, 'Адрес', 'Директор', 'Лицо по доверенности', 'Телефон', 'Основание', 'ИНН', 'КПП', 'Расчетный счет', 'Корр счет', 'ОКВЭД', 'ОКАТО', 'ОКПО', 'ОГРН', 'БИК', 'Банк', 'емэйл', 'Примечание', 0),
(6, 2, 'Исполнитель2', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- 
-- Вывод данных для таблицы details
--
INSERT INTO details VALUES
(1, 1, 'Detail1', 'fvsdfm dsf;lvkmdsf g;slkfdv salksd fds g;lslkfd ;aslkdjf ;fds', 0),
(2, 2, 'deTail132', 'sfv sgth fhg j fe''r;lfq''fr ', 1);

-- 
-- Вывод данных для таблицы drivers
--
INSERT INTO drivers VALUES
(1, 1, 'газель', 'а100аа777', 'Бикмамбетов', '999999', 0),
(2, 2, 'ывпа', 'фывпаыпав', 'фывпаыфва', 'фываыфвавыф', 0);

-- 
-- Вывод данных для таблицы equipments
--
INSERT INTO equipments VALUES
(1, 1, 'Оснастка1', 1, 1.123, 0.00, 12, 1, 12, '1ыфв сфыва ыфавп ыва ывап ывап ывап ывап выа выап выап выап выап ывап выап вып', 1),
(2, 1, 'Новая оснастка', 0, 500.000, 50.00, 2, 3, 6, NULL, 0),
(3, 2, 'Íîâàÿ îñíàñòêà', 0, 0.000, 0.00, 0, 0, 0, NULL, 0),
(4, 3, 'Нsadsdfvsdf', 0, 0.000, 0.00, 0, 0, 0, NULL, 0);

-- 
-- Вывод данных для таблицы groups
--
INSERT INTO groups VALUES
(1, 1, 'Группа1', 'Примечание для группы 1', 0),
(2, 2, 'Group2', 'Note for group 2', 0),
(3, 3, 'Group3', 'Group2+3', 0),
(4, 3, 'wergerwtg', 'etrherthgtery', 0),
(5, 4, '321654321', NULL, 0);

-- 
-- Вывод данных для таблицы images
--
INSERT INTO images VALUES
(1, NULL),
(2, x'FFD8FFE000104A46494600010101006000600000FFDB0043000503040404030504040405050506070C08070707070F0B0B090C110F1212110F111113161C1713141A1511111821181A1D1D1F1F1F13172224221E241C1E1F1EFFDB0043010505050706070E08080E1E1411141E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1EFFC0001108012C011E03012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00E2B50B9BB5BF9D45CCD81237F19F5A80DCDD9FF97A9BFEFB3563528FFE2613907FE5A1FE755F61F4AC876163B9BC07FE3EA63FF033527DAAEFFE7EA5FF00BECD242953F94BB41E0E690880DCDE63FE3E65FF00BECD466E2ECF1F699BFEFB3561A35C700546176B608A69008B71780FFC7CCDFF007D9A5FB55E7FCFCCBFF7D9A93CACF4A0C38E4E295869117DAAF319FB54BFF7D9A16EAEFA9B997FEFB35208D4F3DA831A76A634867DAEEFFE7E66FF00BECD28BBBCFF009F9987FC0CD06318E94E545240072680156EAF0649BA9BFEFB34D6BBBB38FF00489BFEFB35288D318A6343819148AB082E6EC8FF008F99BFEFB34E173747A5CCDFF7D9A548F0BD339A58D0063DE90DAD04927BD51FF1F52FFDF66A3FB4DDFF00CFD4DFF7D9A9DD831038C77CD432CF67102649A35C7AB54BBF50516235DDD8EB7528FF00819A55BBBBC645D4A7FE046B3AF35BD29300DC07C7F7173501F125A7020B4B997D76C74AE86A2D9B515DDE48FB45C4C0FF00BC69CD3DE872A6EA5CFF00BE6B097C428ADB974EBEFF00BF7522F89ED1A53E75ADC467D4C669F3AEE1C92EC6C9BABD5E0DCCBFF7D1A05C5E30CFDA651FF033542CF59D36EE4DAB709BBB29E0D698D8A485208CF6E68BDC7CAFB11F9D77DAE66FAEE34F59AEC75B89BFEFB353A903AA9FCA9C63C8071806AB95072D8ADE7DD83C5C4C3FE0668FB4DDA9E2EA5FFBECD4A6320E29CB10FEED55B4134566BABBCF3752FF00DF6690DD5D0FF979971ECE6AD34285B250669AF6EA57814919B4546B9BAC13F6997FEFB3447737ACB81752FF00DF66A7300FEEE6882250E46314D858AAF737C0FF00C7CCB9FF007CD3567BDCE4DD4DFF007D9ABF340BBFE515098883839A426880DC5E1EB7331F4F9CD396E6E3A7DA66CFFBC6A431D11C4493C532493514637D3F1FF2D1BF9D4223FAD6BDF5B937B31C0FF587AFD6A136CD9ED8A19467ECC53D10E3A55B7B7C0E695212464034024D957CB24F4A6BC3CD5D589B3D6868980CD34368A8A0A8E9498DDC1EF56BCB3DC50139A684565886306808A3A0ABA62E3A1A6F927FC8A0A8AEA55DAADF2E0F348B084E0F07BD5A31E39C555D5E41159DC5D648091F03D4D27B5CD16A676A9AC585BB846DECEBC92A3815A105D417968B341F3291D6B03448524B4692E1433DC0F98F5C034BE14B9B7B5375657932AAC72FCA49C715CDEDA376BB1BCB0D351E6EE742847939C551BFD4AD6C62DDBB32B7441D6AAEB3AD5B46BE4E9EFE74CE71F29CE0555B1D3F73F9F71979C9C927B7B5454AF182B9787C34AAE8910799ACDF65A3916D213EA3E622A48744B50C1E769AE1CF5DC78AD555038A9170071C579D571D27B1EED0CB69A5EF9521B3B608A12DA28D47FB3CD5858A38C7C83F4C54981E9487B8AE2788A93EA762C25286C80300720734F558A4C97407FE034C5C8CD38310319EB53CF2EE57B282D2C54BCD2B4BBA277DBA16F551835416C2FB4F937E977CE00FF96529DCB5B6A7D314A32C739E95AD3C5D489CD57034AA6DA152DB5F9A13E5EAB6C206E9E628E0D6DC32C7710AC91302A7A10739ACBD41236B52668C48807391591134BA7C66E6C2667B6072D10ED5E951C6736E78B88C0CA9BBA3B058891938A76CC7F0D41A65CC3A95825C46D88FB9C739AD6B654F2BEF29FA9C135E82A97573CE71699402027DE9EB6C0F278FA55B7853AA039FA8349E43A8F998F3E82AD3B92D14E4838E38A8C5B9CE7157644C1C156FC68442547A6684C9E57B94FCA39F7A8A58487E39AD1751BC8C5218B730A7D096503161791CD091F5E2B53C807069A918DE54AF4142D41A2DDFDA937B36178DE6A24B6C646DAE8AFAD4C7752E71F78D57312819E0FB5742816918AD6A0FF06453E3B640800422B5FC95618030690DA6D504138A8711D8C8368A1B2538A3ECA99FB82B64C07A004D46D0ED7036934D442C64BDAA83F70542F6E37850B815BAF0FCBD2ABBDB90C1B38C54F230E54654B6F86DAAB4D11E14938C8F5AD4BB31C1119A428AA07249C0AE235CF13B5CB35AE8F192CBC194F4FC2A252E5DCD29C6EEC8D2D5AEE0B04F32EA78D14F206EF988FA5725AE6B173AA69F345636A21B738CC921E481ED441A71693ED37723DC4E7FBC7207D055DB88124B46848E4A139E9D2BCCAD8E4B447A54F2EA925761A6AAAE9B08C73B0722B12EE0B65D4AE9E58D59B6E4061DEB4B47955AD15546190E08ACFD517CEF11450A29C3AE5AB894DB9367A8E92E45168BBA369D1C29E7B4615E4E463B0AD64183914C439007038031E94E5E062B9EACDC99D5428C69AD106083D29467D29D4A33591D00A0919C50C36F5C0FA9A7AE76D32E614B888A499C76C1C52484C1012A42E1BDE9D1C6D8CB8E6B21B47B8858BD8DF4C8DE84E4551B8D6358D324097568B321E0488715A2A7CDB3309E2230F88E991772B151D2A95FC178D87B570A472558E3350E97AEC4F1E4C6F193D495C81F8D6843344C379915C1E983529383D514A5CEAE9946D755612186FADC45918C1E43567EA114FA7DCF9D6BB4DBDC7CAD9E8B9EE6B7E78E1B9B62B2441874C1AC4BD7B8D1E2CB832DA1EAA464A56D4E4AFA1C75E2DAD4F44F08FC2C84E9D1CD2788E79229B1205B5C6D19ED9AE9A3F857E1CC8F39F529DBD7ED26B8CF837E2C4D32F9346B893CCB0BA1FE8F2337FAB6CF4AF7085B7465BEEFD3BD71627178AA552D17A1C8A8537D0E067F859E1D39FB3DC6A76E7D56E5B3599A87C34D4631BF45F135C129CF9572B907F1AF542EC5739FD29A48C72A0B7AD62B36C42D64C2786A6D6C7875C5D6A5A45D2597896C0DA39388EE54E6293F1AD484452B6D8D81E33F2F20D7A8EB36167AB593E9F7D6B1CD04A318719DBEE2BC7EEAC2E3C19E2A5D32577974FBAFF8F6918FDDFF0064D7AF81CD5555CAF73CDAF87E456468ADB6E0C76E39A6887D8FE55AFE48CB6DE4F518A8FC966CF15F4316A4B438796C6788B03EED3047873F2E7E95A3F6763EBD6A68ACF04E724D528D8968D3D4C66EA4E83E6355C403AE3F2ABF7C8A6E2427FBD48AAA48E2BACD4A8B1A8E7069EE80A0E2A60A39A1506CF7A9B015E3C1FE0A26519CED19AB49B483F28FAD579C1E38EF40104C802648ACBD5EFAD34FB66B8BC95638C7AF7F6157F56BC82C2C9EEAE5D44683241AF24D77519B5FD47CD919D2D118F971E783E86B92B5650B9A53A529B56175FD62EFC4171E582F059AFDD4E85A990C4A9184081028E83BD2808A416E1C0C123BD3AE2411425DB031EB5E1D7C54E6EC8FA0C360E305762A653F8A90B808E0B727A66B3924BABD2445F220EE29EFA4DB91BA6BB77F62D5CCA37D5B3A6559DFDD4574BC8B4FD47920239E79E335A515BC6D7497C0EE6DBC1F515461D234B9C6C656DA3B86EF5A96D1089046BBB627033E94E525B21535293BB25239057F1A7A8A4238C91C53C0ED5849D8ED5A053D46453029CE2A40A6B3E60153A62908A752819ED4730EC3530B9F534D786364C3207CFA8A9304534237AD52992E9C5EE67A5A5C69F30BBD3CA0C1CC9038CA483E95D3E91A2E81E3047FEC899B4AD5D0664B53F758FB0F4AC82AD9A8648A482EA3BDB276B7BD88EE8E453827D8FAD294DB39E74797E126D6B4DD5FC3F3083558088C9F966504A1FC69B3AADDDB04601E371CFBD76FA6FC49F0E5FE806D7C5511FB50CACB0884B87FF685721ABC1A44B2BDEF853525BCB4CE5AD482248FE80F6A4A52BEAAC63ED925CB238CBAB57D36FB6C4C5177064F639AFA23E16788175EF0EA34B2837300D92293CFB1AF11BF10EA1646E95BE68FEF2E395FAD6EFC1FBE9B46F1E47632B1586FE2DCB93C74C8AD7134E35A95DEE8E48DA27D00CD818A4E141DECA83FDA6C5654B7F77AA5C1B5D02DBCF653892E1C6224FC7B9FA55F4F87F6373FBDD6EE6EAFA66E587985507B0515F391A4FA9ADE295E4C955E366C2CAAD81D981AE5FE27E8CBAA786A760BFE956A3CF848EA08AD5D6BE1AD843612DCF8667B9D3EFE25DE804A592423B107D6A3F0C6A3FDB3A106B9842CE03437283B30E0D74525ECA4A5122718CA2DA396F095E47ABF87EDEF15479A17638F71D6B416DD4100804E7A8AE77E1844146B16B19658EDEF9800476CD76B24084FCB9E2BEF32F939C753C0AB1E591556C918641008A12C89270C0D5A8570594FE74E8A3672403D2BD3489452BC5CDD498E9BA9B525D7FC7D4BFEF1A8D6AD2B9286A83CFD69CB819A7014797CF34F97B8EE22F0A7355A47C6E695804519CFA0A9657C2E315C7FC44D7FEC3A4FD861FF008F9B9055477C773512692B9718F33B2390F1BEB2FACEB4F650BB2D8C18DD8FE335512340A00038E83DAAAD95B98E23BC8663D4F735772703E95F378CAEE4DD8FA2C161F9629B435D0301902B375A265BDB4B573B55FA9F5AD553B7E6E3F1355354B437DB191BCB78F95239AE084ACF53B6ADEDA0B70F158C5855C103F3AC167BCD56E043BCC7083FC3D6AD5FC26CE00F3CAF3CF21DA15BB56AE956A2DAD97781BFB9AD972C5731CAEEDD82D2DD6D556350780393D4D47A96A30D90066F370DD020CD5D95D49F71D0D645EEB96B692147B69E4F5F938ACD2E7773473E45BD8D7F0CC57DE2098436377A7DBB9FBA27930C7F0AEAFF00E15DF8BD90CA2FB4B976F456054E6B9BF02E912F8BB5082EAD4D9D8DBDB481D98B8F35B1DB15EF70A46A8AA13EE8C31CF5AE5C45754593ED9BD99E1DA8E87E2AD2977EA1A479910FF9696ADBC7E555A0B88648F1B8A49DD1B8615F417CB8E9D7B573DE23F06E8FAE42E5ADD60BA3CACF18DA54FF005AE38E3E9CA569234F6AE3A9E46090A323AD3C74CE38A4D7F49D5FC2F7CB0EA7FBFB36388A70383F5F4A68C901A26DF19E735DB64D5D1D54EA29A24A7638A867B986D555A4751C8EB530757DD26700F403A54169A6EC33030726A32558ECCE08A7B0EF9C8F6AC3D584D657D1EA2AC5E2276BA03D07AD546377626A4B950FD774C3222DE4391344416C1C6E51D457A9780FC15E0AD4AD74FF0011E94B70B749CC9FBCC8DD8E5585709692C57512BAFCCAC3207B0AE83E176AEDA3F89CE94EC56D6F7E78C760D4EA55AAA0D23CEAD46137CC8E9FC5BF0B74DD56F1EEF4ABE7D3679F227555CA37E1DAB1FC71F0FADA25F0FBDADD496EF6FF00E8D34E3E5CFA1AF59F976E3A13C9FA567789ECBEDDA05D47F2B322F991FB11CD79EB1D3BA473A8AD8BFF000A2547F08AD998F12D9C8D04847F1E3BFE35D70271D7F0AF3DF81372F79E1EBEBA6054CB727F31D6BD0D42E39EB5957BDEECCE5A49A141DAE32300F7AF36D2E1161E33D774D45C79AE2E100EC0F5AF48249273D315C178A55ADBE23DADC20DA2E6C9813EA56A69BBA34A6F492F238AF86417CDF111619FF4F6E6BAE0C5908038AE47E14217D335498B7335F4873EBCD7651A85523209AFBECB57B87895B59112A0032475A9ADE3C938A6363000A96DCF271CD7A6643E4F0A6B73CCD245685549CE5881527FC215AEEC0CB1479EE37D7657FE2348EE5AD9658C6D009E73DA8D27C4715EB8036EC5E3938269F3092671773E0EF11226F5B266FF00758555B7F0DEBB35C25BB69F32393805BA7E26BD486B91967F2D0E23E09278A68D64CEE163438FE27CF028E663B33918FE1F2A217D435248B6AEE60A38007D6BE68F1ABC77BE37BA9A297CD820731C273C1038CD7D05F1DBC591E91E157820B81F6BBB2628B07271DEBE6DB64C286E4B75C9EF5E7636BFB38D8F472FA0E4EE3CAB063918CF6A72027F0A5662C734273935F3B36D9F471D2360DA3BF4A180038CD2F7C50CBC119ACD13231F528D67D6608589628BBAB6B7111AAB283DAB26D97CEF124D9C6444315B0C76B859171D81AD26F4B18D34AEDB11235C9CA919F6A3620057CB523DC53D8B807B9ED48A588E56B0D51D0D41A28BE9CB1DC2DD5948F65748772C9136067DC57A1780FE213C9769A2F88A311DEB80B15C9FB928F73EB5C2CF78914C216214FA11D68BB820BA802C89B49C1523AA9F5151560AAC6D3399D28AD627D0DBC1E9D71D6B8CF1E78C6F345BB4B1D2ED927B8DA1E4F338551E954BE15F8A65BCCE85A9B8FB641FEADBFE7A2571DE3EB9965F18EAB1C4E4B492244A73C8E9D2BCEA383BD5B48C652D2C775E14F12E97E3DD3AEF48D4AD42DCC6B8745E473DC1F5AE135DD06F3C27AC9B1B82F2594BCDBCBDB1E86BD8FC2DA1D868BA45BC5676D14726C1BE4083731C773478CB4087C47A13D948424AB968DFB83DAB6862234E7CB15A0529B8B3C3753B18352B668A6381FC2DEF587A5EA379A7DD369D7A0346870B2638C56F462E2D669B4FBE52B3C0C57078CD41A85BC0678EE66188948594119E2BD18CD38D99D528EAA48BC8EAC04A08287A62A3B9B78A7DE920051D292F6CA7D13508A19887D3EED77DACDD883DAACB2054C0E72720FB5637B6A8E8BC671B1CC6897CDA5DFCBA7DC0C440E118F7CD6D6A734B6EB0EA507CAD0488C87F1E6960D3EC2F7C476D05FA62DEE4F9464CF2AC7A11573C49E13F10E8F7106993A2CF613CEB1C7763A22E78CFBD6CE5191C329FB37CACF78B1B8373A75B5C0EB2C4AC7F2AE4355D5AE6DEF35D4590E5CAC302E782C463FAD7576BE4D86931EF7C2DBC203BF6C01D6BCE7C1D2C9E26F16CB2EC26D2DEE0CAF27F0B107E515E22A4DCD9116B567A17C103F67F0B5C583A2A4D6D70D1B81EA6BD017691CF515C27C3A0B1F887C410703F7EB263EB5DE11EC28AADC8E6A9F1B117041AE07E2A4A2CEFF48BF2C14A091327A72BD2BD014E3E5079AF36FDA2656B6F04C37D1852D15C0C647AF14A946FA045DA443F05FC23AA5DF84E1B84844515C4B2481E4E0905BD2BBA6F02DCC6A585F44C4F62300555F06F8A0C7E11D26D6DE22A4DAAF20F3F955A927D5AEA432899A3047D6BF43C0457B2563C79DDC995DFC13AA32E6196097D70715A1A67816F2443F6878A13F5CE6AEF87EE26B424DCDD4BF3760BF29AD0BAD465187575556ECCD8AEDD4C5DEE7846A2E2DF5872F705833619B3D2B4A1D56C2C8016DBA76EA3071599E224827D45E2B7756F9CF2BDEA8CCDFD9309775064E8A4F38ABB0F999D2D86A57B1FDA6E4CC544833E5134963AEEB120748E66450738C75F6AE6B4CD5483BE6FDE34BC64F6ABD7FAC476168EC98042EEDD8E9532765735A6FDEB1E73F13F569B56F18AC5274B68B057FDA35908C0023A550B6BA9350BFB9D4246DCF3C87E63E956C77AF9AC6CEF33DDC046D7240734E4E8698AA1BBE29E0E38AE16CF485EF9EF4E8CE4127B5228CB019C525CC9F67421577C8C30AA3AB1F6A95B9325A1950CD141AFDC3C8E10795919AD9D26CF5ED7893A3E9325D276964F913F335D2F81BE17A6A0D16B5E2579158F296A38E3B06AF608208ACE0486D1161890050AA38C7A56588C653A6ECB538D54927647854DE16F1BDB42649B4247503911CC09AC8B5BC2B3B5BCA925BCE3AA48B822BE8D2C8395FBD9CF15CAF8FBC2569E23D3DEE224582FE1198E44182C7D09AE6863A153465464EFA9E3F7D682F1763E377556C551D3AE24172F6375C3C7C29FEF0AD0B479E3964B3BC8FCBB984ED71543C476F2ADBADF5B8FDF46D9FA8AF42167EEB35968AE5CB8B9934FD42C759B62564B7719C775F43577C4989FE215B4C3EE5DCB14DEDDAB205D09AC65B7BB5686531670C3D7B8AEB97C3D7F7965E10D62088C8639024F81FC23A1349B507A9CCD5E5747B3C44B44B9EA00A5F98B0E4E29572060E33ED4E1F77DEBE76AB4AA363823CF3E2BF870CC22D6EC632678C62751DD477AF3E8FCBBCB12A7A3021B3D8D7D0585903248A1D08C329E84579AF8C3C017705CBDF7869D1FCCC96B57E02B7B57661F1492E5933A6134BDD641E0DD3E0F16FC3D9748B85CC967232C2E7AA9ED8AE4FC8BBD2EFCE95A846EB3C2300B0C061EA2BD4BE177876FB40D29D7515549EE24F3248D4E76D6CF8B7C2DA5789EDBC9D411F7AFFAA951B6B8FC7D2B57888C6A5BA1973B8C8F10BF205C5A1FE2170985C7DEE6BDE351B0B7D5B473A7DC46DB648C6003CA9C641AE474BF8590596AB05E5CEB1737D1C0DBA38245000FC7BD7A1A26003919550071E95388AD06972B22AD5BA3E64F8BBE32F135984F09BC8D6F05A8C48E0F328ED5DD7C03F12DA49A2DB6892C3E55C39DEAE07127B93EB557F695F0A0BE82CB58815633BC453C87EEA824609F6AE334CB0BEF0B594CF69A85BDD4BA6CC8EB35BB65591B92057B385A54EBE1FDD5A9E54AACA15AD3D99EFF00E0BBB8E1F897AC58CB3223C90C6EAACD82DF4AF4579006C6471EF5E52BA669BE30F0EDA6A6A1EDEF4C41E2B94255D1B1EBE9ED5D07C35D76F6E45D685AE81FDA963FC6703CD8FB30AF17114941B89E834A6B991DC2B7CC4FB579E7ED036D25E7C3A92DE204B9B88C000649F9ABD0E31EA7B5735F11E6860F0F299582A35C46093FEF57252E68CD196972F782B424D3B43B45BCB63E6AC4A036EC9E95B667568DD6249028EECA3155D3C67E19B2D3D11AFD64640014894B367154D3E21E81764410C776ADBBEF1880FEB5FA5E12368248F12526DB2C094C119965279385C9E054965A4EA7A9DC34D363C80B843D326AF417BA55FAAA4AB2947E41D98FE55CCFC43BBD7A3BB862B269ADF4E55FDD88724B1F535B896ACF305D1DFEDCF23DCC48779FBCFD6AFCFA5E913C8B1DFEAB144CA33B7CC1CD63EA7756F7373310DB06E3835857319F33724CAFE84569615D1D63687A2A4C4DB5C3B720839CE056578EA28ADBC337B2DAE18A45B5999B1D7D05665A5F5C5BC858E4E7B8358FF11F522FA1ADB1724CB2A8619EA2B1AAEC8D293BD4392D2A2DB651F38DC38AB9C29C54366084C76038153823393D6BE5B14EF367D661A095343A3FBDC53FB9A4C0001CD1BB04E7BD731D3B21C080724E315B9F0CB456F10EBCDA95C2916762C0C7FEDB0AE62F44B73241616D9F36E1F60C75C1AF7AF07E8B1685A0C1631A805172C7FBCDDEB9F115142073D597636223953EF4E20F7A62E17A53F35E1C9B6CE7B8D0A03EFEF4E60482A3BF5A426937927DB1517B6C33CCBE2F68A2092DF5FB48C823E5B9C0E08EC6B88BBDB71A7CC11B72B213C57B6F8C0DA7FC2377D1DE05F2DE12141EEDDBF5AF0B5D3F5ED3A2FB04DA4DE492483F70D1C79520F4248AF73033E6859EE8BE75CBA9E8FE0CF0E689E26F04E973EA764B3CA80AE41C1500F424575EF7FA768C2D74B7516D1F091965F971E99A8BC05A5CBA3F862D2C66505D137CA7BE4D52F11DB6AE5DC36996FABE9CE7E781982C8BEEB5CB5AA3954693D0C159B3A90CAC81E32195B90474A4DC7D2BCB67BC9B4F2CDA2C9E22D39907FC7BCF6CD3C40FA66B2EFBE2E6A9A1308758D092504F120DD1161EA01ACD60AA55F84529C60AED9ED09919CD28396CE6BC7F42F8CADABDE3436DE1E0CA064859BE6C7E3C57A1784FC57A5EBA1A3B598ADC467F7B04A30EBF5A8797E229AF7A2285784B6674EB8C0F5A9074AAD193C16E335283CE735CCCD1C4979F5A51C839EA6A2C9F5A7A9E3AD248996873FE3CD34EAFE13D4AC18677C076FD4735E03F0F34F7B7F0C6A5F690C4C8F8C1F407AD7D39220923646FE3E3F3AF18D274B6B9D7AF3C336C84CF25F7968ABD94B727D857D3E413B4DC19E6E3E9F346E7A6F876C9B4882DACC86F266B649A3E3B1155F5DDBA7F8D342D522DA82493ECD39C63703D2BD07E2069A9A7AE84F1280B1C62D58FB01FFD6AE07E21ED8F43B69F38F2EEE32A7BE49AC737A7ECEB3B1AE0A6A5148F4773990841F2E38F7AF3FF008E2D8F06A0EED7483F5AEF2DC3185189E4A03FA579BFC7D94AF876C23CE375EA926BCDA4EF54A48E725CC3087DC7E6007E951413E2651CE73FC3D6905DA491ED2BB813C7E5552E4C914CB2C6329DEBF44C27F0A2784DDA4D9DAD86B0F018E332DCF23036BE31F5AEA749F108F2486B889D41E1679B915E636914D76AA638C92DE86AFCF1A5A9114BBBCCEA475C574D8A5325D7FC2929B6905B5DC230D92806E620F6AE6F4EF0B6A8F1CAF35BB5AA27219CF2DF4AEA22D56D6D2E27B9B6B66425BE6B812673FF00013537FC2436F76019AEA2973EF86FCA9F368248E02F22BAB1621C79B8F4AE2FC772867B2E0FCCF923D2BDA350B8B0084BBC707FB52A715E59F17628E2D474B9226B6FDE93868DF7061F874AC6ABBC59A52569A3163C2B719A9719148BC60E73F853C722BE52B6ED9F61474821C0722940383819A074A8AEE6F26DDA5C76207D7B5656B9A499D5FC28D21352F12CDAA489BA1B31B138E37D7B10E2B92F859A58D2FC2369BC112CE3CD7F7CD7561B26BC5C6D4BCAC8E29C9B64A00C75E6978A60E697071D6BCFB917635FAFE34463337D287F946EACEF106A8BA5D8B4CAA5A593E489072598F4029ABB6696BEC65F8858EADE22B4D0E160563224BAEE100E95D500131E50538F9471D07B570F65A4DFF85BC4906ABAA4A643AC460484F489BA85AECC33172E3214E2BA2AC9C159112D7D097CB2599989C9F7A6322E7904D4A734DDB93D715CB16DB12401CAC6477FE75F2DFED0DA94D79E3A9E1949C42815173D2BEA3902AAB16E6BE69FDA474C6B3F190BF443E5DD267A77AF6F2695ABA4CE2C7AFDDE88F39F0E6A1369DA9C17313ED2AE33CE322BE8BF87F69A4DE78A34FBF9E46B492F40449D0F224EDBBD41AF18F845A6F80F54D5AFE2F1D6B175A5DBA5B97B66840399076E95E9BE0EB8B7FEC98A5B2949B785F7C3238F99B69E38AFBCA3878D58B8B573E7A33E495CF6ED9756979369D7F1ECB980FCDE8EBD88AB076ED1B7927F4ADED462FF0084A7C0BA5789ACCE2EE184349B78DEB8C329AC26292049139423248F7AF89CCF299E1A4DAD8FA4C2627DB446AB29242E0FB8A37226492323AE4F4AA5AAEA36BA5589BABA90045E028FBCE7D00F5AC18B4CD5B5E7FB4EAF3B5969C795B4438771FED9EDF415E47258E96AE5ED53C5FA369F298CCB25D4E0FF00AAB74321FD38AD2F82FAEE830EB9A8CFABE8373A3DEDE4C0C1757B085120EC036783ED55279745F0C4005B5B436CB8C2A22E5D8FF33593AAEA3E2AD5F4B961B3F0CA34522E15EE6E150E7B103A8AF43038A5427CC91CF88A0EAC2C8F62F8AC15F4CD3D83608B90463BF15E5BE3CFDE41A65980099EF5303D7073506ADE3DBF16FA2697E25D16EEC52CE2026BC46F36277C60648E83EB5620BB835AF1AE951DA3A4F05AC46767420AF3D39AF4336AF0AED389960A9BA6B5E87A267098E9C7F4AF2AFDA01B75AE896D8277DD64E3E95EA5F336EEE3D4D7937C7E90C7A8F8700C7131623AF1EB5E4D07CD5B40A9A44E465BEF2665555223008C915326A98899195707BE28BF36D7CADE4294318C9CAD624F2794C54104D7E8783FE1A4786D1BF6DAFDD42CA903E147A015A2B7F73792798D891B1CFA8AE25273BB3CAD6DE8DAAB0DF1B480051C7CB5D445CF4AF117C16B2B89E51A6EBD730CCC771128DCA49E6B97B9F845E29B3B98C218EF4A8E248DF6FF003AF5DBEBCBCB7B8791111978DA647C0E95567F1C41A7C44EA71AAE3ABC27754DEC6F6679647F07BC6DAA5D91A85DC3656BEB24BB8FE00573FF00183E16D9785342B4D586B6F713473AA34223C0E7BD7B65A78CEDAF834CB21F248FDDBFF8D7997C7BD4D355F064A6DB73949D59CE78FCEB1AD2F75974D3E6479105240A78CE3150DA10D021241C8153D7CB56D19F57425CD04C70C918A6490FDA2E6CECBBCD72831ED522F7AB7A0A893C5FA4C6C01066073F4AC5CB955CD24EC8F73B588436F1C40602205C0A9475A0672D920F3D6815F3B5A4F9DA6732D494D3564C8E3B1E685F98E4552D5B50B4D3AD8CD72C401D147258F600564A3CCC7CAF624D46F6D6D2D659AE64D91AAE4FA9F615CDC3A778AAFEFED7C5C2C527B5B62445A6B70FB7FBE33DEB5BC3BE1EBED6B501ADEBC844111DD6B6B9E08F561EB5E87172570B80063DAB58C7D9DD91527CBA23CDBC57E203E2CD1CE8761A0EABFDA048646960D890383D4B1FE953F85B529EEACBEC9A8A18751B5C473A7B8EF5E8CD21076819F4C1AE47C71A2DC2C87C43A427FA7C2A04D08E932FA7D69B946A2B5C54E51F86D62727078A3380491923B0EF54741D52DF58B517111DA41C4919FBC8DDC62AF741F4AC2CE05B56D047F2E44DBB5C6EF5ED5E6FF1DBC2D36B5E14FB65B2EF9ECCEEC7AAF7AF48700FAE69AF0ACD13DBCA374722ED39F4ADF0B8874A6A48C2B53E6833E1911482E9900F989C74AF74F07DB35968B6368D8C6016DC39E69BE24F04E81E18F1534F7F12FD9E73BE099B3B54FF0074D6ACF2DB2451ADA9F35A4188923F98B31F4AFD4B28AF0AF1E6E87C8E2A94A13B33E8BFD9EF327C374B690EF8D669235C9CE573593A8E9DFD95AA5D58C7FEAD5B2B9FEE9AECBE136852E81E06B0B1B83FBF2BE6CA318C33726B13E20A85F11009C168413F9D716710552948F4F2EA8E33B7738DBBD261BBD4E2BD98799E57DC8CF453EB55FC4BA98B3096D044D2DF4C710A678FA9AD924292149AAC2D6DE4B9FB53C4A6703686EE057E732934ECCFA08BBEACCBD1BC3FF66BC3A9EA32B5E6A0EBD643F2C7ECA2B7D973196E37F619A686DC7AE7141200A4EAC9C7941DDBD46F94AF0BC330478DC6195D720FE15C49D2E7F05EAF71E26F0EDA99AD5C6DBCB203F87BB27A7D2BB71CD38A9DA410A54F5CF71E9574EBB5A33395A260D8FC5CF015C5BACEDAD340DD24864858B29EE3A579BFC42F12BF8CBC491DC69A8CBA6D826217752A646CF500D51F8BBE1B8BC39ABAEB9A7DB634FB97C4CA0711B7AD3B4D92EDB4E8EF6E2DD9AD1D70AC303757D165980A136AAADCF331355AD06C1AA1738BA318997A48AB8247A5675CCAF3CC595891EA6B4C787EE751769B4C2AC83A86E187E140B03A5E9EFF00688C8B876C05619C57D942318AB23C7BDCC821C123073ED562C98AB150849C67938AB70ADBC2FE6CA770FE21EF57ED459A8F322CF98FD4019C0AB035EEAFFC4F7D7721BDD463B7F31C954970C48FF74722A4BB5B75B755BFD55480394C839FC3AD7986B379A8C9A85C3335C799E6365B073D7D6AB3DDCA91A92D2027A9739351CAD235555D8F49BEF13416567E45A58653A0DED80DF8573DE23F115DF88748934E61141108C858A351D7EBD6B923712DCB60B3E7B60E6ACDB4FE4300495FC2A6545C9151ABA99FA5CC0DA2862418CED6C9F4AD30C1B91DFD6B02E9962D42E2D9480928DE9C7522B634E984966AC725BA1CD7CEE36838BB9F4780ADCEB94B409F5A9B4897C9F13E95331C017006EF4CD448C0F4A8AF59A3D93C6398DC30FC2BCF92BAB1E94D7BA7D0C386033918EB4F2C0F158DE19D4E3D534882EA2E51907E78E6B510FCD81C93C57CF57838CB538D2B0B2CAB6F692CEC70A809ACDF06E913EBB763C43AA8FDCA3116B6E7A707EF1F5A4F15EF1A0DC6DC8C609C7A66BB4D0BC96D16C9E1184F2940C7D288AB2B8DCF961A1A319C2853DA9C2A343C64D3D585672F791CF6B8E00668919550B37403269A1C6FC5138DE8F18E4B2918ACE9FBA268F31F0FC505E78D358D66C94416ACDE5AA0E15D8753F9D75273819AE73C0636595E5B6D02482F64054FB9AE91B19E2B5A92E6563AE6F5B0A30687F908031CF5A68C8E94A493C01CE2B04458A7ABE9363AC5835A6A16B1CF039F97700707D6ABF833C4DF0FBC3F7F2D9A78592F35DB41847B2B70C241D3393C29ABD736EB73652DACA582BF04A9C1151E8DA5D8E976C61B2B708839CFF131EE49EA6BD5C0E655309F0B39AB6161516A6F5E7C4DF184D313A5784EC208C76BEBB3BCFE09C5713AEF8FFC4275F379E2CF0D8B0B6204493DA4BE6C607AB77C5741F32B640C77A2EA386E6D64B79E35962752B22B720E7B577D5CF27888B84968634306A94AE2DADEC1796F1DD4322BABAE54AF435344C4127B1AF0FD6FC55AEFC3AF1249A5431417BA5E3CC86194E0AA9EC0D745E1EF8C1A4DFA3C97BA55FDAAA7FAC91177C69F8D79B2C0C9AE78AD0EC94E29DAE7A7A8C364639A79C5737A478D3C2BA985FB1EB96CEFFDC66DAC7F035BFBD58EF8CE558715C6E94D6E85CC9EC3CE73C51938E29809A7AF2339A5CAD3B8333BC4BA65B6B5A15DE997582B3465707B1EC6BC9FC27A94EF6B3E8BAA58C67FB264F2814F95B683C6477AF68720606DC8EB9AF19F195A8B0F8AEF12BB2437F0091B1EB5EE6518970A9CA7162A9A71B9B7A76A96906A2EF6B8DA570E0F18AB7A8DBB4B3266233C53A128FE87D2B0E0B5B6B6BC16934EA0C84724F635D858C1369C121668A7B5077C72193A7B57DD4269C798F0DA49D8E1469174F3CB32A660427CC53D41ACFB299209E5DAA5771EF5DFEB70B5C89EF2DB6DBCA8727072AFF80AF34BD69D6EE432441D98E7838AD13D0563EB9BC6D0E3BD8E09EC6C1E5957E51E4A9278FA548DA568D290AFA269CAB8EA6DD39FD2BC3F42F14C975ACCB3318A2689CFCEE493ED81DAADEA3E26F105DEA896F6778B386E72ADB80F6A96D9AB47B3AE95A222948B48D3801D716E9FE1505C59F8763C6FD2B4D2FE86DD7FC2B8BB4BAD4C430DBB5DBFDA8805D54601FC6B42DAEE76493FB461244670987009A13915182DCC9F8BFE15D175BF08CEDA669D6306A36A3CD89E3840600724702BE58D367035096DE4EACC4F4EF5F5C4DE218ADDE3B54B6B701F860D28247E55F2F7C67D1CF86FC5C6F2268FC9B990C8154FDCC9CE2B93174FDA23D2C255F64220542DC719A27E80A81822A84970CD64B3C67236EE3EF5358DCC73C0928271D31EF5F3D3A6E2DA3DC55235236B9D57C37F1347A24BFD957F2793692B7EE243D031EC4D7ACDBBEEF9810411907D73E9EB5F3F5EA2CF1ED9220F1E3815ABE1CF166AFE1A2912B3DFD87510CA72E9EC0D79D89C1FB47CCB730927067B84C89716F2DBCA032BA6DE68F875A848B04FA0DD37FA4D9BE573D5A33D08AE53C3BE3DF0F6ADB62373F64B8239867F94E7EA7AD68EAF0DC24B06B9A59DD796DD5579F363EEB5E5CE0E2ECC69292B1E98BC8C761D29471593E1DD66D757D392E6DDB04F0C8C7E643DC1F7AD20C735848C12B68C980C9CD2F43BA9A8D9E29E7A5662679C6B23FE119F1A9BB7F974ED5300B0E91CBEFF005ADF2CAE0156049AD6F12E8D6BAE6953585D282922E15BBA37622BCF46B371E18BA8B46F1245B57216DEF47FAB75E8327B1AD541C9686D17CEBCCEB4900E3D294360F1502CD0CA8258DC3A919054E4114BE60EC6B3E5B0913EEC820F34018C11D8547CE010DF5E29777CBF78714ECCBB585C8C505D41DC31851C8ED55DA55DD8E87AF35C078FFC7315AC32E91A27EFAF242525947DD8C56B4694E6EC88323C63E14B9F881E21BFBDB09827D817CA8CE3E590FA0AE7F4AD127D17E1AEA0D78ED1DC5C5E88990F5001A97C2FE26F12F85E206DA48EEADB7EE9627519E7AF3D7357BC5FE2DB7F14C769696DA6CF6888FE74CCE38CFB7AD7BD4DD48250B6873C92948D4F819E0DD0BC57F102F21D66C927B3D3AD012A3E5058F4E457A86BDA0CFE0ABD89ECE492EFC3F70FB57CD62D25AB1E833DD7EB543F652D124FECAD635D91C18B5094C6B81C80B5DDFC4D87FB3FC09A8DBCEDE6A36D11B679DD918AF62385855A176B5387DB4956E55B1CFA1079E08E08FA5480F031C0AAD68CC6D62629B5CC6A187BE2A7C6062BE33131E4A8D1E92D50ACFF00215EF5E61E308CDCFC55D2A2281B6DB6083F5AF4E0154F98FF00740E6BC5B5ABC7D43C71A9EB304A1E1B60208F69E770EA6BAF2AA72759330C469066E78934BB26BD62C92C72A1C2A8EF4FD22F9A0B11A4EA9A54B2891F11B03F36DAB3FF00096E8474EB78AEA4DD2C9C4A71F3A7E35D0F83AD3C39712ADCDBDDC97A036E196CB2FB62BF42A6BDD48F02495CE62FA37D3EECA6DB8B7B629CA3645655E6911DE28BAB7604B1E85BB57A5F89DB49B8BD93CDBABF055704796A463F1AE1F54B8B05223B1BE8E4453DE3C11F5C715B242235BED30ACB0471416A55882C5B9FD6A2F0C8BA3AE24D6FA804B753F3151B87F215CC6A33DB3DFCCB0DB976321037741CFBD5ED1D6FD1C04324BCF1129CA8FC055A356CF51D4FC41A34DB2DE58350BA9633CF97F2A9FA9AA4DE26D4258C45A6F85551338DD34DC9F7279AE6E16BE9D1A2926119072D0E07F5E6A8EADABDCDBC26DA37309C6008CB007F2A1E854647A1E97A96B4F243BADB48B500FCEEC7763F4AC4F8C496BAD5B69B15C2D9DD20BA08EC83079E08E9587E09B2B9BBB85B9BD8E5308EA646383F99A9BE23DF5B2EB7A7431DD16B7849B89A30F90A00E3E95C95DDA0D9BD2776795F8AF4EB7F0D789E6D1FCD536ED878C7A03DAB1AD99AC6E4C25879529DC86BBBB4D1ADFC506FB51D4E19E49EECB1B2EEC00E98F6AF3DBB82E77C9A7DD2347750B1DBBB83C578CE9CA776CF429D651D0DF59331EC079F5AAB2DCC71CEB09900901E09E86A3D26713DBAC4C4895061F354BC45030812E23C9921E78EF5CAE9BE6B33D19548B85CD19E28AF0FEFD15BDF18C56968DABEBFA1EC1A46A4D2400FFA8B81BD47D3D2B2EC2E45D5BC678048E466ACDA4F0BB49193823B56538AB59AB87B38495D33A2B3F88B73A6EAC3511A79B0998E678D5B304FEFEC6BDAFC0DE33D27C5B662E2CAE13CD503CC849F997F0AF9E1A28A58B6B0572DC723A56369DBEC757F3EC6E67D32EE23F24B136037D47715CB53034EA2D34666E125B9F64230EA0D4A64CF18AF0CF09FC5ED42CDA3B4F145889E3E01BDB75C71EACB5EC1A06B7A6EB963F6BD2AF21BA83D51BA7B11DABC7AD869D1DD1328B46A293D09CF155355D32C352B46B1BFB58AE2DE4FBC8EB9FF00F554F1B8DBCE734A5B3CE6B04DA25AD4F24F1DE83AC781AC1F58F0ADE7996287F796772372A8F63E95CD59FC57D4A28234BEF0B3B330DDE65B499047AE0D7B1FC448E397C13A8C72E08F289E6BE72B3756B58C99180031C57AB87A70AB1FDE237842538DCEF22F8BBA498F171A3EB0847551103FD6A8DEFC5A59091A5F877509CFFD34210572E0F5099E7AE6A3CAC72EC2D827A0ADD60F0C9DECFEF0787A89EE8BFABF8A7C59ADA149A74D36D5BFE5943F7C8F42D5CD3B3DAEA76F696C09C9DD213C9C1F5ADB691444647390A33589A234B71AE5C4B2A901C6D426BAA9C2114F9568528A8B4997B550F2DABDB43B84F29F908F6A437525B684C5A4F32509B001D49E95D37C3BD386A5E24B9D4A700D969D0B0663F749A6E85F0EB58F11EEB99AF3FB2EC92E0B45228F9DC6EC834E3285ECC8C44D46EE27D0BF0688D27E1A6916C90181561F3252E36E49E49E6B9EF116BF75E34D745ADB131E87A7C9B9A423FD7CA3A60F702B8CF12F863C7932DB44BE319B50D3A37559E293111283B02BD78AEE6C638ACACA2B7851523030AA831815D35B31851A5CB067954A9394B9C9F7E3AA9A5794A9CFAD4323E33CFD6B9DD73C490C17B168DA634773AA4EDB638CB7FABFF689AF9694275A7A6ECF462AC8D0D7AE6E6FE58F42D2D2496FEE8ED609FF002C90F5627B715D768FF07BC0F6D63143158CD1C8066591663991BB9359DE0EB38FC256F3EA17127DB350B9506E1B78EBE8BED5B91F8DEC921DEBB4337DD8DDBE763F4AFB0C9F01EC61CD25A9E3E2EAB9CAD1D8E735EF80DA2EA33996C758BAB33D94A075159D61F053C45A44A5B4EF12DB67F8643115615DDC1E2BBA62865822B5473C077E4D6E41ADC0621E648CC4F651C1AFA28E879ED33CEE5F85BE28BD88A6A7AF594CF8E24442A47D6B9F5FD9FF005E9279187892D1509C8010D7B449ACC6A8A1A329B8E14E473491EB51A4850B6481D29DD8F53E3F94A49A84E651E52AC8DEFDEB46C352B689B74109E3A927AD1AEBA497B3A471672C700561C91A86C0254F700D22753A18359F3752F31DE5083A08B8FCEA86BDA9590BA468ED656981C969A6CE7F0AA62D6789972F8571F8D59D2F4F8EFA665322AC9BB680C0F3FA1A993652B8EB9F1F7F63DA9DC6D639D47EE964CBFF00E3B5C9BEA1A8F892E24B89CB6D9DB32C91AED040E8A3D2BD0351F87704D24535EFD94CA071B4162299268567630F906F2658C7FCF3B527FAD6138732B1A464D1876D3BDA5B98A2B8910050A006E47B564F8874E86FAD44C1D96ED7956CFF003AEA8687A3490CD226AB78AC837624B42013F5CD62B42841DA7383DC74ABF67151B2129C94AE79F3DEDC5BEA0A8B6EFE62F0E00EA3D6BA38DA1BAB53BDF21D78E3BD686A56A44CB7F651A99A2C1DA47DE1DC54D73E1F7BCD34788F415F3A1240B8B3EF1BF7C0AF23194EDA9EAE1AB732E5673F63A75D45627508159BC8936CE83F841E8714CD407CA97D6C4F07E7C577FF000A2C67BCBCD57ED5613C56B2C5E5B2CA98C9AC5F19F862E7C2FA83916D2CDA5C9D194676E7D6BCF5517359EE7724A08CBB69A39E2564E78AA7AD43BA2F3D38788E7EB54F4EBD822BD7B742DE5372AC410056E1457539C1C8E3E955B33A616A91228661716514C0124AFCC3B53F4DD6AEFC39ACC4DA55C1B49DF9014FC8FECC2A86912F96F359B83856247D2B52D3456D56D756D4114B3D8C6ACB8ED5138C769AD026F4D373D93C0DF1574CD5116C35F234BBFF00EF38FDD49EE0F6AF488A78654531B2C88C32AD1B06047AD7C9D1A437F600CAAAEB8E411C8A826D6B5BF0DC6A743D6AFEDB3C796B26E18FC6B82AE5D1AAFDCD0E5768ABB3DDBE36F8920D3BC3136991C8AD757636840790BDC9AF09F0C4ED35831273B188C1EB5269D15D789F5AB6B48AEE6BDBCBA60D732BB6EDA3BFD2A782C8699A9EA9A70EB0CDF281DC574E1F0AA84395EE5D2A9797BAF42C3138E3359313BDDEBAEE4FEEA24DA07A9AD0BFB9FB2593CE402C10903DEB3B46B8B6B7D18DE4ED996663C0EA4FA56C96973A6AD4575A9AC96F2EA3A95B68F6FCC970C158FA2F726BD0FC51F0FEEA7162DA04D6C9243108A4F3010318FBDF5ACCF01DA59F85F453E26F108DB7172310A9FBCABD801EB50EA7F103C4F7539FECC30E9F6E394791373B0F7AE4A929B76818B9B96A75773A4C3E11F861A9DB44E67B810979DC70198F5C557F0DEB76FE27F06D9456CD24BF6509F6BB488859594751CE3AD719AC78DB56D4FC21A869FAABC4D77BD512489768707D4541A7E82EB2D85E41733595DAC6089216DA09F46F5AD28E0EA565EF6E70D4C47233D3354D63C296D1ADEE86DAA693340479D65728E2375FA9E33F8D6C5C6AF6B0787DF5BDCB2411C5E6FCBCE4571FA56BB26A53DC7837C6E11A49D0AC13291B651DB91DEA95F79DA47C2DD474C9D1C2C727911B31E5973C7E958E2308A335191B529A94194AFF00C57AE789D37593AE956321CE4313338FA8E9577C29A3787F4DB86BABF2F391F316392EE7EA69FA2FFC2296DA2E9D1CF6D20628A3F72D8627DCD5FBFD274D983496715C8CF2A1DF38FD6BE830580A34E37B1E6D6AF2B5AE5DD5BC4C9A940B6FA45A2D85A443E6678F927D8E699178B348F0C43BF4EB1375A9B0F9A49B0510FB57326CEF6E6E05ACB2F92839E4F18AD693C3B6367A41BDC4D78CBD770013F2AF62365A238399B2D693AF6A5A95F9BABD75795CEE3B87CAA2BA89FC67242C96D06A3651B2F6F24B135E779D4751021894DBC7D95170315B167A05A5A48B36A135C7C8373045DA4FB64D58CEF61F12DDDFC11C2AA59B20EF451CFE7576F35311CA2592DC8246DE58827EB5E782F2C6E6277B20F0DB2700CD29C9FCA9F3DC89157C85E3FBC4B107F5A02E3ED34BD2E6BA3717A1FC93210C10734FB8D17C21F68673BA189792DD4E6B5F5ED3BCABCF2523F2C2B7000E9585AA59C90EC86241296E59DBA0A9B834133783766D8659647E8ACE9CE7E953D868F631B9BDB2D6EF2250BBA4076AE45456DA45B49632CA2D95EE073841835996FA7DDFEF0DD426312740C3240F434F4279ACC8EF358B58BCD8E07B895B3807CECEFF00CEA8937B3C61BCEB8893A905CF15B76765651F22DA2665E3714E9493490C9114C100760334A5E45377D8C98E29994462FDFCB61F32B12735917F6C525DBCB7A1038AE9ED622B0C862B5520F466EB4E3A740F1F9888ECE7A9238CFB56608E392068C8503934FF000ADE3F857C608676D9A7DF1C329FBA1CF435BB71A6CCC4A952198E0102B23C67A5CEFA44BBD4868503AB7A11CD618887341A66F41F2CB43D5E6DECE594808E33C0C539846D6C639231202390DCD637826FA4D53C296372E7E73180C7DC715A73BFD9A0966704AA2B37E42BE0310A70A8D1EF45A7030FC47E1FD0EFB49962BA82DAD1483FBD0A14A1F5CD787CD7F6FA76A5269AD7514F1C4C556643C11DAB7FC43A8DEF896E259AF6E596CD5888E05620019EA7D6A81B2B6F24C46D2258F19202FDEFAD7A98483A6BF78C9F6D6D2263457509F131103A491BC79254E6BD7FE0DD9C527862F64B850C2EA62AD91D4578C6A8B6567AAC2D651AA6148709D2BE83F86D64F6DE0BB20401E682E7F1AD71F250A69A3384DC99E59E2ED0EEBC27A8CDE62C9269F33178E44525573D8E2B47E1669136B1AF9D567B31FD9F026D532A70E4FA035ED1E5C7E5F96D1A3AF5C3283FCE80B1A22A471AAA67EEAAE2BCDFED17C9CBD4DB746568DE1AD0F48BC967D2ED23B7964396651CD797FC4FB41A278C27BF7575B2BB00F981490A7DEBD90EC8FA7DE26B99F1A78BB4BD153EC93DAADFDCBF2B000187B66A30F8AA92A96DC96A308DD1E73E00F0F5C78AF58179756C574681B04B64098FB7B56A681E12D0E0F887AB477CECB69A70FB45B40DC2F3DCD54BCF881E31DCA2DADB4DB1B71C8B6F2F381E991D2B1B5BF114BAB5DEA1A8471794F736E904D83D1B3CE3DABD54AACAFD8C67554B56CB7E29D626D7F5D6BA6E2DA2F9608F1C281DEABBC8238449331039C1CF15023470C4B918D88063DBD6A08CFF006A4A115F16E876A8FE273E829DAC670ADCAEE87E876977A9EA70DBC10997CD937371D17D4FA57A8A5869D1D9C70EA443B47F71636FF0AE6FE1EC7A9691AA6A36D7B6EB05CBA29C11D13B574CBB64BE0976AD7240C8552178AF5706BAA3CFAD554A5739DF16585BDE5922696AD05DC2E1E06CE0E453F575F15F89E1B3B2D5A0B3B0D3A0C3CC626F31A46038C81D2BA1BF9DDD0A1B55B7551F2100122A5D1EF27B7B578011B64396763D0FB577CA8426EED19FB66968C9A0F08E91F638AF5C8620008A1F629FCEB3FC41751C108B686282323B2C9BFF005A64DA85DC7198E72D3B0FF56643951F85554B68EEE62D3ACC2671F75000BF9D6CA3A58CDCAE57D25A537209309527A3B6D1FA7356C25E5FEAA6DA155FB329C911B12B5AABA3E99631ABDE5D132BAF1145F3B5598843069EC912B2AE7857C03FA568958488FC97B19923455DE3A9539C5666BCF71793EDDED23A9E99AD59901B5DD0332AE3E6CD53B633A9DD147F201F3330E4D5A195E1B19521413460211C6D1CFE35A09A534A32CD285EC0138155A3D465177E40018FA93D2B6AD6E12C7735D79B71BFA041C0A623BE9ADA196E9E48829DCDC96EF599E2DB4B7FB344D249197507023C616B8ED575FB8967955B7290DC61B03F2ACF9355965FBAC377439359730D4AC68E9F1996E5A496E45A42BCB127A8A8351BF5795D6CE579A307019BAD53791B6156DBB4F5C1A75BDD4091E228803EF55B94AD2E8366477C012953D4EDE2A5B48A1488EE49A4607B0EB54E69A595F32617FDDEF57ACEEAF00530CE531C104E734D2092B1242F16C30ADBCEC01EA10FCA69B244D6F28DB1B9247CA85B19AD4B3D63518A565B919880E48E777E15AF0EABA40911EE6D079B8F95954669D894AE624665F2411163D415C63F3AE6FC7D771C5E1CBB2404771E58C7726BB2D66E6CEE6D9A485C46E5882792CD5C67C468207F04B3DBE6768E44690B7507358D75683669495A46FF00836C4D878674FB665DA7C90587A679AD3BB80DD45242FC47229523EA2A2D1E5F3B4BB398F1FB85FE556F71278E95F9F6365FBDB9EED3F84F0AD73C29E2BD16F258ED34B96FED5A4263784E481E8455AD1BC0DE2DD5D4497FB347B5270C5C8329FF0080D7B6104E49381F5A649F36130483EB5B7F68CB96D6D49F60AF73C93E2778574BD0FC21A7DAE9716E9DAED4493372D2E71D4D7AA68F1F91A4DA5BE302389411E8715CD7C4E487FB3B4E0C0605F47C77AEAD5958054180145618AAD29D35CC52A6A3B1637281D8D3181E08E075A675E314FE190007A1C57025CDA9B3B2473DF103C409A0E8DE6469E65D4D94800EC7D4D790411C9E679F3BB493C8773BB7279ADEF88F77249E397B7B86FDDC11028A4F7AE7A7BA79A74B3D3A37B8BB90811C6A33927D7D2BDBC15254E09F566125A59B16F2555610A105E4E319E6BACF85FE10B6D4FC29A8B5DB73752E1245EA98EE2A9E97E137B69974FBC2B71AE5D1C48ABCADAC7DFF001C5759E0CB77F0B788A6F0ABCA5EDE64F3AD58F5FF006856D5711CB17CAF53074936725A8FC2EF1236A62DED6FD6E6DC8E6591C26D1EE3BD779E09F87FA768263B8BB3F6ABC418DE46163FF747AFBD75C876BE78CE2B3F56D7F4BD27E4D4A7316FFBA021627F2AF3E58E9D4F759AC70F1E8727F112DFECBE26D2B538DDD5652619981FBDE9C54F696EF73308C5A24C5721599B071557C4E7FE125BFF00B6DADE81A6E93B276083EF67D6BB4D363D3F50456D316690B4618B04DA39F7AF7F2A9B9248E1C55150673F73A5CCB1132227D01CE2A15D26E4C4AC9C0F4AEC5348D46DCB4B6A91E3BA950E6884EA2B3A87D311B8C13241815F4491C292393BAD3E38A08C4ECBBB39DA0D5E9746C5AC52ADC40C480447BF9FCAB5B50D144886E3666423FD5A2F00D519340BB8E313CD22A291C282322AD2B0F9514EF74FB72D1091CC473962BC1C547345A7C9B96D55DB6F567041CFE35AB6D6AD6E1185B4321F592439FD2B6EDF43B4D4FE7B89161503848C9C1FAE68211C6DAC49131133961D80E68BB125D958906C8C1C038E95BF7BA3D859EF487505470DC2BA1C7E75496DAED6F142CB0E3B153926AED62B946C1A5C16A8032C8643F7A609C1AB72AE9B85FDFB7031823345EADF2C5E64F3CBBBD18F1FA55AD2ACEDAEA33E6F972381CEEE295C96AC7057EA45D4D8E0EE3518B72C81CD69EA631753640E5BD2A0556E0741ED536020821DD29576C0AD7B7B7B445F9F938AA91C0DBF3938353490CA57A645068B61B796B099374478F4AAC914D0BEE00FD455D8607DB86EB8A9590851939AA4C7A32A25C4A0EE6241F5EF572CE7844EAF70AC533C851CD41E58DFC8A94C6BB703AD3B92A27422C74899D0C4D222373877C60D64F8DBC3D1C9E1EBF8AD72EBB37021C718AA632846FF00BDEA6958CC607456C8652315956578345C74647E0BB9371E17B23924AA94CFD38ADE87818F4AE3BE185C16D32EECB043DA5C30DAC7A64F5AEB632EA32E3E6DD5F9F6614ED56C7B745FBA56D7B57B2D26DBCEBE98C6AFF7360DCC7D80ACC83C55A65EE8F7577657599208C831BA1570DDB20D5DF09E9D0EADE33BFD4AE137A58909086390ADDC8151FC65D117FB3D35DB18D526866459F60C6F5CF7F5AC23451AF3252513035DF05C50786B4FF135E5F5E4DA9BDC46EEAD2FEEF6B1E005AED908451D3E720FE950FC42CFFC20768C99DA6587071C638A9F0A6252796C803E98A3112724AE25AAB8F3CF206053E5C6C55E85BD2999ED9A74803AED2C3A7AF26B8DC74B8EEADA9CCF8BB47F076AA0DC6BCF6E924230CE260AF8FEB58DA48D385C8D3BC03A588D08C4DA848B80077DA4F24D6BDE787BC1BA6EA2350D4AD6CC5C4AF926E65C827E878AE826BCB3B3D2A4BCDB125AC69B808F18C7A0AED856E54A37665ECE2A57447E1ED0ADF47129B693ED13C9FEB25979663F5AE73E276A161A3AE9DA9CD711A5CDB4FCA29F98A1EB5663D4FC753592EAB6DE1EB23A57DF08F29F3DA3F5C545E14B2D33C5F07887519AD5672C86385255CF9440CF1E957677E696C3969A963FB5BC4D35BC1E22165631E8729188C93E7053FC46B6FE1D59C1ACEA77FAF4F125CA33F930875CA851DC035369DB750F85F708CB865B464DBE85462AD7C2EB57B3F01E988D952537383D49A4DC2294A2293BC5AF9181ADE956BA15DF8B228142C57F69E746B8C2A91D7151F83B54D4A3D0E05859610D128271D4549F1B75582CE2B2B7452F717B9B7545E5803EDE95674D4B6B6D320B220B491C4AAC48E9C57B994A7CDCC706225A599A169AB5EDA82A9210EDFC44E6A6B9D5758310924BD322FF00742D52B7B88A37E230E4F1C8AB7F69C0CCB18C1FBBC57D4A471590FB7BEB995FF7A5769FE13C554D5677DD88E71FEE276FC4D5F5D4E7011018910705FCA04D53BC689E6664F981EA718E6A8456B770CB89E5910678DAB935624BC9A1B675B742148FF58C873559D3E4242804546CF3326C323EDF4DDC5326485D2AE00790EA111B82DD0139A9215325EFDA121F22353D338AACB10C83820D4D133460A98F70CF7A7722ECB7A8DF7DA48B709ED91CE6A84665B695844EC0E306AC0BC50403690E7D7268F2D6590BA14191CF3523B98DA847BAE652C3F8AAB2213D7B568DE63ED3201FDEA87CAC7E35A072319B7807693F4ABD0BC1E56190E7DF8A6A46CA731E73ED4E56739F363DC2A5AB97D074AB920A45F8E6A0649392576AFD6ADC3241290BE5ED2381CD4AD1310427CCA3B509589E6B68515B7475DC1F9AAF2A346FD19B3E9DAAEC912A61882A3B8A7473C614AA461FD8D29AD0A8CB533981739208ED922A508E231C119E956D99658F6B44A9F4A744508F9C9C0A2D756299C2EA29AB7877C4373ACE9D63F6ED3EE401730C670EA47F10F5ADBD0FC71E18D48320D5520987DF86EBF76EBEDCF5AE8E289659CB00178E9EB595AE786342D51D5B50D1ECA63BBE6263C1FCC735E46332A8D77CDD4EAA589E55665EF865776264D5C25FDA3AB5C1652B28E41AD2F1C6B5E1F4F0F5FDBDDEAB6084C476A999492474E2B8B3F0F3C1A5FF0075A32420F5093483F91ABB65E0FF000958057B6D0ADCCAA73BA4CBFF00E844D795FD83372BB9686FF5B4DF358E6FC47F100EA7E04B1B0D3B48D42E040E8D7175E5E2345523BF7AEFB4CBB82FB4EB6BA8183C6F1A90C3E953DA5BC12C4D13448B03A9568C2E1707B62B85952F7E1FEA1245896EFC3D7326E46C65ADB27A7D28C5E4CFD9DD6E82962F99DAC77671839CE6B3B5FD412C349B8BD2A0B4636A73F798F03156ECEEADEEED12E2DE649636190CA722B2AE6D7FB6BC5F63A4A8CC107EFE71EFDABE7D41C256923D083522E784BC07A6DD697FDA5E29B28F52BFBA00B09FE6112F6007635CFEA1A4C7A578920F0965DACA7B959A0C9FBA9D76FD2BD8235114600C1006315C478D6DA0FF0084FBC2F7EC30C59D3F31C56AEA2E5B4998C65272676D1288E35882A90ABB40C638AE3BC15A72E91E3AD7B4FD8A915C859D14719CF06BB301724BB05D99CB13803F1AF25F1BEBF7F7BE368CF82AE23BAB9103417738E638BE87D68A14A537686A66A4945A645A5F8975EB3FF8483C3965E1A9B5348A7912396195401B89E086353E91ABFC48FECE874A4D2F4CD15225D82E2494C8FF005DA38ABFE1AD00E8B69B565796E656DF7131624BB1EB5B5292540DC4107AE39AFA6C264D4747347255C4B6CC1D1BC2D159DE36A5A8DE49AA6A7272D3CD9C29FF00657B0ADA96305C367E63D735387CC7C92481DE9B8DDDABD9861A9D2D228E69C9C9DD95E34D8D9A94BEF70180614329CF7C52281B866B744227570DF2A2851ED518528739FAD0C429254E290F3DC9AB4AC262A95C1F7A84005CA9AB11AA819A8CFF00AD2452689931BB17B9A360F2CB0E6A420E0E4522FCB19C77A933204B7467DD815A9653DBA66331F2A3AE2AA5B0E39A7C0A0CAE49C50331AE494BB7C8C8DD4D7390A40C73D2AD5D2837AE3DE956341972A09F7A6CD90FB0961597176BB633FC58AD27B7D38A97B59A465F46E45436C91C9108DE34607B91C8A9CDBA5A81240CCAC3A734213322EAD4407CD5703273843D3EB4D82FDE12B921831E6B69618AEDB74B1AEEEE546335937D690C12B2A02475E4D0C864AE6D6E72E65298ED8A81A3D8C363020F7A8205059DBBD5B9547CBD7A52145D99564CAB64679A74C3F7471C7D29EC8370A9022B0E474AA46857B3775524E71EA6AE105933834C28BB29D1120019247BD3290281E829C170C3E518352280CE7356D6DE3688120E6A47CD612DE444FBCBC52DEADADE40D04D02C90BF0CAC3208FC6A68A28F382A0D12855385502A5AB8AFA9C44FE08B9D3AE1AEFC23AA4960EC72D6B37CD0B7E1DAA9E9379F10345D7AEF51BDF0AD96A066411A35B5CAA9C0EFCD77BB983019EA6AC08137062589F735C15F2DA15B56B5378E2670D11C99F88BE21F33CB7F00DF823AE2EE322B2F5BD63C6DAEDF69F7761E1182C5ACDF787BBBA56FD05773A85BC71C4ECB9C819EB54ADF2CAAA5DB0C79E6B83FB170EA57B0D62A7D0E6E7D0FC53E221BBC4DE262B06ECB59D827968C0F663D4D74FA468FA768B025A6996D1C300EBB4724FBFAD58485110ED069F66BE62B2B1242F4AF4286168D2F8518CA7296E4E2345240239A24B659173C014D1021E4EEFCE9557122A8271F5AF423B13719F658B18079A431855C2E0D69B5B47E56416071D8D553128EE4FD4D122594914B920A8A24B6080B7033562250643D455F86DA29B2B202C314D6C1B184510AE4F18F5A429B791C8AD19ADA273221CE17A60D35EDA2110C023F1AA40CA2839C639EF4C94796D9E368EF524C9894E1987D0D49656D1CD64E1F71FC69BD8868AE0F9833DBD69C91E570306A48214557419C0E94E862413F7E9592206AC6578A582263231DBDA9F18CC8C09381D2B474E891C1661CE2AEC07FFD9'),
(3, x'FFD8FFE000104A46494600010101006000600000FFDB0043000503040404030504040405050506070C08070707070F0B0B090C110F1212110F111113161C1713141A1511111821181A1D1D1F1F1F13172224221E241C1E1F1EFFDB0043010505050706070E08080E1E1411141E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1EFFC0001108012C011E03012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00E2B50B9BB5BF9D45CCD81237F19F5A80DCDD9FF97A9BFEFB3563528FFE2613907FE5A1FE755F61F4AC876163B9BC07FE3EA63FF033527DAAEFFE7EA5FF00BECD242953F94BB41E0E690880DCDE63FE3E65FF00BECD466E2ECF1F699BFEFB3561A35C700546176B608A69008B71780FFC7CCDFF007D9A5FB55E7FCFCCBFF7D9A93CACF4A0C38E4E295869117DAAF319FB54BFF7D9A16EAEFA9B997FEFB35208D4F3DA831A76A634867DAEEFFE7E66FF00BECD28BBBCFF009F9987FC0CD06318E94E545240072680156EAF0649BA9BFEFB34D6BBBB38FF00489BFEFB35288D318A6343819148AB082E6EC8FF008F99BFEFB34E173747A5CCDFF7D9A548F0BD339A58D0063DE90DAD04927BD51FF1F52FFDF66A3FB4DDFF00CFD4DFF7D9A9DD831038C77CD432CF67102649A35C7AB54BBF50516235DDD8EB7528FF00819A55BBBBC645D4A7FE046B3AF35BD29300DC07C7F7173501F125A7020B4B997D76C74AE86A2D9B515DDE48FB45C4C0FF00BC69CD3DE872A6EA5CFF00BE6B097C428ADB974EBEFF00BF7522F89ED1A53E75ADC467D4C669F3AEE1C92EC6C9BABD5E0DCCBFF7D1A05C5E30CFDA651FF033542CF59D36EE4DAB709BBB29E0D698D8A485208CF6E68BDC7CAFB11F9D77DAE66FAEE34F59AEC75B89BFEFB353A903AA9FCA9C63C8071806AB95072D8ADE7DD83C5C4C3FE0668FB4DDA9E2EA5FFBECD4A6320E29CB10FEED55B4134566BABBCF3752FF00DF6690DD5D0FF979971ECE6AD34285B250669AF6EA57814919B4546B9BAC13F6997FEFB3447737ACB81752FF00DF66A7300FEEE6882250E46314D858AAF737C0FF00C7CCB9FF007CD3567BDCE4DD4DFF007D9ABF340BBFE515098883839A426880DC5E1EB7331F4F9CD396E6E3A7DA66CFFBC6A431D11C4493C532493514637D3F1FF2D1BF9D4223FAD6BDF5B937B31C0FF587AFD6A136CD9ED8A19467ECC53D10E3A55B7B7C0E695212464034024D957CB24F4A6BC3CD5D589B3D6868980CD34368A8A0A8E9498DDC1EF56BCB3DC50139A684565886306808A3A0ABA62E3A1A6F927FC8A0A8AEA55DAADF2E0F348B084E0F07BD5A31E39C555D5E41159DC5D648091F03D4D27B5CD16A676A9AC585BB846DECEBC92A3815A105D417968B341F3291D6B03448524B4692E1433DC0F98F5C034BE14B9B7B5375657932AAC72FCA49C715CDEDA376BB1BCB0D351E6EE742847939C551BFD4AD6C62DDBB32B7441D6AAEB3AD5B46BE4E9EFE74CE71F29CE0555B1D3F73F9F71979C9C927B7B5454AF182B9787C34AAE8910799ACDF65A3916D213EA3E622A48744B50C1E769AE1CF5DC78AD555038A9170071C579D571D27B1EED0CB69A5EF9521B3B608A12DA28D47FB3CD5858A38C7C83F4C54981E9487B8AE2788A93EA762C25286C80300720734F558A4C97407FE034C5C8CD38310319EB53CF2EE57B282D2C54BCD2B4BBA277DBA16F551835416C2FB4F937E977CE00FF96529DCB5B6A7D314A32C739E95AD3C5D489CD57034AA6DA152DB5F9A13E5EAB6C206E9E628E0D6DC32C7710AC91302A7A10739ACBD41236B52668C48807391591134BA7C66E6C2667B6072D10ED5E951C6736E78B88C0CA9BBA3B058891938A76CC7F0D41A65CC3A95825C46D88FB9C739AD6B654F2BEF29FA9C135E82A97573CE71699402027DE9EB6C0F278FA55B7853AA039FA8349E43A8F998F3E82AD3B92D14E4838E38A8C5B9CE7157644C1C156FC68442547A6684C9E57B94FCA39F7A8A58487E39AD1751BC8C5218B730A7D096503161791CD091F5E2B53C807069A918DE54AF4142D41A2DDFDA937B36178DE6A24B6C646DAE8AFAD4C7752E71F78D57312819E0FB5742816918AD6A0FF06453E3B640800422B5FC95618030690DA6D504138A8711D8C8368A1B2538A3ECA99FB82B64C07A004D46D0ED7036934D442C64BDAA83F70542F6E37850B815BAF0FCBD2ABBDB90C1B38C54F230E54654B6F86DAAB4D11E14938C8F5AD4BB31C1119A428AA07249C0AE235CF13B5CB35AE8F192CBC194F4FC2A252E5DCD29C6EEC8D2D5AEE0B04F32EA78D14F206EF988FA5725AE6B173AA69F345636A21B738CC921E481ED441A71693ED37723DC4E7FBC7207D055DB88124B46848E4A139E9D2BCCAD8E4B447A54F2EA925761A6AAAE9B08C73B0722B12EE0B65D4AE9E58D59B6E4061DEB4B47955AD15546190E08ACFD517CEF11450A29C3AE5AB894DB9367A8E92E45168BBA369D1C29E7B4615E4E463B0AD64183914C439007038031E94E5E062B9EACDC99D5428C69AD106083D29467D29D4A33591D00A0919C50C36F5C0FA9A7AE76D32E614B888A499C76C1C52484C1012A42E1BDE9D1C6D8CB8E6B21B47B8858BD8DF4C8DE84E4551B8D6358D324097568B321E0488715A2A7CDB3309E2230F88E991772B151D2A95FC178D87B570A472558E3350E97AEC4F1E4C6F193D495C81F8D6843344C379915C1E983529383D514A5CEAE9946D755612186FADC45918C1E43567EA114FA7DCF9D6BB4DBDC7CAD9E8B9EE6B7E78E1B9B62B2441874C1AC4BD7B8D1E2CB832DA1EAA464A56D4E4AFA1C75E2DAD4F44F08FC2C84E9D1CD2788E79229B1205B5C6D19ED9AE9A3F857E1CC8F39F529DBD7ED26B8CF837E2C4D32F9346B893CCB0BA1FE8F2337FAB6CF4AF7085B7465BEEFD3BD71627178AA552D17A1C8A8537D0E067F859E1D39FB3DC6A76E7D56E5B3599A87C34D4631BF45F135C129CF9572B907F1AF542EC5739FD29A48C72A0B7AD62B36C42D64C2786A6D6C7875C5D6A5A45D2597896C0DA39388EE54E6293F1AD484452B6D8D81E33F2F20D7A8EB36167AB593E9F7D6B1CD04A318719DBEE2BC7EEAC2E3C19E2A5D32577974FBAFF8F6918FDDFF0064D7AF81CD5555CAF73CDAF87E456468ADB6E0C76E39A6887D8FE55AFE48CB6DE4F518A8FC966CF15F4316A4B438796C6788B03EED3047873F2E7E95A3F6763EBD6A68ACF04E724D528D8968D3D4C66EA4E83E6355C403AE3F2ABF7C8A6E2427FBD48AAA48E2BACD4A8B1A8E7069EE80A0E2A60A39A1506CF7A9B015E3C1FE0A26519CED19AB49B483F28FAD579C1E38EF40104C802648ACBD5EFAD34FB66B8BC95638C7AF7F6157F56BC82C2C9EEAE5D44683241AF24D77519B5FD47CD919D2D118F971E783E86B92B5650B9A53A529B56175FD62EFC4171E582F059AFDD4E85A990C4A9184081028E83BD2808A416E1C0C123BD3AE2411425DB031EB5E1D7C54E6EC8FA0C360E305762A653F8A90B808E0B727A66B3924BABD2445F220EE29EFA4DB91BA6BB77F62D5CCA37D5B3A6559DFDD4574BC8B4FD47920239E79E335A515BC6D7497C0EE6DBC1F515461D234B9C6C656DA3B86EF5A96D1089046BBB627033E94E525B21535293BB25239057F1A7A8A4238C91C53C0ED5849D8ED5A053D46453029CE2A40A6B3E60153A62908A752819ED4730EC3530B9F534D786364C3207CFA8A9304534237AD52992E9C5EE67A5A5C69F30BBD3CA0C1CC9038CA483E95D3E91A2E81E3047FEC899B4AD5D0664B53F758FB0F4AC82AD9A8648A482EA3BDB276B7BD88EE8E453827D8FAD294DB39E74797E126D6B4DD5FC3F3083558088C9F966504A1FC69B3AADDDB04601E371CFBD76FA6FC49F0E5FE806D7C5511FB50CACB0884B87FF685721ABC1A44B2BDEF853525BCB4CE5AD482248FE80F6A4A52BEAAC63ED925CB238CBAB57D36FB6C4C5177064F639AFA23E16788175EF0EA34B2837300D92293CFB1AF11BF10EA1646E95BE68FEF2E395FAD6EFC1FBE9B46F1E47632B1586FE2DCB93C74C8AD7134E35A95DEE8E48DA27D00CD818A4E141DECA83FDA6C5654B7F77AA5C1B5D02DBCF653892E1C6224FC7B9FA55F4F87F6373FBDD6EE6EAFA66E587985507B0515F391A4FA9ADE295E4C955E366C2CAAD81D981AE5FE27E8CBAA786A760BFE956A3CF848EA08AD5D6BE1AD843612DCF8667B9D3EFE25DE804A592423B107D6A3F0C6A3FDB3A106B9842CE03437283B30E0D74525ECA4A5122718CA2DA396F095E47ABF87EDEF15479A17638F71D6B416DD4100804E7A8AE77E1844146B16B19658EDEF9800476CD76B24084FCB9E2BEF32F939C753C0AB1E591556C918641008A12C89270C0D5A8570594FE74E8A3672403D2BD3489452BC5CDD498E9BA9B525D7FC7D4BFEF1A8D6AD2B9286A83CFD69CB819A7014797CF34F97B8EE22F0A7355A47C6E695804519CFA0A9657C2E315C7FC44D7FEC3A4FD861FF008F9B9055477C773512692B9718F33B2390F1BEB2FACEB4F650BB2D8C18DD8FE335512340A00038E83DAAAD95B98E23BC8663D4F735772703E95F378CAEE4DD8FA2C161F9629B435D0301902B375A265BDB4B573B55FA9F5AD553B7E6E3F1355354B437DB191BCB78F95239AE084ACF53B6ADEDA0B70F158C5855C103F3AC167BCD56E043BCC7083FC3D6AD5FC26CE00F3CAF3CF21DA15BB56AE956A2DAD97781BFB9AD972C5731CAEEDD82D2DD6D556350780393D4D47A96A30D90066F370DD020CD5D95D49F71D0D645EEB96B692147B69E4F5F938ACD2E7773473E45BD8D7F0CC57DE2098436377A7DBB9FBA27930C7F0AEAFF00E15DF8BD90CA2FB4B976F456054E6B9BF02E912F8BB5082EAD4D9D8DBDB481D98B8F35B1DB15EF70A46A8AA13EE8C31CF5AE5C45754593ED9BD99E1DA8E87E2AD2977EA1A479910FF9696ADBC7E555A0B88648F1B8A49DD1B8615F417CB8E9D7B573DE23F06E8FAE42E5ADD60BA3CACF18DA54FF005AE38E3E9CA569234F6AE3A9E46090A323AD3C74CE38A4D7F49D5FC2F7CB0EA7FBFB36388A70383F5F4A68C901A26DF19E735DB64D5D1D54EA29A24A7638A867B986D555A4751C8EB530757DD26700F403A54169A6EC33030726A32558ECCE08A7B0EF9C8F6AC3D584D657D1EA2AC5E2276BA03D07AD546377626A4B950FD774C3222DE4391344416C1C6E51D457A9780FC15E0AD4AD74FF0011E94B70B749CC9FBCC8DD8E5585709692C57512BAFCCAC3207B0AE83E176AEDA3F89CE94EC56D6F7E78C760D4EA55AAA0D23CEAD46137CC8E9FC5BF0B74DD56F1EEF4ABE7D3679F227555CA37E1DAB1FC71F0FADA25F0FBDADD496EF6FF00E8D34E3E5CFA1AF59F976E3A13C9FA567789ECBEDDA05D47F2B322F991FB11CD79EB1D3BA473A8AD8BFF000A2547F08AD998F12D9C8D04847F1E3BFE35D70271D7F0AF3DF81372F79E1EBEBA6054CB727F31D6BD0D42E39EB5957BDEECCE5A49A141DAE32300F7AF36D2E1161E33D774D45C79AE2E100EC0F5AF48249273D315C178A55ADBE23DADC20DA2E6C9813EA56A69BBA34A6F492F238AF86417CDF111619FF4F6E6BAE0C5908038AE47E14217D335498B7335F4873EBCD7651A85523209AFBECB57B87895B59112A0032475A9ADE3C938A6363000A96DCF271CD7A6643E4F0A6B73CCD245685549CE5881527FC215AEEC0CB1479EE37D7657FE2348EE5AD9658C6D009E73DA8D27C4715EB8036EC5E3938269F3092671773E0EF11226F5B266FF00758555B7F0DEBB35C25BB69F32393805BA7E26BD486B91967F2D0E23E09278A68D64CEE163438FE27CF028E663B33918FE1F2A217D435248B6AEE60A38007D6BE68F1ABC77BE37BA9A297CD820731C273C1038CD7D05F1DBC591E91E157820B81F6BBB2628B07271DEBE6DB64C286E4B75C9EF5E7636BFB38D8F472FA0E4EE3CAB063918CF6A72027F0A5662C734273935F3B36D9F471D2360DA3BF4A180038CD2F7C50CBC119ACD13231F528D67D6608589628BBAB6B7111AAB283DAB26D97CEF124D9C6444315B0C76B859171D81AD26F4B18D34AEDB11235C9CA919F6A3620057CB523DC53D8B807B9ED48A588E56B0D51D0D41A28BE9CB1DC2DD5948F65748772C9136067DC57A1780FE213C9769A2F88A311DEB80B15C9FB928F73EB5C2CF78914C216214FA11D68BB820BA802C89B49C1523AA9F5151560AAC6D3399D28AD627D0DBC1E9D71D6B8CF1E78C6F345BB4B1D2ED927B8DA1E4F338551E954BE15F8A65BCCE85A9B8FB641FEADBFE7A2571DE3EB9965F18EAB1C4E4B492244A73C8E9D2BCEA383BD5B48C652D2C775E14F12E97E3DD3AEF48D4AD42DCC6B8745E473DC1F5AE135DD06F3C27AC9B1B82F2594BCDBCBDB1E86BD8FC2DA1D868BA45BC5676D14726C1BE4083731C773478CB4087C47A13D948424AB968DFB83DAB6862234E7CB15A0529B8B3C3753B18352B668A6381FC2DEF587A5EA379A7DD369D7A0346870B2638C56F462E2D669B4FBE52B3C0C57078CD41A85BC0678EE66188948594119E2BD18CD38D99D528EAA48BC8EAC04A08287A62A3B9B78A7DE920051D292F6CA7D13508A19887D3EED77DACDD883DAACB2054C0E72720FB5637B6A8E8BC671B1CC6897CDA5DFCBA7DC0C440E118F7CD6D6A734B6EB0EA507CAD0488C87F1E6960D3EC2F7C476D05FA62DEE4F9464CF2AC7A11573C49E13F10E8F7106993A2CF613CEB1C7763A22E78CFBD6CE5191C329FB37CACF78B1B8373A75B5C0EB2C4AC7F2AE4355D5AE6DEF35D4590E5CAC302E782C463FAD7576BE4D86931EF7C2DBC203BF6C01D6BCE7C1D2C9E26F16CB2EC26D2DEE0CAF27F0B107E515E22A4DCD9116B567A17C103F67F0B5C583A2A4D6D70D1B81EA6BD017691CF515C27C3A0B1F887C410703F7EB263EB5DE11EC28AADC8E6A9F1B117041AE07E2A4A2CEFF48BF2C14A091327A72BD2BD014E3E5079AF36FDA2656B6F04C37D1852D15C0C647AF14A946FA045DA443F05FC23AA5DF84E1B84844515C4B2481E4E0905BD2BBA6F02DCC6A585F44C4F62300555F06F8A0C7E11D26D6DE22A4DAAF20F3F955A927D5AEA432899A3047D6BF43C0457B2563C79DDC995DFC13AA32E6196097D70715A1A67816F2443F6878A13F5CE6AEF87EE26B424DCDD4BF3760BF29AD0BAD465187575556ECCD8AEDD4C5DEE7846A2E2DF5872F705833619B3D2B4A1D56C2C8016DBA76EA3071599E224827D45E2B7756F9CF2BDEA8CCDFD9309775064E8A4F38ABB0F999D2D86A57B1FDA6E4CC544833E5134963AEEB120748E66450738C75F6AE6B4CD5483BE6FDE34BC64F6ABD7FAC476168EC98042EEDD8E9532765735A6FDEB1E73F13F569B56F18AC5274B68B057FDA35908C0023A550B6BA9350BFB9D4246DCF3C87E63E956C77AF9AC6CEF33DDC046D7240734E4E8698AA1BBE29E0E38AE16CF485EF9EF4E8CE4127B5228CB019C525CC9F67421577C8C30AA3AB1F6A95B9325A1950CD141AFDC3C8E10795919AD9D26CF5ED7893A3E9325D276964F913F335D2F81BE17A6A0D16B5E2579158F296A38E3B06AF608208ACE0486D1161890050AA38C7A56588C653A6ECB538D54927647854DE16F1BDB42649B4247503911CC09AC8B5BC2B3B5BCA925BCE3AA48B822BE8D2C8395FBD9CF15CAF8FBC2569E23D3DEE224582FE1198E44182C7D09AE6863A153465464EFA9E3F7D682F1763E377556C551D3AE24172F6375C3C7C29FEF0AD0B479E3964B3BC8FCBB984ED71543C476F2ADBADF5B8FDF46D9FA8AF42167EEB35968AE5CB8B9934FD42C759B62564B7719C775F43577C4989FE215B4C3EE5DCB14DEDDAB205D09AC65B7BB5686531670C3D7B8AEB97C3D7F7965E10D62088C8639024F81FC23A1349B507A9CCD5E5747B3C44B44B9EA00A5F98B0E4E29572060E33ED4E1F77DEBE76AB4AA363823CF3E2BF870CC22D6EC632678C62751DD477AF3E8FCBBCB12A7A3021B3D8D7D0585903248A1D08C329E84579AF8C3C017705CBDF7869D1FCCC96B57E02B7B57661F1492E5933A6134BDD641E0DD3E0F16FC3D9748B85CC967232C2E7AA9ED8AE4FC8BBD2EFCE95A846EB3C2300B0C061EA2BD4BE177876FB40D29D7515549EE24F3248D4E76D6CF8B7C2DA5789EDBC9D411F7AFFAA951B6B8FC7D2B57888C6A5BA1973B8C8F10BF205C5A1FE2170985C7DEE6BDE351B0B7D5B473A7DC46DB648C6003CA9C641AE474BF8590596AB05E5CEB1737D1C0DBA38245000FC7BD7A1A26003919550071E95388AD06972B22AD5BA3E64F8BBE32F135984F09BC8D6F05A8C48E0F328ED5DD7C03F12DA49A2DB6892C3E55C39DEAE07127B93EB557F695F0A0BE82CB58815633BC453C87EEA824609F6AE334CB0BEF0B594CF69A85BDD4BA6CC8EB35BB65591B92057B385A54EBE1FDD5A9E54AACA15AD3D99EFF00E0BBB8E1F897AC58CB3223C90C6EAACD82DF4AF4579006C6471EF5E52BA669BE30F0EDA6A6A1EDEF4C41E2B94255D1B1EBE9ED5D07C35D76F6E45D685AE81FDA963FC6703CD8FB30AF17114941B89E834A6B991DC2B7CC4FB579E7ED036D25E7C3A92DE204B9B88C000649F9ABD0E31EA7B5735F11E6860F0F299582A35C46093FEF57252E68CD196972F782B424D3B43B45BCB63E6AC4A036EC9E95B667568DD6249028EECA3155D3C67E19B2D3D11AFD64640014894B367154D3E21E81764410C776ADBBEF1880FEB5FA5E12368248F12526DB2C094C119965279385C9E054965A4EA7A9DC34D363C80B843D326AF417BA55FAAA4AB2947E41D98FE55CCFC43BBD7A3BB862B269ADF4E55FDD88724B1F535B896ACF305D1DFEDCF23DCC48779FBCFD6AFCFA5E913C8B1DFEAB144CA33B7CC1CD63EA7756F7373310DB06E3835857319F33724CAFE84569615D1D63687A2A4C4DB5C3B720839CE056578EA28ADBC337B2DAE18A45B5999B1D7D05665A5F5C5BC858E4E7B8358FF11F522FA1ADB1724CB2A8619EA2B1AAEC8D293BD4392D2A2DB651F38DC38AB9C29C54366084C76038153823393D6BE5B14EF367D661A095343A3FBDC53FB9A4C0001CD1BB04E7BD731D3B21C080724E315B9F0CB456F10EBCDA95C2916762C0C7FEDB0AE62F44B73241616D9F36E1F60C75C1AF7AF07E8B1685A0C1631A805172C7FBCDDEB9F115142073D597636223953EF4E20F7A62E17A53F35E1C9B6CE7B8D0A03EFEF4E60482A3BF5A426937927DB1517B6C33CCBE2F68A2092DF5FB48C823E5B9C0E08EC6B88BBDB71A7CC11B72B213C57B6F8C0DA7FC2377D1DE05F2DE12141EEDDBF5AF0B5D3F5ED3A2FB04DA4DE492483F70D1C79520F4248AF73033E6859EE8BE75CBA9E8FE0CF0E689E26F04E973EA764B3CA80AE41C1500F424575EF7FA768C2D74B7516D1F091965F971E99A8BC05A5CBA3F862D2C66505D137CA7BE4D52F11DB6AE5DC36996FABE9CE7E781982C8BEEB5CB5AA3954693D0C159B3A90CAC81E32195B90474A4DC7D2BCB67BC9B4F2CDA2C9E22D39907FC7BCF6CD3C40FA66B2EFBE2E6A9A1308758D092504F120DD1161EA01ACD60AA55F84529C60AED9ED09919CD28396CE6BC7F42F8CADABDE3436DE1E0CA064859BE6C7E3C57A1784FC57A5EBA1A3B598ADC467F7B04A30EBF5A8797E229AF7A2285784B6674EB8C0F5A9074AAD193C16E335283CE735CCCD1C4979F5A51C839EA6A2C9F5A7A9E3AD248996873FE3CD34EAFE13D4AC18677C076FD4735E03F0F34F7B7F0C6A5F690C4C8F8C1F407AD7D39220923646FE3E3F3AF18D274B6B9D7AF3C336C84CF25F7968ABD94B727D857D3E413B4DC19E6E3E9F346E7A6F876C9B4882DACC86F266B649A3E3B1155F5DDBA7F8D342D522DA82493ECD39C63703D2BD07E2069A9A7AE84F1280B1C62D58FB01FFD6AE07E21ED8F43B69F38F2EEE32A7BE49AC737A7ECEB3B1AE0A6A5148F4773990841F2E38F7AF3FF008E2D8F06A0EED7483F5AEF2DC3185189E4A03FA579BFC7D94AF876C23CE375EA926BCDA4EF54A48E725CC3087DC7E6007E951413E2651CE73FC3D6905DA491ED2BB813C7E5552E4C914CB2C6329DEBF44C27F0A2784DDA4D9DAD86B0F018E332DCF23036BE31F5AEA749F108F2486B889D41E1679B915E636914D76AA638C92DE86AFCF1A5A9114BBBCCEA475C574D8A5325D7FC2929B6905B5DC230D92806E620F6AE6F4EF0B6A8F1CAF35BB5AA27219CF2DF4AEA22D56D6D2E27B9B6B66425BE6B812673FF00013537FC2436F76019AEA2973EF86FCA9F368248E02F22BAB1621C79B8F4AE2FC772867B2E0FCCF923D2BDA350B8B0084BBC707FB52A715E59F17628E2D474B9226B6FDE93868DF7061F874AC6ABBC59A52569A3163C2B719A9719148BC60E73F853C722BE52B6ED9F61474821C0722940383819A074A8AEE6F26DDA5C76207D7B5656B9A499D5FC28D21352F12CDAA489BA1B31B138E37D7B10E2B92F859A58D2FC2369BC112CE3CD7F7CD7561B26BC5C6D4BCAC8E29C9B64A00C75E6978A60E697071D6BCFB917635FAFE34463337D287F946EACEF106A8BA5D8B4CAA5A593E489072598F4029ABB6696BEC65F8858EADE22B4D0E160563224BAEE100E95D500131E50538F9471D07B570F65A4DFF85BC4906ABAA4A643AC460484F489BA85AECC33172E3214E2BA2AC9C159112D7D097CB2599989C9F7A6322E7904D4A734DDB93D715CB16DB12401CAC6477FE75F2DFED0DA94D79E3A9E1949C42815173D2BEA3902AAB16E6BE69FDA474C6B3F190BF443E5DD267A77AF6F2695ABA4CE2C7AFDDE88F39F0E6A1369DA9C17313ED2AE33CE322BE8BF87F69A4DE78A34FBF9E46B492F40449D0F224EDBBD41AF18F845A6F80F54D5AFE2F1D6B175A5DBA5B97B66840399076E95E9BE0EB8B7FEC98A5B2949B785F7C3238F99B69E38AFBCA3878D58B8B573E7A33E495CF6ED9756979369D7F1ECB980FCDE8EBD88AB076ED1B7927F4ADED462FF0084A7C0BA5789ACCE2EE184349B78DEB8C329AC26292049139423248F7AF89CCF299E1A4DAD8FA4C2627DB446AB29242E0FB8A37226492323AE4F4AA5AAEA36BA5589BABA90045E028FBCE7D00F5AC18B4CD5B5E7FB4EAF3B5969C795B4438771FED9EDF415E47258E96AE5ED53C5FA369F298CCB25D4E0FF00AAB74321FD38AD2F82FAEE830EB9A8CFABE8373A3DEDE4C0C1757B085120EC036783ED55279745F0C4005B5B436CB8C2A22E5D8FF33593AAEA3E2AD5F4B961B3F0CA34522E15EE6E150E7B103A8AF43038A5427CC91CF88A0EAC2C8F62F8AC15F4CD3D83608B90463BF15E5BE3CFDE41A65980099EF5303D7073506ADE3DBF16FA2697E25D16EEC52CE2026BC46F36277C60648E83EB5620BB835AF1AE951DA3A4F05AC46767420AF3D39AF4336AF0AED389960A9BA6B5E87A267098E9C7F4AF2AFDA01B75AE896D8277DD64E3E95EA5F336EEE3D4D7937C7E90C7A8F8700C7131623AF1EB5E4D07CD5B40A9A44E465BEF2665555223008C915326A98899195707BE28BF36D7CADE4294318C9CAD624F2794C54104D7E8783FE1A4786D1BF6DAFDD42CA903E147A015A2B7F73792798D891B1CFA8AE25273BB3CAD6DE8DAAB0DF1B480051C7CB5D445CF4AF117C16B2B89E51A6EBD730CCC771128DCA49E6B97B9F845E29B3B98C218EF4A8E248DF6FF003AF5DBEBCBCB7B8791111978DA647C0E95567F1C41A7C44EA71AAE3ABC27754DEC6F6679647F07BC6DAA5D91A85DC3656BEB24BB8FE00573FF00183E16D9785342B4D586B6F713473AA34223C0E7BD7B65A78CEDAF834CB21F248FDDBFF8D7997C7BD4D355F064A6DB73949D59CE78FCEB1AD2F75974D3E6479105240A78CE3150DA10D021241C8153D7CB56D19F57425CD04C70C918A6490FDA2E6CECBBCD72831ED522F7AB7A0A893C5FA4C6C01066073F4AC5CB955CD24EC8F73B588436F1C40602205C0A9475A0672D920F3D6815F3B5A4F9DA6732D494D3564C8E3B1E685F98E4552D5B50B4D3AD8CD72C401D147258F600564A3CCC7CAF624D46F6D6D2D659AE64D91AAE4FA9F615CDC3A778AAFEFED7C5C2C527B5B62445A6B70FB7FBE33DEB5BC3BE1EBED6B501ADEBC844111DD6B6B9E08F561EB5E87172570B80063DAB58C7D9DD91527CBA23CDBC57E203E2CD1CE8761A0EABFDA048646960D890383D4B1FE953F85B529EEACBEC9A8A18751B5C473A7B8EF5E8CD21076819F4C1AE47C71A2DC2C87C43A427FA7C2A04D08E932FA7D69B946A2B5C54E51F86D62727078A3380491923B0EF54741D52DF58B517111DA41C4919FBC8DDC62AF741F4AC2CE05B56D047F2E44DBB5C6EF5ED5E6FF1DBC2D36B5E14FB65B2EF9ECCEEC7AAF7AF48700FAE69AF0ACD13DBCA374722ED39F4ADF0B8874A6A48C2B53E6833E1911482E9900F989C74AF74F07DB35968B6368D8C6016DC39E69BE24F04E81E18F1534F7F12FD9E73BE099B3B54FF0074D6ACF2DB2451ADA9F35A4188923F98B31F4AFD4B28AF0AF1E6E87C8E2A94A13B33E8BFD9EF327C374B690EF8D669235C9CE573593A8E9DFD95AA5D58C7FEAD5B2B9FEE9AECBE136852E81E06B0B1B83FBF2BE6CA318C33726B13E20A85F11009C168413F9D716710552948F4F2EA8E33B7738DBBD261BBD4E2BD98799E57DC8CF453EB55FC4BA98B3096D044D2DF4C710A678FA9AD924292149AAC2D6DE4B9FB53C4A6703686EE057E732934ECCFA08BBEACCBD1BC3FF66BC3A9EA32B5E6A0EBD643F2C7ECA2B7D973196E37F619A686DC7AE7141200A4EAC9C7941DDBD46F94AF0BC330478DC6195D720FE15C49D2E7F05EAF71E26F0EDA99AD5C6DBCB203F87BB27A7D2BB71CD38A9DA410A54F5CF71E9574EBB5A33395A260D8FC5CF015C5BACEDAD340DD24864858B29EE3A579BFC42F12BF8CBC491DC69A8CBA6D826217752A646CF500D51F8BBE1B8BC39ABAEB9A7DB634FB97C4CA0711B7AD3B4D92EDB4E8EF6E2DD9AD1D70AC303757D165980A136AAADCF331355AD06C1AA1738BA318997A48AB8247A5675CCAF3CC595891EA6B4C787EE751769B4C2AC83A86E187E140B03A5E9EFF00688C8B876C05619C57D942318AB23C7BDCC821C123073ED562C98AB150849C67938AB70ADBC2FE6CA770FE21EF57ED459A8F322CF98FD4019C0AB035EEAFFC4F7D7721BDD463B7F31C954970C48FF74722A4BB5B75B755BFD55480394C839FC3AD7986B379A8C9A85C3335C799E6365B073D7D6AB3DDCA91A92D2027A9739351CAD235555D8F49BEF13416567E45A58653A0DED80DF8573DE23F115DF88748934E61141108C858A351D7EBD6B923712DCB60B3E7B60E6ACDB4FE4300495FC2A6545C9151ABA99FA5CC0DA2862418CED6C9F4AD30C1B91DFD6B02E9962D42E2D9480928DE9C7522B634E984966AC725BA1CD7CEE36838BB9F4780ADCEB94B409F5A9B4897C9F13E95331C017006EF4CD448C0F4A8AF59A3D93C6398DC30FC2BCF92BAB1E94D7BA7D0C386033918EB4F2C0F158DE19D4E3D534882EA2E51907E78E6B510FCD81C93C57CF57838CB538D2B0B2CAB6F692CEC70A809ACDF06E913EBB763C43AA8FDCA3116B6E7A707EF1F5A4F15EF1A0DC6DC8C609C7A66BB4D0BC96D16C9E1184F2940C7D288AB2B8DCF961A1A319C2853DA9C2A343C64D3D585672F791CF6B8E00668919550B37403269A1C6FC5138DE8F18E4B2918ACE9FBA268F31F0FC505E78D358D66C94416ACDE5AA0E15D8753F9D75273819AE73C0636595E5B6D02482F64054FB9AE91B19E2B5A92E6563AE6F5B0A30687F908031CF5A68C8E94A493C01CE2B04458A7ABE9363AC5835A6A16B1CF039F97700707D6ABF833C4DF0FBC3F7F2D9A78592F35DB41847B2B70C241D3393C29ABD736EB73652DACA582BF04A9C1151E8DA5D8E976C61B2B708839CFF131EE49EA6BD5C0E655309F0B39AB6161516A6F5E7C4DF184D313A5784EC208C76BEBB3BCFE09C5713AEF8FFC4275F379E2CF0D8B0B6204493DA4BE6C607AB77C5741F32B640C77A2EA386E6D64B79E35962752B22B720E7B577D5CF27888B84968634306A94AE2DADEC1796F1DD4322BABAE54AF435344C4127B1AF0FD6FC55AEFC3AF1249A5431417BA5E3CC86194E0AA9EC0D745E1EF8C1A4DFA3C97BA55FDAAA7FAC91177C69F8D79B2C0C9AE78AD0EC94E29DAE7A7A8C364639A79C5737A478D3C2BA985FB1EB96CEFFDC66DAC7F035BFBD58EF8CE558715C6E94D6E85CC9EC3CE73C51938E29809A7AF2339A5CAD3B8333BC4BA65B6B5A15DE997582B3465707B1EC6BC9FC27A94EF6B3E8BAA58C67FB264F2814F95B683C6477AF68720606DC8EB9AF19F195A8B0F8AEF12BB2437F0091B1EB5EE6518970A9CA7162A9A71B9B7A76A96906A2EF6B8DA570E0F18AB7A8DBB4B3266233C53A128FE87D2B0E0B5B6B6BC16934EA0C84724F635D858C1369C121668A7B5077C72193A7B57DD4269C798F0DA49D8E1469174F3CB32A660427CC53D41ACFB299209E5DAA5771EF5DFEB70B5C89EF2DB6DBCA8727072AFF80AF34BD69D6EE432441D98E7838AD13D0563EB9BC6D0E3BD8E09EC6C1E5957E51E4A9278FA548DA568D290AFA269CAB8EA6DD39FD2BC3F42F14C975ACCB3318A2689CFCEE493ED81DAADEA3E26F105DEA896F6778B386E72ADB80F6A96D9AB47B3AE95A222948B48D3801D716E9FE1505C59F8763C6FD2B4D2FE86DD7FC2B8BB4BAD4C430DBB5DBFDA8805D54601FC6B42DAEE76493FB461244670987009A13915182DCC9F8BFE15D175BF08CEDA669D6306A36A3CD89E3840600724702BE58D367035096DE4EACC4F4EF5F5C4DE218ADDE3B54B6B701F860D28247E55F2F7C67D1CF86FC5C6F2268FC9B990C8154FDCC9CE2B93174FDA23D2C255F64220542DC719A27E80A81822A84970CD64B3C67236EE3EF5358DCC73C0928271D31EF5F3D3A6E2DA3DC55235236B9D57C37F1347A24BFD957F2793692B7EE243D031EC4D7ACDBBEEF9810411907D73E9EB5F3F5EA2CF1ED9220F1E3815ABE1CF166AFE1A2912B3DFD87510CA72E9EC0D79D89C1FB47CCB730927067B84C89716F2DBCA032BA6DE68F875A848B04FA0DD37FA4D9BE573D5A33D08AE53C3BE3DF0F6ADB62373F64B8239867F94E7EA7AD68EAF0DC24B06B9A59DD796DD5579F363EEB5E5CE0E2ECC69292B1E98BC8C761D29471593E1DD66D757D392E6DDB04F0C8C7E643DC1F7AD20C735848C12B68C980C9CD2F43BA9A8D9E29E7A5662679C6B23FE119F1A9BB7F974ED5300B0E91CBEFF005ADF2CAE0156049AD6F12E8D6BAE6953585D282922E15BBA37622BCF46B371E18BA8B46F1245B57216DEF47FAB75E8327B1AD541C9686D17CEBCCEB4900E3D294360F1502CD0CA8258DC3A919054E4114BE60EC6B3E5B0913EEC820F34018C11D8547CE010DF5E29777CBF78714ECCBB585C8C505D41DC31851C8ED55DA55DD8E87AF35C078FFC7315AC32E91A27EFAF242525947DD8C56B4694E6EC88323C63E14B9F881E21BFBDB09827D817CA8CE3E590FA0AE7F4AD127D17E1AEA0D78ED1DC5C5E88990F5001A97C2FE26F12F85E206DA48EEADB7EE9627519E7AF3D7357BC5FE2DB7F14C769696DA6CF6888FE74CCE38CFB7AD7BD4DD48250B6873C92948D4F819E0DD0BC57F102F21D66C927B3D3AD012A3E5058F4E457A86BDA0CFE0ABD89ECE492EFC3F70FB57CD62D25AB1E833DD7EB543F652D124FECAD635D91C18B5094C6B81C80B5DDFC4D87FB3FC09A8DBCEDE6A36D11B679DD918AF62385855A176B5387DB4956E55B1CFA1079E08E08FA5480F031C0AAD68CC6D62629B5CC6A187BE2A7C6062BE33131E4A8D1E92D50ACFF00215EF5E61E308CDCFC55D2A2281B6DB6083F5AF4E0154F98FF00740E6BC5B5ABC7D43C71A9EB304A1E1B60208F69E770EA6BAF2AA72759330C469066E78934BB26BD62C92C72A1C2A8EF4FD22F9A0B11A4EA9A54B2891F11B03F36DAB3FF00096E8474EB78AEA4DD2C9C4A71F3A7E35D0F83AD3C39712ADCDBDDC97A036E196CB2FB62BF42A6BDD48F02495CE62FA37D3EECA6DB8B7B629CA3645655E6911DE28BAB7604B1E85BB57A5F89DB49B8BD93CDBABF055704796A463F1AE1F54B8B05223B1BE8E4453DE3C11F5C715B242235BED30ACB0471416A55882C5B9FD6A2F0C8BA3AE24D6FA804B753F3151B87F215CC6A33DB3DFCCB0DB976321037741CFBD5ED1D6FD1C04324BCF1129CA8FC055A356CF51D4FC41A34DB2DE58350BA9633CF97F2A9FA9AA4DE26D4258C45A6F85551338DD34DC9F7279AE6E16BE9D1A2926119072D0E07F5E6A8EADABDCDBC26DA37309C6008CB007F2A1E854647A1E97A96B4F243BADB48B500FCEEC7763F4AC4F8C496BAD5B69B15C2D9DD20BA08EC83079E08E9587E09B2B9BBB85B9BD8E5308EA646383F99A9BE23DF5B2EB7A7431DD16B7849B89A30F90A00E3E95C95DDA0D9BD2776795F8AF4EB7F0D789E6D1FCD536ED878C7A03DAB1AD99AC6E4C25879529DC86BBBB4D1ADFC506FB51D4E19E49EECB1B2EEC00E98F6AF3DBB82E77C9A7DD2347750B1DBBB83C578CE9CA776CF429D651D0DF59331EC079F5AAB2DCC71CEB09900901E09E86A3D26713DBAC4C4895061F354BC45030812E23C9921E78EF5CAE9BE6B33D19548B85CD19E28AF0FEFD15BDF18C56968DABEBFA1EC1A46A4D2400FFA8B81BD47D3D2B2EC2E45D5BC678048E466ACDA4F0BB49193823B56538AB59AB87B38495D33A2B3F88B73A6EAC3511A79B0998E678D5B304FEFEC6BDAFC0DE33D27C5B662E2CAE13CD503CC849F997F0AF9E1A28A58B6B0572DC723A56369DBEC757F3EC6E67D32EE23F24B136037D47715CB53034EA2D34666E125B9F64230EA0D4A64CF18AF0CF09FC5ED42CDA3B4F145889E3E01BDB75C71EACB5EC1A06B7A6EB963F6BD2AF21BA83D51BA7B11DABC7AD869D1DD1328B46A293D09CF155355D32C352B46B1BFB58AE2DE4FBC8EB9FF00F554F1B8DBCE734A5B3CE6B04DA25AD4F24F1DE83AC781AC1F58F0ADE7996287F796772372A8F63E95CD59FC57D4A28234BEF0B3B330DDE65B499047AE0D7B1FC448E397C13A8C72E08F289E6BE72B3756B58C99180031C57AB87A70AB1FDE237842538DCEF22F8BBA498F171A3EB0847551103FD6A8DEFC5A59091A5F877509CFFD34210572E0F5099E7AE6A3CAC72EC2D827A0ADD60F0C9DECFEF0787A89EE8BFABF8A7C59ADA149A74D36D5BFE5943F7C8F42D5CD3B3DAEA76F696C09C9DD213C9C1F5ADB691444647390A33589A234B71AE5C4B2A901C6D426BAA9C2114F9568528A8B4997B550F2DABDB43B84F29F908F6A437525B684C5A4F32509B001D49E95D37C3BD386A5E24B9D4A700D969D0B0663F749A6E85F0EB58F11EEB99AF3FB2EC92E0B45228F9DC6EC834E3285ECC8C44D46EE27D0BF0688D27E1A6916C90181561F3252E36E49E49E6B9EF116BF75E34D745ADB131E87A7C9B9A423FD7CA3A60F702B8CF12F863C7932DB44BE319B50D3A37559E293111283B02BD78AEE6C638ACACA2B7851523030AA831815D35B31851A5CB067954A9394B9C9F7E3AA9A5794A9CFAD4323E33CFD6B9DD73C490C17B168DA634773AA4EDB638CB7FABFF689AF9694275A7A6ECF462AC8D0D7AE6E6FE58F42D2D2496FEE8ED609FF002C90F5627B715D768FF07BC0F6D63143158CD1C8066591663991BB9359DE0EB38FC256F3EA17127DB350B9506E1B78EBE8BED5B91F8DEC921DEBB4337DD8DDBE763F4AFB0C9F01EC61CD25A9E3E2EAB9CAD1D8E735EF80DA2EA33996C758BAB33D94A075159D61F053C45A44A5B4EF12DB67F8643115615DDC1E2BBA62865822B5473C077E4D6E41ADC0621E648CC4F651C1AFA28E879ED33CEE5F85BE28BD88A6A7AF594CF8E24442A47D6B9F5FD9FF005E9279187892D1509C8010D7B449ACC6A8A1A329B8E14E473491EB51A4850B6481D29DD8F53E3F94A49A84E651E52AC8DEFDEB46C352B689B74109E3A927AD1AEBA497B3A471672C700561C91A86C0254F700D22753A18359F3752F31DE5083A08B8FCEA86BDA9590BA468ED656981C969A6CE7F0AA62D6789972F8571F8D59D2F4F8EFA665322AC9BB680C0F3FA1A993652B8EB9F1F7F63DA9DC6D639D47EE964CBFF00E3B5C9BEA1A8F892E24B89CB6D9DB32C91AED040E8A3D2BD0351F87704D24535EFD94CA071B4162299268567630F906F2658C7FCF3B527FAD6138732B1A464D1876D3BDA5B98A2B8910050A006E47B564F8874E86FAD44C1D96ED7956CFF003AEA8687A3490CD226AB78AC837624B42013F5CD62B42841DA7383DC74ABF67151B2129C94AE79F3DEDC5BEA0A8B6EFE62F0E00EA3D6BA38DA1BAB53BDF21D78E3BD686A56A44CB7F651A99A2C1DA47DE1DC54D73E1F7BCD34788F415F3A1240B8B3EF1BF7C0AF23194EDA9EAE1AB732E5673F63A75D45627508159BC8936CE83F841E8714CD407CA97D6C4F07E7C577FF000A2C67BCBCD57ED5613C56B2C5E5B2CA98C9AC5F19F862E7C2FA83916D2CDA5C9D194676E7D6BCF5517359EE7724A08CBB69A39E2564E78AA7AD43BA2F3D38788E7EB54F4EBD822BD7B742DE5372AC410056E1457539C1C8E3E955B33A616A91228661716514C0124AFCC3B53F4DD6AEFC39ACC4DA55C1B49DF9014FC8FECC2A86912F96F359B83856247D2B52D3456D56D756D4114B3D8C6ACB8ED5138C769AD026F4D373D93C0DF1574CD5116C35F234BBFF00EF38FDD49EE0F6AF488A78654531B2C88C32AD1B06047AD7C9D1A437F600CAAAEB8E411C8A826D6B5BF0DC6A743D6AFEDB3C796B26E18FC6B82AE5D1AAFDCD0E5768ABB3DDBE36F8920D3BC3136991C8AD757636840790BDC9AF09F0C4ED35831273B188C1EB5269D15D789F5AB6B48AEE6BDBCBA60D732BB6EDA3BFD2A782C8699A9EA9A70EB0CDF281DC574E1F0AA84395EE5D2A9797BAF42C3138E3359313BDDEBAEE4FEEA24DA07A9AD0BFB9FB2593CE402C10903DEB3B46B8B6B7D18DE4ED996663C0EA4FA56C96973A6AD4575A9AC96F2EA3A95B68F6FCC970C158FA2F726BD0FC51F0FEEA7162DA04D6C9243108A4F3010318FBDF5ACCF01DA59F85F453E26F108DB7172310A9FBCABD801EB50EA7F103C4F7539FECC30E9F6E394791373B0F7AE4A929B76818B9B96A75773A4C3E11F861A9DB44E67B810979DC70198F5C557F0DEB76FE27F06D9456CD24BF6509F6BB488859594751CE3AD719AC78DB56D4FC21A869FAABC4D77BD512489768707D4541A7E82EB2D85E41733595DAC6089216DA09F46F5AD28E0EA565EF6E70D4C47233D3354D63C296D1ADEE86DAA693340479D65728E2375FA9E33F8D6C5C6AF6B0787DF5BDCB2411C5E6FCBCE4571FA56BB26A53DC7837C6E11A49D0AC13291B651DB91DEA95F79DA47C2DD474C9D1C2C727911B31E5973C7E958E2308A335191B529A94194AFF00C57AE789D37593AE956321CE4313338FA8E9577C29A3787F4DB86BABF2F391F316392EE7EA69FA2FFC2296DA2E9D1CF6D20628A3F72D8627DCD5FBFD274D983496715C8CF2A1DF38FD6BE830580A34E37B1E6D6AF2B5AE5DD5BC4C9A940B6FA45A2D85A443E6678F927D8E699178B348F0C43BF4EB1375A9B0F9A49B0510FB57326CEF6E6E05ACB2F92839E4F18AD693C3B6367A41BDC4D78CBD770013F2AF62365A238399B2D693AF6A5A95F9BABD75795CEE3B87CAA2BA89FC67242C96D06A3651B2F6F24B135E779D4751021894DBC7D95170315B167A05A5A48B36A135C7C8373045DA4FB64D58CEF61F12DDDFC11C2AA59B20EF451CFE7576F35311CA2592DC8246DE58827EB5E782F2C6E6277B20F0DB2700CD29C9FCA9F3DC89157C85E3FBC4B107F5A02E3ED34BD2E6BA3717A1FC93210C10734FB8D17C21F68673BA189792DD4E6B5F5ED3BCABCF2523F2C2B7000E9585AA59C90EC86241296E59DBA0A9B834133783766D8659647E8ACE9CE7E953D868F631B9BDB2D6EF2250BBA4076AE45456DA45B49632CA2D95EE073841835996FA7DDFEF0DD426312740C3240F434F4279ACC8EF358B58BCD8E07B895B3807CECEFF00CEA8937B3C61BCEB8893A905CF15B76765651F22DA2665E3714E9493490C9114C100760334A5E45377D8C98E29994462FDFCB61F32B12735917F6C525DBCB7A1038AE9ED622B0C862B5520F466EB4E3A740F1F9888ECE7A9238CFB56608E392068C8503934FF000ADE3F857C608676D9A7DF1C329FBA1CF435BB71A6CCC4A952198E0102B23C67A5CEFA44BBD4868503AB7A11CD618887341A66F41F2CB43D5E6DECE594808E33C0C539846D6C639231202390DCD637826FA4D53C296372E7E73180C7DC715A73BFD9A0966704AA2B37E42BE0310A70A8D1EF45A7030FC47E1FD0EFB49962BA82DAD1483FBD0A14A1F5CD787CD7F6FA76A5269AD7514F1C4C556643C11DAB7FC43A8DEF896E259AF6E596CD5888E05620019EA7D6A81B2B6F24C46D2258F19202FDEFAD7A98483A6BF78C9F6D6D2263457509F131103A491BC79254E6BD7FE0DD9C527862F64B850C2EA62AD91D4578C6A8B6567AAC2D651AA6148709D2BE83F86D64F6DE0BB20401E682E7F1AD71F250A69A3384DC99E59E2ED0EEBC27A8CDE62C9269F33178E44525573D8E2B47E1669136B1AF9D567B31FD9F026D532A70E4FA035ED1E5C7E5F96D1A3AF5C3283FCE80B1A22A471AAA67EEAAE2BCDFED17C9CBD4DB746568DE1AD0F48BC967D2ED23B7964396651CD797FC4FB41A278C27BF7575B2BB00F981490A7DEBD90EC8FA7DE26B99F1A78BB4BD153EC93DAADFDCBF2B000187B66A30F8AA92A96DC96A308DD1E73E00F0F5C78AF58179756C574681B04B64098FB7B56A681E12D0E0F887AB477CECB69A70FB45B40DC2F3DCD54BCF881E31DCA2DADB4DB1B71C8B6F2F381E991D2B1B5BF114BAB5DEA1A8471794F736E904D83D1B3CE3DABD54AACAFD8C67554B56CB7E29D626D7F5D6BA6E2DA2F9608F1C281DEABBC8238449331039C1CF15023470C4B918D88063DBD6A08CFF006A4A115F16E876A8FE273E829DAC670ADCAEE87E876977A9EA70DBC10997CD937371D17D4FA57A8A5869D1D9C70EA443B47F71636FF0AE6FE1EC7A9691AA6A36D7B6EB05CBA29C11D13B574CBB64BE0976AD7240C8552178AF5706BAA3CFAD554A5739DF16585BDE5922696AD05DC2E1E06CE0E453F575F15F89E1B3B2D5A0B3B0D3A0C3CC626F31A46038C81D2BA1BF9DDD0A1B55B7551F2100122A5D1EF27B7B578011B64396763D0FB577CA8426EED19FB66968C9A0F08E91F638AF5C8620008A1F629FCEB3FC41751C108B686282323B2C9BFF005A64DA85DC7198E72D3B0FF56643951F85554B68EEE62D3ACC2671F75000BF9D6CA3A58CDCAE57D25A537209309527A3B6D1FA7356C25E5FEAA6DA155FB329C911B12B5AABA3E99631ABDE5D132BAF1145F3B5598843069EC912B2AE7857C03FA568958488FC97B19923455DE3A9539C5666BCF71793EDDED23A9E99AD59901B5DD0332AE3E6CD53B633A9DD147F201F3330E4D5A195E1B19521413460211C6D1CFE35A09A534A32CD285EC0138155A3D465177E40018FA93D2B6AD6E12C7735D79B71BFA041C0A623BE9ADA196E9E48829DCDC96EF599E2DB4B7FB344D249197507023C616B8ED575FB8967955B7290DC61B03F2ACF9355965FBAC377439359730D4AC68E9F1996E5A496E45A42BCB127A8A8351BF5795D6CE579A307019BAD53791B6156DBB4F5C1A75BDD4091E228803EF55B94AD2E8366477C012953D4EDE2A5B48A1488EE49A4607B0EB54E69A595F32617FDDEF57ACEEAF00530CE531C104E734D2092B1242F16C30ADBCEC01EA10FCA69B244D6F28DB1B9247CA85B19AD4B3D63518A565B919880E48E777E15AF0EABA40911EE6D079B8F95954669D894AE624665F2411163D415C63F3AE6FC7D771C5E1CBB2404771E58C7726BB2D66E6CEE6D9A485C46E5882792CD5C67C468207F04B3DBE6768E44690B7507358D75683669495A46FF00836C4D878674FB665DA7C90587A679AD3BB80DD45242FC47229523EA2A2D1E5F3B4BB398F1FB85FE556F71278E95F9F6365FBDB9EED3F84F0AD73C29E2BD16F258ED34B96FED5A4263784E481E8455AD1BC0DE2DD5D4497FB347B5270C5C8329FF0080D7B6104E49381F5A649F36130483EB5B7F68CB96D6D49F60AF73C93E2778574BD0FC21A7DAE9716E9DAED4493372D2E71D4D7AA68F1F91A4DA5BE302389411E8715CD7C4E487FB3B4E0C0605F47C77AEAD5958054180145618AAD29D35CC52A6A3B1637281D8D3181E08E075A675E314FE190007A1C57025CDA9B3B2473DF103C409A0E8DE6469E65D4D94800EC7D4D790411C9E679F3BB493C8773BB7279ADEF88F77249E397B7B86FDDC11028A4F7AE7A7BA79A74B3D3A37B8BB90811C6A33927D7D2BDBC15254E09F566125A59B16F2555610A105E4E319E6BACF85FE10B6D4FC29A8B5DB73752E1245EA98EE2A9E97E137B69974FBC2B71AE5D1C48ABCADAC7DFF001C5759E0CB77F0B788A6F0ABCA5EDE64F3AD58F5FF006856D5711CB17CAF53074936725A8FC2EF1236A62DED6FD6E6DC8E6591C26D1EE3BD779E09F87FA768263B8BB3F6ABC418DE46163FF747AFBD75C876BE78CE2B3F56D7F4BD27E4D4A7316FFBA021627F2AF3E58E9D4F759AC70F1E8727F112DFECBE26D2B538DDD5652619981FBDE9C54F696EF73308C5A24C5721599B071557C4E7FE125BFF00B6DADE81A6E93B276083EF67D6BB4D363D3F50456D316690B4618B04DA39F7AF7F2A9B9248E1C55150673F73A5CCB1132227D01CE2A15D26E4C4AC9C0F4AEC5348D46DCB4B6A91E3BA950E6884EA2B3A87D311B8C13241815F4491C292393BAD3E38A08C4ECBBB39DA0D5E9746C5AC52ADC40C480447BF9FCAB5B50D144886E3666423FD5A2F00D519340BB8E313CD22A291C282322AD2B0F9514EF74FB72D1091CC473962BC1C547345A7C9B96D55DB6F567041CFE35AB6D6AD6E1185B4321F592439FD2B6EDF43B4D4FE7B89161503848C9C1FAE68211C6DAC49131133961D80E68BB125D958906C8C1C038E95BF7BA3D859EF487505470DC2BA1C7E75496DAED6F142CB0E3B153926AED62B946C1A5C16A8032C8643F7A609C1AB72AE9B85FDFB7031823345EADF2C5E64F3CBBBD18F1FA55AD2ACEDAEA33E6F972381CEEE295C96AC7057EA45D4D8E0EE3518B72C81CD69EA631753640E5BD2A0556E0741ED536020821DD29576C0AD7B7B7B445F9F938AA91C0DBF3938353490CA57A645068B61B796B099374478F4AAC914D0BEE00FD455D8607DB86EB8A9590851939AA4C7A32A25C4A0EE6241F5EF572CE7844EAF70AC533C851CD41E58DFC8A94C6BB703AD3B92A27422C74899D0C4D222373877C60D64F8DBC3D1C9E1EBF8AD72EBB37021C718AA632846FF00BDEA6958CC607456C8652315956578345C74647E0BB9371E17B23924AA94CFD38ADE87818F4AE3BE185C16D32EECB043DA5C30DAC7A64F5AEB632EA32E3E6DD5F9F6614ED56C7B745FBA56D7B57B2D26DBCEBE98C6AFF7360DCC7D80ACC83C55A65EE8F7577657599208C831BA1570DDB20D5DF09E9D0EADE33BFD4AE137A58909086390ADDC8151FC65D117FB3D35DB18D526866459F60C6F5CF7F5AC23451AF3252513035DF05C50786B4FF135E5F5E4DA9BDC46EEAD2FEEF6B1E005AED908451D3E720FE950FC42CFFC20768C99DA6587071C638A9F0A6252796C803E98A3112724AE25AAB8F3CF206053E5C6C55E85BD2999ED9A74803AED2C3A7AF26B8DC74B8EEADA9CCF8BB47F076AA0DC6BCF6E924230CE260AF8FEB58DA48D385C8D3BC03A588D08C4DA848B80077DA4F24D6BDE787BC1BA6EA2350D4AD6CC5C4AF926E65C827E878AE826BCB3B3D2A4BCDB125AC69B808F18C7A0AED856E54A37665ECE2A57447E1ED0ADF47129B693ED13C9FEB25979663F5AE73E276A161A3AE9DA9CD711A5CDB4FCA29F98A1EB5663D4FC753592EAB6DE1EB23A57DF08F29F3DA3F5C545E14B2D33C5F07887519AD5672C86385255CF9440CF1E957677E696C3969A963FB5BC4D35BC1E22165631E8729188C93E7053FC46B6FE1D59C1ACEA77FAF4F125CA33F930875CA851DC035369DB750F85F708CB865B464DBE85462AD7C2EB57B3F01E988D952537383D49A4DC2294A2293BC5AF9181ADE956BA15DF8B228142C57F69E746B8C2A91D7151F83B54D4A3D0E05859610D128271D4549F1B75582CE2B2B7452F717B9B7545E5803EDE95674D4B6B6D320B220B491C4AAC48E9C57B994A7CDCC706225A599A169AB5EDA82A9210EDFC44E6A6B9D5758310924BD322FF00742D52B7B88A37E230E4F1C8AB7F69C0CCB18C1FBBC57D4A471590FB7BEB995FF7A5769FE13C554D5677DD88E71FEE276FC4D5F5D4E7011018910705FCA04D53BC689E6664F981EA718E6A8456B770CB89E5910678DAB935624BC9A1B675B742148FF58C873559D3E4242804546CF3326C323EDF4DDC5326485D2AE00790EA111B82DD0139A9215325EFDA121F22353D338AACB10C83820D4D133460A98F70CF7A7722ECB7A8DF7DA48B709ED91CE6A84665B695844EC0E306AC0BC50403690E7D7268F2D6590BA14191CF3523B98DA847BAE652C3F8AAB2213D7B568DE63ED3201FDEA87CAC7E35A072319B7807693F4ABD0BC1E56190E7DF8A6A46CA731E73ED4E56739F363DC2A5AB97D074AB920A45F8E6A0649392576AFD6ADC3241290BE5ED2381CD4AD1310427CCA3B509589E6B68515B7475DC1F9AAF2A346FD19B3E9DAAEC912A61882A3B8A7473C614AA461FD8D29AD0A8CB533981739208ED922A508E231C119E956D99658F6B44A9F4A744508F9C9C0A2D756299C2EA29AB7877C4373ACE9D63F6ED3EE401730C670EA47F10F5ADBD0FC71E18D48320D5520987DF86EBF76EBEDCF5AE8E289659CB00178E9EB595AE786342D51D5B50D1ECA63BBE6263C1FCC735E46332A8D77CDD4EAA589E55665EF865776264D5C25FDA3AB5C1652B28E41AD2F1C6B5E1F4F0F5FDBDDEAB6084C476A999492474E2B8B3F0F3C1A5FF0075A32420F5093483F91ABB65E0FF000958057B6D0ADCCAA73BA4CBFF00E844D795FD83372BB9686FF5B4DF358E6FC47F100EA7E04B1B0D3B48D42E040E8D7175E5E2345523BF7AEFB4CBB82FB4EB6BA8183C6F1A90C3E953DA5BC12C4D13448B03A9568C2E1707B62B85952F7E1FEA1245896EFC3D7326E46C65ADB27A7D28C5E4CFD9DD6E82962F99DAC77671839CE6B3B5FD412C349B8BD2A0B4636A73F798F03156ECEEADEEED12E2DE649636190CA722B2AE6D7FB6BC5F63A4A8CC107EFE71EFDABE7D41C256923D083522E784BC07A6DD697FDA5E29B28F52BFBA00B09FE6112F6007635CFEA1A4C7A578920F0965DACA7B959A0C9FBA9D76FD2BD8235114600C1006315C478D6DA0FF0084FBC2F7EC30C59D3F31C56AEA2E5B4998C65272676D1288E35882A90ABB40C638AE3BC15A72E91E3AD7B4FD8A915C859D14719CF06BB301724BB05D99CB13803F1AF25F1BEBF7F7BE368CF82AE23BAB9103417738E638BE87D68A14A537686A66A4945A645A5F8975EB3FF8483C3965E1A9B5348A7912396195401B89E086353E91ABFC48FECE874A4D2F4CD15225D82E2494C8FF005DA38ABFE1AD00E8B69B565796E656DF7131624BB1EB5B5292540DC4107AE39AFA6C264D4747347255C4B6CC1D1BC2D159DE36A5A8DE49AA6A7272D3CD9C29FF00657B0ADA96305C367E63D735387CC7C92481DE9B8DDDABD9861A9D2D228E69C9C9DD95E34D8D9A94BEF70180614329CF7C52281B866B744227570DF2A2851ED518528739FAD0C429254E290F3DC9AB4AC262A95C1F7A84005CA9AB11AA819A8CFF00AD2452689931BB17B9A360F2CB0E6A420E0E4522FCB19C77A933204B7467DD815A9653DBA66331F2A3AE2AA5B0E39A7C0A0CAE49C50331AE494BB7C8C8DD4D7390A40C73D2AD5D2837AE3DE956341972A09F7A6CD90FB0961597176BB633FC58AD27B7D38A97B59A465F46E45436C91C9108DE34607B91C8A9CDBA5A81240CCAC3A734213322EAD4407CD5703273843D3EB4D82FDE12B921831E6B69618AEDB74B1AEEEE546335937D690C12B2A02475E4D0C864AE6D6E72E65298ED8A81A3D8C363020F7A8205059DBBD5B9547CBD7A52145D99564CAB64679A74C3F7471C7D29EC8370A9022B0E474AA46857B3775524E71EA6AE105933834C28BB29D1120019247BD3290281E829C170C3E518352280CE7356D6DE3688120E6A47CD612DE444FBCBC52DEADADE40D04D02C90BF0CAC3208FC6A68A28F382A0D12855385502A5AB8AFA9C44FE08B9D3AE1AEFC23AA4960EC72D6B37CD0B7E1DAA9E9379F10345D7AEF51BDF0AD96A066411A35B5CAA9C0EFCD77BB983019EA6AC08137062589F735C15F2DA15B56B5378E2670D11C99F88BE21F33CB7F00DF823AE2EE322B2F5BD63C6DAEDF69F7761E1182C5ACDF787BBBA56FD05773A85BC71C4ECB9C819EB54ADF2CAAA5DB0C79E6B83FB170EA57B0D62A7D0E6E7D0FC53E221BBC4DE262B06ECB59D827968C0F663D4D74FA468FA768B025A6996D1C300EBB4724FBFAD58485110ED069F66BE62B2B1242F4AF4286168D2F8518CA7296E4E2345240239A24B659173C014D1021E4EEFCE9557122A8271F5AF423B13719F658B18079A431855C2E0D69B5B47E56416071D8D553128EE4FD4D122594914B920A8A24B6080B7033562250643D455F86DA29B2B202C314D6C1B184510AE4F18F5A429B791C8AD19ADA273221CE17A60D35EDA2110C023F1AA40CA2839C639EF4C94796D9E368EF524C9894E1987D0D49656D1CD64E1F71FC69BD8868AE0F9833DBD69C91E570306A48214557419C0E94E862413F7E9592206AC6578A582263231DBDA9F18CC8C09381D2B474E891C1661CE2AEC07FFD9'),
(4, NULL),
(5, x'89504E470D0A1A0A0000000D494844520000024E000003480802000000BE15F70B000080004944415478DAEC9D7144255DFCFF1FD65A4956242B492249924472E54A22595792C84A924492248995CACA8A24C97A4492248924491249929548B292449224B9245792F47BFFE6F37DCE77BE7366A6E96EEDD6EDFDFA2373CF3D73E69C3973CEEB7CE6DEEEFC734F0821844434FFF014104208A1EA08218410AA8E104208A1EA08218410AA8E104208A1EA08218410AA8E104208A1EA0821845075841042085547082184507584104208554708218450758410420855470821845075841042A83A42082184AA23841042A83A42082184AA23841042A83A42082184AA238490C89B91C963A0EA0821E455AA8E27E139CE154F2B21845075541D218410AA8EAA238410F26255777777376D707B7B6B4EDFDEDEDEDDDD75CA8394CDCDCD9F3F7FBA97B3B6B6363131B1B1B1E17E2CAA8E1042C833AAAEBCBCBCC3E0F3E7CF2AF1E4E4242929A9AEAECE294F6D6D6D5959595151914B39EDEDEDA5A5A5E3E3E36D6D6D2EC7A2EA0821843CA3EA8E8F8F333232643B3B3B7B7F7F5FB6ABAAAA7A7B7B45754E79AEAEAE94EAF43CC160303333D3CBB1A83A420821CFA8BAB9B9B9CACACA63036CCCCECE22117FE1394463A23ADB3C16D5E9799082B0AFA6A6261008A0289772A83A420821CFA83AF8A6BABABAD5001B53535310586161E1DDDD9D529D9E47579D9E0729313131272727C8969E9E8E18CEA91CAA8E1042C833AA6E616101B1976C575454CCCFCF0F0F0FFBFDFEC6C646680C8A9A9E9ED6F3E8AAD3F320A5B4B4545220369772A83A420821CFA83AE82A2121E1F6F616615C62626230183C3A3A5A3040EC555C5CFCEBD72F3D8FAE3A3DCFE5E5655A5A9ABC8B725656569CCAA1EA0821843CA3EAC0E0E0A0CFE7CBCBCBEBEFEF37A7AB1B98B6797A7A7A0A0A0A62636361BBF5F575DB3CD8C0CB4020505E5EEE7E2CAA8E1042C833AA0EDC183C471E2F29541D2184906757DD1B3F573CAD841042D55175841042A83AAA8E1042085547D5114208A1EADE92EABABABAF8FCDC88A4BBBB9B239090DF99BE099F424E220D2E7AB87C21E44FAC21780A08218450752F85B3B3B30513A7A7A7AFA5E63737373F7EFCA8AEAEEEE8E8E035F758767676262626161717792A082191AFBAD9D9D9D4D4D44683B4B4B467FDCDECA7E5F3E7CF434343575757BCE01E0BCE9BDFEF9F9C9C6C6B6B5B5D5DE509218444BEEA2A2B2B655B3D1EE2E8E8A8BDBD1DF3E0E1E1A1CA8920A0AEAE6E7070F0F2F2122FC7C6C646FE032F91533D427E7F7F7F7373131B2326BC3F277E747414F97138178D618246652C959C9E9EAEAFAF47CAC1C181AAB36C2C2D2D490590727777878D99991944B4B685EBD55E5E5EB6A4E8C7B29C9017CBF5F5F5C78F1F2DE7566FB23A75E3E3E3AAEF2CD78097136E7B2DE9584AF6B897BEA35E012F44768F1342D5D9A80E033B252565616161717111019FFCEADAD7AF5F31A1C85DAFDDDD5D994A301921B4424EBC3C3D3DCDC9C991724A4B4BE5674C636363E5BE686E6EAEF7F02B3A3A1ABB7CFFFE1DF571CA837A464545211BAA814A62FABE377E11756B6B6B656505E1A9F82C21214185805201A4A04598B05CBE17A057BBACACACB7B7D79CA21FCB72425E2CA85E201078B0C972EA709EFFF9E71F49D1AF81074FB8EDB5A46329D9E35EB655D27BDC0B91DDE384507536AAC3FC5251512129784B86714C4C8C0C6F8B6F1A1B1BD54B4CA0986E82C1A07A367C78F38EA8AEAFAFAFB5B5D5290F96D87A25110A60CAC3123B2B2B4B9E496F3B8363726C686870A9805E6D4C7C6B6B6BE614FD58FA0979B13DAE9E7DE5D264A48442219C37BFDF2F29FA35F0E009B7BD96742C257BDCCBB64A717171615C7291DDE384507536AA9B9B9BABAAAA92949A9A1A79B83BF4631B5A99C739A6A4E6E6E6A1A12158EA37558709059E739944502B4B253113610E9A9999917956E629CCBC727F29333353CDE0A81E64EC74F7D2B6DA8853E54E9AA4D81EEBB54C7C1B1B1BF9F9F95E548790056D5429966BC0CB09B7BD966C7BDCFCD2E35EB697655353132A535252121F1FFF3BAA8BA41E2784AAB351DDDEDE5E7676B6A4E4E5E56D6F6F63036E502B59B95BA88F73ACAF311DE4E4E4288BD8AA6ED5C0A54A58AA4B691F3E7C70CAF3EBD72F55499FCF874A627E946744A17A98E6643272BA8189B8A1A0A0C0FBC487895B6EA3498AEDB16C27BE071BFBE7C1894D4E4E561F38996F579A9B1C1515254F8F5429966BC0CB09B7BD96742C257BDCCBE9B20CE3928BEC1E2784AAB3FF5A4A4B4B0B4C505858585F5FAF4201CC3E586B231D9A711AE71D1D1D981A5C6610398ACB877032C99695954199BDBDBD2ED9A492988EA592C16010D3136A180804303FBAAB4E96FF4E1FD759F6C25F752B55526C8F657B421E6CEC5F617D7D1DF5AFA8A8C0491691E827EAFDFBF7A2439562B9063C9E70FD5AB20D342D579797BD9C2ECB302EB988EF7142DEBAEA9CB07D0C602814D23FB133D3D0D080F5EF5FACE49FFCDF83D7FE7F0E0FF6A697BDBC9C048F8F94B494ECFD4194E135E40DF6382154DDEF727B7B5B5E5EEEF7FBD9FD841042D5452C7FE061F0841042A83A42082184AA23841042A83A42082184AA23841042D511420821541D21841042D511420821541D21841042D511420821541D21841042D511420821541D218410AA8E104208A1EA08218410AA8E104208A1EA08218410AA8E1042C8EBB2CB3340D51142087959AA7B39055275841042A83A42082184AA23841042A83A420821541D5547082184AAA3EA08213ADBDBDB939393F3F3F377777778797676B660E2FCFCDC762F649E36B8BDBDB594B6BBBBEBF158B6E520657373F3E7CF9FE61DD7D6D6262626363636D85F541D554708791C2B2B2B252525A3A3A30D0D0DC5C5C548D9D9D969FC8FA8A8A8939313DB1DCBCBCB3B0C3E7FFEAC1291392929A9AEAECEE3B16CCBA9ADAD2D2B2B2B2A2A523BB6B7B79796968E8F8FB7B5B5B1CBA83AAA8E10123ED1D1D1A15048BD84F3CCBE31737C7C9C919121DBD9D9D9FBFBFBB25D5555D5DBDBEBA43AFD584EE55C5D5DA9430783C1CCCC4CF60E5547D511427E97D3D3530464E694A6A6A6898909DBCC737373959595C706D8989D9D4522FEC27388BD1E549D3A966D3916D5210F82BC9A9A9A402080C2D953541D5547080987DBDB5BA8657979D99C92989868F91C4E0127555757B71A60636A6A0A722A2C2CBCBBBB7B5075E663E9E5E8AA439E98989893931324A6A7A7ABC88F5075541D21E411206CB20470A3A3A388EA9CF22F2C2C6017D9AEA8A8989F9F1F1E1EF6FBFD8D8D8D501484343D3DEDE5587A39BAEA90A7B4B454B6A1439792095547D51142ECA9AFAF1F1818B024FA7CBEADAD2D73CAAA815251424202E233847108FE82C1E0D1D1917C6313F1597171F1AF5FBFF4BDF463E9E5E8AABBBCBC4C4B4B936D94BCB2B2C22EA3EAA83A42C823585A5A8A8E8E2EFA8F9D9D1D24EEEDEDE9DF04A936502F070707A1C3BCBCBCFEFE7E7336CB0D4CF35EB6C7D2CBE9E9E9292828888D8D459EF5F575A4E02D64080402E5E5E5EC32AA8EAA2384FC396E0CFE4C394F752C42D55175841042A83AAA8E1042085547082184507584101299747575FD43BCD1DDDDFD865467F96DD9D3D353242E2F2F5B52EE8DAF6F01D9DEDDDD35EF8597C160D052CECACA0AFEEE1A6003FBCAB1E49BCDAAE4EBEB6BF9B5D9ABABAB7BE35788F4FA78A9B3A59C8B8B0B7977717151FE0FF7E7CF9FDBDBDB520236D6D6D65043F5AF4BD8989C9CD48FAED7F9E4E444BE6F8D0321052FBDD419D9F01636F6F7F7D517C185F5F5F5CDCD4DF512F59C9A9A92FFF095830A72F251136C4C4C4CCCCECEA2C96AAF9B9B1B69BE39512F9C70867DE1332C793951DD93F3375587191335F860800DF9B984B8B8B877EFDE99532E2F2FA5AE50085E363434E0DD7706D8C04B9803EFBE7FFF5E8AC29CDBD8D85859595967505353535F5F2FC78221302F4BC998CA737272DE1B646666621ED7CBF15267BD1CA8026F454545212536361676E9EFEF8F89898196E45F885A5B5B7FFCF8811429131BA8B07E74BDCEE3E3E3090909D805BB23052FBDD419D99067757515D9CCFFD8B4B1B18174F54BBB1D1D1DC8505C5C1C1F1F2F02532D45A7DC1B3F308F46F9FDFEE8E8E8F4F474F5FBF4858585710678CBA97042888E5AAA6259AC06147959DE7D2AD599A772511DE67D730AFE7EFAF429292949FD74D0BDF1B30BEAA71664BA97C045D8DBDB8308038140696929A66FC476FAB1E6E6E6B081180B2AC20624A197E3A5CE7A39A23AFC453678A2B9B91999A128B84476477465561DCCA154673EBA8BEA727373D12EA53AF73A8BEAB026504794100DBA4A4B4B131B2182C419937264C8C941254E1542A190BC8561294D962015DB8835C56D12C6590A279187F9EE8BD3B37EC88360FC26272763F8D7D6D662BC98871B8970D57DFCF8D1A23A846508D1BE7CF962FE27565D7530CA88814CC7883024D28215D4B110DE61C69792BBBBBBF1AE942042B22DE7C13AEBE528D5211E454A4B4BCBBDF1DFB2501A6A5550508097281F6A81844647479159A9CE7C74BDCEA2BA9D9D9D8C8C0C6C28D5B9D719D910A8E1749955876A23E4C529151B89B0510E5EF6F4F428D5E1657979B9FACD0B380C55CDCFCF57BF6701B523DBF1F1F1E9E9A9EA324BE124F2C0921497252E86949414F7951671579D1A235897CB9954BF9D86912B9F80603291013E3636E654D48809CB5E2A05A315F3495B5BDBC1C181EC8502551E49C1AAB7B3B3B3A9A9491E3D88153C96B3878787D865C7C0B61CAAEED1AA93BB79E614CCE9888186878711DBB9A82E3B3B5B7E88413A1599E5B6A7DC7C936315171797949448C9380A3CA46E21626AB62DE7C13AEBE5A81B9890191C231F8F4142084C913E393979FFDFC3BDF0322727073995EACC47D7EB2CAA833BFBFBFBCDAA73AF33B2A104E447F5FAFAFAA02E44BD7809132B1BA170945355558592B1219F32E240D817C5A281F2E832246240621D8AF5876815C312F93136BE7EFD2AF754F5C24944AA4EFEAD1BC35026682FD3E89B9A223DAA0E6B719C404C0B999999F2198DDCB9912129711E4E325E229B79B56A21363656826C14A8F6EAEDED35A760C1BDB5B5B5B2B2820852C6EFD2D2527B7B3BC6A974220678565616BA696363035313B4872A214516E5D8906F03E8E550758F561DE6FDEFDFBFAB94FDFD7DF92C0A60437DABC2FD0626BA01F9E192C4C4446CA0DBF463A1B7A022E9276C201009EF06A65E8EA80EB1110A34BB07AB604C10FA9561FEACEEC11B985038F4797E7E6E56DD833730712963471C48CE1B960E383970180A4195A0B7F9F979F93C4F6EA8AAB9E9FEBFCF4A11F6A9140C00952295449EEBEB6B6CE0A55E3867B4C803D79245750F4EA36F6D8A7CEC0D4CAC4195EA42A110FCE4F7FB95B4E437425D5427820438E16A2F946F4E393A3AC2DA14A31BD2528F8990F5BA9A730A0A0A960DD4E3269A9B9B333232D2D3D35536DB72A8BA476803E74E3EEE52299837213F39F5988231549C5407C7A86F2142338140A0D6409E74AC1F0B430E1B030303434343D85833B094E3A5CE7A39EA06A6DA0BA31A2E816C10FAD8CE1A4A75E6A3DBAA0E1B689A5CD94A75EE7546C502063810C483D00D57E7B8417E7E3E2E562C05E04E781AA1332E626CA00B10C6EDEEEEE2D0689A7C3287BD30496110CADD4E519DDCB7449E7FFFFD57EE64EA8573468B3C302AC5554A750F4EA36F6D8A7CEC0DCC3E0319DA5822CCCCCC284561431E9CFB28D59596961E1E1EAA149C7C9C76142B719E58D0D247E89DC2C242158B4BF08DCCF2D17B7676B674A26D3954DD235487F1836800F1814A81A894D2B0AD9EE8A1AB4E81BD30C962E6956F60A2C3D043B61124562BB20BE22DDB723C46A2967274D549665C1FB26A73519DF9E84EAA9399C5AC3AF73A7FF8F0010EC31A0D07C239943BBA82F91EE3B76FDF203914223742517F7929A1EABDF1441549011515156A558E1D6DBFC9CD1B98910ABA1E43558D445C185EA6D1B736453E5675ADADADA23A9906CDD2425025C3ED51AACBCCCC94C85B52B036951FE3C6041B1F1F6FDB4758D19ABF478D79606F6F4F9E8B8B3904A31ECB5FA772A8BA17CD9FFCD5DA57713664F1A866348C10F38D266C2383DE52FE20EF9BE2D7AF5FEAA9E5A23A2FD3E85B9B223DAA0E4B4F880D311396A17297F2FDFBF7124E89A264D1298B7BBC05E578511DFEC29DE614140EF9555555415D797979B67D04BE7FFFEEF3F9900DCB1198AFA3A303AB135967CFCFCF7FFDFAD5A91CAA8E101251602A94C803405A8803BC4CA36F6D8A7C2A464646D4879DD09E594B61E0E5FF196445FBFBE550758490578C0A202C2FBD4C7FFCD7B1C7727878A83E833F3B3BB33C35975075849067A1ADADCDE52521541D21841042D511420821541D21841042D511420821541D21841042D5114208A1EA08218410AA8E104208A1EA08218410AA8E104208A1EA08218410AA8E104208A1EA08218410AA8E1042085547082184507584104208554708218450758410420855470821845075841042085547082184AA23841042A83A42082184AA7B9B747575F12410424864AA6E6767676262627171F1AD9FCA7FFEE7649E9C9C1C1F1F9BFFF23A7B266E6E6E7EFCF8515D5DDDD1D1E17DAFF1F1F12583E1E1E107336F6F6FEFEEEECAF6CACA0A2EF5D9D9D9BBBBBBE76EDAA32A4908795ED50D0D0DF9FDFEC9C9C9B6B6B6D5D555AA4E26A9919111F35F5E67CFC4E7CF9F71055E5D5D3D5690FDFDFDBDBDBDD7D7D7EE39B152494A4AAAABABC3363263636C6CACB9B9B9B0B0F00F58DC63250921CFAB3A0CC28F1F3F9A279AC3C3C39F3F7FCAF6FEFEFEE6E6E6F2F232122505F10D56A97A0A36A6A7A7EBEBEBE1CB8383838854DDD9D9596767675353930A11004204CC9E83838397979778896974E43F5406FD4096BD8E8E8EDADBDB71EAD459D5CBD1B1E4419882B81CB56D68685035544747FAEDED2D36D077B20B7697EE5E5F5FC706DE957EB4ED4A8FED32A3D747BFB4B0B4C279B0B45DD510489DF533AFB7CB89AAAA2AC846546706973D5464BB0B0A97986F66660687B6EDA01113DE2BA997ECBD21845075E1B3B0B0100804CC29A7A7A7393939B25D5A5A8A79B0ACACACA4A44452BE7CF98265B89E820D4CDC5B5B5B2B2B2B6969697FE0EED01F561DA6A1ACAC2C3860636303E747E6A9AF5FBF620E95DBBF32C1C116981371427062A5A8848404CB512C7BA1E4949414E4871852535365FED5CBD1B1E4C18E98BED10BA821BA40962F72F4A9A929344D52D07778895D626262E4ADC6C6466CE05DE947DBAEF4D22E3DA6B1D447BFB470F4A8A8289489F2D176897E5043C80989B9B9B9D8CBF6CCEBEDB26576761645A10795EAD01C94DCD7D7870A38ED85C2517988ADBBBB5B16017A07C5C6C62E183CAA929692BD378410F25BAAC35C8099C59208F9610A0E068319191932F57CFAF4696D6D0DB333C6B3A8CE92222B5FCCDDB00252B0668F30D5E1441514142C1B545757636E4236D84297BA9287207322C21795D3B21726D08A8A0AD9AEACAC542EB194638B390FE6501C4BB66B6B6B5161994943A110A663BFDFAF54879E956A38A9CEB62B1F6C97AE3ABD3E964B0B6ED0DB8E1AE2D2927B9BA895ED99D7DBA583F4C2C24254CFAC3A3809AD40351081B9A80EF9118CBA749032FDA32A6929D963430821BFAB3A2C42F3F3F3F550AFB9B9796868088B5F997AFEFDF75F8C464C1CC82FAAB3A46072C4B438333323EB5C99AA22497598FAD15875CF4AEEEC454747BBEB479480FC0889D2D3D3C53196BDE6E6E6AAAAAA64BBA6A64694109EEA107CC836265335DBE2D0E8179991656AC6DCEAA23AA7AE7CB05DBAEAF4FA582E2D34566F3BE22DB94F2875B63DF37ABB74868787E10FD4B9A8A808958456CDEFE2B247E4EAA43A540F3296E0CCB6832CAAF358494BC91E1B4208F95DD561CD9B9C9CAC3E9291C186444C76EA3E0CC486B5EAE0E0604F4F8F4C887A0AA603F5C97F7C7C7CE4A96E7B7B1BF3A6CA291FAB60CE52418FFAEA8145096A4E2C292991EFB85AF6DADBDBCBCECE96977979793850D8AA7BFFFEBDF4607171B17C0217151585895ECDC8727489C39C54E7D4950FB64B579D5E1FCBA5F5EBD72FD5769FCF276DCFCCCC949B845267DB33AFB74B07CE967B8CADADADA8008E65FE700E47D9DCDC74B98189462150C34BDB0EB2A8CE63252D257B6C0821E4FEF7BF81893908C3BEA2A20213909A673B3A3AD4ED2C119B72A1529D3905EB7A1482C56F2010C0741001AA431C002BC85FF92EC6F7EFDF311DA38D8875E44421A2C5248814CC5C98496D9580B90CE70731447979B93846DFABA5A505DB080BEAEBEB9DA2432FAA939BC9E802F541146423EB189949D16BEFDEBD2B33C05B887B5002622FBCC45E9F3E7D4206A7AE7CB05DBAEAF4FA582E2DD5764CF7D276BC0533992D627BE62DED723F4BEA06A67CFA880AA35B9B9A9A5C6E608A1491473E54D33BC8A23A8F95D44B7E544308A1EA7E975028649EB01A1A1AB0BA7F6C21AF7DAC2AD5B904C172F7CFE5D48577C26F0C7EA7F2D81DC2B0ADA102CE569F05C26A1695E22DF505CBDFEF4AA7FAE8979697B6BBB7EB51B731C2EBAF3F594942C873A9CE7CEF05CB5EF3DD9837742AFF79C53F3D236A71CF737878787A7A2ADB676767960FABF096FA32FD73D4E72D5F5A849097A53A99A4DEE8A9FCE775FFCADA4BFBC72CBD3E6FF6D22284BC38D5BDDD53F90F4F2621845075541D218410AA8EAA238410F2B25467F9353FDB9F52F4F21B80B6BFE667F9B147CB0F27AEAEAE1E1F1F0783C18E8E8E97F0EBEF541D218444A6EA2CBFE6A7FF74A197DF00BCB7FB353FFD27222D3F9C585D5D8D122A2B2BFBFBFB2B2A2AE40735A83A4208214FAC3ACB3FC3EA3F5DE8E53700EFED7ECD4FFF8948CB0F274275737373F24359E69F5FA2EA0821843CAFEA2C3F5DE8E53700EFED7ECD4FFF8948CB0F274275858585F20B5550A0122A55470821E4795567F9E9422FBF0178EFF0738B969F88B4FC70A2DCC04C4D4DBDBCBC1C1E1E6E6969A1EA082184FC09D5E93F5DE8E53700F55FF3D37FECD1F2C389A2BA8989099FCF97939373747444D5114208797AD55970FAE9C2B07FA4D1CB4F0EA2E497F03457AA8E1042DE90EADEE8A9A4EA0821E42DA8EEFEE5FD942255470821541DA1EA082184AA23541D2184507584AA238410AA8EAA23841042D55175841042A83AAA8E1042085547D5114208A1EAA83A4208A1EA0855470821541DA1EA082184AAA3EA0821845075541D218410AA8EAA23841042D55175841042A83AAA8E1042A83A42D51142085547A83A4208A1EAA83A420821541D5547082184AAA3EA0821845075541D218410AA8EAA23841042D55175841042D511AA8E1042A83A42D51142085547D5114208A1EAA83A420821541D5547082184AAA3EA0821845075541D2184507584AA238410AA8E5075841042D55175841042A83AAA8E1042085547D5114208A1EAA83A420821541D55470821541DA1EA082184AA23541D2184BC39D5757575FD43082184FC71BABBBB19D5FD051E75DE5F1458B2B0FB228F08EE565EB1E48F46756767673B3B3BB2BDB8B87866B0BDBD2D2978EBF4F4544FD10B5930717E7EAEA720DBDDDDDDE6E6E6CF9F3FD58E489936B8BDBD5529963C022AB0BBBBEBB417585B5B9B9898D8D8D8B0AD0F122F2E2EA6A6A6B017768FE05BAFE6CE424FE14C5ACE8674A825258CDEC4D5222FB7B6B65C7AF3C1FE0D6F2FDE51F70EC62C8606FAEB2537CD3C7EC1CACA0A5ECECECEAAD16A3BEA6D31CF157A39E48DAA0E1741757535363061E1E29B35A8ACAC9477F116F4A0A7E863A9F13FA2A2A24E4E4EF41464ABADAD2D2B2B2B2A2A523B96979777187CFEFC5952F43C00BB272525D5D5D539EDD5DEDE5E5A5A3A3E3EDED6D6665B9F502894969636343484B84DED159173A2EA2C082C333313A70229A9A9A972367012A4432D2961F4667474B4A40C0F0F3BF58B97FE0D6F2FAACE23B8E6FD7EFFE4E42486C6EAEAEACB6C9A65FC5E5F5F63B08F8D8D3537371716163A5D15B698E70ADB72C85B571DAE89DCDCDCF054679E252DF39125E5EAEA4ABD3C3E3ECEC8C890EDECECECFDFD7D3D8F505555D5DBDB2B97AFBE573018C49CEE5E1F34E1CB972F92E8F3F90E0E0E225B7508BC7072240C0ABB43DD7B332E2ECEFC96DE2F5EFA37BCBDA83A8F60AEFFF8F1234E9D4A393C3C54C131CE2D62E5E5E56524AAEE585A5AC2866D2222AAFAFA7AD8E849868F6A9ACBF805A8FFCDCD8DD355A1639E2BF472688BB7AEBA8B8B8B8282026C88EAB00C947B53580AC9CC6849712AADA9A9696262C225C53C61CDCDCD61C23D36C0068E623BA9211DD72E567C72F9EA7B21054BFE9A9A9A4020806CB6479F999911A303B4747E7E3E8255575C5C8CB9039D6589F31EAB3AF7DE445457525282B5B6DCC0B4ED9707FB37BCBDA83A8FE01AC0A030A720D6CFC9C9916D0452EBEBEB183BE84749C172506226DBC4C1C141F4F5CACA4A5A5ADAEFDF0F544DB31DBF281F95EFEBEB43255DE60A7D3633CF157A39E4ADAB0E97C2E4E4A452DDA3EE77296E6F6F131313CD77D2F514F38425876E35304FB8E63CD8865C71BDAACB57DF0B29313131272727C89C9E9EAE567CE6A3C3E5292929C8393C3C8CCC4E43253254F7E1C3878A8A8A868686DF51DD83BDF9EBD72FFCC57A3F3E3E1E89B6FDF260FF86B71755E77D74C32296441865777717B194C449C8F0E9D3A7B5B53584EC5959594A757AE2D1D111163A232323487189ABC2B862F5F18B2B0AB30DAADAD9D9E9325798D1E70ABD1CF2D655979F9F8F4B44A92EBC2060747414AB7EF714F38485D5961A87989A55A465CE033321A0C4C58A140C83E9E9697D2FA4A8251BAA873CB6473F3838E8E9E9C130405BE4864C04DFC0446F623E5A5E5E0E5B755E7A5340D7ACAEAEDAF6CB83FD1BDE5E549D4736363630B4F550AFB9B9796868080B5CB1DABFFFFE9B9B9B0B4F20BF529D25119EC31535333383DD910E0B3E55D39CC6AF80FA239474BA2ACCE873855E0E6DF1A65587A5BA2C797E53753E9FCF7231E92996882D212101CB2ECCCBA80396997A1E0C30B9718AD55C71713122097DAFCBCB4BC49A921F795656566C8F2EB75C10DE21427DF04B5CAF5D75D8C0CA3D2929092727BC0E75EF4D7502A53BCECFCFF57EF1D2BFE1ED45D57904E7303939597DB4261FDAC932282727E7ECEC4CAC8625D1E0E0201682C8A05467499C9B9B53DFF5401CFF84AAD3C7AFF943B5CCCCCCCDCD4DA7AB62D5C069AED0CBA12DDEB4EADEBD7B87ABE43755B7B7B767F96C594FC1B0292828888D8DC59CB5BEBE7E6FDCFDC7049A9797D7DFDFEF944730DF94D0F7C2065E060281F2F272A7A3A358BC8BE51E066D04CF89E6CEC20AA6A6A6268C0E7DB037310FE225CE674A4A0AE203A77EF1D2BFE1ED45D57904A70B3D8548086E53FF8562FE1EA3584DB9D0AC3A73A27C79A4AAAA0AA30C5DF384AAD3C7AF7C1C28A355DD48D0AF0AB97AD567F0FA5C615B0E79A3AAFBEBDC18FCFE5E5ECAC1A08DD47FAFF9F33F698633A99FCFF0FA25BCBDA83AEF844221734F35343484B7E0337F99F3699B66E971D4D652E7F0AE0ADB72085547A83A12C9DD7A7B7B8B28C7EFF7F38A25541DE19C4822B65B5F48B8CC2B96507584130789F06EE5154BA83AC289835075845075841307BB954D23541DE19C48D8AD6C1AA1EA08270EC26E65D3085547387110762B9B465EBBEABABABAF8D077425E2C541D218CEAC8FFD0DDDDFD465A7A78787867208F566054C7A611AA8E9048637777B7A2A2A2ACAC6C676787AA63D30855F708760CD4CBEBEBEB69036C38ED7276768665F5F1F1F1E9E9295E6E6E6E2E98C04B6450652E2E2E9E19A81F9CC55BB223DEB214ABF220833C31D9B63E38B4655DAFA798090683E61A5E5C5CE86DD76B685B1F4BDBDDD9DADA523FC46E99B2D54FAD63032F4F4E4E544D5038520E0E0E548B702C73DDCCFDA517756F3C1B45717E7E7E6FFC46B3390587C351CC7F3D76998EE558EA54A310F5F383D856796C6B687BF2F5FA58525CEA830CA150082FF513AB8E3231312157A07E01EB35B43DCF968B536FBBFB59C586532BA83A429E5875393939E6DFADF7FBFDDFBE7DFBFEFD7B6E6EAED32EB3B3B38D8D8D232323F2BBF83F7EFCC0CBC2C2C28C8C0C6CE0A53C094FE67A5CD6B6CF4CC0C6870F1F2CC54A1ECC74A892CC117A7D060606B09D9A9A8A0DA7140B6B6B6BC9C9C98DFFA19E2D696EBBCB4300CCF5B1B4DD85ABABABACAC2CDBB7EAEAEA6262626E0DA2A3A3F1726F6F2F3D3D5DDE2D2D2DC57489391A293287161414A89F93B7F4975E1412DFBD7BA71A2BBE8C8B8B6B6868C0CB949414143E3E3E8E2698FF7AEC321DCBB1D4A9AEADAD4D4B4B93DF084647AB3C939393FA5EB6275FAF8F25C5A53E387A5252124AD64F2C36868686705DA1266D6D6DABABABFA05ACD7D0F63C5B2E4EBDEDEE67D5E599DA541D214FA93AAC738B8A8A0281803CD70A03D2E7F3C95B18F9EA7150EEAA13F012892A838C70CC0898051EA53AACA0B3B3B32584D2EB333333830AF7F4F47CF9F205D5C634ADA7D8AA4E3DB8C4A9ED4EAA33D7E751AA4395D4336E74D5555454CC18A0DA326FA2A51B1B1B88381312122426E8EDEDEDEEEEC681D4338C2C75762ACA72624575F2FB87656565EEAA73EF321DCBB1CCA75AA945AF8FD32A47579DB93E9614F7FAE0D4C164FA89C5EAE1E3C78FFAEFF49B2F60BD86FA79D62F4EBDEDEE6795AA23E40FA90E0BD8BEBEBEC1C141791014A698AAAA2A79ABA6A6666262C2499098FA31DBCAB3EE9C5487C905E1887A121E96C0727B07F382CC9BEFDFBFC7C6DCDC9CDCC6419EE2E262842C323FDAD607A561312EC7C2BBF2CC2A4B8AADEA30D1A058CC47EAAE9AA5ED7A0DF5FA38B55D076B7FECE8F4EBBA98F8503E663A4C9ACA64A3A3A308BC60C7F6F676C986AAC2B2080DD51D574B9D9D8AC2895537DFE449AA8848BCA8EEC12ED3B11C4B9D6A740ACE80D45C579D652FDB93AFD7C792E2AE3A5C0F08B9F4138B4360ADA0EF68519DA586FA79D62F4EBDED7A9D71B5AB072B6283AA23E44FA80ED3CAEEEEEEDEDE1E86E2BDF16043A50A0C66DB08C9095D75989431E6D53C959A9A2AB783D2D2D294EAB017E6A3C4C4C49D9D1DE4C13C85B53326262947AF0FE61AEC2BC7C2FABAD2C092E27203B3B6B6363D3D5D42224BDBF51AEAF579D41AE2FBF7EF4EEFA22D281C93A6ACEBC54F50D1A74F9FE036757F55CC8414A7FE722ACA7CF34D6E8146454589E3DD55F76097B9DFC0C4B1CCA71A53B993EA2C7BD99E7CBD3E9614A7FAA08D7E0339BAE5C4624764785075961AEAE759BF38F5B6EB75BEBCBC8C8F8F47F0979F9F8FF5075547C8B3ABEEEAEA0AE3596C818D6030383D3DAD548115EB83F7E8DC5587C18CE9D5E9F9E6E6191056686D6D953CD805718C3C0759AF4F7777F7C0C0801CEBDF7FFF6D6E6ED653DC6F6062DEE9ECECD4DBEE7403D35C1F8F60978C8C0C4C6AEEAA3B30507E9240242F2F4F659B9F9F8768118BA05DB6FDE55494452DA80F54A7DCE9A2BA07BBEC513730FB0C7EE706A6A53E9614A7FAC06D9607729A4FECC6C6060A795075FA0D4CCB79D62F4EBDEDB675468CB8B5B5150A85780393903FA13A0CCE9A9A1A79BC2FD6A1131313474747292929F22EA21F7378F158D52150835164E67A5075A886CC0B9207814B52521254A1D7E7E4E40416C1821D6B7FBC85F8464F71571D9C8A63E96D77F95A8AAA8FC75381D27014970C326FAA73A55407B18D8D8DA985085A84D661030D4488A0D7D9A928CB34FDEBD72FD4FF41D579E9B247A94E4E75D8AAD3EB6349F1521FFDC4C23A88BDD4879DEA433B2FAA339F67FDE2D4DBEE5E67AA8E903FA13AF34853734D4747476E6E2ED6A12D2D2D8F2ACDA23A841DF26996CBBC893C45454598D0CBCBCB2112731ECC0E98D66DEB83891EDB814040BE4D6E9BA2AB2E2E2E4E1D0BF190DE7617D599EBE3859C9C1C28EA51AA4313E2E3E34B4B4B551E84A7BDBDBDB23D3C3C5C5F5F6FDB5FB6AA93132BACAEAEFA7C3E4475F21247C1B2007AC3EC0C83CA5F519D972EB3BD61683E967EAA9D6E609AF7B23DF97A7D2C295E54A79F58B0BEBE9E999909FFA1A7D457FFF51B98E61ADA9E67CBC5A9B7DDBDCE541D217F42754E48DCF0721AF9D2EAE3CEF2F2B279C67C09242424B8BC7CB3606164B9CFF9A22E4EAA8E90E7551D8930E43BF74E2F097DC0A611AA8E10421FB06984AA2384D0076C1AA1EA0821F4015547A83A420855470855470855C7A611AA8E10421FB06984AA2384D0076C1AA1EA0821F4019B46A83A42087DC0A611AA8E10421F507584AA238450758450758450756C1AA1EA0821F4019B46A83A42087DC0A611AA8E10421FB06984AA2384D0076C1AA1EA0821F4015547A83A420855C7FE25541D2184AA2384AA2384AA63D308554708A10FD83442D51142E803368D50758490BFE783AEAEAE7F088950BABBBBA93A42A83A46758450758450750FB1B3B3333131B1B8B8F83B859C9D9D2D2F2F63636F6F0FDB4FDBB4959515D4707676F6EEEE4E52B0316D707B7B2B29DBDBDB939393F3F3F32A8FBE979EE7F2F212854C4D4D614395BCB9B9F9F3E74F7574CBB1D0BA0513E7E7E7B6F57969297ADBF514AA8E101299AA1B1A1AF2FBFD98F2DADADA565757C32E0746F9F0E1C3CDCDCDA74F9FB6B6B69EB069D7D7D7757575636363CDCDCD85858592585E5EDE61F0F9F367B15A4949C9E8E8684343437171B1ED5E7A1E4CF1696969030303380929292932E3D7D6D6969595151515A99A588E859541E37F4445459D9C9CE8795E5A8ADE763D85AA238444A6EAE0838F1F3F5E5D5D99131109C9C6D2D2928A09BCA82E2626069283279EAF69A82D6C7A7C7C9C91912129D9D9D9FBFBFBE63CD1D1D1A15048DF4BCF737070E0F3F92405D33D8239D9C60951AA7339169C27D9F43C2F2DC5FDFCE829541D21247254B7B0B01008042C89090909B28180C0624177D56565658D8C8C3C87EA106FA1AA7D7D7DA5A5A578393737575959796C800D1C5AE53C3D3D4D4A4AB2DDCB360F225AA87D7A7ABAA0A040DDC733ABCEE5584D4D4DB22CD0F3BCB414DBB63BA55075849088521D2641DD4C717171E1A9AEAEAEAEADAD0D050E0F0F7FFDFAF5099B86E0B2B1B11156EEECEC9463555757B71A60636A6A4A6583A2E423437D2FDB3C2D2D2D5F0C9A9B9B551EB3EA5C8E9598982851AF9EE7A5A5D8B6DD3685AA2384449AEA363636F2F3F32D8908567273734B4A4AE2E3E31FA53A78453EE8AA36788EA6A1B65B5B5B88D594A12B2A2AE6E7E7651B89EAEEABBE979E6765654595535E5E8E6275D5391D6B74741427CA29CF4B4B713A3F4E678CAA2384448EEAEEEEEE9293930F0E0ED4146F7ED71CD5AD1AB81435333303D561F697A8CE1C48FD66D3CC1FB36566666E6E6EA2560909098848507F8456C160106FD5D7D70F0C0CA89CFA5E7A9EB9B939F58D0C047F78A9ABCEF658C0E7F3297DEA795E5A8ADE76DB14AA8E101281AA03EBEBEB3001D6FE393939DBDBDB4EAA7B30508B8D8D5D5E5E961B983D3D3D28F0A99A86D82B2D2D0D51577A7ABA0AA4060707219BBCBCBCFEFEFE7BE31B34D1D1D145FFB1B3B3A3EFA5E78109D046D80E9E43142B9FD5A1F2050505680EF2E0E4E8C7BA37FEA10227CD5C5B3DCF8B4AD1DBAEA75075849088559D100A855EDA3F5759BE96A2D7F0C6C03D66F5D2AE07CB093BCF4B4B89FCE1C0198110AA8E4D23541D21843E60D308554708A10FD83442D51142E803368D50758410FA80AA23541D2184AAA3EA08554708A1EA08A1EA08A1EAD83442D51142E803368D50758410FA804D23541D21843E60D308554708A10FD83442D51142E803AA8E50758410AA8E10AA8E10AA8E4D23541D21843E60D308554708A10FD83442D51142E803368D50758410FA804D23541D21843EA0EA08554708A1EA08F933AA3B3B3B5B30717A7ACA734A087DC0A6918852DDECEC6C6A6A6AA3415A5ADAD4D414CF2921F4019B46224D75959595B25D5D5D2DAA5B5E5E1EF98FDBDB5BA44C4F4FD7D7D7B7B5B51D1C1C48E6B1B131954705889D9D9D4D4D4DBBBBBB92A297333131613EFAEAEAEAC9C989F9AF39CFF8F8B8DAEBEEEE0E1B333333380A7B9D50756C1AA1EA7E5775656565BDBDBD0B0B0BB9B9B957575748191C1CDCDADA5A595941E427D6595A5A6A6F6FFFFCF933B2E1259C94959505236E6C6CE4E4E48890F472121212CC47C711A143F35F950735C178507BDDDCDC40B4DDDDDDEC7242D5B16984AA7B1AD5ADADAD61032613D91C1D1D21B44270069FEDEFEF4B7E646E6C6C54E51414142C1BB894131B1B0BF32180135F3AA92E140AC18E7EBF5FA9AEAEAEAEA1A181FD4DA83A368D50754FA3BAD2D2D2C3C343A528780E869B999991F84CEC65511D44585858A86E57CA7D4E4B39A23ABC8B70303D3D3D180C3AA90E197038B51752FAFAFA32323278F79250756C1AA1EA9E46759999993737374A5173737308AAF0F2FAFA3A3E3EDE5675DBDBDB08C254B1F2199BA59C7BD30DCC929292C5C5455BD545454515151559F64239C88FC0915D4EA83A368D5075BFAB3A08A6B5B55552443608BF20ADAAAAAA402090979767AB3AF0FDFB779FCF876C88FC603EBD1CD118B6F3F3F3CBCBCBEFEEEE70446C272525C95F31DCFBF7EF2528B4A80E1B4D4D4DFCB88E50756C1AA1EA9E0BB18E3BB05728140AFB10656565EC5142A83A42FE9AEAFE00EBEBEBEC5142A83A422259758410AA8E10AA8E10AA8E4D23541D21843E60D308554708A10FD83442D51142E803368D50758410FA804D23541D21843EA0EA08554708A1EA08A1EA08A1EAD83442D5FD0E5D5D5DFF1042C89F85733761544708615447C893AA6EC740BDBCBEBE9E36C086D32E676767BF7EFD3A3E3E3E3D3DC5CBCDCDCD051378890CAACCC5C5C53383EDED6D7544D9116F598A557990E1E7CF9F4EF5C1A15101F3BE7A8A99603068AEE1C5C585DE76BD86B6F5B1B43D3C7677777196641B1B78C94B993CB70FF451A08F53A761F87C4DBBBBBB93012E4FFE52A00E9671614E416DA5155B5B5B927279798942A6A6A6B021292B2B2B131313B3B3B3F2206880262303B2490A5A6A3E21E7E7E72E4727AF5E75393939999999EAA5DFEFFFF6EDDBF7EFDF7373739D76C1D5D3D8D838323222CFB7FBF1E3075E16161666646460032F91A1BABA1A6FE142C4653D6BA03F18EFC3870F9662250F0618AA248350AFCFC0C000B6535353B1E19462616D6D2D3939B9F13FD483D4CD6DD76B685B1F4BDBC3A3AEAE2E2626E6D6203A3A5A1E0748C8B3AA4E1F05FA38751A86CFD7B4F2F2F20E83CF9F3FABC4939393A4A424F3B8B0A460D4482B868787C59769696918FE43434329292978899531328F8D8D353737636A429E5028843CC8D0DDDD2DC742D3D4D9888A8AC2219C8E4E5EBDEA109D14151505020179441CAE789FCF276FE1FA585D5DF5A23A012FD5E3EBD410C2E502093D4A75585B656767CB5A52AFCFCCCC0C2ADCD3D3F3E5CB17547B7C7C5C4FB11DE4E68164DB7627D599EBE351754B4B4BF234768C3427D5555454CC18A0DA32A88E8E8EDADBDBDBDADAE4D1ED0296A57877707050D6AA78290B52ECA89EC93E3A3A8A63E12DF5A025AC5BEBEBEB5194348D5075B6A3401FA7B6C3F0F99A863188F5B16CE3706A0D5A5555D5DBDB6B968D25252E2ECE5C20AE733551141717AB5B26C2C78F1F6F6E6ED02E8C35494166F3D080F3E461994E4727AF5E7588C0FAFAFA3093F6F7F7DF1B4F5B4537CB5B353535983D9D048931806B05B3B38BEA2E2E2E0A0A0AB021AA437C26370A202DF1C4FBF7EFB131373727B336F2E032C5421279A41CBD3E286D7272528E8577AB0D2C29B6831C2319C54296EA6E86A5ED7A0DF5FA38B5DD022614EC8EBDE03C27D5210326148C3D6CE025C23BAC46B1CBE2E222C2537914EDD7AF5FF116C6211A2EB753E429B57098F911B558E1624704BEAAED681456092B2B2B58C6AAF612AACE320AF4716A3B0C9FAF6918FB1805C706D850158069B06655B2D15370CD97949420225437303178314CB0C8435BA475F88B26608C979696CAEA500D10E4999F9F57F5696A6A52739D7E2C1209AAC39C8E39746F6F0F7D8F97E8607535A0A76D23242774D5E122838494EA3083CBBD02CCBF4A75D8EBDBB76F89898998D09107711EC29D8686062947AF0FC603F69563E1DAAD34B0A4B8DCBAA9ADAD4D4F4F97059DA5ED7A0DF5FA7804AA531F073AA94ED69832BCF11286C381E45D24CA2C1313136311155487CC96FA88EA70B6D563DFA1610C5D9C93ACAC2CB55226549D6514E8E354064278977D184D930AB41AC8AD94ABAB2B0C4C5CF64A367A0A900FE6B1948C8F8F970FF95A5A5ABE183437374B1EA4A3B18140A0B3B3F3DEF8A00EAB491C71787818234B1A2BD930FF4821B6C722AF5E75E8D777EFDE892DB0110C06B12652AA4038F5A88FA374D5E5E7E7E3A251AA73B981898804D7BAE4C12E98A0979797E5469CA53E8866060606E458FFFEFB2F2E6B3DC5FDD60D06362E7DBDED4E3730CDF5795AD51D1888EAB0BC35C7AF320EE130CB8E501DEA9F9191A1EE5E4A36341F2750CE3F3C870AC3FAF01F56F1683BC70955673B0AF471AA6E608671D987D1345CA2656565B20DB922D28287109FE14A2E2A2A828F3103E829E6A290882075656545958350CF128FA28112FC61B8F5F4F4C88A59DD71191D1D455427DBEEC722AF557598CD31ABDE1860A1873800B324163EF22E7AFA51018145755828C962CA8BEA500D8C3D9507C1565252D2E5E5A55E9F9393134CF4B81C1178E12DC4647A8AFB208712702CBDED2E5F4B51F5F91DD5AD1A9855A7CE155EA2DAD9D9D992929797275F8143BB5417C81750E5062642408944052C51E5768D9C4F585316A4D8056B5EAA8EAA731A05FA38BD377D68FDD8CB3E8CA661C5894B1A1115AE5ED4042B4E0C79F91001352C2E2E46F4A6A7A8EF6ACAEEE7E7E7B8E6F19624228CC34BF90840C8CCCC944FEFE41E09C6666A6AAA2AC4E7F3A9BBA0FAB1781D4682EAD4CD71F3F5DDD1D1815000EBA0969696479566511D4225F934CB4575C883D513148585184694390F861F54645B1F5CC4D8C6051D0A859C52F4411E1717A78E8511A5B7DD4575E6FA84AD3AF958D14975720706022B2C2CACAFAF97B7363636E03F447B48975127AABB373E5D501FD745454561499B9393D3DBDB7B6F7CA71C631B7BE184C09A541D55E7340AF4717AFF7FBF9FF5A8CB3EBCA60D0E0E4236B850E52373857E0B51A520D6C4158E2660693B3434240EC3A0839C70CD979494E0A57C508D3C5822ABA00DE34852E04249C112D3FCFD7397A39357AC3A2724D679398D7C69F5F9C32D85BFC3F86A89FA3626A1EA5E78D3C218E01811B8C22DE3C2520EDED5C78EBE1779BBAA238450756C1AA1EA0821F4019B46A83A42087D40D511AA8E1042D51142D51142D5B16984AA2384D0076C1AA1EA0821F4019B46A83A42C88BF341575757E43D7FBCBBBB9BAA23541D2184511D21541D21549D07E4F14F8B8B8BBF53C8D9D999FCE8F3DEDE9EF947C6A93A42D51142FEB20F868686FC7EFFE4E4645B5B9BD33396BD20CFF4B9B9B9F9F4E993FA5964AA8E50758490BFEC83EBEBEB8F1F3F5A7E07553D7D74696949FDAEBF17D5C5C4C44072EA29394FDBB495951579AE88FA694A6C4C1BA84A22657373D3FC48742F792E2F2F91616A6A4A3D9CC14B39171717D80529EEF5F98B29961A22D45E30717E7EAE5AB7BDBD2D8F74A6EA082111A83A4C798140C092989090201B9F3F7FF6FE6BE090505656D6C8C8C873A80E4AAEABAB1B1B1B6B6E6E2E2C2C94C4F2F2F20E03F5C8A1DADA5A1CBDA8A84895F0601E68202D2D6D606000D16D4A4A8A58E1C17242A110F6C22EDDDDDDAA64FD587F3145AFE1CECE4EE37F4445459D9C9CC88ED8484A4A8A98E7335075845075367ED2CD141717179EEA305DB6B5B5A1C0E1E1E1AF5FBF3E53D31086DEDCDC1C1F1F676464484A7676B67A5E232AAC14E525CFC1C181CFE793EDE2E262795EDD83E5A0B15FBE7C9114EC8E42F43C7F3745AFA13A81709ED9E2555555BDBDBD541D21246255B7B1B1919F9F6F496C6A6ACACDCD2D2929898F8F7F94EA102E483C647EE6E253350DF11662D0BEBEBED2D2D27BE3C1C2959595C706E6874A9A15E5250FF0FBFD131313D3D3D3050505EA6EA47B39333333AA81D86B7E7E5ECFF37753F41A9AFB57DDA3464E782E929EBA47D51142D559C1CC9E9C9CAC96FC16B199A3BA550397A230B74275984625AA9347963F61D36E6F6F517E201090923147632A6F3550CF70B628CA4B9E7BE359C75F0C9A9B9B55A27B3917171729292948474B636262E499D2963C7F3745AFA13A8D898989F2791EDA585858886B80AA238444B2EAC0FAFA7A6666664545454E4ECEF6F6B693EA1E0CD4626363979797E506664F4F0F0A7CA6A6210CDDDADA4284A76EBDE2582A6A312BCA4B9E95951595A7BCBC1CBB782C07EB033413924014B5B4B4A4E7F9BB297A0DE5DDD1D151F5B0755810112D161068697A7A3AE25AAA8E101299AA13C27B84FD1F6B9AF9A1E110F3E6E6265494909080E804D54698120C06754579C9333737575C5C2CDB0819F1D2633972BA103CA5A6A6E22D3DCFDF4DD16B286DF1F97CEA5F418E8E8EE4DB98880571127EFDFA45D511422259752FBC6988BDD2D2D2107521F85041C9E0E02026EEBCBCBCFEFE7E49411053505080F8129642B4EA250F7C80E015133D3C575252227AF0520E32487D941DF53C7F3745AFE1DEDE1E160AFA79E60D4C420855F7229A0609E9A1E78D817B21CF9707B1D483F5F9BB297A0D237F3870462084AA63D308554708A10FD83442D51142E803368D50758410FA804D23541D21843EA0EA08554708A1EAA83A42D51142A83A429E5275C160D0FCACA38B8B0B9E5342E803368D4494EAD6D6D6929393D5E38ED4E3300821F4019B46224775EA19808AE9E9E9FAFAFAB6B636F5CBE8FAF38B9122FFAE3F3333737676665BF88809D96B7979D992A21F6B6C6C4CE5911494DFD9D9D9D4D4A49EA8AB97A36A28ACAEAE9E9C9C98FF9AF38C8F8F3BB542AF0F21F4019B465EBDEA727373171616E003F54B338383835B5B5BF2F37492A83FBF182937373750427777B753E1B1B1B1725F148790BDCACACA7A7B7BCD29FAB160D3F6F6761C487E8C1C4ECACACA828136363672727244487A39AA86427575357468FEABF24C4D4D61A439B542AF0F21F4019B465EBDEAE406666D6D6D7A7ABA843247474708771030C131724B53971624515757D7D0D0E052B82E48280A4734A7E8C7121BA14AB23D3B3B5B5050B06CA09E4DA597233554C276525D28144213FC7EBF532B6CEB43087DC0A691D7AD3A7503B3AFAFAFB3B313733D66F9999919119B18052291BB859999994A12C89F9191E174F7D25675A5A5A58787872AC5F65816D5413C858585EA76A5C8D8528EAA21C241083B180C3AA90E197038736C6A6E85537D08A10FD8341221AA6B6D6DC5BC3F373727CF7DB8BEBE8E8F8F97E9DEE906E6E2E222422EEFAA8329E527BA25C5F65816D56D6F6F23085365CA676C9672CCC72A292941AD6C55171515258FAA726A85537D08A10FD834F2BA551717170701C853A3820610495555552010C8CBCB73571D369A9A9A9C3EAEB3EC85BFB0A939C5F65816D581EFDFBFFB7C3E6443A405F3E9E588C6B09D9F9F8F56DCDDDD416FD84E4A4A92BF62B8F7EFDF4B50E8D40AA7FA10421FB069E415ABCE0931C19FC1CBB1E4A156611F423DB4FEA5B59D10AA8E90BFA6BA08439E384C087DC0A611AA8E10421FB06984AA2384D0076C1AA1EA0821F4015547A83A420855470855470855C7A61142D51142D5B16984AA2384D0076C1AA1EA0821F4019B46A83A42087DC0A691D7AABAAEAEAE7F082184903F8ECBB34E19D511C2A88E4D238CEA0821F4019B46A83A0B6767670B264E4F4F257DC74065BBBEBE9E36C086535152C2E2E2A27A0A81ED5E2876626202D9B01D0C06CD47BFB8B8D08F8E1A6E6F6FAB74D4D09C82973F7FFEE4A540E80377F4B18671A44619C6A33CA0F80F0C2E73D3EEEEEE648A9047512A5087DDDD5DA714D4565AB1B5B5A5DE9D9C9C9C9F9F4781BF93E7DE78B41926A88D8D0D5E8411A5BAD9D9D9D4D4D44683B4B4B4A9A92949CFC9C9C9CCCC54D9FC7EFFB76FDFBE7FFF9E9B9BEB54D4BB77EF50486D6D6D5252D2AF5FBF6CF71A1A1A42222EB8B6B6B6D5D5555C55C9C9C98DFFB1BFBFAF1F1D35ACACAC94EDEAEA6AD450A56028229B59C9845075B6E8630DE308030A6F61A2C7E1F0D23CDC9E6F70999B565E5EDE61A09E110D4E4E4E3087C873926D53A2A3A3A515C3C3C378B9B2B2525252323A3ADAD0D0505C5C1C761ED0DEDE5E5A5A3A3E3E8E098A1761A4A9CE22126C1C1F1F1715150502017996294682CFE7933C85858550946D511F3E7C908DEEEE6E5C28FA5E88ED3E7EFC687E209CF931E80ACBD19D54777E7E9E9D9DCD908E50751E5567196B4A75500816A366D53DEBE0524DC348CFC8C8906D1C4EAD74ABAAAA7A7B7BCDAAB3A4C4C5C539150E7BC95DA530F2C8C39979EDBD21D5FDF8F1A3AFAF6F7070B0BFBFFFDE782C382E35C953535383E8DE5D7558252198D3F75A585880C02CC30F630CE910A1BAAB60393A6A884050EE334099A23AACCB705122851701A1EA3CAACE32D64475171717050505D850AA7BEEC1A59A36373787C9E7D8001BAA02B01AE22A25363D05AE42888688D07CE3512251047F61E7417DCACACA3059619AC2E1781146BEEA6094DDDDDDBDBD3D8C01BC44AFCBEA4F16804E17C1BB77EF70A1F80D307EF4BD702CCB03C1D54D95DADADAF4F47409E32C47D76FB122055AADA8A8686868E04540A83A8FAAB38C35511D969593939366D53DF7E0524D930AB41AC8E473757585E10F132BB1E929403E1F595A5A8A8F8F571FF261A3A8A868797939EC3CA84F4C4CCCC9C9090E8A53A4A24C1299AA4337435A9506D840503F3D3DADF22050539FE7E951DDCDCD8D0ACEF4BD363636F2F3F39D6EAA60C8757676EA4777BA818903656565A9AB9610AACE5D7596B126A6C190C45032ABEEB907976A1A0247B5F6855CE7E7E7878787B150868F2124C80673889E622E0A89EAF31414657BC3C97B1ED4A7B4B4544D3596639148531D40087F63800520AE8CA3A3A3949414C9E3B2D8513730057D2F8C1FAC2B257493F59A79F861658711A81FDDE56B2908FE9292922E2F2F792910AACEBBEA64AC611C252626C27932B22C5F4B79BEC1A59A861920212101E1146606D404EB5A4C1AF251056A585C5C8CA84B4F51219AEC7E7E7E8EEDFAFAFA8181017588F0F2A0B1696969928863ADACACF03A8C64D5A99BE6E6773B3A3A727373B1006C6969712ACAA23ADBBDD6D7D7333333B182CBC9C9D9DEDEC6F08B8B8BC3920A5758797939AE75FDE82EAA0318A850232F0542D53DA83ACB58C3387AF7EE1D5C62ABBAE71B5CE6A60D0E0EFA7CBEBCBC3CF9605E61BE5D694941AC8939044DC04A7A6868E8DEB803191D1D5DF41F3B3B3BE1E501A8062A13080490CE8B30A254E71D89B49E64AF5028A4EE731242FE80EA5E6CD3C29858307B2014739F43C2CE13DE44472247758410AA8E4D23541D21843EA0EA08554708A1EA08A1EA0821541D21541D21541D9B46A83A42087DC0A611AA8E10421FB06984AA2384FC351F747575FD1371747777537584AA238430AA2384AA2384AAF3C0CECECEC4C4C4E2E2E2EF14727676263FFABCB7B7278F29A7EA085547087911AA1B1A1AF2FBFD9393936D6D6D4ECF52F6823CD3E7E6E6E6D3A74F9607BF3D49D3565656E427DDD5AF736163DA40FD1C3352363737CDCF89F592E7F2F21219A6A6A6D42F567B2CE785A76C6F6FA35BE7E7E7D519C36A467E11DBDC416B6B6B38B11B1B1B541D21243255777D7DFDF1E3C7ABAB2B73A27A78CDD2D2929A37BDA82E26260673A8E549934FD234D4B3AEAE6E6C6CACB9B9B9B0B05012CBCBCB3B0CD473186A6B6B71F4A2A22255C28379A081B4B4B4818101283F252545ACE0A59C179E8295414949C9E8E8684343437171B1E4898E8E96C7790E0F0F4B4A7B7B7B6969E9F8F838163A541D2124325587057E2010B024262424C806264D8B05DD55979595353232F21CAA33033723763C3E3ECEC8C89094ECEC6CF5BC30545829CA4B9E8383039FCF27DB500282392FE5BCFC14F31983E142A11036E2E2E2CCE9C16030333333D28603670442A83ADD4FBA99D484F858D521F04270800211347CFDFAF5699B86780B62EEEBEB9367A2CECDCD5556561E1B989FE7655694973CC0EFF723909D9E9E2E282850F7FADCCB79F929AA75A7A7A7494949CA7908F510FFC90D4CEC85CEAAA9A9C17207811D554708894CD56D6C6CE4E7E75B129B9A9A7273733127C6C7C73F4A758D8D8D72EBAFDAE0699B767B7B8BF23129CB1362E5C1E8AD06F2704A5D515EF2809696962F06CDCDCD2AD1BD9C979FA24E1A5AA19E11FFEBD7AF7BE3BE347A166FC93DE793931334D6E549DA541D21E475AB0E414C7272F2C1C1819ADFCDEF9AA3BA550397A2666666A0226852A23A11D273340D6E465082084FC5A3151515F3F3F3BAA2BCE4595959517910EE60172FE5BCFC14D946A2FAE4D50C9A86DEC45E1222DF1B4FDC455C4BD51142225075607D7D3D333313F3634E4ECEF6F6B693EA1E0CD4626363113DC80DCC9E9E1E14F8844D333F0115B5DDDCDC44C5121212109AC0D6898989C160505794973C737373EA5B1B0819F1D24B392F3F05D5AEAFAF1F18183087C5E6E69C9F9F5F5E5EA6A5A549224E02AC4FD51142225375422814727F0CF7DF6D1A66614CCA88BAD2D3D311384AE2E0E0A0CFE7CBCBCBEBEFEF971428B6A0A000D285A5A0702F79D06A181D133D3C5752522227C14B392F3C656969293A3ABAE83F767676B010C12A01E730252565686848F64266EC82B6233D428603670442A8BAD7DB344848F7F18D817B21CF97E7E5A758C0D9434817C639A4EA0821541D9B46A83A42087DC0A611AA8E10421F507584AA238450758450758450756C1AA1EA0821F4019B46A83A42087DC0A611AA8E10421FB06984AA2384D0076C1AA1EA0821F4015547A83A4208554708554708A1EA08A1EA08A1EAD83442D51142E803368D50758410FA804D23541D21843E60D308554708A10FD834F26255170C06174C5C5C5CF08412421FB06924A254B7B6B6969C9CDCF81FFBFBFB3CA184D0076C1A8934D57DFEFCD992383D3D5D5F5FDFD6D67670702029131313B2B1B4B4747B7B2B29777777D8989999393B3BB32D7CC484EC757474D4DEDE8E920F0F0F25CFF2F2B2390FD27FFEFC296FC1BB9B9B9BB647D76B383636A6CA9114D4AAB3B3B3A9A9697777D7F6584841143B3E3E8E978B8B8BBC92087DC0A69188555D6E6EEEC2C2C2EAEAAAA80B0C0E0E6E6D6DADACACA4A5A54962424282BC052F5E5D5D49CACDCD0D64D3DDDDED54786C6CACDC17C521B017EC9292928297F04A6A6A2A76479EB2B2B2DEDE5E95E7F4F434272747762F2D2D5D5F5FB73DBA5E43581012450614859738565656168CB8B1B1810245C6966321051BA3A3A3737373454545BC92087DC0A69188559DDCC0ACADAD4D4F4F972009B1170229C43AB085DCD2B4484BF4535757D7D0D0E052B84551305C454585A45456568A93A01FD4C1ACB1402080382C180C66646448E6B8B8388BEAF41A82A9A9293444B66767670B0A0A960DAAABABF196EDB1121313CFCFCF215DAA8ED0076C1A8964D5A91B987D7D7D9D9D9DB008FC31333323621337407572DF2F333353A90EF96123A7BB97BAEA103C555555494A4D4D0D6C24A19BDCCC54FAC1719B9B9B87868650BE646E6A6A424D4A4A4AE2E3E391C7B68616D54184858585EA76A5285C3F1662BEA8A828A45375843E60D3C89B505D6B6B2BEC0221215CC3CBEBEB6BA84544E2740313811A82278FAADBDBDBCBCECE9694BCBCBCEDED6D6CC09D722753957C77770793A9BB8E669432F51A5A5487C2FD7EBFDA513E99D38F353F3FDFDEDECEA88ED0076C1A8970D5C5C5C561A24F4B4B2B2F2F0F1A400908BF02810084E4AE3A09B99C3EAED3F76A6969811A116FD5D7D74B3AFC6AC9033A3A3AF42FCBA83CB635B4A80E7CFFFEDDE7F3211B223F984F3F169C9A9F9F8F0DAA8ED0076C1A8964D539A1ACF3E4DC18B8E769686840E8F6FB3584CC42A1102F11421FB06984AA7B41DCDEDE22B834DF7B2484AA63D30889B42BE6C1988F10AA8E4D23541D21843E60D308554708A10FD83442D51142E803368D50758410FA804D23541D21843EA0EA08554708A1EA08A1EA08A1EAD83442D5854B5757D73F8410F207E9EEEEA6EA08A33A12CE92852781A10F9B46A83AC23991BCC56EDDD9D9999898585C5CFC9D42CECECE969797B1B1B7B7E7F2DC2E5EB1E4E5AA0E172E06836C633C9C19C81376649C9C9E9EEA29B6E52C98383F3FD753906D656505036F7676563DF41C1BD306F2A81DDB947BE3210CD8716363C365AFCDCDCD9F3F7F9A6B65D94B405B76777723724E34F714BA0967C3D20BD29B9694B07B53EF858B8B8BA9A929A4B8F7AFA5A7BC5C03B6FD4BD5B9333434E4F7FB272727DBDADA565757C32E0703F6C3870F3737379F3E7DDADADA7A8EA69947A5A5F73D5E7B28012D9D9F9F57D7DEE5E52532E082C486C76BCFF65896ABDA360F264F7929E7C7639DC34BB19C312FF5A1EAFEFF455C5D5D8D0D9C115C7FB306959595F2AE3CC25B4FB15D3C36FE475454D4C9C9899E727D7D5D5757373636D6DCDC5C5858283B9697977718A807F7E829EDEDEDA5A5A5E3E3E318B14E796A6B6BCBCACACC8FE3D1F702A8465252923CF12EF2E644D5531058666626BA0029A9A9A9D20B696969D29B9694F07A53EF855028840231BD767777BBF4A6DE535EAE017D2FAACE1D0CB78F1F3F5A9E0182959F6C2C2D2D59A64EF759222626065304BAE0399A66199596DEF772ED610D5D5252323A3ADAD0D0505C5C2C86C0D5383030800B322525452CF5E0B5A71F4BBFAA6DEB131D1D2D29C3C3C31EEB1C768AE58C79A90F55F7BFAAC359CBCDCD0D5B75E659D2321FE9290083108BC4E3E3E38C8C0C49C9CECEDEDFDFD753E40175E67DF53CB28D51AD0EA4EF25545555F5F6F646B6EAB0ACC36991A5EBF3F5A6DE0B28F9CB972F92E2F3F90E0E0EBCF494976B40DF8BAA7B10ACE803818025517F8AA4C759222B2B6B6464E49954671E954EBDEF7EED994BC32C0F3FE1F2C3452829901F82392FD79E7E2CFDAAB61D1D717171EE23C8CB75EE7D2CD8CE635EEAF3D6558708BDA0A0001BA23ABFDF2FC12F622F991C2D292E05363535A995A39E82B5150AE9EBEB43BC859773737398768F0DB08103D9A66080D5D4D460DC2244B3DD4BBF88F5BDA4B1B83EF032825587510DC7E3245BE2BCF054E7D29B7A2FCCCCCCC8B209E0729A9F9FF7D8530F5E03545D78435B37939A011FAB3A0C99B6B636148828E1EBD7AF4FD834CBA874EA7DF76B4FE5393D3D45B823DB98B5907F7A7A1A57A3BAABE97EEDE9C7D2AF6ADBD101BF22AC440466B961E852E7F0525CE6312FF579EBAA837B26272795EAC2B8E525DCDEDE2626269A6F8C5852B08142A09FCECE4E75F456033511EB2931313188CA718DA6A7A74BF460C9A35FC4FA5ED880A771C547B6EA3E7CF8505151D1D0D0F0FBAA73EF4DBD17B0604A4949413A66439C7CB996BCF4D483D7005517061B1B1BF9F9F9FADA2537371793607C7CFCA35487612B77FFAA0D9EAA69FAA874EA7DF76B4FE5C11522DFA0012D2D2D5F0C9A9B9BD5A1DDAF3DFD58FA556D3B3A7EFDFA25B7857162CDD39D4B9DC34B719AC7BCD487AAABC690C0B953AA0B7B721C1D1DC558724F1170442C37107CA885272668AC986C53240494A3638DA6E7D12F627D2F5CA958E561C4220FE4879448BD8189AECCCACA9201FF7CBD69DB0B0707073D3D3D188438048699C79E7AF01AA0EAC20097417272B2BAE166119B39AA5B3570290A910D060EBA5EA23A59A73E49D3F451E9D4FB0F5E7B00892AAC595959517910DCA8FB1CEED79EED956FB9AADD673614AE4EA67B9DC34B719AC7BCD4E7ADAB0E6B01B9767F5F753E9FCF122F9B53CC8F5DCDCCCCDCDCDCC4659790908045078625AA110C06F594CBCB4B8492EA9E3BAE603D8F7E11EB7B1D1D1DC93D58AC8F9022AB9E88541D3676777793929270129EAF376D7B416E1361219C9A9A8AB7BCF494976B80AA0B8FF5F5750C344C91393939EAABB9BAEA1E0CD4626363B172921B9898F451E053354D1F954EBDFFE0B5575F5F3F3030A00E31373727DF4F018140002FBD5C7BB657BEE5AAD6F3A8442950BE03F9609DC34B719AC7BCD4E7ADABEEDDBB77387DBFAFBABDBD3DCB37412C29F00DF483151616236A01323838884ECACBCBEBEFEF774AC1065EE27AC5BE4E7930020B0A0A3026711D6384DBEE2544F60D4CD55358BED4D4D43C5F6FDAF602BA40FA57CD2C5E7ACACB35A0EF45D57924140AA94FAA5E6CD3CCA352EFFD07AF3D045BD1D1D145FFB1B3B3832643E79001668092921239035EAE3DFD58FA556DC98375005E224F4A4ACAD0D090F7F1125E8A7EC6BCD4E7ADABEE0F830B4E1F783706BF9FA2E3250FE7C4DF413FC358483ED8BF5ECA79237DF732BBF5AF37EDA946F753E5D1AF6A7D667B30CFB3CE75E1D587AA239C1309BB954D23541DE1C441D8AD6C1AA1EA08270EC26EE5154BA83AC289835075845075841307BB954D23541DE19CC893C06E65D3085547382712762B9B46DEA4EABABABAFE2184BC54A83A4218D511C2A88E4D23549D37AEAFAFE529B7D8F09EA2737676F6EBD7AFE3E363F383AD7776762626261617175DCAB1E4511B0ACB3376373737CD29F2242AFD39BC1690EDE2E2421E87110C06E5716EFAB3B6F5E7ADEB25CB36EA190A85CCAD50CF7397976A2F146BDB2E5B2C67E395627B3110FA80AA237F4D757EBFFFDBB76FDFBF7FCFCDCDF59EA2234FFA181919513FAB383434841D272727DBDADAE4D7B5F572F43C1F3E7CB094FCEEDD3BF5985D4CA03F7EFCC04661616146460636F052CFA357AFAFAFAFA3A363C4A0BBBBBBB7B757DFCBF6F721F59225A5B6B6362929491D2B2727C7FC3374D8BDB8B818D9525353E5C11F7ABB74F4B3F14AD12F06421F5075E4AFA96E6B6B4B3DAB17F2C0F4EA25C5CBEC86B8EDE3C78FE64787E8E5E8796C95602B091C088773CF63095E939393070606060707B12107B5EC65AB3A97FA409970D2BDF188E1A2A2A24020A09E99A276570F54F45243FD6C8C8D8D8DFCC7BDF1D37608F8C6C7C71B1A1A767777553604CAF5F5F5A88C54004195394A96B0F2E8E8A8BDBD1D790E0F0FE5ADD1D151148B20521DD4520E504F45595A5A925F4C5729A886A4A0FCCECECEA6A6265525AA8E3EA0EAC80B521D66A2AAAA2AD9AEA9A9C12CE625C5B6284CF73F7FFEC41429CF49585858C0D4EF7E2C3D0F78FFFE3D72CECDCDC9042D29EA66A07A3E854575B6792C60064F4B4B4B4F4F573B5AF6B27DDEBA5EB29216CA41908A0D4496881A2151F5EBE3F2903CB3EAF47659B03D1B100CFCF4F9F36779E0D6CDCD0D7488036D6C6CA02D4A5148C14A429E1D21BFF15A5A5A8AC5C4DADA1AF6BD379EEB91929222F75D1168CAAFC7464747230541B67A868B5E4E424282BCA51EFB2229680B262CA4A0E4ACAC2C34165542682BADB35C0C843EA0EAC8DF541D16E66A9AABABAB1B377830C5E32D2CF55041A763E9794409D01814929898289F7E996F21AA0FF92CAAB3CD630193352C859CD098ED5EB6CF5BD74B460AAAED37B8B8B890201501CDDEDE5E414181940CA98BE1CCAAB3B4EBC133A69608AAA550546C6CAC6CD7D6D6AA6722C328583AA07C58677F7F1F29C160303737372F2F4F6A08C3A9C78CA14A224E511D24DDDADAEA540E0E279A47694A75A150082FD17CA4A00E68F5B281FB03F0087D40D591BFA33A2CC6D52D3BCCCE98A7BCA47829196BFCFCFC7CF763E979CC3113A20D99829FE40626A6FEE4E46414D8D2D2028D49F011F60D4C28473D2003D33DE45769800D79C0A37AA8B17E0353B5EBC13366AB3A0467B2DDD0D02035849F60A699991911122239C90001AB02114D9A436AA9125487D388CA48F9B6E5407572FB34333353A90E8126B2499C0735E240EA2EABBAF349E803AA8EBC14D561765353677A7A3A16F25E52BC940C13402D6AE2C39CA897A3E7312B013332028EA7521DF2638296E9B8B3B353BECCF29B9FD52915A1AAF24C29445A72831736956FACE8AA53ED7AF08CD9AA0ED1A1BC555C5C2C8F9784C6E4218D083AE3E3E345513D3D3DDDDDDD3810FEDE1B0F6FCCCECE964210EAC9174D636262E4B85237DB72F41B98515151F21C6749415108EF542B9CEE1E13FA80AA237F4D75A0A3A3034B782CFF11EE784FF10226628402886F727272646ED5CBD1F32030C24C2ACF2BBFBCBC542982FA528C7E0353CF63069107CA17D54142323B5BF672FA06A6A5648BEA94CC942CD12215B7A977F576793963BAEA1078C1318140A0B4B45405ACD80B411B12A131280AF554B752D1F0E5E5656CE09C23112FEBEBEBE52D48ABACAC0CC792EFA3EAE5D8AA0EAE151FAB14C4A93E9F0F3BA27355B5097D40D59117A4BAFB677B12AE6079ECB86D39FAA3C9DF322E6703A70EBE9487B95BDEB27C75D36347EB7829C73624D5AB44E803AA8EBC20D591D782A88EE781AA63D308554722197E1846D5B16984AA2384D0076C1AA1EA0821F4019B46A83A42087DC0A611AA8E10421FB06984AA2384D007541DA1EA0821541D21541D21541D9B46A83A42087DC0A611AA8E10421FB06984AA2384D0076C1AA1EA0821F4019B46A83A42087D40D511AA8E1042D51142D511C2B14DD51142D51142D5B16984AA2384D0076C1AA1EA0821F4019B46A83A42087DC0A611AA8E10421FB06984AA2384D007541DA1EA0821161F747575FD434884D2DDDD4DD51142D531AA7B4160D9C15E60544708F99B335130185C30585C5CBCBBBBE324FB67EABCB3B333313181734ED551758490679F89D6D6D69293931B1B1B6B6B6BD3D2D2AEAEAE38C93E779D878686FC7EFFE4E4645B5BDBEAEA2A5547D511429E5D759F3F7F96EDD2D2528477D840C02129E3E3E3B7B7B7D8585E5E1E31181B1B7329EDE8E8A8BDBD1D33F8E1E1A1A48C9890A2DEB8EAAEAFAF3F7EFC685E52209846788753DDD0D0B0BBBBEB7426D1291276CFCCCC9C9D9D391D4E3FE1AAEF54CAF4F4747D7D3D0A3F383890BDD0AD2A0F5547088940D5E5E6E6C27008323233332F2E2E9098909080BF535353284A26E5B2B232BC44B6989818A7A2308DA6A4A4C8BDD0D4D4D49B9B1B24C6C6C6CA0D521CE5F74346D5344CFAD3064A9F48D9DCDCFCF9F3E70BEF0E9C8A4020604EC18982FC06070737363624B0B63D93E8146CC04FEE5FCAD04F38FAAEB7B7D79C82636D6D6DADACACE070A2CFA5A52598158B1E59EB5075849048539DBA81595E5EAE54170A853033FAFD7E355D0683416CB8A80EF3724545856C575656CAA429D60498469F5075A86A87810A49517F54B2A8A8E88577C7ECEC2CEA69511DFCA45A810C4E67B2AEAE0E919FFBE1F4138EC3A197CD29081911232280CBCACADADFDF97FC58CAE03288BCD89AAA2384AAFB3F3730FB0C64BAC41A7F6666464D8ED880FCDC5537373757555525DB35353598B29F4975C7C7C719191992929D9DAD266B94FFF25587D02D3F3FDFA23AC470B20D9341394E6712BD8386BBDCBDB43DE1A5A5A572175452E039180E9D2B719E5890AA2384BC15D5B5B6B68AEAA2A2A2C4196ABAC40C2B77BA5C54B7B7B707F1C8765E5EDEF6F6B693EA560DC26E1A4C8058E7D8001B6282D7A23A9C4684D1EA4332D419AA7BFFFEBD9C9CE2E2E2F5F575A733899C08F80A0A0A1EA5BACCCC4CB9052A29387B880EEF8D4F0DE3E3E35D54E7D44D541D21E4F5A92E2E2E0E86484B4B2B2F2F97BB949879652E96C9717979F9DDBB776506786B7878D8A9B49696164CC4858585F5F5F54E332FA83608BB69701B766F35C006E6E857A43A0099413F151515393939D0183C84300BE7271008200273399362ACA6A626978FEB2C271C7F7196CC29E8621C1D51230E078FBAA8CEA99BA83A42C82B539D17464646D4B715A03DF7DB5C3706CFDA3454467DDC0561CCCFCFBF2ED509A1504802659C2E541BDB728BF8CF9CC9DFB9994CD51142225075878787A7A7A7B27D7676B6B5B5F5779B86691AB1CBEDED2DF49098982891E8AB539D59692FB0DA541D218433D15F6EDAE0E0A0CFE7CBCBCBEBEFEF97949E9E9E828282D8D85868637D7DFD7575C7EFFFC7212F30AA8E10AA2E029BF6ACF7F7D81D541D218433119B46D551758410CE446C1A5547D5114238135175EC05AA8E10C2B995AA638BA83A420855C73AB345541D21541D9BF677EBDCD5D5F54F64E1FE7405AA8E10C2B9F5B7A09ED922AA8E10C2A88E75668BA83A42A83AE3F7BDE4F7F2C1CECE8EFADD2F4EB2CF5AE7EBEB6B79A22C36A83AAA8E10F2BC33D1ECEC6C6565A56C9B1F0EC049F659EBECF7FBBF7DFBF6FDFBF7DCDC5CAA8EAA2384FC05D521DAA8AFAF6F6B6B534F531B1A1AAAABAB43CADEDEDEA3EA3062427EE0717979D992F2D654B7B5B5E5F3F964BBB0B0501E0537313121294B4B4B725A1070777676363535EDEEEEDE1BCFB75B5C5C1C1F1F6F68689094A7ED05BDD3C7C6C6541EAA8E10F2BA55870863C100D3AEA86E707010D3F1CACA4A5A5A9A3C5F06D9F0127F3F7DFAF4A83AC4C6C64AE1085FE47931656565BDBDBDE694B7A63A9C64F3B3C5457296C7CB413F595959D0CFC6C6464E4E0EB4777373F3F1E347740D52D02F8F3A755E7A41EF7448B7BDBD1DF5514F6EA2EA0821AF5575A9A9A98D0698E34475474747987FB196C76CBBBFBF2F3931DF0D0F0F9797973FAA0EFA135931C9CA5340CDCF687D53AA4364A69E748A58192FB1111717673E51E897828282650389B6A13A184BF2D4D6D6AA47AE3F552FD876BAFE9856AA8E10F22A5567B98189290F93DDCCCC8C2CF9D5C3A931237777777FF9F24596FC614FB2A5A5A58787876F597588D5D439477827CB8BA6A6269CED929292F8F8789C16580741B6BA7F78707000D5A5A4A4C85E0D0D0D8FFA54F5C15E70EA74AA8E101299AA9B9B9B43A8716F7C4B10D3AE9AF504CCBFEA83A25583C74EB2999999F2CC1DB3EABC141531AA835794B4D2D3D35508653E51DBDBDB7EBF5F25DEDEDEE2A4BD7FFF5ECE587171B17A14DF93F48253A7EBAA331F8EAA2384BC56D5058341CC8388360281405E5E1E66BDCDCDCDFCFC7C64F3F97CB5B5B56ADF6A83474DB2F8DBDADA6A99763D161531AA031D1D1D089E70565B5A5A2CD9D469F9FEFD3B4E383A0239613E98098117DE45BF20267BDA5ED03BDD4975E6C351758490D7A13A27F45B8B986A1F75EBF2C536ED85D4D9CB136571C243A190CA5F5454644E79721E7B3F99AA2384D0076CDA53D65954C75EA0EA0821545D24D739EC7F43642F50758450756C1AEB4CD511423813B169EC0EAA8E10C299884DA3EAA83A42086722AA8EBD40D5114238B752756C11554708A1EAA83AB688AA23845075AC335B44D511F26654D7D5D5F54F844231B045541D218451DD8BAB33171C541D21E4A5FBE0ECEC6C7B7B5BB64F4F4F7FFEFCF9D79B565757575151D1D7D7473DB345CFAB3A5CFD0B26300038C510129133917A0C0286796666E6CECECEDF6DDAF2F272777737360281C0F9F9F9EBED0E993C1717179FEFA79CA9BA7F7EFFEAD79F624C088954D5412AD9D9D92AA43B3A3A6A6F6F6F6B6B93477D0A90903C53746C6CECF99A363A3A3A3333333F3F8FC9079E78BDDDF1FFD83B13B82AAEBBEFD3FAE4ED93B679FAE66D1A2F1AB398D8D41863F618631263D2263631894D6D539BA689F13135A94DD2344D23ABA8282222E0860B5CF65D4005051415C1054144414404D9F77DBF2BEF6FE6DC3B0C3373E1E20AE6FFFBF0E173EFDC33E79C3973E67CCFFFCC39FF3366CC185CC2C2850BEFBDF7DEFCFC7C42DD08459D64BF2BC5DA2F547D48A7D3E1B8F0A8141616666666E2437070303B929494C41C9B4646462E5EBC18F1141515B19FF0E408F10866A5A3A3E3D2A54B851D23256989632691087557F3B0BFFEFAEBB0E76082B02378BE264E9CC82C127479855D69E6CD9B87A600C7EFB8E38EEB776978C0813A5757573411429646E3EDF8D18F7EC43EC048C5B528366B3E3E3E8B162DC2AF050505C34A778748AC3D1CB27D56CC00A14E8A3AC5DA8FAABF66CD1AB69B7B4747477575F5534F3DC5CE7AE79D77D88EBAF2AD72BDBCBCB2B2B2525353612FB2BDB24041DC240460351B694D9B360D443C76EC1822C4ED91A7258E994422D45DCDC38E4679FEFCF94B962C6147F08CE32BFB8C7640E00D9EC1E6E6667CB8AEA803E73C3C3CF061C18205426F7854A30EB69D8B8B8B62B386C2474B88FF2A956A58E9DE79E79D6C8094B587D6B4CF8A1920D44951A758FB51946C675B016373E7CE457F01CFC394295358E0BBEEBA4B823AF43E6090A1A3817217B6A5176F8C8BD467CD9A95C24BB029E569B19B7DF8F0E191B3B72489341A5187271A0F119E473C7138121F1FFFC1071FB05F3FFAE82304101E61F6DAE9BAA20E2DF29C3973162F5E3CAC1DCC47E0ED1833660C5AAD97783536362A366B7DFC2B3D5F5FDFF7DE7B6F58E94A4C086BDA674B1920D40D409D62ED87E9C68C65013F28E22FBEF80256B9307B0AC632FA14A8BB77DF7D37C2807378A2D071637D0DC53DE001C2D9B3670BA637EBD9C9D302EAF02BCCC1C99327B3CE268944A8BBE2871D9DD47BEFBDB7ADADADA0A0E089279E60BF4E9F3E5D989F89FE2BEB565E57D4318DB45DDCAECCAA136FF2AED8AC41818181CECECE306187D56597A0CE9AF6D9520608750350A758FBA74E9DCA2C65013FAC6FA8681D0BB764D1A245F8DAD3D303F829A20E91A31F24A9F4F2B4849B0D8E8EFCD7D724D208471DE4E8E88886121FBEFAEA2B58006819615DB19F600A303305BAEDB6DB60888CFC4BBBE9A8137F556CD604A1A885F76787790D0B75D6B4CF83678050D73F2D4552FB517C5F7FFDB5B8B8D9677B7B7B7C95C7C9C2C0FCC20D400764EEDCB9B8258AA8835C5D5D67CC988160B0FC708714D3BAFDF6DBF179E6CC99B0FD690C9344A8BBB6D2F012BEC20E105EDA017BE2A79550670DEAE4CD5A6666269A2FB4B438B870E14221D887BC86853A2BDB6749060875D6D67E452D59B204A6DBE061042E0E22D06B74AD4721916E25D449545C5C2CACAFADADADCDCACA22D45D419EE5CD9A7890F306B4CF43B6AB84BAA1058B180696D846269148C403421D5DD12D853AD6ADA0C68844A29688504777E156461D8944A296885047778150472291A86D25D4D11511EA482412A18EF24C5744A82391087574699467421D8944221ED0A5519E8727B683D2F705754E4E4E362412894422DD580D8BB5D70075D47D1E81A2FB322A7AE2D7F536DDDC4EF7752DBAD1654FD083793D0A61B891D88CF0B68044F7E5162E461A63A41A458570632221D451652211EAE8D2A858087574E7E889A262A4DB449746C542A823D11345C548B7896A20150BA18E444F141523A18E6A14150BA18E444F14A18E8A8E6A141502A18E44F78550474547C5428540A823D17D21D4510DA46221D411EAA8329108755403A958087574E7A8329108757469542C843ABA73F4445131D26DA21A48C542A823D11345C548A82351B110EA48F44411EAA8E8A846512110EA48745F08755474542C5408843A12DD17421DD5402A16421DA18E2A1389504735908A855077E5E9D146E424128944BAC1BAA1A81BBDDB01DFDAA2FB42B7894477FC162E84E14672B5A8ABADAD4D10A9BABA9A6EA45C95BC144BACBEBE5E7E04C11A1B1BC3C3C32323230D06033B313535353838383636563862CDDDC9CDCD659FF7EDDB87AFF89092922249CB92702E52C4897407BFB7429D4185C187828202567FA09C9C9CD0D0D03D7BF648AA228E9F3B778E7DC64F999999274E9C107E454562B52E2B2BCB5295969F2508673537375BD3E0200C72C23E23008BCD9A6A2FBF2E7C88E4A5D3E9ACBF2E6B62BEE2C8E567C90B5F9E9CBC3D91A7654D7E146F99FC2CC51CDEE451D3AB3C1FD73C69D2A4CF793DFCF0C3284D6A1DC4D26834A870ACB2A2D6F6F4F4801F9F9B75FBEDB70381F2235D5D5D284C1F1F1FF45CDE7CF34DC48313172D5AA456ABBFF8E28BD9B3675B7F773EFCF043D64CC0DEC7577CBEEBAEBB962C5982B4264E9C885C593A17A9BFF4D24B7860BEF9E69BC3870FD3ADFC7E0A75E6473FFA11AAB14AA562AD2D1ABB3973E6F8F9F9A116BDFEFAEBE2FEDCBDF7DE8B5ACABE2E5CB870DEBC79AFBDF69A10E0273FF909ABE4BEBEBE96AAB4FC2CA68E8E8E69D3A659D9E020CCFBEFBFCF383775EA54D6DB1BB2DA2B5ED77BEFBD67CF8B3D86D65C9795315F71E4F2B324852F4F4EDE9E28A635647E146F99FC2CC51CDE0AA863B50A42ABCA6A1E7A558E8E8E4B972E65BD0C401EAD7C6060208A5EE87748C240B8373B76EC409701D59A1D292D2DFDF6DB6FD1D4161717B323E89AEDE085E21E24578804B7C4CBCBABADADCD5200D62B898989617D55F441162F5E8CB48A8A8A2CE51989EE300B5F0B0B0B858CE1437A7ABA625AE004AACB3BEFBCC37AC7629B49F2480B4750AA0B162C600767CC98C1B224E8673FFB199A9E61A10EA5F1ECB3CF0AA863A723579650873A8D54841BA178F98A4524294694AD60140A66A5FCB6CA6FBD241ED62D455A08368895B94324F428ADA978B8294236CACBCB93929258F56047702EEB995E41EA8A572A97BC4ACBCF42AE860C33E4E3232F0D1C173AECA8CCE8BF2B56A13BEEB80390436D91FF8A8618CD28FBFCC1071FAC59B346401DE393B886A3E2592A047195969CC5B472E54AB4D4961A1CC54609A6DB134F3C215CA035D55E725DA80F53A64C614710158A68B8D73548895D59E496CE9217BE38394BED89382D2BF323B965F2B32CC52391BC024B9A9751803A3CE4E87FA1A93A76ECD8534F3D859605258272017870049D0B949D3C0CBB2BA882AEAEAEAC754618D6FFC2F3897E9C504D91040EE2F1B394A565CB96E196B3C137A1819368DCB8718810052D0CF8227B789ED121420ED128C8F3CC5A1CDC1E7455D8A3825B223C69F8809E97A255872AF8212F5C1A1022FC84D6566852254700605608D0AC59B36017B2A60AE9BABBBB839AC3B2EAD04C23127C60A843D10DF9CCE3F8DCB97325072597AF58449262C411E416B04F4B4B635D3CC5DB2AB9F58AF100D568CDE3E3E3151F3CA63BEFBC9319D0088CFC5853F15008E802B3D3D11CB04CA27AB07B0A53985DD715A4AE78A57249AAB4E259C8150BC3486C4D19CAC3C84B03460F0A816503B749B1AF863A8312435597A30EA7C3921082A19E83A383A00E394451A3CB2F1E8B93576979DB8A6B8171C62ED34AD4C19AC129E2EA6D4DB5975C176E37D22AE7850FECF1B1E6BA868CF98A23573C4BB1F0C5C929B62792B4ACCC8FE496C9CFB2148FE486CA2BB0A4791905A8C31194660A2F760457825640B088637949C208CF2A0AF1EBAFBF6646C0FCF9F3D95948825D3FAA69737333ABB896B2849F867C9B85B60CD502DD5B712F0398C1238D071B3D11799EE5484360DC1B363C620975107A97AC050472C437FB9E7BEE118F658B8F2024AA0212F5F5F5C5E5B0D4F11392008160940C0B7528D2D0D0500175B7DF7E3B2B9F419E798454ECC58B2F53B18824C58823B85F68FAA74F9FCE2E5FF1B64A6EBD623C281C9424121D04360C518C0D0C7543563C5CA64AA50289711F9196803AF48591ED975E7A89A1EE0A5257BC5245D489ABB4E25988505C79AC29437918C5FB85EA84EE203220F4C4E535014F0A3A85C8276A23FA9142754551B0810A5CECECD9B351A906475D7E7E3E6BD1EEBEFB6E56CF15ABB41C759B366D02C2071946423C1DBC58B46CD015972F7EC0E5D55E7296FCBAD8E3F3352F3156ADB9AEC163BEE2C8E567592A7C71728AED89242D2BF323B965F2B32CC52396A5476390567424A20E2D148A5E3045612CE3194341B330A87C8A61D8B38ACF282076B5E81DC02A67677DF4D147ECF6E09967E6FF20A8433C43661BAD121A053CDEC2901A9A39F47D58971C0D9F3CCF8AA843DD42DE70E307BF493A5EE223301160C30D720465B272E54A545F142FEBCB0B9A3973E690FD4771F545783C090C75F880675E68642DB5BFE8F8E3AC21512729227931B25F71AF85D8146FABE4D62BC6832C21E7E84B0E0B7543563C14C2962D5B900A8E23090175E8C420032C9E2B4B5DF14AE59254694BD55E8C3A6BCA501E46B14AA384BFF8E20B1F1F1F3C0E96AA102264EF6CD8E084507984310934A0E81320180A67F2E4C9309A071FFBC241C9DB5F7195969B11784E8537118AA8CBC9C9799F179B8DC2C2E044D422D6D62B567BC959F2EB4230A1C387A659D11852BCAE2163BEE2C8E567592A7C49728AED8938ADE1E687DD32F95996E211CBD2A331CA5087BB8BA217B7F278C66EBBED36D664BCFEFAEBE9E9E9F230C2A38E4A891E591F3FE3EB89279E60016013B04A834ACFBA6683A00E61840162F180A17C00139D0BF4F159D1B30E11C2A3F7C45027C9B322EAF0953D45C3BD493366CC90E04A72845D261A3818F8AC0C859FA64E9D2ABC5641C652535307B93B304758FF8BA10E9D4461086510D421F5FBEFBF5F3CA6AF883A4911C98B91BD65717676464BCAC68A156FABE4D62BC6836706F819AE553764C54321A035F4F2F2423E1192A10E3794A522A0EE0A5257BC52C5EA2AAED28A674950674D19CAC3285669C603E125825CE03DEE383A61CCAA637569F1E2C59E9E9EE21111366E01D022666688485A49A1AB8783282866222B566949DB8AF65AB0F587F5AE0E1F60B0A2B6039356567BC975B1ACB297BE788E98F13DE4755913F315472E3F4BB1F0E5C949DA13795AD6E4477ECBE467598A472C4B8FC628431D3EB8BABAA2E106B7D15966CF181B1A82F5230CCA4BC2B0F605B5104FDD9A356B5898AFBEFA0A2842771B778EBDC01F3366CC3C5E78682DCD7742071CE5889871AEF0D429A28EBD1E43138CFB813B87539043143D439D3CCF72D4212104433B3EAC9B843B8DE4063F82CCBFF7DE7BE8A6A1DD67B3AA1E7EF86176446CFCA164D0E31EE4EEA0C4F03008A84399B3761C0245C4EDBE44680A9125F4CB704714EBA2BC88E4C5887E28EB4C30DB8E75B125B7557EEBE5F1E0B1412F92D16B58A81BB2E231D4094F35431D6A17C33C8BE7CA5257BC52F99C147995969F25419D3565280F63A94A0F3E53EECE3BEF4426D900267A03A80FB0096041BE6696B09A85CDE211C6D01018A9E37484415D4224B8A7A8C0B02CD90413C52A2D390B477045C2429DE1A20E029B61375853ED15AF0B7D209C8B4AE8E1E161E5755919F315472E3F4B52F88AC949DA13C5A21E323F8AB74C7E96A51C0E5E81473AEA2C09AD8330358B3510E223F23096C45EA70B6811BA63A80483170A62B67EFD99C4761924CF3752AC91951497E4A250A52CE17CF0E658F1EBB08AD1521149E66D0E795BADB91D57A6ABA978D74A835FA9A52A6D4DF90C378CA5D258B26489D0FC5D5721696BAAB4A42B704DDABEE156FB6195B3FCBAAE77E4D6DCFA21DB932BCE8FFC96C9CFBA56157814A04EDEE25C7D3CC5C5C5C28AD1DADA5A2BDF57DDDC3C5F6F495EE30D2974CF07F97A8B15D1C8CFE1CDADD23A9D0E3DF4412CFB5B46D7B0DA9346A96E90EFD111B56CFE16CE331511DDC46195C68DEC569348B73EEA48241289441AC5A8B3C62B9A5CD6787293EBFA39A993087910A684E1C320591AE1927BD7BCAE0A0C0C4CE26569D2909025DC949BF81EF42A25F6B2989B9BCB062115BD2CDE303FA2B0CF366DDAF4E1871FDADBDB53BB46225D63D459E9154DAE213DB92932F53A39A9930B79B8E38E3BD87A389C6E294B235F63C68C111C6C0E6B02CB1537B81E1E1E6BD6ACB1B4CC43C8126E13EEF50DC8D2F590E23C40B997C51BE94714F51FC95DFD5C1E12895037842C794593871CAE2737B9AE9F933A0175F3E7CF8FE1B560C1027C953B0C5474F02871DEA8E86251EEFF53E20811A7E074F69FA94FC931A37004D15A32A0D92A2BB1E4CE12FB94BC2CCA33294F6E902C094706C992B3B3337382A7E88951E2C854EE22CF1A6F96D6F88ABC8282B5843AB1EB29453FA272C9D39297BC5C92EB02475156961CC60A3E39E59E45E5F75D1E469E1F45778592FB658DD750126934A16E48AF68F25386E5C94DAEEBE7A44E8C3AB45F88139CC3077C5574182871F0D82773DE2877B1A8E8FF53E208119F510EEC3F539F926346F9422EB96EBBED3661548DB5777287937D4A5E16E599942767294BE22383A00E06908B8B8B62C1CA1D994A5CE459E3CDD24A7F9B5750B0A86930D758A9CE9E3D9BA14EE26551D18FA85C92B4144B5E22F9752103B7DF7E3BBB7D38C24C6A64030F94E093B34FC9B3A8E4BECBC328E647EEAE507EBFACF11A4A228D26D40DE9154DB1A5B0D2939B627257EFA4CE1AD43177E08CA02C4B72878112078F7D32E78D72178B8AFE3F258E102DA14EE29851E25F78C8014CD602CA1D4EF6C916292B66529E9C3C4BF2238A59C2F5BEC48B252A2F584547A6E215A6D678B3B4D2DFA63CCFC230C020A8936F2523F1B268C98FA8449252552C7989E4D70514293A8C658E6684AB907B16952F4E9784B1941FC96A5FF9FDB2C66B2889342A07302D79459387B4DE939B5CD7C4499D95A863838702EA141D068A1D3CCA9D37CA5D2C2AFAFF943842B4843A896346B4922C92A953A70E6942896D5CB1B34445D42966529E9C3C4BF2238A59420B286E19E505ABE8C854DCBC5AE3CDD21A5F918A795EBA7429E2818D88BE9125D4490630E55E162DF91195A34E5CAA8A252F1F14915C1724BF5298C86C30935D97A26751C97D9787B1941F09EAE4F7CB1AAFA124D2A8419D355ED1D8AF87790928B2C6939BE4ACBE6BEAA46E70EF910C7542BBC6502777182871F02877DE2877B1A8E8FF53E20851117572C78CD60C60CA51277196A8883AC54CCA939367497EC49A2CC90B56D191A9B879B5C69BA535BE2207CFB3F888B82ACA5127F7B268C98FE8E003988A252F91FCBA90BA7064C68C19EC4A858D6F04F7D372CFA27247D2923096F223419DFC7E297A0D953CCE24D2A8419D955ED1588B207E3934A42737F959D7D649DDE0DE231551D737D061A0DCC1A3DC79A3A28B45891B46B92344B42368F7F1EB53BC18EA248E19AD441D62164A8CB5327267898A03597227A5F2E4E459921FB106757D324F8C8A8E4C25CDAB35DE2CADF11539489EC547C455518E3A452F8B8A7E4407479D62C9CB25BF2E7604A9B323884D18A16531CB2BA7FCBE2B8651CC8FE45E48EE9725AFA1924680441A4D0398567A4553B408AF89B3862BF323375CEF914CD6380CB466C2B7D815E1B07C7BDE48DD485F918A053BA423D3E1BA51BD7E1AC4CBE215B863BDB2EBBA569E45E561ACAC095770A524D2A841DD28D570BD475E3F878137D211E208D4ADE18991BC2C924884BA5B44E430900A96442211EA482412894422D4914824128944A823914824128950472291482412A18E4422914824421D894422910875241289442211EA482412894422D4914824128944A823914824128950472291482412A18E4422914824421D894422910875241289442211EA482412894422D4914824128944A823914824128950472291482412A18E4422914824421D894422910875241289442211EA482412894422D4914824128944A823914824128950472291482412A18E4422914824421D8944229148843A1289442211EA482412894422D4914824128944A823914824128950472291482412A18E4422914824421D8944229148843A1289442211EA482412894422D4914824128944A823914824128950472291482412A18E44229148A49181BADADADA9C9C1CF6393737B7BABA9ACA9444229148B714EA626363DF7FFF7DF6F9C30F3F0C0F0FA73225914824D2AD8FBAC8C8C8C58B177FF3CD37454545EC271F1F9F458B16E1484141013B121C1CCC3E242525E9743AC5B3E46160443A3A3A2E5DBAF4DCB97396C208470203032D9D25D70E91D8592929299223F21CAAD56A218C60E68AD3CACFCF87D55B5C5C8C53727929C643229148A4118DBA975E7A2981D7ECD9B319EABCBCBCB2B2B25253531F7EF86183C1C082E12BFEAB542A76E2B871E3D88737DF7CB3A3A343F12C4918F066DAB469E0C4B163C79E7AEA294045311E760439B1B1B1B174965C77DE7927BB8A679F7D96C5336FDEBC356BD6888FC87308BE7EFBEDB7481AC1F0559E566363238E00BA7E7E7EF8C00678E5F1904824126944A36ED2A4499FF342C3CD50575A5A0AD30A860E1AF7C2C242161230F0F5F57DEFBDF72CA1457ED65D77DD25C618D29A356B560A2FC18294C703D4757575E12B186CE92CB9E4C804EAD2D2D2C44714AF0B11E2DA85D290A7F5C5175F4C993265F2E4C94230C578482412893472512719C0443B8E163C262686E187D1A28F1F4E7476765EB06001B363802836EE3775EA548044F1ACA54B97E2F39C3973EEBEFB6E84011E60380A03866CF44F120F83162C2D44C510A5789635A87BE79D778A8B8B852396AE4B8C3AC5B410189C433FE089279E609C538C8744229148A30675F1F1F18B162DC2D79E9E1E204AD2948304EC2596042D839FC5C2E4E4E4C050130EB2F7677244DD7EFBEDAFBDF6DAE06759833AB053A3D10C994331EAE469151414CC9D3B179887453B7FFE7C5CFBE0574A229148A45180BAE6E66640E2830F3E40133F7DFA7434E59999993367CE44B01933662C5CB850112DF2B3E4A8C307575757448260B087D8220739A26EBBED36664E0D72D690A8C3FFAFBFFEDA9A1C8A51274FCBDEDE1E061CC280767BF6EC59B66CD9E0574A229148A411873A4B628C110B16D2905330E467C98548BABABA869B9F2B3BEBFAE5D09A784824128934A251472291482412A18E4422914824421D89442291483717754E4E4E362412894422DD70393B3B93554722914824D2F7157545F5AD91399796ED39FE71F0C1793BF6BDE21DF7BC47F4936B231F5B1D366D4D38FE3FE31EF5B257EC5BBE090BD4C9FF8ACDF0CDC83B71B9862ACAE8526D6D6D8248B4E1068944A8BBC59557DDF4756CC66CEFB8C9AB42C7DA07707F76EAB1CBFCACFDB3F31F6BAF563904DEEF1438637DCC5F830EC49F2DA17A33C2A5E8AF8E442211EA6E35ADD87FEAF135E1E3EDD500D5D865FE266E015A8EC1AAE561935C827FB77DDF77BB8FFB9F38BF37AFF4E8A5EAEC8A7AFC9D2AAF3B70A12230F3C2EAE4EC8521A94FBA45AA5CC2554E21631D0244F053837F8FAC0A9DBF737F615D2BD5A191893AF9861BA5A5A5DF7EFBED37DF7CC3FCBDF58936AF50ABD5EC887C830BF94619ECE0A2458BBCBCBCDADADA2C8521293437AEB5F437CAFE56D711EA46A2BE8E4D7F707910678A99C904830C5FFF119D76FC726D6B8FA657A7370E334EADDED0DEABAD6CE95C7BE0F4C32B42548EA2F8EDFCEF750C7879C3AE8A964E6AC84632EA40A0891327262424ECDBB70F061F73F9366FDE3CFC848377DC71070BACE83DBC4FB451063E2F5BB60C9CCBCDCD05E1C45EEEC461489650377232F3D24B2FB9B8B8B8BABAE25E8F902CBDF9E69B3E3E3E23AA0A11EA46960E5DAC9CE81CA4120F3CDAABFF167EB8A1B3476730826D46E3F000078B1091DCE3A07E6C75F8BFE23284E388466F306AF4FA4D69E76C013C33F354767EE3ECFD9D124F527336325107C2CD9F3F9F1DC14F6CD325A0AEB9B9191F04D429EE0925DE28830596F8FD9187218D70D4656565CD9831837D9E3D7BF6E1C387FB64DB4FC2E8170600CACBCB939292FA9436BF946F5A893E10AB213131316CD7306BEC7EE4015D28C9C08335BB78CA93BB863B6212EA468A9C1333B9D76F66C2013FDFED3E3EE45906639F1C7D721C3EE01C3864547BCF5D9EE0A85689ECBCD9DE715D1A1AC51A59A88B8F8FFFE0830FD8918F3EFA080118CF980BB7C15127DE2803477EF2939F48929387218D70D4A14A88EB03E38764FB49F484E6CC99C3C22C58B000C71537BF949CC5EA8346A3016984D9F0D6D8FDF8F5F6DB6F47248870D2A4493D3D3D7D56ECE2A998DC35DC1193507793D5ABD3FF233A8D1B9CE401038BEA15EFB8B61E8DA5F03D5ABD46A7679F1F750DFD3028054C92B0ED19F7C80B752D3B8F9F675FB57AC3FBFE5C3F0ED1AE3BC83989D6E90D06CBC6E1D7B1E9131C034C769E9DFF8CF5D18D9D3DD4BA8D10D4151414B04D94A0E9D3A733AFDF53A64C610DC120A8936C94C1CE12761964ED913C0C6984A30ED6152A06FB0C5B0A5F05DE08DEDB813A954A959696969B9B0BC2E1E65ADAFC52E2F31DB508712E59B26458763F082A1F7890EF6DA938C62E49EE1AEE8849A8BB6902813C0F9DE1A68AF044B9CF29F0BB3DCA661C4CABB2E676D06BAC9D7A71D821955370B7561779FAD2DEBC52FCDADEA379675BA21078EBD173472E553DBC22B87F3CA1A80A09E1C3A58656BBBD2770AECA3128E60C37B09076A9CA52F612F24B7FB532C434C9D35EFDCEB684868E6E6AE36E3AEAF0E1ABAFBE423B357BF6ECC58B17B3E1A93163C6CCE375DB6DB7F9FAFAF659B751067AF4A0266C02C4969F9FAF188634C25107AE083504B752115AA8185BB66C0151506770D371732D6D7E29479DBBBB3BBA44CCECB3D2EE47A5950C3C28EE6DA9B843A738B96BBB2326A1EEE608F8512D0F13E683AC4F3DA33CA898573A775BC2E36BC28F5FAE853D37DD23FA7C4DF3D4D561805FF0A9C2983397F8314CE3636BC284532A5B3B9746A5FD6FD821D0911D713B709AADA8F3397236A3A466DAEAF04F42532B5AB8BA35D33306FFF506A3A58507E9C5354FBA45F0933FFD00C8D5C9D906A3915ABA9B2E0D2FF6198D8530E204EC899B2A6B844EFA550E0D11EA6EA2C083891327B2CF93274F164C1F09EA5031BCBCBC56AE5CC936F6B2B4F9A51C75A866FBF6ED4367881DB1C6EE47B749187898316306D252DCDBD2D200A690DCB5DD11935077A355DDD6F5E4DA08D3F0A07D80C3DE13F2309965B57F094A09C9BA58DCD806B43CBF3E9A1D7F7079506E65435D7BF74CCF5DF8AAB2570399EF6E4BCC2C1D7017C1B33E7E1D1EFB3A67CB1E1DDF96BDE019F38C7B243E3CBC2284235FDAD9D736C683A6FF8ECB004171E415EF38E56E5A6E094E61795639041D2BA1A5E82348C5C5C5C2D2727487B3B2B2A84CBE3FA883ECEDED61F4CC9C3913E6BE70508E3AF699A1AECFC2E6978AA8C387A54B97B2F76756DAFD6CE0015064030F8A7B5B5A429D90DCB5DD1193507743B529ED2C37C59F5F39F061608AA560B37D38E484655F645F5576FEECC3679147ECF79E00BA522E54987AF1172A3A355A2B53DF7028B75BABD3EA0D8FBB45701DAEF531BD3A7D7645C3583B3558084B71DA9AC15628BB1FCC5139053342FF35F880DE40E61D895037E2AC7CEB75AD36BFB4324B5736247EAD06D20975374880CACC0DBB986134C13120AB5C5AEE0E7B4FBEBA314E7DF2023E4FF73099714199DC7084DD9E13C74AB847ABAAB51326DDB5CA92CBBE53ECC3D4D5E14663DFBBDB13FC4F14CCF28AAD6BE76AFFCEE3E70F15554A4EE9ECD5CEF5DDCB5EE04D70083853D948AD1E8950471A05B78C50770394515233CE3CFA67A73462B9FF7C197B5BA65A1ED6D1AB7D7079507973C7E5A6F6A5519CCDCE4F98BC5E26148CC24B0D9CA70CD86AF8DFD8D9F3DECE7D467EB034ABBCFEB97551F2D778B1B925EC45236CD315665E9248843A12A1EEFB8BBAD5C9D96CC19CCA39F45479BDF827ADDEF0FAA6DDF890985FFA9C47F4F27DA79ABB7AD71E38DDADD57D1973547DA2E046E6B3A0B6F92F8129B676FEB5ED5D1BD3CECDF68E5B9594D5DADD8B9F00DDD3150372DED2AD796C359B56A37E63F36E7A904884BAEBA1C0BCCE47769A5EC45E6ED5DBF8B4FD3EB6DEC6A3D6FF9CB257A3F48ADE69FE357778563CB0B5F231BFEA6BDB430E2FE80A90A56BE35EA9503E5ECDC806FE924A46CAB46D42DDF5D53BDB9B18F621000056464944415412D870DFD3EE51BDE6F5704C3BF8756FAE49591B0E9D311A8DAA657EF8BAFD58FEEEBCCB3737CFC8A7CACEFF426DF3F27D99F8EA9878F2AF410772AB1AA7BA864942FE3B2E834DCE9CE81C44AFEE4884BA6B9F906783CD7A532FF3A79E15FDC73D0664A097F71278A9C53491F20FF10D074AB985920F6F37AD269AB0990312E057DBC9B5423FF7E2A25A9AD27CA6CEF43ACD60348EF5E10EFE3EAEA1B243AF35F4FD3FAF4A1BEFD6A3955C6717C8BCCBBB0200B3F16AB271AF6AEBE5A6B9A9F33A6D3677DBB895D96CEAFA2CB96940B6370D7805383DA806479E09E4A6B3655469BE3AC84D82DB92D381D41BBBF5EFEEE22EF071FFEA866E4379FBF56A480875D751535C4DCB091686A4CA7F7DC825B8AD979B5182307A7E56885342E6C5BA969190733DDF1B7C726D049F3D7F76F01FD147E521B9C14C36D1C6CE0FC62835822442DD35D46B1175C1F99D6ADE96027884E377FB543476F72F11F9E1DAB2E61EC344DF2A09EA7EE05686FF6F44D6D9ACE71AFA1FAF2F07C678147111FE2EB6FE7855AFD1843A2EFEB527DBFE73846B82C6B89777680C42A2FFE3595ED3698828E80CCAEF0455013C019F3F58CB25F172686D5E834E4C62246DB3B6BCB5B73F930803B0255FEE797F37F78E7FD5F1B61355BD755DFA27FCABBF3CD872A482CBF04FD657B4F41A7EC8C749A81B1DA8BBC741CD38E7C13B28397EB9262ED7F4D2CBD6CE1F5D17AD5E7FAF23F77A2CBDA406C15627678FB44BD0EAB96AFAAA8F6905C2387B13F38EF00BCFCF5537B235EF65CDEDC276422D3D1A6A074984BA6BA297426BC76DAA7C685B1523968D777F3FF8FF79F55B787F4D68CCA8EAB5D9DAFFE889511753D8FDC9BE46C636A0CE664313679CF1A38E40DDDC98FA17436A276EADE250B7B69C11914BCBCD049B79B10DF8FFDFEBCAF19FA18EFB7543537587FE8FF10D02EA3666B7EF2AEC9258759D5A23AC527CF8D1BA7270D1666D05439DCDBA6A2E0F1EB50C75366EE5B7B997F79FBBB61C99F7CEBEC61E0C0875D74563ED4C6E24779D31793B55F17863B34BB2CAEAD92BBAF8B3971F5A1EBC253D0F9F834F158ECC920D3955F8CCBA28D532BF13A5B5CD5D3DE3EDD555AD9D2FAC8F196B5E02016974FAF1F6264762E4548544A8BB36A96CEE6ED7185A7A0CB77B94C3869B1D56FB0E3FD677B25A63E3D3260E098615346AFFEF860A39EAFE8BA788803A1867028A80BAB3F5DCC012C8C7ACBA53351A0651B0A79A1FEAB4D9D0C85875B1591753D81556D08526ECDE2D95026E19EA9E0EA811BF1744CEF11F79409CFE673B3EDCDBC8A76E42DD9F78AB6EF509B355A7AE492CEE7E602B17E77F7B94D7771904D012EA4634EA6CCDDE238F169BDE272FDF975958D7FCF08A109871CE89DC94C5D93E71070A2BEE770A1C5DA5ACB2E7B643439D46CE6779C74AFC8ADDE714C02EBCB1AB975A4312A1EE6A74B4A23730CF3407A4A95BFF39FF320C86D4FD5B2B67872BB7DA1AF3BE5E8E475BB36A34CC2E64471EE5E7B6BC165E5BDFA517BE3A1C6D7D606BD593EA9A13D51AF4C21FF7E7DEA5ADCB6C773DCE0D5A4E0FAABD6F6BD5F12AD3B33C695B15508ABF67024C1E24FE99DA3C7E5325B0A4DA58E99535C0089BB2B3FAFEAD556F459BDE323E1F54FB4C606D5E8316A983A6CEE95CFCB8BAFC066D738F61612247BE7777351C2EEFD55DB757FE84BA6BAC492EC126CE5DAA160E7AA4E6FC6EBBC94DE55BBE7BCFF17E4CD6A5E68CBA52666398F3B6274664731E1384F57F821E700E6497DFD1ABED23910875B7908401CC0145711D2C3042DD4847DDCB5EBBD8FC7BC19B09133A2A2AA7E05A7EF5776BB7664DF26875DDD4D2DDABB20F581872109FC3B22EFE2B365D1E663C3F2773BCBDBF8E3C2B920875B7906034CAF783EED68D8EA9D784BA6BA6AF63D3396728766A3FD17AB8DAF6AEB0ECA2AAD6CEC2BA967B1D03920ACA5FF589BBFA998A356D5D37C5EB724649CDCB5EB1B884CF228E3CE31E8523EE074E3FBB2ECAFDE0E9FA8EEEC9AB428DDC36433AB627D1AF5686509B4822D4910875B70EEAA2722EB175E2CBF6F43B43A96BEFFEED963DDCC6E2BCE7915E9D3EC63C4BE52AF5BE7FD2AA24CE340444C1BC29AEA137660F55616920A3F517D1471D13B8FDCAEDF69CB0B5F31736D22BAA6F652B10E66EDD4BCF188950779D54DDA99F115CFB5C10F7D7DC63B8DCAAFB67AA6996E6BE921E7CC58755C7B817638DDDFA992103F2FC4664DD1D9EE529A5FD5B51AECB6C3B54D6FF754E541DE2C4878F131B8524F075DB998E9F6D28FF34897B0B53D765603F3DA936BDC07B3DB2FE573BAAF31BB8F7174F07D4B05F9F50F73B887F2BFAE6208750772D2A5C5B1738A7B2F39FB3658FF8B8736226FBD0D1AB9DB13EE66A92883C7DA987A7CBA2D0D4B3558DA7CAEA4F57D4EFCA2D562D0F2B696CFB2CF2488F567FE32FFC51D750FC07C527B9046FCBC8175653F4F1C39BDCEA727BB5F791B3D432920875D74325ADBA5FF8F4BF2B39DFA87D3D926BD08DFCCAB6FC060D0F2A8E49363EEDE213BF39D49C7299A39ACD3AD39482866EFD8F3DCA05E726B117BB7FB8B60C80C4E727D5FDD30E7406235B18F0DBA8BAD236539BF3D5C1E62D39DCB414DB8D153DFC78A67809E08546ED5F134CCE7203F33AFFCFBA7242DD6845DDC32B82D91A6AC9F1D3150D6FF99ACC9A3FF8EDBF9A249646A5BDBE7977DAA5EADF6CDEFDD4DAC8999EBB36A69D5539876695D7D9BA843775F6BA2667FD76CB159A5083CF7AD25AFE75C5FE530E7B4F3EB63A9C79384006C4FBA17F1193C6FC64B21D82482442DD3547DDCF3654245FEE66DE5204D4D9B857D9A5B530D47D94D00838B5F40E78712E78337931845BDCD6C72F4B009018EADA34DC74FF5F6DAF1650B7F752B7F060E3279877366E2662E1D11FB7C93413DB664323BFEEBC0F969C90D65DDE15423B33C6BDFC31BF6A42DDA844DD671187B9067D795879B3C29AC7C0931760D9CCF689D3E8AE708E86181E0F3807163772EB690A6A9B1F72098679D7C7BD0EECB65D19F5FAA6DDEFAB93878CADAAB5D339F124CC4D3614F9EEF644F012344ABB64B1FE4D700C68E9565E3CB0FB5CC9432E41B97C361E5B1DC6DC468BC5E6A3DEE3A0A6C69144A8BB1EA8BBD3AB82B3EDBC2B9CD35B19EA7EB9ADAAB059B734A599A16EF28E6A904F9AFF8DA6C66A6E4CFDD18A5E368B72D1BEC674DE0DD8187EA9DCAFB657697982C2E0ABE9D4FFD4B3BC841F117D646735CCB8FF322FFABED4A2539FEB646BCF3BB446D08E7366E6D13F62292C7860A94CE39734DCF8A90684BAAB5276793D3705C3CE3F28F3C2358F1C765BDCD9926EAD0E34B2B5F39FBC32F40F7E498A213B7AB5C50D6D767B4E0C1E211BF00478D892005887E3ECD5751DDD38A8B873C2777B8E7B1CCC41BAEA930508CF9CA788E57538970BB6FBF8A3AE610C7812D577F4B03D10BEDA954EED23895077CD51C76CA6CBADBA3722EB81BA89BEB0E7B8C14301751F2736153469FFDB63C0B0E1DDE6614F80A7536BF03FDB81BF17826BFF75A825B346C3BEAA3656FA64B777684C2DC337875A222F745575707EBCB8673FABDD3BBB7F507446707F8174698DB69B2ACD265D259BA2094390457BCFE62AC44356DD68429DDE6064530D67FBF46FDE5D58DFF2CB15C18127AF01F99ABB7A558E4140DDB3EBA23A35BA8A968EE6814BB361DB818591A72F6596D6655734B0192283ABB4A91DEC093955F8EFB80C10149127E495BA58D888E7E8A56AD35EAC76EA80615E91FB81D36CD59D6F463E3731D53EE0C2C870EF4922DD32A82B6ED18D712F9F13556FE3D35EDEAECB6FD0FEDCEC30ECF3E426363784BD27DB9CD371B74FFF160420166C2FB713ADB78B10F897BD8DFB451B113CB4AD9AB9D9FC5D6CFD7F0E3733B7643A83D1667DBDEF990ED86D5D5A0340B824B9197F822BEA3FC637D8ACAD6063515A43DF1D9E15923C0B1B3510EA460DEA9627667243978EC1EDA2E5D21F871C84853469795048D6C56B924A615DEB67914784AF88FC8F7E4948F7398F68CF4367D28AAA4E5734C4E5167F1C92FA51F0016B228429F62CBF4EA0BA8DEB5B3DBB2EB2C54C5044AE720A293433E9E1152126CF2FCBFCF0E1C1E541D6C48F48EE7108F8262E636F5EA9DB01CEB1E78B1B76B148A8892411EA483765A114A1EE0AC58DFBF14397EB0EE688EDBCB5074EBFBC61173780109D769549CCF28E45FC608C6051BDB32D61F2AAD08A16CE618191DF7F40AB37B4766BD0D5B2B4F5C563ABC3606089EBD6BEF365B03BD96740DAD6B97F6B9E9AB64E668115D5736320E7AA9B90FAF31E31EF6E4B7C777BE29015145DB90D87CE8CB7F77F8ADF12017A8EB347B58896AD3D0819A97E3E492442DD2D7ECB08755726184668BB1F59152A393EDB3BEE6FE1879BBB7A1E7209BEFA5410DBAE5C6E29DEA586569553301B036CECECFDFDCE7DDCD0A27D808A9FF431CECE1FDCBDD731A06EA0ABE5C6AEDEB176EA098E019345F97CC22D826D6E0E3DED1E19C6BBF86202D8E66CDEB32A296BC2C0892411A2308328E542F98B3CE6353AFDE455DCFA7161B5DFE79147380BD82944B2691F8944A82311EA4628EACAB96D6B60FDA80587CEB078424E5D0CCCBC8056FEE8A56A4B6FBFAE40F73906C00E7BDC8DB3939ABA7A9E5C1B01AA01B1FF8ACD6023904C309E5EF2DA05E349A3EF67C943CB833E8B3C52D7DECD7C579635B7FF6A65085B0C072D89383CD62150679E6CB230E4E024339E71691BCDEBE10E5CA828A81DB05A00D70853B2A6ADABBCB9A3B8B1ED88C8E9F3CB5EB18D1DDC7A1DE6185A2CB6ABD19731478D46DAC49544A8934AF0B9D5D26B68E81AAC47D8A935B60E5C3CA01139ECAA1F78AEE46BDDC0AFE2450888B3536371A2785DE7A0D18A7ED51A8CB5A2AF1D5AA3D87958538F413C025537686E259749A8BBD1A81BC76F58C32C18A63FF8ED3F5652AB3E5960BB3CECDA3AE7EE8185B49283D3FEF3E5B62E114FAD8DB850ABB04C8D5BC66EC72DD98ECEB9C48E2C0E3B34C121005C296D6E57D9F973969F63D09F034C0B129C133311B8845FBA50D2D83EC5350C16A410DB77BB8F7F18C4BDF933188D6CF3F18E5EEDB1929A45A1A99C71E6128E981F5B1D36D373D7787B350B2968924BD0588780AF77654872B8F6C0E9B19CF519A021C38EF43D465D7C51F79264EE117E425D2DECF1A637186DDCCA8CFC4E3A4F07D4BC105CDB65C603C2CC0CA9FDB97705DBFBE6BB232D4FAA6BA6F9D7FC2E96DB37A0A15B6FB3AEFA80D9E9898D57F3D294267ECF1D6DBB869B09393BBC8E2D2DE8D619FECBBDFCEF29CDC24A83077CABEEDB629AABF26952D3F3C1B58FECACFE4D641D5835656735FE1ED85AC5B60DB271AF5C92D434C6BDBCB1876BDD6CD6D7FDE34033D2E25A068DE1BF3DCAFF10DFC036464F28EEBE6F4BD56BE17577797331BF17D7302BAC6EA26FD51C7EC1DF1D9EE57FDED3F00B9FCA287E122672FE7932B7791E6B336D3C1B3F4B6E625BDC65D76AEEF6A9FC28A1D1662D37B1E5C5905A9625F10A74F1067E84BA6BAFD2A676E6BCBFB2A57F21DD5CDF04F621A7A2616F5EE9354FF4606185CA39D42DE5B4E2AFE9C5D5B62B226679C7AAECFC984109F2A99687B1199B7E27CEBFBB3DD1FB482E43B0566F60CBE940A9991B764D5915BA409D2C2C8983E188FF3019994FE767D7455DAC6F85FDA7720AC659DB32F2C4CB0743B32E826AF51D3DF22C55B57622A1696BC205F442139DB937761F04A4505B49FA9EA32E38BF73BA689DF527FB9AB47A23C073B054E169E240286C9ABADEB4330E7380326E53D5BACC7686BAE216DD387E96FFC566DD0B2237606C53EF9A4EFD42E639C59B7BD8DD4FB2D34DA8FB8179E36FF14E783F59CF71A5A5C7F01B1E54C0CFE41D559B733AF6F113357DB2DBEDD25A7EB6A1A28ADFD9FCD7E175B02D4159366AC31CA630FEF118AB47BF99D11136E84FD797B76B0C7F4DE0F293D7A09DB0A5CAEE480BBBF6AD391D1B4EB5AB3656F6F06B91A7FA550BB6C3E6D31D09C5A6F201C5DFDDD540A8BB8E628BD224FBD7BCB179F78E63E7F1C121E144DBB5DE89BB4BA38321B53249793F04CFD41C955308734236DB278ED9586FFBEE5D147A6858A9446417AD4931ED840E90AB4F1424E697BEB165CFFD4E81A1590AD3492E37B5BFB975AF6A79284028F9E9627DCB936B23D8F6E5E2E9A35BD3F398476C6A2B49DF67D4FDDCBB72F28E0173EED9BA370163D2E4D655833A6915FCFA6EF3DAED9F99376275CF6C63A83B5EA5713D6E02D54FD7F75B3F82E9F66A782DCECA6BE89F312EA0EE8702EA369BDEF783586C63BCF88B5DD1E6957020102C4E36EA78A65E8BABF8815B19730606F281523F30EFE9038B90275C83D9DC6C31F2EBD94D64752BDB76A6637F0997ED2EADF1A79E1577FB5414F34BD42F346991CF15C75A9137FFB39DC898803AC18C7B7F7763405E27DB069D50775DD4D6AD319974AD26E346D8986D5552D60BEB638232AFFD24C3E3976B9128ECC5F335CDB5ED5D7AD1E6387F5227C3DE3A515A5BD1D2915FD30C6BEC054FCED9E6587BF599CAA1EB4149639B6F7ADEEB9B77034B67CD6BC063738B6DF91DC67FBD295EE5183CC131E0E3E08317EB5BC5276614D708362EAE7AD28A60E6C685E9425D4B5836B7D6E215EFB85FAE08D18A5E1FB23776C2BC1812E97B88BA7F1C689EB0A5D2F78CA90D5975BCED528B4E009EC54479334ED81F8E8DEC8951975BAF115C933CB4AD4A80A8966F30609CB1357682DF4B65D4997D864DD85CC9FC8DD576EAFF9EC25963880700FB34A9A9A8996BF40E96F5C0AE427ED8F23BE7F4D693D5BD63CCF13CE45B35C006F56AE1D6326D342577DBBAF2B4F21E8F4CAED1C0E9777856BC1A5E97C96F278BABF89C4FAEA25D7FA2AA5780A5DFD9CE7F1D6A119807331449FFC0CDE4A89350778D35C333062DF544E7FE1566FBCE978EB757AFD87FEAFA250A86716FB91C836D5744D8AE88B45D19853F956390AD9D1F10A5331802332FFC23EA2842866717A9F8E56BB0F3CE559BD005102E08485EBEEF946B72D6B7BB8F2F0A4D7DC737E1D97551AAE561F73A06781DCEAD6AEBDF6E9177CE121271BA4860E1A6B4732AFB0000F56DDF04614209B284D39F708BF87340CA1FFD9390B7F0EC01EB0837A69D7DD4357471F8A1C6CE0103324E0927698D1D89063019AB98AB2D015A5F1E6C99E85BC500234C34614E68357A2383109AFE6A7EC050A08857563B73E8A533988805DBEEBB231C159E5057173699FAE2E1055D61E7B927FDDE2DFDF3C8C66FAE3483B3BCB29D7B65769BF96598E0BB12F961E3902B8FB5FEE7704BA7D6700F7FD68B21B5C809D2FAF260B3909FF19B2A138BBB057BEEFFAC2B870908B30FD624F7926F1D97F4D18ADE29FC42729B0D8D2CB7DE596DC52D3AB601C25301351DE6D9316F45D72FDEDF2C26BD58ECE5255975D7456C497572C180CED7E98AFA6FE38FC15EC187E14608036871D88091C6B61E4D458BD49D26229FE5150B0B12BFB674F73675F5D67574AF4F3DE37E3027E64CF1FBFE493CE72E9E2AAB0381F446E36CEFB8FF1545ABD51B00BC7FC565C04453398772FB0DD9F97F1028F59909923DE412A47208BCDF29F019F7C80F0353F26B9AD84FA9172B804F9CC5C669FBF82D5897441C861DF9CF5DE96C5F75B15ABB3555AD26827E117D34EE6C89A80C39D4251594538B49FA1EA22EA5B4C73ECD34460266D81F6D8D2EEC9F4A1D53D835D6A7C2765365B57912E3EEA2AEB11B2BC76FEAF775021CE2089B75F956741D2C2DFCC152ECE3DED269F113DBAF079FD94FF863AFD39E52D70060F1455C729D5A23FB49F0A20243F017E6CFCF07D5D68866511E2AEF45B46C3C93EBB0A6B7FCC2A702D8635F7F1FC7CD34113CAD3CEE5F835F3BB5265C3DE85B354E9479C433D5ECF139B280BBB43951A666F3BB23AD8867D91153B430F518C2FBF8178DB01A2525B9F4C030FCC813EA8621CFD433CC6F88700426D1A9B27A614ECA70675E4E5D1D06EABCEC152B3E387955088CA4C7D7848B7D716582618EC1D9E5F545F5ADF3FDF63FB83C68A27320576F96F9B1445FF18E83FDC4F9FD7209873D77B9B10D76D8F68C7C79A2BD3A7D755B57CA85F277B625828BD3D6843357964C5D1A2D209A5BD9F8EFB8632AC740D88E935C825900BDC1E8BC2F13209CBF93DBA5E1559FF8E397077BE00BEB5AC04B5B97F093A5B562FF993379CB98366E257D3F5127D18F3DA8CF77436E19A1CE7A3DB49C9B40289E5B0F6C7CB7FB38A0B2E358FE7063FB26EED87D8E012F6ED8F565CC51E1605D3BE77CB9A6AD0B5845B4AA657E2F9997343CE916212C6F80F9C53647650BE6C6DAFB17D6735D215875B62E11B1FCAAF383B0C3F81578EDBD16A7C9E80C06001246A1CA2100488395D6D839C0CD66A746F79FDD605ED0BD8E018575FC1E8F9D3D2884D736C6B3A40711AC4F98A1E05CC0405FD80D9DDD34864922D4910875231175067E5E221A689DCCC1BFC168DC71FC7C5357AF35F1FC2530E51E07F57D4EDC96E56E29A7E76D4F14F6B41380BA3A398B45ABD1E95FE21D48EE3A537CBAA21EF03B5C540592DDEF1438CECE1FB0DC78E4ECEAE46CD84C80EEC32B383B09910BBECA60873DE116C1B6D159BE2F5367505E8F69341A01D72D47F3C6DAA955767EE3EDD5535DC3F69F2F175FE0D7BB3210CF9BFCAEE2006DE4E94B6F59BDC3F863305E45EECD3836DB71935356259DA2279044A82311EA4610EAFE1D7F8CB345444E4016A8931F75E51A71EBE7A43CED1E094B2B20B360D99E13204A78F6C5FC9A26585489F965C08981F723027421CE4D69FD9B77FB1D3F3FD63EA08F5FD2305936EE07EBAA47AB1B6B1E56FDCDA6DD737D13003FF142F6B5074EDBDA7143AF3CADFD1786A4261794EBB830FD81BC0EE73263ABFFCFCEFF1E7B75625EA9D14C44E419C9F55ABDF75EFCD912403DA3A446727C4904E7276CDA9A707A024984BAE12AB3BA3738DFF422DC3BBB5DA3372614F7ACCB344D817E3AA0A6536B0CC9EF8C30AF107854B49940699BEEDE2D95F87B606B55D2E56E8FCC76F675A26F157371D2AD330AB331F1A0AB3655DA78B7567698DEDB255DEEB14F1BB0705BD80C6FE7D90E9B2DBDE2B56E5E596D6C77BAF777370AA9F4F15BBFAAF8B78F6CEA26A16E64A18EA3DA32BF7F9AF75DEBD6EA7EBF731FFBFC4968EAA58656AB4C4363DFE36BC271A29831419985B0BA548E41CC27322C3618589213F19347EA9982DA6666D8BDE0B9EB919521D3D747C398138F04E656352200F8C4FB25091CEB18F4B7F04330073B7AB52CC5B61E8DE7A133D33DA21F5C1EA4E29D527E1E75848D85421925B538F101E7400480E1F565CC519C1B78F2C28CF5D1300AD9FBB68F820F80CD81C3D99F0F99CCA96C7CD92BB6A8DEF43476F6EA680C9344A8BB32A595F76CE2F78ABBD0A4B5712BEBD51B230ABAECCC535D7EE153D1AE316EC969DF9E6B9ADDF693F50AAF036D3C6AB5A2EE305B0FB7E752B7EDA64A213CE0C4FADF36EEDCBC92293BAB9F0FAE5D75BC7F59D1823D0D6CF143738FE197DB39A0CE0AAB43247DFC54CC1519D2569141D466B3D9B78BF78DDBD88B5067ADF83137FF6EB3FFE2E286B619EB631824ECF69C10BBA31C521B8F9C5539045DA81DFA3657B79AA2FDFDCEFD6C46E5FBFE496345F3627A75BACD47CFB9F2039E6C01C0AF37C6B39FA2722ECDDD9A00B2F2C62837F1F249B7C89DC7CFF768FB2756A55C288769A5720E11BC5C72DB29F004DA9E918F0FF377EE17A0BCF34401A3DDC9D2DAF1F6FE53578733D72A830B689CBC3214C668656BA708F9468EEB76FE01D7614B5B12E97B823A9BB515201643DD723357EE36A32E28CFF4C4FDD4538ABACBADBA895BFB971C1C2CEDD990D5CEFAE23C1A4DCB0C8435763F5D5FDEA535028D27AB3502EA80B457C2EA1823611DBA9D349B95813588FFB9A0DA8CAA01EF74605C96B7E9C4A8BBFD064EC921D4592560835FD916A43737FC68AC7D8E9C7D7C4D040EC2D4136F59678D347AFD936B2355CB43612D9DA96CA86CE904365ABA07CC1F115B4E0FB9042FE73D7E71F3561C0203330B5BBAFBABD17D4E01302B6D5DC29F5F1F2349886D2900E0FD2B36E3EBD8F4C9AB42C73A045489A8C3D128E820E2649F8F95D48076EC7343670F8CBF8796070B1B14883567CB1E90F5CF01C9435AB4B9950D0B430EFE3D2A0DC6ABB0D9D06B3E71C8D86F36EFA6769344A81B2EEAB6E674FCD4B3825B6CE7D9C850F74270EDB2232DF8FB31E7738B43DD6FA3EAD8116159B7A09F7B0FD83155B264AD1F7566CF2977789A160F9CACEE65A8EBD519EFF4AA482CE9F9C1DAB2BD97BA971E6866B064B6A04B46AB6A63E5BE92EE31EEE56C1520E7DBCCDDB4E4A0A45567B3AE9AFBDBD078E36E19A1CE1ACDF54D40BBFCA45B84E0951F77AEDABCF27AD3D173305CC4D692A2C4DE2399E2CF96BCB631FE5EC7006E79B89D7F8DC834FC34FCD072DED717D4D2D50B2832772448F7E11521DCE4CCE5E120CDAB3E71DCA26CFB00B63E41127F76793D08FD45B46986675B0FC7E3173C631E926DB23ADE5E7DA888AB88E1D91725FBEC708BCD1D831A066E0FC45454DF8A9281BD8800303ACF562B575C5CA030234640DD810B1528523695864422D40D0B75CF05D6EC2E622BB51B873B80A9377234EA1FDAB9DCB360778332EACC9E4A0427CB02EACE3668932FF71C28ED05EA0E94F6C41575BF19CD2D8F2B6ED57D75B065595ACBA132AE2FEE71AA9D79FFFAF7A16666D2F5B77E455D4B539A0875230B75D3F861C0C8D326CFC59D1ADD14D7D0A9ABC34E5734C48A16470BAA378341ECC55FE512AEE8AFF9D3B0437FE4D780339DB85C0BEBE7ED6D09C2918F830F3EE166DAECF469F748600986D49E7397EDF79E78775B02F7D6CD29447199DA63ABC3986317188E1C1D9D43B7A69B16452417947F147C20ABBC4E405D8E79FD7B9A68531EDE00358C5DE68F73C576A482ED68AFBE58AF3C242B8C8E028DC2B60F28438ED00E813D5A1D359D2442DDB050F756B4D9E1D6862686BA6566D4DDE5CD50D721A0EEC70351F76AF880461FB0143ED775E91FD9516DE356F62BDE59A53AAFF336F732A4F56228778A5D5ACBFD5BABEEF2AE7C27A6DF5786E0A8EC076E65DCBE04EE556CCB1E186D9FEC6BB4595B6E0E269ED1DD77DF96AA5F0CB42C0975230275DC8B3A3BFF66F37202DF746EDA08DB104771CEFD2BDE718BC30E0151FF30EF455EDCC0ADE966B3453E0A3EE8917A66DDC11C10EEF9F5D1C7CC13142B5B3ADE8691E41038637DB4D81684CDC4BC96BCB1790F7EAD6997BE17ECD6EA1477214772CC81CBD2E8345878F81077B6E48F7E492AC7408619B6A1C157BBD2014B76CAC5FA56188BFBF2078C78C0F6FA84DBBEC75FBC127CED81D3FF1B96FAD2865850D07665A4FDDE938314E06FB7EC45F879DB13FBBB960623E7B7C54E1D73A6989A4E12A1CE7A89377C640F3E8E184520E9E3DD59488E484EB1F415DFF0271CE43E8BDEDAB05FC567089F8D5CC8FE448D7D03BE4AF260B8E17B5612EA865666591D1B211446F6009EBF851F7E7DD36E10E63DF33C4CB1C0277EEFD680251187BF893B86234905E5B62BA3FAF80D77B6A4E7791ECADD7BEEB230625958D7F2E656EED597CACE7F8A6BA884B26C42CA5F830E00967935164DFEACF2FA4D47CF095FD5270A003036F13238B310B05139703BC9219577B727FE3DEA087E652FED90D5629E79EBB975EB21301317871F12C7FCA45B04AEF4773B126DEDFC058315D89BBF733FB7355D6CC69065088BF05C75D3FEF365C7440E5670A5B0953F176D7D402211EA46A60C1C14ADC0308FB111B8F932A16E686D389CCB5963CB4325FCFB28F800ECB60ED98414EE5D1AE767925B8EAD5AE6F7BB1D1C0B8F165733D449B462FFA95FAE0899E412BC27EFF2DFA3D2105E3CE6F9D8EA30F636CB31E1248CB0ADE9794A5D3C232CCBD9DEB1AFF9C4E79A773340F8098E9C250AAB0B39E132E31C0A2312D966EF14B71DCB07D5AA79D4FD7EE77EEE7DDB72EE0F48DE9476F61DD1F02934796528CBD504C700A057EC486CCFB9CB386BC3A1DCC1CBF04061C5AF37C6AFD83F601F226E7BD8657EC294511289503762D5AB371A872218CCB84EADB1576F1C89B78C5037A4604EA1459EB3798F60A71F29AA1256682BDEFF2F63D2EFE5A8E03FDD235A58700D730AD61B3371DC0FE4ACD8776AC7B1FCE2C636E6B8EB625D8BED8A48F13E002F7BED621323834F1572B8E217B0039F8C9D62ED3E7739AFBA8979C56462DB857384760EFDB33A19A095ECFD1D9B5B0C3B55788B86741BCC49CFF48C916C2CFE8C7B24FBD0ADE5D6C3AD49390D36B36BE9E3F7185239878837F1B1523043796798A1D474920875B782E567ECD31946EA2D23D40DA9D9DEDCB478CF4367040B7DE7F1F3AF6D8C9FB22A54EC3C452C184CA0D4914B55C917FA5FC6FE35F800C2EB2C8C52C360123BFB7F771BF7D24EAB37649573C3A730C86ADABA9ABA7A56EECFE2B7EFF1AF6C19B060A047A7B77589C8A93059754FBB47C2CEAB6EED626FD7405609EAD82B405C88241BDCDE084EC1654DFD938FDD52B2C518039E371F3D07E67D1A7EE805F3DA86BF04A5A8EC0386DB97AB68E9E0E0ED18446D04895037DA65EC1B89E39684BA61E851FE95527AF1805D83FFC5BFA0325830E9F506237BAFEB73E4EC9FFC933A35A641CE577DE254CBFCBE12F97766FAE7AE74F1563E7F0E481EEB10D8ADD52312706EA3C849984032959DFF432EC17345FE335FDC10FB243F51D337831B9C2C6BEEC7154C4F8F8339E0CADBBEFD2393935604C3F41485E99BEFB71FD1CEF2DA053B92CDC1D1E90D7EC70BC449839DF73B05B238F1F99155A16CD5DD3D0EEA7DE7CB8655B0B06E6159027535C359804F2211EA4626EA46F42D23D40D29361278D96CE81C29AA724DCE9AE9B9AB4F3679C992DC0E9C86D1B32639BB8FDF28957BE3B5CC1F50395CC44DEB3F74B14A2572918560631D02D872F284BCCB13781A7D1098826C4C72093E71B9168C31180CDC0640BC6FADAF63D339E73D3C74919F3F07A48CB5530759E18504700566C443A6D9E5F5BF5A19823805220ABC3488066A97ED3E2EF693F24D1C477D8FD41C70CB92476945F5EAF4DC3B4287C0CCB23A6A2948843A12A1EE66A28E8D46D68AA6F89734B5A94F162C0A4D1D7CF620E7FBB1A2E14FEA646E2B54FB00C1C171556B27D8F6DB2DDCCB3F448BE67EF3D17325FC20614B8F06F8610B03A06FE3337EE912DCA3D5459FE196F43577F7B22D75C6F28E9B273A735325273870CB06B865738EC1B0DBEE730CF04DCF9BE0C0BDDB63F32A25122CD1DCAA46E44A582C68E446143B6DEDFC7FB92258720AF2C627619ACF09FEFD63A061CA1CA4E1C4E73DA28755B6B62EE1C8735C6E093D8A24421D895077D350D706F67014096A16EDD1D3DAADA96EEBD4589E7B5BDBDECD39ABB40F786D637C7A31B76CEE252FCEB7A4566F803D044ABDBE299E1961631D83A6BA86098BF3E6FAEEFDF5C67E5F59753C5F419A2F638EDA2E0F1BCBFB717ED435EC3FBB8F8B4DAEACF27AAFC3B9DFC41DFB2060C0C6E29F861F96E76D6F5EA9E0E80B66E27DE6314C5B970844FE9C47F4A58656205C58425758D78274572767DDEF14F8ED6E6EE1448F4E3F6DB5C9330BA2128FE24E740E844D79ACA4C64AA7A0E3EDFDF96D1CCED1A34822D4910875370D759C41E3C8B923111615A45C287F726DE46F36EDBED731A053E61CB2A5BB7761C841959DBFA3D9AD1704A30DBC64D31D2738068055ECF8CB3CFFC6DBABFF666612D23A5365725E70B6BAE9B388C31C8178A3F0D97551FF08DE77E2A469A576666626B8F29579A705A69DC7CF23A157D60627F09AE7197AFC7C91FCA29E5A1BE9907062D3D1737F5227C15C63E4BB50DBFC82670C8CC8475685B215E57AA3D1EBF0199573089B9039CECE7FBB7907DAB1F6FE7DDCD06BA5EDCAC8F10E6AF19C97C56187B8C1553BB535C5FB183F0CBB9A1FDA25910875A351FC9273D3C810A16EB4A28E73A9E510A872EE777129CCBA6CEDEE95984D4199852A97F07F0D5C526D341A1103F8D7C7AD60DB37D6219059411E07CFF02FDB38B3C623F50C1F921BD02BAA3739F8E102F3BBAAAE4F3DC31C162C5AB4E88E3BEED0F1FAF9BC4FFFF8E952F5C902C96E79939DD593264DFA9CD703AFBEEBA90E1D58294DB5B147AB6BEFD19CE5C630D571037D9B459EBE646BE7FF6DFC315CF5AF56861C2EAA82F5C9ADCF33BF50AC68E900509951E89672FA15EFD8D7077A6DF63B5100645A53BC6CE359C78493D45E900875A354FAE1AC19BF593824D4598B3A6140EFB1D5E1CC63C8C1C28A95495942B0696BC2DFDD9E289FA8129D530C23A9B9ABB7B4A91D46DB71DE5DC8B9EA26B6A7F9EFB627E28360D54D5E19B228345538F7F9F5310853629EEB0FD4CD9F3F3F8697ED773BF015076DED06ECFAB6252CFA9EFFF82E08486EEDD17CF8E187F7F1E697A0C2BA960385031CE23DE01C78BF53A0B1DF2AD53CE31E050BF2A3E003F1674BCA9BDB6172016C8FAD09EFE661DFD2D58B5FD97CD13736EF797B5B426367CF587E9B59CE2AE5FC5073EEBE60F05953BC381D17C8C663492442DD28B5EA46C12D23D40DAE93A5B50C75C2185DAF4EFFEB8DF130B63E084811829DAD6E7C6879102CB6E73DA2714A1FBF408DFDF4A86BD8FBBC376734EBCF9B9D5B820DDC4671FCCE731F87A48E7508E0BC581A8D672A1B91DCB4D5E173B6EC61161830296C4400B6858787BFFFFEFB0B162C786A85FFC7FFBBB88F77CE22CE706C6C2C0214D4364FF7889EF1B9C38BAE6AF18A02C835897BEB86FC333BF5CDAD7BC7DA07284E25E55CB438064DF7880ACF368D82E2A218D2987F6A6EB5809DBF6F7A9E2B70E81C0A8A6795717B29AC4ACE82C948A82311EA4864D58D0ED49DAEA867A8936C6DA3A8DFEFDC779F13B792DAE7C859E6FAB2AEA3DBD6251C0CE8D4681109F33032637DCC8643671687A73E68665871635B627E29FBDCA9D1ED3D577A8FF90558F2853218497BCE5D66A803C9C039C0CC2D206AC1A79F97357708AE4CC4A8338164D1E70F3AFA1F2EAADC645E99F79740931B14CF43B95FC61C2D6A684D2A28079CE2CF5E56BCA2A7D6460284F21D7C9E5917B5837F6F1779BA48B59C7BF5E89498890FAF6FDE3D81DB9328684D8A55AFDFD8F27C421D89504722D4DD4CD4014EDCB414E71061D6E2EF77EE7F7E3DB7E59B6A99DFB68C7C71E0098EEA4B0D6D19253530DAD894FD8385156C7B9D7507731E59C5BD363B54541972AA9037ECFAD7863777F5FA9F281016A52D8938A2720A6643A65A830186DD2BDE7102EA8A78E1C3B35FBAAE3D70FAB5813E24C5A87BFA8B55C0CFCB5EB1B1B9C56FFB266CCFC887C579BF73E0DFA38E781E3A1370F2C277BB8F77F46A916D105A6ECE3EB69ADBA07CF73913053F094DFD5B8469A015A6E4EB9B4CEFE7500EB9FC541A007B7D6A0EAED47A27612FF2EFEA9C12E95D1D89504722D4DD3CD455B576F1333083DBCC2372A54DEDF73B05B2713CB1CE5537010CCBF61CE78DA4123066FFF9B245A1A9CEFC54CCE7D69986013F356F1A3076D980776C5356718BA93947594EC12AFB00F1D6DEDC18231F98A14E40DAF8EF764C5B13316F7BE2615E72D4DDF7EDE6B0B03018916F6F4BF8973A2E2E899B1AD3A3D555B7768AE74CCEF28A1DCB0FA58A15915D64BB3C0C269AC3DE13F8FAEEF6049543C0587B7FC7849300F3FBFE49C29AC2577DE2FC4E145C59F14E72E1D6080A4ED76E809C9C9C6C48B7A29C9D9D09752442DD15AA576F60EBEA1A445E45FAF8ED461F5C1E744AE4E6E3E3E0839C9BABE5A16C9F1A5881E3ECFD6D7984D4B475D9AE8C6AEAEC39595AC79079B8A80ABF8A23549F2800CF7A757AF902066E0E8BBD3AF274910475AF2D7550D9F983A6CF7CB1F29525DFB2E3DF6E0F9FF4CFF540D4E2B0430F7DE33DD33580599088FCFE6FB7B2AD0F18E78429FEF9D5CD88274E698FD9F1F6EAEDC7F2677983856A5C05B084B38E95D414D5B70ADB2CBCBB3D11C6E595152F3A078819F6253D8A24B2EA4884BA9B863AAE39E6BC900454B69ADC2B7B1FC9651EB99E700B7716CD92371A39BF97E2F5D4F878829FA2E29B91FFEC3A6E079F6A73247F094CB195195260E774256F23DD5A9DCA3954ECBE32ABBC1EC6DC6B1BE391B14757876D4C3B87FCFC499DFC47FFFD979BDA9F718FD2EA0D2CFE090EEA96EEDE395BF600A238A2D57390FBAB79E382F97EFB04A43DE02C75BBCC1615006FE31DD4D56D5D35ED5D2A7EB627DBA26F6FDE651D3FC4FACEB644CFA136F15114CA4AB53C1C97305CE79924D2F70A75B1673BD9BCB17DE7BB1A3AF596C2B00F31B99DC2F60238F8EDEE46BF13ED1DBDDCA1F0D31DC21F0B53D9AA5B93D2EC9ADC5CD6DCDFC33E5ADC230926449E76A99B1D4136D61F6A714A6CBA50A79564400823C9D289D29EEA365D6B8F615D6A4B485607A16EC4A1EE7EA74080443CA228C8EB702E7B8B36B8A67B4489F778EBE39D23832ED56D037627D01B8DDC344ECEE5A69A6D6B20FCF4DB2D7B80043124100C61CE5537FE499D54DBDEF5C6E6DDADDD1AF65ED07605E7F419865D53572FA8F6756CC61FFC92F8A14BFD2CAFD8A5D169FF883E0A7B14CF8EDFF1F3CC97264C4CD5C00155B940CAB0EC222093AD2817366D78D92B36FEEC9578F6EAE8D532A76BC25E422412A14EAE673D2AB47A2380E479B8759030F8BF27AFF33EE7D24E0D07C6B5075BC0B9825A0D90C380F4D89AF2D48BDDF87B7B7B0DC2003F2F7A55E2EBE1A2EE59DE955AF33E738BC3EB37A7B709C184C8B9B1AB903A76E21B5BAAF7E6776557F4BEE55BCDE82B0923CFD23F631B10E7DFA31BB61F6BFB2CB21EC70975230B75CFAD8B020CA272FADD8E14D6B7AC4CCA7A6A6DA4B00C601055B674DAAE889438CA02EA607EC1E492873F505801D42D8D4AEBD1EA9ABB7AFDF87D768E71535D0260488943469E2E5A73201B51756AB4535DC3408E49FCC26D9503972B7CBE50DBF2B788C3E2C506F51DDDC836A2E54CD5657EAF6FDE5DC2BBB1CEAF6EC2574BC4CAAD6C186BAF764AC8E47B7CD58265C93E4C72093A6DDE3C68584266B8D9AD8EC15ABD815A4F12A16E108C015A767B9B060FD3AD35024EF3FD6B19691E712D97AC2192D008840372D81110081C125077B2AC570C2D0923930ABAFEA8AE85F1873F008C414B12469E25844CBED03D795519DF51EEFE7257C30DBD6583A24EA7EBAB6BD1675DE8CABE64385731A2D7095E47D4CDDB9E080CFC3D2A4DB0A8DC0F9EBE58CF2D1B704DCE360CB535EF77BB8FBF26DB689BBDA83B72A96AA6678C784DDBD1E2AA475DC3F84DCFC3D8E0E167FCEC8F4E0D3786B960A08B4B23B7887BF7C4E581EF6E4FFC2434F5CF01C95FC61C05DBECF79EF84FFCB1D529D9AE29D9C2D8207072B1BEF583C0E489CE41BFDB9E78B9493A4912694D1EB84B6A6B8F0688052961200A7B18096B1B72CD0ECC90D592E1EFCBDAC7CFD864EBE8A9E92411EA06C7986F46DBAF3755591ABD6461D6A434EF3BDF25F089416510D48979F3755C2300C63E2F0AAB67E39962D4B1F1CCD73757E108CCC43F05D40A839C979B74F230F22C0175380B00C64F20A240D99B833AA3313D57E3A06E7CDBBDF1DEAF2E6F48D0B9EE6B4B3ADDBAEF6CFBAC0DD6AC2CBB1551F78FE83434C782E34AB160060106839CDBD2DD6BBB32EAD0C52A2957CCED7B6973FBE36BC2E3724BC4EEA4A18C929A399BF7880715E76CD9C33625176BCAAAD0A94A1913D4A3D5C3FCFA83DF7E58901F061DB82CDA7355A2A7DD23C7995F1FC294B47589503987FC6A65C8B7F1C784305D1A9D846A3028D98C9B2B28D8F0EC2294C333EE51D47492087583A34EABE78C30D85296C23CBCB2ECCF81B5623E018D258DA61769BD3A8571C84B0DDADF6E357561DFDD51935F639A640E56B1C14CC950A470042161A8F59B4406058ECAB3C4063067795776F41A42B23A5CF6DFD0D71636AB38D49D2BEBF86760DF97DB7B5EF1AE4F3BD3AA37483D5D14976B9EF1E91CD175EFFA451D7DA6987B79E61CAA371B705BD2F37EB369F7048780E7D645ED1F744AC5DBBE09B3BC4D732685B77DEB52732493FB7506C3D1E2EA6273807FC71DE3D7D2C58A7B1709F9A5631D020E16565893679C9872A1E2ADAD7B1F5C1EF445CCD1B2A6A15F029FADE27C95B1557446A3F101E7C027D7461CBF3C00E4620731265437B503755DB259A3D66861482AE71A6DC73E6A3A4984BA2151D7C7396A68B2F4BAEE419732665D09A4C9AEE805C960B7019017EBB58A34026FF02B8CADEFF6340A3FAD4C6A9604939FB8E968EBEF76D620F2B7B79B18290F23C912431D2C429CF8966F7565ABEEC6949E56DFB7757FCB0F3FA9F93A54B723A97AB071A6DA0E9B3F5E1CE975EFFA45DDDAA3E15E2939040A9B1B5C6A68D39A977B0FE2EC91AD1FD0E8F555AD9D1F06A5088E2EEF730A1872D46E8223B70190BF68BD1A70A25A1EF689C843A622E1C2B22EBEEA13F7F08A10977DA7AA5A87D13D31F06EA9850DE7F406E377BB8F0378B62B238541DA4345D28BAD6EEBB25D1129DEA9D57A71EB08EDFC5D06BAAB26910875D750DD5AE3E03E2A01516142CAB0846811F915B1C77863DC66C6A7D5BDE7AD77DBD3C6DFB2A1A7A5D8CC1B05AB9E6CAE6BECFCBEE1FD3B9D766B75ADFC2EE185752DBF96BD87634A2E28573906CDDFB97FAEEF5E6E035287C0B3FCCBADDAF62EA0689657AC1012C6E2A6B473F1674BCA9A3BC033F02934EBE26C9F38187682432F26A4A57254D83140AB336C397AEEF9F5D1535CC3F0A1B6BDFBCA2E1346EA3D0367CAFCD13F69C7B1F3ECB3DF89F3FDDD1FD17C54D89AC27B3BEBC56D41CEAFE2B8B2292D2412A18EA4A8F43CEDE73BFBEC223B3B7BFB893AF8B4945EADF1A71F545EAAED1E0575EFBAC63ED393DB61E08BE8A346DEBED1EA0DBFD9B4FB7DFFA4C7F81D4A1527A6C098FB30F000ACABAF63D3D7A79E11462C8193B61E4DCC99E20CF34B3E4432C92518B611F7B732CA7655F40447B5736266B5CC260B3E55084B88ADD5EBE3FD9EAC49C97EC22DE2D975517BF34ABBB5DCF2F3A7DD233F084C714A3C29EC3A644911A78B04A75F4C39950DC8A7789E27085DD1621AFC149B983337EC9AEB9B804C2E08481E6FEFFFF89AF0E1166973572FDB4B9D9E4C12A18E74F5D2E8FB92F3F4BFDFDC77BA5461346B10D49DBCA89FBEA665646FB777A350F76DFCB1B1CBFC81197161382566DEEB1830CEDE3FC1ECA9D992BE884EFB28985B8BA6D119FE6C7EDDF56BC187A443A0CB3E6E10AFA5BB177FF8905450B6F3F879A5B108BDCA39F493D0D4657B8EFF6A65C8F31ED1B01DC18CA6CE1EE0ED83C064D7E42C83D10846C69FBD0C9BD2FD608E3C92536575DB8FE5C35EAC6CE9BCD4D0B6353D6FF3D173E6BA6280A5F5C6E63DEC2B906CEBBA8B8D5EC2DC64446FE74771910DCE898C53083EA013F0D5AEF4D6EEDE611529208D139F1EE8AB9A4422D48D6A75688C3DFA1BCA0CB44B31275AD7EFEEF33FAAD55AC69525D4AD4BE89EE4D4349AEADE758DFD425DCB587BF558FB009D798C192651CA85F2467EE6A16479B85CEFAB93ECF6709E243F8B3C52DB6E9AD1AB322F09CFA968B075099FBC32F469F7A8696BC2EF714042EA27D746986FE4809BC70F6C06C32294FB0FCBAD6CFC24247575B2690B3DE6302534ABFF2D2B7EFA2AE668794B4753570F0C41F069DBB1FCD48B155D5ADD2BDEB135FC7A766460A2D96D4A556BA7EDEA5DEC736C6E31FBB02D23CFF3D01918A0302EDB7AB4B02CAFAC48D932834FF97DEF482442DDE07A7757FD8B21B5C2DFE3FED567EAB5C2D769FEDC6C8B47770E9873D1AD33E2277CF8F7E196F44A534FB4B243F7B724AE657F2EB0A643636A5BC0A69743B9907FD9DB58DF651A0D7A3EA8468867CCDA321BF7CAE519A6D716B145DDFFB3A1C2666DC5EB917592B76E1FEC69C0F11FAFAF68EA1EB058161916727B0D8BC57D6FEBA7C13DD618648AA87BC4B9C96D5FEF28AB7BD73B81FBF8D775878BA4CB06FEE097F4554CFAE0E77E147CF08BE8A37DBC6764E160CC9962FCB1CF0046627E29501470F2026CA98796074D700CB8CF29609C6C7C0F1618ACC0FC1A856E48787651793337D8280C39EE38767E9677DCCAA42C44F571F0C152D14A03588D59E5F57BF22EFF292079CA2A6EB9C2FA4367402FB794D3C292068D4E0FD499C66CCDD3709646A5F1300E10FBFF1CAEF40623E796D34E9D432FEA48843A2B54DDA1AF68D7799E6A7F2FB6011FCADA7447CA7B276CAEC467F695CB954FDB9D5EFD33B4EFF0ACB071E3E687BF195D1F5F64EA6117356BA7F30CB3F1A86DE9353DD4366BCB0133AEE9DF518DD8F0E1876BCBCFF00E562ADAF5366EE5179B75B59DFAF19B2A1FDAC635809B4E777C79B0B9B9C79059A301D8060C1AD56870BCB44D67B3BE2EB5AC9F22C85B257F092CFEAB51644EEFB664DD7F02FAF69CD274745B6B414A5077F06C93CDA2C66E8D71F4D5BDEB9DC00BFCEBBAC7DD06BC948231F44B97E021CF754ECC641E2CBD45F61FE7DCCBCE5F71053AECB37DE7CBC6DBAB7FBD493AE7859BCDE114FCCF5DE94A39E42CB02F63D2678B800ADB0E7FDCAEAFB284D82A888E5EED7807FFF1F6F8E326A48464158E7508A869EB373D257EAE558E1C089F5B17255E6F375C1DBC58C9B99F760AA4469344A8B35EEA731D30BCD867A0EE01DF013D6F9B8D1DB7B997A755708049BEDC336567D590A843B3F0764CFD67C9CD02EAAA3A74937754BB9D304DC17B39B4EE3F47FAE7A0D9ACAB61A8FBCFE1163678086B4F31AB790DDADBDCCBC4A8BBCA6BAF6AED5E185CF19FF08EB5099A0B95DA61DF3211EA9EF769B7F9E768F51376DD511777B6443C8D0275E49155A18199173C52CF0C69DF849C2A649BD5E55537B173753CE2A2CF5C9AE81C04C6CCF68E958C82A617D7A896F9B1692F12CDDCB04BE5A2703C2CFB22DBEB7561F0C141322386EB9455A1EDBD032ACD9A946C58753AB3A72EB03CBBBCDFA9418F563FD139E8EA0B73F24AEE0DDFCB1B62A9D12411EAAE1875B0A88037FC391D6DE551C70DDBD8B857F16869EFD21A04D4D97835B39036DEAD62D4C517753FBCBDFA528B4E40DDA33BAB9F0AA811E373C0857B3533D4FD647DC52F7C2AC0B90EADD4ABDF2FBC2BC66DAAB4DD58C9E2BC7AD49D2EEAF9F9DFEAE76F6DAFA9BF720F820C753A8DD6E6E5BC1561A3D81FA6CD0D48831BB85BE6977AB1D2C8BF6A4ABE50DEDADD5BDAD4BE409DDCADD50DE2C831ED5295CA2944F83AC121C016D4E4DFD54D720916C606FB789725F73A06B81D38BD27EFF26F36EF4672EE07A5FBE3AC4ECEC6B965CD0A7E4FBA34BA73D54D333C63BA2DBC4243E66DEDFCECF79EC8A9A867FE599646A789033CB83C506C6CFD2B36C32DA53F03F73906EE1EE887F3CAC43A0D28166A344984BA2B46DD44A955C7B5095B723AFEC7B33CF2425763B75E40DDFE12D334FACA76BD80BA768DD1C693EBC88A51C79DE55E75C1BCD1C18F3D2A322A45E3901B9A18EAECD238AB4EA3EF43123AA55572BD7AE355A2AEBDDBF0EEEA529BFFADFB837F9B46A7371AAF6AB011A87B6DF585310BCE8DFABA7703D298EE110DF63CC09360DBB17CE7C4CC2F638E7E1C7270BEDFBED93E716CE289A28E95D4D8AEEC777FA572E0F790B3531FBF5CCB79F75FE6C7EE216CC4B18E414E892727AF0A7D7805B7F378AF68C10050CA7600E8D5E981BA6FE23224A91C28AC704BC98695D6D1A39DE9B98BEDD7C304F215D6B5C2446323A87F5227D577744FF7884A2E289FC6AF13404D5A1A7504E446CCEF6EEBDF2D2821BFF425F312C0CF228EB0AD88AE52DB33F2508C131C03A8C52411EAAE06750F28A10E7A359CCB9E18758A03983F5C5BD6C53B0C13A3AEA25DD7A935E2C456FE4D9E6F4EC74F3D4D7B9894B7EBD970A5308009FD602D422A4068C2E6CA8744D91B16EA1C222EFDE88DCC67BF39D9D8756D3CAA74F5687EE9D4B322BEE656A87B37208DF3B5CD2A3B3FD5F097826D4A3B27CCA86490D3190CF8CFC633A7B8863DE116D1ADD15D6E6A5739047EB5EB68C7C041C5FA8E9E9053852AE790BF471D118C3F5B9770F15064A74637D777EFFA4367BE8ECDF8E7AEF437B7EC75E4F7D2733F98F3A45BE4F31ED11B45ABD143B32EE6D734ADD87FCA31E10450B73D23BF059003C59D03FF7F7B770216D579AF017C6E6FD3F626AD6DD3DE804B9626D5C668CDDA24A6D94C6ECCD2A6E6367BD2DCB8C5986AD5A8313AECB8830A428C8ACA30EC6B204640145964139455F67536987DDF973373BF338790014903820AFAFE9E797806993973180FE79DEF7CCBDF8BCD317BAC4646DAAC7377249120241B7F6877CAB8BC8DE43D24AFB5C82350011075971175FFB19B7FF33E01B9B1F68A3DA38EF1835177AAA7BFA93724EAC89D2EB59DD9261D66BB053F0E15CC3AD2479A74AD4AFAD41459ADFB65B8F07E4E1F79D613F183F2E3BFF60A661FEDBB698FE0677BE9806C56D8984BA00351F7CE713933B66558F53CDDF48DED0D22F338BE69B7FDB3F3CEF5FC9B7789AE9363EFEABCCC54F710F9A5096746FE14A6B65C5459D37751C78E264D3412754CB980E3177BEA44F28743525BA56A122D0B0F1C9FBA35F576BF98E7BEC87A2AFC2BEF007A7639694E917F59E71EC649F89E38E7E51BE3B91C975F76A5DD412D4F2A248FEC90696A4572B2D9B0C2BA4F2F19C042F627BCA89E34100F9735BD157DF29394A2970F1E77EF0F7D5171EFE0A978DD0A2D69624EDD9AB2629C660588B50626EA2C7614EE0144DDE4403E548BF5431B587AEBF07FC252A3C3F389D75069879AB5E822F71CDDA240BDBAD1092FA44B90CF18AECEDCB02C7607690C3DBD9F1E1B2954EB9929075E743570EA9EA038A6288F8372BEEA1E9FF9595659487E7FD254F1A4E9755D69B59DC51DBD269BBD47A1F30E4A1AE89FB39146A16FCC268F3190F9ADC2532D02B24D92557F3D7422A6B235BF4D4832CF33E13426CB9936E1CCE078BF1395354239D9F8A2A81CD2B62389480FFDF78D6166B27BE256B5929DECD38CDB52DF8F86D2C5FF4652E70F00510797C76677DEF149FBFC2FBF6BE622EA468D9E4BCEE6780ED6F8F7487B889CDCE9123CFEF16F73F2EA440A72C74E51E5DDE281C8CC6EE491869DCB5DFDE08D6327D526EB90BC2451C44C571870DF767ABD12CF6B98DBF22E7CDDD093D3C47BF9DBE54E5CEE1E3EF2F57069A3971FF76C675F61BBE87F22B348BC4514D55F104803B2ABE8E53DC96FE41353F0EDBAD51704B25AD11599EE66B639E81AEBECE8BAD1AF990980A88391B8ED939A69AB847AC3A06E2044DDA8AD4A2D66BAB546FE94A28EDEE4EAF605115924F6666D4D581C9FCF8C2622CDBB8175C298AE3546E285F67519259E5BA815CAEFF0E7BEE491615F9C6DA06BEE0CAE1B4E9A711F251564D47555B9E73F04E556DD1510DB2A51E734F1C93E1F2C6D24A9A9329A0F9536CEDB99ECED1F47C29244667A6DE7C016228B1BA6FA709624145C89B7EE45F798522F5F0C4801441D8CBFE32562D6FBADE59DDAE1FECB1075A3E4703ABDE9953E38A1F935237F56B540E65E34327EE1B74B5FBAE82A0726EF80046E65FF32CAF1E7DB3C5B726185F5255DDFF5DF92747CF570F6331E25119825C43C47FA9266D3D717BB499C9004BDD8AB8839D7E2ED179B5ED769B53B9835CC1C94F38F3B9348D84CF78B212F37A4CA0FD9B8CF37152E7ACAC1F85F60D45B6CCC6260153D384D00A20E46AA4FA9E54B5494834ACC93E4566BF29B4CDC32F9A972CDE264DEA230C10B3BBADE08AF5E778CF7A3C52DAC558A39FB0DCFF80BDE8B50DDBD4932672FF5DBCD9A8F0F53B76C562DDAA7BF6B9B6EC6A78AC571F69FB255B76D303EB64D3C37DCBA30443D27DCF4D83ECD2DEB14CB8EC9971C937F98647A72BFECC3B8CE2FF3240169BD258DE693359A9C32854045B95C94D97C8D1712635DCD175B977176543D76CC895EA0D2CBF5A64B1B7C248D4EB70A9876DE904AEF52BD6975DAA0796F0F85A41C2C691CF829D98D69BE9C36293DF077FEBEF4E8732D65DDE27FA59D7D70774A39BD4EA68DE4CAC7C9858FED499BBF37FD6845D3F2C402D298FBA671E8FAD451654DDE3E5CBEAA7FBA68504ED59FF7657C1047574818580C7A8C48C693BD25AF4E399DF8EB0544DD758CA26C3C895D67B4CB35769ED8C69798454AFB81D31ABF6F94FF8AE1AF8D11BE11D2FE698A7EC1968BEB8E08EE63B7BEB3A3F52FA192E96CE38C75CA996CC3AF361A6FFF5C3375838CB5BC8FB5ACF781EDA69BDE6F9FB2463CCB5FF8D82EF10BC1FCE783BADF8D162D89E6AD3E5AFBE031C5AF43ACFFBDB2CB3FA6AE5E682B6D339E6BB5B60A9811A794CBC95CC674B08E290A2BE9D3AF46EF4CADD4901F55F12C66A38B27B59737A99A7906ADCEA535D863CFF49574DAD71EE36F3B29D997D7E7FFB5EDA9FDA2D0AFD46F47CB0F9D31CDDDA1BCD547FE5198EC313FC1B3E1E6BBB61BD9E9AE8054D7C604FB13DBAD21599ACC2A53C409594CA9FA5483BEE4A259A975186D4E25DDCA18B793DE558D3AF7EA5C095E6CCE86CCD2B16F2DF942BB971FB7EEFBBBC7784A5D465DFF35C63EAD61EAB6349261CCB79D720D5DE094CD216DB527F6652C4D2850192DF522794C65CBC321A9743F9C7BAE3AD3A074F7C971769DAEF6DC386938DE19C0DD5F54EF9940768AD29A6D2D1295775092DA340E9F622EF629DC7D9CD1AD12154E0480A89BC8DA653696AF96F5B198F5F756D632C12DAFB4DCB4B081B551C3FA4727EBC34ED6AB17A7AE913CBA99C75AD4C47ABD9EF5068FF57E17EBDD56D63F5A59AF74B0960BE9677D66FED9A77AD616D54FD78B7FF2A9F617DB4C37B14D1F70CCE7BB8D5B12F80D5DD65375AAF07C1939D304728511B9FC8226F2219B7CCA1FDD2C3A89CAF6DAEECE5BD7346947708EBA9A7D750ECA693099A41A478786EA91516A8BABB2C7512BA47627F69FFDC632FA9C75958F862FCF5E64DA289AC143482E4F58419DB77FEC40D103D770837407AEFBBD197DF288C7D4051B452D8ACA61AE0DD2BBC4A667FED1F77D387377249674F6316B60921B4968CFB907394D3C9285E4C12B920B2F7D39D23ABCD39FFB6F96801915D2CAA4075E8E60BD500044DD35A731DAE77E56F85A08FF7176E34F56D6659F35CFDED075F3CA8A07B70AA7ACAC98BFB56F6F96EAC059C5F248A9C94A996DCE3E9559657458ED4EA1DAA1309AB3CFA97AE4BAC35992D05441704A5B5285B4B1D7357D5BD3AFD7B7BE18A67A3A5879F766C58F57F3DEDFAF796EBBE8F96D7DCFFAB4D78A2C815C79035F9F552CA27EE8ACA3D4D9E6FA097EB3A6B65B3ED262AA189672B92D74A7D3CB3F8E9CBE5F3D3C3E53A117C7E5DFE1B180C8ACADF14CF9829873436BC0F728B453B7A65E1A4EA43D9752DB71A4BC29BB8967F9A1BAAC2EBA085FC5DD81B124EAEE0AE0F6280775E4EE3855FDE297C7C7EBBD8A2CA647D090D6A767960320EA60601D7AA5C6AC35D9C40ABB4C43155E54728B7B971F93F926AB4E343852AB5D2B8FD8A7AC68F78F5364159B666EE8656D32B64A4D267723506FB0B6880C152D7D569B7B4B4E44DD78AB13C9DD45EC62066AF18C11C983D82A3AD8E815C2DC13BA056A1D6938F628862E77F9C4BE8C92AEBE91B6A69DCE21C5ED48F3EE64339F24EBD2C4FE91965E6C0E73476BB6DE13147BE0ECB8AD14475ABDEE8BBDD19BB2CAF1870D88BAC9C236B60AABD478744E196CE666BE35BBC65CD5650DF84671CBE24ED6EB5D1F1E323D1FAAB8C34FFAFB959D3F5FD5336B6DD7BBFB54CFEC77DCBA4331CF4FC18ED1CDD9D8FDE896DE9B3F15B0D628FE146060ADEE7B3840326F7767975887A8BB4CEF704ED2D70C0313CC236845FDA0A0DCAA7B82E2981EB5B93B92D6669478F9724920915B727587E723DBA4EAA9C129768F767EAB445DD82E220D41F2A326B1AAA04D78B0E4E2D28402B241BA50B87BD54D85C17CBA55F85478C6BC9DC94CE5F4AC86EE9C267A41A01EA5EE91D0544E650B694D0EA97530460B2232DD5753631C188D02D74DD4ED56E2364E37156B878C7C74F8559864C63EF1DCE8BE8F8E49C373A955878D730274D3F6C85EFB4AFB5AB8E5E625C2BF1EED7D38CDC8DAA9A46F3BDC5F992D903BDB95EF25F4FE2BDBF1D256FD2FF6A9A6854858DBA5AC5DEE87ED5291DB7F46A9FF10DCBE395938E595DAB7F61B6BBBF5AE497B3ABA365167B53B984E32CF2904978DE41369C3CD0C8EDF5BD0BF66CA9D01DCA7DC2BAD2C88C822719574A1BD53AE218925D5999627163E199631F0FF25D1991ED89D1C5658179A5F73B0B431BDAEAB922F355AEDF4B296BEDCD9DB13EEF28F7DF1C0F1DC663AE1C8465E3870DCEAA03E8CCF7F2E324BECBEAEF8CFD4E297C6EFA225839EBAEEBE74598312AC0030B8D9C7139BB985A6F74294EB399A75B1546E95A6573168BCC292E8EEB7238CF91DA35B12D32FAEFB97AB7AD849DFBBD26671B3EA27AF9C9BEF3B2957C5645DAB173ED326728F818C8E2CAE1FE3A6CABAC55FD50FBA16EA59098FAFD27D9C5CF4A7D0B4197E3133FCB80F85A4BCCDC93BD3F65D09E06167B593073331D326D3A84D961549051F2515560B64271A79350259458F44A235D68BE8B54BFA34466FFFF11C36428F0E250D4A3667CDE03A4100706332DA9C2D52FBE7B196DCF3AE2D2962ABDDF97D97C356EF97BF1EA2D59A2F7F589CD14ABD16A87B29B8FBFB1E4062F5471F4EBEB4635DC3D75E935E42B75DFCE32FBA2B155C2B2B920B1B2E59706BBA2FC74139C907286616206986AE4AA5CB23907F9C151CEFA0A8B8F36D269B7D4366E9BC9D49ADD2719B09D0BF7E343B9A291204003726A5D272A4D4E617EBD89062A96EFB81EC3A53A960FD5FC7BB917CB5717CBA51CC36FBEFD9DA66E1F0D318BAC4E6BF6D9D64957D58D7F6E599C1F424ED86CC01BF6A8273CFBFF0C5D7CEE15A750EF78CB9A9EEDA43394DBC2DC72BF456DB81928B72BD49A233AE4C29BAD39F7BE29249E563F4887B596792769EE51700E0BA677738557A4754A976FBD7AE5591BDE779239998EB4CA9D04F59D6F5DEC18E2BB14B3B93E529A5C30FFF9EBDB6262277324DF6BDC651475A4B4C8DF23BAE45C5D1570F9FF8C3B684BC6641155FDA265577C9B5ED324DBD4871A64DE8CD8E76B7EA9C7F3974426DB4A88C1683C5E6743AA3CA1A1F0A497D322CA3AC7BFC3FD4BCCF3D45E79C1FB774C4C344016052D39BEC991754EB0F6A8212D512D548A7BBF5CA2DEC44CD6D8BEBAEF829DA41ED4A770DBB54D32FDFAA46D48D024FA9F3F2A1D36EDECEA4ABF9BA24C97A94BA6A812CAF4570B4BC797BDE0572F3CFAEDC53501B7DAE65EAB78564F92A1DE75CCBDFA2B26706C73FB02B39B5A6E3D255CAC6C5E6E3155E6C7AA6C49EC1A5EF00E0BA54D0E25816A64D3D6B7450A358FF2AB9D0386F936CDEE7AD76CA79D586433EF159F7858EA125C97EFAF2643A53B126C24E947589990EAA47F7A44D90F765BA6F8CB75FEC9F42D3D6A697E436F37B3586315E62FDDF23399E95108608CDAF61DE8177634EE1140070BD6A12DA23724C8139AE46FEE87A286A5A8D7F8F103F1DE6A8EDB65D933D8F2E362CDCDA33F0ED6F3F6EBA6D6915A26ED4526B3B9805BA9E084B9F08FB33BE9F97EEDB9E4892F27781B14C9D8421C20BEB98DFFDCFFB32702E00B8CE500EAA4F65FBE0A87053AC5133CA2E789D89CAA9B1B356F4714F4B0562C3B5FD458E9E94B0E617913BCF86F0E67D3EC90661B226CEAE4495353167FCC7F7A65F67C7BAEF89738BA2B23BE45AD2581CF2A39DA7AA99DFFA010CB904B88E58AC0E81DC19996F8FCA33EF4CEB1DEDD34B1BF5B3036461D90683D531A17EAF1F7D667E66F3E4EB64614DA8BD1948BB3F5EDD7EBB2B72A0DB1DA43137677B82D35DF160796201E5743EB83BA551FCDDCC8A0D9965CC754BE41CC075D28673BAD47AE7CE0CF373811D97F1DC5EA56DE646FE021F71432F35017F3BA7D375D392FCC9F8FFC29A683B9452D3C19CFDEF0A88BD563310C6C8413933EBBB49338EDC27BF85486D20C7C71DFEDCDB07573C78E3682E93EB4F8767E2040130D9E5566B9E0BEE5D1D2BD7E847BD9CDFE93AE5EBC1B237232D5BA205161B8537F3FA8F3A977BF51326EDBCFDE3EA2F99DC3DC1C9F5E6B7A3F35CEEFEB9474252ABF8D2D9DB13873CC66A77CCDB99CC2C71B924211F4721C0E41557A85ABE5FF559A24C20197589CAA28BCE9F2F694E2E37C616CA292712EE068B3A42A8D6D3F55149DA05C48F63B9802BCA60B59300CB6DE67FE5AED8D0A7353C1B91D922513D1492EAF9B0865E85977B45342F3F6E6471030E418049C7E97486E7A8961C36857DE33C53AD1DD573ED362ABE50199C404D59D696DD8C95226EECA873B9FBB7E8B554E8E61D67E1175F4FD88B99269BFDADE893CF4564D91CD4AAD4E20511995F1437307BFB7172D1DEC193E4F69CA9A5CB9ABBCBC056F250BB0B6032B153AEC226D3D91ED7D3DB54F6515665E990DABFA9523FC3E63D79D476E46407DE4C44DD201B324B9955A1BD031286ACE97C35313196D3CCF76C773277E6EEA047D0280D66AB83521B2D0F87A4E6B70AE7EC48CC19BC6698486360564123E13D7F6FBAC162C3C10730295828FBE15CEB021F415AB976B49D70A1B18D9FA7BB589F34669E37E9DC632951950B5137BCC20E11D375E7E51BB3282AC768B55F9DD7FDFBD1DC3B03B803C1366747D2BA8C5297BB6AF9D3E19911C50DCC6266F704C5318F3954DA48BEAE4E2DAE16C8866C2A30A7CA3B3081E97D24F771D8014C7C14E58A2F35DCBB451A57621855C5D423B9C62D09FA4561D6155FF6367469C758AC156E94A8631A55EFC49CA28BAFBAD362F3F18AABF0A29FA414ED3C5D1D944B27D379BE2CACB0FED9087AA8E4E2F87C9E922ECBCBAD6C3956D1522F523C1DFE95DE629B193C4C299F9C26DEDD8171CC484B128D1D320D8E398089EC548DDA2FC1B639D19550AE536A46F4C1BAA14797566660BDD3F18F2FF47E49D2C4F36AB3DD8E77125177996A84B2FE011D6C0E696F8DE37095FD45F50FEC4ABE775B82CC637DCB336DC223E5CD5EEE5A74E4017283895918F3F3ACF28A1E7AAD67A9CEB421936EE755748B8F55346BCD56CF6D368A958FED491B8867B2051C6D0013D6A133920D875DEC386B4685FE071FECA01C4A8D6B65B26ECB11D32D2BA54B23BB4A5BD1F58EA81B3F4E972BA2B88119D9E1E5C3B927282EAAAC69EC9B5D937E56A41E66D19D17BF3C5E2752BC1B73EA8D63B9E4DBC7F7A69BDD7DD124F30E95364EF3E50C7B35B545A27A24349559C39A7C7D3E324B63B24EF6032520208005D7A3C0C0C01BF6F4E7743AB32A64EB6314F7AE69892BECFDFE87B90C262AEFBC6AE1B696A0540B6B7DFB7D7EC2B4022BE544D30D51772591BC599154E8E5CB6502EF767FEEA6ACB2B16CF09FA94502D5301FE5A6FA4493AFB382E31F75AF55B62EA3A4CA5DDFDCE6A0D4268B9D1A3A0F26A7894FD2B7BF6791CD214F945D9932080030162ABD750DD775FF26D1877152F37053B65747F37C3304B77E247C2544C57AB3EDFEEDB2AA2E8DDD4E615009A2EE6A7F1C2379F341ECE9FEC6133B9AB4B41EDA9DD229BF9CCE3012757CA54EA2332E4B2CF0FC772FF715CB3E8D2138F7BCFBAAC5F0C739F9F7A50905A491E7DD1F72D1F76E4B10EB8CF8A300985028CAA936B9E6F9AA0E17696C1EF3972C66DB2B473ADE8990DDBBB673CA5AC9070996F236035F69C53B86A89B407C4F9C6302A6FFE6C35914952DD2E847FE01AC5DA6B15194D5E1A815C947FA3743B296A202B22B99DE38E6E6ED13BD20326B48A71D005C5BED225D44AEEA8B3C57409C496BB27D59A4094C90CCF711CC62EBFEB05973BF9F6071B4686F66571DDF48FEB2F17621EA26B4D2AEBE3FEE4CF2765F39EC0F1EBFD87B82E298012356C7381CC1A41DA9B7D8F25A040B0F7CEDED1F37F0424CAFE1BEC23A1C4F0013CD1BE1B2C7B7CADF0CD74DF357FC6663CF33FB3BD46A6B3B5F8977065137B91D296F7A2434759A2FE7DB3E333A8ABCFDE3BD7CB96F734E92E46B97AA7B3506B5C962B639865D96D5E9745AEC0E8DD92AD59BBA14DACCFAEEB5E9676FF7E77A0724F47710BAB7496E245CD7A697E0300298B0983F71F2D5E972A14F0151771D2A6817BDCF3DF500B3BA1889A881E4A367A37349F87907267A07254D0D4EF126DFFAC54EF78DF1F28B9DBA35C53B3899FE51403CBD50CBA067D10F98BD2DE1E583DF90C8C4D10370438627DE0244DD44552394EDC8BBF06ECCA93F8765FC2E30968E31FF383AC948049200F3616E1CFA2BF9D69D7CF40302E267F8C53CBA276D5154CEE6E315F96D421C310000578D4EA743D48D89CA6869E8551475F47E55DF155BD51A57D576B8AC915BD99A51D775B2995F2D908975461C6700938ECD8605660151070000883A000000441D000000A20E0000005107000080A803000040D401000020EA0000005107000080A803000040D401000020EA0000001075000000883A000000441D000000A20E00001075000000883A000000441D000000A20E0000005107000080A803000040D4010000A20E0000005107000080A803000040D401000020EA0000001075000000883A000040D401000020EA0000001075000000883A000000441D000000A20E0000005107000080A8030000441D000000A20E0000005107000080A803000040D401000020EA0000001075000080A803000040D401000020EA0000001075000000883A000000441D000000A20E00000051070000883A000000441D000000A20E0000005107000080A803000040D401000020EA0000005107000080A803000040D401000020EA0000001075000000883A000000441D000020EA0000001075000000883A000000441D000000A20E0000005107000080A803000040D4010000A20E0000005107000080A803000040D401000020EA0000001075000000883A000040D401000020EA0000001075000000883A000000441D000000A20E00000051070000883A000000441D000000A20E0000005107000080A803000040D401000020EA0000001075000080A8030000B83EFC3F055FD591D35DC8200000000049454E44AE426082'),
INSERT INTO images VALUES
(7, NULL);

-- 
-- Вывод данных для таблицы jobs
--
INSERT INTO jobs VALUES
(1, 1, 'Секретарь', 'secretary', 'secret', 0),
(2, 2, 'Технолог', 'tehnolog', '123123qweasdzxc', 0),
(3, 3, 'Демо', 'demo', 'demo', 0);

-- 
-- Вывод данных для таблицы machines
--
INSERT INTO machines VALUES
(1, 1, '1', '3', '1', 5, 6.000, 7.000, 8.000, 9.00, 10.00, '11', 0),
(2, 2, '2', '4', '2', 2, 3.000, 1.000, 2.000, 5.00, 10.00, NULL, 0),
(3, 3, '3', '3', '4', 5, 6.000, 7.000, 8.000, 9.00, 10.00, NULL, 0);

-- 
-- Вывод данных для таблицы mass_calculations
--
INSERT INTO mass_calculations VALUES
(1, 1, 2.000, 10.000, 10.000, 10.000, 100.000, 10.000, 15.000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10.000, 100.000, 50.000, 1000.000, 500.000, '1+2'),
(2, 0, 2.000, 5.000, NULL, NULL, 200.000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 0, 33.000, 20.000, NULL, NULL, 22.000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 1, 4.000, 10.000, NULL, NULL, 20.000, 3.000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- 
-- Вывод данных для таблицы materials
--
INSERT INTO materials VALUES
(1, 1, 'Материал1', 'ГОСТ123123', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(2, 2, 'Материал2', 'ТУ 4324982', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(3, 1, 'Материал', '123ТУ1234123', 100.231, 12.120, 423.420, 123.210, 4000.50, 'Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание ', 1),
(4, 1, '654654', NULL, NULL, NULL, NULL, NULL, 50.00, NULL, 0),
(5, 2, '8tjgfnfytjhrhy654', '564321654', 1.100, 2.222, 3.333, 2.421, 12312.00, ' ASDF ASDF ASDF SADF SADFLKJSADNF ASDKJFN ALSKDJF ALKJDSFH LAKSDJFH ALKDSJFH LAKSJDFH LAKSDJFH LAKSJDHF LKSAJDHF LKSADJFH LAKSDJFH ALKSDJHF LASKDJFH LKSAJDHF ', 0),
(6, 3, 'gfdbfdnhtryjrtynh', NULL, NULL, NULL, NULL, NULL, 60.00, NULL, 0),
(7, 0, 'sdfsvdsfvdsv', '123', 123.000, 321.000, NULL, NULL, 70.00, NULL, 0),
(8, 4, 'Новый материал', NULL, NULL, NULL, NULL, NULL, 80.00, NULL, 0);

-- 
-- Вывод данных для таблицы measure_units
--
INSERT INTO measure_units VALUES
(1, 1, 'м', '1', 0);

-- 
-- Вывод данных для таблицы methods
--
INSERT INTO methods VALUES
(1, 1, 'Met121', 'sfdv ls''fd;lvk s'';lgfk sfd sdkjgf s;lkgj ', 0),
(2, 2, 'fv swerg ', 'werg werg  wergwerrg werg', 1);

-- 
-- Вывод данных для таблицы processes
--
INSERT INTO processes VALUES
(1, 1, 'Подготовительное', 'Получить прессформу', 'Технолог', 'tпод', NULL),
(2, 2, 'Чистка/ремонт формы', 'Чистка/ремонт формы', 'Токарь', 'tч', NULL),
(3, 3, 'Фильера', 'Подбор фильеры и рез смеси', 'Технолог', 'tф', NULL),
(4, 4, 'Вальцовка', 'Подготовить смесь', 'Вальцовщик', 'tвал', NULL),
(5, 5, 'Шприцевание', 'Выполнить заготовку', 'Вальцовщик', 'tшпр', NULL),
(6, 6, 'Программирование', 'Работа технолога перед загрузкой', 'Технолог', 'tтехн', NULL),
(7, 7, 'Загрузка', 'Загрузить в прессформу', 'Прессовщик', 'tзаг', NULL),
(8, 8, 'Вулканизация/вырубка', 'Вулканизировать/вырубить', 'Прессовщик', 'tв', NULL),
(9, 9, 'Выгрузка', 'Выгрузить', 'Прессовщик', 'tвыгр', NULL),
(10, 10, 'Простой технологический', NULL, 'Прессовщик', 'tпр.т', NULL),
(11, 11, 'Простой по вине работника', NULL, 'Работник', 'tпр.и', NULL),
(12, 12, 'Общее время вулканизации/вырубки', NULL, 'Технолог', 'Tоб', NULL),
(13, 13, 'Процесс', 'Операция', 'Исполнитель', 'Обозначение', NULL);

-- 
-- Вывод данных для таблицы shipment_item_work_items
--

-- Таблица rti.shipment_item_work_items не содержит данных

-- 
-- Вывод данных для таблицы drawings
--
INSERT INTO drawings VALUES
(1, '2016-04-12 22:38:59', 1, 'Чертеж1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, NULL, NULL),
(3, '2016-04-12 22:39:02', 3, 'Чуртеж2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 3, 200, NULL),
(4, '2016-04-12 22:39:04', 4, 'Чартеж3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, NULL, NULL, NULL),
(5, '2016-04-12 22:39:14', 5, 'Чэртеж4', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 1, 3, NULL, NULL),
(6, '2016-04-12 22:39:11', 6, 'Чыртеж5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL),
(7, '2016-04-12 22:39:17', 7, 'Чяртеж6', 3, 1, NULL, 5, 7, 1, NULL, 1, 5.00, 0.164, 1200.00, 201.00, 1, 2, 1500.00, 2, 1, 12, 3, 23, 4, 10, 1, 'qq af sdfg rtg werg wergf', 0, 3, 3, 160, 'sovjwerofj mrpfwe[rofj w[erofk wer[fpo kwe]fp kwer[gfo ijwerpof weproi jwperh '),
(8, '2016-04-28 14:25:41', 8, 'Можно юзать', 1, 1, NULL, 6, 7, 1, NULL, 3, 10.00, 0.276, 250.00, 100.00, 5, 6, 654.00, 4, 1, 10, 110, 10, 10, 10, 7, 'rfvesrg dst hdh dyh', 0, 1, 3, 0.3, '''lkjniunhpou'),
(9, '2016-04-28 15:51:37', 9, 'Новый чертеж', 1, 1, NULL, 5, 7, 1, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(10, '2016-04-28 15:59:29', 10, 'Новый чертеж', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL, NULL, NULL, NULL, NULL, 6, NULL, 0, NULL, NULL, NULL, NULL),
(11, '2016-04-28 16:01:19', 11, 'Новый чертеж', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 4, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 3, NULL, NULL),
(12, '2016-05-04 22:48:19', 12, 'Новый чертеж', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(13, '2016-05-05 15:54:06', 13, 'Новый чертеж', 2, 1, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 8, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL),
(14, '2016-04-12 22:39:17', 7, 'Чяртеж6', 3, 1, NULL, 5, 7, 1, NULL, 1, 5.00, 0.163, 1200.00, 201.00, 1, 2, 1500.00, 2, 1, 12, 3, 23, 4, 10, 1, 'qq af sdfg rtg werg wergf', 1, 3, 3, 160, 'sovjwerofj mrpfwe[rofj w[erofk wer[fpo kwe]fp kwer[gfo ijwerpof weproi jwperh ');

-- 
-- Вывод данных для таблицы employees
--
INSERT INTO employees VALUES
(1, 1, '1236546', 'Иванов Иван Иванович', 2, NULL, 0),
(2, 2, '3', 'Петров Петр Петрович', 2, NULL, 0);

-- 
-- Вывод данных для таблицы material_arrival_records
--
INSERT INTO material_arrival_records VALUES
(1, 1, '123', 4, 50000.00, '2016-05-06 00:00:00', '5era', 8, 1, 100.00, 500.000, '100.000ertwer twert', 0);

-- 
-- Вывод данных для таблицы requests
--
INSERT INTO requests VALUES
(21, 1, '2016-03-30 00:00:00', NULL, NULL, NULL, 2, NULL, NULL, 0),
(23, 2, '2016-03-30 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(25, 3, '2016-03-30 00:00:00', NULL, NULL, NULL, 3, NULL, NULL, 0),
(26, 4, '2016-03-30 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(28, 5, '2016-03-30 00:00:00', NULL, NULL, NULL, 2, NULL, NULL, 0),
(31, 6, '2016-03-30 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(40, 7, '2016-03-30 00:00:00', NULL, NULL, NULL, 3, NULL, NULL, 0),
(41, 8, '2016-03-30 00:00:00', '2016-04-21 00:00:00', '2016-05-20 00:00:00', NULL, 1, 5, NULL, 0),
(47, 9, '2016-05-05 00:00:00', '2016-05-31 00:00:00', NULL, 160, 2, NULL, NULL, 0),
(48, 10, '2016-05-05 00:00:00', '2016-06-05 00:00:00', NULL, 500, 2, NULL, NULL, 0),
(51, 11, '2016-05-15 00:00:00', NULL, NULL, NULL, 2, 5, NULL, 0),
(52, 12, '2016-05-17 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(53, 13, '2016-05-17 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(54, 14, '2016-05-17 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(56, 15, '2016-05-17 00:00:00', NULL, NULL, NULL, 1, 5, NULL, 0),
(57, 16, '2016-05-17 00:00:00', NULL, NULL, NULL, 2, 5, NULL, 0),
(58, 17, '2016-05-17 00:00:00', NULL, NULL, NULL, 3, 5, NULL, 0),
(59, 18, '2016-05-18 00:00:00', NULL, '2016-05-18 00:00:00', NULL, 2, 5, NULL, 0),
(60, 19, '2016-05-19 00:00:00', NULL, '2016-05-20 00:00:00', NULL, 2, 5, NULL, 0);

-- 
-- Вывод данных для таблицы drawing_flowsheet_machines
--
INSERT INTO drawing_flowsheet_machines VALUES
(4, 8, 1, 1, 300.00, 15.00),
(12, 8, 2, 2, 250.00, 20.00),
(13, 8, 3, 3, 200.00, 30.00),
(14, 7, 1, 2, 250.00, 12.00),
(15, 5, 1, 2, NULL, NULL);

-- 
-- Вывод данных для таблицы drawing_flowsheet_processes
--
INSERT INTO drawing_flowsheet_processes VALUES
(13, 8, 1, 1, NULL, NULL, NULL, NULL, 20.00, 'павыиавпи'),
(14, 8, 2, 2, NULL, NULL, NULL, NULL, 21.00, 'вапи'),
(15, 8, 3, 3, NULL, NULL, NULL, NULL, 34.00, 'авп вап ипарт арп'),
(16, 8, 4, 4, NULL, NULL, '3', NULL, 65.00, 'т апрт уке у'),
(17, 8, 5, 5, '1', NULL, NULL, NULL, 23.00, 'нуен нек'),
(18, 8, 6, 6, NULL, '2', NULL, NULL, 56.00, 'р уцекп '),
(20, 8, 8, 8, NULL, NULL, NULL, NULL, 9.00, 'р унер кне оукне р'),
(21, 8, 9, 9, NULL, NULL, NULL, NULL, 15.00, 'унекр унекр укре'),
(22, 8, 10, 10, NULL, NULL, NULL, NULL, 14.00, 'уцекп уек р'),
(23, 8, 11, 11, NULL, NULL, NULL, NULL, 34.00, 'еукр ук'),
(24, 8, 13, 13, '321', NULL, '456', NULL, 90.00, 'ер урек'),
(112, 7, 1, 4, NULL, NULL, NULL, NULL, 15.00, NULL),
(113, 7, 2, 8, NULL, NULL, NULL, NULL, 20.00, NULL),
(114, 5, 1, 8, NULL, NULL, NULL, NULL, 10.00, NULL);

-- 
-- Вывод данных для таблицы invoices
--

-- Таблица rti.invoices не содержит данных

-- 
-- Вывод данных для таблицы payments
--

-- Таблица rti.payments не содержит данных

-- 
-- Вывод данных для таблицы request_details
--
INSERT INTO request_details VALUES
(1, 41, 1, 4, 1, 1, NULL, NULL, 12, 0, 15.31, NULL, 183.74, NULL, NULL, 0, 0),
(2, 41, 2, 3, NULL, 1, '123', 12, 2, 0, 0.00, NULL, 0.00, 5, NULL, 0, 0),
(3, 41, 3, 8, 1, 1, '321', NULL, 3, 0, 250.00, 267.38, 750.00, 6, NULL, 3, 0),
(8, 41, 8, 7, 3, 1, NULL, NULL, 4, 0, 300.00, 5626.91, 1200.00, 5, 'примечание примечание примечание примечание', 0, 0),
(9, 41, 9, 3, 3, NULL, 'asdfasdfs', 123, 50, 0, 200.00, NULL, 10000.00, NULL, NULL, 0, 0),
(10, 41, 10, 4, 1, 1, NULL, NULL, 6, 0, 0.00, NULL, 0.00, NULL, NULL, 0, 0),
(12, 41, 12, 13, 2, 1, NULL, 323, 9, 0, 0.00, 0.00, 0.00, 5, NULL, 0, 0),
(13, 47, 1, 7, 4, 1, NULL, NULL, 0, 0, 0.00, NULL, 0.00, NULL, NULL, 0, 0),
(14, 47, 2, 6, NULL, NULL, NULL, NULL, 0, 0, 0.00, NULL, 0.00, NULL, NULL, 0, 0),
(15, 48, 1, 3, NULL, NULL, NULL, NULL, 0, 0, 0.00, NULL, 0.00, NULL, NULL, 0, 0),
(16, 48, 2, 7, NULL, NULL, NULL, NULL, 0, 0, 0.00, NULL, 0.00, NULL, NULL, 0, 0),
(17, 56, 1, 8, 1, 1, NULL, NULL, 10, 10, 250.00, 267.38, 2500.00, 6, NULL, 3, 0),
(18, 57, 1, 8, 1, 1, NULL, NULL, 50, 50, 250.00, 267.38, 12500.00, 6, NULL, 3, 0),
(19, 58, 1, 8, 1, 1, NULL, NULL, 100, 80, 250.00, 267.38, 25000.00, 6, NULL, 3, 0),
(20, 59, 1, 8, 1, 1, NULL, NULL, 20, 0, 250.00, 267.38, 5000.00, 6, NULL, 3, 0),
(21, 60, 1, 7, 3, 1, NULL, 0, 100, 0, 1200.00, 5650.49, 120000.00, 5, NULL, 2, 0);

-- 
-- Вывод данных для таблицы rolling_records
--
INSERT INTO rolling_records VALUES
(1, 1, '2016-05-06 00:00:00', 3, 3, 6, 12, '1sdafsdfvsfd', 0);

-- 
-- Вывод данных для таблицы shaving_records
--
INSERT INTO shaving_records VALUES
(1, 1, 1, '2016-05-06 00:00:00', 8, 1, 1000, 10, 0);

-- 
-- Вывод данных для таблицы shipments
--

-- Таблица rti.shipments не содержит данных

-- 
-- Вывод данных для таблицы shipped_product_records
--

-- Таблица rti.shipped_product_records не содержит данных

-- 
-- Вывод данных для таблицы shipping_order_records
--
INSERT INTO shipping_order_records VALUES
(1, 1, '2016-05-08 00:00:00', 3, 6, 0, 0),
(2, 2, '2016-05-08 00:00:00', 3, 10, 0, 0),
(3, 3, '2016-05-08 00:00:00', 1, 5, 0, 0);

-- 
-- Вывод данных для таблицы work_item_package
--
INSERT INTO work_item_package VALUES
(1, '2016-05-17 00:00:00', 1, 'формовой'),
(2, '2016-05-16 00:00:00', 1, 'формовой'),
(3, '2016-05-19 00:00:00', 1, 'участок'),
(4, '2016-05-20 00:00:00', 2, 'sdfs dgdsg ');

-- 
-- Вывод данных для таблицы shipment_items
--

-- Таблица rti.shipment_items не содержит данных

-- 
-- Вывод данных для таблицы work_item_package_machines
--
INSERT INTO work_item_package_machines VALUES
(1, 4, 14, 500, 96),
(2, 4, 4, 0, 0),
(3, 4, 13, 0, 0);

-- 
-- Вывод данных для таблицы work_items
--
INSERT INTO work_items VALUES
(7, '2016-05-16', 1, 8, 183, 20, 15, 0, NULL, 1, NULL, 0),
(9, '2016-05-13', 1, 7, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0),
(10, '2016-05-13', 2, 6, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0),
(11, '2016-05-13', 3, 5, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0),
(12, '2016-05-13', 4, 1, NULL, 50, NULL, NULL, NULL, 1, NULL, 0),
(17, '2016-05-17', 1, 8, 168, 100, 50, NULL, NULL, 1, NULL, 0),
(18, '2016-05-18', 1, 8, 118, 110, 100, NULL, NULL, 1, NULL, 0),
(19, '2016-05-19', 1, 8, 18, 25, 25, 10, NULL, 1, NULL, 0),
(20, '2016-05-20', 1, 8, 3, 15, 5, 2, NULL, 2, 12, 0),
(21, '2016-05-20', 2, 7, 100, 50, 25, 1, NULL, 2, 14, 0);

-- 
-- Вывод данных для таблицы work_item_request_details
--
INSERT INTO work_item_request_details VALUES
(124, 7, 3, 0, 0, 3, 0),
(125, 7, 17, 1, 0, 10, 0),
(126, 7, 18, 2, 0, 2, 0),
(127, 17, 18, 0, 0, 48, 0),
(128, 17, 19, 1, 0, 2, 0),
(129, 18, 19, 0, 0, 98, 0),
(130, 18, 20, 1, 0, 2, 0),
(131, 19, 20, 0, 0, 15, 0),
(135, 20, 20, 0, 0, 3, 0),
(137, 21, 21, 0, 0, 24, 0);

-- 
-- Восстановить предыдущий режим SQL (SQL mode)
-- 
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

-- 
-- Включение внешних ключей
-- 
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;