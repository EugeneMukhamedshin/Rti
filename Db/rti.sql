--
-- Скрипт сгенерирован Devart dbForge Studio for MySQL, Версия 7.1.13.0
-- Домашняя страница продукта: http://www.devart.com/ru/dbforge/mysql/studio
-- Дата скрипта: 14.07.2016 0:16:42
-- Версия сервера: 5.7.13-log
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
AUTO_INCREMENT = 15
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
  k_tr DOUBLE NOT NULL,
  k_esn DOUBLE NOT NULL,
  k_ob_ceh DOUBLE NOT NULL,
  k_ob_pr DOUBLE NOT NULL,
  k_el DOUBLE NOT NULL,
  k_nep DOUBLE NOT NULL,
  k_ren DOUBLE NOT NULL,
  nds DOUBLE NOT NULL,
  k_st DOUBLE NOT NULL,
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
-- Описание для таблицы contracts
--
DROP TABLE IF EXISTS contracts;
CREATE TABLE contracts (
  id INT(11) NOT NULL AUTO_INCREMENT,
  date DATETIME NOT NULL,
  number INT(11) NOT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB
AUTO_INCREMENT = 3
AVG_ROW_LENGTH = 16384
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'договора'
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
  fax VARCHAR(255) DEFAULT NULL,
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
  manufacturer VARCHAR(255) DEFAULT NULL COMMENT 'изготовитель',
  lead_time INT(11) DEFAULT NULL COMMENT 'срок изготовления',
  complete_date DATETIME DEFAULT NULL COMMENT 'Дата изготовления',
  price DECIMAL(19, 2) DEFAULT NULL COMMENT 'цена',
  is_paid INT(11) NOT NULL DEFAULT 0 COMMENT 'признак оплаты',
  note VARCHAR(1000) DEFAULT NULL,
  is_deleted INT(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (id)
)
ENGINE = INNODB
AUTO_INCREMENT = 16
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
AUTO_INCREMENT = 9
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
  material_density DOUBLE DEFAULT NULL,
  rnd_d_shn DOUBLE DEFAULT NULL,
  rnd_s1 DOUBLE DEFAULT NULL,
  rnd_s2 DOUBLE DEFAULT NULL,
  rnd_d_nar DOUBLE DEFAULT NULL,
  rnd_d_vn DOUBLE DEFAULT NULL,
  rnd_d_sr DOUBLE DEFAULT NULL,
  rnd_m_ras DOUBLE DEFAULT NULL,
  sq_s DOUBLE DEFAULT NULL,
  sq_l DOUBLE DEFAULT NULL,
  sq_b DOUBLE DEFAULT NULL,
  sq_l1 DOUBLE DEFAULT NULL,
  sq_b1 DOUBLE DEFAULT NULL,
  sq_d_vn DOUBLE DEFAULT NULL,
  vl_s DOUBLE DEFAULT NULL,
  vl_l DOUBLE DEFAULT NULL,
  vl_b DOUBLE DEFAULT NULL,
  vl_l1 DOUBLE DEFAULT NULL,
  vl_b1 DOUBLE DEFAULT NULL,
  mass_formula VARCHAR(500) DEFAULT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB
AUTO_INCREMENT = 7
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
  density DOUBLE DEFAULT NULL,
  thickness DOUBLE DEFAULT NULL,
  length DOUBLE DEFAULT NULL,
  width DOUBLE DEFAULT NULL,
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
-- Описание для таблицы work_item_package
--
DROP TABLE IF EXISTS work_item_package;
CREATE TABLE work_item_package (
  id INT(11) NOT NULL AUTO_INCREMENT,
  date DATE NOT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB
AUTO_INCREMENT = 16
AVG_ROW_LENGTH = 2048
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'дневной наряд'
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы calculation_history
--
DROP TABLE IF EXISTS calculation_history;
CREATE TABLE calculation_history (
  id INT(11) NOT NULL AUTO_INCREMENT,
  calculation_id INT(11) NOT NULL,
  change_date DATETIME NOT NULL,
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
  PRIMARY KEY (id),
  UNIQUE INDEX UK_calculation_history (calculation_id, change_date),
  CONSTRAINT FK_calculation_history_calculations_id FOREIGN KEY (calculation_id)
    REFERENCES calculations(id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 46
AVG_ROW_LENGTH = 1365
CHARACTER SET utf8
COLLATE utf8_general_ci
ROW_FORMAT = DYNAMIC;

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
  shruff_percent DOUBLE DEFAULT NULL COMMENT 'процент отходов',
  mass_with_shruff DOUBLE DEFAULT NULL,
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
  summary_time DECIMAL(10, 2) DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT FK_drawings_customer_id FOREIGN KEY (customer_id)
    REFERENCES contragents(id) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT FK_drawings_details_id FOREIGN KEY (detail_id)
    REFERENCES details(id) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT FK_drawings_equipments_id FOREIGN KEY (equipment_id)
    REFERENCES equipments(id) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT FK_drawings_fact_calculations_id FOREIGN KEY (fact_calculation_id)
    REFERENCES calculations(id) ON DELETE NO ACTION ON UPDATE NO ACTION,
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
    REFERENCES calculations(id) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT FK_drawings_sec_customer_id FOREIGN KEY (secondary_customer_id)
    REFERENCES contragents(id) ON DELETE NO ACTION ON UPDATE NO ACTION
)
ENGINE = INNODB
AUTO_INCREMENT = 29
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
  work_start_date DATETIME DEFAULT NULL COMMENT 'Дата, когда заявка отдана в производство',
  ship_date DATETIME DEFAULT NULL,
  invoice_date DATETIME DEFAULT NULL COMMENT 'Дата счета',
  contract_id INT(11) DEFAULT NULL COMMENT 'договор',
  lead_time INT(11) DEFAULT NULL,
  customer_id INT(11) DEFAULT NULL,
  manufacturer_id INT(11) DEFAULT NULL COMMENT 'изготовитель',
  sum DECIMAL(10, 2) DEFAULT NULL COMMENT 'сумма по заявке',
  is_paid INT(11) NOT NULL DEFAULT 0 COMMENT 'Признак полной оплаты заявки',
  complete_sum DECIMAL(10, 2) DEFAULT NULL,
  is_deleted INT(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (id),
  INDEX IDX_requests_reg_date (reg_date),
  CONSTRAINT FK_requests_contracts_id FOREIGN KEY (contract_id)
    REFERENCES contracts(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_requests_customer_id FOREIGN KEY (customer_id)
    REFERENCES contragents(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_requests_manufacturer_id FOREIGN KEY (manufacturer_id)
    REFERENCES contragents(id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 74
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
  CONSTRAINT FK_drawing_flowsheet_machines_drawings_id FOREIGN KEY (drawing_id)
    REFERENCES drawings(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_drawing_flowsheet_machines_machines_id FOREIGN KEY (machine_id)
    REFERENCES machines(id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 20
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
  is_included_to_summary INT(11) DEFAULT NULL,
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
AUTO_INCREMENT = 161
AVG_ROW_LENGTH = 273
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'технологические процессы'
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы equipment_payments
--
DROP TABLE IF EXISTS equipment_payments;
CREATE TABLE equipment_payments (
  id INT(11) NOT NULL AUTO_INCREMENT,
  drawing_id INT(11) NOT NULL,
  payment_date DATETIME NOT NULL,
  sum DECIMAL(10, 2) NOT NULL,
  note VARCHAR(255) DEFAULT NULL,
  is_deleted INT(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (id),
  CONSTRAINT FK_equipment_payments_drawings_id FOREIGN KEY (drawing_id)
    REFERENCES drawings(id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 3
AVG_ROW_LENGTH = 8192
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'оплата изготовления оснастки'
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
  invoice_facture VARCHAR(255) DEFAULT NULL COMMENT 'счет фактура',
  sum DECIMAL(10, 2) NOT NULL DEFAULT 0.00,
  note VARCHAR(255) DEFAULT NULL COMMENT 'примечание',
  is_deleted INT(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (id),
  INDEX IDX_payments_payment_date (payment_date),
  CONSTRAINT FK_payments_requests_id FOREIGN KEY (request_id)
    REFERENCES requests(id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 3
AVG_ROW_LENGTH = 16384
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'платежи'
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы report_of_completion_items
--
DROP TABLE IF EXISTS report_of_completion_items;
CREATE TABLE report_of_completion_items (
  id INT(11) NOT NULL AUTO_INCREMENT,
  request_id INT(11) NOT NULL,
  equipment_type_enum INT(11) NOT NULL,
  count INT(11) NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT FK_report_of_completion_items_requests_id FOREIGN KEY (request_id)
    REFERENCES requests(id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 6
AVG_ROW_LENGTH = 3276
CHARACTER SET utf8
COLLATE utf8_general_ci
ROW_FORMAT = DYNAMIC;

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
AUTO_INCREMENT = 24
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
AUTO_INCREMENT = 4
AVG_ROW_LENGTH = 16384
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'Журнал обрезки облоя'
ROW_FORMAT = DYNAMIC;

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
-- Описание для таблицы work_item_employee_package
--
DROP TABLE IF EXISTS work_item_employee_package;
CREATE TABLE work_item_employee_package (
  id INT(11) NOT NULL AUTO_INCREMENT,
  date DATETIME NOT NULL,
  employee_id INT(11) NOT NULL,
  block VARCHAR(255) DEFAULT NULL COMMENT 'Участок',
  PRIMARY KEY (id),
  INDEX IDX_work_item_package_date (date),
  UNIQUE INDEX UK_employee_work_item_package (employee_id, date),
  CONSTRAINT FK_employee_work_item_package_employees_id FOREIGN KEY (employee_id)
    REFERENCES employees(id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 8
AVG_ROW_LENGTH = 8192
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'индивидуальный наряд'
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы shipments
--
DROP TABLE IF EXISTS shipments;
CREATE TABLE shipments (
  id INT(11) NOT NULL AUTO_INCREMENT,
  sort_order INT(11) NOT NULL,
  date DATE NOT NULL COMMENT 'дата отгрузки',
  request_id INT(11) NOT NULL COMMENT 'заявка/счет',
  recipient_id INT(11) NOT NULL,
  payer_id INT(11) DEFAULT NULL COMMENT 'плательщик',
  payment_id INT(11) DEFAULT NULL,
  is_replace INT(11) NOT NULL DEFAULT 0 COMMENT 'признак замены брака',
  is_addition INT(11) NOT NULL DEFAULT 0 COMMENT 'признак довоза продукции',
  trip_ticket VARCHAR(255) DEFAULT NULL COMMENT 'путевой лист',
  driver_id INT(11) DEFAULT NULL COMMENT 'водитель',
  authority_letter VARCHAR(255) DEFAULT NULL COMMENT 'доверенность',
  exemplar INT(11) DEFAULT NULL COMMENT 'экземпляр',
  place_count INT(11) DEFAULT NULL COMMENT 'количество грузовых мест',
  recipient_responsible VARCHAR(255) DEFAULT NULL COMMENT 'ответственный получателя',
  delivery_responsible VARCHAR(255) DEFAULT NULL COMMENT 'отвественный за перевозку',
  delivery_sum DECIMAL(10, 2) DEFAULT NULL COMMENT 'сумма (ТТН)',
  is_deleted INT(11) NOT NULL DEFAULT 0,
  delivery_doc_number INT(11) DEFAULT NULL,
  delivery_doc_date DATE DEFAULT NULL,
  PRIMARY KEY (id),
  INDEX IDX_shipments_date (date),
  CONSTRAINT FK_shipments_drivers_id FOREIGN KEY (driver_id)
    REFERENCES drivers(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_shipments_payers_id FOREIGN KEY (payer_id)
    REFERENCES contragents(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_shipments_payments_id FOREIGN KEY (payment_id)
    REFERENCES payments(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_shipments_recipients_id FOREIGN KEY (recipient_id)
    REFERENCES contragents(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_shipments_requests_id FOREIGN KEY (request_id)
    REFERENCES requests(id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 8
AVG_ROW_LENGTH = 8192
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'отгрузка'
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы work_item_employee_package_machines
--
DROP TABLE IF EXISTS work_item_employee_package_machines;
CREATE TABLE work_item_employee_package_machines (
  id INT(11) NOT NULL AUTO_INCREMENT,
  work_item_employee_package_id INT(11) NOT NULL,
  full_working_time INT(11) NOT NULL COMMENT 'время работы пресса в смене',
  package_working_time INT(11) NOT NULL COMMENT 'свободное время пресса в смене',
  machine_id INT(11) NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT FK_work_item_package_machines_machines_id FOREIGN KEY (machine_id)
    REFERENCES machines(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_work_item_package_machines_work_item_employee_package_id FOREIGN KEY (work_item_employee_package_id)
    REFERENCES work_item_employee_package(id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 5
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
  batch_number VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (id),
  INDEX IDX_work_items_work_date (work_date),
  UNIQUE INDEX UK_work_items (work_date, sort_order),
  UNIQUE INDEX UK_work_items2 (work_date, drawing_id, employee_id),
  CONSTRAINT FK_daily_work_package_details_drawings_id FOREIGN KEY (drawing_id)
    REFERENCES drawings(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_daily_work_package_details_employees_id FOREIGN KEY (employee_id)
    REFERENCES employees(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_work_items_flowsheet_machines_id FOREIGN KEY (flowsheet_machine_id)
    REFERENCES drawing_flowsheet_machines(id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 30
AVG_ROW_LENGTH = 8192
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'Строки дневного наряда'
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
  price DECIMAL(19, 2) NOT NULL,
  nds_percent DOUBLE NOT NULL,
  pack_type VARCHAR(255) DEFAULT NULL,
  count_in_place INT(11) DEFAULT NULL,
  count_of_places INT(11) DEFAULT NULL,
  batch_numbers VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT FK_shipment_items_request_details_id FOREIGN KEY (request_detail_id)
    REFERENCES request_details(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_shipment_items_shipments_id FOREIGN KEY (shipment_id)
    REFERENCES shipments(id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 4
AVG_ROW_LENGTH = 8192
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'строки отгрузки'
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
  done_count INT(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (id),
  CONSTRAINT FK_work_item_request_details_request_details_id FOREIGN KEY (request_detail_id)
    REFERENCES request_details(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_work_item_request_details_work_items_id FOREIGN KEY (work_item_id)
    REFERENCES work_items(id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 146
AVG_ROW_LENGTH = 2730
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'привязка строк дневного наряда к строкам заявок'
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
  PRIMARY KEY (id),
  CONSTRAINT FK_shipment_item_work_items_shipment_items_id FOREIGN KEY (shipment_item_id)
    REFERENCES shipment_items(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_shipment_item_work_items_work_items_id FOREIGN KEY (work_item_id)
    REFERENCES work_items(id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 30
AVG_ROW_LENGTH = 8192
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'распределение отгруженных деталей по выполненным партиям'
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
-- Описание для представления material_movings
--
DROP VIEW IF EXISTS material_movings CASCADE;
CREATE OR REPLACE 
	DEFINER = 'root'@'localhost'
VIEW material_movings
AS
	select 1 AS `rec_type`,`mar`.`waybill_date` AS `date`,`mar`.`material_id` AS `material_Id`,`mar`.`count` AS `COUNT` from `material_arrival_records` `mar` union all select 2 AS `rec_type`,`r`.`reg_date` AS `reg_date`,`d`.`material_id` AS `material_id`,(`rd`.`count` * `d`.`mass_with_shruff`) AS `rd.count * d.mass_with_shruff` from ((`request_details` `rd` join `requests` `r` on((`rd`.`request_id` = `r`.`id`))) join `drawings` `d` on((`rd`.`drawing_id` = `d`.`id`))) where (`d`.`material_id` is not null) union all select 3 AS `rec_type`,`wi`.`work_date` AS `work_date`,`d`.`material_id` AS `material_id`,(`wi`.`task_count` * `d`.`mass_with_shruff`) AS `wi.task_count * d.mass_with_shruff` from (`work_items` `wi` join `drawings` `d` on((`wi`.`drawing_id` = `d`.`id`))) where (`d`.`material_id` is not null) union all select 4 AS `rec_type`,`s`.`date` AS `date`,`d`.`material_id` AS `material_id`,(`si`.`count` * `d`.`mass_with_shruff`) AS `si.count * d.mass_with_shruff` from (((`shipment_items` `si` join `request_details` `rd` on((`si`.`request_detail_id` = `rd`.`id`))) join `drawings` `d` on((`rd`.`drawing_id` = `d`.`id`))) join `shipments` `s` on((`si`.`shipment_id` = `s`.`id`)));

--
-- Описание для представления rejected_registrations
--
DROP VIEW IF EXISTS rejected_registrations CASCADE;
CREATE OR REPLACE 
	DEFINER = 'root'@'localhost'
VIEW rejected_registrations
AS
	;

--
-- Описание для пользователя `mysql.sys`
--
DROP USER IF EXISTS 'mysql.sys'@'localhost';
CREATE USER 'mysql.sys'@'localhost' IDENTIFIED WITH mysql_native_password PASSWORD EXPIRE DEFAULT ACCOUNT LOCK;
GRANT ALL PRIVILEGES ON *.* TO 'mysql.sys'@'localhost' 
WITH GRANT OPTION;

--
-- Описание для пользователя root
--
DROP USER IF EXISTS 'root'@'localhost';
CREATE USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password AS '*81F5E21E35407D884A6CD4A731AEBFB6AF209E1B' PASSWORD EXPIRE DEFAULT;
GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost' 
WITH GRANT OPTION;

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
(5, 50.00, 1.00, 1.00, 1.00, 1.00, 1.00, 1.00, 0.76, 120.00, 10.91, 2.78, 5.11, 5.24, 200.78, 0.90, 10.04, 211.72, 12.70, 224.42, 15.71, 240.13, 43.22, 283.36, 'sd gfds hgfdgh '),
(6, 19.32, 100.00, NULL, NULL, NULL, NULL, NULL, 1.61, 2.40, 0.22, 0.06, 0.10, 0.10, 123.81, 0.90, 6.19, 130.90, 7.85, 138.76, 9.71, 148.47, 26.72, 175.19, NULL),
(7, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL),
(8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 29.04, 0.00, 0.00, NULL, NULL, NULL, NULL, 0.39, 35.00, 3.18, 0.81, 1.49, 1.53, 71.44, 25.00, 3.57, 100.01, 6.00, 106.01, 7.42, 113.43, 20.42, 133.85, NULL),
(14, 29.04, 100.00, 100.00, 100.00, NULL, NULL, NULL, 3.09, 35.00, 3.18, 0.81, 1.49, 1.53, 274.14, 25.00, 13.71, 312.85, 18.77, 331.62, 23.21, 354.83, 63.87, 418.70, NULL);

-- 
-- Вывод данных для таблицы constants
--
INSERT INTO constants VALUES
(1, 1.35, 2.12, 3.9, 4, 5, 6, 7, 18, 10, '2016-01-04 00:00:00', '3000-12-31 00:00:00', 0);

-- 
-- Вывод данных для таблицы contracts
--
INSERT INTO contracts VALUES
(1, '2016-03-30 00:00:00', 1),
(2, '2016-05-17 00:00:00', 1);

-- 
-- Вывод данных для таблицы contragents
--
INSERT INTO contragents VALUES
(1, 1, 'З1', 0, '1', 'Мухамедшин', '1', '89263706340', NULL, '1', '1', '1', '4700181012384234980', '1', '1', '1', '1', '1', '1', '1', '1', '111', 0),
(2, 2, '2', 0, '2', '2', '2', '2', NULL, '2', '2989867547636', '2', '2', '2', '22132346243653456', '2', '2', '2', '2', '2', 'email@server.ru', '22222', 0),
(3, 1, 'П1', 0, '11', '1', '1', '1', NULL, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', NULL, 0),
(4, 1, 'G2', 1, '1', '1', '1', '1', NULL, '1', '1', '2', '2', '2', '2', '4', '4', '4', '4', '6', '7', '8', 0),
(5, 1, 'Исполнитель1', 2, 'Адрес', 'Директор', 'Лицо по доверенности', 'Телефон', NULL, 'Основание', 'ИНН', 'КПП', 'Расчетный счет', 'Корр счет', 'ОКВЭД', 'ОКАТО', 'ОКПО', 'ОГРН', 'БИК', 'Банк', 'емэйл', 'Примечание', 0),
(6, 2, 'Исполнитель2', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

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
(1, 1, 'Оснастка1', 1, 1.123, 0.00, 12, 1, 12, NULL, NULL, NULL, NULL, 0, '1ыфв сфыва ыфавп ыва ывап ывап ывап ывап выа выап выап выап выап ывап выап вып', 1),
(2, 1, 'Новая оснастка', 0, 500.000, 50.00, 2, 3, 6, NULL, NULL, NULL, NULL, 0, NULL, 0),
(3, 2, 'Íîâàÿ îñíàñòêà', 0, 0.000, 0.00, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(4, 3, 'лрмрпишрп', 0, 0.000, 10.00, 10, 10, 100, NULL, NULL, NULL, NULL, 0, NULL, 0),
(5, 4, 'ШТАНЕЦ', 0, 10.000, 12.00, 13, 14, 182, NULL, NULL, NULL, NULL, 0, 'SHTANEC', 0),
(6, 5, 'НОжик', 0, 1.000, 2.00, 3, 4, 12, NULL, NULL, NULL, NULL, 0, 'ывм ыав ывап ', 0),
(7, 6, 'UPS', 0, 0.000, 0.00, 2, 1, 2, NULL, NULL, NULL, NULL, 0, NULL, 0),
(8, 7, '386.315', 0, 0.000, 0.00, 1, 2, 2, 'Z', 10, '2016-06-15 00:00:00', 1000.00, 1, NULL, 0),
(9, 8, '111.222.1', 0, 0.000, 0.00, 2, 3, 6, NULL, NULL, NULL, NULL, 0, NULL, 0),
(10, 9, 'etdthbf', 0, 0.000, 0.00, 1, 2, 2, NULL, NULL, NULL, NULL, 0, NULL, 0),
(11, 10, 'qwef weaf ', 0, 0.000, 0.00, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(12, 11, '1234', 0, 0.000, 0.00, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(13, 12, 'dfsadf', 0, 0.000, 0.00, 10, 2, 20, NULL, NULL, NULL, 150.00, 0, NULL, 0),
(14, 13, 'Гильотинка', 0, 10.000, 15.00, 1, 2, 2, 'он', NULL, '2016-07-12 00:00:00', 10000.00, 0, 'примечание оснастки', 0),
(15, 14, 'ГыльОтина', 0, 400.000, 10.00, 1, 2, 2, 'он', 10, '2016-07-12 00:00:00', 1000.00, 0, 'примечание оснастки', 0);

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

-- Таблица rti.images не содержит данных

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
(1, 1, 2, 10, 10, 10, 100, 10, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 100, 50, 1000, 500, '1+2'),
(2, 0, 2, 5, NULL, NULL, 200, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 8, 33, 20, NULL, NULL, 22, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.02*4'),
(4, 1, 4, 10, NULL, NULL, 20, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 4, 1.1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 200, 200, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 4, 1.1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 200, 200, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- 
-- Вывод данных для таблицы materials
--
INSERT INTO materials VALUES
(1, 1, 'Материал1', 'ГОСТ123123', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(2, 2, 'Материал2', 'ТУ 4324982', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(3, 1, 'Материал', '123ТУ1234123', 100.231, 12.12, 423.42, 123.21, 4000.50, 'Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание ', 1),
(4, 1, '654654', NULL, NULL, NULL, NULL, NULL, 50.00, NULL, 0),
(5, 2, '8tjgfnfytjhrhy654', '564321654', 1.1, 2.222, 3.333, 2.421, 12312.00, ' ASDF ASDF ASDF SADF SADFLKJSADNF ASDKJFN ALSKDJF ALKJDSFH LAKSDJFH ALKDSJFH LAKSJDFH LAKSDJFH LAKSJDHF LKSAJDHF LKSADJFH LAKSDJFH ALKSDJHF LASKDJFH LKSAJDHF ', 0),
(6, 3, 'gfdbfdnhtryjrtynh', 'tutututututututututututututu', NULL, NULL, NULL, NULL, 60.00, NULL, 0),
(7, 0, 'sdfsvdsfvdsv', '123', 123, 321, NULL, NULL, 70.00, NULL, 0),
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
-- Вывод данных для таблицы work_item_package
--
INSERT INTO work_item_package VALUES
(1, '2016-05-13'),
(2, '2016-05-16'),
(3, '2016-05-17'),
(4, '2016-05-18'),
(5, '2016-05-19'),
(6, '2016-05-20'),
(7, '2016-06-16'),
(8, '2016-06-17');

-- 
-- Вывод данных для таблицы calculation_history
--
INSERT INTO calculation_history VALUES
(31, 1, '2016-05-01 00:00:00', 2037.62, 123.00, 234.00, 345.00, 456.00, 567.00, NULL, 50.80, 636.94, 57.90, 14.73, 27.10, 27.79, 4577.88, 33.33, 1.67, 4612.88, 276.77, 4889.66, 342.28, 5231.93, 418.55, 5650.49, NULL),
(32, 2, '2016-05-01 00:00:00', 11.48, NULL, NULL, NULL, NULL, NULL, NULL, 0.15, 33.33, 3.03, 0.77, 1.42, 1.45, 51.64, 33.33, 1.67, 86.64, 5.20, 91.84, 6.43, 98.27, 7.86, 106.13, NULL),
(33, 3, '2016-05-01 00:00:00', 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL),
(34, 4, '2016-05-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 5, '2016-05-01 00:00:00', 50.00, 1.00, 1.00, 1.00, 1.00, 1.00, 1.00, 0.76, 120.00, 10.91, 2.78, 5.11, 5.24, 200.78, 16.67, 0.83, 218.28, 13.10, 231.38, 16.20, 247.58, 19.81, 267.38, 'sd gfds hgfdgh '),
(36, 6, '2016-05-01 00:00:00', 19.32, 100.00, NULL, NULL, NULL, NULL, NULL, 1.61, 0.00, 0.00, 0.00, 0.00, 0.00, 120.93, 0.00, 0.00, 120.93, 7.26, 128.19, 8.97, 137.16, 24.69, 161.85, NULL),
(37, 7, '2016-05-01 00:00:00', 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL),
(38, 8, '2016-05-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 9, '2016-05-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 10, '2016-05-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 11, '2016-05-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 12, '2016-05-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- 
-- Вывод данных для таблицы drawings
--
INSERT INTO drawings VALUES
(1, '2016-04-12 22:38:59', 1, 'Чертеж1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, NULL, NULL, NULL),
(3, '2016-04-12 22:39:02', 3, 'Чуртеж2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 3, 200, NULL, NULL),
(4, '2016-04-12 22:39:04', 4, 'Чартеж3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, NULL, NULL, NULL, NULL),
(5, '2016-04-12 22:39:14', 5, 'Чэртеж4', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 3, NULL, NULL, NULL),
(6, '2016-04-12 22:39:11', 6, 'Чыртеж5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL),
(7, '2016-04-12 22:39:17', 7, 'Чяртеж6', 3, 1, NULL, 5, 7, 1, NULL, 1, 5, 0.164, 1200.00, 201.00, 1, 2, 1500.00, 2, 1, 12, 3, 23, 4, 10, NULL, 'qq af sdfg rtg werg wergf', 0, 3, 3, 0.2, 'sovjwerofj mrpfwe[rofj w[erofk wer[fpo kwe]fp kwer[gfo ijwerpof weproi jwperh ', NULL),
(8, '2016-04-28 14:25:41', 8, 'Можно юзать', 1, 1, NULL, 6, 7, 1, NULL, 3, 10, 0.276, 380.00, 100.00, 5, 6, 654.00, 4, 1, 10, 110, 10, 10, 10, NULL, 'rfvesrg dst hdh dyh', 0, 1, 3, 0.3, '''lkjniunhpou', 381.00),
(9, '2016-04-28 15:51:37', 9, 'Новый чертеж', 1, 1, NULL, 5, 7, 1, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(10, '2016-04-28 15:59:29', 10, 'Новый чертеж', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(11, '2016-04-28 16:01:19', 11, 'Новый чертеж', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 4, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 3, NULL, NULL, 32.50),
(12, '2016-05-04 22:48:19', 12, 'Новый чертеж', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(13, '2016-05-05 15:54:06', 13, 'Новый чертеж', 2, 1, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 8, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL),
(14, '2016-04-12 22:39:17', 7, 'Чяртеж6', 3, 1, NULL, 5, 7, 1, NULL, 1, 5, 0.163, 1200.00, 201.00, 1, 2, 1500.00, 2, 1, 12, 3, 23, 4, 10, NULL, 'qq af sdfg rtg werg wergf', 1, 3, 3, 160, 'sovjwerofj mrpfwe[rofj w[erofk wer[fpo kwe]fp kwer[gfo ijwerpof weproi jwperh ', NULL),
(15, '2016-06-14 22:08:58', 14, 'Новый чертеж', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 10, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(16, '2016-06-14 23:21:31', 15, 'Новый чертеж', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(17, '2016-06-14 23:27:05', 16, 'Новый чертеж', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1500.00, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(18, '2016-06-14 23:32:10', 17, '386.315', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(20, '2016-06-14 23:33:47', 18, '111.222', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5000.00, NULL, NULL, NULL, NULL, 9, NULL, 120, 13, 14, 5, 15, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(22, '2016-06-14 23:45:00', 19, '222.333.1', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6500.00, NULL, NULL, NULL, NULL, 11, NULL, 1, 2, 3, 4, 5, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(23, '2016-06-14 22:08:58', 14, 'Новый чертеж', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 10, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(24, '2016-06-15 20:23:43', 20, 'Новый чертеж', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(25, '2016-06-15 20:31:17', 20, 'Новый чертеж', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL),
(26, '2016-06-15 20:31:17', 20, 'Новый чертеж', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL),
(27, '2016-06-15 20:43:55', 21, '321', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'wrefvwergvwer', 10.00),
(28, '2016-07-13 16:30:13', 22, 'Тест оснастки', 1, 1, NULL, 5, 6, 1, NULL, 6, 10, 0.48400000000000004, 10000.00, 200.00, 13, 14, NULL, 15, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 3, NULL, NULL, 32.50);

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
(21, 1, '2016-03-30 00:00:00', NULL, '2016-03-31 00:00:00', NULL, NULL, 10, 2, NULL, NULL, 0, NULL, 0),
(23, 2, '2016-03-30 00:00:00', NULL, '2016-06-02 00:00:00', NULL, NULL, 10, NULL, NULL, NULL, 0, NULL, 0),
(25, 3, '2016-03-30 00:00:00', NULL, '2016-05-30 00:00:00', NULL, NULL, 100, 3, NULL, NULL, 0, NULL, 0),
(26, 4, '2016-03-30 00:00:00', NULL, '2016-04-11 00:00:00', NULL, NULL, 30, NULL, NULL, NULL, 0, NULL, 0),
(28, 5, '2016-03-30 00:00:00', NULL, '2016-03-31 00:00:00', NULL, NULL, 1, 2, NULL, NULL, 0, NULL, 0),
(31, 6, '2016-03-30 00:00:00', NULL, '2016-05-02 00:00:00', NULL, NULL, 100, NULL, NULL, NULL, 0, NULL, 0),
(40, 7, '2016-03-30 00:00:00', NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, 0, NULL, 0),
(41, 8, '2016-03-30 00:00:00', NULL, '2016-04-21 00:00:00', '2016-06-08 00:00:00', 1, 20, 1, 5, NULL, 0, 1200.00, 0),
(47, 9, '2016-05-05 00:00:00', NULL, '2016-05-31 00:00:00', NULL, NULL, 160, 2, NULL, NULL, 0, NULL, 0),
(48, 10, '2016-05-05 00:00:00', NULL, '2016-06-05 00:00:00', NULL, NULL, 500, 2, NULL, NULL, 0, NULL, 0),
(51, 11, '2016-05-15 00:00:00', NULL, NULL, NULL, NULL, NULL, 2, 5, NULL, 0, NULL, 0),
(52, 12, '2016-05-17 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(53, 13, '2016-05-17 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(54, 14, '2016-05-17 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(56, 15, '2016-05-17 00:00:00', '2016-06-14 00:00:00', '2016-06-19 00:00:00', NULL, NULL, 10, 1, 5, NULL, 0, NULL, 0),
(57, 16, '2016-05-17 00:00:00', NULL, NULL, '2016-06-01 00:00:00', 2, NULL, 2, 5, 9500.00, 0, NULL, 0),
(58, 17, '2016-05-17 00:00:00', NULL, NULL, NULL, NULL, NULL, 3, 5, NULL, 0, NULL, 0),
(59, 18, '2016-05-18 00:00:00', NULL, NULL, '2016-05-18 00:00:00', NULL, NULL, 2, 5, NULL, 0, NULL, 0),
(60, 19, '2016-05-19 00:00:00', NULL, '2016-05-27 00:00:01', '2016-05-20 00:00:00', NULL, 9, 2, 5, 120000.00, 0, NULL, 0),
(62, 20, '2016-06-14 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(72, 21, '2016-06-14 00:00:00', '2016-06-14 00:00:00', '2016-06-20 00:00:00', '2016-06-22 00:00:00', NULL, 3, 1, 5, 7600.00, 0, NULL, 0),
(73, 22, '2016-06-16 00:00:00', NULL, NULL, '2016-06-16 00:00:00', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0);

-- 
-- Вывод данных для таблицы drawing_flowsheet_machines
--
INSERT INTO drawing_flowsheet_machines VALUES
(4, 8, 1, 1, 300.00, 15.00),
(12, 8, 2, 2, 250.00, 20.00),
(13, 8, 3, 3, 200.00, 30.00),
(14, 7, 1, 2, 250.00, 12.00),
(15, 5, 1, 2, NULL, NULL),
(16, 25, 1, 2, 300.00, 15.00),
(17, 27, 1, 2, 350.00, 20.00),
(18, 11, 1, 1, 150.00, 10.00),
(19, 28, 1, 1, 150.00, 10.00);

-- 
-- Вывод данных для таблицы drawing_flowsheet_processes
--
INSERT INTO drawing_flowsheet_processes VALUES
(13, 8, 1, 1, 1, NULL, NULL, NULL, NULL, 20.00, 'павыиавпи'),
(14, 8, 2, 2, 1, NULL, NULL, NULL, NULL, 21.00, 'вапи'),
(15, 8, 3, 3, 1, NULL, NULL, NULL, NULL, 34.00, 'авп вап ипарт арп'),
(16, 8, 4, 4, 1, NULL, NULL, '3', NULL, 65.00, 'т апрт уке у'),
(17, 8, 5, 5, 1, '1', NULL, NULL, NULL, 23.00, 'нуен нек'),
(18, 8, 6, 6, 1, NULL, '2', NULL, NULL, 56.00, 'р уцекп '),
(20, 8, 8, 8, 1, NULL, NULL, NULL, NULL, 9.00, 'р унер кне оукне р'),
(21, 8, 9, 9, 1, NULL, NULL, NULL, NULL, 15.00, 'унекр унекр укре'),
(22, 8, 10, 10, 1, NULL, NULL, NULL, NULL, 14.00, 'уцекп уек р'),
(23, 8, 11, 11, 1, NULL, NULL, NULL, NULL, 34.00, 'еукр ук'),
(24, 8, 13, 13, 1, '321', NULL, '456', NULL, 90.00, 'ер урек'),
(112, 7, 1, 4, 1, NULL, NULL, NULL, NULL, 15.00, NULL),
(113, 7, 2, 8, 1, NULL, NULL, NULL, NULL, 20.00, NULL),
(114, 5, 1, 8, 1, NULL, NULL, NULL, NULL, 10.00, NULL),
(115, 25, 1, 1, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(116, 25, 2, 2, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(117, 25, 3, 3, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(118, 25, 4, 4, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(119, 25, 5, 5, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(120, 25, 6, 6, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(121, 25, 7, 7, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(122, 25, 8, 8, 1, NULL, NULL, NULL, NULL, 10.00, NULL),
(123, 25, 9, 9, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(124, 25, 10, 10, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(125, 25, 11, 11, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(126, 25, 12, 12, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(127, 27, 1, 1, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(128, 27, 2, 2, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(129, 27, 3, 3, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(130, 27, 4, 4, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(131, 27, 5, 5, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(132, 27, 6, 6, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(133, 27, 7, 7, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(134, 27, 8, 8, 1, NULL, NULL, NULL, NULL, 10.00, NULL),
(135, 27, 9, 9, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(136, 27, 10, 10, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(137, 27, 11, 11, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(138, 27, 12, 12, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(139, 11, 1, 1, 1, NULL, NULL, NULL, NULL, 1.00, NULL),
(140, 11, 2, 2, 1, NULL, NULL, NULL, NULL, 5.00, NULL),
(141, 11, 3, 3, 1, NULL, NULL, NULL, NULL, 2.00, NULL),
(142, 11, 4, 4, 1, NULL, NULL, NULL, NULL, 2.00, NULL),
(143, 11, 5, 5, 1, NULL, NULL, NULL, NULL, 0.50, NULL),
(144, 11, 6, 6, 1, NULL, NULL, NULL, NULL, 10.00, NULL),
(145, 11, 7, 7, 1, NULL, NULL, NULL, NULL, 1.00, NULL),
(146, 11, 8, 8, 1, NULL, NULL, NULL, NULL, 10.00, NULL),
(147, 11, 9, 9, 1, NULL, NULL, NULL, NULL, 1.00, NULL),
(148, 11, 10, 10, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(149, 11, 11, 11, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(150, 28, 1, 1, 1, NULL, NULL, NULL, NULL, 10.00, NULL),
(151, 28, 2, 2, 1, NULL, NULL, NULL, NULL, 10.00, NULL),
(152, 28, 3, 3, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(153, 28, 4, 4, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(154, 28, 5, 5, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(155, 28, 6, 6, 1, NULL, NULL, NULL, NULL, 0.50, NULL),
(156, 28, 7, 7, 1, NULL, NULL, NULL, NULL, 1.00, NULL),
(157, 28, 8, 8, 1, NULL, NULL, NULL, NULL, 5.00, NULL),
(158, 28, 9, 9, 1, NULL, NULL, NULL, NULL, 1.00, NULL),
(159, 28, 10, 10, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(160, 28, 11, 11, 1, NULL, NULL, NULL, NULL, 5.00, NULL);

-- 
-- Вывод данных для таблицы equipment_payments
--
INSERT INTO equipment_payments VALUES
(1, 18, '2016-06-17 00:00:00', 100.00, NULL, 0),
(2, 18, '2016-06-17 00:00:00', 900.00, NULL, 0);

-- 
-- Вывод данных для таблицы payments
--
INSERT INTO payments VALUES
(1, 60, '2016-06-01 23:26:40', '36', '19-1', 12000.00, 'полная оплата', 0),
(2, 60, '2016-06-17 00:00:00', '37', '19-2', 1000.00, 'еще чуток', 0);

-- 
-- Вывод данных для таблицы report_of_completion_items
--
INSERT INTO report_of_completion_items VALUES
(1, 41, 0, 1),
(2, 41, 1, 2),
(3, 41, 2, 3),
(4, 41, 3, 4),
(5, 41, 4, 5);

-- 
-- Вывод данных для таблицы request_details
--
INSERT INTO request_details VALUES
(1, 41, 1, 4, 1, 1, NULL, NULL, 12, 15.31, NULL, 183.74, NULL, NULL, 0, 0),
(2, 41, 2, 3, NULL, 1, '123', 12, 2, 0.00, NULL, 0.00, 5, NULL, 0, 0),
(3, 41, 3, 8, 1, 1, '321', NULL, 3, 250.00, 267.38, 750.00, 6, NULL, 3, 0),
(8, 41, 8, 7, 3, 1, NULL, NULL, 4, 300.00, 5626.91, 1200.00, 5, 'примечание примечание примечание примечание', 0, 0),
(9, 41, 9, 3, 3, NULL, 'asdfasdfs', 123, 50, 200.00, NULL, 10000.00, NULL, NULL, 0, 0),
(10, 41, 10, 4, 1, 1, NULL, NULL, 6, 0.00, NULL, 0.00, NULL, NULL, 0, 0),
(12, 41, 12, 13, 2, 1, NULL, 323, 9, 0.00, 0.00, 0.00, 5, NULL, 0, 0),
(13, 47, 1, 7, 4, 1, NULL, NULL, 0, 0.00, NULL, 0.00, NULL, NULL, 0, 0),
(14, 47, 2, 6, NULL, NULL, NULL, NULL, 0, 0.00, NULL, 0.00, NULL, NULL, 0, 0),
(15, 48, 1, 3, NULL, NULL, NULL, NULL, 0, 0.00, NULL, 0.00, NULL, NULL, 0, 0),
(16, 48, 2, 7, NULL, NULL, NULL, NULL, 0, 0.00, NULL, 0.00, NULL, NULL, 0, 0),
(17, 56, 1, 8, 1, 1, NULL, NULL, 10, 250.00, 267.38, 2500.00, 6, NULL, 3, 0),
(18, 57, 1, 8, 1, 1, NULL, NULL, 25, 380.00, 267.38, 9500.00, 6, NULL, 1, 0),
(19, 58, 1, 8, 1, 1, NULL, NULL, 100, 250.00, 267.38, 25000.00, 6, NULL, 3, 0),
(20, 59, 1, 8, 1, 1, NULL, NULL, 20, 250.00, 267.38, 5000.00, 6, NULL, 3, 0),
(21, 60, 1, 7, 3, 1, NULL, 0, 100, 1200.00, 5650.49, 120000.00, 5, NULL, 2, 0),
(22, 72, 1, 8, 1, 1, NULL, NULL, 20, 380.00, 267.38, 7600.00, 6, NULL, 2, 0),
(23, 73, 1, 8, 1, 1, NULL, NULL, 0, 380.00, 267.38, 0.00, 6, NULL, 1, 0);

-- 
-- Вывод данных для таблицы rolling_records
--
INSERT INTO rolling_records VALUES
(1, 1, '2016-05-06 00:00:00', 3, 3, 6, 12, '1sdafsdfvsfd', 0);

-- 
-- Вывод данных для таблицы shaving_records
--
INSERT INTO shaving_records VALUES
(1, 1, 1, '2016-05-06 00:00:00', 8, 1, 1000, 10, 0),
(2, 2, 2, '2016-06-22 00:00:00', 8, 2, 100, 10, 0),
(3, 3, 1, '2016-06-22 00:00:00', 8, 2, 1000, 10, 0);

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
-- Вывод данных для таблицы work_item_employee_package
--
INSERT INTO work_item_employee_package VALUES
(1, '2016-05-17 00:00:00', 1, 'формовой'),
(2, '2016-05-16 00:00:00', 1, 'формовой'),
(3, '2016-05-19 00:00:00', 1, 'участок'),
(4, '2016-05-20 00:00:00', 2, 'sdfs dgdsg '),
(5, '2016-06-16 00:00:00', 2, NULL),
(6, '2016-06-17 00:00:00', 1, NULL),
(7, '2016-06-16 00:00:00', 1, NULL);

-- 
-- Вывод данных для таблицы shipments
--
INSERT INTO shipments VALUES
(1, 1, '2016-06-01', 60, 1, 1, 1, 0, 0, '1', 2, '21', 2, 123, 'sfdg', 'sdgf', 454545.00, 0, NULL, NULL),
(2, 2, '2016-06-01', 57, 1, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(3, 1, '2016-06-01', 60, 1, 1, 1, 0, 0, 'saf s21', 2, '12 от 12.12.12', 1, 50, 'Он', 'Она', 50000.00, 1, NULL, NULL),
(4, 1, '2016-06-01', 60, 1, 1, 1, 0, 0, 'saf s21', 2, '12 от 12.12.12', 1, 50, 'Он', 'Она', 50000.00, 1, NULL, NULL),
(5, 3, '2016-06-20', 60, 2, 2, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2016, '2016-06-20'),
(6, 4, '2016-06-21', 60, 2, 2, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(7, 5, '2016-07-11', 56, 1, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2016, '2016-07-11');

-- 
-- Вывод данных для таблицы work_item_employee_package_machines
--
INSERT INTO work_item_employee_package_machines VALUES
(1, 4, 500, 96, 2),
(2, 4, 0, 0, 1),
(3, 4, 0, 0, 3),
(4, 7, 50, 0, 1);

-- 
-- Вывод данных для таблицы work_items
--
INSERT INTO work_items VALUES
(7, '2016-05-16', 1, 8, 183, 20, 15, 0, NULL, 1, NULL, 0, '16.05.2016/1'),
(9, '2016-05-13', 1, 7, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, '13.05.2016/1'),
(10, '2016-05-13', 2, 6, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, '13.05.2016/2'),
(11, '2016-05-13', 3, 5, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, '13.05.2016/3'),
(12, '2016-05-13', 4, 1, NULL, 50, NULL, NULL, NULL, 1, NULL, 0, '13.05.2016/4'),
(17, '2016-05-17', 1, 8, 168, 100, 50, NULL, NULL, 1, NULL, 0, '17.05.2016/1'),
(18, '2016-05-18', 1, 8, 118, 110, 100, NULL, NULL, 1, NULL, 0, '18.05.2016/1'),
(19, '2016-05-19', 1, 8, 18, 25, 25, 10, NULL, 1, NULL, 0, '19.05.2016/1'),
(20, '2016-05-20', 1, 8, 3, 15, 5, 2, NULL, 2, 12, 0, '20.05.2016/1'),
(21, '2016-05-20', 2, 7, 100, 50, 25, 1, NULL, 2, 14, 0, '20.05.2016/2'),
(27, '2016-06-16', 1, 8, 20, 10, 10, 2, NULL, 1, 4, 1, '16.06.2016/1'),
(28, '2016-06-17', 1, 9, 0, 10, NULL, NULL, NULL, 1, NULL, 0, '17.06.2016/1'),
(29, '2016-06-17', 2, 1, 0, 5, NULL, NULL, NULL, 2, NULL, 0, '17.06.2016/2');

-- 
-- Вывод данных для таблицы shipment_items
--
INSERT INTO shipment_items VALUES
(1, 1, 1, 21, 23, 1200.00, 18, 'eg', 10, 5, '20.05.2016/2'),
(2, 2, 1, 18, 25, 250.00, 18, NULL, NULL, NULL, NULL),
(3, 5, 1, 21, 2, 1200.00, 18, 'упак', 2, 120, '20.05.2016/2');

-- 
-- Вывод данных для таблицы work_item_request_details
--
INSERT INTO work_item_request_details VALUES
(124, 7, 3, 0, 3),
(125, 7, 17, 1, 10),
(126, 7, 18, 2, 2),
(127, 17, 18, 0, 48),
(128, 17, 19, 1, 2),
(129, 18, 19, 0, 98),
(130, 18, 20, 1, 2),
(131, 19, 20, 0, 15),
(135, 20, 20, 0, 3),
(137, 21, 21, 0, 24),
(145, 27, 22, 0, 8);

-- 
-- Вывод данных для таблицы shipment_item_work_items
--
INSERT INTO shipment_item_work_items VALUES
(14, 2, 7, 15),
(15, 2, 17, 10),
(21, 1, 21, 23),
(29, 3, 21, 2);

-- 
-- Восстановить предыдущий режим SQL (SQL mode)
-- 
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

-- 
-- Включение внешних ключей
-- 
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;