--
-- Скрипт сгенерирован Devart dbForge Studio for MySQL, Версия 7.1.13.0
-- Домашняя страница продукта: http://www.devart.com/ru/dbforge/mysql/studio
-- Дата скрипта: 16.08.2016 22:10:55
-- Версия сервера: 5.7.12
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
  is_customer_owned INT(11) NOT NULL DEFAULT 0,
  created_date DATETIME DEFAULT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB
AUTO_INCREMENT = 71
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
AUTO_INCREMENT = 8
AVG_ROW_LENGTH = 2340
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
AUTO_INCREMENT = 15
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
AUTO_INCREMENT = 21
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
AUTO_INCREMENT = 25
AVG_ROW_LENGTH = 2730
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
AUTO_INCREMENT = 16
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
AUTO_INCREMENT = 6
AVG_ROW_LENGTH = 40960
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
  access_type_enum INT(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (id),
  UNIQUE INDEX UK_jobs_login (login)
)
ENGINE = INNODB
AUTO_INCREMENT = 26
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
AUTO_INCREMENT = 29
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
AUTO_INCREMENT = 27
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
AUTO_INCREMENT = 6
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
AUTO_INCREMENT = 8
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
AUTO_INCREMENT = 11
AVG_ROW_LENGTH = 1820
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'дневной наряд'
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
AUTO_INCREMENT = 34
AVG_ROW_LENGTH = 1024
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
AUTO_INCREMENT = 19
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
AUTO_INCREMENT = 4
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
    REFERENCES contracts(id) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT FK_requests_customer_id FOREIGN KEY (customer_id)
    REFERENCES contragents(id) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT FK_requests_manufacturer_id FOREIGN KEY (manufacturer_id)
    REFERENCES contragents(id) ON DELETE NO ACTION ON UPDATE NO ACTION
)
ENGINE = INNODB
AUTO_INCREMENT = 126
AVG_ROW_LENGTH = 3276
CHARACTER SET utf8
COLLATE utf8_general_ci
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы drawing_calculation_history
--
DROP TABLE IF EXISTS drawing_calculation_history;
CREATE TABLE drawing_calculation_history (
  id INT(11) NOT NULL AUTO_INCREMENT,
  drawing_id INT(11) NOT NULL,
  calculation_id INT(11) NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT FK_drawing_calculation_history_calculations_id FOREIGN KEY (calculation_id)
    REFERENCES calculations(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_drawing_calculation_history_drawings_id FOREIGN KEY (drawing_id)
    REFERENCES drawings(id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 40
AVG_ROW_LENGTH = 420
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
AVG_ROW_LENGTH = 963
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
AUTO_INCREMENT = 162
AVG_ROW_LENGTH = 116
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
AUTO_INCREMENT = 2
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
AUTO_INCREMENT = 5
AVG_ROW_LENGTH = 4096
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
AUTO_INCREMENT = 51
AVG_ROW_LENGTH = 356
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
    REFERENCES details(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_request_details_drawings_id FOREIGN KEY (drawing_id)
    REFERENCES drawings(id) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT FK_request_details_groups_id FOREIGN KEY (group_id)
    REFERENCES groups(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_request_details_materials_id FOREIGN KEY (material_id)
    REFERENCES materials(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_request_details_requests_id FOREIGN KEY (request_id)
    REFERENCES requests(id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 40
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
AUTO_INCREMENT = 4
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
    REFERENCES employees(id) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT FK_shaving_records_shaver_employees_id FOREIGN KEY (shaver_employee_id)
    REFERENCES employees(id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 9
AVG_ROW_LENGTH = 8192
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
    REFERENCES requests(id) ON DELETE NO ACTION ON UPDATE NO ACTION
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
AUTO_INCREMENT = 3
AVG_ROW_LENGTH = 8192
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
AUTO_INCREMENT = 13
AVG_ROW_LENGTH = 1365
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
    REFERENCES contragents(id) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT FK_shipments_payments_id FOREIGN KEY (payment_id)
    REFERENCES payments(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_shipments_recipients_id FOREIGN KEY (recipient_id)
    REFERENCES contragents(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_shipments_requests_id FOREIGN KEY (request_id)
    REFERENCES requests(id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 10
AVG_ROW_LENGTH = 1820
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
  UNIQUE INDEX UK_work_item_employee_package_machines (work_item_employee_package_id, machine_id),
  CONSTRAINT FK_work_item_emp_package_machines_work_item_emp_package_id FOREIGN KEY (work_item_employee_package_id)
    REFERENCES work_item_employee_package(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_work_item_employee_package_machines_machines_id FOREIGN KEY (machine_id)
    REFERENCES machines(id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 13
AVG_ROW_LENGTH = 1489
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
AUTO_INCREMENT = 42
AVG_ROW_LENGTH = 585
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
AUTO_INCREMENT = 10
AVG_ROW_LENGTH = 2048
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
AUTO_INCREMENT = 28
AVG_ROW_LENGTH = 2048
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
AUTO_INCREMENT = 29
AVG_ROW_LENGTH = 2048
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'распределение отгруженных деталей по выполненным партиям'
ROW_FORMAT = DYNAMIC;

--
-- Описание для представления material_movings
--
DROP VIEW IF EXISTS material_movings CASCADE;
CREATE OR REPLACE 
	DEFINER = 'root'@'%'
VIEW material_movings
AS
	select 1 AS `rec_type`,`mar`.`waybill_date` AS `date`,`mar`.`material_id` AS `material_Id`,`mar`.`count` AS `COUNT` from `material_arrival_records` `mar` where (`mar`.`is_deleted` = 0) union all select 2 AS `rec_type`,`r`.`reg_date` AS `reg_date`,`d`.`material_id` AS `material_id`,(`rd`.`count` * `d`.`mass_with_shruff`) AS `rd.count * d.mass_with_shruff` from ((`request_details` `rd` join `requests` `r` on((`rd`.`request_id` = `r`.`id`))) join `drawings` `d` on((`rd`.`drawing_id` = `d`.`id`))) where ((`d`.`material_id` is not null) and (`r`.`is_deleted` = 0)) union all select 3 AS `rec_type`,`wi`.`work_date` AS `work_date`,`d`.`material_id` AS `material_id`,(`wi`.`task_count` * `d`.`mass_with_shruff`) AS `wi.task_count * d.mass_with_shruff` from (`work_items` `wi` join `drawings` `d` on((`wi`.`drawing_id` = `d`.`id`))) where (`d`.`material_id` is not null) union all select 4 AS `rec_type`,`s`.`date` AS `date`,`d`.`material_id` AS `material_id`,(`si`.`count` * `d`.`mass_with_shruff`) AS `si.count * d.mass_with_shruff` from (((`shipment_items` `si` join `request_details` `rd` on((`si`.`request_detail_id` = `rd`.`id`))) join `drawings` `d` on((`rd`.`drawing_id` = `d`.`id`))) join `shipments` `s` on((`si`.`shipment_id` = `s`.`id`))) where (`s`.`is_deleted` = 0);

-- 
-- Вывод данных для таблицы additional_infos
--

-- Таблица rti.additional_infos не содержит данных

-- 
-- Вывод данных для таблицы calculations
--
INSERT INTO calculations VALUES
(9, 1400.00, 10.00, 30.00, NULL, NULL, -12.00, NULL, 99.96, 0.06, 0.01, 0.02, 0.06, 0.05, 1528.16, 0.03, 152.82, 1681.00, 50.43, 1731.43, 432.86, 2164.28, 389.57, 2553.86, NULL, 0, '2016-07-22 21:49:22'),
(10, 15.02, 0.00, NULL, NULL, NULL, 0.00, NULL, 1.05, 1.74, 0.16, 0.59, 1.70, 1.51, 21.76, 0.03, 2.18, 23.96, 0.72, 24.68, 6.17, 30.85, 5.55, 36.41, NULL, 0, '2016-07-22 21:49:22'),
(11, 0.02, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 19.08, 1.73, 6.45, 18.73, 16.65, 62.67, 20.00, 6.27, 88.94, 2.67, 91.61, 22.90, 114.51, 20.61, 135.12, NULL, 0, '2016-07-22 21:49:22'),
(12, 36.72, NULL, NULL, NULL, NULL, NULL, NULL, 2.57, 38.17, 3.47, 12.91, 37.48, 33.31, 164.63, 20.00, 16.46, 201.09, 6.03, 207.12, 51.78, 258.90, 46.60, 305.51, NULL, 0, '2016-07-22 21:49:22'),
(13, 4.15, NULL, NULL, NULL, NULL, NULL, NULL, 0.29, 6.85, 0.62, 2.32, 6.73, 5.98, 26.93, 2.50, 2.69, 32.13, 0.96, 33.09, 8.27, 41.36, 7.45, 48.81, NULL, 1, '2016-07-22 21:49:22'),
(14, 4.15, NULL, NULL, NULL, NULL, NULL, NULL, 0.29, 6.94, 0.63, 2.35, 6.81, 6.06, 27.23, 2.50, 2.72, 32.45, 0.97, 33.42, 8.36, 41.78, 7.52, 49.30, NULL, 0, '2016-07-22 21:49:22'),
(15, 8.30, NULL, NULL, NULL, NULL, NULL, 0.00, 0.58, 10.41, 0.95, 3.52, 10.22, 9.09, 43.06, 0.15, 4.31, 47.52, 1.43, 48.94, 12.24, 61.18, 11.01, 72.19, NULL, 0, '2016-07-22 21:49:22'),
(16, 8.30, NULL, NULL, NULL, NULL, NULL, NULL, 0.58, 10.41, 0.95, 3.52, 10.22, 9.09, 43.06, 0.15, 4.31, 47.52, 1.43, 48.94, 12.24, 61.18, 11.01, 72.19, NULL, 0, '2016-07-22 21:49:22'),
(17, 12.00, NULL, NULL, NULL, NULL, NULL, NULL, 0.84, 16.00, 1.45, 5.41, 15.71, 13.96, 65.38, 7.44, 4.58, 77.39, 0.77, 78.17, 19.54, 97.71, 17.59, 115.29, NULL, 0, '2016-07-22 21:49:22'),
(18, 10.72, NULL, NULL, NULL, NULL, NULL, NULL, 0.75, 14.75, 1.34, 4.99, 14.48, 12.87, 59.90, 7.44, 4.19, 71.53, 0.72, 72.24, 18.06, 90.30, 16.25, 106.56, NULL, 0, '2016-07-22 21:49:22'),
(19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2016-07-22 21:49:22'),
(20, 1.10, NULL, NULL, NULL, NULL, NULL, NULL, 0.08, 5.21, 0.47, 1.76, 5.11, 4.54, 18.27, 1.25, 1.28, 20.80, 0.21, 21.01, 5.25, 26.26, 4.73, 30.98, NULL, 0, '2016-07-22 21:49:22'),
(21, 210.80, NULL, 98.00, NULL, NULL, 200.09, NULL, 35.62, 178.90, 16.26, 60.50, 175.65, 156.13, 1131.95, 85.00, 79.24, 1296.19, 12.96, 1309.15, 327.29, 1636.45, 294.56, 1931.00, NULL, 0, '2016-07-22 21:49:22'),
(22, 232.56, NULL, 60.00, NULL, NULL, 100.00, NULL, 27.48, 90.22, 8.20, 30.51, 88.58, 78.74, 716.29, 85.00, 71.63, 872.92, 26.19, 899.11, 224.78, 1123.88, 202.30, 1326.18, NULL, 0, '2016-07-22 21:49:22'),
(23, 3.60, NULL, NULL, NULL, NULL, NULL, NULL, 0.25, 17.35, 1.58, 5.87, 17.03, 15.14, 60.82, 0.75, 6.08, 67.66, 2.03, 69.69, 17.42, 87.11, 15.68, 102.79, NULL, 0, '2016-07-22 21:49:22'),
(24, 3.60, NULL, NULL, NULL, NULL, NULL, NULL, 0.25, 17.35, 1.58, 5.87, 17.03, 15.14, 60.82, 0.75, 6.08, 67.66, 2.03, 69.69, 17.42, 87.11, 15.68, 102.79, NULL, 0, '2016-07-22 21:49:22'),
(25, 1.36, NULL, NULL, NULL, NULL, NULL, 0.92, 0.16, 2.89, 0.26, 0.98, 2.84, 2.52, 11.93, 2.48, 1.19, 15.60, 0.47, 16.07, 4.02, 20.09, 3.62, 23.70, NULL, 0, '2016-07-22 21:49:22'),
(26, 1.36, NULL, NULL, NULL, NULL, NULL, 0.00, 0.10, 2.89, 0.26, 0.98, 2.84, 2.52, 10.95, 2.48, 1.10, 14.52, 0.44, 14.96, 3.74, 18.70, 3.37, 22.07, NULL, 0, '2016-07-22 21:49:22'),
(27, 6.94, NULL, NULL, NULL, NULL, NULL, 2.51, 0.66, 8.67, 0.79, 2.93, 8.51, 7.57, 38.58, 8.75, 3.86, 51.18, 1.54, 52.72, 13.18, 65.90, 11.86, 77.76, NULL, 0, '2016-07-22 21:49:22'),
(28, 6.94, NULL, NULL, NULL, NULL, NULL, NULL, 0.49, 17.35, 1.58, 5.87, 17.03, 15.14, 64.39, 8.75, 6.44, 79.58, 2.39, 81.97, 20.49, 102.46, 18.44, 120.90, NULL, 0, '2016-07-22 21:49:22'),
(29, 6.94, 1.30, NULL, NULL, NULL, NULL, 2.51, 0.75, 8.67, 0.79, 2.93, 8.51, 7.57, 39.97, 8.75, 4.00, 52.72, 1.58, 54.30, 13.58, 67.88, 12.22, 80.09, NULL, 0, '2016-07-22 21:53:44'),
(30, 6.94, 1.35, NULL, NULL, NULL, NULL, 2.51, 0.76, 8.67, 0.79, 2.93, 8.51, 7.57, 40.03, 8.75, 4.00, 52.78, 1.58, 54.36, 13.59, 67.95, 12.23, 80.18, NULL, 0, '2016-07-22 21:54:32'),
(31, 6.94, 0.00, NULL, NULL, NULL, NULL, 2.51, 0.66, 8.67, 0.79, 2.93, 8.51, 7.57, 38.58, 8.75, 3.86, 51.19, 1.54, 52.72, 13.18, 65.91, 11.86, 77.77, NULL, 0, '2016-07-22 21:55:24'),
(32, 13.00, NULL, NULL, NULL, NULL, NULL, NULL, 0.91, 16.00, 1.45, 5.41, 15.71, 13.96, 66.45, 4.96, 6.64, 78.05, 2.34, 80.39, 20.10, 100.49, 18.09, 118.58, NULL, 0, '2016-07-25 13:18:13'),
(33, 13.00, NULL, NULL, NULL, NULL, NULL, NULL, 0.91, 18.00, 1.64, 6.09, 17.67, 15.71, 73.02, 4.96, 7.30, 85.28, 2.56, 87.83, 21.96, 109.79, 19.76, 129.55, NULL, 0, '2016-07-25 13:19:05'),
(34, 20.00, NULL, NULL, NULL, NULL, NULL, NULL, 1.40, 20.00, 1.82, 6.76, 19.64, 17.45, 87.07, 4.96, 8.71, 100.74, 3.02, 103.76, 25.94, 129.70, 23.35, 153.05, NULL, 0, '2016-07-25 13:19:30'),
(35, 5.00, NULL, NULL, NULL, NULL, NULL, NULL, 0.35, 7.00, 0.64, 2.37, 6.87, 6.11, 28.34, 2.50, 2.83, 33.67, 1.01, 34.68, 8.67, 38.35, 6.90, 45.25, NULL, 1, '2016-07-26 15:59:29'),
(36, 6.00, NULL, NULL, NULL, NULL, NULL, NULL, 0.42, 8.00, 0.73, 2.71, 7.85, 6.98, 32.69, 2.50, 3.27, 38.46, 1.15, 39.61, 9.90, 43.51, 7.83, 51.35, NULL, 1, '2016-07-26 15:59:57'),
(37, 6.00, NULL, NULL, NULL, NULL, NULL, NULL, 0.42, 20.00, 1.82, 6.76, 19.64, 17.45, 72.09, 2.50, 7.21, 81.80, 2.45, 84.26, 21.06, 105.32, 18.96, 124.28, NULL, 0, '2016-07-26 16:12:26'),
(38, 8.00, NULL, NULL, NULL, NULL, NULL, NULL, 0.56, 10.00, 0.91, 3.38, 9.82, 8.73, 41.40, 2.50, 4.14, 48.04, 1.44, 49.48, 12.37, 61.85, 11.13, 72.98, NULL, 0, '2016-07-26 16:15:37'),
(39, 10.00, NULL, NULL, NULL, NULL, NULL, NULL, 0.70, 5.00, 0.45, 1.69, 4.91, 4.36, 27.12, 2.50, 2.71, 32.33, 0.97, 33.30, 8.32, 41.62, 7.49, 49.12, NULL, 0, '2016-07-26 16:16:02'),
(40, 9.00, NULL, NULL, NULL, NULL, NULL, 0.00, 0.63, 15.00, 1.36, 5.07, 14.73, 13.09, 58.88, 0.15, 5.89, 64.92, 1.95, 66.87, 16.72, 83.59, 15.05, 98.63, NULL, 0, '2016-07-26 16:19:36'),
(41, 10.00, NULL, NULL, NULL, NULL, NULL, 0.00, 0.70, 16.00, 1.45, 5.41, 15.71, 13.96, 63.24, 0.15, 6.32, 69.71, 2.09, 71.80, 17.95, 89.75, 16.16, 105.91, NULL, 0, '2016-07-26 16:20:05'),
(42, 11.00, NULL, NULL, NULL, NULL, NULL, 0.00, 0.77, 20.00, 1.82, 6.76, 19.64, 17.45, 77.44, 0.15, 7.74, 85.34, 2.56, 87.90, 21.97, 109.87, 19.78, 129.65, NULL, 0, '2016-07-26 16:21:40'),
(43, 11.00, 50.00, NULL, NULL, NULL, NULL, 0.00, 0.77, 20.00, 1.82, 6.76, 19.64, 17.45, 77.44, 0.15, 7.74, 85.34, 2.56, 87.90, 21.97, 109.87, 19.78, 129.65, NULL, 0, '2016-07-27 09:07:29'),
(44, 11.00, 50.00, 50.00, NULL, NULL, NULL, 0.00, 7.77, 20.00, 1.82, 6.76, 19.64, 17.45, 184.44, 0.15, 18.44, 203.04, 6.09, 209.13, 52.28, 261.41, 47.05, 308.46, NULL, 0, '2016-07-27 09:07:52'),
(45, 1400.00, 50.00, 30.00, NULL, NULL, -12.00, NULL, 102.76, 0.06, 0.01, 0.02, 0.06, 0.05, 1570.96, 0.03, 157.10, 1728.08, 51.84, 1779.92, 444.98, 2224.90, 400.48, 2625.38, NULL, 0, '2016-07-27 09:14:17'),
(46, 1400.00, 51.00, 30.00, NULL, NULL, -12.00, NULL, 102.83, 0.06, 0.01, 0.02, 0.06, 0.05, 1572.03, 0.03, 157.20, 1729.25, 51.88, 1781.13, 445.28, 2226.42, 400.75, 2627.17, NULL, 0, '2016-07-27 09:17:12'),
(47, 8.00, 0.00, NULL, NULL, NULL, NULL, 2.51, 0.74, 11.00, 1.00, 3.72, 10.80, 9.60, 47.37, 8.75, 4.74, 60.85, 1.83, 62.68, 15.67, 78.35, 14.10, 92.45, NULL, 0, '2016-07-27 09:22:45'),
(48, 1400.00, 10.00, 30.00, NULL, NULL, -12.00, NULL, 99.96, 0.06, 0.01, 0.02, 0.06, 0.05, 1528.16, 0.03, 152.82, 1681.00, 50.43, 1731.43, 432.86, 2164.28, 389.57, 2553.86, NULL, 0, '2016-07-27 09:38:27'),
(49, 15.26, NULL, NULL, NULL, NULL, NULL, 2.00, 1.21, 3.08, 0.28, 1.04, 3.02, 2.69, 28.59, 1.42, 2.86, 32.86, 0.99, 33.85, 8.46, 42.31, 7.62, 49.92, NULL, 0, '2016-07-27 19:15:04'),
(50, 15.26, NULL, NULL, NULL, NULL, NULL, 2.00, 1.21, 3.08, 0.28, 1.04, 3.03, 2.69, 28.60, 1.42, 2.86, 32.88, 0.99, 33.86, 8.47, 42.33, 7.62, 49.95, NULL, 0, '2016-07-27 19:15:05'),
(51, 6.53, NULL, NULL, NULL, NULL, NULL, 3.00, 0.67, 10.33, 0.94, 3.49, 10.14, 9.02, 44.11, 2.44, 4.41, 50.97, 1.53, 52.50, 13.12, 65.62, 11.81, 77.44, NULL, 0, '2016-07-27 19:58:03'),
(52, 6.53, NULL, NULL, NULL, NULL, NULL, NULL, 0.46, 6.33, 0.58, 2.14, 6.22, 5.53, 27.78, 2.44, 2.78, 33.00, 0.99, 33.99, 8.50, 42.49, 7.65, 50.14, NULL, 0, '2016-07-27 19:58:04'),
(53, 17.28, NULL, NULL, NULL, NULL, NULL, NULL, 1.21, 6.94, 0.63, 2.35, 6.81, 6.06, 41.28, 2.50, 4.13, 47.91, 1.44, 49.34, 12.34, 61.68, 11.10, 72.78, NULL, 0, '2016-07-27 20:21:52'),
(54, 17.28, NULL, NULL, NULL, NULL, NULL, NULL, 1.21, 6.94, 0.63, 2.35, 6.81, 6.06, 41.28, 2.50, 4.13, 47.91, 1.44, 49.34, 12.34, 61.68, 11.10, 72.78, NULL, 0, '2016-07-27 20:21:53'),
(55, 26.88, NULL, NULL, NULL, NULL, NULL, NULL, 1.88, 0.00, 0.00, 0.00, 0.00, 0.00, 28.76, 7.50, 2.88, 39.14, 1.17, 40.31, 10.08, 50.39, 9.07, 59.46, NULL, 0, '2016-07-27 20:36:52'),
(56, 26.88, NULL, NULL, NULL, NULL, NULL, NULL, 1.88, 27.76, 2.52, 9.39, 27.26, 24.23, 119.92, 7.50, 11.99, 139.41, 4.18, 143.59, 35.90, 179.49, 32.31, 211.79, NULL, 0, '2016-07-27 20:36:53'),
(57, 26.88, 5.00, NULL, NULL, NULL, NULL, NULL, 2.23, 0.00, 0.00, 0.00, 0.00, 0.00, 34.11, 7.50, 3.41, 45.02, 1.35, 46.37, 11.59, 57.97, 10.43, 68.40, NULL, 0, '2016-07-27 20:36:52'),
(58, 30.00, 5.00, NULL, NULL, NULL, NULL, NULL, 2.45, 20.00, 1.82, 6.76, 19.64, 17.45, 103.12, 7.50, 10.31, 120.94, 3.63, 124.56, 31.14, 155.70, 28.03, 183.73, NULL, 0, '2016-07-27 20:36:52'),
(59, 55.00, 5.00, NULL, NULL, NULL, NULL, NULL, 4.20, 20.00, 1.82, 6.76, 19.64, 17.45, 129.87, 7.50, 12.99, 150.36, 4.51, 154.87, 38.72, 193.59, 34.85, 228.43, NULL, 0, '2016-08-01 15:37:28'),
(60, 540.00, NULL, NULL, NULL, NULL, NULL, NULL, 37.80, 86.75, 7.89, 29.34, 85.17, 75.71, 862.66, 85.00, 86.27, 1033.92, 31.02, 1064.94, 266.23, 1331.17, 239.61, 1570.78, NULL, 0, NULL),
(61, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 85.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2016-08-02 08:59:32'),
(62, 540.00, NULL, NULL, NULL, NULL, NULL, NULL, 37.80, 43.00, 3.91, 14.54, 42.22, 37.53, 719.00, 85.00, 71.90, 875.90, 26.28, 902.17, 225.54, 1127.72, 202.99, 1330.70, NULL, 0, NULL),
(63, 540.00, NULL, NULL, NULL, NULL, NULL, NULL, 37.80, 43.00, 3.91, 14.54, 42.22, 37.53, 719.00, 85.00, 71.90, 875.90, 26.28, 902.17, 225.54, 1127.72, 202.99, 1330.70, NULL, 0, NULL),
(64, 540.00, NULL, NULL, NULL, NULL, NULL, NULL, 37.80, 43.00, 3.91, 14.54, 42.22, 37.53, 719.00, 85.00, 71.90, 875.90, 26.28, 902.17, 225.54, 1127.72, 202.99, 1330.70, NULL, 0, NULL),
(65, 5.50, NULL, NULL, NULL, NULL, NULL, NULL, 0.39, 6.94, 0.63, 2.35, 6.81, 6.06, 28.67, 4.25, 2.87, 35.79, 1.07, 36.86, 9.22, 46.08, 8.29, 54.38, NULL, 0, NULL),
(66, 5.50, NULL, NULL, NULL, NULL, NULL, NULL, 0.39, 6.94, 0.63, 2.35, 6.81, 6.06, 28.67, 4.25, 2.87, 35.79, 1.07, 36.86, 9.22, 46.08, 8.29, 54.38, NULL, 0, NULL),
(67, 5.50, NULL, NULL, NULL, NULL, NULL, NULL, 0.39, 6.94, 0.63, 2.35, 6.81, 6.06, 28.67, 4.25, 2.87, 35.79, 1.07, 36.86, 9.22, 46.08, 8.29, 54.38, NULL, 0, NULL),
(68, 6.00, NULL, NULL, NULL, NULL, NULL, NULL, 0.42, 7.00, 0.64, 2.37, 6.87, 6.11, 29.41, 4.25, 2.94, 36.60, 1.10, 37.69, 9.42, 47.12, 8.48, 55.60, NULL, 0, '2016-08-05 15:45:26'),
(69, 8.00, NULL, NULL, NULL, NULL, NULL, NULL, 0.56, 8.00, 0.73, 2.71, 7.85, 6.98, 34.83, 4.25, 3.48, 42.56, 1.28, 43.84, 10.96, 54.80, 9.86, 64.66, NULL, 0, '2016-08-05 15:45:55'),
(70, 3.58, NULL, NULL, NULL, NULL, NULL, NULL, 0.25, 10.41, 0.95, 3.52, 10.22, 9.09, 38.01, 4.25, 3.80, 46.06, 1.38, 47.44, 11.86, 59.30, 10.67, 69.97, NULL, 0, '2016-08-10 12:27:22');

-- 
-- Вывод данных для таблицы constants
--
INSERT INTO constants VALUES
(1, 7, 31, 90, 80, 10, 3, 25, 18, 3.47, '2016-01-04 00:00:00', '3000-12-31 00:00:00', 0);

-- 
-- Вывод данных для таблицы contracts
--
INSERT INTO contracts VALUES
(1, '2016-06-08 00:00:00', 1),
(2, '2016-06-09 00:00:00', 1),
(3, '2016-07-12 00:00:00', 1),
(4, '2016-07-19 00:00:00', 1),
(5, '2016-06-27 00:00:00', 1),
(6, '2016-08-02 00:00:00', 1),
(7, '2016-08-02 00:00:00', 2);

-- 
-- Вывод данных для таблицы contragents
--
INSERT INTO contragents VALUES
(1, 1, '?1', 0, '1', '??????????', '1', '89263706340', NULL, '1', '1', '1', '4700181012384234980', '1', '1', '1', '1', '1', '1', '1', '1', '111', 1),
(2, 2, '2', 0, '2', '2', '2', '2', NULL, '2', '2989867547636', '2', '2', '2', '22132346243653456', '2', '2', '2', '2', '2', 'email@server.ru', '22222', 1),
(3, 1, '?1', 0, '11', '1', '1', '1', NULL, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', NULL, 1),
(4, 1, 'G2', 1, '1', '1', '1', '1', NULL, '1', '1', '2', '2', '2', '2', '4', '4', '4', '4', '6', '7', '8', 1),
(5, 1, 'ЗАО "ЭНЕРГОМАШ (Екатеринбург)-Уралэлектротяжмаш"', 0, 'Россия, 620017, Екатеринбург, Фронтовых бригад,22', 'Иванов Иван Иванович', 'Иванов Иван Иванович', '(343) 3245218/3244017', NULL, 'дог. 0403-14-0224 от 08.09.2014г.', '6673197337', '660850001', '40702810000261004126', '30101810800000000945', '335455765345', '235645766767', '454363747', '3747633767', '3787389798907', 'ПАО "Втб24"', 'energomash@mail.ru', NULL, 0),
(6, 1, 'ОАО "Резинапласт"', 1, 'Екатеринбург, ул. Малышева, 15', 'Сидоров Иван Иванович', 'Сидоров Иван Иванович', '+(343)3455663', NULL, 'заявка', '3656478858', '357578946', '37653487626857475', '527627598745787268', '374768987989089', '37678798346', '3656768588', '36556767876', '34767859599', 'ПАО "Втб24"', 'rezina@yandex.ru', NULL, 0),
(7, 2, 'ООО "УЭТМ-Монтаж"', 0, '620017,г.Екатеринбург,ул.Фронтовых бригад,27', 'Холодникова Вера Петровна', 'Холодникова Вера Петровна', '(343) 1234567', NULL, 'Заявка', '4559755965965', '376687866', '56767454834846', '346457687989899', '6786499895', '568959696', '68458494595', '485999090', '656736763476', 'ПАО "Втб24"', NULL, NULL, 0),
(8, 3, 'ООО "Форэс"', 0, '620028, г.Екатеринбург, ул.Крылова,33"А" офис 214', 'Сидоров Иван Михайлович', 'Сидорова Наталья Николаевна', '(343) 2367856', NULL, 'договор 34678 от 25.04.2016', '734858767687456', '465783776857756', '6457639874376875876', '34834768737687876876', '3485685648657', '47577763783', '45347468767', '437685767386', '4538768576', 'СКБ-банк', NULL, NULL, 0),
(9, 2, 'ООО "Промстрой"', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(10, 3, 'ООО "Техрезина"', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(11, 1, 'ООО "ЭЛМА-1"', 2, '620076, г.Екатеринбург, пл.Жуковского, д,1 литер В', 'Холодников Ю.В.', NULL, '(343)295-98-29', NULL, NULL, '6664068381', '667901001', '40702810400000004026', '30101810800000000756', NULL, NULL, NULL, NULL, '046577756', 'ОАО "СКБ-Банк" г.Екатеринбург', '123', NULL, 0),
(12, 2, 'ООО СКБ "Мысль"', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(13, 4, 'ООО "Уральский завод РТИ Эластомер"', 0, '620142, Свердловская обл., г. Екатеринбург, ул. Цвилинга, 6-214/1', NULL, NULL, NULL, NULL, NULL, '6679040290', '667901001', '40702810800250017331', '30101810400000000774', NULL, NULL, NULL, NULL, '046577774', 'ООО Банк "Нейва"', NULL, NULL, 0),
(14, 2, 'ООО СКБ "Мысль"', 2, '620076, г. Екатеринбург, пл. Жуковского, 1 "В"', 'Холодников Юрий Васильевич', 'Раупова Татьяна Васильевна', '(343) 295-98-29, 256-75-25', '(343) 295-98-56', NULL, '6661016177', '667901001', '40702810500000000292', '30101810800000000756', '45.44.2', NULL, '20616938', '1026605242476', '046577756', 'ОАО "СКБ-Банк"', 'sdo_mysl@mail.ru', NULL, 0);

-- 
-- Вывод данных для таблицы details
--
INSERT INTO details VALUES
(1, 1, 'Прокладка', '', 0),
(2, 2, 'deTail132', 'sfv sgth fhg j fe''r;lfq''fr ', 1),
(3, 2, 'Шайба', NULL, 0),
(4, 3, 'Пластина', NULL, 0),
(5, 4, 'Уплотнение', NULL, 0),
(6, 5, 'Диафрагма', NULL, 0),
(7, 6, 'Прессформа', NULL, 0),
(8, 7, 'Мембрана', NULL, 0),
(9, 8, 'Шарик резиновый', NULL, 0),
(10, 9, 'Пробойник', NULL, 0),
(11, 10, 'Заготовка тканевая', NULL, 0),
(12, 11, 'Кольцо уплотнительное', NULL, 0),
(13, 12, 'Вал', NULL, 0),
(14, 13, 'Фланец', NULL, 0),
(15, 14, 'Фланец', NULL, 0),
(16, 15, 'Колпачок', NULL, 0),
(17, 16, 'Манжета', NULL, 0),
(18, 17, 'Букса', NULL, 0),
(19, 18, 'Прокладка силиконовая', NULL, 0),
(20, 19, 'Кольцо', NULL, 0);

-- 
-- Вывод данных для таблицы drivers
--
INSERT INTO drivers VALUES
(1, 1, 'Газель', 'В123ОА', 'Низамутдинов О.В.', '999999', 0),
(2, 2, '????', '?????????', '?????????', '???????????', 1);

-- 
-- Вывод данных для таблицы equipments
--
INSERT INTO equipments VALUES
(1, 1, '????? ????????', 0, 10.000, 0.00, 5, 5, 25, NULL, NULL, NULL, NULL, 0, '?????????? ? ????? ????????', 0),
(2, 2, '????? ????????', 0, 0.000, 0.00, 2, 4, 8, NULL, NULL, NULL, NULL, 0, NULL, 0),
(3, 3, 'Штанец', 0, 125.000, 0.00, 1, 1, 1, NULL, NULL, NULL, NULL, 0, NULL, 0),
(4, 4, 'Зиговка', 4, 54.000, 0.00, 3, 2, 6, NULL, NULL, NULL, NULL, 0, NULL, 0),
(5, 5, 'Шаблон', 0, 124.000, 0.00, 2, 1, 2, NULL, NULL, NULL, NULL, 0, NULL, 0),
(6, 6, 'Гильотина', 0, 87.000, 0.00, 3, 2, 6, NULL, NULL, NULL, NULL, 0, NULL, 0),
(7, 7, 'Штанец', 0, 54.000, 12.00, 2, 1, 2, NULL, NULL, NULL, NULL, 0, NULL, 0),
(8, 8, 'штанец', 1, 40.000, 40.00, 3, 2, 6, 'мхк', 5, '2016-06-24 00:00:00', 20.00, 0, NULL, 0),
(9, 9, 'Шатнец', 4, 0.000, 0.00, 1, 1, 1, 'Микишев', 5, '2016-07-01 00:00:00', NULL, 0, NULL, 0),
(10, 10, 'Прессформа', 0, 0.000, 0.00, 2, 1, 2, NULL, NULL, NULL, NULL, 0, NULL, 0),
(11, 11, 'Прессформа', 0, 0.000, 0.00, 1, 1, 1, NULL, NULL, NULL, NULL, 0, NULL, 0),
(12, 12, 'Новая оснастка', 0, 0.000, 0.00, 1, 1, 1, NULL, NULL, NULL, NULL, 0, NULL, 0),
(13, 13, 'выаы', 0, 0.000, 0.00, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(14, 14, 'впп', 0, 0.000, 0.00, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(15, 15, 'Прессформа', 0, 0.000, 0.00, 4, 3, 12, NULL, NULL, NULL, NULL, 0, NULL, 0),
(16, 16, 'Прессформа', 0, 0.000, 0.00, 1, 2, 2, NULL, NULL, NULL, NULL, 0, NULL, 0),
(17, 17, 'прессформа', 0, 0.000, 0.00, 2, 2, 4, NULL, NULL, NULL, NULL, 0, NULL, 0),
(18, 18, 'Прессформа', 0, 0.000, 0.00, 3, 3, 9, NULL, NULL, NULL, NULL, 0, NULL, 0),
(19, 19, 'Прессформа', 0, 0.000, 0.00, 3, 1, 3, NULL, NULL, NULL, NULL, 0, NULL, 0),
(20, 20, 'Прессформа', 0, 0.000, 0.00, 1, 1, 1, NULL, NULL, NULL, NULL, 0, NULL, 0),
(21, 21, 'Прессформа', 0, 0.000, 0.00, 1, 1, 1, NULL, NULL, NULL, NULL, 0, NULL, 0),
(22, 22, 'Прессоформа', 0, 0.000, 0.00, 1, 2, 2, NULL, NULL, NULL, NULL, 0, NULL, 0),
(23, 23, '11111', 0, 0.000, 0.00, 1, 2, 2, NULL, NULL, NULL, NULL, 0, NULL, 0),
(24, 24, '111111', 0, 0.000, 0.00, 1, 1, 1, NULL, NULL, NULL, NULL, 0, NULL, 0);

-- 
-- Вывод данных для таблицы groups
--
INSERT INTO groups VALUES
(1, 1, '??????1', '?????????? ??? ?????? 1', 1),
(2, 2, 'Group2', 'Note for group 2', 1),
(3, 3, 'Group3', 'Group2+3', 1),
(4, 3, 'wergerwtg', 'etrherthgtery', 1),
(5, 4, '321654321', NULL, 1),
(6, 1, '8БП', NULL, 0),
(7, 2, '8СЯ', NULL, 0),
(8, 3, '5БП', NULL, 1),
(9, 4, '5СЯ', NULL, 1),
(10, 5, '7БП', NULL, 1),
(11, 6, '9БП', NULL, 1),
(12, 7, '8ГГ', NULL, 1),
(13, 8, 'К-', NULL, 1),
(14, 3, 'К-', NULL, 0),
(15, 4, ' ', NULL, 0);

-- 
-- Вывод данных для таблицы images
--
INSERT INTO images VALUES
(1, x'FFD8FFE000104A46494600010100000100010000FFFE003B43524541544F523A2067642D6A7065672076312E3020287573696E6720494A47204A50454720763830292C207175616C697479203D2039300AFFDB0043000302020302020303030304030304050805050404050A070706080C0A0C0C0B0A0B0B0D0E12100D0E110E0B0B1016101113141515150C0F171816141812141514FFDB00430103040405040509050509140D0B0D1414141414141414141414141414141414141414141414141414141414141414141414141414141414141414141414141414FFC00011080272027203012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FD52A28A2800A28A2800A28A2800A28A2800A28A2800A5A28A004A2969280168A4A5A0028A4A5A002928A280014B49450014B4945002D251450014B49450014B494500145145002D251450014514500145141A005A2928A0028A28A0028A28A0028EF45140051451400B49451DE800A28A28016928A2800A28A2800A28A2800A5A4A2800A5A292800A5A4A2800A28A2800A28A28016928A2800A0D145002D252D25002D25145002D14945002D149F85140051451400B45150DD5D436503CF7132410A02CD248C15547A9268025A2BE75F8ABFF000502F819F08A6B8B6D5BC6B6DA85FC19DF65A38FB5CA0FF770A719FA9AF05D6FFE0B3FF096CF3FD99E1CF106A5E9E6A2419FFD0A803F41692BF367FE1F6BE0AFFA277AB7FE0C13FF008DD27FC3ED7C15FF0044EF56FF00C1827FF1BA00FD27A2BF363FE1F6BE0AFF00A277AB7FE0C13FF8DD1FF0FB5F057FD13BD5BFF0609FFC6E803F49E96BF363FE1F6BE0AFFA277AB7FE0C13FF008DD1FF000FB5F057FD13BD5BFF000609FF00C6E803F49A96BF363FE1F6BE0AFF00A277AB7FE0C13FF8DD1FF0FB5F057FD13BD5BFF0609FFC6E803F49E8AFCD7FF87DAF82BFE89DEADFF8304FFE374BFF000FB5F057FD13BD5BFF000609FF00C6E803F49E92BF367FE1F6BE0AFF00A277AB7FE0C13FF8DD1FF0FB5F057FD13BD5BFF0609FFC6E803F49E92BF367FE1F6BE0AFFA277AB7FE0C13FF008DD1FF000FB5F057FD13BD5BFF000609FF00C6E803F49A8AFCD8FF0087DAF82BFE89DEADFF008304FF00E3747FC3ED7C15FF0044EF56FF00C1827FF1BA00FD28A2BF363FE1F6BE0AFF00A277AB7FE0C13FF8DD1FF0FB5F057FD13BD5BFF0609FFC6E803F49E92BF367FE1F6BE0AFFA277AB7FE0C13FF008DD1FF000FB5F057FD13BD5BFF000609FF00C6E803F49A8AFCD8FF0087DAF82BFE89DEADFF008304FF00E374BFF0FB5F057FD13BD5BFF0609FFC6E803F49A8AFCD9FF87DAF82BFE89DEADFF8304FFE3747FC3ED7C15FF44EF56FFC1827FF001BA00FD26A5AFCD7FF0087DAF82BFE89DEADFF008304FF00E374BFF0FB5F057FD13BD5BFF0609FFC6E803F49A8AFCD8FF87DAF82BFE89DEADFF8304FFE374BFF000FB5F057FD13BD5BFF000609FF00C6E803F49A8AFCD9FF0087DAF82BFE89DEADFF008304FF00E3749FF0FB5F057FD13BD5BFF0609FFC6E803F4A292BF367FE1F6BE0AFFA277AB7FE0C13FF008DD27FC3ED7C15FF0044EF56FF00C1827FF1BA00FD27A2BF367FE1F6BE0AFF00A277AB7FE0C13FF8DD1FF0FB5F057FD13BD5BFF0609FFC6E803F49A8AFCD8FF87DAF82BFE89DEADFF8304FFE374BFF000FB5F057FD13BD5BFF000609FF00C6E803F49A8AFCD8FF0087DAF82BFE89DEADFF008304FF00E3747FC3ED7C15FF0044EF56FF00C1827FF1BA00FD28A4AFCD8FF87DAF82BFE89DEADFF8304FFE374BFF000FB5F057FD13BD5BFF000609FF00C6E803F49A8AFCD9FF0087DAF82BFE89DEADFF008304FF00E3747FC3ED7C15FF0044EF56FF00C1827FF1BA00FD27A4AFCD9FF87DAF82BFE89DEADFF8304FFE3747FC3ED7C15FF44EF56FFC1827FF001BA00FD26A3B57E74E91FF0005AAF8717526350F05EB76099FBD1CE937E9B56BD63E1F7FC154BE00F8EAE12DA6F105DF86EE19B6E35AB530C7F5DE091401F5F5158FE17F18E85E36D31351F0FEB165AD583FDDB9B19D6543F8A935B1400B4514940052D2514005145140051451400B49451400514514005145140051452D00251451400B494514005145140051451400628A28A0028A2BE09FF82947EDED2FC01D3C7C3FF035CC67C71A85BF9B757CAC1BFB3616C85C0FF9E8D8246718183CE7800F40FDB13FE0A27E08FD97E29345B031F8AFC72E081A4DAC9FBBB5FF006A771C2F3FC03E6F61D6BF1F3F685FDB1BE27FED29AAC92F8A3C437516939FDD6876533456518F78C1018FFB4C09AF1AD4F53BBD66FE7BDBFB996EEEE772F2CD33166763C9249AAD400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451401D47C3DF8A1E2CF851AFC1AD7847C43A8F87F5185C389AC2E5E2DF8FE160A40653D0A9C823835FA8BFB267FC15E6CB5FBAB0F0BFC62B75D36EE40228FC4D6CA3C977C803CE8D40D9FEF2823D715F925474A00FEA7F4DD4AD358B0B7BEB0BA86F6CAE635961B8B770F1C8846432B0E0823B8AB15F895FF04EEFF8283EA7F03F5ED3FC03E38BD7BFF87F7B308A0B99DC97D25DDBEF03DE2C9C95EDC91E95FB616B750DF5B45716F2A4F04AA1E39236CAB29E841F4A009A928A2800A5A4A28016928A280168A4A2800A28A33400B49451400B49451400B49451400B49451400B4828A2801693B5145002D1499F6A2803C7FF6B0F8FBA6FECDBF0435FF0018DE4D18BD8E3FB369B6EED86B8BA7E115477C72E7D90D7F39FE2FF166ABE3BF146A7E21D6EF66D4356D4676B8B8B99DCBBBB13DC9E78E00F4000AFD01FF0082CDFC607F117C5AF0E7802D2F0BD868569F6CBA811BE5FB44BC2E7FDA5407FEFAAFCE7A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A002BF637FE0913FB554BE3FF0008DF7C29F11EA2D71AE6850FDAB4B7B87CBCD67B82B20279250B27BE18FA57E3957A6FECD1F14EEFE0C7C75F06F8B6D1D94596A1189D55F66F85CEC9149F4DA4FE5401FD2D5155B4CD421D5F4DB4BEB67125BDD449344E3BA30041FC8D59A0028A28A0028A28A0028A28A0028A28A0028A2BCDFE247ED1FF000C7E11798BE2FF001B691A24A8BB8C13DC032F4CFDC5C9C9F4C5007A4515F2AAFF00C14EFF006786B968BFE135DA01C79A6D5F61F7E99FD2BD9FE1AFED0BF0DFE304292783FC63A5EB6CEBB8450CDB6503BE51B0C3F2A00F43A28A2800A28A2800A28A2800A28A280168A4A2803F9AFF00DAB7C6D77F10BF68AF1FEB97739B86B8D5E7119E30B187211463B01815E5156F57D4A4D6354BBBE9BFD6DC4AD2B7D49CD54A0028A28A0028A2B7BC05E163E38F1AE87E1E59C5AB6A97915A09CAEE085D82E71DF19A00C1A2BF577FE1C7567FF456E7FF00C11AFF00F1FA3FE1C7567FF456E7FF00C11AFF00F1FA00FCA2A2BF577FE1C7567FF456E7FF00C11AFF00F1FA3FE1C7567FF456E7FF00C11AFF00F1FA00FCA2A2BF577FE1C7567FF456EE3FF044BFFC7E8FF871D59FFD15B9FF00F046BFFC7E803F28A8AFD5DFF871D59FFD15B9FF00F044BFFC7E8FF871D59FFD15BB8FFC112FFF001FA00FCA2A2BF577FE1C7567FF00456E7FFC11AFFF001FA3FE1C7567FF00456EE3FF00044BFF00C7E803F28A8AFD5DFF00871D59FF00D15B9FFF00046BFF00C7E8FF00871D59FF00D15BB8FF00C112FF00F1FA00FCA2A2BF577FE1C7565FF456EE3FF044BFFC7E8FF871D59FFD15B9FF00F044BFFC7E803F28A8AFD5DFF871D59FFD15B9FF00F046BFFC7E8FF871D59FFD15B9FF00F046BFFC7E803F28A8AFD5DFF871D59FFD15B9FF00F046BFFC7E8FF871D59FFD15B9FF00F046BFFC7E803F28A8AFD5DFF871D59FFD15B9FF00F046BFFC7E8FF871D59FFD15B9FF00F046BFFC7E803F28A8AFD5CFF871D59FFD15B9FF00F046BFFC7E97FE1C7567FF00456E7FFC11AFFF001FA00FCA2A2BF577FE1C7567FF00456E7FFC11AFFF001FA3FE1C7567FF00456E7FFC11AFFF001FA00FCA2A2BF573FE1C7567FF00456E7FFC11AFFF001FA3FE1C7567FF00456E7FFC11AFFF001FA00FCA3A2BF577FE1C7567FF00456E7FFC11AFFF001FA3FE1C7567FF00456E7FFC11AFFF001FA00FCA2A2BF577FE1C7567FF00456E7FFC11AFFF001FA3FE1C7567FF00456E7FFC11AFFF001FA00FCA2A2BF577FE1C7567FF00456E7FFC11AFFF001FA3FE1C7567FF00456E7FFC11AFFF001FA00FCA2A2BF577FE1C7567FF00456E7FFC11AFFF001FA4FF00871D59FF00D15B9FFF00046BFF00C7E803F28E8AFD5DFF00871D59FF00D15B9FFF00046BFF00C7E93FE1C7567FF456E7FF00C11AFF00F1FA00FCA3A2BF577FE1C7567FF456E7FF00C11AFF00F1FA3FE1C7567FF456E7FF00C11AFF00F1FA00FCA2A2BF573FE1C7567FF456E7FF00C11AFF00F1FA3FE1C7567FF456E7FF00C11AFF00F1FA00FCA3A2BF573FE1C7567FF456E7FF00C11AFF00F1FA3FE1C7567FF456E7FF00C11AFF00F1FA00FCA3A2BF573FE1C7567FF456E7FF00C11AFF00F1FA5FF871D59FFD15B9FF00F046BFFC7E803F28A8AFA23F6D7FD9363FD913E20E97E1A8FC48DE255BEB2FB5FDA1ED05B94E71B76EF6CFE75F3BD001451450014038391C1A28A00FE8B3F60FF184FE3AFD917E19EAF733FDA266D39AD8B93DA19A4840FC04607E15EF63A57C79FF00049DD464BDFD8BBC3113FDDB4BEBE8539EC6E19FF9B9AFB0E800A28A2800A28A2800A3BD14500155755D52CF43D32EB51D42E62B2B1B489A7B8B99DC247146A0966663C00002493562595218DE49195234059998E001EA6BF1D7FE0A61FF0005011F136F751F853E00B861E18B39CC5AAEAD1BE05FC8BD638F07FD503C127EF11C71824017F6DAFF0082A7788BC61ABDE784FE106AB2E83E1C88B4571AE5BA85B9BCEC7CB62331A7BAE1BDFB57E766A3A9DE6B17B2DE5FDDCF7D7931DD25C5CC86491CFA9624927EB55A8A002ADE93AC5FE837F15F6997D73A75EC4774773692B45221F50CA411F8554A2803F4BBF627FF0082AC6B5A0EABA7783FE32EA4FAB68D330821F135C01E7DA9FE133B01F3A762C7247527835FADFA56AB67AE69B6DA869D750DF58DCC62586E6DDC3C7221E432B0E083EB5FCB157DABFB097FC14535AFD9A2E22F0A78A527D77E1F5C4E1F629DD71A793C3345920153C12A48E470464D007EE95158BE0BF1AE89F10FC31A7F887C3BA941AB68F7F12CD6F756ED9575233F507D41E477ADAA0028145140051451400514628A00FE5628A28A0028A28A002BBEF801FF0025C3C07FF61AB4FF00D1AB5C0D77DF003FE4B8780FFEC3569FFA356803FA69A2968A0028A4A5A0028A28A00292968A004A5A28A00292968A0028A290D001451450014B494500145145001451450014B49477A0028A28EF400B49451400B4947AD2D00252D25140051451400514514005145140051451DA800A28A2800A28A2803F18FF00E0B49FF25FBC2BFF00606FFD9EBF3D2BF42BFE0B49FF0025F7C2BFF606FF00D9EBF3D6800A28A2800A28A2803F767FE0923FF266DA3FFD856F7FF4657D9D5F18FF00C1243FE4CDB47FFB0A5EFF00E8C15F6750014514500145145002D2515F9E9FF0527FF8280DB7C28D1752F863E02BDF3BC677B118351D4606F974D8D87CCAA7FE7A9071C7DDCF5C8C500701FF00053DFDBFA6D325BCF847F0E754549B063D7B57B490332E47FC7B46C3A1E4EE239E838E73F944492492724F734E9A67B895E595CC923B1666639249EA4D36800A28AFBCBFE09C1FB024BF1EB5887C7DE38B231F806C271F67B49810754954F2B8FF009E408C31EFD077A00F9C6F7F647F89B63F036D7E2C49E1DB83E12B8902899549916339DB33275119381BBA648F5AF1BAFEA764D2ECE6D35B4E7B589AC1A2301B6283CB31E31B76F4C638C57E4CFF00C1413FE099373E1D9F51F88BF08F4CF3F47DA67D4FC396F9325B91F7A5817F894F52A391CE01EC01F991450CA558860411C107B51401F50FEC57FB7478AFF654F155B5A4D7136AFE00BA987F6868B21DDE583C196127EE38EB81C1EE3BD7EE9FC23F8BBE17F8E1E07B1F15F847528B52D2AE86372302D13800B46E3F85864707D47AD7F3175EDFFB29FED65E2DFD94BC72359D064377A4DD155D4B4791C88AE901FD1864E1BB64FAD007F471457977ECF1FB46783BF697F87F67E29F095EEF59140BAD3E7C0B9B2970374722E7A83DC641EC6BD46800A28C51400B4537145007F2B345145001451450015DF7C00FF92E1E03FF00B0D5A7FE8D5AE06BBEF801FF0025C3C07FF61AB4FF00D1AB401FD34D14B4500251452D00145252D00145149400B494B4500145149400514B4500251451400B45252D002514B45002514B4940051452D0025145140051452D00251451400B49452D002514514005145140051451400514514005145140051451401F8C7FF05A4FF92FBE15FF00B037FECF5F9E95FA17FF0005A4FF0092FDE15FFB037FECF5F9E94005145140051457D25FB127EC6FAFFED5FF00116283C89AC7C17A7309756D5CAE102E788633FC52373C0E80126803F523FE09223FE30DB46CF7D52F7FF4657D9B5CF7C3EF00685F0BBC1BA5785BC35A7C5A668BA6C421B7B6857000C9258FAB124927B924D743400668A28A0028A28A00F8E3FE0A0DFB76D9FECBDE181E1DF0DCB6F79F11355819ADE271BD6C223C09E45F5273B41EBB4F61CFE166B5AD5F788F56BCD5353BB96FB50BC95A79EE666DCF23B1CB313EE49AFDB8FF0082807FC13C2D3F6918E5F1A783521B0F8850C41258DD8247A9228C2862780E00C063D4704F02BF143C57E13D63C0DE22D4341F1069B71A46B161334173677485248DD4E0823F0EA383D450064D1451401F52FF00C13EFF0064687F6ADF8B135B6AD7C2CFC2FA146B79A8A44C04F700B0091203D0139CB7603D48AFDEEF0B785F4AF05787B4FD0B43B18B4DD2AC21582DAD605C24683B7F527B9249AFE663E16FC52F12FC1AF1AD878ABC27A9CDA4EB3664EC9A1623729FBC8DEAA47506BF733F621FDBCFC33FB54786E0D2F509A2D1BE215A478BCD2E4F956E40FF0096B01E8C08EABD41CF18C1A00FABE82A18104020F507BD145007E66FEDF7FF0004C4B6F1545A9FC43F84B66B6BAC2E6E350F0E44311DCF7678001F2B753B7A1E718E95F92179673E9F7735ADCC4F05CC2E6392290619181C1047A835FD50D7C1FF00B7E7FC13934FF8FB0DD78E3C056B6FA6F8FD23CDC5B2E228B54C742C7A097B6E3D46013C5007E24515A3E23F0DEA9E11D6EF347D6AC27D3354B391A29ED6E50A3C6C0E0820D675007A4FC04FDA0FC63FB3978EECBC4FE10D44DB4F0B833D9CB96B7BA8FF008A391323208E323047622BF797F649FDAF7C25FB587827FB4747952CBC416488354D15DF325B31CE18772848383ED8AFE746BAEF853F157C4BF05FC71A778B3C27A94BA66B164D959236203A9FBC8E3F894F706803FA79FE7457CA7FB137EDE7E17FDAA7C3D069B7D245A27C40B68FFD2F4973B567C7592027EF03D4AF51CF18E6BEACA0039A28C51401FCAC5145140051451400577DF003FE4B8780FF00EC3569FF00A356B81AEFBE007FC970F01FFD86AD3FF46AD007F4D34B45140094B45140094B45250014B45140094B45140051494B4009452D14009452D2500145145002D252D25001451450014514B4009451450014514B4009452D250014514B40094668A2800A28A2800EB45145001451D28A0033451450019A28A2803F18BFE0B49FF25F7C2BFF00606FFD9EBF3D6BF42FFE0B49FF0025F7C2BFF606FF00D9EBF3D2800A28AEFBE077C13F13FC7FF887A77843C2B6125EDF5CB6E95D47C96F1023748EDD15467A9F51401D27ECB9FB31F89FF6A4F89369E19D0636B7B25757D475464DD1D9C19F99CFA9C670BDCD7F411F047E0A7863E00FC3FD3FC23E15B3FB3D85AA8DF2BE0CB70F8E647200C93581FB30FECD7E17FD97FE1858F857C3D6B19BADA25D4B522A3CEBDB83F79DDB19207451D94015EB940051451400514579D7C7CF8F1E15FD9D3E1BEA3E31F165EADBD9DB8D905BA9CCD7731FB9146BD4927F20093C03401CD7ED59FB52786BF658F8713F8875975BAD4E6564D374A0FB5EEA503A7B28C8C9F7AF8D3F62AFF82AD4FE3FF17FFC223F181AC34FB9D4EE9869BADDB2791046CEC4A41282480390AAF9CF4CE739AFCE7FDA77F68FF127ED3FF14AFF00C5DAFCCF1C27F7361A787262B3B704ED451D33C924F724D792D007F54C8EB222BA3065619047422BE52FDB7BF60DF0DFED53E1C9F53B011E89F102D2226CF52451B2E481C4538EE0F40DD57AF2062BE1EFD80FFE0A6577F0C9AC7C03F14EFE7BFF000A92B158EB53169A6B0EC11CF2CD1F4F5DBF4AFD84D2757B2D7B4BB4D4B4DBB86FF4FBB896682EADDC3C72C6C32ACAC3820839C8A00FE637E26FC2FF00127C1FF185EF867C55A64DA5EAD68C43452A9018670194F7071D6B95AFE8B3F6B5FD8FBC1BFB58783BEC3AD5B4765E23B38DBFB335D89009EDC9FE027AB464F553C771CD7E0D7C79F801E31FD9D3C7B7BE16F18699259DC42E7ECF740660BB8BF86489C70C08FC41C82010450079C56B7857C59AC781FC4165AE681A95C693AB594826B7BBB57DAF1B039041FE878AC9A2803F70FF0060EFF828EE99FB4525B783BC6DF65D1BC7F1C5FBA9233B20D4B68192809F964EFB41C1E718C62BEE4CD7F2BF617F73A55F417967712DADDDBB89229E1728F1B0390CA472083DEBF5EFFE09FF00FF000534D3FC696165F0FF00E2DEAAB61E2488AC3A7EBF747115F2F0024CFF00C320FEF37047539EA01FA4B4519C8C839A2803E4AFDB93F608F0F7ED51E1C9756D2BCAD0FE2159479B4D455408EEC0FF0096338EA411C061CA9C1E4715F867F11FE1C7887E13F8C350F0CF8A34E974BD5EC64292C32AE33E8C3D41EC6BFA81AF9FBF6B6FD8CFC15FB577851E0D5AD22D3FC536D132E9BAFC2989A13D42391F7E3CFF0009CE32718C9A00FE7668AF41F8E1F023C61FB3DF8EAF7C2DE31D2A5B0BC81DBC99F1986EA3CFCB2C4FD1948C1F519C1C1C8AF3EA00D6F09F8B758F02F88AC35DD03519F4AD5EC2659EDEEED9B6BC6EA720FBF23A1E0D7EE87FC13F7F6EBB4FDAA3C332685E20F22C3E216950092EA18BE58EF6204299E35278E48DCBDB70F5E3F066BD0FF67EF8BDAAFC0AF8BFE1AF19E9372F6F2E9F74A675472A25818E248DB1D415278FA5007F4C9914560786BC73A378A3C39A56B36BA8DAFD9751B48AEE2CCCBF72440EBDFD08A2803F977A28A2800A28A2800AEFBE007FC970F01FFD86AD3FF46AD7035DF7C00FF92E1E03FF00B0D5A7FE8D5A00FE9AA92968A004A5A4A5A0028A28A0028AF98BF691FF0082877C24FD9BEE2E34ABFD58F88FC510821B44D1489A589BD257CEC8CFFB2C777B57C51E2DFF0082DC789E7774F0DFC3BD32D23DDF2CDA8DDBC8FB7FDD5C007F13401FAE9495F8CBFF000FA7F8A9FF004297873FF22FF8D1FF000FA8F8A9FF004297873FF22FF8D007ECDD15F8C9FF000FA8F8A9FF004297873FF22FF8D1FF000FA8F8A9FF004297873FF22FF8D007ECDD15F8C9FF000FA8F8A9FF004297873FF22FF8D1FF000FA8F8A9FF004297873FF22FF8D007ECD515F8CBFF000FA8F8A9FF004297873FF22FF8D1FF000FA7F8A7FF004297873FF22FF8D007ECD52D7E327FC3EA3E2A7FD0A5E1CFFC8BFE347FC3EA3E2A7FD0A5E1CFFC8BFE3401FB37495F8CBFF0FA8F8A9FF4297873FF0022FF008D1FF0FA8F8A9FF4297873FF0022FF008D007ECD515F8CBFF0FA8F8A9FF4297873FF0022FF008D1FF0FA7F8A7FF4297873FF0022FF008D007ECD52D7E327FC3E9FE2A7FD0A5E1CFF00C8BFE347FC3EA3E2A7FD0A5E1CFF00C8BFE3401FB35457E32FFC3EA3E2A7FD0A5E1CFF00C8BFE347FC3EA3E2A7FD0A5E1CFF00C8BFE3401FB37495F8CBFF000FA8F8A9FF004297873FF22FF8D1FF000FA7F8A7FF004297873FF22FF8D007ECDD15F8C9FF000FA8F8A9FF004297873FF22FF8D1FF000FA7F8A9FF004297873FF22FF8D007ECD74A2BF197FE1F51F153FE852F0E7FE45FF1A3FE1F51F153FE852F0E7FE45FF1A00FD9AA2BF193FE1F4FF14FFE852F0E7FE45FF1A3FE1F4FF14FFE852F0E7FE45FF1A00FD9BA2BF197FE1F51F153FE852F0E7FE45FF1A3FE1F4FF14FFE852F0E7FE45FF1A00FD9AA2BF1D346FF0082D8FC44B6BC46D4BC0BE1FBDB5CFCE914B2C6F8F63923F315F4DFC0CFF82BCFC2BF88F796DA678C2DAEBC05A94CE105C5DE24B224F4CCA3941EEC001D73401F785155B4DD4ECF5AB082FB4FBB82FACA751243736D20923914F42ACB9047B8AB340051452D002503A5145007E31FFC1693FE4BF7857FEC0DFF00B3D7E7A57E85FF00C1693FE4BEF857FEC0DFFB3D7C09E1EF0FEA5E2BD6ECB47D22CA7D4753BD9561B7B5B68CBC92393C00A393401A9F0EBE1E6BDF157C69A4F857C3562DA86B3A9DC25B4112F03731032C7B28CE49EC01AFDFAFD8C3F63AF0FF00EC97E00FB140D1EA7E2BD4111B55D5FCBDA6461D2341D4229271EBD4F6C711FF0004FEFD86B4CFD98BC176DAF6BF690DDFC46D4E00F7770C03FD81587FA88CF6201C330EA72338AFB02800A28A2800A28A0500739F10FE21E81F0ABC1BA9F8A3C4DA847A668BA742D34F3C87B01D00EEC7A01DCD7F3F5FB627ED79E23FDAC3E2149A9DF6FD3FC3766ECBA5690AE59608F3C3374DCE463271F4C57EA57FC14F7F65DF881FB41F80B4EBEF056AB77791E8AAD24DE1489B0978D927CD503EFC807001CF4181926BF0F2F2CAE34EBB9AD6EE096D6EA1731CB0CC851E360705594F208F434010D145140057DB7FB08FFC145F5CFD9CAF2CFC21E2EF335DF87934A146E7267D3371E5E327EF27392871EC457C4945007F51BE0EF1968DE3FF000DD8EBDE1FD421D5349BD8C4905CC0DB9581FE47DAB84FDA2BF66CF06FED33E05B9F0E78AACC6F28DF63D46251E7D9C847CAE87BE0E0ED3C1C57E287EC4DFB73F89BF652F14ADADC4D71AC780EF5C7DBB4767DC223FF003DA107EEB81D40C0618CE7031FBA9F0A3E2DF853E36782AC3C55E0ED5EDF58D22F1030785BE789BBA48BD51C1C82A40A00FE7E3F6AAFD927C63FB2978D8E91AFC7F6ED22E4B369DAD4084437483FF4161919527F135E1F5FD38FC61F839E13F8EBE08BCF0AF8C3498755D32E0657CC51BE0930409236EAAC32791D891D09AFC2AFDB3FF61BF167ECA5E2796E7C89F57F035D4BFE83ADC4859133D239881F23F6E7AF6CD007CC74A8ED1BABA31465390CA7041A4A2803F4FF00FE09F3FF0005349F48B9D2BE1A7C58BC1269AFB6DB4CF124CF8680F448A7CF553D03E78E339CE47EB2C13C775047342EB2C4EA191D0E4303D083E95FCADD7DF5FB03FF00C149B53F823716BE0AF88D7F75AB7819D825B5ECC5A69B4BE8300F2C62FF00679C7381C9C807ED6D159FA078834CF1568B65AC68D7F6FAA6977B12CF6D79692892299186432B0E0835A1401E45FB4B7ECC9E10FDA83C0173E1CF135B08AE4296B1D5614067B3971C32E7A8CF55EE33C83C8FC02FDA3FE04EA5FB387C5AD5FC0DAAEA169AA5C596D75BAB32763C6C32B907956C7515FB2DFF000504FDB9F4DFD997C1973E1EF0EDDC375F11F538765AC0A437F67A30FF005F20EC4039553D4E0E315F857AFEBFA8F8A75ABDD5F57BD9F51D4EF6569AE2EAE642F248E4F24B1E4D0050A28A58E3695D5114B3B100281924FA5007D41E1AFDACBC5DA278774AD3A0497C9B4B48ADD3129FBA881476F41457D75F0EFF00E09917FE21F87FE19D5669FECF35F6976B72F14842B233C4AC5483C8209C628A00FCA4A28A2800A28A2800AEFBE007FC970F01FF00D86AD3FF0046AD7035DF7C00FF0092E1E03FFB0D5A7FE8D5A00FE9AA928A28016928A28016BF3E7FE0A81FB71DD7C16D162F86FE08BC3078C3538FCCBFBF89B06C2D88E157FDB7FD003EB5FA037573159DB4B713388E1894BBB9E8AA0649AFE65BE397C50BFF008CBF163C4DE31D4669269B55BD927512367CB42C76A0F40070076A00E32FEFEE754BD9EF2F2792EAEA77324B34AC59DD89C9249EA6A0A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00FBB3FE09BDFB766ADF05FC75A7F80FC5D7D25F781357916DA169E4E74D9D98049149FE03C865F707B60FEDCC722CB1ABA30646019581C820F435FCADC72344EAE8C51D482ACA7041F515FD0F7FC13FFE2BDC7C62FD94BC13AD5F4EF71A9DB43269D7724872C5E19191493DC940873EF401F445145140051451401F8D1FF0599B49AFFF00688F07DB5B44F3DC4DA408E38A3196763260003B926BEA0FF826B7EC189F02B441F107C6D6914BE38D4E151676B2264E9901193C9FF968F919F4000EE71F48F8A3F65BF0AF8EBF683D1FE2AF88A11AA6A1A1D98B7D2ECA5198619739F388FE261FC39E01C1EA01AF661400514518A0028A291982296621540C927A0140115E5E41A7DA4D7575325BDB428649259582AA28192493D0015E0FF027F6DEF85FFB4378D75CF0AF85F557FED6D36461125D28417D1A9C1961E7E61D3838383D3AE3E02FF829BFEDFD2F8BF54D4FE13FC3BD5C7FC23F6C7ECFACEA9632645EC9FC70AB8EA8A7E538E090DD457E73F85FC53ABF82BC4161AE683A8DC693ABD8CA26B6BCB590A49138EE08FE5DC706803FA93AF85FF6FCFF008274E9BFB4169D77E34F03456FA4FC41814C92C3B36C3AAA8EAAC47DD93B86E73D0E339117EC15FF000520D2BE3D59597833C7D756DA478FE302286E24658E2D53D0AF40243FDD1D7B0AFBB6803F96DF14785B56F056BD7BA2EB763369BAA59C8629EDA75DAC8C2B2ABF7E7F6D7FD817C27FB53E8936AD630C5A17C41B6888B5D5A21B56E31C88E751C30CF46FBC3D71C57E16FC49F869E24F847E31D47C2FE2BD2AE347D66C6431CB05C215CE0F0CA7A329EA18704104500731451450015EE5FB2AFED71E31FD953C6B0EABA14A6FB459645FED1D16690AC5751E7E600F3B5B19C360E0F63D2BC368A00FE967F67DFDA23C21FB49F80EDBC4FE12BE12C6C02DD594A409ED24C7292283C1EBCF435DA78CBC1BA2FC41F0CEA1E1FF0010E9F06ABA3DFC2D05CDADC2EE5752307E87DEBF9C0FD9EFF689F19FECD7E3C83C4DE0FD4E4B4908F2AEECDBE682EE2CF29221E0FA83D41E8457EF0FEC97FB5EF843F6ADF03C5A968F730D9788AD942EA7A1BC83CEB67FEF053C98CF50DD3B6722803F283F6E7FF8276F883F66CD467F13785D27F107C3E9E4244CB193369F9E89301D57B071C1F415F17D7F539AB69165AF69975A76A5690DF585D46629ADAE103C7221EAACA7822BF1CBFE0A07FF0004D7BBF85175A878FF00E1869F717BE0D9333DEE91086964D34F5665EAC62EFCE76F3CE31401F9E145145007D85FB0DFFC141FC45FB2FEA96DE1ED7164D7FE1E5C4B89ACD9FF007D639EB2404F1D7928783CF23AD7E9B7ED1DFF00050CF007C1FF0082961E31F0EEA16BE28D575D858E8BA7C5281BD80196971928AA48C8EA7A0F5AFC07A734AEE8A8CECCABF7549C81F4A00E83E217C40D77E2978CB56F14F892F9B50D6753B87B9B899B81B998921476519C01D8573B45140057D5BFF04EAFD966FF00F68BF8E5A75E5DDA91E0EF0EC897FA9DCC89949181CC500F52CC39F4556AF25FD9C3F677F13FED2FF12F4FF09F86ED646592456BDBFD84C565067E695CF41819C0EE781C9AFE83BE017C07F0C7ECEBF0E34EF08785ED161B6B75DD3DC91FBDBA97F8A473DC9FD05007A1C51A4112471AAA46802AAA8C00074028A928A00FE55E8A28A0028A28A002BBEF801FF25C3C07FF0061AB4FFD1AB5C0D77DF003FE4B8780FF00EC3569FF00A356803FA69A28A2800A28A280307C7F673EA1E05F115ADA922E67D3AE23888EA18C6C07EA457F2EEE30EC0FA9AFEA988C8C57F3AFFB71FC01BAFD9E7F684F11687F6768B45BC99AFB4A90290AF6EEC4A807B95E86803C028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A002BF737FE0905657169FB20C124C498EE35CBC961CF64C46BFFA12B57E227867C3B7FE2FF11699A1E976EF77A96A3731DADBC11AE59E4760AA00FA9AFE913F660F8451FC0AF80DE0EF04AA2A4FA6D9E6E76F399E466925E7BFCEEC3E805007A8D14B4940051451400514514005145140057E627FC14CBFE0A0EBA05B5E7C27F86F7E4EA52E63D6F5AB771B614C60DBC4475627EF376030339E3D1BFE0A47FB7CC1F03342BFF877E08BE8E4F1FDFC1E5DD5D44437F6544EBD7D04A54E541E9907D2BF14AEEEE6BEB996E2E6579E7958BBC9236E6627A9268022662CC5989249C927BD14514012DADD4D63711CF6F2BC3346C19244386523B835FAEFFF0004FF00FF00829BDBF8D4699F0E7E2B5D8B5D7820874FF11CCE04577B4709393F764206037218F5C1AFC83A58E468A4574628EA432B29C1047420D007F54A8EB2207460E8C32194E4115E03FB5CFEC73E11FDABFC1B2596A689A6F896D909D375B8E306485BA857EEC87A11EF915F067FC13E7FE0A673785DACFE1DFC5CD53CED1C911697E22BA3F35AF402299BBA7A31E46482718C7EB75B5CC37B6D15C5BCA93C12A892396360CAEA46410470411CE6803F9A5F8FBFB3E78C7F66FF001EDD785BC61A79B6B84F9EDAEE2CB5BDDC59E248DF0323DB823B8AF36AFE93FF0068EFD99FC17FB4EF81E5F0F78B6C03CB1866B1D4A1F96E2CE423EF237A7032A720E3A702BF06BF6A3FD947C65FB2BF8DA4D1FC456AF36953C8E34DD62343E45E463A107A06C632BD450078AD1451400575BF0B3E2B789FE0C78D2C3C53E12D4E4D2F57B270E92272AE3BA3AFF129E84572545007F409FB18FEDE5E12FDABB448EC2455D03C756D007BCD1E570565C70CF037F12F43820119EF826BEA196249E368E45578D8619586411E86BF972F07F8C75AF007892C35FF000F6A571A4EB1632096DEEED9F6BA30FE63D41E0D7EDAFEC0FF00F050ED23F68DD1EDFC29E33BBB5D23E235B008AAC4451EA8BC00F10E9BFD507D40C1C000F05FF82827FC1318476F7DF117E1069CA047BA6D53C350E7257A996DC77C774E38E467A57E57DC5BCB6B3C90CD1B45346C55E37186523A823B57F548402082320F6AFCEEFDBE3FE099765F159EF7C7BF0BED22D37C57E5B497DA3C7F2C3A830C9DE8BD1643D30300F1C6724807E34D156352D36EF47D42E6C2FADA5B3BDB691A19EDE7428F1BA9C32B03C8208C62ABD0015DB7C1BF83FE24F8E9F1034BF08785ACCDD6A57D2052C41F2E14CFCD23900E145627823C15ACFC45F16695E1AF0F58CBA96B3A9DC25B5B5B42B96776381F403A93D8026BF7CBF61FFD8B341FD937C0C5A458F51F1BEA91A36A9AAB0CEDC72218BFBA80939C72C7AE703001D87EC9DFB2EF877F656F85D65E1AD2523B9D5A45136ABAA84C3DE5C1FBC73D760E8A3B003BD7B552D25002D1451401FCABD145140051451400577DF003FE4B8780FF00EC3569FF00A356B81AEFBE007FC970F01FFD86AD3FF46AD007F4D345145001451450015F3D7ED9FF00B21687FB5AFC383A5CEF169BE27B0266D275665CF94F8E6372064C6DDC76201C715F43525007F343F1BFF677F1EFECF5E289F44F1A68371A73A37EEAF154BDB5C2E480F1C83820E3A75F502BCDABFA8BF17F81BC3DE3FD25F4CF1268B65ADD83F582F615917EA33D0FB8AF99BC51FF0004B3FD9E7C4B7935CA7852EB4792562CC34ED4255504F5C072C07D05007E06D15FBA5FF0E89F801FF3E9E20FFC190FFE3747FC3A27F67FFF009F4F107FE0C87FF1BA00FC2DA2BF74BFE1D13FB3FF00FCFA7883FF000643FF008DD1FF000E89FD9FFF00E7D7C41FF8325FFE37401F85B457EE97FC3A27F67FFF009F4F107FE0C87FF1BA3FE1D11FB3FF00FCFAF883FF00064BFF00C6E803F0B68AFDD2FF0087447C00FF009F5F107FE0C97FF8DD1FF0E88FD9FF00FE7D7C41FF008325FF00E37401F85B457EE97FC3A23E007FCFAF883FF064BFFC6E8FF8744FECFF00FF003E9E20FF00C192FF00F1BA00FC2DA2BF74BFE1D11F003FE7D3C41FF8321FFC6E8FF87447ECFF00FF003E9E20FF00C192FF00F1BA00FC2DA2BF74BFE1D11FB3FF00FCFAF883FF00064BFF00C6E8FF0087447ECFFF00F3EBE20FFC192FFF001BA00FC2DA2BF74BFE1D11FB3FFF00CFAF883FF064BFFC6E8FF87447C00FF9F5F107FE0C97FF008DD007E16D15FBA5FF000E88F801FF003EBE20FF00C192FF00F1BA3FE1D11FB3FF00FCFAF883FF00064BFF00C6E803F0B68AFDD2FF0087447C00FF009F5F107FE0C97FF8DD1FF0E88FD9FF00FE7D7C41FF008325FF00E37401F85B457EE97FC3A23F67FF00F9F5F107FE0C97FF008DD1FF000E88F801FF003EBE20FF00C192FF00F1BA00FC2DA2BF74BFE1D11F003FE7D7C41FF8325FFE3747FC3A27F67FFF009F4F107FE0C87FF1BA00FC2DA2BF74BFE1D11F003FE7D7C41FF8325FFE3747FC3A23E007FCFAF883FF00064BFF00C6E803F0B68AFDD2FF0087447C00FF009F4F107FE0C97FF8DD1FF0E88F801FF3EBE20FFC192FFF001BA00FC2DAD6F0BF84B5AF1B6B56DA4681A55DEB3A9DCB88E2B4B285A591D89C0E00AFDC8D37FE0931FB3DE9F37992E8DABDFAFF00CF3B9D49B6FF00E3814FEB5F43FC2CFD9EFE1CFC14B416FE0BF08E9DA1614299A28CBCCC07AC8E4B1FCE803E35FF008275FF00C13967F8237B6FF11FE23C16F2F8C1A1234FD241122E9A1B19773D3CDC647190031E79E3F4328A5A004A28A5A004A28A2800A28A5A004AF90FFE0A07FB7069BFB2EF83068BA2CCB79F1075889859DBA61859C7D0CF273C75C28EE41F4AEC7F6D5FDB0744FD93FE1BDC5E9682FBC617D13268FA5B9CEF90E4096400E7CB53C9E99C6011D47E03FC46F88DE20F8AFE32D4BC53E28D4A5D5359D424324D3CA7F2551D028E800E28032B5FD7AFFC53ADDFEB1AADD497BA95F4CF7171712B6E79246396627DC9AA14514005142A966000249E0015F64FC2FF00F8252FC6FF00895E134D79ED34DF0DC53C425B6B4D5E768EE25046465029D9C7AD007C6D457A17C6CF807E37FD9EFC58DE1EF1BE8B2E957A54491487E68674FEFC6FD18641191DC1AF3DA002BEF3FD823FE0A45A9FC09B9D2FC0FE3E9AE354F00122082E57E79B4B04F0403CB4609E475033807183F0651401FD4B7877C47A678BB44B3D6346BE8752D32F2312C1756EE192453D0835CEFC5FF843E17F8E3E02D4FC21E2ED3A3D4B48BE42A4381BE17FE19233FC2EA790457E24FEC33FF0500F117ECBBAD2E85ADC936BBF0F2EDC79DA7B9DD2593FFCF48093C7BAF20E3A03CD7EE27C39F88DE1EF8B1E0DD33C53E17D4A2D5346D42212C33C4C0FD55876607823B11401F82BFB667EC3FE2CFD943C52649236D63C197AEC74FD660524003FE59CA3F81C023D8F6279C7CCF5FD4578DFC0BA07C48F0D5E787FC4BA5DBEB1A45DAED96D6E572A7DC7707DC735F887FB787FC13DB58FD99755BAF13F8605C6B1F0E6E65CC7338DD369E58F11CA40C15C9C06C0CF19E6803E31A28A2800A9AC6FAE34DBB86EAD667B7B98583C72C670CAC3A106A1A2803F633FE09FFF00F0530B4F894DA67C3AF8A177F63F151510E9FAE4CC3CABF207092B1FBB29EC4F0DEA0E33FA360E4641C835FCADC33496F324B13B452A30647438652390411D0D7EA2FEC03FF053D9ED1AC7E1EFC60D4D65B6CAC3A6F896E3E578C7004770DD187A39E79E49E3001F45FEDEBFF04F5D23F693D22EBC55E1286D749F88D6E9BC391B22D480FF00967210387C7DD623AE01C0391F8ADE20F859E2CF0BF8F1FC17AA6837D69E2859C5BFF663C27CD673F7768EE0F623AD7F4F714A93C49246EB246E032BA9C820F420D719AC7C17F04F883E22E95E3CD43C396575E2CD2E17B7B4D4DD3F791A3107E848C70482464E319A00F98FFE09E1FB0A5B7ECD5E1483C55E288219FE21EA96E1A503E61A746E33E483FDFC1C311C672012393F68D145001451450018A2968A00FE55E8A28A0028A28A002BBEF801FF0025C3C07FF61AB4FF00D1AB5C0D77DF003FE4B8780FFEC3569FFA356803FA69A28A2800A28A280168A4A2800E94B49450014514B40094B4525002D14514005145140094B4945002D25145002D14945002D14525002D1451400514525002D1451400514945002D14945002D14945002D2514500145145002D2514500145145002D78FF00ED3DFB4DF84FF65BF87571E25F124FE65D481A3D3B4B88FEFAF6603EEA8EC064658F0323B902BA5F8DBF19BC37F013E1BEAFE33F145E25B69D611E5632D87B894F09120EECCD81FAF415FCF9FED45FB4CF8A3F6A2F89573E26F104DE5DA479874ED3A22443690E785507B9EA4F53401CEFC73F8DBE25FDA0BE246ADE32F14DD19EFEFA5263843131DB459F9228C7655181F866B80A28A002800B1000C93D00A2BEB8FF008262FECFBA37C7EFDA46387C4711B9D0FC3DA7C9ACCB6A7EEDCC8B2451C71B7FB3BA5DC7D7663BD007D37FF04C0FD80D648ACBE2EFC47D241F9C4DE1FD2AED41E878B9910FB8F901F4CE30467F552A3B7B78AD208E082358618942246830AAA38000EC2A4A00F3DF8E5F01BC1DFB43781AEFC2FE31D2E2BFB4955BC8B8DA3CFB4908E2489FAAB703A75C735FCF57ED29F01358FD9B3E2F6B5E07D61C5C3D9B092DAED4616E6DDB263907A6476EC722BFA567758D19D982AA8C924E0015F80BFF00052CF8E1A27C72FDA6B53BEF0EB09F49D22DD34A4BB5208B878D9B73A9FEE9278F6FAD007CA7451450015F437EC7BFB6678ABF64DF19C77362D26A9E14BB957FB53446930B2A742E99E16403A1EF8C1E2BE79A2803FA67F825F1DFC19FB41F82EDFC4DE0BD5A3D46C9C2F9D09F967B67233B2443CA9EBEC70704D769AC68F63E21D26F34CD4ED21BED3AF21682E2D6E103C72C6C0865653C10412315FCE0FECD7FB4EF8CFF0065FF001D45E20F0ADE0681F097BA65C65ADEEE3CF2ACA08C1F423915FBD1FB307ED41E12FDA97E1EDBF88FC3970B0DEC6026A3A4C8E0CD65377561DD4F50D8E45007E647EDFDFF0004D2BEF84CD71E3CF861633EA9E1162CFA869717CF369C724EF55EAD176E3247718E6BF3C48C1C1E0D7F5493C11DCC3243322CB13A95747190C0F50457E54FEDFF00FF0004C4749F55F88FF08EC99A260D75A9F86A200842065E4B7EF83824A73CE71C100007E58D14B246D13B23A9475382AC3041A4A0028009200E4FB515FA19FF0004D5FF00827F9F8BF7D07C4BF1F5A491783ECE61FD9DA748BB4EA522E0966CFF00CB2078E3A9C8C8C5007D9BFF0004B4F0F7C57D0BF67EB43F10AE1D7429D524F0ED8DE64DD436A47CA5B3F7508C1553C818E057D9D4C8208ED618E186358A28D422468A155540C0000E8053E800A5A4A2800A28A280168A4CD1401FCAC5145140051451400577DF003FE4B8780FFEC3569FFA356B81AEFBE007FC970F01FF00D86AD3FF0046AD007F4D3451450019A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A5A28A004A5A29280169296928016928A2801692968A0028A28A004A5A4A280168A4A2800A5A4A28016929692800A28A5A004A29692800A28A280168A4A2800AE73E21FC44F0FF00C2AF086A3E27F13EA51695A35846649AE253EDF7540E598F6039AD3F10F8834EF0AE897DAC6AF79158699650B4F71733B0548D1464926BF0AFFE0A0BFB73EA3FB4F78CDB41D0247B0F879A448C96B083F3DF499F9A793D8F0157B019E73401C3FEDA7FB61EBDFB58FC4396EE4926B2F0869F2BAE91A4962151324095D7A1918753DB240E2BE74A28A0028A28A002BE82FD86BF6984FD95FE3C5978AAF6192E742BCB67D33548A2E5C5BBB236F51DCAB468D8F406BE7DA2803FA85F87DF10FC3DF153C23A7F89FC2DAA41AC6897E9E641756E720FA820F2AC0F041C106BA2270327A57F3ABFB30FEDAFF11FF654BD953C2F7905FE83712896E744D494C96F21E85970432363BA9F4C835EEDF197FE0AFDF143E25783EEB40D0B44D2BC182F13CBB8D42CDE49AE7691F308D988099F5C138E86803DBBFE0A65FF00050B5D35752F847F0D7532D74E860D775BB4720459C86B689C7538FBCC381BB19C835F93D525CDCCB7B712DC4F234D3CAC5DE473966627249351D00145145001451450015DD7C19F8D5E2DF80BE38B2F15783F559B4CD46DD86F58DC88EE101C98E45E8CA7B83915C2D1401FD0B7EC71FB6DF843F6B0F0C04B59A3D2BC6767106D434394E1C7632459FBE99F4C91919C6467E91AFE5EFE1E7C44F10FC2AF1769FE26F0BEA73693ACD8C82486E213F9AB0E854F420D7EE07EC33FF0507D07F69FD22DF40F108B7D07E215BA625B457C437C07FCB4873C824755E707383E801E59FF000505FF00826ADA7C4CB5BCF881F0B34B82C7C58999B50D1AD82C51EA0B8259D07004BDF1C6EE7BE01FC79D5B49BDD0B52B9D3B51B59AC6FADA4314D6F3A1478D875041E86BFA9DAF937F6A8FF8272FC3FF00DA73C4FA6788E49E4F0B6B714A82FEE74E814FDBA0072CAC38C3E0901F9C7706803F377FE09D9FB0B5EFED1DE34B6F14F8AF4F962F86FA5C9E64CD27C8351947DD853B95CF2C471804672457EE5693A4D9683A65AE9DA75AC363616B1AC305B4081238D00C05551C002B3BC15E0BD17E1DF85F4EF0EF87B4F8B4CD1F4F8560B7B684615140C7E27D49E4D6DD002D252D250014514500145145001452D1401FCABD145140051451400577DF003FE4B8780FFEC3569FFA356B81AEFBE007FC970F01FF00D86AD3FF0046AD007F4D3452D20A0028A28A0028A5A4A0028A6CB2A4085A4758D075663815E5DAFF00ED53F083C2D71241AB7C48F0E58CB19DAE92DFA641FCE803D4E8AF11FF0086DCF80BFF004567C2DFF8304A5FF86DCF80BFF4567C2DFF008304A00F6DA2BC47FE1B73E02FFD159F0B7FE0C1297FE1B73E02FF00D159F0B7FE0C12803DB68AF11FF86DCF80BFF4567C2DFF008305A5FF0086DCF80BFF004567C2DFF8304A00F6EA4AF12FF86DCF80BFF4567C2DFF008304A4FF0086DCF80BFF004567C2DFF8304A00F6FA2BC43FE1B73E02FF00D159F0B7FE0C1297FE1B73E02FFD159F0B7FE0C12803DBA92BC4BFE1B73E027FD159F0B7FE0C128FF86DCF80BFF4567C2DFF008304A00F6DA2BC4BFE1B73E02FFD159F0B7FE0C128FF0086DCF80BFF004567C2DFF8304A00F6DA5AF11FF86DCF809FF4567C2DFF008304A3FE1B73E02FFD159F0B7FE0C12803DBA8AF11FF0086DCF80BFF004567C2DFF8304A3FE1B73E02FF00D159F0B7FE0C16803DBA8AF11FF86DCF80BFF4567C2DFF008304A3FE1B73E02FFD159F0B7FE0C12803DBA92BC47FE1B73E027FD159F0B7FE0C128FF86DCF80BFF4567C2DFF008304A00F6EA5AF10FF0086DCF80BFF004567C2DFF8304A5FF86DCF80BFF4567C2DFF008304A00F6DA2BC47FE1B73E02FFD159F0B7FE0C1297FE1B73E027FD159F0B7FE0C12803DBA8AF111FB6DFC052703E2CF8589FF00B08257ADF86FC4BA5F8C742B3D6B44BE8752D2AF13CDB7BB81B7472AF4DCA7B8E28034A8A28A0028A28A00299717115A4124F3C890C31A97792460AAAA392493D0539982296621540C927A0AFC95FF008299FF00C141E4D72EB51F84BF0E6F4AE968A61D6F5981F067739CDBC78FE0031B9B3C92460019201E7DFF000526FDBE4FC71D5E7F87BE02D525FF00840ECA5C5E5DC04A2EA92A371C8FBD1020119E0900E3A57C0945140051457A3FC01F80BE29FDA33E23587843C2B6A66BA98EFB8B9707CAB5841F9A473D80FD4D0072BE0FF00F89BE216A634EF0BF87B54F11DF9C7FA36956525CC8327192A8A48153F8DBE19F8BFE1ADDC76BE2DF0B6B5E18B9972638B58D3E5B467C633B448A33D474F5AFE89BF667FD99FC29FB317C39B0F0CF87EDD26BC58D4DFEAAF1859AF66C7CCE7AE067385C9C0C727A9E8BE327C12F087C78F075CF86BC61A545A8D84C0EC72009616FEF23763401FCC9D15F43FED9BFB1D7887F648F88074FBA986ADE17D419A4D275644DBE627F7245C9DAEBD0F241C6475C57CF1400514514005145140051451400514514005145140055DD175BD43C37AADAEA7A55F5C69BA8DA48B341776B2B472C4EA721959482083DC552AF48F805F013C53FB467C44D3FC25E16B5325C5C38F3EE9D4F956B1E7E691C8EC064FBE2803F61BFE09BFF00B706ABFB4EE8377E19F14E9B76DE2AD0ED5659F598ADCFD96ED372A82EE06D494E73B78DC0311D0D7DB35E63FB3BFECF9E17FD9B3E1BE9FE11F0C5B8D90A06BABE740B2DE4D8F9A47FA9CE0678E95E9D400514514005145140051451400B49451400B45145007F2AF45145001451450015DF7C00FF0092E1E03FFB0D5A7FE8D5AE06BBEF801FF25C3C07FF0061AB4FFD1AB401FD34D14514005145140057967ED1FF00B46F84BF664F87375E2CF155D855DDE4D95846479F7B390488E35EFC0249E80035EA75F803FF00051BFDA42E3F681FDA0F538ADA663E1AF0EBBE9DA6C61BE57DADF3CD8CE32C47E4050073DFB4AFEDCFF143F691D76EDB51D7EEF47F0C973F65D034E94C36F1C7D83EDC191BD4BE7DB8AF9DE8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28AFAE3F606FD87356FDA8BC6906B1AC44F63F0F74C9C35F5DB29CDDB2F3E445EA49C027A019EA78201DD7FC1377F6079BE3C6BA9E3CF1CE9F3C1E02D3DD5AD6DE5564FED5981E80F04C6B8E48EA4800F5AFDAEB0B1B6D2EC6DECECE08AD6D2DE358A182140891A28C2AA81C0000000150687A1D8786B47B3D2B4BB48AC74FB3896182DA040A91A0180001D055FA004A5A28A004A28AF86BFE0A33FB7A5B7ECF5A04DE08F07DDACDF10B5087E7963208D3226070EC73C48472A3E87D280380FF0082987FC14153C09A7DE7C2DF86DAB8FF0084967262D6756B3901FB0C7C8681187490F438E54023826BF1FA595E691E491DA491C96676392C4F524D3EF2F27D42EA5B9B995E79E562EF24872CC4F524D4540051456A785FC2FAA78D3C4163A268B652EA1AA5ECAB0C16F08CB3B138028034FE19FC36F107C5CF1C693E13F0C69F36A7ACEA53086186142D8EECED8E8AA01624F00024D7EFFF00EC6BFB23F87BF650F8729A6D9C315CF89F50549357D5B1979DC038404F445C9C018E4935C8FEC17FB10E99FB2B781A1BFD5E382FFE216A7086D46F106E5B5C804DBC4DE8BD0B7F111E95F585002514579CFC7CF8F1E18FD9D7E1D5FF008BBC5175E5DB420AC16A8479B752E388D01EFEA7B0A00F8FFF00E0B37AEE856DFB3F685A55E3C0DAF5CEAC92D8C6D8F355141F31877031C7FF00AABF17ABD63F698FDA3BC4BFB4EFC4FD43C5BE2194C713B18EC34E46263B3807DD8D7F0E49EE493DEBC9E800A28A2800A28A2800A28A2800A28A2800A28AD5F0A785356F1C788F4ED0742B09B53D5F509D2DEDAD605CBC8EC4003F33D680367E147C2CF11FC68F1EE95E10F0AE9F2EA3AC6A126C48E242446BFC52391F75547249E057EFF7EC7BFB24F86FF650F86D6FA469F14779E24BB512EAFAC32FEF2E253FC20F68D7801471C64F24D71DFB077EC45A5FECA7E0C37BA988351F1EEA7128BFBE8C656DD7AF93193CE33D4F19C0F4AFAB2800A28A2801692968A004A28A2800A28A2800A5A4A280168A28A00FE55E8A28A0028A28A002BBEF801FF25C3C07FF0061AB4FFD1AB5C0D77DF003FE4B8780FF00EC3569FF00A356803FA69A28A2800A28A280313C71AACBA1782F5ED461CF9D67613DC26DEBB9636618FCABF9769E579A7924918BBB312CCC7249F735FD4E6A56116ABA75D594E330DC44D138FF00658107F9D7F30DF137C07A8FC30F1FEBFE15D56368F50D26F24B494329192AC46467B1A00E668A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A2BD7BF660FD99FC55FB517C4CB1F0BF87ADCC569B849A8EA92A9F22CA01CB3B103963D157BB11D064800EB3F628FD8FF005AFDAD3E23FF0067A1974FF0AE9BB66D5B5454E1109E2343D37B60E07A027B57EFC7C36F86FE1EF849E09D27C27E16D3A3D2F44D320582081393803EF331E598F52C792493587F02BE07F867F67CF875A7F843C2D68B6F656C374B363F79732900348E7B9381F8002BD06800A29692800A5A2BC07F6C2FDAEBC37FB277C3A9F55BF2BA87896EE364D27474601A79718567FEEC60F24F5C03804D0071BFB7CFEDB1A77ECA9E05163A5C90DDF8FB578CAE9F68D86FB3C7820DC3AFA023001EA7D4022BF077C59E2BD5FC75E24D475FD7AFE6D5358D4666B8BABBB86DCF239EA4FF00203A000015ABF147E28788BE31F8E353F1678A6FDF51D62FE42F248C7851D9547651D00AE52800A28A54469182A82CC4E000324D004B636571A95EDBDA5A42F71757122C51431296791D8E15401D49240C57EDAFFC1397F605B4F809A045E3AF1AD925CFC40D4103410CA3234B848FBA074F30E724F6C0031CE782FF008263FEC06FE03874FF008B3F10B4D8C6BF34426D134DB8525ACD597FD73A9E03953C0E48CE7822BF4A6800A28ACEF11F88F4DF08E877BAC6B17B0E9FA65944D35C5CCEDB523403249340193F133E24F87FE11781F57F16F8A3508B4DD174C81A79A6918027038451FC4CC70028E492057E02FED9DFB5FF0088BF6B2F888D7F752C965E14D399E3D234707090A12332363EF48D81927A0000C575DFB7DFEDBB7DFB53F8E64D3B456B8B2F87FA5CC52C2D646C1BA238FB43A8E85BA81CE0115F25D001451450014514500145145001451450014514E8E379A458E356791C8555519249E800A0096C2C2E354BD82CED217B8BA9DC471451AE59D89C00057EDEFF00C1393F60FB1F801E13B5F1BF8C34E12FC46D4E3F31527E7FB32161F2C6ABDA4239627919C71835C27FC1347FE09F327C3386DFE287C47D3A3FF849AE2257D1F4A986E6B043C996404712918C0FE119EE78FD1EA0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A005A2928A00FE5628A28A0028A28A002BBEF801FF0025C3C07FF61AB4FF00D1AB5C0D77DF003FE4B8780FFEC3569FFA356803FA69A28A3F1A0028A28A005AFCBBFF0082B27EC5B79AF16F8CDE0EB23713C3188B5FB2814966419DB7207B746FA83D8D7EA1D23A2C88CAC032B0C107A11401FCACD15FB71FB50FFC1283C0BF19355B8F10F822E62F02EBF70C64B88638CB59DC392496283FD5939E768C1F4CD7C3BE26FF008244FED03A25C4B1E9FA6E8BE208D4E165B1D5238C38F5026287F31401F14D15F5BFFC3AAFF694FF00A116DFFF0007763FFC7A8FF8755FED29FF00422DBFFE0EEC7FF8F5007C91457D6FFF000EABFDA53FE845B7FF00C1DD8FFF001EA4FF008755FED29FF422DBFF00E0EEC7FF008F5007C93457D6DFF0EABFDA53FE845B7FFC1DD8FF00F1EA5FF87557ED29FF00422DBFFE0EEC7FF8F5007C91457D6DFF000EABFDA53FE845B7FF00C1DD8FFF001EA5FF008755FED29FF422DBFF00E0EEC7FF008F5007C91457D6DFF0EABFDA53FE84483FF07761FF00C7A97FE1D57FB4A7FD08B6FF00F83BB1FF00E3D401F24515F5B7FC3AAFF694FF00A116DFFF0007763FFC7A8FF8755FED29FF00422DBFFE0EEC7FF8F5007C93457D6DFF000EABFDA53FE845B7FF00C1DD8FFF001EA3FE1D57FB4A7FD08B6FFF0083BB1FFE3D401F24D15F5B7FC3AAFF00694FFA112DFF00F07763FF00C7A97FE1D57FB4A7FD08B6FF00F83BB1FF00E3D401F24515F5B7FC3AAFF694FF00A116DFFF0007763FFC7A8FF8755FED29FF004225BFFE0EEC7FF8F5007C93457D6DFF000EABFDA53FE845B7FF00C1DD8FFF001EA3FE1D57FB4A7FD08B6FFF0083BB1FFE3D401F24D15F5B7FC3AAFF00694FFA116DFF00F07763FF00C7A9F17FC12A3F692925446F045B44ACC0176D6AC4851EA71313F95007CFFF0005FE0DF893E3C7C41D37C21E16B36BBD4EF1B938F9224FE291CF651DCD7F417FB2C7ECC9E1AFD96FE1959F8634341717CE165D4B53703CCBB9F03737B2E7385EC2B97FD8A7F63CD0BF64BF875F618C437FE2DD4B6CBABEAC1725D80E224246446BCE077249EF5F465002514B494005145713F197E317867E04FC3DD57C63E2BBD167A5D844CFB47324F260958A35EEEC781DB9E481934018BFB467ED0DE16FD9A7E1B5E78B7C5174A88B98ACEC95879B793904AC683BF4C93D857F3DFF001FBE3C78A3F68BF893A9F8C3C537666B9BA7C416CBC456B08E12345EC0003EA724F26BA5FDACBF6A4F11FED55F12E5F116B0ED6FA65B6E874BD303663B4849CE07FB4D8193DF03D2BC4E800A28A2800AFD39FF0082657FC13E62F14AD9FC5AF89160CDA62481F43D1A75C2DC91CFDA2507AA67855EF824E462BCFBFE09BDFB025E7C6CF10597C43F1C58341E01B17F32D2DA7183AA4C0FCA00FF009E40F24F7C00339247ED559DA43A7DA436B6D12416F0A2C71C518C2A2818000EC00A009400A00000038C0A28A47758D4B310AA064B13800500457979069D693DD5CCA905B408D2CB2C870A8AA32493D80009AFC4CFF828F7EDEF79F1E3C432F813C177AF6BE01D3A465B89612436A93038DCC7FE79AE385EE49273C63D07FE0A69FF0005058FC6C753F847F0EEF59B448A5306B7AC42D85BB646E60888EB1861CB746C7190727F342800A28A2800A28A2800A28A2800A28A2800A28A2800AFD3DFF8264FFC13ED3C44349F8BDF112C19B4D56175A16913AE16E08FB971203D533F328E87009C8E0F05FF0004D5FD8267F8CBAF41F117C77A6EDF0369F28367677208FED398739DBFF3CD78C93C127033838FDA48208AD208E186348618942246836AAA8180001D001400F00000018028A29680128A5A4A0028A28A0028A5A4A0028A5A4A0028A5A280128A5A280128A5A2803F957A28A2800A28A2800AEFBE007FC970F01FFD86AD3FF46AD7035DF7C00FF92E1E03FF00B0D5A7FE8D5A00FE9A68A28A0028A5A4A005A4A28A0028A29680128A28A0028A28A0028A28A002968A2800A4A5A2800A28A4A005A4A5A2800A4A5A28012968A280128A5A2800A4A5A2800A28A280128A2A9EB5ACD8F87348BCD5353BB8AC74EB389A7B8B99DB6A451A8CB313D8002802878D7C69A37C3CF0B6A3E22F105FC5A6E91A7C466B8B999B0AAA3FA9E8057E087EDC3FB6B7883F6AEF1DCF1432C9A7F80F4E9D974AD2D723781C09A5FEF3B75F45071EE7B3FF008289FEDCF71FB4B78C3FE119F0ADE5C43F0EF4895BC95C18FF00B426E86675EE06085CF404F0326BE2FA0028A28A002BEB8FD817F61BD43F6A8F177F6B6B4B3D8FC3FD2E70B7B7518DAD74E304C1192319C1193CE322B92FD8A3F63FD77F6AFF008990D82C52D978434F227D5F55C615101E2243DDDCF000E8327B57EFC7C3AF877A07C29F05E95E15F0C69D0E97A269B179505BC2B81D7258FAB312493DC93401ADA1E87A7F86B47B3D2B4AB386C34DB38960B7B58102A468A30140F402AF51450015F99DFF00053AFDBF4F83A3BBF84DF0EF5143ACCB195D7355B76C9B5561FF001EE841E1C8E58F6040F5AEFBFE0A4BFB7A41F02FC3D73F0FFC137C1FC7BA945B6E2EA06CFF006642DD4E474948E00EA339E0E2BF142F2EE7D42EE6B9B995E7B899CC924B23659D89C924F724D0046CC5D8B312CC4E4927249A4A28A0028A28A0028A28A0028A28A0028A28A002BEC5FF00827DFEC297FF00B4FF008B61F11788925B2F875A54F9BA957E57BF9179104648E0138DCDD8640C1C1AE27F629FD8E3C43FB58F8FC411452D8F83B4D753AB6B0461101E44499FBD211D8741C9C6457EFB7C3DF87FA0FC2DF07697E17F0D69F1699A369B02C105BC2A00C018DC7D58F524F249CD0069E83A0E9FE17D1ACF49D26D22B0D3ACE35860B68176A468060002AFD14B40094514B40094514500145145001452D25001452D250014514B400945145001452D1401FCABD145140051451400577DF003FE4B8780FF00EC3569FF00A356B81AEFBE007FC970F01FFD86AD3FF46AD007F4D34514500145145001F8D14514005145140051451400514506800A28A280168A29280168A4A280168A29280168A4A2800A5A4A280168A4A2801692969280168A4A5A004A5A4A09C024F0050023BAC68CCC42AA8C927A015F8CBFF0528FF82814FF0016B53D47E18780EECC1E0DB39CC3A8EA10B7CDA9488DCA823A441874FE2C0278E2BD17FE0A69FF000509DED7BF09BE196AEDB76B45AF6B763211927836D138EBC67730E39C67835F95D4005145140057AF7ECC5FB3378A7F6A2F89169E18F0F4660B50CAFA86A922168ACA1CFCCEDEA719C2E793C573BF04BE0BF89FE3E7C43D37C21E14D3E5BED42EDB32322FC96F102374AEDD15467A9EE40EF5FD047ECAFF00B33F86FF0065CF85961E16D12DE1935061E76A9AA04C4B7B39E4B33752ABF75474000E393401D1FC0DF81FE17FD9F7E1F69FE12F0A5A791656CA3CC9DC032DCC98E649081C93FA57A051450015F247EDEFFB7369BFB2B7848E93A298351F885A9C05ACAD243B92D10E544F281D4641C2F19C1AED3F6CBFDAFBC39FB277C399351BC963BDF14DF830E91A3A30324CF8E6461FC31AF524F5381D4D7E007C47F889AF7C57F1A6A9E29F12EA136A7AC6A3299259E772C47A28CF4503000EC0500667893C49AA78C35DBED6B5ABF9F53D56F6569EE2EEE1B73CAEC72493F5359B4514005145140051451400514514005145140057B17ECB5FB337893F6A3F89F63E17D123682C81F3751D499098ED201F798FB9E001DC915CE7C0EF821E29FDA0BE2169FE10F09D8B5D5FDD37CF29E22B78FBC923740A057F419FB32FECD3E14FD97FE1C59F863C376B1B5C9456D475464027BE9B1CBB9EB8C9385E80702803A3F82FF067C33F01BE1F69DE10F0A592D9E9B68B966207993C840DD239039638EBEC3D2BB9A29680128A28A00296928A0028A28A00296928A005A4A5A4A005A4A28A00296928A0028A28A005A28A2803F957A28A2800A28A2800AEFBE007FC970F01FF00D86AD3FF0046AD7035DF7C00FF0092E1E03FFB0D5A7FE8D5A00FE9A68A28A0028A28A005A4A28A0028A28A0028A28A0028A28A00296928A00296928A0028A28A005A4A5A4A00296929680128A5A4A0028A28A005A4A28A0028A2968012BF3B7FE0A69FB7CC3F0C344BDF85BE03BD593C5D7CBE56A9A8C3271A7427EF4631D6461C751B467B9E3BCFF82887EDE36BFB36787A4F087852EE29FE22EA56FBD7610FFD9B13642CAE3901CE09507D338C115F86FAA6A979ADEA373A86A17535EDF5D48D34F7370E5E495D8E59998F24927249A008679E4BA9A49A676925918B33B1C9627A934CA28A002BA0F00F80B5CF89DE2FD2FC33E1CB19351D63529D2DE0850756620024F6033927D2B3B40D0351F14EB565A4691653EA3A9DECAB0DBDADB465E495CF40AA3935FBA9FF0004FCFD85F4CFD997C196DE21F10DA4577F11F53843DD4EE037F67A30FF00511FA100E198753919C500771FB167EC6FA07EC95E01FB244D16A9E2DD4111B55D5C47B77B0E4471E7908A49FAF53DB1F4651450015E4BFB4D7ED23E1BFD97FE19DE78B3C404DCCA331D8E9C8E124BC9B1C2038381EA7071E86B7FE367C68F0BFC03F87BA8F8C3C59A84763A6DA8DB1A330F32E2520958A35EACC70781D813D01AFE7EBF6ABFDA7FC4DFB537C4FBDF12EB5712C3A646C62D2F4A0E7CAB380740074DC7AB37524FA6280398F8E5F1C7C53FB41FC40BFF001778B2F0DCDFDCB1F2E1424456F1E788E31D94579FD145001451450014514500145145001451450015D37C35F871AFFC5BF1B695E14F0C5849A8EB3A94A2286141C0F5663D940C927D0564683A0EA3E28D66CF49D22C67D4B53BC9560B7B4B58CC924AEC70AAAA392493D057EEF7EC05FB0E699FB2E783D759D6ED60BBF889A9C205DDE7DF36919C130467381C81923AE3AE2803AFFD8B3F63CD0BF64DF874962863D4BC59A8626D5756F2F059F1C451F708BD3DCE4F19007D17451400514B4940052D2514005145140052D25140051451400514B4940051477A2800A28A28016928A280168A4CFBD1401FCAC5145140051451400577DF003FE4B8780FFEC3569FFA356B81AEFBE007FC970F01FF00D86AD3FF0046AD007F4D34514500145145001597E27F13E95E0BD02FB5BD6EFA1D334AB288CD717570DB52351DC9AD4AFC6AFF0082B37ED6D7BE3AF1FC9F09BC3BA9B2F86343901D552DD86DBABC5C8D8C4724479236F4CF38C81800EB7F698FF82C6EAF71AA5E687F07F4882CAC22631FFC243AA0F3259B07931C23841E858B13E82BE22F14FED85F19FC657B3DCEA9F1175C99E672EC91DC79683D82AE001EC2BC768A00F42FF8686F899FF43D6BBFF81AFF00E347FC3437C4CFFA1EB5DFFC0D7FF1AF3DA2803D0BFE1A1BE267FD0F5AEFFE06BFF8D1FF000D0DF133FE87AD77FF00035FFC6BCF68A00F42FF008686F899FF0043D6BBFF0081AFFE347FC3437C4CFF00A1EB5DFF00C0D7FF001AF3DA2803D0BFE1A1BE267FD0F5AEFF00E06BFF008D1FF0D0DF133FE87AD77FF035FF00C6BCF68A00F42FF8686F899FF43D6BBFF81AFF00E347FC3437C4CFFA1EB5DFFC0D7FF1AF3DA2803D0BFE1A1BE267FD0F5AEFFE06BFF8D1FF000D0DF133FE87AD77FF00035FFC6BCF68A00F42FF008686F899FF0043D6BBFF0081AFFE347FC3437C4CFF00A1EB5DFF00C0D7FF001AF3DA2803D0BFE1A1BE267FD0F5AEFF00E06BFF008D7A37ECF9AF7C65FDA03E2DE83E09D13C6DAEB5C5FCB99A56BD7DB0C2BCC8EC73C003F522BE77AFDA0FF8248FECB0DF0CBE1E5E7C4DF105818BC41E268923D3C4EB87B7B21F36403D3CC2549F68D7D7900FBC7C21E1C8BC1FE16D27448679AEA3D3ED63B617170DBA4976A805D8F762464FB9AD6A2968012968A4A002BE5FFDBA3F6D5D1BF64FF00B2DA795A9F8E753531E99A6EEE23F59E5EE117B0EAC703A648ED7F6AEFDAA3C2DFB2AFC39B8D7F5B9A3B9D5E7464D2F480F896F26C7000EA10123737615FCF97C57F8B1E26F8D5E38D47C59E2CD4A4D4F57BE90BBBBF0A833C2228E15474000C0A00CDF1CF8DF5AF891E2CD4FC4BE22BF9352D675198CF717329C9663D87A01D00EC0561514500152DADACD7D7315BDBC4F3DC4CE238E28C659D89C0007724D440162000493C002BF5ABFE0993FF04FAB6D26C346F8C3F1174F32EA532ADDE83A45CA10B6E8794B9914F5623E6507800AB75C5007A0FF00C1353F6093F0374A5F889E38B58A4F1AEA300165652206FECC84F24927FE5A3700E3A018C9C9C7DFB49D28A002B07C79E3BD0FE19F84754F13788EFE3D3746D3606B8B8B894E30AA33803B93D00EE6B4B58D62C7C3FA55DEA5A95DC36361691B4D3DCDC3848E340325998F0057E14FFC1413F6E8D53F699F195CF877C3F7925AFC38D326DB6B6F19DBF6E75EB3C9FDEC9CED1D00038CE4900E3BF6DDFDB2F59FDAD7E202DC2C52695E10D30B47A5E9864C9C679964EDBDBDBA0E2BE6BA28A0028A28A0028A28A0028A28A0028A28A002A6B2B29F52BC86D6D617B8B999C471C518CB3B138000A86BF5BFFE099BFF0004F75F0DC363F163E24E965B5496312E89A35DA11F6607045C4887F8F1F754F4C938CE3001E8BFF04DEFD8161F811E1FB7F1FF008E2D61B8F1EEA31EFB6B52032E97011F28CF79187248E9903B1AFBCE8A2800A28A2800A2968A004A5A28A004A5A292800A29692800A29692800A29692800A28A5A002928A2800A2968A0028A28A00FE55E8A28A0028A28A002BBEF801FF25C3C07FF0061AB4FFD1AB5C0D77DF003FE4B8780FF00EC3569FF00A356803FA69A28C514005145140143C41AB2683A0EA3A9C8331D9DB4970D9F4452C7F957F2F3E26D7EF7C55E21D4758D46533DF5F4EF713C87F89D8E49AFEA0BC53A30F11786756D289005F5A4B6C73FEDA15FEB5FCBB6ADA6DCE8FA9DD58DE44D05D5BCAD14B1B0C15607041A00A9451450014514500145145001451450014514500145145001451450014514E8A279E548E352CEE42AA8EA49E82803E81FD87BF669BCFDA6BE3AE8BA23C0C7C3761325EEB5705728B6C87718C9F5931B07FBD5FD0EE9F616FA5D8DBD9DA42905ADBC6B14514630A8A060003D00AF95FF00E09BDFB32C5FB3D7C00D32EB50B5F2FC59E258D353D49DC10F12BA831438EDB508C8FEF16AFABE8016928A2800AF33FDA23E3FF867F66DF8677FE31F134C44311F26D6D23C799753904AC6B9FA124F600FB03E995F8B5FF0576D07E2E45F162D354F16CC6EFE1E33345E1F6B242B6B01232C920C9FDF103924F201C6071401F277ED1DFB427897F696F89FA8F8C3C4739DD29F2ACEC95898ED2019D91A0F6C924F7249EF5E5D45140051451401F6DFFC12A3F66DD13E3BFC68D5F59F124297BA3784EDE1BA36322E5679E566116EFF006408DC91F4AFDCB4458D151142AA8C0503000AFC0DFF008270FED5F61FB2F7C60BD3AF8C7857C470C7697F3804B5BB23131CBEE06F7047A1AFDE6D135BB0F12E8F65AB695770EA1A6DEC29716D756EE1E3963600AB291C104106802F54375770585ACD73732A416F0A192496460AA8A064B127A00075A9738073C57E507FC14EFF00E0A023506D57E0FF00C3AD447D9D1DADB5FD5ED5F3BC8E1EDA361DB3C391DC11EB401E71FF000526FDBFDFE356A72FC39F01DD4B07826C6522FEF94ED3A9CA380063A44BCE33F789C90302BF3FA824924939268A0028A28A0028A28A0028A28A0028A28A0028EB457DD9FF0004DCFD831BF681F108F1D78D6DA58BC05A54A3C9B620A9D4EE072133FF003CD7AB6393951DCD007A17FC131BF6027F17DE69DF16BE21E988740864F3B45D2EE94EEBA911BE59DD4F1B0303807EF63A62BF5E40C0C0E0541A7E9F6DA4D85BD9595BC76B696F1AC50C10A8548D14602803A00054F40051452D002514514005145140052D14940051451400514B4940052D251400514B49400514B494005145140051452D002668A5A2803F957A28A2800A28A2800AEFBE007FC970F01FFD86AD3FF46AD7035DF7C00FF92E1E03FF00B0D5A7FE8D5A00FE9A68A28A0028A28A002BF107FE0A9FFB296A3F08FE2E5D7C41D274F66F0778A2E1A579E2195B6BC6CB3C6FFDDDDF315EC403E95FB7F5CAFC4EF863E1CF8C3E0BD47C2BE2BD3A3D5346BE4DB244FC1561F75D4FF0B03C83FD091401FCC0D15F7F7ED43FF0496F1DFC37D4EF757F86625F1B786199A48AC40FF8985B2F5D8540C498EC5707DBD7E1DF117817C45E12BC7B4D6B44BED32E518A34773032107D39140187454DF62B8FF9E12FFDF068FB15C7FCF097FEF834010D1537D8AE3FE784BFF7C1A3EC571FF3C25FFBE0D0043454DF62B8FF009E12FF00DF068FB15C7FCF097FEF834010D1537D8AE3FE784BFF007C1A3EC571FF003C25FF00BE0D0043454DF62B8FF9E12FFDF068FB15C7FCF097FEF834010D1537D8AE3FE784BFF7C1A3EC571FF3C25FFBE0D00435F6BFFC12D3F65F6F8E1F1AFF00E12AD62D049E14F0914B997CC076CF74C4F9518F5C6D663E981EB5F1F7877C29AAF8AB5FD3745D36CA5B8D4350B98ED2DE2087E791D82A8FCC8AFE8B7F64BFD9E74BFD9A3E0B68DE12B140F7C545D6A574705A7BA651BCE703818000F41EE6803D96928A2801690903A9028AF84FFE0ACFFB41EB3F05FE15F83B4EF0BEAAFA4F88F55D63ED31CF0B61D60B743BFF0002F2C7F91A00FBB2B9FF001F780741F89FE12D47C35E26D360D5B46BF8FCB9EDA750CA7D08F420F20F635F247EC11FF050CD27F691D26D7C29E2F9AD749F88D6E9B36A9D916A6A3A49182787C7DE507AE48C0381F6BF5A00FC1DFDB8FF00E09EDE27FD99F57BCF11E816F2EB9F0E267DD15F45F3496393FEAE75EA00ECFC8231C83903E3AAFEA6B5AD12C3C47A55D699AA59C37FA7DD46D0CF6D7081D2442304107A8AFC5FFDBEFF00E09B579F029AEFC73F0F22B9D4FC0CEFBAEAC5BE79B4C24F1C81F3459E013C8E012739A00F8168A3A5140057D51FB247FC142FC7BFB2A5AFF62C16D178A7C20D2190E8D793347E51272C629006D99EB8DA47B57CAF45007DFF00FB437FC15EBC6DF167C2575E1DF08F8722F02DB5E47E5DCDEADF1B9B9652086546088101F5E4D7C02CC5D8B312589C927BD2514005145140051451400514514005145140051457BFFEC6DFB24EBDFB587C481A4D9892CBC3B61B25D5B54DB9582324E14762ED8381EC7D2803B4FD82FF0061CD67F6A6F19C1AB6AB04961F0EF4CB8537F7CD953765482608BD49E85BA2827BF15FBC5E19F0D699E0ED02C345D1ACA2D3F4BB18961B7B68142A4683A002B2BE19FC36D03E11781B47F097862C52C346D2E058218C01B9B1D5D8F7663924F724D74F400B494514005145140051451400B49451400514514005145140051451400B49451400B4945140052D251400B494B4940052D251400B45251401FCAC5145140051451400577DF003FE4B8780FF00EC3569FF00A356B81AEFBE007FC970F01FFD86AD3FF46AD007F4D3451477A0028A28A0028A28A002993411DCC6639635910F5571907F0A7D140147FB0B4DFF00A07DAFFDF95FF0A3FB0B4DFF00A07DAFFDF95FF0ABD450051FEC2D37FE81F6BFF7E57FC28FEC2D37FE81F6BFF7E57FC2AF5140147FB0B4DFFA07DAFF00DF95FF000A3FB0B4DFFA07DAFF00DF95FF000ABD450051FEC1D37FE81F6BFF007E57FC28FEC2D347FCC3ED7FEFCAFF00855EA28028FF006169BFF40FB5FF00BF2BFE147F6169BFF40FB5FF00BF2BFE157A8A00A5FD85A6FF00D03ED7FEFCAFF8527F6169BFF40FB5FF00BF2BFE157A8A00A9168F610C8AF1D95BC6EA7219625047E38AB745140051451400B5F877FF00057AF8A8BE3BFDA6E2F0FDB4AB259785B4F5B3215B204EEC5E5FA1C7963FE035FB65E24D7AD3C2BE1DD535ABE7F2EC74EB596F277FEEC71A1763F9035FCCB7C5BF1C5CFC4AF89BE26F145E7FC7C6AB7F2DCB0CE719638E7E98A00E6B4ED46EB48BFB7BEB1B896D2F2DE45961B885CA3C6EA721948E41079CD7EC5FEC0FFF000534B2F8A6F63E00F8A379169DE2AF2D62B0D665F961D418606C91BA2C87AE4E01C1E72403F8D94F82792DA649A191A296360C8E870548E841A00FEA90104020820F7151DD5B437B6D2DBDC4493C12A18E48A550CAEA460820F0411C62BF2B7FE09F9FF053A16F6D65F0EFE306A2BB23DB1697E259B3BB6F4115C7AE3B3F1C7073D6BF5522952789248DD648DC0656539047A83401F93DFF000509FF0082664D6173A87C48F843A487B16533EA9E1AB3500C4DC969ADD3BA9EE8BC8C7039E3F2F1D1A3764752ACA7055860835FD531018104641EA2BF373F6FCFF826459F8EEDB55F887F0AEDD6CFC4AB9B8BEF0F4680437A33976871F71FBEDE879031C5007E3DD156351D3AEB49BE9ECAF6092D6EE0731CB0CABB59181C1047AD57A0028A28A0028A28A0028A28A0028A28A0028A2BB8F831F06FC4DF1E3E2069DE10F0A5935E6A778DCB7F0429FC5239ECA3D6803A0FD9A3F670F147ED39F13B4EF0A7876DD9617903DFEA2C3F75656E3EFC8C7D40E8BD492077AFE837E047C0BF0B7ECF3F0EEC3C23E14B14B5B3B71BA69F68F32EA520069643DD8E07D0002B96FD947F659F0CFECADF0D6D3C3BA3A8BCD5A4457D535774024BB9F1F311FDD4073B57B0C6493CD7B5D001451450014B495C17C70F8D3E1CF803F0E352F18F89EE441616836C7183879E520ED8D7DCE0FE009A00EF696BC07F627F8FBAAFED2DF06E6F1D6AD6F0D9B5DEAF770DB5A403E582DD182C6B9EA4E3924F524F41803DFA800A4A2968012968A4A005A4A28A0028A28A005A4A28A0028A28A0028A5A4A0028A28A005A4A28A005A4A28A005A2928A00FE5628A28A0028A28A002BBEF801FF25C3C07FF0061AB4FFD1AB5C0D77DF003FE4B8780FF00EC3569FF00A356803FA69A28A2800A28A2800A3AD14500145145001451450014514500145145002D252D250014B494B400945145001451450014B4945007CB7FF052DF89EBF0CFF640F1B6C95A3BED7615D12DC29C16F3C8497FF21192BF9FCAFD3FFF0082D77C544BCF117827E1F5B4CCC2CA27D52ED01E15DFE5407DF6F3F8D7E60500761F0A7E13789FE35F8C21F0BF8434D6D5B5C9A19268AD51954B8452CDCB103A0EE6B9BD6746BFF0F6A973A6EA9653E9FA85B398A7B5BA8CC7246C0E08653C835FA5FF00F0451F8582FF00C4DE38F88170014B08E3D2AD729FC6E0BC873DBE52831EF5F51FEDD3FF0004F3D0FF0069DD35FC43E1A6B7F0FF00C41B6195B964C417EA01FDDCB8E4374C38CFA10739001F8435FA19FF0004FCFF0082945DFC25BBD3FC01F13B50B8BDF05C9882CB5798B4B26987A2AB7563176E33B78C0C66BE14F881F0FF005FF85DE2ED4BC31E27D366D2B5AD3E5314F6D30C107B107B8230411D41AE7A803FA9BD1B59B0F10E976DA96997906A1A7DD20920BAB6903C7229E8558706AE57E127EC2DFF00050CD77F666D4A3F0DF8904BAF7C3EBA9419202FFBEB1638064889EA300650F5C7515FB83E0CF1A68BF10FC31A7788BC3BA8C3AAE8DA842B3DB5D5BB6E5752323E87DBB5007C6BFB79FF00C139749FDA1ADE7F18781ED6D747F8831A1F39102C316A7E9E61E0093B6F3D4704F02BF14BC57E13D67C0BE22D4341F1069B73A46B161334173677719492375382083F4EBD0F6AFEA46BE55FDB7BF611F0E7ED59E1996FEC4C3A278FECE226CB541182B7181C43381C953D03755E0E0818201F80545757F13FE177897E0EF8C6FBC31E2AD365D3356B372AF1C83861D994F707D6B94A0028A28A0028A28A0028A2ADE91A45E6BDA9DB69FA7DB49797B72E238A0897733B1E800A00D3F02781B5CF895E2ED2FC33E1CD3A6D575AD4A6105B5AC0BB9998F53EC0004927800127815FBE3FB0DFEC6DA37EC9FF000F0A4B14179E34D55564D57520A0B2E07102375D8A7278E0939F4AE3BFE09F3FB08E9FFB32F84EDFC4BE238E2BFF0088BAA5B86B890A7CBA723004C1193CEE1D19B8C9C81C75FB268016928A28016928AA5AE6B761E1BD22EF54D52EE2B1D3ED2369A7B89982A468064924D00657C43F885E1FF857E0ED53C53E27D4A2D2B44D36169EE2E263D0019C28EACC7A05192490057E04FEDB3FB63EBBFB59FC40172CD3E9FE0FD3599749D20B9DAA0F595C0E0C8C31CF61C0AECBFE0A07FB726A1FB4E78DEE742F0FCD25A7C3BD2E631D9C418837CCBC19DC7A139DA3B0C77AF8FA803F75FF00E091BFF2673A5FFD85AF7FF4315F6857C5FF00F048DFF9339D2FFEC2D7BFFA18AFB42800A5A4A5A004A296928016929692800A5A4A28016928A5A002928A2800A29692801693B5145002D252D2500145145002D1498A2803F958A28A2800A28A2800AEFBE007FC970F01FF00D86AD3FF0046AD7035DF7C00FF0092E1E03FFB0D5A7FE8D5A00FE9A68A314500145145001451450014518A2800A28A2800A28A2800A28A28016929692800A5A4A2800A29692800A2968A0029198229627000C9A5AF34FDA4FE2543F087E0578D7C5924C207D3B4D95E124F2652B8403DF245007E0E7EDD7F13CFC5AFDAB7E22EB51DC1B8B287537D3AD5B3F2F956F8814AFB111EEFC735E0B525D5CCB7B7335C4EE649A57323BB756627249FC6BA9F847E07B9F895F13FC2DE17B440F3EABA8C36A03740ACE3713EC1727F0A00FDCCFF008261FC2EFF008565FB217855A7B716FA96BB24FABDD6570CDBE465889F5FDD245F9D7D5D597E15F0F5B784BC31A468766A12D34DB48ACE25518012340A38FA0AD5A00F9A7F6C9FD883C21FB57F865E59A18748F1B5AC456C35D8D30FC6711CD8FBF1E7D72464E2BF087E2EFC1DF167C0EF1A5E785FC61A44FA4EA96CC46255F925507EFC6DD1D4F620915FD39D78CFED49FB2CF84BF6A9F87D2F87BC430ADB6A10932E9DABC71869ACE5C751D32A7A15CF23F0A00FE6FABE9AFD8CBF6E3F16FECA5E2686DC4F36AFE06BA9737FA24AE59173D64841FB8E3AF18CF7CD79F7ED23FB3478C7F661F1F5C786BC556998CFEF2CB5280136F7909240743D8F04153C823F1AF26A00FE9C7E0EFC65F09FC76F0459F8ABC1DAB41AAE997030DE5B0F320930098E45EA8C32383EA0F422BB6AFE71BF655FDAD3C61FB2978E1759F0FCBF6DD26E4AA6A5A34EE44377183FF8EB0C9C363BF7AFDE3FD9CFF695F06FED35E04B5F11F856F0090C6BF6CD36661E7D9CA47CC8C3B8072030E0FE9401CE7ED61FB1E782BF6AEF083596B968965E22B546FECDD7605027B763FC2C7F8D09032A73ED835F833F1EFF0067FF00187ECE7E3DBDF0B78BF4D96D2789CFD9AF021F22F22CFCB2C4FD1811E9C8390704115FD2FD7967ED15FB37F843F698F015D7867C55680B3231B3D46251E7D9CB8E1D09F438C8EFEDD6803F9ABA2BDCFF006ADFD917C65FB2878D4E95AF442FB45BA2CDA6EB76CA7C9BA407A1FEEB8C8CA9FC09AF0CA0028A28EB400FB7B796EEE2282089E69E56091C71A9667627000039249ED5FB35FF0004D6FD8021F849A3DB7C49F883A5ABF8D6EC0934ED3EE933FD9916061CA9E929393CF2A31D0E6B80FF0082627FC13FE6D2AE34CF8C1F10EC424C13CED0B47B88F254B0E2E6407A100E5475C9078C60FEA4F4A005A4A5A4A005A4A28660AA589000E493D05004577770585ACD73733476F6D0A3492CD2B0548D00C96627800004926BF15FFE0A49FB7D4DF1BF5897E1F781351921F02D8CA45E5D40C57FB5251C0C9EA635E703A12727A0C7A2FF00C14CFF00E0A1275C6D5FE107C3ABCC69EAC6D75DD6A07FF5E470F6F111FC39E19BBE081C727F3009C9A0028A28A00FDD6FF8246FFC99CE97FF00616BDFFD0C57DA35F17FFC1237FE4CE74BFF00B0B5EFFE862BED0A0028A28A005A2928A005A4A28A005A4A5A4A0028A2968012968A4A002968A4A0028A29680128A5A4A00296928A0028A5A2803F957A28A2800A28A2800AEFBE007FC970F01FFD86AD3FF46AD7035DF7C00FF92E1E03FF00B0D5A7FE8D5A00FE9A68A28A0028A28A0028C515F1A7FC145FF6DF5FD987C190787FC332473F8FF5B5220CE08B0807DE9987F78E4051F53DB900F6EF8E5FB587C2DFD9DA0FF8ADFC5967A75FB47E647A5C44CD7920EC44299600F66200F7AF8D7C59FF0005B2F04D95ECB0F87FC07AC6A76EA70B75753C7087FF00807247E35F929E29F156ADE36D7AF35AD72FE7D4F54BC90C93DCDC3967763EE6B2A803F57BFE1F7963FF0044D6E3FF0003568FF87DE58FFD135B8FFC0D5AFCA1A2803F57BFE1F7963FF44D6E3FF03568FF0087DE58FF00D135B8FF00C0D5AFCA1A2803F57BFE1F7963FF0044D6E3FF0003568FF87DE58FFD135B8FFC0D5AFCA1A2803F57BFE1F7963FF44D6E3FF03568FF0087DE58FF00D135B8FF00C0D5AFCA1A2803F57BFE1F7963FF0044D6E3FF0003568FF87DE58FFD135B8FFC0D5AFCA1A2803F5FBE1F7FC16287C44F1D787FC2FA7FC32BA7BDD62FE1B18B65D8620C8E17381D719CFE15FA50858A2961B588E47A1AFC26FF00824E7C2D3E3FFDACF49D5E68BCCB1F0BDA5C6A92E47CA5CA18631F50F2AB7FC06BF76A800A29692800AFCF0FF82CEFC567F0BFC17F0B782ADAE04571E24BF92E26552373416EAB953E80B4C9FF007CFD6BF442BF0BBFE0ADBF1547C41FDA965D16DA712D8785AC23D382AF413B319253F5F9907FC06803E28AFB6BFE091DF0B17C7BFB54C3ADDD5BF9B63E17D366D443B67689D8AC518FAE24738FF66BE25AFD9BFF0082337C2B1E19F825E23F1A4F1AADCF88AFD608C920911401B1F404C87FEF91401FA1B4945140052D252D0079CFC73F801E0BFDA2BC173786BC69A52DFDA364C1708764F6CE47DF8DFAA9FD0E3906BF07FF006BDFD8DBC5BFB26F8C5AD3528A5D4BC2F772B0D335D48888A75E48472385931D57D891C57F44B5CBFC4DF865E1CF8BFE0AD4FC29E2AD3A2D5346D423D92C32004820E5594F6604020FA8A00FE602BD1BE047C7EF18FECEBE3CB2F14F83F5492CAE6171E7DA93BA0BB8FF008A3950F0C08E3D47504100D7B77EDB7FB01F8ABF65BD6E5D674E8DF5DF87F7521FB3EA70A92F6A73FEAE75FE13E8DC83EB9E2BE4BA00FE8B3F649FDB0FC1DFB58783BEDBA35CC765E24B38D4EA7A14AE3CEB7278DE07568C9CE1871D8F35EF75FCC17C32F89DE24F841E30B1F13785B539B4BD5AD18324B13101867255877071D2BF737F620FDBD3C37FB54F8721D2F5029A27C40B3880BCD35D804B9C0E6580F707A95232A7239033401EF9F17BE0EF84FE39F822F7C2BE31D262D574AB91901C61E17C71246C395619EA3E9D09AFC28FDB43F61CF157ECA5E279EE560B8D5BC0B732E2C35B58C955DDD23948E15C7239C671915FD0656378C3C21A378FBC33A8F87FC41A7C1AAE8DA842D05CDA5C2064911860823FAF6A00FE5C2BF463FE099FFF0004FF0087E2B4F07C4FF88BA648DE15B6973A4E9770855351914F3230FE28948C63A310473822BD6342FF008239E9FA57ED1B0EA973ACC379F0A21CDE258396FB634A186DB6718DBB3924B8392171819AFD2DD274AB3D0B4CB5D3B4FB68ECEC6D62586082150A91A28C0503B002802CA22C48A88A1514602A8C002968A5A004A29692800AFCDDFF00829AFEDFF1F802C6EBE157C3BD515FC4B73194D6754B4707EC087A42AC3FE5A30CE7BA8C7AD7A37FC149FF006DD93F670F082F83FC30B20F1C6BD6C4C579D12C60276B483B97EA17D339CF18AFC3BD42FEE355BE9EF2EE67B8BA9DCC92CB21CB3B139249A008647695D9DD8BBB125998E493EA6928A2800A28A2803F75BFE091BFF2673A5FFD85AF7FF4315F68D7C5FF00F048DFF9339D2FFEC2D7BFFA18AFB42800A28A2800A5A4A5A004A28A28016928A2800A2968A004A29692800A28A280168A4A2801692969280168A4A5A0028A28A00FE55E8A28A0028A28A002BBEF801FF25C3C07FF0061AB4FFD1AB5C0D77DF003FE4B8780FF00EC3569FF00A356803FA69A33451400514628A006CB2A431BC8EC111016663C0007535FCD67ED37F192FBE3CFC6DF1478C6F2E1A78AF6EDC5A2B0C08ADC1223403D00E3D6BFA35F886B70FE01F122DA7174DA6DC08BFDFF0029B6FEB8AFE5E5FEFB7D680128A28A0028A28A0028A28A0028A28A0028A28A0028A29510C8EAAA32CC7000A00FD92FF82317C2C8B41F835E23F1C4D1B7DAF5DBF36B0BB7410C5C103EADFC857E8A5797FECBFF000CBFE14F7ECFDE03F08B2ECBAD3B49812E8631FE905034A7FEFB2D5EA1400514B4940193E2EF11DAF83BC29AD6BF7AC16CF4AB29AFA76270047146CEC73F4535FCCB7C52F1A5DFC45F88FE24F135EB87B9D52FE5B9665E9CB1C63F0C57EE7FFC14FF00E288F869FB2178AE18A511EA1E203168F6E376091238F37EBFBA127E75F81140057D59FB117EDE1E26FD95BC4A9A75F4B26B3E00BD702F34A93E6301CFFAE84F5561DC7423B64023E53A2803FA7EF863F13BC37F187C13A6F8B3C27A9C3AB68B7E9BE29E16CE08386461FC2CA72083C822BA9AFE75FF00646FDB23C5FF00B2678B5EEF483FDA5E1DBD753A8E8B33911CC071B97FBAE0743F9D7EF07C06FDA03C1DFB46781ADBC4FE0FD405CDB38027B4970B716AF8E5245C9C1F71907B1A00F48A28A6CB22431B3C8CA88A32598E001EE6801D457CDFF1D7FE0A0BF063E0224B06A9E24FEDDD6101C695A0A8B99891D8B6446BCFAB03ED5F9DBF1EBFE0B0DF107C7B1DCE9DF0FB498BC0BA63E545E3CBE7DF32FA86002C67BF19C7AD007EB0FC6DF1BFC37F09782AF61F89DAB68D61E1EBD89A196DF5899156E148E55549CB1FF779AFE79FF68EB1F86B63F1635B5F84FA85E5FF00831A776B4FB623298C67EE296019907452DCE31924D715E2DF19EBBE3CD666D5BC43AB5DEB3A94DF7EEAF25323B7E27EB58D40056AF857C57AC781FC4361AEE81A8DC693AC584CB3DB5E5AB949227539041FA8E8783DEB2ABD47E107ECC3F13FE3B5FC56DE0CF07EA1AA472100DE32086D90138DC65721703D8D007EB7FEC11FF051AD3BF685860F06F8E6E2D74BF8811A0F266E228B5303AEC1D049DF68EA3A0E2BEE7AFCB9FD9D7FE08DB2E89A8D96B9F143C52BF68B7759A3D2FC3D238DAC082374E4290463F841EBD6BF4FB4DB14D334FB6B389A478ADE25891A690BB90A300B31E49E392793401628A28A0028A28A005A4A28A00FC63FF82D27FC97EF0AFF00D81BFF0067AFCF4AFD0BFF0082D27FC97DF0AFFD81BFF67AFCF4A0028A28A0028A28A00FDD6FF8246FFC99CE97FF00616BDFFD0C57DA35F17FFC1237FE4CE74BFF00B0B5EFFE862BED0A0028A28A00296928A005A28A4A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A005A2928A005A2928A00FE5628A28A0028A28A002BBEF801FF0025C3C07FF61AB4FF00D1AB5C0D77DF003FE4B8780FFEC3569FFA356803FA69A28A2800A28A28011D164464750CAC3054F208AFE6DFF6B0F82975F003E3C78A7C21342D15A5BDCB4B62C79F32D98931B67DC57F4935F257FC1407F625B7FDAB3C0D0DFE8821B4F1F68EA4D84F29DAB731FF00140EDDB3D413D08E70092003F0368AE8BC7DF0F3C47F0BFC4D79E1FF0014E8F75A2EAD6AE524B7BA8CA9E0E32A7A30F71915CED001451450014514500145145001451450015EE3FB13FC285F8CFF00B4C7827C393A799606F16EAF176E730467738FC471F8D78757E9A7FC112BE1EFDBBC6FF107C6B2A2EDD3ED20D36072392D2B33C807D0469F98A00FD73A29692800A5A4A1982A927A0E6803F237FE0B59F14C6A3E30F05F802DDB31E9D0BEA57433D2471B5063FDDC9FC6BF32ABDB7F6D4F89C7E2E7ED43F113C40B299AD7FB5A6B2B5933C34103186223D8A229AF12A0028A28A002BD63F66FFDA5FC67FB30F8FEDFC4BE13BEC21FDDDEE9B3E5ADAF2124128EB9EBC6430C10475EA0F93D1401FAFDE39FF82D3F84ACFC1F632F853C2379A878967801B88350731DBDACBDC647320EFC115F05FC6EFDBFFE35FC77FB45BEB3E2B9748D1E6EBA4E840DA418CE704825D87FBCC6BE75A2801D248F348CF2333BB1CB331C927D49A6D777F0BFE04FC40F8D1A92D8F827C25A9F886527064B68710A7FBD2B6117AF722BEFFF00809FF0463D6B5092DB51F8B1AFC5A4DB7DE7D1B48904B39E3EEBCB8DABCF752DD2803F32AD6D26BEB8482DE279A673B55106493E8057D79F017FE0977F18BE34456DA86A3651F823439407177ACA3095D4F42908C16CF5E4818AFD89F829FB277C2CFD9FAD234F077846C2CAF8001F549A212DE3E3D66605BF0040AF5DA00F8B7E057FC128BE0EFC25782FF5D8AF3C79AD261BCDD55C25B237AA42807E4ECD5F63691A2E9FA0584565A658DBE9F670A848EDED6211A228E00000C0AB945001452D2500145145001452D2500145145007E31FFC1693FE4BF7857FEC0DFF00B3D7E7A57E85FF00C1693FE4BEF857FEC0DFFB3D7E7A50014514500145145007EEB7FC1237FE4CE74BFF00B0B5EFFE862BED1AF8BFFE091BFF002673A5FF00D85AF7FF004315F68500145145002D2514500145145001476A28ED40051451400514514005145140051451400514B494005145140051451401FCAC5145140051451400577DF003FE4B8780FF00EC3569FF00A356B81AEFBE007FC970F01FFD86AD3FF46AD007F4D345145001475A28A0028A28A00F38F8C1FB3BFC3CF8F3A67D8BC6FE18B3D6828C4770E0A4F1FF00BB22E1BF0CE3DABE42F13FFC1177E116AB752CFA4789FC55A3EF3910B4D6F3C69ECA3CA538FA935FA0945007E6DFFC3923C05FF450FC43FF0080D07F851FF0E47F017FD143F10FFE0341FE15FA4945007E6DFF00C3923C05FF00450FC43FF80D07F851FF000E48F017FD143F10FF00E0341FE15FA4945007E6DFFC3923C05FF450FC43FF0080D07F851FF0E48F017FD143F10FFE0341FE15FA4945007E6E7FC391FC05FF00450FC43FF80D07F851FF000E47F017FD143F10FF00E0341FE15FA4945007E6D7FC3923C05FF450FC43FF0080D07F857D5BFB22FEC91A07EC87E0AD63C3FA26AD7BADFF0069EA06FE5BBBE44571FBB4408028C606C27FE046BDDE8A0028A28A002BCCBF69AF887FF0AA7E00F8F3C54AC566D3B499E4871D4C8576A7EA457A6D792FED65F0D6E7E2EFECE7E3DF0A58A97D46FF004B945AA8EAD328DC83F1231F8D007F3692CAF348F248C5E47259998E4927A934DA92E6DA5B3B896DE789E19E272924522956460704107A107B5474005145751E00F85BE2FF008A9AC2697E10F0D6A7E23BE638F2B4EB57976FBB1030A3DC90280397A7C30C971208E24691CF4541926BF45FE00FFC11C3C69E2B36BA8FC50D523F0858310CFA6594893DE95CF20B2EE45C8F72467915FA29F047F61DF837F011619BC3BE0DB1B9D5E31C6AFAAC62EEE81F5577CECFF80E2803F1C3E047FC139FE32FC768EDAFAD7431E1DD0A66006A9AC931295E09644FBCC39AFD15F813FF000483F85DF0E26B4D4BC67A85EF8FB568B0CD04CA2DAC4375FF0056B97383EAF8F515F79E31450065F86FC2DA3F83F4A834DD134CB5D2AC205D91DBDA4423451F415AB49EB4B4009452D14005251450014B45140094B4945001451450014B4525007E31FF00C1693FE4BEF857FEC0DFFB3D7E7A57E85FFC1693FE4BEF857FEC0DFF00B3D7E7A50014514500145145007EEBFF00C1237FE4CE74BFFB0B5EFF00E862BED0AF8BFF00E091BFF2673A5FFD85AF7FF4315F685002D25145001452D140094514B400945145002D2514500145145002D25145002D2514B4005252D25002D1494B40051451401FCABD145140051451400577DF003FE4B8780FFEC3569FFA356B81AEFBE007FC970F01FF00D86AD3FF0046AD007F4D345145001451CD1400B4945140051451400519A28A0028A28A0028A28A0028A5A280128A28A0028A5A4A0028EB452D007E7C7ED8BFF04A6D2BE35788B51F19FC3DD5A0F0CF892F5DA7BAD36EE2CD9DD48724B2B2F31963C9E18649E95F1DE95FF0480F8F57FABC76972BE1DD3ED89C35ECBA83346A3D70B1927F2AFDCAA2803F3AFE05FF00C11B3C0DE0F6B6D43E237882E3C657E9876D3ECE2FB2D983FDD624B3C83DFE4FA57DE5E0AF873E17F871A5AE9DE17D06C342B25007956302C60E3A671C9FC6BA3A4A005A4A28A0028A2968012968A4A0028A28A0028A28A002968A4A00296928A0028A28A005A28A4A00FC63FF0082D27FC97EF0AFFD81BFF67AFCF4AFD0BFF82D27FC97EF0AFF00D81BFF0067AFCF4A0028A28A0028A28A00FDD6FF008246FF00C99CE95FF616BDFF00D0C57DA55F16FF00C1237FE4CE74BFFB0B5EFF00E862BED1A0028A28A0028A5A28012968A4A00296929680128A296800A2928A0028A28A005A2928A005A4A5A4A005A4A28A005A28A2803F957A28A2800A28A2800AEFBE007FC970F01FFD86AD3FF46AD7035DF7C00FF92E1E03FF00B0D5A7FE8D5A00FE9A68EF451400514514005145140051451400514514005145140051451400B45149400514514005145140052D25140051451400B49451400514B494005145140051452D00251452D002514514005145140052D2514005145140051451401F8C7FF05A4FF92FBE15FF00B037FECF5F9E95FA17FF0005A4FF0092FDE15FFB037FECF5F9E94005145140051451401FBADFF048DFF9339D2FFEC2D7BFFA18AFB46BE2EFF8246FFC99CE97FF00616BDFFD0C57DA34005145140051451400514514005145140051451400B4945140051452D002514514005145140051452D001452628A00FE5628A28A0028A28A002BBEF801FF0025C3C07FF61AB4FF00D1AB5C0D77DF003FE4B8780FFEC3569FFA356803FA69A28A2800A28A2800A28A2800A28A28003451450014668A2800A28F6A3BD001452D250014519A28016928A2800A3B5141A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A296800A4A29680128A28A005A4A28C500145145007E31FFC1693FE4BF7857FEC0DFF00B3D7E7A57E85FF00C1693FE4BF7857FEC0DFFB3D7E7A50014514500145145007EEBFFC1237FE4CE74BFF00B0B5EFFE862BED0AF8BBFE091BFF002673A5FF00D85AF7FF004315F68D00145145002D251450014514500145145001451450014514500145145001451450014514500145145001452D1401FCAD5C4125ACF2432A949118AB29EC4532BBAF8EDE1F3E14F8CDE35D18A18CD8EAD736FB08C636C8462B85A0028A28A002BADF845AFD97857E28F85359D46430D8586A76F733C814B15457058E075E0572545007F40FFF000F33FD9BBFE8A4C1FF0082EBBFFE3549FF000F33FD9BBFE8A441FF0082EBBFFE355FCFCD1401FD037FC3CCFF0066EFFA29107FE0BAEFFF008D503FE0A67FB377FD14883FF05D77FF00C6ABF9F9A2803FA07FF87997ECDDFF0045260FFC175DFF00F1AA3FE1E67FB377FD14983FF05D77FF00C6ABF9F8A2803FA07FF87997ECDDFF0045260FFC175DFF00F1AA3FE1E65FB377FD149B7FFC175DFF00F1AAFE7E28A00FE81FFE1E65FB377FD14983FF0005D77FFC6A8FF87997ECDDFF0045260FFC175DFF00F1AAFE7E28A00FE81FFE1E65FB377FD14983FF0005D77FFC6A8FF87997ECDDFF0045260FFC175DFF00F1AAFE7E28A00FE81FFE1E65FB377FD14983FF0005D77FFC6A8FF87997ECDDFF0045260FFC175DFF00F1AAFE7E28A00FE81CFF00C14CBF66EFFA29307FE0BAEFFF008D51FF000F32FD9BBFE8A4DBFF00E0BAEFFF008D57F3F145007F40FF00F0F33FD9BBFE8A441FF82EBBFF00E3547FC3CCBF66EFFA29107FE0BAEFFF008D57F3F145007F40FF00F0F33FD9BBFE8A441FF82EBBFF00E3547FC3CCBF66EFFA29307FE0BAEFFF008D57F3F145007F40FF00F0F32FD9BBFE8A441FF82EBBFF00E3547FC3CCBF66EFFA29307FE0BAEFFF008D57F3F145007F40FF00F0F32FD9BBFE8A441FF82EBBFF00E3547FC3CCFF0066EFFA29107FE0BAEFFF008D57F3F145007F40FF00F0F32FD9BBFE8A45BFFE0BAEFF00F8D51FF0F33FD9BBFE8A441FF82EBBFF00E355FCFC51401FD03FFC3CCBF66EFF00A29107FE0BAEFF00F8D51FF0F32FD9BBFE8A4DBFFE0BAEFF00F8D57F3F145007F40DFF000F33FD9BBFE8A441FF0082EBBFFE354BFF000F32FD9BBFE8A4C1FF0082EBBFFE355FCFC51401FD03FF00C3CCFF0066EFFA29107FE0BAEFFF008D51FF000F33FD9BBFE8A441FF0082EBBFFE355FCFC51401FD03FF00C3CCFF0066EFFA29107FE0BAEFFF008D527FC3CCFF0066EFFA29107FE0BAEFFF008D57F3F345007F40FF00F0F33FD9BBFE8A441FF82EBBFF00E3549FF0F33FD9BBFE8A441FF82EBBFF00E355FCFCD1401FD03FFC3CCBF66EFF00A29307FE0BAEFF00F8D51FF0F33FD9BBFE8A441FF82EBBFF00E355FCFC51401FD03FFC3CCFF66EFF00A29107FE0BAEFF00F8D51FF0F33FD9BBFE8A441FF82EBBFF00E355FCFC51401FD03FFC3CCBF66EFF00A29107FE0BAEFF00F8D51FF0F33FD9BBFE8A441FF82EBBFF00E355FCFC51401FD03FFC3CCFF66EFF00A29307FE0BAEFF00F8D527FC3CCBF66EFF00A29307FE0BAEFF00F8D57F3F345007D97FF0540F8F3E06F8FF00F18340D67C07AE2EBBA6DAE99F679674824882BEECE3122A9FD2BE34A28A0028A28A0028A28A00FDDAFF008248C0F0FEC6DA33BAE165D52F5D0FA8F331FCC1AFB36BE67FF826DF878F86BF62DF86F6CC8565960BAB97CF5264BB9981FF00BE4AD7D3140051451400B49451400B49452D00149451400B4945140051451400B494514005145140051451400B49452D002628A3345007E1C7FC15CFE138F017ED35FF000905BA15B2F14D98BDCE303CF53B65FE6A7F1AF87EBF7EFF00E0A3BFB31A7ED19F00AF64D3A12DE2BF0E13A969AC8A0B4A00C4B09F664C918FE245AFC069A17B799E2950A488C5595860823820D00368A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A002BA5F869E0CBBF889F107C39E19B185AE2EB55BF86D12352013B9C03D7D064FE15CD57E937FC11F7F660FF0084A7C697DF1775DB7DDA668A1AD7488DD7892EDBEF4BEE11770FAB8F4A00FD65F02F856D7C0BE0AD0BC3B64823B5D2AC61B38C2F4C2205CFE38CD6E514500145145002D2514500145145002D14945002D25145002D25145002D149450014B494500145145002D14945002D145140085430208C83C107BD7E3DFF00C1513F61293C0FAF5CFC56F87FA31FF846AFBE7D6AC2CD722CAE32733041D23718271C060C4E322BF612A0BEB0B6D4ECE6B4BB823B9B5990A490CAA191D48C1041EA2803F95FA2BF543F6D7FF824FCED7575E31F82D00911CB4B79E1691B057A92D6EC7A8FF60F3E87B57E617893C31AB783F58B8D2B5BD3AE74AD46DDB64B6D75194753EE0D0066514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514A88D2385552CCC70001924D7D7DFB25FF00C1373E20FED11A8DAEA9ACDBC9E10F050DB249A8DE447CDB95CFDD813B9C6792401EF401E69FB237ECA3E26FDAAFE255AE8BA5DBCD6FE1FB6951F57D636FEEED21CF2013C17233B57D7DB9AFE837E1AFC39D07E12F8234AF0A786AC534FD1B4D84430C283F3627B927926B2FE0C7C15F09FC03F0258784FC1FA6AD86996ABF339C196773F7A491B037313F87A002BBAA0028A28A0028A28A0028A28A002968A280128A28A0028A28A0028A28A0028A29680128A296800A4A5A4A0028A28A0028A5A280128A28A002BCA7E35FECB3F0BBF684B609E39F08586AD76ABB23D4554C37918EC1664C3E07A138F6AF56C51401F995F14FFE08A5E1ED4A6B8B8F87FE35B9D18B0CC765AC47E7C487D37A8DD8FAE4FD6BC1B5BFF8234FC64D3B3F61D5BC3FAB63A7957063CFFDF6057ED751401F85FF00F0E89F8FDFF40CD27FF0670FFF001547FC3A27E3FF00FD03349FFC19C3FF00C557EE8518A00FC2FF00F8744FC7FF00FA06693FF83387FF008AA3FE1D13F1FF00FE819A4FFE0CE1FF00E2ABF7428A00FC2FFF008744FC7FFF00A06693FF0083387FF8AA3FE1D13F1FFF00E819A4FF00E0CE1FFE2ABF7428A00FC2FF00F8744FC7FF00FA06693FF83387FF008AA3FE1D13F1FF00FE819A4FFE0CE1FF00E2ABF7428A00FC2FFF008744FC7FFF00A06693FF0083387FF8AA3FE1D13F1FFF00E819A4FF00E0CE1FFE2ABF7428A00FC2FF00F8744FC7FF00FA06693FF83387FF008AA3FE1D13F1FBFE819A4FFE0CE1FF00E2ABF7428A00FC2FFF0087457C7EFF00A06693FF0083387FF8AA3FE1D13F1FFF00E819A4FF00E0CE1FFE2ABF7428A00FC2FF00F8744FC7FF00FA06693FF83387FF008AA3FE1D13F1FF00FE819A4FFE0CE1FF00E2ABF740D1401F85FF00F0E89F8FFF00F40CD27FF0670FFF001547FC3A27E3FF00FD03349FFC19C3FF00C557EE851401F85FFF000E89F8FF00FF0040CD27FF000670FF00F1547FC3A27E3FFF00D03349FF00C19C3FFC557EE851401F85FF00F0E8AF8FDFF40CD27FF0670FFF001547FC3A27E3FF00FD03349FFC19C3FF00C557EE851401F85FFF000E89F8FF00FF0040CD27FF000670FF00F1547FC3A27E3FFF00D03349FF00C19C3FFC557EE851401F85FF00F0E89F8FFF00F40CD27FF0670FFF001547FC3A27E3FF00FD03349FFC19C3FF00C557EE852D007E177FC3A27E3FFF00D03349FF00C19C3FFC551FF0E89F8FFF00F40CD27FF0670FFF00155FBA145007E17FFC3A27E3FF00FD03349FFC19C3FF00C551FF000E89F8FF00FF0040CD27FF000670FF00F155FBA14B401F85DFF0E89F8FFF00F40CD27FF0670FFF001547FC3A27E3F7FD03349FFC19C3FF00C557EE852D007E177FC3A27E3FFF00D03349FF00C19C3FFC551FF0E89F8FFF00F40CD27FF0670FFF00155FBA145007E17FFC3A27E3FF00FD03349FFC19C3FF00C551FF000E89F8FF00FF0040CD27FF000670FF00F155FBA145007E17FF00C3A27E3FFF00D03349FF00C19C3FFC551FF0E89F8FFF00F40CD27FF0670FFF00155FBA145007E17FFC3A27E3FF00FD03349FFC19C3FF00C551FF000E89F8FF00FF0040CD27FF000670FF00F155FBA1474A00FC2FFF008744FC7FFF00A06693FF0083387FF8AA3FE1D13F1FFF00E819A4FF00E0CE1FFE2ABF7428A00FC2FF00F8744FC7FF00FA06693FF83387FF008AA3FE1D13F1FF00FE819A4FFE0CE1FF00E2ABF7428A00FC3FD27FE08F5F1CAFA4DB76744D3573F7E4BE47FF00D009AF58F007FC1127599AE124F1A7C41B3B7B7DDF341A35BB3C98FF0079C633F857EB451401F30FC1AFF82707C0BF831756D7F69E134F116B36EC1E3D475F7376CAC3A308DBF76083C821320D7D3A88B1A2A228555180AA3000A5A280168A4A28016928A2800A28A280168A4A280168A4A28016928A28016928A2800A28A2800A28A2800A5A4A2800A0D145002D25145002D1499F7A28016928A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A3BD145001451450014514500145145001451450014514B40051494500145145001451450014B49450014B49450014B494B4005252D250014B45250014514B400525145002D252D25001451450014B49450014B494B40094B494500145145002D252D140094B4945002D2514B40094B451400525145002D252D140094B4945002D252D14005252D25002D1451400527A514500028A28A005A43451400B49EB45140077A05145002D345145002F7A28A28003D28EF451400B49E94514001A5A28A0028A28A00414B451400521E945140077A5A28A0028A28A0028A28A00293BD1450006968A28012968A2800A28A2800A4F5A28A005A28A28010D2D14500149DE8A28016905145002D20E945140052D1450014514500149DE8A2800A28A280168A28A0028A28A0029074A28A003D6968A280105068A280168A28A004A5A28A00293D68A280168A28A0028A28A00FFFD9'),
(2, x'FFD8FFE000104A46494600010100000100010000FFFE003B43524541544F523A2067642D6A7065672076312E3020287573696E6720494A47204A50454720763830292C207175616C697479203D2039300AFFDB0043000302020302020303030304030304050805050404050A070706080C0A0C0C0B0A0B0B0D0E12100D0E110E0B0B1016101113141515150C0F171816141812141514FFDB00430103040405040509050509140D0B0D1414141414141414141414141414141414141414141414141414141414141414141414141414141414141414141414141414FFC00011080272027203012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FD52A28A2800A28A2800A28A2800A28A2800A28A2800A5A28A004A2969280168A4A5A0028A4A5A002928A280014B49450014B4945002D251450014B49450014B494500145145002D251450014514500145141A005A2928A0028A28A0028A28A0028EF45140051451400B49451DE800A28A28016928A2800A28A2800A28A2800A5A4A2800A5A292800A5A4A2800A28A2800A28A28016928A2800A0D145002D252D25002D25145002D14945002D149F85140051451400B45150DD5D436503CF7132410A02CD248C15547A9268025A2BE75F8ABFF000502F819F08A6B8B6D5BC6B6DA85FC19DF65A38FB5CA0FF770A719FA9AF05D6FFE0B3FF096CF3FD99E1CF106A5E9E6A2419FFD0A803F41692BF367FE1F6BE0AFFA277AB7FE0C13FF008DD27FC3ED7C15FF0044EF56FF00C1827FF1BA00FD27A2BF363FE1F6BE0AFF00A277AB7FE0C13FF8DD1FF0FB5F057FD13BD5BFF0609FFC6E803F49E96BF363FE1F6BE0AFFA277AB7FE0C13FF008DD1FF000FB5F057FD13BD5BFF000609FF00C6E803F49A96BF363FE1F6BE0AFF00A277AB7FE0C13FF8DD1FF0FB5F057FD13BD5BFF0609FFC6E803F49E8AFCD7FF87DAF82BFE89DEADFF8304FFE374BFF000FB5F057FD13BD5BFF000609FF00C6E803F49E92BF367FE1F6BE0AFF00A277AB7FE0C13FF8DD1FF0FB5F057FD13BD5BFF0609FFC6E803F49E92BF367FE1F6BE0AFFA277AB7FE0C13FF008DD1FF000FB5F057FD13BD5BFF000609FF00C6E803F49A8AFCD8FF0087DAF82BFE89DEADFF008304FF00E3747FC3ED7C15FF0044EF56FF00C1827FF1BA00FD28A2BF363FE1F6BE0AFF00A277AB7FE0C13FF8DD1FF0FB5F057FD13BD5BFF0609FFC6E803F49E92BF367FE1F6BE0AFFA277AB7FE0C13FF008DD1FF000FB5F057FD13BD5BFF000609FF00C6E803F49A8AFCD8FF0087DAF82BFE89DEADFF008304FF00E374BFF0FB5F057FD13BD5BFF0609FFC6E803F49A8AFCD9FF87DAF82BFE89DEADFF8304FFE3747FC3ED7C15FF44EF56FFC1827FF001BA00FD26A5AFCD7FF0087DAF82BFE89DEADFF008304FF00E374BFF0FB5F057FD13BD5BFF0609FFC6E803F49A8AFCD8FF87DAF82BFE89DEADFF8304FFE374BFF000FB5F057FD13BD5BFF000609FF00C6E803F49A8AFCD9FF0087DAF82BFE89DEADFF008304FF00E3749FF0FB5F057FD13BD5BFF0609FFC6E803F4A292BF367FE1F6BE0AFFA277AB7FE0C13FF008DD27FC3ED7C15FF0044EF56FF00C1827FF1BA00FD27A2BF367FE1F6BE0AFF00A277AB7FE0C13FF8DD1FF0FB5F057FD13BD5BFF0609FFC6E803F49A8AFCD8FF87DAF82BFE89DEADFF8304FFE374BFF000FB5F057FD13BD5BFF000609FF00C6E803F49A8AFCD8FF0087DAF82BFE89DEADFF008304FF00E3747FC3ED7C15FF0044EF56FF00C1827FF1BA00FD28A4AFCD8FF87DAF82BFE89DEADFF8304FFE374BFF000FB5F057FD13BD5BFF000609FF00C6E803F49A8AFCD9FF0087DAF82BFE89DEADFF008304FF00E3747FC3ED7C15FF0044EF56FF00C1827FF1BA00FD27A4AFCD9FF87DAF82BFE89DEADFF8304FFE3747FC3ED7C15FF44EF56FFC1827FF001BA00FD26A3B57E74E91FF0005AAF8717526350F05EB76099FBD1CE937E9B56BD63E1F7FC154BE00F8EAE12DA6F105DF86EE19B6E35AB530C7F5DE091401F5F5158FE17F18E85E36D31351F0FEB165AD583FDDB9B19D6543F8A935B1400B4514940052D2514005145140051451400B49451400514514005145140051452D00251451400B494514005145140051451400628A28A0028A2BE09FF82947EDED2FC01D3C7C3FF035CC67C71A85BF9B757CAC1BFB3616C85C0FF9E8D8246718183CE7800F40FDB13FE0A27E08FD97E29345B031F8AFC72E081A4DAC9FBBB5FF006A771C2F3FC03E6F61D6BF1F3F685FDB1BE27FED29AAC92F8A3C437516939FDD6876533456518F78C1018FFB4C09AF1AD4F53BBD66FE7BDBFB996EEEE772F2CD33166763C9249AAD400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451401D47C3DF8A1E2CF851AFC1AD7847C43A8F87F5185C389AC2E5E2DF8FE160A40653D0A9C823835FA8BFB267FC15E6CB5FBAB0F0BFC62B75D36EE40228FC4D6CA3C977C803CE8D40D9FEF2823D715F925474A00FEA7F4DD4AD358B0B7BEB0BA86F6CAE635961B8B770F1C8846432B0E0823B8AB15F895FF04EEFF8283EA7F03F5ED3FC03E38BD7BFF87F7B308A0B99DC97D25DDBEF03DE2C9C95EDC91E95FB616B750DF5B45716F2A4F04AA1E39236CAB29E841F4A009A928A2800A5A4A28016928A280168A4A2800A28A33400B49451400B49451400B49451400B49451400B4828A2801693B5145002D1499F6A2803C7FF6B0F8FBA6FECDBF0435FF0018DE4D18BD8E3FB369B6EED86B8BA7E115477C72E7D90D7F39FE2FF166ABE3BF146A7E21D6EF66D4356D4676B8B8B99DCBBBB13DC9E78E00F4000AFD01FF0082CDFC607F117C5AF0E7802D2F0BD868569F6CBA811BE5FB44BC2E7FDA5407FEFAAFCE7A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A002BF637FE0913FB554BE3FF0008DF7C29F11EA2D71AE6850FDAB4B7B87CBCD67B82B20279250B27BE18FA57E3957A6FECD1F14EEFE0C7C75F06F8B6D1D94596A1189D55F66F85CEC9149F4DA4FE5401FD2D5155B4CD421D5F4DB4BEB67125BDD449344E3BA30041FC8D59A0028A28A0028A28A0028A28A0028A28A0028A2BCDFE247ED1FF000C7E11798BE2FF001B691A24A8BB8C13DC032F4CFDC5C9C9F4C5007A4515F2AAFF00C14EFF006786B968BFE135DA01C79A6D5F61F7E99FD2BD9FE1AFED0BF0DFE304292783FC63A5EB6CEBB8450CDB6503BE51B0C3F2A00F43A28A2800A28A2800A28A2800A28A280168A4A2803F9AFF00DAB7C6D77F10BF68AF1FEB97739B86B8D5E7119E30B187211463B01815E5156F57D4A4D6354BBBE9BFD6DC4AD2B7D49CD54A0028A28A0028A2B7BC05E163E38F1AE87E1E59C5AB6A97915A09CAEE085D82E71DF19A00C1A2BF577FE1C7567FF456E7FF00C11AFF00F1FA3FE1C7567FF456E7FF00C11AFF00F1FA00FCA2A2BF577FE1C7567FF456E7FF00C11AFF00F1FA3FE1C7567FF456E7FF00C11AFF00F1FA00FCA2A2BF577FE1C7567FF456EE3FF044BFFC7E8FF871D59FFD15B9FF00F046BFFC7E803F28A8AFD5DFF871D59FFD15B9FF00F044BFFC7E8FF871D59FFD15BB8FFC112FFF001FA00FCA2A2BF577FE1C7567FF00456E7FFC11AFFF001FA3FE1C7567FF00456EE3FF00044BFF00C7E803F28A8AFD5DFF00871D59FF00D15B9FFF00046BFF00C7E8FF00871D59FF00D15BB8FF00C112FF00F1FA00FCA2A2BF577FE1C7565FF456EE3FF044BFFC7E8FF871D59FFD15B9FF00F044BFFC7E803F28A8AFD5DFF871D59FFD15B9FF00F046BFFC7E8FF871D59FFD15B9FF00F046BFFC7E803F28A8AFD5DFF871D59FFD15B9FF00F046BFFC7E8FF871D59FFD15B9FF00F046BFFC7E803F28A8AFD5DFF871D59FFD15B9FF00F046BFFC7E8FF871D59FFD15B9FF00F046BFFC7E803F28A8AFD5CFF871D59FFD15B9FF00F046BFFC7E97FE1C7567FF00456E7FFC11AFFF001FA00FCA2A2BF577FE1C7567FF00456E7FFC11AFFF001FA3FE1C7567FF00456E7FFC11AFFF001FA00FCA2A2BF573FE1C7567FF00456E7FFC11AFFF001FA3FE1C7567FF00456E7FFC11AFFF001FA00FCA3A2BF577FE1C7567FF00456E7FFC11AFFF001FA3FE1C7567FF00456E7FFC11AFFF001FA00FCA2A2BF577FE1C7567FF00456E7FFC11AFFF001FA3FE1C7567FF00456E7FFC11AFFF001FA00FCA2A2BF577FE1C7567FF00456E7FFC11AFFF001FA3FE1C7567FF00456E7FFC11AFFF001FA00FCA2A2BF577FE1C7567FF00456E7FFC11AFFF001FA4FF00871D59FF00D15B9FFF00046BFF00C7E803F28E8AFD5DFF00871D59FF00D15B9FFF00046BFF00C7E93FE1C7567FF456E7FF00C11AFF00F1FA00FCA3A2BF577FE1C7567FF456E7FF00C11AFF00F1FA3FE1C7567FF456E7FF00C11AFF00F1FA00FCA2A2BF573FE1C7567FF456E7FF00C11AFF00F1FA3FE1C7567FF456E7FF00C11AFF00F1FA00FCA3A2BF573FE1C7567FF456E7FF00C11AFF00F1FA3FE1C7567FF456E7FF00C11AFF00F1FA00FCA3A2BF573FE1C7567FF456E7FF00C11AFF00F1FA5FF871D59FFD15B9FF00F046BFFC7E803F28A8AFA23F6D7FD9363FD913E20E97E1A8FC48DE255BEB2FB5FDA1ED05B94E71B76EF6CFE75F3BD001451450014038391C1A28A00FE8B3F60FF184FE3AFD917E19EAF733FDA266D39AD8B93DA19A4840FC04607E15EF63A57C79FF00049DD464BDFD8BBC3113FDDB4BEBE8539EC6E19FF9B9AFB0E800A28A2800A28A2800A3BD14500155755D52CF43D32EB51D42E62B2B1B489A7B8B99DC247146A0966663C00002493562595218DE49195234059998E001EA6BF1D7FE0A61FF0005011F136F751F853E00B861E18B39CC5AAEAD1BE05FC8BD638F07FD503C127EF11C71824017F6DAFF0082A7788BC61ABDE784FE106AB2E83E1C88B4571AE5BA85B9BCEC7CB62331A7BAE1BDFB57E766A3A9DE6B17B2DE5FDDCF7D7931DD25C5CC86491CFA9624927EB55A8A002ADE93AC5FE837F15F6997D73A75EC4774773692B45221F50CA411F8554A2803F4BBF627FF0082AC6B5A0EABA7783FE32EA4FAB68D330821F135C01E7DA9FE133B01F3A762C7247527835FADFA56AB67AE69B6DA869D750DF58DCC62586E6DDC3C7221E432B0E083EB5FCB157DABFB097FC14535AFD9A2E22F0A78A527D77E1F5C4E1F629DD71A793C3345920153C12A48E470464D007EE95158BE0BF1AE89F10FC31A7F887C3BA941AB68F7F12CD6F756ED9575233F507D41E477ADAA0028145140051451400514628A00FE5628A28A0028A28A002BBEF801FF0025C3C07FF61AB4FF00D1AB5C0D77DF003FE4B8780FFEC3569FFA356803FA69A2968A0028A4A5A0028A28A00292968A004A5A28A00292968A0028A290D001451450014B494500145145001451450014B49477A0028A28EF400B49451400B4947AD2D00252D25140051451400514514005145140051451DA800A28A2800A28A2803F18FF00E0B49FF25FBC2BFF00606FFD9EBF3D2BF42BFE0B49FF0025F7C2BFF606FF00D9EBF3D6800A28A2800A28A2803F767FE0923FF266DA3FFD856F7FF4657D9D5F18FF00C1243FE4CDB47FFB0A5EFF00E8C15F6750014514500145145002D2515F9E9FF0527FF8280DB7C28D1752F863E02BDF3BC677B118351D4606F974D8D87CCAA7FE7A9071C7DDCF5C8C500701FF00053DFDBFA6D325BCF847F0E754549B063D7B57B490332E47FC7B46C3A1E4EE239E838E73F944492492724F734E9A67B895E595CC923B1666639249EA4D36800A28AFBCBFE09C1FB024BF1EB5887C7DE38B231F806C271F67B49810754954F2B8FF009E408C31EFD077A00F9C6F7F647F89B63F036D7E2C49E1DB83E12B8902899549916339DB33275119381BBA648F5AF1BAFEA764D2ECE6D35B4E7B589AC1A2301B6283CB31E31B76F4C638C57E4CFF00C1413FE099373E1D9F51F88BF08F4CF3F47DA67D4FC396F9325B91F7A5817F894F52A391CE01EC01F991450CA558860411C107B51401F50FEC57FB7478AFF654F155B5A4D7136AFE00BA987F6868B21DDE583C196127EE38EB81C1EE3BD7EE9FC23F8BBE17F8E1E07B1F15F847528B52D2AE86372302D13800B46E3F85864707D47AD7F3175EDFFB29FED65E2DFD94BC72359D064377A4DD155D4B4791C88AE901FD1864E1BB64FAD007F471457977ECF1FB46783BF697F87F67E29F095EEF59140BAD3E7C0B9B2970374722E7A83DC641EC6BD46800A28C51400B4537145007F2B345145001451450015DF7C00FF92E1E03FF00B0D5A7FE8D5AE06BBEF801FF0025C3C07FF61AB4FF00D1AB401FD34D14B4500251452D00145252D00145149400B494B4500145149400514B4500251451400B45252D002514B45002514B4940051452D0025145140051452D00251451400B49452D002514514005145140051451400514514005145140051451401F8C7FF05A4FF92FBE15FF00B037FECF5F9E95FA17FF0005A4FF0092FDE15FFB037FECF5F9E94005145140051457D25FB127EC6FAFFED5FF00116283C89AC7C17A7309756D5CAE102E788633FC52373C0E80126803F523FE09223FE30DB46CF7D52F7FF4657D9B5CF7C3EF00685F0BBC1BA5785BC35A7C5A668BA6C421B7B6857000C9258FAB124927B924D743400668A28A0028A28A00F8E3FE0A0DFB76D9FECBDE181E1DF0DCB6F79F11355819ADE271BD6C223C09E45F5273B41EBB4F61CFE166B5AD5F788F56BCD5353BB96FB50BC95A79EE666DCF23B1CB313EE49AFDB8FF0082807FC13C2D3F6918E5F1A783521B0F8850C41258DD8247A9228C2862780E00C063D4704F02BF143C57E13D63C0DE22D4341F1069B71A46B161334173677485248DD4E0823F0EA383D450064D1451401F52FF00C13EFF0064687F6ADF8B135B6AD7C2CFC2FA146B79A8A44C04F700B0091203D0139CB7603D48AFDEEF0B785F4AF05787B4FD0B43B18B4DD2AC21582DAD605C24683B7F527B9249AFE663E16FC52F12FC1AF1AD878ABC27A9CDA4EB3664EC9A1623729FBC8DEAA47506BF733F621FDBCFC33FB54786E0D2F509A2D1BE215A478BCD2E4F956E40FF0096B01E8C08EABD41CF18C1A00FABE82A18104020F507BD145007E66FEDF7FF0004C4B6F1545A9FC43F84B66B6BAC2E6E350F0E44311DCF7678001F2B753B7A1E718E95F92179673E9F7735ADCC4F05CC2E6392290619181C1047A835FD50D7C1FF00B7E7FC13934FF8FB0DD78E3C056B6FA6F8FD23CDC5B2E228B54C742C7A097B6E3D46013C5007E24515A3E23F0DEA9E11D6EF347D6AC27D3354B391A29ED6E50A3C6C0E0820D675007A4FC04FDA0FC63FB3978EECBC4FE10D44DB4F0B833D9CB96B7BA8FF008A391323208E323047622BF797F649FDAF7C25FB587827FB4747952CBC416488354D15DF325B31CE18772848383ED8AFE746BAEF853F157C4BF05FC71A778B3C27A94BA66B164D959236203A9FBC8E3F894F706803FA79FE7457CA7FB137EDE7E17FDAA7C3D069B7D245A27C40B68FFD2F4973B567C7592027EF03D4AF51CF18E6BEACA0039A28C51401FCAC5145140051451400577DF003FE4B8780FF00EC3569FF00A356B81AEFBE007FC970F01FFD86AD3FF46AD007F4D34B45140094B45140094B45250014B45140094B45140051494B4009452D14009452D2500145145002D252D25001451450014514B4009451450014514B4009452D250014514B40094668A2800A28A2800EB45145001451D28A0033451450019A28A2803F18BFE0B49FF25F7C2BFF00606FFD9EBF3D6BF42FFE0B49FF0025F7C2BFF606FF00D9EBF3D2800A28AEFBE077C13F13FC7FF887A77843C2B6125EDF5CB6E95D47C96F1023748EDD15467A9F51401D27ECB9FB31F89FF6A4F89369E19D0636B7B25757D475464DD1D9C19F99CFA9C670BDCD7F411F047E0A7863E00FC3FD3FC23E15B3FB3D85AA8DF2BE0CB70F8E647200C93581FB30FECD7E17FD97FE1858F857C3D6B19BADA25D4B522A3CEBDB83F79DDB19207451D94015EB940051451400514579D7C7CF8F1E15FD9D3E1BEA3E31F165EADBD9DB8D905BA9CCD7731FB9146BD4927F20093C03401CD7ED59FB52786BF658F8713F8875975BAD4E6564D374A0FB5EEA503A7B28C8C9F7AF8D3F62AFF82AD4FE3FF17FFC223F181AC34FB9D4EE9869BADDB2791046CEC4A41282480390AAF9CF4CE739AFCE7FDA77F68FF127ED3FF14AFF00C5DAFCCF1C27F7361A787262B3B704ED451D33C924F724D792D007F54C8EB222BA3065619047422BE52FDB7BF60DF0DFED53E1C9F53B011E89F102D2226CF52451B2E481C4538EE0F40DD57AF2062BE1EFD80FFE0A6577F0C9AC7C03F14EFE7BFF000A92B158EB53169A6B0EC11CF2CD1F4F5DBF4AFD84D2757B2D7B4BB4D4B4DBB86FF4FBB896682EADDC3C72C6C32ACAC3820839C8A00FE637E26FC2FF00127C1FF185EF867C55A64DA5EAD68C43452A9018670194F7071D6B95AFE8B3F6B5FD8FBC1BFB58783BEC3AD5B4765E23B38DBFB335D89009EDC9FE027AB464F553C771CD7E0D7C79F801E31FD9D3C7B7BE16F18699259DC42E7ECF740660BB8BF86489C70C08FC41C82010450079C56B7857C59AC781FC4165AE681A95C693AB594826B7BBB57DAF1B039041FE878AC9A2803F70FF0060EFF828EE99FB4525B783BC6DF65D1BC7F1C5FBA9233B20D4B68192809F964EFB41C1E718C62BEE4CD7F2BF617F73A55F417967712DADDDBB89229E1728F1B0390CA472083DEBF5EFFE09FF00FF000534D3FC696165F0FF00E2DEAAB61E2488AC3A7EBF747115F2F0024CFF00C320FEF37047539EA01FA4B4519C8C839A2803E4AFDB93F608F0F7ED51E1C9756D2BCAD0FE2159479B4D455408EEC0FF0096338EA411C061CA9C1E4715F867F11FE1C7887E13F8C350F0CF8A34E974BD5EC64292C32AE33E8C3D41EC6BFA81AF9FBF6B6FD8CFC15FB577851E0D5AD22D3FC536D132E9BAFC2989A13D42391F7E3CFF0009CE32718C9A00FE7668AF41F8E1F023C61FB3DF8EAF7C2DE31D2A5B0BC81DBC99F1986EA3CFCB2C4FD1948C1F519C1C1C8AF3EA00D6F09F8B758F02F88AC35DD03519F4AD5EC2659EDEEED9B6BC6EA720FBF23A1E0D7EE87FC13F7F6EBB4FDAA3C332685E20F22C3E216950092EA18BE58EF6204299E35278E48DCBDB70F5E3F066BD0FF67EF8BDAAFC0AF8BFE1AF19E9372F6F2E9F74A675472A25818E248DB1D415278FA5007F4C9914560786BC73A378A3C39A56B36BA8DAFD9751B48AEE2CCCBF72440EBDFD08A2803F977A28A2800A28A2800AEFBE007FC970F01FFD86AD3FF46AD7035DF7C00FF92E1E03FF00B0D5A7FE8D5A00FE9AA92968A004A5A4A5A0028A28A0028AF98BF691FF0082877C24FD9BEE2E34ABFD58F88FC510821B44D1489A589BD257CEC8CFFB2C777B57C51E2DFF0082DC789E7774F0DFC3BD32D23DDF2CDA8DDBC8FB7FDD5C007F13401FAE9495F8CBFF000FA7F8A9FF004297873FF22FF8D1FF000FA8F8A9FF004297873FF22FF8D007ECDD15F8C9FF000FA8F8A9FF004297873FF22FF8D1FF000FA8F8A9FF004297873FF22FF8D007ECDD15F8C9FF000FA8F8A9FF004297873FF22FF8D1FF000FA8F8A9FF004297873FF22FF8D007ECD515F8CBFF000FA8F8A9FF004297873FF22FF8D1FF000FA7F8A7FF004297873FF22FF8D007ECD52D7E327FC3EA3E2A7FD0A5E1CFFC8BFE347FC3EA3E2A7FD0A5E1CFFC8BFE3401FB37495F8CBFF0FA8F8A9FF4297873FF0022FF008D1FF0FA8F8A9FF4297873FF0022FF008D007ECD515F8CBFF0FA8F8A9FF4297873FF0022FF008D1FF0FA7F8A7FF4297873FF0022FF008D007ECD52D7E327FC3E9FE2A7FD0A5E1CFF00C8BFE347FC3EA3E2A7FD0A5E1CFF00C8BFE3401FB35457E32FFC3EA3E2A7FD0A5E1CFF00C8BFE347FC3EA3E2A7FD0A5E1CFF00C8BFE3401FB37495F8CBFF000FA8F8A9FF004297873FF22FF8D1FF000FA7F8A7FF004297873FF22FF8D007ECDD15F8C9FF000FA8F8A9FF004297873FF22FF8D1FF000FA7F8A9FF004297873FF22FF8D007ECD74A2BF197FE1F51F153FE852F0E7FE45FF1A3FE1F51F153FE852F0E7FE45FF1A00FD9AA2BF193FE1F4FF14FFE852F0E7FE45FF1A3FE1F4FF14FFE852F0E7FE45FF1A00FD9BA2BF197FE1F51F153FE852F0E7FE45FF1A3FE1F4FF14FFE852F0E7FE45FF1A00FD9AA2BF1D346FF0082D8FC44B6BC46D4BC0BE1FBDB5CFCE914B2C6F8F63923F315F4DFC0CFF82BCFC2BF88F796DA678C2DAEBC05A94CE105C5DE24B224F4CCA3941EEC001D73401F785155B4DD4ECF5AB082FB4FBB82FACA751243736D20923914F42ACB9047B8AB340051452D002503A5145007E31FFC1693FE4BF7857FEC0DFF00B3D7E7A57E85FF00C1693FE4BEF857FEC0DFFB3D7C09E1EF0FEA5E2BD6ECB47D22CA7D4753BD9561B7B5B68CBC92393C00A393401A9F0EBE1E6BDF157C69A4F857C3562DA86B3A9DC25B4112F03731032C7B28CE49EC01AFDFAFD8C3F63AF0FF00EC97E00FB140D1EA7E2BD4111B55D5FCBDA6461D2341D4229271EBD4F6C711FF0004FEFD86B4CFD98BC176DAF6BF690DDFC46D4E00F7770C03FD81587FA88CF6201C330EA72338AFB02800A28A2800A28A0500739F10FE21E81F0ABC1BA9F8A3C4DA847A668BA742D34F3C87B01D00EEC7A01DCD7F3F5FB627ED79E23FDAC3E2149A9DF6FD3FC3766ECBA5690AE59608F3C3374DCE463271F4C57EA57FC14F7F65DF881FB41F80B4EBEF056AB77791E8AAD24DE1489B0978D927CD503EFC807001CF4181926BF0F2F2CAE34EBB9AD6EE096D6EA1731CB0CC851E360705594F208F434010D145140057DB7FB08FFC145F5CFD9CAF2CFC21E2EF335DF87934A146E7267D3371E5E327EF27392871EC457C4945007F51BE0EF1968DE3FF000DD8EBDE1FD421D5349BD8C4905CC0DB9581FE47DAB84FDA2BF66CF06FED33E05B9F0E78AACC6F28DF63D46251E7D9C847CAE87BE0E0ED3C1C57E287EC4DFB73F89BF652F14ADADC4D71AC780EF5C7DBB4767DC223FF003DA107EEB81D40C0618CE7031FBA9F0A3E2DF853E36782AC3C55E0ED5EDF58D22F1030785BE789BBA48BD51C1C82A40A00FE7E3F6AAFD927C63FB2978D8E91AFC7F6ED22E4B369DAD4084437483FF4161919527F135E1F5FD38FC61F839E13F8EBE08BCF0AF8C3498755D32E0657CC51BE0930409236EAAC32791D891D09AFC2AFDB3FF61BF167ECA5E2796E7C89F57F035D4BFE83ADC4859133D239881F23F6E7AF6CD007CC74A8ED1BABA31465390CA7041A4A2803F4FF00FE09F3FF0005349F48B9D2BE1A7C58BC1269AFB6DB4CF124CF8680F448A7CF553D03E78E339CE47EB2C13C775047342EB2C4EA191D0E4303D083E95FCADD7DF5FB03FF00C149B53F823716BE0AF88D7F75AB7819D825B5ECC5A69B4BE8300F2C62FF00679C7381C9C807ED6D159FA078834CF1568B65AC68D7F6FAA6977B12CF6D79692892299186432B0E0835A1401E45FB4B7ECC9E10FDA83C0173E1CF135B08AE4296B1D5614067B3971C32E7A8CF55EE33C83C8FC02FDA3FE04EA5FB387C5AD5FC0DAAEA169AA5C596D75BAB32763C6C32B907956C7515FB2DFF000504FDB9F4DFD997C1973E1EF0EDDC375F11F538765AC0A437F67A30FF005F20EC4039553D4E0E315F857AFEBFA8F8A75ABDD5F57BD9F51D4EF6569AE2EAE642F248E4F24B1E4D0050A28A58E3695D5114B3B100281924FA5007D41E1AFDACBC5DA278774AD3A0497C9B4B48ADD3129FBA881476F41457D75F0EFF00E09917FE21F87FE19D5669FECF35F6976B72F14842B233C4AC5483C8209C628A00FCA4A28A2800A28A2800AEFBE007FC970F01FF00D86AD3FF0046AD7035DF7C00FF0092E1E03FFB0D5A7FE8D5A00FE9AA928A28016928A28016BF3E7FE0A81FB71DD7C16D162F86FE08BC3078C3538FCCBFBF89B06C2D88E157FDB7FD003EB5FA037573159DB4B713388E1894BBB9E8AA0649AFE65BE397C50BFF008CBF163C4DE31D4669269B55BD927512367CB42C76A0F40070076A00E32FEFEE754BD9EF2F2792EAEA77324B34AC59DD89C9249EA6A0A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00FBB3FE09BDFB766ADF05FC75A7F80FC5D7D25F781357916DA169E4E74D9D98049149FE03C865F707B60FEDCC722CB1ABA30646019581C820F435FCADC72344EAE8C51D482ACA7041F515FD0F7FC13FFE2BDC7C62FD94BC13AD5F4EF71A9DB43269D7724872C5E19191493DC940873EF401F445145140051451401F8D1FF0599B49AFFF00688F07DB5B44F3DC4DA408E38A3196763260003B926BEA0FF826B7EC189F02B441F107C6D6914BE38D4E151676B2264E9901193C9FF968F919F4000EE71F48F8A3F65BF0AF8EBF683D1FE2AF88A11AA6A1A1D98B7D2ECA5198619739F388FE261FC39E01C1EA01AF661400514518A0028A291982296621540C927A0140115E5E41A7DA4D7575325BDB428649259582AA28192493D0015E0FF027F6DEF85FFB4378D75CF0AF85F557FED6D36461125D28417D1A9C1961E7E61D3838383D3AE3E02FF829BFEDFD2F8BF54D4FE13FC3BD5C7FC23F6C7ECFACEA9632645EC9FC70AB8EA8A7E538E090DD457E73F85FC53ABF82BC4161AE683A8DC693ABD8CA26B6BCB590A49138EE08FE5DC706803FA93AF85FF6FCFF008274E9BFB4169D77E34F03456FA4FC41814C92C3B36C3AAA8EAAC47DD93B86E73D0E339117EC15FF000520D2BE3D59597833C7D756DA478FE302286E24658E2D53D0AF40243FDD1D7B0AFBB6803F96DF14785B56F056BD7BA2EB763369BAA59C8629EDA75DAC8C2B2ABF7E7F6D7FD817C27FB53E8936AD630C5A17C41B6888B5D5A21B56E31C88E751C30CF46FBC3D71C57E16FC49F869E24F847E31D47C2FE2BD2AE347D66C6431CB05C215CE0F0CA7A329EA18704104500731451450015EE5FB2AFED71E31FD953C6B0EABA14A6FB459645FED1D16690AC5751E7E600F3B5B19C360E0F63D2BC368A00FE967F67DFDA23C21FB49F80EDBC4FE12BE12C6C02DD594A409ED24C7292283C1EBCF435DA78CBC1BA2FC41F0CEA1E1FF0010E9F06ABA3DFC2D05CDADC2EE5752307E87DEBF9C0FD9EFF689F19FECD7E3C83C4DE0FD4E4B4908F2AEECDBE682EE2CF29221E0FA83D41E8457EF0FEC97FB5EF843F6ADF03C5A968F730D9788AD942EA7A1BC83CEB67FEF053C98CF50DD3B6722803F283F6E7FF8276F883F66CD467F13785D27F107C3E9E4244CB193369F9E89301D57B071C1F415F17D7F539AB69165AF69975A76A5690DF585D46629ADAE103C7221EAACA7822BF1CBFE0A07FF0004D7BBF85175A878FF00E1869F717BE0D9333DEE91086964D34F5665EAC62EFCE76F3CE31401F9E145145007D85FB0DFFC141FC45FB2FEA96DE1ED7164D7FE1E5C4B89ACD9FF007D639EB2404F1D7928783CF23AD7E9B7ED1DFF00050CF007C1FF0082961E31F0EEA16BE28D575D858E8BA7C5281BD80196971928AA48C8EA7A0F5AFC07A734AEE8A8CECCABF7549C81F4A00E83E217C40D77E2978CB56F14F892F9B50D6753B87B9B899B81B998921476519C01D8573B45140057D5BFF04EAFD966FF00F68BF8E5A75E5DDA91E0EF0EC897FA9DCC89949181CC500F52CC39F4556AF25FD9C3F677F13FED2FF12F4FF09F86ED646592456BDBFD84C565067E695CF41819C0EE781C9AFE83BE017C07F0C7ECEBF0E34EF08785ED161B6B75DD3DC91FBDBA97F8A473DC9FD05007A1C51A4112471AAA46802AAA8C00074028A928A00FE55E8A28A0028A28A002BBEF801FF25C3C07FF0061AB4FFD1AB5C0D77DF003FE4B8780FF00EC3569FF00A356803FA69A28A2800A28A280307C7F673EA1E05F115ADA922E67D3AE23888EA18C6C07EA457F2EEE30EC0FA9AFEA988C8C57F3AFFB71FC01BAFD9E7F684F11687F6768B45BC99AFB4A90290AF6EEC4A807B95E86803C028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A002BF737FE0905657169FB20C124C498EE35CBC961CF64C46BFFA12B57E227867C3B7FE2FF11699A1E976EF77A96A3731DADBC11AE59E4760AA00FA9AFE913F660F8451FC0AF80DE0EF04AA2A4FA6D9E6E76F399E466925E7BFCEEC3E805007A8D14B4940051451400514514005145140057E627FC14CBFE0A0EBA05B5E7C27F86F7E4EA52E63D6F5AB771B614C60DBC4475627EF376030339E3D1BFE0A47FB7CC1F03342BFF877E08BE8E4F1FDFC1E5DD5D44437F6544EBD7D04A54E541E9907D2BF14AEEEE6BEB996E2E6579E7958BBC9236E6627A9268022662CC5989249C927BD14514012DADD4D63711CF6F2BC3346C19244386523B835FAEFFF0004FF00FF00829BDBF8D4699F0E7E2B5D8B5D7820874FF11CCE04577B4709393F764206037218F5C1AFC83A58E468A4574628EA432B29C1047420D007F54A8EB2207460E8C32194E4115E03FB5CFEC73E11FDABFC1B2596A689A6F896D909D375B8E306485BA857EEC87A11EF915F067FC13E7FE0A673785DACFE1DFC5CD53CED1C911697E22BA3F35AF402299BBA7A31E46482718C7EB75B5CC37B6D15C5BCA93C12A892396360CAEA46410470411CE6803F9A5F8FBFB3E78C7F66FF001EDD785BC61A79B6B84F9EDAEE2CB5BDDC59E248DF0323DB823B8AF36AFE93FF0068EFD99FC17FB4EF81E5F0F78B6C03CB1866B1D4A1F96E2CE423EF237A7032A720E3A702BF06BF6A3FD947C65FB2BF8DA4D1FC456AF36953C8E34DD62343E45E463A107A06C632BD450078AD1451400575BF0B3E2B789FE0C78D2C3C53E12D4E4D2F57B270E92272AE3BA3AFF129E84572545007F409FB18FEDE5E12FDABB448EC2455D03C756D007BCD1E570565C70CF037F12F43820119EF826BEA196249E368E45578D8619586411E86BF972F07F8C75AF007892C35FF000F6A571A4EB1632096DEEED9F6BA30FE63D41E0D7EDAFEC0FF00F050ED23F68DD1EDFC29E33BBB5D23E235B008AAC4451EA8BC00F10E9BFD507D40C1C000F05FF82827FC1318476F7DF117E1069CA047BA6D53C350E7257A996DC77C774E38E467A57E57DC5BCB6B3C90CD1B45346C55E37186523A823B57F548402082320F6AFCEEFDBE3FE099765F159EF7C7BF0BED22D37C57E5B497DA3C7F2C3A830C9DE8BD1643D30300F1C6724807E34D156352D36EF47D42E6C2FADA5B3BDB691A19EDE7428F1BA9C32B03C8208C62ABD0015DB7C1BF83FE24F8E9F1034BF08785ACCDD6A57D2052C41F2E14CFCD23900E145627823C15ACFC45F16695E1AF0F58CBA96B3A9DC25B5B5B42B96776381F403A93D8026BF7CBF61FFD8B341FD937C0C5A458F51F1BEA91A36A9AAB0CEDC72218BFBA80939C72C7AE703001D87EC9DFB2EF877F656F85D65E1AD2523B9D5A45136ABAA84C3DE5C1FBC73D760E8A3B003BD7B552D25002D1451401FCABD145140051451400577DF003FE4B8780FF00EC3569FF00A356B81AEFBE007FC970F01FFD86AD3FF46AD007F4D345145001451450015F3D7ED9FF00B21687FB5AFC383A5CEF169BE27B0266D275665CF94F8E6372064C6DDC76201C715F43525007F343F1BFF677F1EFECF5E289F44F1A68371A73A37EEAF154BDB5C2E480F1C83820E3A75F502BCDABFA8BF17F81BC3DE3FD25F4CF1268B65ADD83F582F615917EA33D0FB8AF99BC51FF0004B3FD9E7C4B7935CA7852EB4792562CC34ED4255504F5C072C07D05007E06D15FBA5FF0E89F801FF3E9E20FFC190FFE3747FC3A27F67FFF009F4F107FE0C87FF1BA00FC2DA2BF74BFE1D13FB3FF00FCFA7883FF000643FF008DD1FF000E89FD9FFF00E7D7C41FF8325FFE37401F85B457EE97FC3A27F67FFF009F4F107FE0C87FF1BA3FE1D11FB3FF00FCFAF883FF00064BFF00C6E803F0B68AFDD2FF0087447C00FF009F5F107FE0C97FF8DD1FF0E88FD9FF00FE7D7C41FF008325FF00E37401F85B457EE97FC3A23E007FCFAF883FF064BFFC6E8FF8744FECFF00FF003E9E20FF00C192FF00F1BA00FC2DA2BF74BFE1D11F003FE7D3C41FF8321FFC6E8FF87447ECFF00FF003E9E20FF00C192FF00F1BA00FC2DA2BF74BFE1D11FB3FF00FCFAF883FF00064BFF00C6E8FF0087447ECFFF00F3EBE20FFC192FFF001BA00FC2DA2BF74BFE1D11FB3FFF00CFAF883FF064BFFC6E8FF87447C00FF9F5F107FE0C97FF008DD007E16D15FBA5FF000E88F801FF003EBE20FF00C192FF00F1BA3FE1D11FB3FF00FCFAF883FF00064BFF00C6E803F0B68AFDD2FF0087447C00FF009F5F107FE0C97FF8DD1FF0E88FD9FF00FE7D7C41FF008325FF00E37401F85B457EE97FC3A23F67FF00F9F5F107FE0C97FF008DD1FF000E88F801FF003EBE20FF00C192FF00F1BA00FC2DA2BF74BFE1D11F003FE7D7C41FF8325FFE3747FC3A27F67FFF009F4F107FE0C87FF1BA00FC2DA2BF74BFE1D11F003FE7D7C41FF8325FFE3747FC3A23E007FCFAF883FF00064BFF00C6E803F0B68AFDD2FF0087447C00FF009F4F107FE0C97FF8DD1FF0E88F801FF3EBE20FFC192FFF001BA00FC2DAD6F0BF84B5AF1B6B56DA4681A55DEB3A9DCB88E2B4B285A591D89C0E00AFDC8D37FE0931FB3DE9F37992E8DABDFAFF00CF3B9D49B6FF00E3814FEB5F43FC2CFD9EFE1CFC14B416FE0BF08E9DA1614299A28CBCCC07AC8E4B1FCE803E35FF008275FF00C13967F8237B6FF11FE23C16F2F8C1A1234FD241122E9A1B19773D3CDC647190031E79E3F4328A5A004A28A5A004A28A2800A28A5A004AF90FFE0A07FB7069BFB2EF83068BA2CCB79F1075889859DBA61859C7D0CF273C75C28EE41F4AEC7F6D5FDB0744FD93FE1BDC5E9682FBC617D13268FA5B9CEF90E4096400E7CB53C9E99C6011D47E03FC46F88DE20F8AFE32D4BC53E28D4A5D5359D424324D3CA7F2551D028E800E28032B5FD7AFFC53ADDFEB1AADD497BA95F4CF7171712B6E79246396627DC9AA14514005142A966000249E0015F64FC2FF00F8252FC6FF00895E134D79ED34DF0DC53C425B6B4D5E768EE25046465029D9C7AD007C6D457A17C6CF807E37FD9EFC58DE1EF1BE8B2E957A54491487E68674FEFC6FD18641191DC1AF3DA002BEF3FD823FE0A45A9FC09B9D2FC0FE3E9AE354F00122082E57E79B4B04F0403CB4609E475033807183F0651401FD4B7877C47A678BB44B3D6346BE8752D32F2312C1756EE192453D0835CEFC5FF843E17F8E3E02D4FC21E2ED3A3D4B48BE42A4381BE17FE19233FC2EA790457E24FEC33FF0500F117ECBBAD2E85ADC936BBF0F2EDC79DA7B9DD2593FFCF48093C7BAF20E3A03CD7EE27C39F88DE1EF8B1E0DD33C53E17D4A2D5346D42212C33C4C0FD55876607823B11401F82BFB667EC3FE2CFD943C52649236D63C197AEC74FD660524003FE59CA3F81C023D8F6279C7CCF5FD4578DFC0BA07C48F0D5E787FC4BA5DBEB1A45DAED96D6E572A7DC7707DC735F887FB787FC13DB58FD99755BAF13F8605C6B1F0E6E65CC7338DD369E58F11CA40C15C9C06C0CF19E6803E31A28A2800A9AC6FAE34DBB86EAD667B7B98583C72C670CAC3A106A1A2803F633FE09FFF00F0530B4F894DA67C3AF8A177F63F151510E9FAE4CC3CABF207092B1FBB29EC4F0DEA0E33FA360E4641C835FCADC33496F324B13B452A30647438652390411D0D7EA2FEC03FF053D9ED1AC7E1EFC60D4D65B6CAC3A6F896E3E578C7004770DD187A39E79E49E3001F45FEDEBFF04F5D23F693D22EBC55E1286D749F88D6E9BC391B22D480FF00967210387C7DD623AE01C0391F8ADE20F859E2CF0BF8F1FC17AA6837D69E2859C5BFF663C27CD673F7768EE0F623AD7F4F714A93C49246EB246E032BA9C820F420D719AC7C17F04F883E22E95E3CD43C396575E2CD2E17B7B4D4DD3F791A3107E848C70482464E319A00F98FFE09E1FB0A5B7ECD5E1483C55E288219FE21EA96E1A503E61A746E33E483FDFC1C311C672012393F68D145001451450018A2968A00FE55E8A28A0028A28A002BBEF801FF0025C3C07FF61AB4FF00D1AB5C0D77DF003FE4B8780FFEC3569FFA356803FA69A28A2800A28A280168A4A2800E94B49450014514B40094B4525002D14514005145140094B4945002D25145002D14945002D14525002D1451400514525002D1451400514945002D14945002D14945002D2514500145145002D2514500145145002D78FF00ED3DFB4DF84FF65BF87571E25F124FE65D481A3D3B4B88FEFAF6603EEA8EC064658F0323B902BA5F8DBF19BC37F013E1BEAFE33F145E25B69D611E5632D87B894F09120EECCD81FAF415FCF9FED45FB4CF8A3F6A2F89573E26F104DE5DA479874ED3A22443690E785507B9EA4F53401CEFC73F8DBE25FDA0BE246ADE32F14DD19EFEFA5263843131DB459F9228C7655181F866B80A28A002800B1000C93D00A2BEB8FF008262FECFBA37C7EFDA46387C4711B9D0FC3DA7C9ACCB6A7EEDCC8B2451C71B7FB3BA5DC7D7663BD007D37FF04C0FD80D648ACBE2EFC47D241F9C4DE1FD2AED41E878B9910FB8F901F4CE30467F552A3B7B78AD208E082358618942246830AAA38000EC2A4A00F3DF8E5F01BC1DFB43781AEFC2FE31D2E2BFB4955BC8B8DA3CFB4908E2489FAAB703A75C735FCF57ED29F01358FD9B3E2F6B5E07D61C5C3D9B092DAED4616E6DDB263907A6476EC722BFA567758D19D982AA8C924E0015F80BFF00052CF8E1A27C72FDA6B53BEF0EB09F49D22DD34A4BB5208B878D9B73A9FEE9278F6FAD007CA7451450015F437EC7BFB6678ABF64DF19C77362D26A9E14BB957FB53446930B2A742E99E16403A1EF8C1E2BE79A2803FA67F825F1DFC19FB41F82EDFC4DE0BD5A3D46C9C2F9D09F967B67233B2443CA9EBEC70704D769AC68F63E21D26F34CD4ED21BED3AF21682E2D6E103C72C6C0865653C10412315FCE0FECD7FB4EF8CFF0065FF001D45E20F0ADE0681F097BA65C65ADEEE3CF2ACA08C1F423915FBD1FB307ED41E12FDA97E1EDBF88FC3970B0DEC6026A3A4C8E0CD65377561DD4F50D8E45007E647EDFDFF0004D2BEF84CD71E3CF861633EA9E1162CFA869717CF369C724EF55EAD176E3247718E6BF3C48C1C1E0D7F5493C11DCC3243322CB13A95747190C0F50457E54FEDFF00FF0004C4749F55F88FF08EC99A260D75A9F86A200842065E4B7EF83824A73CE71C100007E58D14B246D13B23A9475382AC3041A4A0028009200E4FB515FA19FF0004D5FF00827F9F8BF7D07C4BF1F5A491783ECE61FD9DA748BB4EA522E0966CFF00CB2078E3A9C8C8C5007D9BFF0004B4F0F7C57D0BF67EB43F10AE1D7429D524F0ED8DE64DD436A47CA5B3F7508C1553C818E057D9D4C8208ED618E186358A28D422468A155540C0000E8053E800A5A4A2800A28A280168A4CD1401FCAC5145140051451400577DF003FE4B8780FFEC3569FFA356B81AEFBE007FC970F01FF00D86AD3FF0046AD007F4D3451450019A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A5A28A004A5A29280169296928016928A2801692968A0028A28A004A5A4A280168A4A2800A5A4A28016929692800A28A5A004A29692800A28A280168A4A2800AE73E21FC44F0FF00C2AF086A3E27F13EA51695A35846649AE253EDF7540E598F6039AD3F10F8834EF0AE897DAC6AF79158699650B4F71733B0548D1464926BF0AFFE0A0BFB73EA3FB4F78CDB41D0247B0F879A448C96B083F3DF499F9A793D8F0157B019E73401C3FEDA7FB61EBDFB58FC4396EE4926B2F0869F2BAE91A4962151324095D7A1918753DB240E2BE74A28A0028A28A002BE82FD86BF6984FD95FE3C5978AAF6192E742BCB67D33548A2E5C5BBB236F51DCAB468D8F406BE7DA2803FA85F87DF10FC3DF153C23A7F89FC2DAA41AC6897E9E641756E720FA820F2AC0F041C106BA2270327A57F3ABFB30FEDAFF11FF654BD953C2F7905FE83712896E744D494C96F21E85970432363BA9F4C835EEDF197FE0AFDF143E25783EEB40D0B44D2BC182F13CBB8D42CDE49AE7691F308D988099F5C138E86803DBBFE0A65FF00050B5D35752F847F0D7532D74E860D775BB4720459C86B689C7538FBCC381BB19C835F93D525CDCCB7B712DC4F234D3CAC5DE473966627249351D00145145001451450015DD7C19F8D5E2DF80BE38B2F15783F559B4CD46DD86F58DC88EE101C98E45E8CA7B83915C2D1401FD0B7EC71FB6DF843F6B0F0C04B59A3D2BC6767106D434394E1C7632459FBE99F4C91919C6467E91AFE5EFE1E7C44F10FC2AF1769FE26F0BEA73693ACD8C82486E213F9AB0E854F420D7EE07EC33FF0507D07F69FD22DF40F108B7D07E215BA625B457C437C07FCB4873C824755E707383E801E59FF000505FF00826ADA7C4CB5BCF881F0B34B82C7C58999B50D1AD82C51EA0B8259D07004BDF1C6EE7BE01FC79D5B49BDD0B52B9D3B51B59AC6FADA4314D6F3A1478D875041E86BFA9DAF937F6A8FF8272FC3FF00DA73C4FA6788E49E4F0B6B714A82FEE74E814FDBA0072CAC38C3E0901F9C7706803F377FE09D9FB0B5EFED1DE34B6F14F8AF4F962F86FA5C9E64CD27C8351947DD853B95CF2C471804672457EE5693A4D9683A65AE9DA75AC363616B1AC305B4081238D00C05551C002B3BC15E0BD17E1DF85F4EF0EF87B4F8B4CD1F4F8560B7B684615140C7E27D49E4D6DD002D252D250014514500145145001452D1401FCABD145140051451400577DF003FE4B8780FFEC3569FFA356B81AEFBE007FC970F01FF00D86AD3FF0046AD007F4D3452D20A0028A28A0028A5A4A0028A6CB2A4085A4758D075663815E5DAFF00ED53F083C2D71241AB7C48F0E58CB19DAE92DFA641FCE803D4E8AF11FF0086DCF80BFF004567C2DFF8304A5FF86DCF80BFF4567C2DFF008304A00F6DA2BC47FE1B73E02FFD159F0B7FE0C1297FE1B73E02FF00D159F0B7FE0C12803DB68AF11FF86DCF80BFF4567C2DFF008305A5FF0086DCF80BFF004567C2DFF8304A00F6EA4AF12FF86DCF80BFF4567C2DFF008304A4FF0086DCF80BFF004567C2DFF8304A00F6FA2BC43FE1B73E02FF00D159F0B7FE0C1297FE1B73E02FFD159F0B7FE0C12803DBA92BC4BFE1B73E027FD159F0B7FE0C128FF86DCF80BFF4567C2DFF008304A00F6DA2BC4BFE1B73E02FFD159F0B7FE0C128FF0086DCF80BFF004567C2DFF8304A00F6DA5AF11FF86DCF809FF4567C2DFF008304A3FE1B73E02FFD159F0B7FE0C12803DBA8AF11FF0086DCF80BFF004567C2DFF8304A3FE1B73E02FF00D159F0B7FE0C16803DBA8AF11FF86DCF80BFF4567C2DFF008304A3FE1B73E02FFD159F0B7FE0C12803DBA92BC47FE1B73E027FD159F0B7FE0C128FF86DCF80BFF4567C2DFF008304A00F6EA5AF10FF0086DCF80BFF004567C2DFF8304A5FF86DCF80BFF4567C2DFF008304A00F6DA2BC47FE1B73E02FFD159F0B7FE0C1297FE1B73E027FD159F0B7FE0C12803DBA8AF111FB6DFC052703E2CF8589FF00B08257ADF86FC4BA5F8C742B3D6B44BE8752D2AF13CDB7BB81B7472AF4DCA7B8E28034A8A28A0028A28A00299717115A4124F3C890C31A97792460AAAA392493D0539982296621540C927A0AFC95FF008299FF00C141E4D72EB51F84BF0E6F4AE968A61D6F5981F067739CDBC78FE0031B9B3C92460019201E7DFF000526FDBE4FC71D5E7F87BE02D525FF00840ECA5C5E5DC04A2EA92A371C8FBD1020119E0900E3A57C0945140051457A3FC01F80BE29FDA33E23587843C2B6A66BA98EFB8B9707CAB5841F9A473D80FD4D0072BE0FF00F89BE216A634EF0BF87B54F11DF9C7FA36956525CC8327192A8A48153F8DBE19F8BFE1ADDC76BE2DF0B6B5E18B9972638B58D3E5B467C633B448A33D474F5AFE89BF667FD99FC29FB317C39B0F0CF87EDD26BC58D4DFEAAF1859AF66C7CCE7AE067385C9C0C727A9E8BE327C12F087C78F075CF86BC61A545A8D84C0EC72009616FEF23763401FCC9D15F43FED9BFB1D7887F648F88074FBA986ADE17D419A4D275644DBE627F7245C9DAEBD0F241C6475C57CF1400514514005145140051451400514514005145140055DD175BD43C37AADAEA7A55F5C69BA8DA48B341776B2B472C4EA721959482083DC552AF48F805F013C53FB467C44D3FC25E16B5325C5C38F3EE9D4F956B1E7E691C8EC064FBE2803F61BFE09BFF00B706ABFB4EE8377E19F14E9B76DE2AD0ED5659F598ADCFD96ED372A82EE06D494E73B78DC0311D0D7DB35E63FB3BFECF9E17FD9B3E1BE9FE11F0C5B8D90A06BABE740B2DE4D8F9A47FA9CE0678E95E9D400514514005145140051451400B49451400B45145007F2AF45145001451450015DF7C00FF0092E1E03FFB0D5A7FE8D5AE06BBEF801FF25C3C07FF0061AB4FFD1AB401FD34D14514005145140057967ED1FF00B46F84BF664F87375E2CF155D855DDE4D95846479F7B390488E35EFC0249E80035EA75F803FF00051BFDA42E3F681FDA0F538ADA663E1AF0EBBE9DA6C61BE57DADF3CD8CE32C47E4050073DFB4AFEDCFF143F691D76EDB51D7EEF47F0C973F65D034E94C36F1C7D83EDC191BD4BE7DB8AF9DE8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28AFAE3F606FD87356FDA8BC6906B1AC44F63F0F74C9C35F5DB29CDDB2F3E445EA49C027A019EA78201DD7FC1377F6079BE3C6BA9E3CF1CE9F3C1E02D3DD5AD6DE5564FED5981E80F04C6B8E48EA4800F5AFDAEB0B1B6D2EC6DECECE08AD6D2DE358A182140891A28C2AA81C0000000150687A1D8786B47B3D2B4BB48AC74FB3896182DA040A91A0180001D055FA004A5A28A004A28AF86BFE0A33FB7A5B7ECF5A04DE08F07DDACDF10B5087E7963208D3226070EC73C48472A3E87D280380FF0082987FC14153C09A7DE7C2DF86DAB8FF0084967262D6756B3901FB0C7C8681187490F438E54023826BF1FA595E691E491DA491C96676392C4F524D3EF2F27D42EA5B9B995E79E562EF24872CC4F524D4540051456A785FC2FAA78D3C4163A268B652EA1AA5ECAB0C16F08CB3B138028034FE19FC36F107C5CF1C693E13F0C69F36A7ACEA53086186142D8EECED8E8AA01624F00024D7EFFF00EC6BFB23F87BF650F8729A6D9C315CF89F50549357D5B1979DC038404F445C9C018E4935C8FEC17FB10E99FB2B781A1BFD5E382FFE216A7086D46F106E5B5C804DBC4DE8BD0B7F111E95F585002514579CFC7CF8F1E18FD9D7E1D5FF008BBC5175E5DB420AC16A8479B752E388D01EFEA7B0A00F8FFF00E0B37AEE856DFB3F685A55E3C0DAF5CEAC92D8C6D8F355141F31877031C7FF00AABF17ABD63F698FDA3BC4BFB4EFC4FD43C5BE2194C713B18EC34E46263B3807DD8D7F0E49EE493DEBC9E800A28A2800A28A2800A28A2800A28A2800A28AD5F0A785356F1C788F4ED0742B09B53D5F509D2DEDAD605CBC8EC4003F33D680367E147C2CF11FC68F1EE95E10F0AE9F2EA3AC6A126C48E242446BFC52391F75547249E057EFF7EC7BFB24F86FF650F86D6FA469F14779E24BB512EAFAC32FEF2E253FC20F68D7801471C64F24D71DFB077EC45A5FECA7E0C37BA988351F1EEA7128BFBE8C656DD7AF93193CE33D4F19C0F4AFAB2800A28A2801692968A004A28A2800A28A2800A5A4A280168A28A00FE55E8A28A0028A28A002BBEF801FF25C3C07FF0061AB4FFD1AB5C0D77DF003FE4B8780FF00EC3569FF00A356803FA69A28A2800A28A280313C71AACBA1782F5ED461CF9D67613DC26DEBB9636618FCABF9769E579A7924918BBB312CCC7249F735FD4E6A56116ABA75D594E330DC44D138FF00658107F9D7F30DF137C07A8FC30F1FEBFE15D56368F50D26F24B494329192AC46467B1A00E668A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A2BD7BF660FD99FC55FB517C4CB1F0BF87ADCC569B849A8EA92A9F22CA01CB3B103963D157BB11D064800EB3F628FD8FF005AFDAD3E23FF0067A1974FF0AE9BB66D5B5454E1109E2343D37B60E07A027B57EFC7C36F86FE1EF849E09D27C27E16D3A3D2F44D320582081393803EF331E598F52C792493587F02BE07F867F67CF875A7F843C2D68B6F656C374B363F79732900348E7B9381F8002BD06800A29692800A5A2BC07F6C2FDAEBC37FB277C3A9F55BF2BA87896EE364D27474601A79718567FEEC60F24F5C03804D0071BFB7CFEDB1A77ECA9E05163A5C90DDF8FB578CAE9F68D86FB3C7820DC3AFA023001EA7D4022BF077C59E2BD5FC75E24D475FD7AFE6D5358D4666B8BABBB86DCF239EA4FF00203A000015ABF147E28788BE31F8E353F1678A6FDF51D62FE42F248C7851D9547651D00AE52800A28A54469182A82CC4E000324D004B636571A95EDBDA5A42F71757122C51431296791D8E15401D49240C57EDAFFC1397F605B4F809A045E3AF1AD925CFC40D4103410CA3234B848FBA074F30E724F6C0031CE782FF008263FEC06FE03874FF008B3F10B4D8C6BF34426D134DB8525ACD597FD73A9E03953C0E48CE7822BF4A6800A28ACEF11F88F4DF08E877BAC6B17B0E9FA65944D35C5CCEDB523403249340193F133E24F87FE11781F57F16F8A3508B4DD174C81A79A6918027038451FC4CC70028E492057E02FED9DFB5FF0088BF6B2F888D7F752C965E14D399E3D234707090A12332363EF48D81927A0000C575DFB7DFEDBB7DFB53F8E64D3B456B8B2F87FA5CC52C2D646C1BA238FB43A8E85BA81CE0115F25D001451450014514500145145001451450014514E8E379A458E356791C8555519249E800A0096C2C2E354BD82CED217B8BA9DC471451AE59D89C00057EDEFF00C1393F60FB1F801E13B5F1BF8C34E12FC46D4E3F31527E7FB32161F2C6ABDA4239627919C71835C27FC1347FE09F327C3386DFE287C47D3A3FF849AE2257D1F4A986E6B043C996404712918C0FE119EE78FD1EA0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A005A2928A00FE5628A28A0028A28A002BBEF801FF0025C3C07FF61AB4FF00D1AB5C0D77DF003FE4B8780FFEC3569FFA356803FA69A28A3F1A0028A28A005AFCBBFF0082B27EC5B79AF16F8CDE0EB23713C3188B5FB2814966419DB7207B746FA83D8D7EA1D23A2C88CAC032B0C107A11401FCACD15FB71FB50FFC1283C0BF19355B8F10F822E62F02EBF70C64B88638CB59DC392496283FD5939E768C1F4CD7C3BE26FF008244FED03A25C4B1E9FA6E8BE208D4E165B1D5238C38F5026287F31401F14D15F5BFFC3AAFF694FF00A116DFFF0007763FFC7A8FF8755FED29FF00422DBFFE0EEC7FF8F5007C91457D6FFF000EABFDA53FE845B7FF00C1DD8FFF001EA4FF008755FED29FF422DBFF00E0EEC7FF008F5007C93457D6DFF0EABFDA53FE845B7FFC1DD8FF00F1EA5FF87557ED29FF00422DBFFE0EEC7FF8F5007C91457D6DFF000EABFDA53FE845B7FF00C1DD8FFF001EA5FF008755FED29FF422DBFF00E0EEC7FF008F5007C91457D6DFF0EABFDA53FE84483FF07761FF00C7A97FE1D57FB4A7FD08B6FF00F83BB1FF00E3D401F24515F5B7FC3AAFF694FF00A116DFFF0007763FFC7A8FF8755FED29FF00422DBFFE0EEC7FF8F5007C93457D6DFF000EABFDA53FE845B7FF00C1DD8FFF001EA3FE1D57FB4A7FD08B6FFF0083BB1FFE3D401F24D15F5B7FC3AAFF00694FFA112DFF00F07763FF00C7A97FE1D57FB4A7FD08B6FF00F83BB1FF00E3D401F24515F5B7FC3AAFF694FF00A116DFFF0007763FFC7A8FF8755FED29FF004225BFFE0EEC7FF8F5007C93457D6DFF000EABFDA53FE845B7FF00C1DD8FFF001EA3FE1D57FB4A7FD08B6FFF0083BB1FFE3D401F24D15F5B7FC3AAFF00694FFA116DFF00F07763FF00C7A9F17FC12A3F692925446F045B44ACC0176D6AC4851EA71313F95007CFFF0005FE0DF893E3C7C41D37C21E16B36BBD4EF1B938F9224FE291CF651DCD7F417FB2C7ECC9E1AFD96FE1959F8634341717CE165D4B53703CCBB9F03737B2E7385EC2B97FD8A7F63CD0BF64BF875F618C437FE2DD4B6CBABEAC1725D80E224246446BCE077249EF5F465002514B494005145713F197E317867E04FC3DD57C63E2BBD167A5D844CFB47324F260958A35EEEC781DB9E481934018BFB467ED0DE16FD9A7E1B5E78B7C5174A88B98ACEC95879B793904AC683BF4C93D857F3DFF001FBE3C78A3F68BF893A9F8C3C537666B9BA7C416CBC456B08E12345EC0003EA724F26BA5FDACBF6A4F11FED55F12E5F116B0ED6FA65B6E874BD303663B4849CE07FB4D8193DF03D2BC4E800A28A2800AFD39FF0082657FC13E62F14AD9FC5AF89160CDA62481F43D1A75C2DC91CFDA2507AA67855EF824E462BCFBFE09BDFB025E7C6CF10597C43F1C58341E01B17F32D2DA7183AA4C0FCA00FF009E40F24F7C00339247ED559DA43A7DA436B6D12416F0A2C71C518C2A2818000EC00A009400A00000038C0A28A47758D4B310AA064B13800500457979069D693DD5CCA905B408D2CB2C870A8AA32493D80009AFC4CFF828F7EDEF79F1E3C432F813C177AF6BE01D3A465B89612436A93038DCC7FE79AE385EE49273C63D07FE0A69FF0005058FC6C753F847F0EEF59B448A5306B7AC42D85BB646E60888EB1861CB746C7190727F342800A28A2800A28A2800A28A2800A28A2800A28A2800AFD3DFF8264FFC13ED3C44349F8BDF112C19B4D56175A16913AE16E08FB971203D533F328E87009C8E0F05FF0004D5FD8267F8CBAF41F117C77A6EDF0369F28367677208FED398739DBFF3CD78C93C127033838FDA48208AD208E186348618942246836AAA8180001D001400F00000018028A29680128A5A4A0028A28A0028A5A4A0028A5A4A0028A5A280128A5A280128A5A2803F957A28A2800A28A2800AEFBE007FC970F01FFD86AD3FF46AD7035DF7C00FF92E1E03FF00B0D5A7FE8D5A00FE9A68A28A0028A5A4A005A4A28A0028A29680128A28A0028A28A0028A28A002968A2800A4A5A2800A28A4A005A4A5A2800A4A5A28012968A280128A5A2800A4A5A2800A28A280128A2A9EB5ACD8F87348BCD5353BB8AC74EB389A7B8B99DB6A451A8CB313D8002802878D7C69A37C3CF0B6A3E22F105FC5A6E91A7C466B8B999B0AAA3FA9E8057E087EDC3FB6B7883F6AEF1DCF1432C9A7F80F4E9D974AD2D723781C09A5FEF3B75F45071EE7B3FF008289FEDCF71FB4B78C3FE119F0ADE5C43F0EF4895BC95C18FF00B426E86675EE06085CF404F0326BE2FA0028A28A002BEB8FD817F61BD43F6A8F177F6B6B4B3D8FC3FD2E70B7B7518DAD74E304C1192319C1193CE322B92FD8A3F63FD77F6AFF008990D82C52D978434F227D5F55C615101E2243DDDCF000E8327B57EFC7C3AF877A07C29F05E95E15F0C69D0E97A269B179505BC2B81D7258FAB312493DC93401ADA1E87A7F86B47B3D2B4AB386C34DB38960B7B58102A468A30140F402AF51450015F99DFF00053AFDBF4F83A3BBF84DF0EF5143ACCB195D7355B76C9B5561FF001EE841E1C8E58F6040F5AEFBFE0A4BFB7A41F02FC3D73F0FFC137C1FC7BA945B6E2EA06CFF006642DD4E474948E00EA339E0E2BF142F2EE7D42EE6B9B995E7B899CC924B23659D89C924F724D0046CC5D8B312CC4E4927249A4A28A0028A28A0028A28A0028A28A0028A28A002BEC5FF00827DFEC297FF00B4FF008B61F11788925B2F875A54F9BA957E57BF9179104648E0138DCDD8640C1C1AE27F629FD8E3C43FB58F8FC411452D8F83B4D753AB6B0461101E44499FBD211D8741C9C6457EFB7C3DF87FA0FC2DF07697E17F0D69F1699A369B02C105BC2A00C018DC7D58F524F249CD0069E83A0E9FE17D1ACF49D26D22B0D3ACE35860B68176A468060002AFD14B40094514B40094514500145145001452D25001452D250014514B400945145001452D1401FCABD145140051451400577DF003FE4B8780FF00EC3569FF00A356B81AEFBE007FC970F01FFD86AD3FF46AD007F4D34514500145145001F8D14514005145140051451400514506800A28A280168A29280168A4A280168A29280168A4A2800A5A4A280168A4A2801692969280168A4A5A004A5A4A09C024F0050023BAC68CCC42AA8C927A015F8CBFF0528FF82814FF0016B53D47E18780EECC1E0DB39CC3A8EA10B7CDA9488DCA823A441874FE2C0278E2BD17FE0A69FF000509DED7BF09BE196AEDB76B45AF6B763211927836D138EBC67730E39C67835F95D4005145140057AF7ECC5FB3378A7F6A2F89169E18F0F4660B50CAFA86A922168ACA1CFCCEDEA719C2E793C573BF04BE0BF89FE3E7C43D37C21E14D3E5BED42EDB32322FC96F102374AEDD15467A9EE40EF5FD047ECAFF00B33F86FF0065CF85961E16D12DE1935061E76A9AA04C4B7B39E4B33752ABF75474000E393401D1FC0DF81FE17FD9F7E1F69FE12F0A5A791656CA3CC9DC032DCC98E649081C93FA57A051450015F247EDEFFB7369BFB2B7848E93A298351F885A9C05ACAD243B92D10E544F281D4641C2F19C1AED3F6CBFDAFBC39FB277C399351BC963BDF14DF830E91A3A30324CF8E6461FC31AF524F5381D4D7E007C47F889AF7C57F1A6A9E29F12EA136A7AC6A3299259E772C47A28CF4503000EC0500667893C49AA78C35DBED6B5ABF9F53D56F6569EE2EEE1B73CAEC72493F5359B4514005145140051451400514514005145140057B17ECB5FB337893F6A3F89F63E17D123682C81F3751D499098ED201F798FB9E001DC915CE7C0EF821E29FDA0BE2169FE10F09D8B5D5FDD37CF29E22B78FBC923740A057F419FB32FECD3E14FD97FE1C59F863C376B1B5C9456D475464027BE9B1CBB9EB8C9385E80702803A3F82FF067C33F01BE1F69DE10F0A592D9E9B68B966207993C840DD239039638EBEC3D2BB9A29680128A28A00296928A0028A28A00296928A005A4A5A4A005A4A28A00296928A0028A28A005A28A2803F957A28A2800A28A2800AEFBE007FC970F01FF00D86AD3FF0046AD7035DF7C00FF0092E1E03FFB0D5A7FE8D5A00FE9A68A28A0028A28A005A4A28A0028A28A0028A28A0028A28A00296928A00296928A0028A28A005A4A5A4A00296929680128A5A4A0028A28A005A4A28A0028A2968012BF3B7FE0A69FB7CC3F0C344BDF85BE03BD593C5D7CBE56A9A8C3271A7427EF4631D6461C751B467B9E3BCFF82887EDE36BFB36787A4F087852EE29FE22EA56FBD7610FFD9B13642CAE3901CE09507D338C115F86FAA6A979ADEA373A86A17535EDF5D48D34F7370E5E495D8E59998F24927249A008679E4BA9A49A676925918B33B1C9627A934CA28A002BA0F00F80B5CF89DE2FD2FC33E1CB19351D63529D2DE0850756620024F6033927D2B3B40D0351F14EB565A4691653EA3A9DECAB0DBDADB465E495CF40AA3935FBA9FF0004FCFD85F4CFD997C196DE21F10DA4577F11F53843DD4EE037F67A30FF00511FA100E198753919C500771FB167EC6FA07EC95E01FB244D16A9E2DD4111B55D5C47B77B0E4471E7908A49FAF53DB1F4651450015E4BFB4D7ED23E1BFD97FE19DE78B3C404DCCA331D8E9C8E124BC9B1C2038381EA7071E86B7FE367C68F0BFC03F87BA8F8C3C59A84763A6DA8DB1A330F32E2520958A35EACC70781D813D01AFE7EBF6ABFDA7FC4DFB537C4FBDF12EB5712C3A646C62D2F4A0E7CAB380740074DC7AB37524FA6280398F8E5F1C7C53FB41FC40BFF001778B2F0DCDFDCB1F2E1424456F1E788E31D94579FD145001451450014514500145145001451450015D37C35F871AFFC5BF1B695E14F0C5849A8EB3A94A2286141C0F5663D940C927D0564683A0EA3E28D66CF49D22C67D4B53BC9560B7B4B58CC924AEC70AAAA392493D057EEF7EC05FB0E699FB2E783D759D6ED60BBF889A9C205DDE7DF36919C130467381C81923AE3AE2803AFFD8B3F63CD0BF64DF874962863D4BC59A8626D5756F2F059F1C451F708BD3DCE4F19007D17451400514B4940052D2514005145140052D25140051451400514B4940051477A2800A28A28016928A280168A4CFBD1401FCAC5145140051451400577DF003FE4B8780FFEC3569FFA356B81AEFBE007FC970F01FF00D86AD3FF0046AD007F4D34514500145145001597E27F13E95E0BD02FB5BD6EFA1D334AB288CD717570DB52351DC9AD4AFC6AFF0082B37ED6D7BE3AF1FC9F09BC3BA9B2F86343901D552DD86DBABC5C8D8C4724479236F4CF38C81800EB7F698FF82C6EAF71AA5E687F07F4882CAC22631FFC243AA0F3259B07931C23841E858B13E82BE22F14FED85F19FC657B3DCEA9F1175C99E672EC91DC79683D82AE001EC2BC768A00F42FF8686F899FF43D6BBFF81AFF00E347FC3437C4CFFA1EB5DFFC0D7FF1AF3DA2803D0BFE1A1BE267FD0F5AEFFE06BFF8D1FF000D0DF133FE87AD77FF00035FFC6BCF68A00F42FF008686F899FF0043D6BBFF0081AFFE347FC3437C4CFF00A1EB5DFF00C0D7FF001AF3DA2803D0BFE1A1BE267FD0F5AEFF00E06BFF008D1FF0D0DF133FE87AD77FF035FF00C6BCF68A00F42FF8686F899FF43D6BBFF81AFF00E347FC3437C4CFFA1EB5DFFC0D7FF1AF3DA2803D0BFE1A1BE267FD0F5AEFFE06BFF8D1FF000D0DF133FE87AD77FF00035FFC6BCF68A00F42FF008686F899FF0043D6BBFF0081AFFE347FC3437C4CFF00A1EB5DFF00C0D7FF001AF3DA2803D0BFE1A1BE267FD0F5AEFF00E06BFF008D7A37ECF9AF7C65FDA03E2DE83E09D13C6DAEB5C5FCB99A56BD7DB0C2BCC8EC73C003F522BE77AFDA0FF8248FECB0DF0CBE1E5E7C4DF105818BC41E268923D3C4EB87B7B21F36403D3CC2549F68D7D7900FBC7C21E1C8BC1FE16D27448679AEA3D3ED63B617170DBA4976A805D8F762464FB9AD6A2968012968A4A002BE5FFDBA3F6D5D1BF64FF00B2DA795A9F8E753531E99A6EEE23F59E5EE117B0EAC703A648ED7F6AEFDAA3C2DFB2AFC39B8D7F5B9A3B9D5E7464D2F480F896F26C7000EA10123737615FCF97C57F8B1E26F8D5E38D47C59E2CD4A4D4F57BE90BBBBF0A833C2228E15474000C0A00CDF1CF8DF5AF891E2CD4FC4BE22BF9352D675198CF717329C9663D87A01D00EC0561514500152DADACD7D7315BDBC4F3DC4CE238E28C659D89C0007724D440162000493C002BF5ABFE0993FF04FAB6D26C346F8C3F1174F32EA532ADDE83A45CA10B6E8794B9914F5623E6507800AB75C5007A0FF00C1353F6093F0374A5F889E38B58A4F1AEA300165652206FECC84F24927FE5A3700E3A018C9C9C7DFB49D28A002B07C79E3BD0FE19F84754F13788EFE3D3746D3606B8B8B894E30AA33803B93D00EE6B4B58D62C7C3FA55DEA5A95DC36361691B4D3DCDC3848E340325998F0057E14FFC1413F6E8D53F699F195CF877C3F7925AFC38D326DB6B6F19DBF6E75EB3C9FDEC9CED1D00038CE4900E3BF6DDFDB2F59FDAD7E202DC2C52695E10D30B47A5E9864C9C679964EDBDBDBA0E2BE6BA28A0028A28A0028A28A0028A28A0028A28A002A6B2B29F52BC86D6D617B8B999C471C518CB3B138000A86BF5BFFE099BFF0004F75F0DC363F163E24E965B5496312E89A35DA11F6607045C4887F8F1F754F4C938CE3001E8BFF04DEFD8161F811E1FB7F1FF008E2D61B8F1EEA31EFB6B52032E97011F28CF79187248E9903B1AFBCE8A2800A28A2800A2968A004A5A28A004A5A292800A29692800A29692800A29692800A28A5A002928A2800A2968A0028A28A00FE55E8A28A0028A28A002BBEF801FF25C3C07FF0061AB4FFD1AB5C0D77DF003FE4B8780FF00EC3569FF00A356803FA69A28C514005145140143C41AB2683A0EA3A9C8331D9DB4970D9F4452C7F957F2F3E26D7EF7C55E21D4758D46533DF5F4EF713C87F89D8E49AFEA0BC53A30F11786756D289005F5A4B6C73FEDA15FEB5FCBB6ADA6DCE8FA9DD58DE44D05D5BCAD14B1B0C15607041A00A9451450014514500145145001451450014514500145145001451450014514E8A279E548E352CEE42AA8EA49E82803E81FD87BF669BCFDA6BE3AE8BA23C0C7C3761325EEB5705728B6C87718C9F5931B07FBD5FD0EE9F616FA5D8DBD9DA42905ADBC6B14514630A8A060003D00AF95FF00E09BDFB32C5FB3D7C00D32EB50B5F2FC59E258D353D49DC10F12BA831438EDB508C8FEF16AFABE8016928A2800AF33FDA23E3FF867F66DF8677FE31F134C44311F26D6D23C799753904AC6B9FA124F600FB03E995F8B5FF0576D07E2E45F162D354F16CC6EFE1E33345E1F6B242B6B01232C920C9FDF103924F201C6071401F277ED1DFB427897F696F89FA8F8C3C4739DD29F2ACEC95898ED2019D91A0F6C924F7249EF5E5D45140051451401F6DFFC12A3F66DD13E3BFC68D5F59F124297BA3784EDE1BA36322E5679E566116EFF006408DC91F4AFDCB4458D151142AA8C0503000AFC0DFF008270FED5F61FB2F7C60BD3AF8C7857C470C7697F3804B5BB23131CBEE06F7047A1AFDE6D135BB0F12E8F65AB695770EA1A6DEC29716D756EE1E3963600AB291C104106802F54375770585ACD73732A416F0A192496460AA8A064B127A00075A9738073C57E507FC14EFF00E0A023506D57E0FF00C3AD447D9D1DADB5FD5ED5F3BC8E1EDA361DB3C391DC11EB401E71FF000526FDBFDFE356A72FC39F01DD4B07826C6522FEF94ED3A9CA380063A44BCE33F789C90302BF3FA824924939268A0028A28A0028A28A0028A28A0028A28A0028EB457DD9FF0004DCFD831BF681F108F1D78D6DA58BC05A54A3C9B620A9D4EE072133FF003CD7AB6393951DCD007A17FC131BF6027F17DE69DF16BE21E988740864F3B45D2EE94EEBA911BE59DD4F1B0303807EF63A62BF5E40C0C0E0541A7E9F6DA4D85BD9595BC76B696F1AC50C10A8548D14602803A00054F40051452D002514514005145140052D14940051451400514B4940052D251400514B49400514B494005145140051452D002668A5A2803F957A28A2800A28A2800AEFBE007FC970F01FFD86AD3FF46AD7035DF7C00FF92E1E03FF00B0D5A7FE8D5A00FE9A68A28A0028A28A002BF107FE0A9FFB296A3F08FE2E5D7C41D274F66F0778A2E1A579E2195B6BC6CB3C6FFDDDDF315EC403E95FB7F5CAFC4EF863E1CF8C3E0BD47C2BE2BD3A3D5346BE4DB244FC1561F75D4FF0B03C83FD091401FCC0D15F7F7ED43FF0496F1DFC37D4EF757F86625F1B786199A48AC40FF8985B2F5D8540C498EC5707DBD7E1DF117817C45E12BC7B4D6B44BED32E518A34773032107D39140187454DF62B8FF9E12FFDF068FB15C7FCF097FEF834010D1537D8AE3FE784BFF7C1A3EC571FF3C25FFBE0D0043454DF62B8FF009E12FF00DF068FB15C7FCF097FEF834010D1537D8AE3FE784BFF007C1A3EC571FF003C25FF00BE0D0043454DF62B8FF9E12FFDF068FB15C7FCF097FEF834010D1537D8AE3FE784BFF7C1A3EC571FF3C25FFBE0D00435F6BFFC12D3F65F6F8E1F1AFF00E12AD62D049E14F0914B997CC076CF74C4F9518F5C6D663E981EB5F1F7877C29AAF8AB5FD3745D36CA5B8D4350B98ED2DE2087E791D82A8FCC8AFE8B7F64BFD9E74BFD9A3E0B68DE12B140F7C545D6A574705A7BA651BCE703818000F41EE6803D96928A2801690903A9028AF84FFE0ACFFB41EB3F05FE15F83B4EF0BEAAFA4F88F55D63ED31CF0B61D60B743BFF0002F2C7F91A00FBB2B9FF001F780741F89FE12D47C35E26D360D5B46BF8FCB9EDA750CA7D08F420F20F635F247EC11FF050CD27F691D26D7C29E2F9AD749F88D6E9B36A9D916A6A3A49182787C7DE507AE48C0381F6BF5A00FC1DFDB8FF00E09EDE27FD99F57BCF11E816F2EB9F0E267DD15F45F3496393FEAE75EA00ECFC8231C83903E3AAFEA6B5AD12C3C47A55D699AA59C37FA7DD46D0CF6D7081D2442304107A8AFC5FFDBEFF00E09B579F029AEFC73F0F22B9D4FC0CEFBAEAC5BE79B4C24F1C81F3459E013C8E012739A00F8168A3A5140057D51FB247FC142FC7BFB2A5AFF62C16D178A7C20D2190E8D793347E51272C629006D99EB8DA47B57CAF45007DFF00FB437FC15EBC6DF167C2575E1DF08F8722F02DB5E47E5DCDEADF1B9B9652086546088101F5E4D7C02CC5D8B312589C927BD2514005145140051451400514514005145140051457BFFEC6DFB24EBDFB587C481A4D9892CBC3B61B25D5B54DB9582324E14762ED8381EC7D2803B4FD82FF0061CD67F6A6F19C1AB6AB04961F0EF4CB8537F7CD953765482608BD49E85BA2827BF15FBC5E19F0D699E0ED02C345D1ACA2D3F4BB18961B7B68142A4683A002B2BE19FC36D03E11781B47F097862C52C346D2E058218C01B9B1D5D8F7663924F724D74F400B494514005145140051451400B49451400514514005145140051451400B49451400B4945140052D251400B494B4940052D251400B45251401FCAC5145140051451400577DF003FE4B8780FF00EC3569FF00A356B81AEFBE007FC970F01FFD86AD3FF46AD007F4D3451477A0028A28A0028A28A002993411DCC6639635910F5571907F0A7D140147FB0B4DFF00A07DAFFDF95FF0A3FB0B4DFF00A07DAFFDF95FF0ABD450051FEC2D37FE81F6BFF7E57FC28FEC2D37FE81F6BFF7E57FC2AF5140147FB0B4DFFA07DAFF00DF95FF000A3FB0B4DFFA07DAFF00DF95FF000ABD450051FEC1D37FE81F6BFF007E57FC28FEC2D347FCC3ED7FEFCAFF00855EA28028FF006169BFF40FB5FF00BF2BFE147F6169BFF40FB5FF00BF2BFE157A8A00A5FD85A6FF00D03ED7FEFCAFF8527F6169BFF40FB5FF00BF2BFE157A8A00A9168F610C8AF1D95BC6EA7219625047E38AB745140051451400B5F877FF00057AF8A8BE3BFDA6E2F0FDB4AB259785B4F5B3215B204EEC5E5FA1C7963FE035FB65E24D7AD3C2BE1DD535ABE7F2EC74EB596F277FEEC71A1763F9035FCCB7C5BF1C5CFC4AF89BE26F145E7FC7C6AB7F2DCB0CE719638E7E98A00E6B4ED46EB48BFB7BEB1B896D2F2DE45961B885CA3C6EA721948E41079CD7EC5FEC0FFF000534B2F8A6F63E00F8A379169DE2AF2D62B0D665F961D418606C91BA2C87AE4E01C1E72403F8D94F82792DA649A191A296360C8E870548E841A00FEA90104020820F7151DD5B437B6D2DBDC4493C12A18E48A550CAEA460820F0411C62BF2B7FE09F9FF053A16F6D65F0EFE306A2BB23DB1697E259B3BB6F4115C7AE3B3F1C7073D6BF5522952789248DD648DC0656539047A83401F93DFF000509FF0082664D6173A87C48F843A487B16533EA9E1AB3500C4DC969ADD3BA9EE8BC8C7039E3F2F1D1A3764752ACA7055860835FD531018104641EA2BF373F6FCFF826459F8EEDB55F887F0AEDD6CFC4AB9B8BEF0F4680437A33976871F71FBEDE879031C5007E3DD156351D3AEB49BE9ECAF6092D6EE0731CB0CABB59181C1047AD57A0028A28A0028A28A0028A28A0028A28A0028A2BB8F831F06FC4DF1E3E2069DE10F0A5935E6A778DCB7F0429FC5239ECA3D6803A0FD9A3F670F147ED39F13B4EF0A7876DD9617903DFEA2C3F75656E3EFC8C7D40E8BD492077AFE837E047C0BF0B7ECF3F0EEC3C23E14B14B5B3B71BA69F68F32EA520069643DD8E07D0002B96FD947F659F0CFECADF0D6D3C3BA3A8BCD5A4457D535774024BB9F1F311FDD4073B57B0C6493CD7B5D001451450014B495C17C70F8D3E1CF803F0E352F18F89EE441616836C7183879E520ED8D7DCE0FE009A00EF696BC07F627F8FBAAFED2DF06E6F1D6AD6F0D9B5DEAF770DB5A403E582DD182C6B9EA4E3924F524F41803DFA800A4A2968012968A4A005A4A28A0028A28A005A4A28A0028A28A0028A5A4A0028A28A005A4A28A005A4A28A005A2928A00FE5628A28A0028A28A002BBEF801FF25C3C07FF0061AB4FFD1AB5C0D77DF003FE4B8780FF00EC3569FF00A356803FA69A28A2800A28A2800A3AD14500145145001451450014514500145145002D252D250014B494B400945145001451450014B4945007CB7FF052DF89EBF0CFF640F1B6C95A3BED7615D12DC29C16F3C8497FF21192BF9FCAFD3FFF0082D77C544BCF117827E1F5B4CCC2CA27D52ED01E15DFE5407DF6F3F8D7E60500761F0A7E13789FE35F8C21F0BF8434D6D5B5C9A19268AD51954B8452CDCB103A0EE6B9BD6746BFF0F6A973A6EA9653E9FA85B398A7B5BA8CC7246C0E08653C835FA5FF00F0451F8582FF00C4DE38F88170014B08E3D2AD729FC6E0BC873DBE52831EF5F51FEDD3FF0004F3D0FF0069DD35FC43E1A6B7F0FF00C41B6195B964C417EA01FDDCB8E4374C38CFA10739001F8435FA19FF0004FCFF0082945DFC25BBD3FC01F13B50B8BDF05C9882CB5798B4B26987A2AB7563176E33B78C0C66BE14F881F0FF005FF85DE2ED4BC31E27D366D2B5AD3E5314F6D30C107B107B8230411D41AE7A803FA9BD1B59B0F10E976DA96997906A1A7DD20920BAB6903C7229E8558706AE57E127EC2DFF00050CD77F666D4A3F0DF8904BAF7C3EBA9419202FFBEB1638064889EA300650F5C7515FB83E0CF1A68BF10FC31A7788BC3BA8C3AAE8DA842B3DB5D5BB6E5752323E87DBB5007C6BFB79FF00C139749FDA1ADE7F18781ED6D747F8831A1F39102C316A7E9E61E0093B6F3D4704F02BF14BC57E13D67C0BE22D4341F1069B73A46B161334173677719492375382083F4EBD0F6AFEA46BE55FDB7BF611F0E7ED59E1996FEC4C3A278FECE226CB541182B7181C43381C953D03755E0E0818201F80545757F13FE177897E0EF8C6FBC31E2AD365D3356B372AF1C83861D994F707D6B94A0028A28A0028A28A0028A2ADE91A45E6BDA9DB69FA7DB49797B72E238A0897733B1E800A00D3F02781B5CF895E2ED2FC33E1CD3A6D575AD4A6105B5AC0BB9998F53EC0004927800127815FBE3FB0DFEC6DA37EC9FF000F0A4B14179E34D55564D57520A0B2E07102375D8A7278E0939F4AE3BFE09F3FB08E9FFB32F84EDFC4BE238E2BFF0088BAA5B86B890A7CBA723004C1193CEE1D19B8C9C81C75FB268016928A28016928AA5AE6B761E1BD22EF54D52EE2B1D3ED2369A7B89982A468064924D00657C43F885E1FF857E0ED53C53E27D4A2D2B44D36169EE2E263D0019C28EACC7A05192490057E04FEDB3FB63EBBFB59FC40172CD3E9FE0FD3599749D20B9DAA0F595C0E0C8C31CF61C0AECBFE0A07FB726A1FB4E78DEE742F0FCD25A7C3BD2E631D9C418837CCBC19DC7A139DA3B0C77AF8FA803F75FF00E091BFF2673A5FFD85AF7FF4315F6857C5FF00F048DFF9339D2FFEC2D7BFFA18AFB42800A5A4A5A004A296928016929692800A5A4A28016928A5A002928A2800A29692801693B5145002D252D2500145145002D1498A2803F958A28A2800A28A2800AEFBE007FC970F01FF00D86AD3FF0046AD7035DF7C00FF0092E1E03FFB0D5A7FE8D5A00FE9A68A314500145145001451450014518A2800A28A2800A28A2800A28A28016929692800A5A4A2800A29692800A2968A0029198229627000C9A5AF34FDA4FE2543F087E0578D7C5924C207D3B4D95E124F2652B8403DF245007E0E7EDD7F13CFC5AFDAB7E22EB51DC1B8B287537D3AD5B3F2F956F8814AFB111EEFC735E0B525D5CCB7B7335C4EE649A57323BB756627249FC6BA9F847E07B9F895F13FC2DE17B440F3EABA8C36A03740ACE3713EC1727F0A00FDCCFF008261FC2EFF008565FB217855A7B716FA96BB24FABDD6570CDBE465889F5FDD245F9D7D5D597E15F0F5B784BC31A468766A12D34DB48ACE25518012340A38FA0AD5A00F9A7F6C9FD883C21FB57F865E59A18748F1B5AC456C35D8D30FC6711CD8FBF1E7D72464E2BF087E2EFC1DF167C0EF1A5E785FC61A44FA4EA96CC46255F925507EFC6DD1D4F620915FD39D78CFED49FB2CF84BF6A9F87D2F87BC430ADB6A10932E9DABC71869ACE5C751D32A7A15CF23F0A00FE6FABE9AFD8CBF6E3F16FECA5E2686DC4F36AFE06BA9737FA24AE59173D64841FB8E3AF18CF7CD79F7ED23FB3478C7F661F1F5C786BC556998CFEF2CB5280136F7909240743D8F04153C823F1AF26A00FE9C7E0EFC65F09FC76F0459F8ABC1DAB41AAE997030DE5B0F320930098E45EA8C32383EA0F422BB6AFE71BF655FDAD3C61FB2978E1759F0FCBF6DD26E4AA6A5A34EE44377183FF8EB0C9C363BF7AFDE3FD9CFF695F06FED35E04B5F11F856F0090C6BF6CD36661E7D9CA47CC8C3B8072030E0FE9401CE7ED61FB1E782BF6AEF083596B968965E22B546FECDD7605027B763FC2C7F8D09032A73ED835F833F1EFF0067FF00187ECE7E3DBDF0B78BF4D96D2789CFD9AF021F22F22CFCB2C4FD1811E9C8390704115FD2FD7967ED15FB37F843F698F015D7867C55680B3231B3D46251E7D9CB8E1D09F438C8EFEDD6803F9ABA2BDCFF006ADFD917C65FB2878D4E95AF442FB45BA2CDA6EB76CA7C9BA407A1FEEB8C8CA9FC09AF0CA0028A28EB400FB7B796EEE2282089E69E56091C71A9667627000039249ED5FB35FF0004D6FD8021F849A3DB7C49F883A5ABF8D6EC0934ED3EE933FD9916061CA9E929393CF2A31D0E6B80FF0082627FC13FE6D2AE34CF8C1F10EC424C13CED0B47B88F254B0E2E6407A100E5475C9078C60FEA4F4A005A4A5A4A005A4A28660AA589000E493D05004577770585ACD73733476F6D0A3492CD2B0548D00C96627800004926BF15FFE0A49FB7D4DF1BF5897E1F781351921F02D8CA45E5D40C57FB5251C0C9EA635E703A12727A0C7A2FF00C14CFF00E0A1275C6D5FE107C3ABCC69EAC6D75DD6A07FF5E470F6F111FC39E19BBE081C727F3009C9A0028A28A00FDD6FF8246FFC99CE97FF00616BDFFD0C57DA35F17FFC1237FE4CE74BFF00B0B5EFFE862BED0A0028A28A005A2928A005A4A28A005A4A5A4A0028A2968012968A4A002968A4A0028A29680128A5A4A00296928A0028A5A2803F957A28A2800A28A2800AEFBE007FC970F01FFD86AD3FF46AD7035DF7C00FF92E1E03FF00B0D5A7FE8D5A00FE9A68A28A0028A28A0028C515F1A7FC145FF6DF5FD987C190787FC332473F8FF5B5220CE08B0807DE9987F78E4051F53DB900F6EF8E5FB587C2DFD9DA0FF8ADFC5967A75FB47E647A5C44CD7920EC44299600F66200F7AF8D7C59FF0005B2F04D95ECB0F87FC07AC6A76EA70B75753C7087FF00807247E35F929E29F156ADE36D7AF35AD72FE7D4F54BC90C93DCDC3967763EE6B2A803F57BFE1F7963FF0044D6E3FF0003568FF87DE58FFD135B8FFC0D5AFCA1A2803F57BFE1F7963FF44D6E3FF03568FF0087DE58FF00D135B8FF00C0D5AFCA1A2803F57BFE1F7963FF0044D6E3FF0003568FF87DE58FFD135B8FFC0D5AFCA1A2803F57BFE1F7963FF44D6E3FF03568FF0087DE58FF00D135B8FF00C0D5AFCA1A2803F57BFE1F7963FF0044D6E3FF0003568FF87DE58FFD135B8FFC0D5AFCA1A2803F5FBE1F7FC16287C44F1D787FC2FA7FC32BA7BDD62FE1B18B65D8620C8E17381D719CFE15FA50858A2961B588E47A1AFC26FF00824E7C2D3E3FFDACF49D5E68BCCB1F0BDA5C6A92E47CA5CA18631F50F2AB7FC06BF76A800A29692800AFCF0FF82CEFC567F0BFC17F0B782ADAE04571E24BF92E26552373416EAB953E80B4C9FF007CFD6BF442BF0BBFE0ADBF1547C41FDA965D16DA712D8785AC23D382AF413B319253F5F9907FC06803E28AFB6BFE091DF0B17C7BFB54C3ADDD5BF9B63E17D366D443B67689D8AC518FAE24738FF66BE25AFD9BFF0082337C2B1E19F825E23F1A4F1AADCF88AFD608C920911401B1F404C87FEF91401FA1B4945140052D252D0079CFC73F801E0BFDA2BC173786BC69A52DFDA364C1708764F6CE47DF8DFAA9FD0E3906BF07FF006BDFD8DBC5BFB26F8C5AD3528A5D4BC2F772B0D335D48888A75E48472385931D57D891C57F44B5CBFC4DF865E1CF8BFE0AD4FC29E2AD3A2D5346D423D92C32004820E5594F6604020FA8A00FE602BD1BE047C7EF18FECEBE3CB2F14F83F5492CAE6171E7DA93BA0BB8FF008A3950F0C08E3D47504100D7B77EDB7FB01F8ABF65BD6E5D674E8DF5DF87F7521FB3EA70A92F6A73FEAE75FE13E8DC83EB9E2BE4BA00FE8B3F649FDB0FC1DFB58783BEDBA35CC765E24B38D4EA7A14AE3CEB7278DE07568C9CE1871D8F35EF75FCC17C32F89DE24F841E30B1F13785B539B4BD5AD18324B13101867255877071D2BF737F620FDBD3C37FB54F8721D2F5029A27C40B3880BCD35D804B9C0E6580F707A95232A7239033401EF9F17BE0EF84FE39F822F7C2BE31D262D574AB91901C61E17C71246C395619EA3E9D09AFC28FDB43F61CF157ECA5E279EE560B8D5BC0B732E2C35B58C955DDD23948E15C7239C671915FD0656378C3C21A378FBC33A8F87FC41A7C1AAE8DA842D05CDA5C2064911860823FAF6A00FE5C2BF463FE099FFF0004FF0087E2B4F07C4FF88BA648DE15B6973A4E9770855351914F3230FE28948C63A310473822BD6342FF008239E9FA57ED1B0EA973ACC379F0A21CDE258396FB634A186DB6718DBB3924B8392171819AFD2DD274AB3D0B4CB5D3B4FB68ECEC6D62586082150A91A28C0503B002802CA22C48A88A1514602A8C002968A5A004A29692800AFCDDFF00829AFEDFF1F802C6EBE157C3BD515FC4B73194D6754B4707EC087A42AC3FE5A30CE7BA8C7AD7A37FC149FF006DD93F670F082F83FC30B20F1C6BD6C4C579D12C60276B483B97EA17D339CF18AFC3BD42FEE355BE9EF2EE67B8BA9DCC92CB21CB3B139249A008647695D9DD8BBB125998E493EA6928A2800A28A2803F75BFE091BFF2673A5FFD85AF7FF4315F68D7C5FF00F048DFF9339D2FFEC2D7BFFA18AFB42800A28A2800A5A4A5A004A28A28016928A2800A2968A004A29692800A28A280168A4A2801692969280168A4A5A0028A28A00FE55E8A28A0028A28A002BBEF801FF25C3C07FF0061AB4FFD1AB5C0D77DF003FE4B8780FF00EC3569FF00A356803FA69A33451400514628A006CB2A431BC8EC111016663C0007535FCD67ED37F192FBE3CFC6DF1478C6F2E1A78AF6EDC5A2B0C08ADC1223403D00E3D6BFA35F886B70FE01F122DA7174DA6DC08BFDFF0029B6FEB8AFE5E5FEFB7D680128A28A0028A28A0028A28A0028A28A0028A28A0028A29510C8EAAA32CC7000A00FD92FF82317C2C8B41F835E23F1C4D1B7DAF5DBF36B0BB7410C5C103EADFC857E8A5797FECBFF000CBFE14F7ECFDE03F08B2ECBAD3B49812E8631FE905034A7FEFB2D5EA1400514B4940193E2EF11DAF83BC29AD6BF7AC16CF4AB29AFA76270047146CEC73F4535FCCB7C52F1A5DFC45F88FE24F135EB87B9D52FE5B9665E9CB1C63F0C57EE7FFC14FF00E288F869FB2178AE18A511EA1E203168F6E376091238F37EBFBA127E75F81140057D59FB117EDE1E26FD95BC4A9A75F4B26B3E00BD702F34A93E6301CFFAE84F5561DC7423B64023E53A2803FA7EF863F13BC37F187C13A6F8B3C27A9C3AB68B7E9BE29E16CE08386461FC2CA72083C822BA9AFE75FF00646FDB23C5FF00B2678B5EEF483FDA5E1DBD753A8E8B33911CC071B97FBAE0743F9D7EF07C06FDA03C1DFB46781ADBC4FE0FD405CDB38027B4970B716AF8E5245C9C1F71907B1A00F48A28A6CB22431B3C8CA88A32598E001EE6801D457CDFF1D7FE0A0BF063E0224B06A9E24FEDDD6101C695A0A8B99891D8B6446BCFAB03ED5F9DBF1EBFE0B0DF107C7B1DCE9DF0FB498BC0BA63E545E3CBE7DF32FA86002C67BF19C7AD007EB0FC6DF1BFC37F09782AF61F89DAB68D61E1EBD89A196DF5899156E148E55549CB1FF779AFE79FF68EB1F86B63F1635B5F84FA85E5FF00831A776B4FB623298C67EE296019907452DCE31924D715E2DF19EBBE3CD666D5BC43AB5DEB3A94DF7EEAF25323B7E27EB58D40056AF857C57AC781FC4361AEE81A8DC693AC584CB3DB5E5AB949227539041FA8E8783DEB2ABD47E107ECC3F13FE3B5FC56DE0CF07EA1AA472100DE32086D90138DC65721703D8D007EB7FEC11FF051AD3BF685860F06F8E6E2D74BF8811A0F266E228B5303AEC1D049DF68EA3A0E2BEE7AFCB9FD9D7FE08DB2E89A8D96B9F143C52BF68B7759A3D2FC3D238DAC082374E4290463F841EBD6BF4FB4DB14D334FB6B389A478ADE25891A690BB90A300B31E49E392793401628A28A0028A28A005A4A28A00FC63FF82D27FC97EF0AFF00D81BFF0067AFCF4AFD0BFF0082D27FC97DF0AFFD81BFF67AFCF4A0028A28A0028A28A00FDD6FF8246FFC99CE97FF00616BDFFD0C57DA35F17FFC1237FE4CE74BFF00B0B5EFFE862BED0A0028A28A00296928A005A28A4A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A005A2928A005A2928A00FE5628A28A0028A28A002BBEF801FF0025C3C07FF61AB4FF00D1AB5C0D77DF003FE4B8780FFEC3569FFA356803FA69A28A2800A28A28011D164464750CAC3054F208AFE6DFF6B0F82975F003E3C78A7C21342D15A5BDCB4B62C79F32D98931B67DC57F4935F257FC1407F625B7FDAB3C0D0DFE8821B4F1F68EA4D84F29DAB731FF00140EDDB3D413D08E70092003F0368AE8BC7DF0F3C47F0BFC4D79E1FF0014E8F75A2EAD6AE524B7BA8CA9E0E32A7A30F71915CED001451450014514500145145001451450015EE3FB13FC285F8CFF00B4C7827C393A799606F16EAF176E730467738FC471F8D78757E9A7FC112BE1EFDBBC6FF107C6B2A2EDD3ED20D36072392D2B33C807D0469F98A00FD73A29692800A5A4A1982A927A0E6803F237FE0B59F14C6A3E30F05F802DDB31E9D0BEA57433D2471B5063FDDC9FC6BF32ABDB7F6D4F89C7E2E7ED43F113C40B299AD7FB5A6B2B5933C34103186223D8A229AF12A0028A28A002BD63F66FFDA5FC67FB30F8FEDFC4BE13BEC21FDDDEE9B3E5ADAF2124128EB9EBC6430C10475EA0F93D1401FAFDE39FF82D3F84ACFC1F632F853C2379A878967801B88350731DBDACBDC647320EFC115F05FC6EFDBFFE35FC77FB45BEB3E2B9748D1E6EBA4E840DA418CE704825D87FBCC6BE75A2801D248F348CF2333BB1CB331C927D49A6D777F0BFE04FC40F8D1A92D8F827C25A9F886527064B68710A7FBD2B6117AF722BEFFF00809FF0463D6B5092DB51F8B1AFC5A4DB7DE7D1B48904B39E3EEBCB8DABCF752DD2803F32AD6D26BEB8482DE279A673B55106493E8057D79F017FE0977F18BE34456DA86A3651F823439407177ACA3095D4F42908C16CF5E4818AFD89F829FB277C2CFD9FAD234F077846C2CAF8001F549A212DE3E3D66605BF0040AF5DA00F8B7E057FC128BE0EFC25782FF5D8AF3C79AD261BCDD55C25B237AA42807E4ECD5F63691A2E9FA0584565A658DBE9F670A848EDED6211A228E00000C0AB945001452D2500145145001452D2500145145007E31FFC1693FE4BF7857FEC0DFF00B3D7E7A57E85FF00C1693FE4BEF857FEC0DFFB3D7E7A50014514500145145007EEB7FC1237FE4CE74BFF00B0B5EFFE862BED1AF8BFFE091BFF002673A5FF00D85AF7FF004315F68500145145002D2514500145145001476A28ED40051451400514514005145140051451400514B494005145140051451401FCAC5145140051451400577DF003FE4B8780FF00EC3569FF00A356B81AEFBE007FC970F01FFD86AD3FF46AD007F4D345145001475A28A0028A28A00F38F8C1FB3BFC3CF8F3A67D8BC6FE18B3D6828C4770E0A4F1FF00BB22E1BF0CE3DABE42F13FFC1177E116AB752CFA4789FC55A3EF3910B4D6F3C69ECA3CA538FA935FA0945007E6DFFC3923C05FF450FC43FF0080D07F851FF0E47F017FD143F10FFE0341FE15FA4945007E6DFF00C3923C05FF00450FC43FF80D07F851FF000E48F017FD143F10FF00E0341FE15FA4945007E6DFFC3923C05FF450FC43FF0080D07F851FF0E48F017FD143F10FFE0341FE15FA4945007E6E7FC391FC05FF00450FC43FF80D07F851FF000E47F017FD143F10FF00E0341FE15FA4945007E6D7FC3923C05FF450FC43FF0080D07F857D5BFB22FEC91A07EC87E0AD63C3FA26AD7BADFF0069EA06FE5BBBE44571FBB4408028C606C27FE046BDDE8A0028A28A002BCCBF69AF887FF0AA7E00F8F3C54AC566D3B499E4871D4C8576A7EA457A6D792FED65F0D6E7E2EFECE7E3DF0A58A97D46FF004B945AA8EAD328DC83F1231F8D007F3692CAF348F248C5E47259998E4927A934DA92E6DA5B3B896DE789E19E272924522956460704107A107B5474005145751E00F85BE2FF008A9AC2697E10F0D6A7E23BE638F2B4EB57976FBB1030A3DC90280397A7C30C971208E24691CF4541926BF45FE00FFC11C3C69E2B36BA8FC50D523F0858310CFA6594893DE95CF20B2EE45C8F72467915FA29F047F61DF837F011619BC3BE0DB1B9D5E31C6AFAAC62EEE81F5577CECFF80E2803F1C3E047FC139FE32FC768EDAFAD7431E1DD0A66006A9AC931295E09644FBCC39AFD15F813FF000483F85DF0E26B4D4BC67A85EF8FB568B0CD04CA2DAC4375FF0056B97383EAF8F515F79E31450065F86FC2DA3F83F4A834DD134CB5D2AC205D91DBDA4423451F415AB49EB4B4009452D14005251450014B45140094B4945001451450014B4525007E31FF00C1693FE4BEF857FEC0DFFB3D7E7A57E85FFC1693FE4BEF857FEC0DFF00B3D7E7A50014514500145145007EEBFF00C1237FE4CE74BFFB0B5EFF00E862BED0AF8BFF00E091BFF2673A5FFD85AF7FF4315F685002D25145001452D140094514B400945145002D2514500145145002D25145002D2514B4005252D25002D1494B40051451401FCABD145140051451400577DF003FE4B8780FFEC3569FFA356B81AEFBE007FC970F01FF00D86AD3FF0046AD007F4D345145001451CD1400B4945140051451400519A28A0028A28A0028A28A0028A5A280128A28A0028A5A4A0028EB452D007E7C7ED8BFF04A6D2BE35788B51F19FC3DD5A0F0CF892F5DA7BAD36EE2CD9DD48724B2B2F31963C9E18649E95F1DE95FF0480F8F57FABC76972BE1DD3ED89C35ECBA83346A3D70B1927F2AFDCAA2803F3AFE05FF00C11B3C0DE0F6B6D43E237882E3C657E9876D3ECE2FB2D983FDD624B3C83DFE4FA57DE5E0AF873E17F871A5AE9DE17D06C342B25007956302C60E3A671C9FC6BA3A4A005A4A28A0028A2968012968A4A0028A28A0028A28A002968A4A00296928A0028A28A005A28A4A00FC63FF0082D27FC97EF0AFFD81BFF67AFCF4AFD0BFF82D27FC97EF0AFF00D81BFF0067AFCF4A0028A28A0028A28A00FDD6FF008246FF00C99CE95FF616BDFF00D0C57DA55F16FF00C1237FE4CE74BFFB0B5EFF00E862BED1A0028A28A0028A5A28012968A4A00296929680128A296800A2928A0028A28A005A2928A005A4A5A4A005A4A28A005A28A2803F957A28A2800A28A2800AEFBE007FC970F01FFD86AD3FF46AD7035DF7C00FF92E1E03FF00B0D5A7FE8D5A00FE9A68EF451400514514005145140051451400514514005145140051451400B45149400514514005145140052D25140051451400B49451400514B494005145140051452D00251452D002514514005145140052D2514005145140051451401F8C7FF05A4FF92FBE15FF00B037FECF5F9E95FA17FF0005A4FF0092FDE15FFB037FECF5F9E94005145140051451401FBADFF048DFF9339D2FFEC2D7BFFA18AFB46BE2EFF8246FFC99CE97FF00616BDFFD0C57DA34005145140051451400514514005145140051451400B4945140051452D002514514005145140051452D001452628A00FE5628A28A0028A28A002BBEF801FF0025C3C07FF61AB4FF00D1AB5C0D77DF003FE4B8780FFEC3569FFA356803FA69A28A2800A28A2800A28A2800A28A28003451450014668A2800A28F6A3BD001452D250014519A28016928A2800A3B5141A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A296800A4A29680128A28A005A4A28C500145145007E31FFC1693FE4BF7857FEC0DFF00B3D7E7A57E85FF00C1693FE4BF7857FEC0DFFB3D7E7A50014514500145145007EEBFFC1237FE4CE74BFF00B0B5EFFE862BED0AF8BBFE091BFF002673A5FF00D85AF7FF004315F68D00145145002D251450014514500145145001451450014514500145145001451450014514500145145001452D1401FCAD5C4125ACF2432A949118AB29EC4532BBAF8EDE1F3E14F8CDE35D18A18CD8EAD736FB08C636C8462B85A0028A28A002BADF845AFD97857E28F85359D46430D8586A76F733C814B15457058E075E0572545007F40FFF000F33FD9BBFE8A4C1FF0082EBBFFE3549FF000F33FD9BBFE8A441FF0082EBBFFE355FCFCD1401FD037FC3CCFF0066EFFA29107FE0BAEFFF008D503FE0A67FB377FD14883FF05D77FF00C6ABF9F9A2803FA07FF87997ECDDFF0045260FFC175DFF00F1AA3FE1E67FB377FD14983FF05D77FF00C6ABF9F8A2803FA07FF87997ECDDFF0045260FFC175DFF00F1AA3FE1E65FB377FD149B7FFC175DFF00F1AAFE7E28A00FE81FFE1E65FB377FD14983FF0005D77FFC6A8FF87997ECDDFF0045260FFC175DFF00F1AAFE7E28A00FE81FFE1E65FB377FD14983FF0005D77FFC6A8FF87997ECDDFF0045260FFC175DFF00F1AAFE7E28A00FE81FFE1E65FB377FD14983FF0005D77FFC6A8FF87997ECDDFF0045260FFC175DFF00F1AAFE7E28A00FE81CFF00C14CBF66EFFA29307FE0BAEFFF008D51FF000F32FD9BBFE8A4DBFF00E0BAEFFF008D57F3F145007F40FF00F0F33FD9BBFE8A441FF82EBBFF00E3547FC3CCBF66EFFA29107FE0BAEFFF008D57F3F145007F40FF00F0F33FD9BBFE8A441FF82EBBFF00E3547FC3CCBF66EFFA29307FE0BAEFFF008D57F3F145007F40FF00F0F32FD9BBFE8A441FF82EBBFF00E3547FC3CCBF66EFFA29307FE0BAEFFF008D57F3F145007F40FF00F0F32FD9BBFE8A441FF82EBBFF00E3547FC3CCFF0066EFFA29107FE0BAEFFF008D57F3F145007F40FF00F0F32FD9BBFE8A45BFFE0BAEFF00F8D51FF0F33FD9BBFE8A441FF82EBBFF00E355FCFC51401FD03FFC3CCBF66EFF00A29107FE0BAEFF00F8D51FF0F32FD9BBFE8A4DBFFE0BAEFF00F8D57F3F145007F40DFF000F33FD9BBFE8A441FF0082EBBFFE354BFF000F32FD9BBFE8A4C1FF0082EBBFFE355FCFC51401FD03FF00C3CCFF0066EFFA29107FE0BAEFFF008D51FF000F33FD9BBFE8A441FF0082EBBFFE355FCFC51401FD03FF00C3CCFF0066EFFA29107FE0BAEFFF008D527FC3CCFF0066EFFA29107FE0BAEFFF008D57F3F345007F40FF00F0F33FD9BBFE8A441FF82EBBFF00E3549FF0F33FD9BBFE8A441FF82EBBFF00E355FCFCD1401FD03FFC3CCBF66EFF00A29307FE0BAEFF00F8D51FF0F33FD9BBFE8A441FF82EBBFF00E355FCFC51401FD03FFC3CCFF66EFF00A29107FE0BAEFF00F8D51FF0F33FD9BBFE8A441FF82EBBFF00E355FCFC51401FD03FFC3CCBF66EFF00A29107FE0BAEFF00F8D51FF0F33FD9BBFE8A441FF82EBBFF00E355FCFC51401FD03FFC3CCFF66EFF00A29307FE0BAEFF00F8D527FC3CCBF66EFF00A29307FE0BAEFF00F8D57F3F345007D97FF0540F8F3E06F8FF00F18340D67C07AE2EBBA6DAE99F679674824882BEECE3122A9FD2BE34A28A0028A28A0028A28A00FDDAFF008248C0F0FEC6DA33BAE165D52F5D0FA8F331FCC1AFB36BE67FF826DF878F86BF62DF86F6CC8565960BAB97CF5264BB9981FF00BE4AD7D3140051451400B49451400B49452D00149451400B4945140051451400B494514005145140051451400B49452D002628A3345007E1C7FC15CFE138F017ED35FF000905BA15B2F14D98BDCE303CF53B65FE6A7F1AF87EBF7EFF00E0A3BFB31A7ED19F00AF64D3A12DE2BF0E13A969AC8A0B4A00C4B09F664C918FE245AFC069A17B799E2950A488C5595860823820D00368A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A002BA5F869E0CBBF889F107C39E19B185AE2EB55BF86D12352013B9C03D7D064FE15CD57E937FC11F7F660FF0084A7C697DF1775DB7DDA668A1AD7488DD7892EDBEF4BEE11770FAB8F4A00FD65F02F856D7C0BE0AD0BC3B64823B5D2AC61B38C2F4C2205CFE38CD6E514500145145002D2514500145145002D14945002D25145002D25145002D149450014B494500145145002D14945002D145140085430208C83C107BD7E3DFF00C1513F61293C0FAF5CFC56F87FA31FF846AFBE7D6AC2CD722CAE32733041D23718271C060C4E322BF612A0BEB0B6D4ECE6B4BB823B9B5990A490CAA191D48C1041EA2803F95FA2BF543F6D7FF824FCED7575E31F82D00911CB4B79E1691B057A92D6EC7A8FF60F3E87B57E617893C31AB783F58B8D2B5BD3AE74AD46DDB64B6D75194753EE0D0066514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514A88D2385552CCC70001924D7D7DFB25FF00C1373E20FED11A8DAEA9ACDBC9E10F050DB249A8DE447CDB95CFDD813B9C6792401EF401E69FB237ECA3E26FDAAFE255AE8BA5DBCD6FE1FB6951F57D636FEEED21CF2013C17233B57D7DB9AFE837E1AFC39D07E12F8234AF0A786AC534FD1B4D84430C283F3627B927926B2FE0C7C15F09FC03F0258784FC1FA6AD86996ABF339C196773F7A491B037313F87A002BBAA0028A28A0028A28A0028A28A002968A280128A28A0028A28A0028A28A0028A29680128A296800A4A5A4A0028A28A0028A5A280128A28A002BCA7E35FECB3F0BBF684B609E39F08586AD76ABB23D4554C37918EC1664C3E07A138F6AF56C51401F995F14FFE08A5E1ED4A6B8B8F87FE35B9D18B0CC765AC47E7C487D37A8DD8FAE4FD6BC1B5BFF8234FC64D3B3F61D5BC3FAB63A7957063CFFDF6057ED751401F85FF00F0E89F8FDFF40CD27FF0670FFF001547FC3A27E3FF00FD03349FFC19C3FF00C557EE8518A00FC2FF00F8744FC7FF00FA06693FF83387FF008AA3FE1D13F1FF00FE819A4FFE0CE1FF00E2ABF7428A00FC2FFF008744FC7FFF00A06693FF0083387FF8AA3FE1D13F1FFF00E819A4FF00E0CE1FFE2ABF7428A00FC2FF00F8744FC7FF00FA06693FF83387FF008AA3FE1D13F1FF00FE819A4FFE0CE1FF00E2ABF7428A00FC2FFF008744FC7FFF00A06693FF0083387FF8AA3FE1D13F1FFF00E819A4FF00E0CE1FFE2ABF7428A00FC2FF00F8744FC7FF00FA06693FF83387FF008AA3FE1D13F1FBFE819A4FFE0CE1FF00E2ABF7428A00FC2FFF0087457C7EFF00A06693FF0083387FF8AA3FE1D13F1FFF00E819A4FF00E0CE1FFE2ABF7428A00FC2FF00F8744FC7FF00FA06693FF83387FF008AA3FE1D13F1FF00FE819A4FFE0CE1FF00E2ABF740D1401F85FF00F0E89F8FFF00F40CD27FF0670FFF001547FC3A27E3FF00FD03349FFC19C3FF00C557EE851401F85FFF000E89F8FF00FF0040CD27FF000670FF00F1547FC3A27E3FFF00D03349FF00C19C3FFC557EE851401F85FF00F0E8AF8FDFF40CD27FF0670FFF001547FC3A27E3FF00FD03349FFC19C3FF00C557EE851401F85FFF000E89F8FF00FF0040CD27FF000670FF00F1547FC3A27E3FFF00D03349FF00C19C3FFC557EE851401F85FF00F0E89F8FFF00F40CD27FF0670FFF001547FC3A27E3FF00FD03349FFC19C3FF00C557EE852D007E177FC3A27E3FFF00D03349FF00C19C3FFC551FF0E89F8FFF00F40CD27FF0670FFF00155FBA145007E17FFC3A27E3FF00FD03349FFC19C3FF00C551FF000E89F8FF00FF0040CD27FF000670FF00F155FBA14B401F85DFF0E89F8FFF00F40CD27FF0670FFF001547FC3A27E3F7FD03349FFC19C3FF00C557EE852D007E177FC3A27E3FFF00D03349FF00C19C3FFC551FF0E89F8FFF00F40CD27FF0670FFF00155FBA145007E17FFC3A27E3FF00FD03349FFC19C3FF00C551FF000E89F8FF00FF0040CD27FF000670FF00F155FBA145007E17FF00C3A27E3FFF00D03349FF00C19C3FFC551FF0E89F8FFF00F40CD27FF0670FFF00155FBA145007E17FFC3A27E3FF00FD03349FFC19C3FF00C551FF000E89F8FF00FF0040CD27FF000670FF00F155FBA1474A00FC2FFF008744FC7FFF00A06693FF0083387FF8AA3FE1D13F1FFF00E819A4FF00E0CE1FFE2ABF7428A00FC2FF00F8744FC7FF00FA06693FF83387FF008AA3FE1D13F1FF00FE819A4FFE0CE1FF00E2ABF7428A00FC3FD27FE08F5F1CAFA4DB76744D3573F7E4BE47FF00D009AF58F007FC1127599AE124F1A7C41B3B7B7DDF341A35BB3C98FF0079C633F857EB451401F30FC1AFF82707C0BF831756D7F69E134F116B36EC1E3D475F7376CAC3A308DBF76083C821320D7D3A88B1A2A228555180AA3000A5A280168A4A28016928A2800A28A280168A4A280168A4A28016928A28016928A2800A28A2800A28A2800A5A4A2800A0D145002D25145002D1499F7A28016928A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A3BD145001451450014514500145145001451450014514B40051494500145145001451450014B49450014B49450014B494B4005252D250014B45250014514B400525145002D252D25001451450014B49450014B494B40094B494500145145002D252D140094B4945002D2514B40094B451400525145002D252D140094B4945002D252D14005252D25002D1451400527A514500028A28A005A43451400B49EB45140077A05145002D345145002F7A28A28003D28EF451400B49E94514001A5A28A0028A28A00414B451400521E945140077A5A28A0028A28A0028A28A00293BD1450006968A28012968A2800A28A2800A4F5A28A005A28A28010D2D14500149DE8A28016905145002D20E945140052D1450014514500149DE8A2800A28A280168A28A0028A28A0029074A28A003D6968A280105068A280168A28A004A5A28A00293D68A280168A28A0028A28A00FFFD9'),
(3, NULL),
(4, x'FFD8FFE000104A46494600010102001C001C0000FFDB0043000503040404030504040405050506070C08070707070F0B0B090C110F1212110F111113161C1713141A1511111821181A1D1D1F1F1F13172224221E241C1E1F1EFFDB0043010505050706070E08080E1E1411141E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1EFFC00011080400040003011100021101031101FFC4001C0001000202030100000000000000000000000102070803050604FFC4004A100100010302020409080707040203010100010203110405062107121731081441515455919293131522336171C1E12332537281B1D1183462667394A11635425224823643B263A2FFC4001B01010100020301000000000000000000000001020604050703FFC4003B11010001030203060503040202010501010001020311040506123113151621515232415381A1142242626371E12361333424354391B1C125F0FFDA000C03010002110311003F00DCB000000000000000000000000000000000000000000000000000000000000000000000000000044CC44666623EF070DED6696CD135DDD4D9A298EF99AE21945354F486155CA698CCCBA1DC78EF85B6FCF8D6ED669C77E39BEF468EF57D2970EE6E7A5B7F156F33B9F4D7C15A6AA69D3EB6AD4551E6A2621CAA369D455D630EBEEF1268A8F86ACBCE6E1E105B6D9CF8AED15EA3CDFA4C7E0E553B1D73D65C0B9C596A9F869CBCF6BBC20B74BD33E2DB35163CDFA4CFE0E4D3B1D31D6A702E717573F0D1874BACE9BB8C6EE7C5EE5167FF00AC4B914ECD663AB875F14EAA7E19C3A7D574B3C7FA9CC57BC4C53E68B54BED4ED5A68FE2E257C47AEABAD6EBAF71CF176AB3F29B955579FE843ED1A0B31D21C5AF7AD4CF5A9F15EDFB7EBDF59AB99FFEB0FA4696DC7C9C7AB74BB575A9F1DCD5EE373F5EEE7F8338B14C7C9F19D6D53D65F3D74EA2BFD69CB3ECE2184EA73F3714E9AB9EF85E563DB411A6AE3BA0E53B6872D14EA28FD59C276712CA3538F9BE8B7ABDC6DFEA5DC7F06136299F9338D6D51D25F659DFB7EB3F57AB98FF00EB0C274B6E7E4FB53BA5DA7A54FB6CF1CF176971F27B9554F9BE843E73A0B33D61C8A37AD4C74A9D8E97A59E3FD36228DE2669F34DAA5F1AB6AD34FF00172A8E23D753FCDDC68FA6EE31B58F18B945EFFEB10F8D5B3599E8E5D1C53AA8F8A72EEB43E105BA5998F19D9A8BFE7FD263F071EAD8E99E953996F8BAB8F8A8CBD0EDFE105B6DEC78D6D15E9FCFFA4CFE0E355B1D71D25CFB7C596AAF8A9C3D1ED9D35F056A6A8A751ADAB4F54F9E8998716BDA7514F48CB9F6B893455FC5561E9B6EE3BE16DC31E2BBB59AB3DD9E4E2D7A3BD475A5D85BDCF4B73E1ADDF59D6696F5115DAD4D9AE99EE98AE25F09A6A8EB0E653729AA3312E689898CC4C4FDCC59A40000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056BB96E8FD7AE9A7EF9C2E26526623ABA4DE38BB87769EB78F6E766DF57BF139FE4FB5BD2DDB9F0C3897B5FA7B3F1D4F0DBDF4E5C2BA4AAAA743555AD98F344D397616F67BD57C5E4E9EFF0013696DFC1E6F0DBD74FF00B9EA2BAA9DB76B8D353E4AA6BCCFF273EDEC74C7C53974D7F8B6B9F829C3C6EF1D2AF1BEE754D35EE955BB53DD45344439F6F6BD3D1F274F7F8875977F93CCEE1B9EF3B84E757AEBF733FE39872E8D3D147487557770B973E2A9F27C8D7547D3BB54CFDB2FAC5310E2D5A8993C5E988CCD4CB0C7B5995BAB63CC31CD67E8E99CD31990FDD3D53F2BFE10E4FF00B26EE63953853915EBD5E71972C1D7AFCE613960EBD7E73072C1D7B9E70E5844CD53DF22E2089AA3BA43109EBDCF389CB075EBF3983960EBD7E73072C1D7ABCE2F2C2D17711CE9C8C790F95FF0A1C9FF0068FD1D539AA3121FBA3A1D5B1E60CD6AF8BD33198A8C32ED660F91AE98FA176A89FB258CD312CA9D44C3EBDBF73DE76F9CE935D7EDE3FC732F957A7A2BEB0E55ADC2E5BF86A7A6D9FA55E37DB6A8A68DD2AB96A3BE8AA889712E6D7A7AFE4ED6C710EB2D7F27B2D97A7FDCF4F5D34EE5B5C6A69F2D515E27F93817363A67E19C3B8B1C5B5C7C74E5EE764E9CB857575534EBAAAB4533E789AB0E05CD9EF53F0F9BB9B1C4DA5B9F1F93DCECFC5DC3BBB757C4773B373ADDD99C7F375F734B76DFC50EE2CEBF4F7BE0A9DDD172DD7FA95D357DD397C7130E5C4C4F45914000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001F2EBF71D0E86CCDED56AAD5AA23BF35433A68AAA9C443E772F516E3354BC2712F4C3C23B4CCDBB5ABF1ABD1FF85313FCDCFB3B5DFB9D630E9B53C41A4B3E51399636E22E9F773D45CAE8DA36E8D3531CA9AE6AEB4CFF00C3B4B3B2531F1CE5AFEA78B2B9F2B54E18F77AE3DE2EDEEE55E39BA5C98ABFF1A63AB87676B6FB16FA43A0D46F7AABDF156F3D346A2ED5355EBD72A99F2D554CE5CC8A223E4EA6BD4CCFCF253A7A29E754E61961F29BB33D168F92A6734F789FBA7A9F2BFE10E4475EBF3AAF2C2B335553CE458C418FB40C064C406404886032603260326032603260326032603260326032020531019301931F681135533CA42712B75EBF389CB09F95FF000A27213F2554E6AEF0FDD1D15AB4F455CE99C41858BB31D48A3516AA8AACDEB94CC7969AA630C66889F93EB46A663E787A1D978F78BB64B94F89EE972229FF00C6A8EB65C3BBB7D8B9D61DB69F7BD559F86B642E1DE9F773D3DCA28DDF6E8D4D33CAAAE2AEACC7FC3ACBDB2533F04E1DFE9B8B2B8F2BB4E592786BA61E11DDA62DDDD5F8ADE9FF00C2A89FE6EAEF6D77EDF48CB60D3710692F794CE25EEF41B8E875D662F697556AED13DD8AA1C0AA8AA99C4C3B9B77A8B919A65F5307D0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001F3EB35BA4D1D9AAF6A7516ED514C6666AAA2195345554E221857729A23354B1FF1574C7C2BB34CDAB17FC72FC7FE14C4C7FCBB1B1B5DEB9E73188749ABE21D2D8F289CCB14713F4E7C45B87CA51B55A8D0513CA279552EE2C6CB6E9F3AFCDAC6AF8A6FDCCC5BFDAC75BAEF3BDEF15FCA6BF5D7AECCCFFED887696F4D6EDFC30D7351B8DDBD3FBEA7C51A78CE6AAB3F7BEF110E0CDE995A22D513988E6AC666A926EF9A90E4566AAE63132ABCB08C7DA2980CA44301930194E032604CA700600C0180CA4320641320640C81905C81946032600C018046032605CA30193019011817263ED04C555C462244E585A2EF9E944E4262D573998E6113542B3A78CE69AB1F724C4328BD30FB76ADE77BD9EBF94D06BAF5A989FF00DB30F85CD35BB9F1439DA7DC6ED99FD95322F0C74E7C45B7FC9D1BADA8D7D11CA679532EAEFECB6EAF3A3C9B1E938A6FDBC45CFDCCAFC2BD31F0AEF3316AFDFF0013BF3FF855133FF2E9EFED77ADF9C4661B3E938874B7FCA6712C81A3D6E9359669BDA6D45BBB4551989A6A8975D551553389877745CA6B8CD32FA18B3000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000455314C66A9888FB41E6B8AB8EB86F872D5756E1B85B8AE98E5453CE67D8E559D1DDBD3FB61D7EAB73D3E963F7D4C3FC5FD3DEA6ED5558E1FD1FC9C7388BD54E7FE1DD69F658EB725AB6B78AE7A598FBB146FBC4DC45C415D55EE5B85DBB13399889C47FC3B9B3A4B56BE186A9AADD2FDF9FF92A755458E7D6AE733F6B931110EB6ABD33D1C91F27467AAAC3F755D5137267F56302C51EAACCCCF7CAB28C42300910C065380CA620430090C82640C980CA7021803019301930194E032603260326032603260328C064C064C064C01804605C8190320B946009804605CA301901181531331DD213895A2E4C7EB46518CD1E899F93AF1D613F753D1C75D8E7D6A2713F624C44B3A6F4C7576BB171371170FD74D7B6EE176D444E6226731FF2E35ED25ABBF143B2D2EE97EC4FFC7532BF0874F7A9B55536388347F291CA26F5338FF874DA8D963ADB96D7A2E2B9E97A3EECC1C2BC75C37C476A8AB6FDC2DCD75473A2AE531ED74B7B4776CCFEE86D3A5DCF4FAA8FD953D2D331546699898FB1C576090000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000014BB76DDAA26BBB5D34531CE66A9C2C44CF449988F3963FE34E96F86787A26D5BBF1ACD573FD1D1FD5D869F6CBD7BCF188749ADDFB4DA6F289CCB08F1874C3C4DBEF5ACE92B9D0E9EA9FD5A79CE3EF77FA7DA6D5BF3ABCE5A76BB893517FCA99C43C05EF19D55DAAF6AAF5772BAA73335559CBB4A68A69F286B777535573999CA69B76EDE267BD9B8F355551373C910A727AAB3333DF2338888402444C40653102180489903260131022701930194E04C980C8000001813260326032603260326032603260320A0000180C980CA302E4C06513008C0A0640CA30293008981728040A98998EE9098895A2E7926061C9E8556EDDCCCC77A115554A2CF8CE96ED37B4B7ABB75D33989A6AC618554535794B916B535513989C3DFF0007F4C3C4DB1756CEAEB9D769E99FD5AB94E3EF757A8DA6D5CF3A7CA5B26878935163CAA9CC337705F4B7C33C43116AE5F8D1EAB97E8EBFEAE8351B65EB3E78CC371D16FDA6D4F94CE25902D5DB77688AED574D74CF389A672EBE6263ABBB8989F385D14000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000071DFBD6AC5B9B97AE536E888CCCD53858899F286355514C6658D38EBA63D8362EBE9F43546BB55118EAD3CA227EF767A6DAAEDDF3ABCA1D06BF8874FA6F2A3CE582B8C3A49E27E27BB3457AAAEC69E738B5479BEF6C3A6DB6D59F979B4AD7EFDA8D4F59C43C8C58AAAFA572B99ABCB99CBB18A621D0557A665C91F2746711CD5F3FDD57556AAEA9EEE50AB14C42A324889880CA6204480264C0262044C4064C0994800604CA701930193060C8B81384430A180308180300600C0180300600C28600C2085C2984C1930193019460320A0230192605CA260118140C82A26011302E5008156A6BAA3BF9C0C669895A7E4EBC6639A27EEA7A38E6C554FD2B75CC55E4C4E1269897D29BD312F5DC1FD24F13F0C5D8A28D5577F4F18CDAAFCDF7BAED4EDB6AF7CBCDDFE837ED469BA4E619D7817A63D837DEA69F5D5468755318EAD5CE267EF6BDA9DAAEDAF3A7CE1BAE838874FA9F2AFCA592EC5EB57EDC5CB3729B944C662699CBAC9898F2977F4D5154661C88C80000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000457553453D6AEA8A623CB338126623AB1D71EF4B5C3DC394CD8B1769D66AF9FE8E99E51FC5D96976CBB7BCE7CA1D1EBF7ED3E96311399600E33E9238978A6ECD173515E9F4D39C5AA27C9F7B63D36DD6ACFCBCDA2EE1BEDFD4F59C43C9D16333D6B93333E5CCBB188887415DE997275A8A2314C2BE789ABAA9555555E5E4ACE2221515381329881138048993009C089C06522009C099301930B8329C221851380309900C81904C8190320640C8190320640C8190320640C81905C819306430A230061046170B930864C06502808C0B9460118140CA302A2601181728156A6AAA9F2F21262257EB515C62A846189A7A38EBB189EB5B9989F262526225F4A2F4C3D67067491C4BC2D7628B7A8AF51A68C66D573E4FBDD76A76EB57BE5E6EFF006FDF6FE9BA4E619FF80BA5AE1EE23A62C5FBB4E8F57CBF4754F29FE2D7355B65DB3E71E70DEB41BF69F551899C4B22D15535D3D6A2A8AA27CB13975AEF22627A245000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000794E38E3DD878534D5D5ADD55155F88FA36A99CCCCB97A6D15DBF3FB63C9D6EBB74B1A3A7F7CF9B5E38FFA5ADFF892E57A7D1D7568F47998EAD3DF30D9749B55BB5E7579CB44DCB886F6A279689C431FD166BAEA9AEED5354CF3CCCE72EDA29886B15DE9972F5A8A23111DCAF8E26AEAA5555552B3888840A98813298811200994C4089C06522009C0993060CA550C02709900C82640CA40C01830185C060C060C09300060F24C983C8C983264C193260F23260F2320A181183018301830184C0600040640C82E4C1911850046130B9301940A02302E5130081720A898044C0B940A9A6AAA91262257EB515C6263BD186269E8E2AECD745515DAAA6998E7989C61269897DA8BD30C81C01D2D6FFC37728D3EB2BAB59A3CC4756AEF88753ABDAADDDF3A7CA5B3EDBC437B4F3CB5CE61B0FC0FC7BB0F15E9A8AB45AAA29BF31F4AD55389896B5A9D15DB13FBA3C9BDE8774B1ACA7F64F9BD5B88EC800000000000000000000000000000000000000000000000000000000000000000000000000000000000000007C5BC6EDB7ED1A4AB55B86A68B36A98CCCCCB3B76EAB938A61F1BD7EDD9A79AB9C43027491D37DED4F5F41C354F528E7155FF003FF06C3A3D9F1FBAEB4BDCF89A673458FF00F2C33ABBDACDCB5556AB5B7EBBB72B9CD55552EFE8B54D118886977F5555CAA6AAA7329C5BB71CA21F4C387FBAA52AB933CBBA15945385464981168C0890044C0898C02440138112B843902404C0080270B80C18126014110E409E4799E672032613064C183260C193060C983018030193060C983064C183260C193060E429C8F33CD1C8001544C08C180C18108001851447200C08C22A050113815120814151380564540AB537263977C0C669CAF8B77239C42618FEEA51A4BDACDB7554EAB457EBB57289CD35532F9D76A9AE3130E658D5556EA8AA99C4B33746FD37DED375341C4B4F5E8E514DFF0037F0741ACD9F3FBAD374DB389A63145FFF00F2CF7B3EEDB7EEFA4A755B7EA68BD6AA8CC4C4B5EB96EAB738AA1BA59BF6EF53CD44E61F6B07D8000000000000000000000000000000000000000000000000000000000000000000000000000000000026622266662223CB20C75D24F4ABB2F0B5AAB4FA7BB4EAB5F3138B74CFEAFF001765A4DB6E5F9CCF943A2DCB7CB3A48C44E6A6B6F18F18EFDC5BAFAEF6BF535FC9553F46D44E22986D3A6D15BB14E29879F6E1BB5ED555335CF93A6B5669B7CE79CB9AE96AAE6A4D573C948453EAE3C679C8CD22270265688544A264C28988116C0990138004CA551380104864C099480A000000860329C064C064C0990000000000000000003019302E4C065180C800A0000082301905CA00C2880422E4C0A80301956605460510CA261555C22E502A318E702B929B9E4A86134FA22ED9A6E738E5214D734BB9E0EE31DFB84B5F45ED06A6BF92A67E95A99CC550E16A7456EFD38AA1DD6DFBB5ED2D51344F9364BA36E95765E29B51A7D45DA74BAF888CDBAA7F5BF8B56D5EDB72C4E63CE1E83B6EF967571899C54C8B1313113131313E5875AEF400000000000000000000000000000000000000000000000000000000000000000000000000000007C7BBEE7A1DAB475EAF5FA8A2CDAA2333354B3A2DD572714C3E576F51669E6AE710D79E947A67D5EE31776CE1BAA6CD89FA355E8EFAA1B1E8B698A7F75C68DBB712555E6DD8F28F561FAA2F6AAED57F5172AAEBAA733555399977F4D314C621A65EBF354E67CE5C99A6DC75621938F89ABCE5C7333577AB388883009881131022C04408B44089C0802702648804E044801904481804AE00C0604CA7064C984CA64000000000000000000000000000000000000C19326172B9460321850C08C2002001720230089814C0650298044C0AACC0A0AACC022605460522669EE0988972669B91D59846189A7CE1C74C5ED2DDA6FE9EE554574CE62AA67130C6AA62A8C4B9166FCD3398F29660E8BBA67D5EDD16B6CE24AA6F588FA34DE9EFA61D06B7698ABF75B6E7B4F1255462DDFF0038F56C36D1B9E8775D1D1ABD06A28BD6AB8CC4D32D72BB755B9C550DE6D5EA2F53CD44E61F6307D4000000000000000000000000000000000000000000000000000000000000000000000000001E47A40E3ED9B847475D7AABB4DCD463E85989E732E66974573513E5D1D66E1BA59D1539AA7CFD1ABFC75C75BE718EB6AAB5576AB7A799FA16699E510DB349A0B7A78F2EAF38DCB78BDAB999AA711E8F3B66CD36FE94F7B9CE8ABAE6AF282BB99E54F72E1229F5570ACB2911310226201381131022D81004E04CA62044E00004C809C025700060CA653832644400000000000000000000000000000000000000000000000C2E5728C19320A18118410006414C02260118172814C02B302A302A260544C02054605CAD45CC72ABB930C669F42F59A6E7D28EF45A2B9A7CA5E8B8178EB7CE0ED6D35696ED5734F13F4ECD53CA61C1D5E82DEA23CFABBDDB778BDA4989A6731E8DA0E8FF008FB66E2ED1D15E96ED36F518FA766679C4B53D568AE69E7CFA3D1F6FDD2CEB69CD33E7E8F5CE1BB300000000000000000000000000000000000000000000000000000000000000000000001155514D3355531111DF321D188BA57E97B49B151736ED92BA6FEBBBBAF1DD43B8D0ED755DFDD5F46B1BB71051A689A2D79D4D71DC75FB86F5AEAF59B8EA2BBD76B9CCD554B69B5669B74E29879DEAB575DEAB9AB9CCAB8A2D4728E6FB383E7538EAAA6AEF56711104026204CAD102244CA62044E04CA413102262044E000044E00C02570181329C193222000000000000000000000000000000000000000000000000000000006172B94603218546103008005300898044C0A815180CA260540B944C0AACC0B9448A5354D3DC13112E4C517639C73461E74ADB76BF70D975D46B36ED45766ED1398AA997C6ED9A6E538AA1CED2EAEBB3573513896C77451D2F6937DA2DEDDBDD74D8D77775E7BAB6ADAEDAEAB5FBA8E8F44DA78828D4C45177CAA65DA6A8AA98AA998989EE9874ED9FAA40000000000000000000000000000000000000000000000000000000000000000001C3AED5E9F45A5AF53AABB4DAB54466AAAA9654D3354E218575D36E9E6AA7C9AF1D3074C17F5B37766E1CB936ECCFD1B97E3BE5B1EDFB54462BB8D1F79E219AB36AC4F97AB0CDBB75DDAE6EDEAA6A999CCCD539996C14D314C621A3DDBD333FF6E49AA9A63AB4B27C62267CE54E73CE559A601310315A008811688132910804C408B4408002270090144E0CA644400000000000000000000000000000000000000000000000000000000000000000C2E5728144118040029300ACC0A8914044C0B9566052455660112324738E700BC554D51D5AD184C4C79C38EE5BAED57176CD534CC4E62699C4C31AA98AA312FB5ABD313FF6CCDD0FF4C17F4536B66E23B9372CC7D1B77E7BE1AFEE1B544E6BB6DE366E219A716AFCF97AB61F43ABD3EB74B46A74B769BB6AB8CD35532D72AA6699C4B78A2BA6E53CD4CF93998B300000000000000000000000000000000000000000000000000000000000000075FBF6F1A0D936FB9ADDC2FD36AD5119E73CE5F4B56AABB572D30F8DFD4516289AEB9C43577A59E94370E2CD657A2D057569F6CA2714C44F3AFED6D7A0DB69B31CD57579CEF1BED7AAAA68A3CA9780B36622335F39976F1186AB5DC999F25ABAF3CA9EE5634D3F39522159262045A20448994C408B60401310265310224011380480A89C193222000000000000000000000000000000000000000000000000000000000000000000000006172B94008A8C0200151300898172814C02B302A05CA26055660544C0ABD15E3955DC8C6AA7E70ADEB31319A394C24C6595172627CDEFFA26E94370E13D651A2D7D756A36CAE71544CF3A3ED751AFDB69BD1CD4F56D5B3EFB5E96A8A2BF3A5B45B0EF1A0DEF6FB7ADDBEFD376D5719E53CE1AA5DB555AAB96A87A358D4517E88AE89CC3B07CDF6000000000000000000000000000000000000000000000000000000000000749C61C4BB6F0C6D5735DB85EA69C47D1A33CEA97DEC69EBBF572D2E26B3596F4B6E6BAE5AA5D2471E6E9C65B9551372AB7A3A67E85A89E586DFA2D0D1A7A7FEDE67BB6F1735754F9E29797B36A2DD3D6ABBDD835FAEBE69C422BAE6A9FB19114E1102AD10265310227022D1022443022D102260013202700951383299110000000000000000000000000000000000000000000000000000000000000000000000000000030B95CA0546104001924544C02B814151302AB8151302A2605CAB22A68AE699FB049A729BD6A2E53D6A7BD89457CB3897A8E8DF8F374E0DDCA988B955CD1D53F4ED4CF2C3AFD6E868D453FF6D8369DE2E692A8F3CD2DADE0FE25DB789F6AB7AEDBEF535663E9519E74CB50BFA7AEC55CB53D3347ACB7AAB715D12EEDF072C000000000000000000000000000000000000000000000000000000001E7B8EF8B76CE12D9EBD76BEED3D7C7E8EDE79D72E469B4D5EA2BE5A5C1D76BED68EDCD75CB52F8EF8BF75E31DDEBD56AEE551673FA3B513CA986E5A4D1D1A7A710F30DCF74B9ACAE6AAA7C9D35BA29B54FDAE6BA3AAA9AE54AAA9AA7EC565118054C40C56804C40C53102241310265381120089C025702620CA644400000000000000000000000000000000000000000000000000000000000000000000000000000000000985CAE506151841000A8C022605CA0544C022605448C9598040C8A6A9A67EC12632BDCA29BB4FDA8C69AA689773C09C5FBAF076EF46AB4972A9B39FD25A99E554385ABD1D1A8A712EF36CDD2E68EB8AA99F26DA702716ED9C5BB3D1AED05DA7AF8FD25BCF3A25A6EA74D5E9EBE5A9E9FA1D7DAD65B8AE897A171DCE00000000000000000000000000000000000000000000000000000079BE9038C36CE10D9ABD76BAE53F298FD15ACF3AA5C9D2E96BD457CB4B83AFD7DBD15B9AEB96A3F1B714EEBC61BD57AED7DCAA68CFE8AD679510DCB4BA4A34F472D2F2DDCB72B9ACB935D72EB298A6D51F6B99874F3335CA9354D5399565118013024AF021022D024A444C08985C224C02226012A112227260C193060308180300600C0180300600C0180300600C0180300600C0180300600C0180300600C0180300600C0180300600C0180300600C0180300600C0180300600C0180300600C0180300600C0180C985C19306113200A8941002E15126044A2A05448B0AC8A48AA48B08148AA699CC04C657AA29BB47DA986313344BB3E09E29DD783F7AA35DA0B954519FD2DACF2AE1C3D56928D451CB53B8DB772B9A3B915D12DB8E8FF008C36CE2FD9A8D7686E53F298FD2DACF3A65A6EAB4B5E9EBE5A9EA5A0D7DBD6DB8AE897A4719CE00000000000000000000000000000000000000000000000000079EE3CE2DDB784765B9AFD75CA7AF8FD1DBCF3AE5C8D369ABD457CB4B85AFD75BD1DB9AEB96A271B7146E9C63BDD7AFD75CAA69CFE8AD679510DD349A4A34F472D2F2DDCB72B9ABB935D73E4EB29A69B347DAE5BA6999AE5C733354E6559C4613102262045A2044C08B442A2443022D102260032994C41812A00010226040000000000000000000000000000000000000000000000000000000000000000000000000000000002411228280022613020C9924544C02B814151302AB28A89815598151302A226699CC0B31972554D37A8FB51844CD12ECF8278A374E0EDEE8D7E86E5514E7F4B6B3CAB871357A4A351472D4EE76DDCAE692E45744F936EF80F8B76DE2ED96DEBF43729EBE3F496F3CE89697A9D357A7AF96A7A96835D6F596E2BA25E85C7734000000000000000000000000000000000000000000000001D27197126DFC31B3DDDC35D769A7AB1F429CF3AA5F7D3D8AAFD7CB4B89ACD65BD2DB9AEB96A271FF166E5C65BE57ABD55CABE4627F456FC94C373D1E929D3D1887976E9B9D7ACB935553E4E9A8A69B347DAE6BA3999AE5C733354E6559C4613102262045A2044C408B442A6522262044C408904C08980140004C409904000000000000000000000000000000000000000000000000000000000000000000000000000000000000009817281400094112081513008981502A2605CAB308A89815598151302A226699CC0B31972574D37A8FB51844CD12EE78038B372E0DDF28D5E96E55F2333FA5B7E4AA1C2D66929D45189779B5EE75E8EE4554CF936EF8378936FE27D9ED6E1A1BB4D5D68FA74E79D32D335162AB15F2D4F51D1EB2DEAADC5744BBB7C1CB00000000000000000000000000000000000000000000075FC41BBE8F64DAEF6E1ADBB4DBB56E9CF39EF7D2D5BAAE5514D2F8EA2FD16289AEB9F286A374A3C6FADE31DEABABAF553A2A2A98B7444F26E5A0D153A7A3FEDE5FBBEEB5EB2E4FA3CCDBA69B547DAEC5AED53354B8EA99AA732ACA2309804C408B440898811688562941310A89881120988112A0001022604000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000241122828002261040A898044C0A84544C28ACC23244C0AACC0A891514CCD3398098CB92E534DDA3ED4634CCD32F4DD1771BEB783B7AA2AEBD5568ABAA22E5133C9D76BF454EA28FFB6C5B46EB5E8EE47A36E787F77D1EF7B5D9DC345769B96AE539E53DCD36EDBAADD534D4F50D3DFA2FD115D13E52EC1F37D8000000000000000000000000000000000000000001C1AED558D1692E6AB53722DDAB719AAA9654D3354E218575D36E99AAAE8D53E9AFA43D4F166EB56DFA2B9551B6D8AB114C4FEBCFDADB76DD0459A79AAEB2F37DF778AB555F2513FB61E06C5A8B74F5AAEF770D4EBAE6A9C422BABAD3F62AC4608804C408B40898811688562904C408B44080262044A80004408910000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000044C0A0A00089841029300ACC0A8151300ACC232448AACC0A89814A2AEACFD813194DFB51729EB53DE8945734CE25EFBA14E90F53C27BAD3B7EB6E555EDB7EAC4D333FA93F63A7DCB4117A9E6A7AC36CD8B78AB4B5F2573FB65B59A1D558D6E92DEAB4D722E5AB919A6A86A555334CE25E914574DCA62AA7A39D8B3000000000000000000000000000000000000000455314D3355531111199990E8D72F080E923C77535F0E6CD7B3668E57EE533DF3E66CBB5683963B4AE1A2710EF3CD3362D4F97CD86B4B6F1135D51CFCED8A230D16ED799C26E55354FD831A630442AA62045A2044C408B440C520988116885CA064211165C8190322620CA0650320640C8190320640C8190320640C8190320640C8190320640C8190320640C8190320640C8190320640C8190320640C8190320640C8190320640C8190320640C8190320640C8190320640C8190320640C8190320640C8190321306550654320645650172A4C1915984540A89805660648981559815130296EA9A67EC44AA328D55BCC4574C73F39319656ABC4E1997C1FFA48F12D4D1C39BCDEC59AF958B954F74F99AEEEBA0E68ED2886F5C3DBCF2CC58BB3E5F26C6D331553155331313198986B4DEFAA400000000000000000000000000000000000000621E9FF00A42A762D055B26DD7A3C7AF462B9A7BE88771B66866ED5CF5746B3BFEED1A6A3B2A27F74B5A6CD337AED576ED53555339999F2B6DA69888C3CCEF5D999725CAF3F463B993E34C7CE558194A61516881131022D103148262045A204001138048009C0C4000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000C0206402300800526015981502A26015981922605564544A2C2D6EBC7D19EE18D51F3871DEA66CDDA6EDAAA69AA273131E46355313187DACDD9896CB7401D2153BEE829D9371BD1E3D663144D5DF5C352DCF4336AAE7A7A3D3360DDA35347655CFEE865E74ED98000000000000000000000000000000000001E47A53E30D370870EDCD5575C78CDC898B3479665CCD1E96751731F2759BA6BE9D1599AA7AFC9A7FB9EBF55BD6EF7B70D65CAABBB7AACCCCB75B3662DD314C3CA757A9AAF5735D5D655AEA8A29EA52FB381113339971C2B35C44C0C5612531222C2100B42B14C200984C481903209895C227260C193060C983064C183260C193060C983064C183260C193060C983064C183260C193060C983064C183260C193060C983064C183260C193060C983064C183260C193060C983064C183260C193060C983064C183260C193060C983064C183260C193060C983064C183260C193060C983064C183260C193060C983064C183260C193060C983064C183260C193060C983064C183260C193060C983064C183260C193060C983064C183260C193060C983064C183260C1930611326046514C8132080C122A2545651900ACC8A816159150325245725154574F52A46131313985B6CD7EAB65DDECEE1A3B955176CD598987C6F598B94CD32E7E9353559AE2BA7AC3703A2CE30D3717F0EDBD5515C78CDB888BD479625A56B34B3A7B98F93D5B6BD7D3ADB315475F9BD7386ECC000000000000000000000000000000001F1EF5B8E9B69DB2FEBF57722DDAB54CCCCCB3B744DCAA2987CAF5DA6CD135D5D21A75D27F16EA78C3892E6AABAEA9D35BAA62CD3E4886EBA0D2458B78F9BCB377DC6AD65E9ABE5F27414D34DAA3977CBB07413335CB8FBE466B4409298818AD0226045A204488988544C4089011004C0254140000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000041128200015513008981508A898155915122AB302A260650AF748AE4AA9A6ED1CFBE06113344BBFE8C38B753C1FC496F554575469AE55117A9F24C3AFD7E922FDBC7CDDFED1B8D5A3BD157CBE6DC5D9771D36EDB658D7E92E45CB5769898986957289B754D32F53B3769BD44574F497D8C1F50000000000000000000000000000002662226667111CE641AD7E117C7D1B96BAAE1BDB2F4D562D4E2F554CF2AA5B36D3A2E58ED2A687C47BAF3D5D85B9F28EAC41A6B74D1475E5B0C4346B954CCE0AE7AD565488C41100B40C568811222D1022444C092988544A008026012C80000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000112C440000A89851128B08151302AA2A26055645566064513D5AB2131983536E9AE8EBC24C16EA989C32FF83A71F46DBAEA786F73BD34D8BB38B35553CA996BDBB68B9A3B4A5BCF0E6EBC95761727CA7A3652262622627313CE25ACB7C000000000000000000000000000000639E9CB8E2DF0B70E5CD3E9EA8AB5FA98EADB889FD5F3BB2DBB4937EE667A43A3DEF728D259988F8A5AA14D57755A9AF517EA9AEBAE66AAA65B9D144531887965FBB354CCCCF9B92ED513F463BA19B8F4C7CD48192E2262062B09298811611310226151280A82002CC800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001562002822A25444C22A055660540B0ACC0A8192922AF6AA88FA33DD231AA3E6E3AAABBA5D4D1A8B154D15D13155330C2BA22A8C4B9162ECD331313E6DAFE8378E2DF14F0E5BD3EA2A8A75FA68EADC899FD6F334CDC749362E663A4BD4F64DCA35766227E2864675AEF0000000000000000000000000001F0EFBB969F68DAAFEE1AAAE28B566999999676EDCDCAA2987CAFDEA6CDB9AEAE90D34E90789757C5DC51A8DC2F5C9AAD75B16A8F25310DDF45A68B16E298793EEBB855AABD35CCF93A8FABB714C77B9CE97E29CB8E064B408B4408B40898818AD02100B42B14A02A48800B4282800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001282A80029022A25456519120ACC0A89192B302AB22AB22B93EB2DCD33DE31F8672EDFA3EE25D5F08F1469F70B37269B5D6C5DA3C9544B83ADD345FB734CBBADAB70AB4B7A2B89F26E5EC5B969F77DAAC6E1A5AE2BB57A98989869172DCDBAA6997AC58BD4DEB715D3D25F7307D400000000000000000000000006BAF84AF1BF8CEA238676FB99A28FAFAA99EFF3364D9F478FF96A68FC4DB9E67B0A27FCB0AE968EAD3D7AA3EE6C710D0AE5599C426A99AA72A4461310129818AD0226045A2062904AB15A101411005A141400000000000001963A01E11D838A2DEEB3BDE87C666C4D116FE9CC75739CF73A2DE3577B4F34F6738CB71E15DB34DAE8B9DBD39C61953B24E03F52C7C5ABFABA4EF7D5FB9B778676DFA7F993B24E03F52C7C5ABFA9DEFABF71E19DB7E9FE64EC9380FD4B1F16AFEA77BEAFDC78676DFA7F993B24E03F52C7C5ABFA9DEFABF71E19DB7E9FE64EC9380FD4B1F16AFEA77BEAFDC78676DFA7F993B24E03F52C7C5ABFA9DEFABF71E19DB7E9FE64EC9380FD4B1F16AFEA77BEAFDC78676DFA7F993B24E03F52C7C5ABFA9DEFABF71E19DB7E9FE64EC9380FD4B1F16AFEA77BEAFDC78676DFA7F993B24E03F52C7C5ABFA9DEFABF71E19DB7E9FE64EC9380FD4B1F16AFEA77BEAFDC78676DFA7F993B24E03F52C7C5ABFA9DEFABF71E19DB7E9FE64EC9380FD4B1F16AFEA77BEAFDC78676DFA7F993B24E03F52C7C5ABFA9DEFABF71E19DB7E9FE64EC9380FD4B1F16AFEA77BEAFDC78676DFA7F993B24E03F52C7C5ABFA9DEFABF71E19DB7E9FE64EC9380FD4B1F16AFEA77BEAFDC78676DFA7F993B24E03F52C7C5ABFA9DEFABF71E19DB7E9FE64EC9380FD4B1F16AFEA77BEAFDC78676DFA7F993B24E03F52C7C5ABFA9DEFABF71E19DB7E9FE64EC9380FD4B1F16AFEA77BEAFDC78676DFA7F993B24E03F52C7C5ABFA9DEFABF71E19DB7E9FE64EC9380FD4B1F16AFEA77BEAFDC78676DFA7F993B24E03F52C7C5ABFA9DEFABF71E19DB7E9FE64EC9380FD4B1F16AFEA77BEAFDC78676DFA7F993B24E03F52C7C5ABFA9DEFABF71E19DB7E9FE64EC9380FD4B1F16AFEA77BEAFDC78676DFA7F993B24E03F52C7C5ABFA9DEFABF71E19DB7E9FE64EC9380FD4B1F16AFEA77BEAFDC78676DFA7F993B24E03F52C7C5ABFA9DEFABF71E19DB7E9FE64EC9380FD4B1F16AFEA77BEAFDC78676DFA7F993B24E03F52C7C5ABFA9DEFABF71E19DB7E9FE64EC9380FD4B1F16AFEA77BEAFDC78676DFA7F993B24E03F52C7C5ABFA9DEFABF71E19DB7E9FE64EC9380FD4B1F16AFEA77BEAFDC78676DFA7F993B24E03F52C7C5ABFA9DEFABF71E19DB7E9FE64EC9380FD4B1F16AFEA77BEAFDC78676DFA7F993B24E03F52C7C5ABFA9DEFABF71E19DB7E9FE655BBD11F02D56EAA68DA3A954C4C455F2B5729F6AC6EFAACFC49570C6DD3188A3F32D7EE91F8375DC21BCD7A7BB4D573495CE6C5EC72AA1B4E875B46AA8CC7579C6EFB4DCDBAF4D33F0CF49796739D40000000000000000000000000000000000000000001282A8002A9282AA21192260159192245564544C0CA114CCD339098CA355475A9EBD31F7A4C16EAC4E259ABC1AB8DFC5B513C33B85CC515FD45554F779DAE6F1A3CFFCB4B7DE19DCF13D8573FE1B14D6DBC0000000000000000000000003C9F4A7C556385385B51ADAAE445FAA9EADAA7CB333C9CBD1E9E6FDC8A5D76E9ADA747626BF9B4E355A9D46E5B8DDD66AAE4D776ED5355554B78B56E28A6221E4BA9BF55CAA6BABAAD767FF0018F23EAE1D31F3562064B08B40C5222D1022444C2C22D04A002200988512A00000000000000033AF82B7D5EF7FBD6FF16B3C41FC3EEF40E08E977ECCE2D6DBF0000000000000000000000000000000000000000000000000000003875D766CE8EF5EA7BEDD1357B2195119AA21F3BB572D1357A3CC7471C6BA2E2EDBEE5544C5AD659AE69BD673CE9E7CBEF7335DA2AB4B57FD4BAADA377B7B85B998F2AA3AC3B3E31E1CD07136CD776ED75B898AA3E8578E74CBE3A6D4D7A7AE2BA5CBDC3416B5D666DDC86A871B70CEBF85B79B9A0D6D13D589FD1DCC72AA1BC6975546A288AA978FEE5B75DD05E9B75C3A2729D78000000000000000000000000000000000000000002261042000AA4902B24AA1151302AA2A2455464ACC0AB5A9FF00C67CA31AA3E6AE9753A8DB771B5ACD2DC9A2EDAAA2AA6A87CAEDB8AE99897334D7EAB754574F56E3F459C55638AF85B4FADA6E44DFA69EADDA7CB131C9A3EB34F362E4D2F5ADAF5B4EB2C457F37AC711D880000000000000000000022BAA28A2AAEA9C45319912671196A574F5C615F1271557A3D3D73E27A49EAD389E532DC36AD27656F9A7ACBCD788771FD45E9A29E90F074445AB5DD8AA5DC354AA79A55CE79C8AB40929811685C22D088985C314C181611393080061309830254000000000000000019D3C15BEAF7BFDEB7F8B59E20EB47DDE81C11D2EFD99C9ADB7E0000000000000000000000000000000000000000000000000000007CDBB7FDAF55FE8D5FCA59DBF8E1F1D47FE2ABFC4B4EF87B7FD7F0E7114EE3A0BB345745EABAD1E4AA33CDBF5ED3D17ED7254F16D36B6EE8F51DADB9F386D5F01715E838B365B7ADD2D7117623F4B6B3CE99693ACD257A6AF96AE8F5CDAF73B5B8598AE8EBF3871F485C21A0E2DD9ABD2EA298A7514C4CD9BB8E74CAE8B595E96BE68E8C776DAAD6E16668ABAFCA5AA3C4BB26BF87F76BDB6EE166AB776DCF2CF74C791BBD8BF45FA22BA25E41ACD1DDD1DD9B5723130EB5F771400000000000000000000000000000000000000000112981060C029930205564C2A24C089464ACAE155945448B0AE71CE055AB88BB6BBB354094CF2CBDE740BC615F0DF1551A3D4573E27AB9EAD599E512E9F75D276B6F9A3AC36BE1EDC7F4F7B92AE92DB5A2A8AE8A6BA673154661A7BD2A2731948A000000000000000000031C74F7C5D4F0DF09DCD3D8AA3C73551D5B78AB1311E5765B669BB6BB99E90E8F7DD7C6974F311D65A9D6299B9766E57CE66666A96E94C621E577ABCB96E55D69FB2193E54C61100B408B442A4AC2262062B1944C024629800C81913932864C864C864C864C864C864C864C864C864C864C864C864C8CEBE0ADF57BDFEF5BFC5AD71075A1E81C11D2EFD99C9ADB7E000000000000000000000000000000000000000000000000000000706E3FF006FD4FF00A557F296547C50F9DEFF00C757F896926ABFBDDFFF0056AFE72F46A7E187845DF8E5DE701F15EBB84F7AB7AED2D5355A99FD2DACF2AA1C6D5E968D4D1CB53B0DAF73B9A0BD1728E9F386D7F09F1068389366B3B9682EC554571CE33CE99F2B47D469EBB15CD153D7F43AEB5ADB3176DCBA2E94F81B47C5FB44C4534DBD7D9899B376239FDDF6B93B7EBAAD2D7FF52EBF7BD9ADEE36BD2A8E92D58DE36ED5ED3B8DDD06BACD56AFDAAB1312DDAD5DA6ED315533E4F24D469EE69EE4DBB918987C796797C0C990C990C990C990C990C990C990C990C990C990C990C990C990C990C990C990C990C990C990C990C990C990C990C990C990C990C990C99106543212080448C90645660540C9598161594556454DBABAB3F6485519715FA66DDD8B947298989A658D51987D6CD786D8F409C5D4F12709DBD3DFAA3C734B1D5B99AB3331E4697B9E9BB1BB98E92F54D8B5F1AAD3C44F5864775AEF0000000000000000001C7A9BD469EC577AE5514D1453354CCAC46670955514C665A75D31F1457C53C637EED354CE9AC55D5B519E5F6B74DBB4DD8DA8F5796EF9AF9D55F998E90F2B11F276B1DD54BB36B933CD2A8CA5681256818AD0226045A0494889812530A8940004000000000000000000019DBC157EAF7BFDEB7F8B5BE20FE1F77A070474BBF66726B6DF8000000000000000000000000000000000000000000000000000001C1B8FFDBF53FE955FCA5951F143E77BFF001D5FE25A47ABFEF97FFD5ABF9CBD169E90F09BBF1CB895F37AFE8CB8D75BC21BC53768AAAB9A2B93117ECE794C79FEC7075DA2A755463E6EE766DDEE6DD7B31F0CF586D5EC3BB68B7BDAECEE3B7DEA6ED8BB19898FE4D2AF59AACD734571E6F5DD2EAADEAAD45DB73989788E987A3EB1C51B755ADD15BA68DCACC66998FF00CFEC9761B6EE13A7AB96AF865D16FF00B1D3AEB7DA5B8FDF1F96B16B74B7F47AAB9A6D4DBAADDDB738AA9986E34D5154661E5372DD56EA9A6A8C4C385930000000000000000000000000000000000000000000050112A22516102A24585645448AAC8AAC8CA15161698F94B58EFAA06313CB2F55D0E71457C2DC6362ED554C69AFD5D5BB19E5F63ACDC74DDB5A9F56C7B1EBE74B7E267A4B7174D7A8D458A2F5BAA2AA2BA62A8986973189C3D4A9AA2A8CC39114000000000000000062EF087E2CF987852AD0E9EE446AB591D5A713CE23CAED36BD376B779A7A435FE20D77E9EC72C7596AC69689AAB9AEAE7CF32DCA98C43CBAF56E5AE7AD567C8C9F388C422017113103158494C08B08408B089000100000000000000000000019DBC157EAF7BFDEB7F8B5BE20FE1F77A070474BBF66726B6DF8000000000000000000000000000000000000000000000000000001C1B873DBF511FF00F955FCA5951F143E777FF1D5FE25A47ABFEF97FF00D5ABF9CBD169F861E1377E39712BE603DF7447C7DA9E13DCE9D3EA2BAAE6DD7AA88B944CFEAFDB0EB371D053A9A331F14362D877BAF417396AF3A27AB68B6FD669F5FA3B7ABD2DDA6E5AB919A6A8969B5D1551572D5D5EB16AED17A88AE89CC4B1874D7D1C51BE69AE6F7B45A88DC6DC66E514C7D6C7E4EE36BDCA6CCF67727F6B54E23D823554CDFB31FBE3AFFDB5C6EDBAED5DAAD5CA668AE99C4C4C62625B644C4C661E6355334CE2545400000000000000000000000001EA3A33E17AB8AF89AD6DF5CCD1A79899BB72233D5E5C9C3D76ABF4D6A6BF9BB6D9B6EFD7EA62DCF4F9B23EEDD02DDA29AAE68379F949F25BAAD63FE5D4DBDFE27CAAA5B3DFE0B988CDBB99FB3C36FBD17F176D5D6B95EDD376C47FE74D513FF0ECAD6E9A7B9E51579BA0D4F0E6BAC66668CC3C7EA34DA8D3DC9A2FD8B96EAA7BFAD4CC39F15455D25D2576ABA2715461C2AC0000000000140402B2282AB22A0585660540C94915344F56ACF9026330E2D55134D715D3CB9E618D51987D2CD6DA7F078E2CF9FB8529D0EA2E44EAB471D5AB33CE63C8D3774D3765779A3A4BD4787F5DFA8B1CB3D61945D5B6000000000000000052F5CA6D59AEED73114D14CCCCCFD8B1199C24CE2332D39E99789ABE26E34D45CA6ACE9ACD5D5B519E5F6B73DB74DD8DA8F5796EF9AE9D4EA271D21E5A23A96A231899766D73E2A945652BC0C653022D022D0315A040130226151280008000000000000000000000CEDE0ABF57BDFEF5BFC5ADF107F0FBBD03823A5DFB33935B6FC000000000000000000000000000000000000000000000000000000E1D6FF72BFF00E9D5FC9953F1430B9F04FF0086916B3FBEEA3FD5ABF9CBD129F861E117BE3971327CC001943A17E916E70EEB28DA774BB356DB76714D533F552E9F74DBA2FD3CF47C4DB38777E9D1D7D8DD9FD93F86CA58BB6B51629BB6ABA6BB75C66262731312D4262699C4BD429AA9AE9CC749619E9CBA378D5537788B65B3117E2337ED531FAFF6C360DAB72E5FF8AE74F9348E25D83B4CEA6C479FCE180AA89A6A9A6A898989C4C4F91B3BCEA630800000000000000000000000006C378346C33A5D9753BD5DA33E373116E663BB1DED5B7CBFCD5C5B8F93D2783B4536ECD57E7F974662740DD515445518AA2263ED098CBA8DFF0086363DF2C7C8EE5A0B5769FB2313ED8722CEAAED99CD12E16AB6ED36AA9E5BB4E58C38A7A0DD0DF9AEFEC9AC9D2E39D36669CC4FF1771A7DF6AA7CAE465AA6B783ADD79AAC558FFA621E2CE0AE20E1A99AB73D14DBB39FA37227312EF74FADB3A8F827CDA66BB68D568BCEED3E4F38E5BAC000000050112A2251502920AC8AAC8C95915122C283285E63AF6A631998463F0D4F53D0D71357C33C69A7B95558D35EABAB7633CBEC759B969BB6B53EAD8F63D74E9B5119E92DC6B3729BB668BB44C4D35D313131F6B4C98C4E1EA51398CC2E8A000000000000031DF4F9C51FF4F705DEB76A7FF95AA8EA5BE78FBDD8EDBA7EDAF467A43A4DF75BFA6D34E3ACB52F4D4CD7726BAB9E6732DD298C43CAAF56E5AE73567C8CDF288C422017113103158495A04488981252A8940004000000000000000000000019DBC157EAF7BFDEB7F8B5BE20FE1F77A070474BBF66726B6DF8000000000000000000000000000000000000000000000000000001C3ADFEE57FFD3ABF932A7E286173E09FF0D22D67F7DD47FAB57F397A253F0C3C22F7C72E264F980000CC7D07F49156DD76DF0FEF57A674954E2C5DAA7EAFECFB5D0EEBB6F691DADBEADDB86F7F9B331A7BF3FB7E53E8D8389A2EDACC756BA2B8FBE2625AB79C4BD1FCAA8FFA601E9C7A379D1D77388364B19B1573BF6A98FD4FB61B3ED5B973FF00C5727CFE4F3BE25D83B399D4D88F2F9C30BF74E1B0346000000000000000000000017D3D315EA2DD13DD557113F76526710CA8889AA225B8BC076B6CD0F0BE8B45B7EA6D5CB545B8C62A8EF9E72D0B5735D7766AAA1ED7B5D366D69A8A2DCE621E81C5762000030DF84C6F91A6D9F4BB35B9A6A9D54CCDCE5CE9C773BFD8EC73573727E4D278C759C96A9B31F3EAD7B6D2F37000000001404288945840A891551615981503252454D138AB3E4098CC38B534CD1722BA7962730C2A8CC3EB66B6DA7407C51FF50F05D9B7767FF95A58EA5CE79FB9A5EE5A7EC6F4E3A4BD5762D6FEA74D19EB0C88EB9DD80000000000022A98A699AA7BA23320D4BF083E25F9FB8D2BD259AE6AD368FE8D1CF967CADBF69D3F676B33D65E6BC47ADEDF51CB1D21E069FA167BB132EE5AA4F9D4AC0B2B47DC22C315A044C08B44AE1126113944C26150C98130600C2603060306030603060306030603060306030603060306030603060306030619DBC157EAF7BFDEB7F8B5AE20FE0F41E08E977ECCE4D6DBE8000000000000000000000000000000000000000000000000000003875BFDCEFF00FA757F2654FC50C2E7C13FE1A47AD8C6BB5113FB5ABF9CBD168F861E137A3F7CB85961F2C060C060C060C262669989899898E71306163C99DFA0CE9262E45AE1CDEAF62B8E5A7BB54F7FD92D6776DB719BB6E3FCBD0786B7FCE34D7E7FC4B36DDB76EFD9AADDCA69AEDD718989E71312D762662730DEAAA62A8C4F46B7F4D7D1C57B0EAABDEB69B5356DD72735D14C7D54FE396DBB5EE317A3B3B9F13CCB88B609D25537ECC7EC9FC3153BBC350C060C060C060C060C060C060C060C060C060C060C060C060C060C060C06170FBF6BDE373DB2FC5ED16B2EDAAE3BBE94CC7B1F2B9668B918AA1C8B3AABD62AE6A2AC32070DF4D1C49B7D54C6E78DC688F24E299F6BABBFB2D9AFE0F26C7A3E2CD5DA9FF97F74325F0D74CFC35B85311B9553B7DD9EEA673547B5D45FD96FD1F079B68D1F16692F47FCBFB659036CDDF6EDCAC45ED1EAED5DA27BB15467D8EAAE59AEDCE2A86C767556AF53CD45597DB55514D135CF74465F3C3ED3388CB52FA64DF3E7BE38D65DB75F5B4F6E629B719EEC4625BCED963B2D3C44F578FF00106B3F55ADAAA89F28E8F18EC30E8B0183018301830183018304985464C0482328B842E151326155945448AA8AACFDC32564585AAFA767BB330247954F7DE0F9C4BF30F1A51A4BD5CD3A6D67D1AF9F2CF91D36EDA7ED2D663AC36BE1CD6F61A8E59E92DB4A662AA62A8EE98CC3507A52400000000000798E93F882DF0DF076B770AAE4537228EAD11E799E4E568ECCDEBB14B81B96AA34DA7AAB697D572EEB35973517AB9AABB954D5354B7AB74C534E21E45A8BB3555354AF7673563C90FA38D4C79201781253022D0A898116812524A260844AA0090000000000000000000000000676F055FABDEFF7ADFE2D67883AD0F40E09E977ECCE4D6DBE80000000000000000000000000000000000000000000000000000038B59FDCEF7FA757F2654FC50C2E7C12D23DC3FEE1A9FF005ABFE72F45A3E18784DEFF00C957F970337CC0000016B75D76EE5372DD534D74CE626279C4A4C44C625626699CC362BA11E9229DE2C51B16F37A29D7D118B572A9FAD8FC30D4F75DB7B29ED2DC793D2F8737F8D4D31A7BF3FBA3A4FAB2B6BB4B635BA4B9A6D4DBA6E5AB918AA998749455344E61B6DCB74DDA668AA3312D5FE97FA3FD470B6E55EB3476EAAF6CBD3334CC7FE1F64B72DB7708D4D3CB57C50F2ADFF64AB43739E88FD92C7AED9AD800000000000000000007DB89C228A8000FAF6FDCB5FB7DFA6FE935776DD74F762A9C7B1F3AED515C62A87DED6A2EDAAB9A8AB0F6FB574BBC59A5D257A6D56A63554554CD34E69889875B7367D3D53988C3BDB1C51ADA299A6A9CC31FDDAE6E5DAEE55399AEA9AA7F8BB588C461AED53CD332AAB1000000000400089495410A891615915122AB28A8916141536A71563C9215479294DCBBA3D65BD459AE69AEDD5154550F9DCA62AA712E4E9EECD354550DD0E8C3882DF1270768B70A6E4557268EAD71E698E4D1759666CDD9A5EBBB6EAA353A7A6B7A7715CF00000000001AEBE151C4937759A5E1FB1572A3355E889FBA61B1ECBA7F29B92D238A759E71663EEC29A789A2D4D586CB0D0AE4F34E1100B408B08B42A4AC8C6530A8B0820B324044C000000000000000000000000000CEDE0ABF57BDFEF5BFC5ACF1075A1E81C13D2EFD99C9ADB7D000000000000000000000000000000000000000000000000000000716B3FB9DEFF4EAFE4CA9F8A185CF825A47B87FDC353FEB57FCE5E8B47C30F09BDFF92AFF002E066F980000000E4D2DFBDA5D451A8B172AA2E513134D5138635531546259D15D545515533E70D9AE86BA43B5C4DA1A76EDC2BA68DCACC44739FAC69DB9EDD3A7AB9E8F865EA7C3FBED3AEA3B2B93FBE3F2F7DBD6D9A3DE36DBDB7EBACD376C5D8C5512EB2D5DAAD5515533E6D8353A7B7A9B736EE46625AABD28F03EB383F78AA9EAD573437A666CDDC72FBBEC6EDA0D753AAA3FEE1E49BD6CF736EBB8EB4CF4978D760E9000000000000000005A8A66BB94D11DF55514C7F1499C465698CCE1B2FC2BD1670F5FE0CD169F77D045CD5F526A9BBD6989E7CDA7EA375BD17E66DCF93D4B43C39A5AB474537A9FDDEAF33C49D04CFD3BFB3EE3FBB6268FC5CCB1BF7CAE52EAB57C1BD6AB35FD98D78878038A76389AF5DB6D716A3BABA67AD9F63B8B3B858BDE54D4D6357B26B34B19B94793CC5745744E2BA2BA27FC54E1CC8989E8EAA6998EAAAB100000000000000904002AAC5451591508B0ACAB285515591559153A889AED455824B73CB3866BF057E249B5ACD570FDFAB9578AACC4CFDF32D6B7AD3F945C86FBC2DACF39B33F66C535C6EE000000000F9F72D55AD1E86F6AAF5714516E89AA667EE65453354C4430B95C514CD52D23E36DDEBE20E2CD6EE75553545CB988CF9A3937BD1D9ECAD452F23DCF53FA8BF556F82E622229872DD4D3E7E6AC0B2B4092B0C568544A22D0A9292513040956202400000000000000000000000000676F055FABDEFF007ADFE2D67883AD0F40E09E977ECCE4D6DBE80000000000000000000000000000000000000000000000000000038B59FDCEF7FA757F2654FC50C2E7C12D24DCE3ABB96AA3FF00F6ABF9CBD16DFC30F0ABDE572AFF0032F9D9BE4000000000FAB6AD7EAF6BD7DAD768AED56AFDA9CD3543E772DD37299A6AE8FB58BF5D8AE2E5138986D37451C77A4E2EDA69A2E574DBDC2CC445EB733FF30D2F70D055A5AFCBE197ACEC7BCD1B85AC4F9571D5E9389F63D0710ED17B6DDC2CD372D5C8E533DF13E4970EC5FAEC5715D32ECF5BA3B7ACB536AE4794B543A41E11D7F08EF55E93534CD762A999B3771CAA86F1A3D651AAA39A3ABC8B75DAEEEDF7A68ABA7CA5E69CC754000000000000000F59D13EC9F3F71B68B49728CD88AA6AB93E48C7370771BFD8D89AA3ABB8D8F47FABD65144F46DD5BA628B74D11DD4C44434499CBD922311859155AE8A2B8C57453547DB195899849889EAF37C43C09C31BECD556E1B65BAAB9FFCA9FA38F6397675F7ECFC353ACD56CDA3D579DCA3CD8D7893A0AB55F5EFECFB8FC9E3BACCD19CFF00176F637D98F2B94B57D5F06C4E6AB35FD985F88B69D46C7BC5FDAF558F96B338AB12D86C5E8BD44574F4968FABD2D7A5BB36ABEB0EBDF67180000000000010002252592081122C2A8A89555515591942B22C2D6F13134C8957979BEFE09DDEBE1FE2CD16E74D534C5BB989C79A79389ACB3DADA9A5DB6D9A9FD3DFA6B6EE6DBAAB5ACD0D9D559AE2BA2E511544C7DCD12BA66999897AE5BAE2BA62A87D0C5980000000C6BE10FC433B3702DED3DAAB17F55F468E7E4CF3765B5D9ED2F44CF48745BFEABB0D2CC47596A8E92266AEBCFDF2DD29F28795DEAB2BCCF5AA9964C22309811681168125612530AC56810412A92932898320640C8190320640C8190320640C8190320640C8190320640C8CEDE0ABF57BDFEF5BFC5AD71075A1E81C13D2EFD99C9ADB7D000000000000000000000000000000000000000000000000000000716B3FBA5EFF004EAFE4CA9EB0C2E7C12D26DDBFEE9AAFF5AAFE72F44B7F043C2AFF00FE5ABFCCBE56797C8320640C8190320640C8EC787379D76C3BB59DCB6FBD55BBD6A73CBCB1E587CAFD9A2F513455D1CAD26AEE692EC5DB738986D6F46FC65A1E2FD968D4D9AA9A35544445FB39E74CB48D6E8EAD2D789E8F5CDA376B7B8D9E68F8A3AC3EBE38E16DBF8AB66B9A1D65B8EBE3F47731CE9961A4D557A6AF9A97DB72DBAD6BECCDBAFED2D4FE2FE1DDC386779BBB76BED4D334CFD0ABC954377D36A68D45115D2F21D7E82EE8AF4DBB90E99C8CB82190320640C8190320640C81919FBC197629B3A0D5EF57EDC4FCBE22CD531DD8CE5ABEFBA8CD516E3E4F44E0ED172D155FAA3AF466A6BCDE4000075FC47B8D9DAB65D56BAFD58A2DDB99CFDBE47D6CDB9B95C530E36AEFD3A7B355CABE4D32DE35B7B71DD351ACBF5CD75DCB93399F36793D06D51145114C3C4B5176ABD766BAA7ABE46797C0320640C8190320640C819093220C8816108A4A8AC8A84650AC8B0AC8AAC8A889EAD5122CC654D5C4C55D78FBE18D5E70CECD586D7783C710CEF3C0B674F76ACDFD2FD1AF9F933C9A5EE967B3BD331D25EA9B06ABB7D2C44F5864A75AEF400000006ADF84EEFDF38F175BDA6DDDEB51A28E7113CB330DA766B1CB6F9FD5E7BC51AAE7BDD9C4F462EB71D4B39F2D4EF9A6D539A881568562B08B40C5224AD02244016188090000000000000000000000000000676F055FABDEFF007ADFE2D6F883F83D03827A5DFB33935B6FA000000000000000000000000000000000000000000000000000000E2D67F74BDFE9D5FC9953D6185CF825A4DBB7FDD355FEB55FCE5E876FE087855FFF00CB57F997CACDF2000000000000775C1DC47AFE18DE6D6E3A1B931D59FA74679550E3EA74D46A289A2A73F6FD7DDD0DE8B96E5B63C13C4FB7F14ECD6B5FA2B913331FA4A33CE99691AAD2D7A7AE69A9EBDB76E16B5D662E513FE5F07495C17A1E30D9AAB17622DEAEDC4CD8BD8E74CF99F5D0EB6AD2D798E8F86F1B4DBDC6CF2CF9551D25AA7C41B46BB62DD6F6DBB859AAD5EB538C4F963C8DD6CDEA6F5115D33E4F22D5E96E696ECDAB9189875EFAB8C00000000003934D6AABFA9B5668A66AAABAE29C47DB2954E22659DBA79EA8A63E6DC8E04D9E8D8785745B6518C5BA333F7CF3683ABBDDB5EAAB7B5ED9A58D26968B51F2778E339E0000313F8496FDE21C316F68A6AC55AE99CE3BF14CBBBD92C73DD9B9E8D438BB5BD969A2CC7F26B7B6D79880000000000000020005464022455458448AA8C95915594645C8EBD9CF9691299C54CA3E0C5BF7CDDC5D7369B977AB46B63944CF2CC43A1DE6C735BE7F46E5C2FAAE4BDD9CCF56D23567A10000003E4DE3576B43B66A3577AAEAD16EDCCCCFF0674533555110F9DDAE2DD1354B47B89772AF78E23D66E17333376ECF7F9A3937BD35AECEDC52F21D7DF9BD7AAAE5F3DC988C5311CA1C97594FAA2156568911618AD1222445A24448840272261312B843260326032603260326032603260326032603260326032603260326032603260326032603260676F054FABDEFF7ADFE2D6B883F87DDE81C13D2EFD99CDADB7D000000000000000000000000000000000000000000000000000000716AFF00BA5EFDCABF92D3D6185CF865A51BDC453BC6AE22397CAD5FCE5E896BCE887866A63176AFF2F8B2FA61F03260326032603260326032603260326032607A7E8EF8C35FC21BCD3AAD3D535E9AB988BD673CAA870F5BA3A353472CF576DB4EEB736FBD15D3D3E70DAFE19DEF41C41B459DCB6FBD4DCB57233CBBE27CB0D22FD8AEC5734570F5DD1EB2DEAED45DB73989798E96B80F4BC5BB4D572CD14DBDC6CC4CDAB911DFF64B99B76BEAD35789F865D56F9B351B85ACD3F1C746AD6E9A1D56D9AEBBA2D6D9AAD5FB538AA996E96EBA6E5315533E4F27BF62BB15CD15C6261F2E59E1F13260326032603260326032607BDE833639DE38E34D72E5BEBE9B4F9AAE7B393ABDD6FF006562623ACB62E1AD1FEA3594CCC794756D5D3114D3111DD118694F5B8F248000154C444CCF747309F26AA74EBBECEEFC71A8B36EBEBE9B4D8A6DCFF0E6DD769D3F6562267ACBC9389759FA8D655113E51D1E072ED30D74C980C980C980C980C980C980C980C980C980C98099302328B8448A02264554544C8AA8AACC8C95916136E62734CC72944ABD5F470D6E55ECFC47A3DC2DE626D5D8EEF34F271B536BB4B734BB3D05F9B37A9AE1BC3B3EAED6BB6CD3EAECD5D6A2E5B8989FE0D12BA669AA625EBD6AB8B944550FAD83E8000031BF8436F9F347006A6D5B9C5FD4E29A39FDBCDD96D767B4BF1FF4E937FD4F63A4988EB2D4DD25333575E7EF96E94C61E557AACB926735659304892B408B0C56811224A55164400059931000000000000000000000000000019DBC153EAF7BFDEB7F8B59E20FE1F77A0704F4BBF66736B6DF4000000000000000000000000000000000000000000000000000001C5ABFEEB7BF72AFE4B4F586173E196946FBFF0079D5FF00AB57F397A259F821E19A9FFCB57F997C4FABE0000000000000000F69D15F1CEAF84377A7AD55573417A622F5ACFF00CC799D76E1A1A75547FDC3BDD9378AF6FBBEB4CF586D4ECDB968F76DBAD6BF437A9BB62ED39A6A869576D556AA9A6A8F37AD69F5146A2DC5CB7398963FE99FA3BB5C4BA1AF73DB6DC51B95A8CE223EB61DA6D9B8CE9EAE4AFE16B9C41B153ADA26EDA8FDF1F96B36A6C5DD35FAEC5FA2AA2E5138AA998C4C370A6A8AA330F2EAE89A2A9A6AEAE364C000000100D91F06CD87C43866EEF15538AB5D318CF7E2996A3BE5FE7BB16FD1E9DC23A2ECB4D37A7F97FF00C659746DBC0000749C73BC51B0F0B6B773B9DD6E8C7F19E4E4E92CCDEBB144383B96AA34BA6AEECFC9A6BABBD5EA35576FD754D55575CD599FB65BFD31CB110F13B95CD754D53F371B26000000000000000002AC590002AAA8458448AA8AAC8C951611138AB22B8F574CC55D78FBE18D5196766AC36CBC1E77CF9DF8034D6AE4E6FE9B34D7CFEDE4D2F74B3D9DF9FF00B7AAEC1A9EDB49113D61921D6BBB00001AD9E159BD57A8DEB43B4515E29D3C4CD74C797386CBB259C5335FAB45E2AD4CCD74DB8F930DD989A6D4CF9FB9B1346ABCEA4D2A2D022D03194C092BC0840C5685925220826161252A8000000000000000000000000000033B782A7D5EF7FBD6FF0016B3C41FC3EEF40E09E977ECCE6D6DBE80000000000000000000000000000000000000000000000000000038F5519D35D8F3D13FC969EB0C6BF865A59C5166AB1C41ACB5546262ECF2FE2F43D3CE6DC4BC3B5B44D17EA89F575AFB38A0000000000000000322F43BD215FE17DC68D06BAE555ED976AC4E7FFD7F73A8DCB6E8D453CD4FC50D9B60DF2AD0DCECEE4FEC9FC367B47A9B1ACD2D1A9D3DCA6E5AB919A6A89CC4B4EAA99A6712F54B7729B94C554CE62589BA70E8DA9DDECD7BF6CB66235D4466F5BA63EB63F0C3BCDAB72ECA7B2B93E4D4388F608D444EA2C47EEF9C7AB5DABA2AB75D54574CD3553389898EE96D7139F3879ACC4D338942A00000FAB67D1DDDC373D3E8EC53355772E44623CD9E6F9DDAE28A26A97DF4F6AABB7228A7E6DCFE1BDBACED3B269741623145BB71CBEDF2BCFAFDC9B9726A97B6E92C53A7B34DBA7E4EC1F27240000616F09BDFA6C6DDA4D96CDC89F18999BD4C4F763B9B0EC5A7CD53727E4D238C75BC96E9B14CF5EAD7F6D2F3900000000000000000044A4AC2114511242C2B28123252458448B0AC8C95A8545E89AAD44F9BBD0A7CAA664F053DEABD3EF5AEDA2BAF34EA22268A67C98CB5DDEECE698AFD1BCF0AEA662BAADCFCDB26D69BD0002B76AEA5AAEBFF00D699958499C465A55D2AEEB56F5C7FB8EB66BEB5335F569FB31C9BBEDF6BB3B310F28DE75137B55554E86A8EAD14D3E6760E8E3CE665102AD0315845A04958632985845A0949004130A8954000000000000000000000000000019DBC153EAF7BFDEB7F8B59E20FE1F77A0704F4BBF66736B6DF400000000000000000000000000000000000000000000000000000098898989EE906AC74F7B25CDAF8E6FEAA9B7D4D36AB136F972E51CDBA6D17E2E5888F9C3C9F89F473635935447955D18F5DB35A000000000000000000658E84BA48AF63D45BD8F78BB356DF72716EE553F553F8E5D1EE9B6C5E8ED2DFC5FF00EDB870E6FF003A5AA2C5E9FDB3F86C75BAEDDEB515D15535D15C662639C4C4B52989897A644C55198E8C1DD3A746D1317388F64B1CFBF516A98EFF00B61B1ED3B97FF6AE4FF8687C4BB075D4D88FF30C153131331313131CA61B2B4098C0A8000C9DE0EBB0CEE5C5FF0039D54F5AD68633544C72CCC7274BBD6A3B3B3C9EADAF84F45DB6ABB5F952D9B69EF5200001172A8A2DD55CF7531332B119499C465A89D2E6F9F3EF1BEB7556EBCD8A6A8A6DC67BB1CA5BD6DD63B1B114CF578E6FBACFD56B2AAE27C9E49CF74C00000000000000000089454228A12410AC92A8458564650A8AAC8AAC8C934C75A8AA9F3893E5312EFBA2ADD6AD978FF6ED6C57D5A62BEAD5F6E793AFDC2D7696661DE6CDA89B3AAA6A6EADAABAF6A8AFFF006A625A44BD5E2731959140743D206E7F34708EE1AEEB757A96A633F7F27DF4D6FB4BB14B89AEBDD8D8AAB691C4D57F5772E4CE66BAE6ACFF0016FB6E314C43C7EFD79AA65C95CE6B7D1C68E898EE095A045845A06291252B08B220002CC9880000000000000000000000000000033B782A7D5EF7FBD6FF0016B3C41FC3EEF40E09E977ECCE6D6DBE80000000000000000000000000000000000000000000000000000000F21D2A70758E2FE1FAEC44453ACB5133A7B9E69F2C39FB7EB274B733F29EAE9B7BDAA9DC2C72FF0028E8D51DEB6BD76CFB8DDD06E162AB37ADCE26261BB5ABB4DDA62AA67C9E47A9D35CD3DC9B7723130F8DF571C00000000000000002331398E528ACD7D0674933A6AADF0F6F77F36A7969EED53FABF64B5DDDB6DE6FF96DC79FCDBCF0DEFF00C98D35F9F2F94B3E4C5176D62622BA2B8FBE2625ACF9C4BD0BCAA86B1F4FDC2BA1E1DE20B3AAD0628B5ADCD5F2511CA898EF6E3B3EAEBBF6E62AF93CB38A36DB7A3BF15DBE957C98D1DC35600C66711DF28B0DA2F07ED8636AE0BB5ACAE8EA6A359F4AE44F9A27934CDE2FF697F963A43D5B85B471634715CC79D4C8EEA5B300000F2FD296F9F30705EBB5D455117628EAD11E59CF27374163B6BF4D2EAB7AD67E93475DC8EAD3FB954D772BAE7BEAAA6AF6B7C88C461E3354F34E50AC40000000000000000000558B20005565508B089155192B22AB3DC2C2289C5613D1C733558D5DBB91389A2B8AB3FC5F3B919A661C9B15E2A896EE747FB9FCEFC23B7EBBADD6EBDA88CFDDC9A16A6DF6776697B0686F76D629ADDF3E0E580C4DE13BBACE8F8167414D7D59D5D511F7E261DB6D16F9AF737A35DE24BFC9A5E5F56AF69231F4BC91DEDC21E617673E4BC77CB262B892B40929818CAD0226062B42C929104130B092954000000000000000000000000000000676F054FABDEFF7ADFE2D67883F87DDE81C13D2EFD99CDADB7D00000000000000000000000000000000000000000000000000000000079AE34E09D8F8AB4FD5DC34B4FCBD31F42EC729A7FAB99A5D6DDD34FEC9F2757B8ED1A7D7D3FF002479FAB12EEFD03EAEDDE9AB41BAC5DA27BA99A3187796F7EA663F752D42FF00065713FF001D7974B3D0A71367BE9F6C391DF761C1F096ACEC5389BFC3ED83BEEC1E12D59D8A7137F87DB077DD83C25AB3B14E26FF000FB60EFBB0784B567629C4DFE1F6C1DF760F096ACEC5389BFC3ED83BEEC1E12D59D8A7137F87DB077DD83C25AB3B14E26FF0FB60EFBB0784B567629C4DFE1F6C1DF760F096ACEC5389BFC3ED83BEEC1E12D59D8A7137F87DB077DD83C25AB3B14E26FF000FB60EFBB0784B569A7A15E28A6A8AA9AA22A89CC4C4C724EFAB0B1C27AC8F3866CE8CF4BC47B7ECF1B7F107E92BB31116EEE63E9435ED75566BAF9ED7CDBC6CF6F5766CF67A9F3C7CD8B7C29FFBFED1F756EE760F86A6ABC69F1DBFBB0A36368803B4E13DAAEEF5C45A3DBACC4CD772E44F779239CBE1A9BB16ADCD72E66834D56A6FD36E9F9B7376ED35BD1E86CE9AD5114516E888888FB9E7D5D53555332F6DB36E2DD114C7C9F4317D00000604F09CDFBAFA8D1ECBA7B98EA666FD39EFCE30D9B62D3E226E4FD9E7DC63ADCD54D8A67A756116C8D0C0000000000000000000011292B0845144490B0ACA089192B22C224650A8B0A4F7C0AA6AE33F4BC93DCC6595A9C793687C18B759D6702C682AAFAD3A4AA63EECCCB4FDDEDF2DEE6F57A7F0DDFE7D2F2FA32CBA96C4035AFC2C374AB51BD6DDB6D35FD1D3C5535531E79C366D8EDE299ABD5A2F155FCD74D1E8C376B316A7ED6C4D1EAF394C08B408B523195A15168113024AC21024A4C098EE5122600C0180300600C0180300600C0180300600C0180300600C0180300619DBC153EAF7CFDEB7F8B59E20FE1F76FF00C13D2EFD99CDADB7D000000000000000000000000000000000000000000000000000000000000000000000000000000000601F0A7FEFFB47DD5FE0DA360F86A79EF1A7C76FEEC28D89A2E00C32FF00833EC31ABDF751BD5DA71E271116E663BFAD0E837CD472DB8B71F36E9C1FA28B97A6FCFF0016C53547A400000E3D45C8B3A7B976A9888A299AA73F642D3199C31AEAE5A665A71D20EF557107176BB7399CC575F563F8726FFA3B1D859A6878BEEBABFD5EAABBBEAE85CA75B80300600C0180300600C0180300600C01803006113DC2A130224201559161122AB22AB522C2B232564545DCCDA8FB05A7CA5993C13F74AB4FBD6E3B6D55FD1D445334D33E78CB5DDF2DE698ABD1BC70ADFC57551EAD946B2DE9154E29999F24641A71D3AEE53B9F499B8D7139B56E69A688FE0DD36BB7C9621E5FC417BB4D5D4F21FF00EBA61DA35CF9C900B08BC0C6531DE24AD0B944C194949945A0CA48644E4C864C864C864C864C864C864C864C864C864C864C864C864C864C864C864C864C864C864C864C864C864C8CEFE0A7F57BE7EF5BFC5AD7107F0FBB7EE09E977ECCE6D6DBE80000000000000000000000000000000000000000000000000000000000000000000000000000000030078547F7FDA3EEAFF06CFB07C353CFB8D3E3B7F7614CB62CB454D31355514C77D538832B1199C36CFA16D8FE64E06D1DBBB6FABA9BB1355C9F3F3E4D1F74BFDB6A2663A3D7B87B47FA6D153131E73D5ED9D73BC00001E1BA6DDF6365E06D5CDBB9D5D4DE88A6DC79F9F3765B5D8ED6FC67A43A1E22D67E9B455627CE7A353A6A99AA6A9EF99CCB777914CE64C990C990C990C990C990C990C990C990C990C990C990C990C990C990C990C99106424C90A99544995844995567BD161122C283256453FF00D75407CE1EBFA0ADCA76CE9336EAE6716AE4D54D71FC1D5EE96F9EC4B63E1FBDD9EAE96E3D339A6263CB19696F5070EE1769B3A1BF76B9C5345BAA667F832A633310C2E4F2D3332D15DFB593B8EFFACD5CCE7AF767D996FBA7A39288878FEBAEF6976AA9C55F2AB0E4BAFA7A1482D022D03194C092B477089112422C200000000000000000000000000000000000CEFE0A7F57BDFEF5BFC5ADF107F0FBB7EE09E977ECCE8D6DBE80000000000000000000000000000000000000000000000000000000000000000000000000000000030078547F7FDA3EEAFF0006CFB07C353CFB8D3E3B7F76136C2D15E8BA38D9278838C743B6CC669AEBEB553E6C737175B7FB1B1556ECB69D27EAF5745A6E358B716AC516A394514C531FC21A14CE672F67A63962217464000035CBC25F7E8D6F1058D9ADD588D144CD711E59AA1B5EC76392DCDC9F9BCDB8BF5BDA5F8B11FC5885DEB4D000000000000000000000000000549540A89EE1559161122C2B23256A14A39D580ABA39761D64EDDBFE8F57138EA5D8F665C6D451CF44C3B0D0DDECEED3537AB6FBB4DED0D8BB44E69AEDD3313FC1A155189987B05B9E6A6261D074A3ADF9BF81B72D5671D5B78CFDFC9F7D253CF7A9871372B9D9E9AAA9A516A3AF7AA98F2D532DEE88C43C86F55E732E69E72CDF15A15130315A045A04958423BC62B428944000000000000000000000000000000000019DFC14FEAF7BFDEB7F8B5BE20FE1F76FDC13D2EFD99D1ADB7D000000000000000000000000000000000000000000000000000000000000000000000000000000000600F0A8FEFF00B47DD5FE0D9F60F86A79F71A7C76FEEC26D85A2B39F8316C39AF59BD6A2DF7622C55EDCB5CDF6FF4B71F76F9C1DA3CCD57EA8FF0CF0D69BF80000F9B74D55AD16DF7F557AB8A28B744CCCCFDCCEDD135D5110F95EB916ADCD757C9A61C55BA5EDE788357B8DF999AEEDC9F2F9239437FD3DA8B56E28878A6BB5156A2FD572AF9BAC7D9C400000000000000000000000000044AAAB3DE80325645856455645448C958E528AE1BB1D4BD4CCF92A89615C661F6B3579C4B75FA2ED6FCE1C0DB6EAB39EB5BC67EEE4D13574F25EAA1EBDB6DCED34D4D4F2FE129AF9D3746BABD3D3562ABF34C7F0CC395B551CDA889F4703886E72E8EA8F56A8E9794C4CB738796DDF3723260BC0C653022E226062B092981130A4A5100000000000000000000000000000000000677F053FABDEFF7ADFE2D6F883F87DDBF704F4BBF66746B6DF400000000000115CF5699ABCD19126710C49C41D35E9769DE2FEDD56D355C9B3389ABE531977B6765AAED115F37569FAAE2DA34F766DCD19C7FDBE0EDF347EA5AFE2FE4FA770D5EE7C3C696FE9FE4EDF347EA5AFE2FE4770D5EE3C696FE9FE4EDF347EA5AFE2FE4770D5EE3C696FE9FE4EDF347EA5AFE2FE4770D5EE3C696FE9FE4EDF347EA5AFE2FE4770D5EE3C696FE9FE4EDF347EA5AFE2FE4770D5EE3C696FE9FE4EDF347EA5AFE2FE4770D5EE3C696FE9FE4EDF347EA5AFE2FE4770D5EE3C696FE9FE4EDF347EA5AFE2FE4770D5EE3C696FE9FE4EDF347EA5AFE2FE4770D5EE3C696FE9FE4EDF347EA5AFE2FE4770D5EE3C696FE9FE4EDF347EA5AFE2FE4770D5EE3C696FE9FE4EDF347EA5AFE2FE4770D5EE3C696FE9FE4EDF347EA5AFE2FE4770D5EE3C696FE9FE4EDF347EA5AFE2FE4770D5EE3C696FE9FE4EDF347EA5AFE2FE4770D5EE3C696FE9FE4EDF347EA5AFE2FE4770D5EE3C696FE9FE4EDF347EA5AFE2FE4770D5EE3C696FE9FE4EDF347EA5AFE2FE4770D5EE3C696FE9FE4EDF347EA5AFE2FE4770D5EE3C696FE9FE4EDF347EA5AFE2FE4770D5EE3C696FE9FE4EDF347EA5AFE2FE4770D5EE3C696FE9FE4EDF347EA5AFE2FE4770D5EE3C696FE9FE4EDF347EA5AFE2FE4770D5EE3C696FE9FE4EDF347EA5AFE2FE4770D5EE3C696FE9FE4EDF347EA5AFE2FE4770D5EE3C696FE9FE4EDF347EA5AFE2FE4770D5EE3C696FE9FE4EDF347EA5AFE2FE4770D5EE3C696FE9FE4EDF347EA5AFE2FE4770D5EE3C696FE9FE4EDF347EA5AFE2FE4770D5EE3C696FE9FE4EDF347EA5AFE2FE4770D5EE3C696FE9FE4EDF347EA5AFE2FE4770D5EE3C696FE9FE4EDF347EA5AFE2FE477055EE3C696FE9FE5EDBA30E3DB3C6F4EB66D68A74DE2B34C4E6ACE72EBB5FA09D263339CBBCD9B7AA773E6C538E57B575EEF00000000000000600F0A8FEFFB47DD5FE0D9F60F86A79F71A7C76FEEC2B6A89B9768B71199AAA8A7DB2D866711968D4C734C43713A32D93FE9FE0DD0EDF34C4574D1D6AA7CF9E6D0F5D7FB6BF554F66D9F49FA4D2516E7ABD2B86ED00000635F084DF636BE0BB9A1A2BEA5FD672A2627C913CDDBECD63B4BFCDF286B1C53AC8B1A49B71D6A6AF77CE65B8BCAC000000000000000000000000000044AAC225040B0AC8A8192922A24585064E3D5739998632CEDF936BBC1AF5F3A9E8D749A7AAACD5626A8FE199699BAD1CBA899F57A970F5CE6D1D31E8F35E169ACF91D9B6CD2E7EBEAAB97DD872764A335CCB81C557396D534FAB5E2C447C9CCF99B543CEEB9F35A193195E0632B408B08989E63158C24A60130A929CA6130180300600C0180300600C0180300600C0180300600C0180300600C018030060677F053FABDEFF7ADFE2D6F883AD1F76FFC13D2EFD99D1ADB7C00000000000056F7D557FBB2B1D52AE92D37E91F1FF5A6E1FBEDF745FF0082978BEEDFFB75FF00979E72B0EB4300600C0180300600C0180300600C0180300600C0180300600C0180300600C0180300600C0180300600C0033BF829FD5EF7FBD6FF0016B7C41D68FBB7FE09E977ECCE8D6DBE00000000000000D7CF0A4BF6AE6E9B5DAA2B89AEDC55D68F3368D86998A2A979E719D74CDCA223AC65E27A1CD8FE7CE38D1D9B9475B4F44CD57271DD88CC3B1DCAFF0063A7998EAE8B60D1FEAB594D331E4DB8A298A28A698EE88C43469F37AFC462309140009E40D62F089DFA773E319DB69AFAD674318A6627966639B71D9B4FD9D8E7F9CBCB78AF5B37B57D9C74A58C5DBE1AB0600C0180300600C0180300600C0180300600C0180300600C064C1844AAC225150608566798A8192B22AB22C29232856FC47C9C4F9D8CB2A27CDB0FE097ACF96D9B73D2E7EA2AA797DF96ABBDD18AE25E89C2B739AD554FA3CF785A6AFE5B7CDAB4D9FA9A6BE5F7E1C9D8E9C5354B85C575E6BA69F4619B538A261B1348ABAACAC657818CA6045A3B95130424AD1DC22525252C91209100000000000000000000000000000000019DFC14FEAF7CFDEB7F8B59E20EB437FE09E977ECCE8D6DBE00000000000022B8EB5134F9E3024C66188F883A14D26EDBC5FDC6ADDAAB737A7334FC9E70EF6CEF755AA228E5E8D4355C2746A2ECDCE7C65F07607A3F5D57F0BF37D7BFEAF6B8FE0BA3EA7E0EC0F47EBAAFE17E677FD5ED3C1747D4FC1D81E8FD755FC2FCCEFF00ABDA782E8FA9F83B03D1FAEABF85F99DFF0057B4F05D1F53F07607A3F5D57F0BF33BFEAF69E0BA3EA7E0EC0F47EBAAFE17E677FD5ED3C1747D4FC1D81E8FD755FC2FCCEFFABDA782E8FA9F83B03D1FAEABF85F99DFF57B4F05D1F53F07607A3F5D57F0BF33BFEAF69E0BA3EA7E0EC0F47EBAAFE17E677FD5ED3C1747D4FC1D81E8FD755FC2FCCEFF00ABDA782E8FA9F83B03D1FAEABF85F99DFF0057B4F05D1F53F07607A3F5D57F0BF33BFEAF69E0BA3EA7E0EC0F47EBAAFE17E677FD5ED3C1747D4FC1D81E8FD755FC2FCCEFFABDA782E8FA9F83B03D1FAEABF85F99DFF57B4F05D1F53F07607A3F5D57F0BF33BFEAF69E0BA3EA7E0EC0F47EBAAFE17E677FD5ED3C1747D4FC1D81E8FD755FC2FCCEFF00ABDA782E8FA9F83B03D1FAEABF85F99DFF0057B4F05D1F53F07607A3F5D57F0BF33BFEAF69E0BA3EA7E0EC0F47EBAAFE17E677FD5ED3C1747D4FC1D81E8FD755FC2FCCEFFABDA782E8FA9F83B03D1FAEABF85F99DFF57B4F05D1F53F07607A3F5D57F0BF33BFEAF69E0BA3EA7E0EC0F47EBAAFE17E677FD5ED3C1747D4FC1D81E8FD755FC2FCCEFF00ABDA782E8FA9F83B03D1FAEABF85F99DFF0057B4F05D1F53F07607A3F5D57F0BF33BFEAF69E0BA3EA7E0EC0F47EBAAFE17E677FD5ED3C1747D4FC1D81E8FD755FC2FCCEFFABDA782E8FA9F83B03D1FAEABF85F99DFF57B4F05D1F53F07607A3F5D57F0BF33BFEAF69E0BA3EA7E1EDFA30E01B3C114EB62D6B6753E3534CCE69C630EBB5FAF9D5E3318C3BCD9B66A76CE6C559E67B575CEF00000000000015BB5C516EAAE7BA98999588CCE126711969FF4ABBE7CFF00C6DAED6D154CD9EB75688CF28C726F7B7D8EC6C534CF578E6F7ACFD5EB2BAE3A32E78326C33A6D9F53BD5DA33E353116A663BB19CBA2DF751CD5C5B8F936FE0FD1725AAAFD5F3E8CCCE81BA80000EBB89B72B3B46C7AAD7DF9C516ADCFB7C8FB58B5376E4530E36B3514E9ECD572AF934BF76D65DD7EE7A8D5DFAE6BAEE5C99CCF9B3C9E816E88A298A61E27A8BB55DB935D5F37CAFA3E2000000000000000000000000000815008630B089EE5556495844F70AACA2A245850650ADD9CD1108CA9EACCDE097ABF91DF375D367EBA9A397DD96BBBE539A6996EFC295E2BAA9F5747E133A9F95E90EE69F3F554C72FBE21C8D9A9C59CB87C4D5E7538F4635A6314C4F9DDDB5399CCAF024AD03194C1092BAA2608495A042118A59098EF09488000000000000000000000000000000000CEFE0A7F57BE7EF5BFC5ACF1075A1BFF0004F4BBF66746B6DF00000000000000000000000000000000000000000000000000000000000000000000000000000000792E96F7CF9878235DABB75C45E9A7AB44679CE6712E76DD63B6BF4D33D1D3EF9ABFD2E8EAAE3AB5234966E6B770B76A8A66BAEF5D8E5F7CB79AA628A732F21A299BB72223E6DCCE0CDA2D6C7C35A3DB6CFEADAB71ED9E72D03557A6F5D9AE5ED3B7E9634BA7A6D53F2770E3B9A0000312784AEFDE23C356B66A2AE7AE99CE3BF14CC3BCD8F4FCF766E7A350E2ED6765A78B31FCBFFE35BDB73CCC000000000000000000000000000044F78B08044B109564AC92B0815494958448B0AC8CA14AA334CCF98589C4B2578336A7E4BA43B7A7CFD6D33CBEE89749BCD39B396D9C335E3538F574FD3D6A3C67A57DD6BCE698EA447BB0FB6D54E34F4B8BC435F36B2B978E8FD4A61DAB5C9EAB477892B47709298212571131DCB0C6562023BD218A5909809488000000000000000000000000000000000CEFE0A7F57BE7EF5BFC5ACF1075A1BFF04F4BBF66746B6DF000000000000000000000000000000000000000000000000000000000000000000000000000000006BF784E6FD17F70D26CB62E4C7C8666FD39EFCF7368D8B4F8A66E4FCDE79C61ADE6B94D8A67A75798E80B629DDB8DECEAABA3AFA7D2666E463CF1C9CCDDEFF6762623ACBABE18D1F6FAC8AA63CA96D44444444477434B7AB800008AA629A66A9EE88CC84F93547A73DF6779E39D4D16EE75F4DA7C536BD9CDBB6D363B2B119EB2F24E24D67EA3595444F9474783768D7C0000000000000000000000000000448B08044F7B1905964ACF712421192924AC227B858567BC58567F52A8163ABD8F40BA8F16E95F6AAF38A67AF13EECBAADD69CE9EA6C7C3D5F2EB289759D28DEF18E3EDC2F673D69A7F943EBA08C598871F78AB9B5354BA0A7BA1D83A595E0632B08B42A4AC8898EE5632B04903149913064949940C8190320640C8190320640C8190320640C8190320640C8190320640C81919DFC14FEAF7CFDEB7F8B5AE20EB437FE09E977ECCE8D6DBE00000000000000F33BC71E70B6D3B8DCDBF5FB9D167536B1D7A2699E4E65BD05FBB4C554D3E4EAEFEF3A3D3DC9B772BC4C3E4ED3782FD7147B92CFBB353ED7C7C41B7FD43B4DE0BF5C51EE49DD9A9F69E20DBFEA1DA6F05FAE28F724EECD4FB4F106DFF50ED3782FD7147B927766A7DA78836FFA8769BC17EB8A3DC93BB353ED3C41B7FD43B4DE0BF5C51EE49DD9A9F69E20DBFEA1DA6F05FAE28F724EECD4FB4F106DFF0050ED3782FD7147B927766A7DA78836FF00A8769BC17EB8A3DC93BB353ED3C41B7FD43B4DE0BF5C51EE49DD9A9F69E20DBFEA1DA6F05FAE28F724EECD4FB4F106DFF50ED3782FD7147B927766A7DA78836FFA8769BC17EB8A3DC93BB353ED3C41B7FD43B4DE0BF5C51EE49DD9A9F69E20DBFEA1DA6F05FAE28F724EECD4FB4F106DFF0050ED3782FD7147B927766A7DA78836FF00A8769BC17EB8A3DC93BB353ED3C41B7FD43B4DE0BF5C51EE49DD9A9F69E20DBFEA1DA6F05FAE28F724EECD4FB4F106DFF50ED3782FD7147B927766A7DA78836FFA8769BC17EB8A3DC93BB353ED3C41B7FD43B4DE0BF5C51EE49DD9A9F69E20DBFEA1DA6F05FAE28F724EECD4FB4F106DFF0050ED3782FD7147B927766A7DA78836FF00A8769BC17EB8A3DC93BB353ED3C41B7FD43B4DE0BF5C51EE49DD9A9F69E20DBFEA1DA6F05FAE28F724EECD4FB4F106DFF50ED3782FD7147B927766A7DA78836FFA8769BC17EB8A3DC93BB353ED3C41B7FD43B4DE0BF5C51EE49DD9A9F69E20DBFEA1DA6F05FAE28F724EECD4FB4F106DFF0050ED3782FD7147B927766A7DA78836FF00A8769BC17EB8A3DC93BB353ED3C41B7FD476BC3BC5BB0F105DB96B69D753A8AEDFEB4444C61F1BDA4BB62335C61CBD26E7A6D5CCC59AB38778E339E000000000038B577A9D3E96EDEAEA8A69A289AA667EC8654C734C430AEA8A299AA7E4D34E3ADE2BDFB8AB5DB9D7339B95E23F8726FF00A4B3166CC50F16DCB553AAD4D5767E6CF9E0E1B0C6DDC2556EB553D5B9AF9CCE7BF112D637BD47697B93D1E83C27A3EC74BDAFB9951D2B6B00001D171EEF346C1C29AEDCEBEEB74623EF9E4E4E92CF6D7A9A1C0DCF551A5D2D7767E4D35D4DDAAFEA6EDEAE66A9AEB9AB33F6CB7FA622230F16B95735532E35CB00C8190320640C8190320640C8190320640C8190320640C819032224CAC20C88900650ACF70421192B2AB0AA2AB22C2957748CA1DFF45D7BC5F8FB6FBD9C7566AFE52EBF5F19B330EEB67AB97534CBAFE2EBBF2FC4DAABBE798FE4FA692316E1F0DC6AE6BD32F86972DD64AD0424ACAC656A4495845A06290923BC62904C09290000000000000000000000000000000000677F052FABDF3F7ADFE2D6F883F837FE09E977ECCE8D6DBE00000000000000D49E9C33DA7EEBCE7BE9FE4DE36BFF00D5A5E43C47FF00D42E3C573F3CFB5D83A3C9CFCF3ED0C9CFCF3ED0C9CFCF3ED0C9CFCF3ED0C9CFCF3ED0C9CFCF3ED0C9CFCF3ED0C9CFCF3ED0C9CFCF3ED0C9CFCF3ED0C9CFCF3ED0C9CFCF3ED0C9CFCF3ED0C9CFCF3ED0C9CFCF3ED0C9CFCF3ED0C9CFCF3ED0C9CFCF3ED0C9CFCF3ED0C9CFCF3ED0C9CFCF3ED0C9CFCF3ED0C9CFCF3ED0C9CFCF3ED0C9CFCF3ED0C9CFCF3ED0C9CFCF3ED0C9CFCF3ED0C9CFCF3ED0C9CFCF3ED0C9CFCF3ED0C9CFCF3ED0CB32782F7FDE771E73DD4BA0DF7E0A5BAF06FF00E5ADB0ED59E8A00000000003C074EDBEC6CFC0FA9B76EE75353A88EADAF6F3767B4D8ED6FC4CF486BDC49ACFD3E8E6227CE7A358761D05EDD779D368ACC4D572EDC89C7F1E6DC6F5C8B744D53F279769ACD57EF4514F596E86C5A1B3B6ED3A6D158A7AB45BB7118FB71CDE7F76E4DCAE6A97B5E9ACD366D53453F27DAF9BEE0000309784EEFD36743A4D92C5CCFCBCCCDEA627BB1DCD8762B19AA6E4FC9A3F186B7968A6C533D7AB00B6779E0000000000000000000000000000002242102A27BC019422415192B50B0A8B0ACA4B2856A161F7708DDF90E26D2DDF34CFF27135719B72ECF6EAB96F44BE3DCEE7CAEE976BCE7387D2C47ED87CB5739AE6548CC4BEF8705685495E063298116811313CC45A1512886444C4F251393060C983064C183260C193060C983064C183260C193060C983064C183260C193060C983064C183260C193060C983064C183260C193060C983064C18677F052FABDF3F7ADFE2D6B883F87DDBF70574BBF66756B6DF000000000000006BEF4A1D19714EFBC71AFDD341A5A6BD35E9A7A954D7119C4368D06E762CD8A68AA7CE1E79BCEC1ACD56B2BBB6E9F2979AEC6F8D3D0E8F890E5F7C69BD5D6785B5FED3B1BE34F43A3E241DF1A6F53C2DAFF0069D8DF1A7A1D1F120EF8D37A9E16D7FB4EC6F8D3D0E8F89077C69BD4F0B6BFDA7637C69E8747C483BE34DEA785B5FED3B1BE34F43A3E241DF1A6F53C2DAFF69D8DF1A7A1D1F120EF8D37A9E16D7FB4EC6F8D3D0E8F89077C69BD4F0B6BFDA7637C69E8747C483BE34DEA785B5FED3B1BE34F43A3E241DF1A6F53C2DAFF0069D8DF1A7A1D1F120EF8D37A9E16D7FB4EC6F8D3D0E8F89077C69BD4F0B6BFDA7637C69E8747C483BE34DEA785B5FED3B1BE34F43A3E241DF1A6F53C2DAFF69D8DF1A7A1D1F120EF8D37A9E16D7FB4EC6F8D3D0E8F89077C69BD4F0B6BFDA7637C69E8747C483BE34DEA785B5FED3B1BE34F43A3E241DF1A6F53C2DAFF0069D8DF1A7A1D1F120EF8D37A9E16D7FB4EC6F8D3D0E8F89077C69BD4F0B6BFDA7637C69E8747C483BE34DEA785B5FED3B1BE34F43A3E241DF1A6F53C2DAFF69D8DF1A7A1D1F120EF8D37A9E16D7FB4EC6F8D3D0E8F89077C69BD4F0B6BFDA7637C69E8747C483BE34DEA785B5FED3B1BE34F43A3E241DF1A6F53C2DAFF0069D8DF1A7A1D1F120EF8D37A9E16D7FB4EC6F8D3D0E8F89077C69BD4F0B6BFDA7637C69E8747C483BE34DEA785B5FED3B1BE34F43A3E241DF1A6F53C2DAFF69D8DF1A7A1D1F120EF8D37A9E16D7FB4EC6F8D3D0E8F89077C69BD4F0B6BFDA7637C69E8747C483BE34DEA785B5FED647E83381B7EE16DCB597B76B116E8BB11D5C55139753BAEBAD6A2988A25B2F0E6D1A9D0DCAAABD18CB303A26E2000000000035AFC2537EF1FE28B5B45157D1D0C73C79EA86DDB269F92D4DCF5799F16EB3B5D4C59F6A9E0DDB0CEE3C575EED5539A3411E5EECD506F77F92CF27AA70968BB5D4F6DED6CBB517A680000ADCAA28B75573DD4C4CCAC46652671196A0F4B3BE7CFDC6FAED5DBAE66C45514DB8F246394B7ADBAC76362299EAF1DDEF59FABD6575C74793CB9D875183260C193060C983064C183260C193060C983064C183260C193060C983064C183260C193060C983064C183260C193060C983064C1844CF2046500544AAAB33CD15122AB22A2458524650ACE66530ABED973E4B74B55E718CBE17E3F6CB9DA49C5712F9A6AEBDFAAAF3B2B5D185F9CD4E69EF7D9C458495E063298EF1168EE12531DE24AD022549118A63B96014000000000000000000000000000000000678F052FABDF3F7ADFE2D67883F87DDBF70574BBF66756B6DF000000000000000000000000000000000000000000000000000000000000000000000000000007C7BD6B6CEDFB5EA3597EB8A28B744CE7F83E96A89AEB8A61F1D45DA6CDB9AEAF934BB88B70BFBBEF9A9D75E99AAE5DB931FF003C9E8166DC5AB714C3C53557AAD45EAABABACB66FA05D86368E07D3DFB96FA9A9D57D2B918FB79350DDEFF006B7E623A43D3F86B47FA7D1C5531E753213AA6C400003CA74AFBE7CC1C13AED6D15C45EEAF5688CF39CF27376FB1DB5FA699753BDEAFF4BA3AEB8EAD3FB954D772AAE7BEAAA667F8B7C88C461E3B54E672AAB100000000000000000000000000000027B9244202B2844A0ACF78B089EE16159EF15122C2832857CA2B862AEA5FA6AF33E377A3976271538F4D39E6CA8E8C6EF57D50FA38D2B092BC0C653022D1DC24A63BC495A165127C89118A63B96014000000000000000000000000000000000678F052FABDF3F7ADFE2D67883F87DDBF70574BBF66756B6DF0000000000000000000000000000000000000000000000000000000000000000000000000000062EF08DDFA36DE10F9B29ABAB775D38A663BF113CDDCECB63B4BDCFE8D578AF591674BD97CEA6BE704ED1737DE28D16D96E266ABB7227D9CDB46AAF459B535CBCF76ED34EAB514DB8F9B73B45628D3692D58B74C534D14453111F7340AAA9AAA9997B4DBA228A6298F93998B300001803C2777EF95D5E8F65B17263E4B337E9CF7E7186CFB158C44DC979F7186B39ABA6C533D3AB08B6368C000000000000000000000000000000013DC9221017E4CA11240ACF7A2C227B8585645448B0A0CA159161F2EA671CDF3AFA3936BAA34D18E451D0BBD5F5D2FA38D2B092BC0C653022D1DC24A63BC495A165122488898EE580500000000000000000000000000000000019E3C14BEAF7CFDEB7F8B59E20FE1F76FDC15D2EFD99D5ADB7C000000000000014AEF5AA2715DDA299F34D510B8996335531D651E31A7FDBDAF7E0E59F439E9F53C634FFB7B5EFC1CB3E873D3EA78C69FF6F6BDF83967D0E7A7D4F18D3FEDED7BF072CFA1CF4FA9E31A7FDBDAF7E0E59F439E9F53C634FF00B7B5EFC1CB3E873D3EA78C69FF006F6BDF83967D0E7A7D4F18D3FEDED7BF072CFA1CF4FA9E31A7FDBDAF7E0E59F439E9F53C634FFB7B5EFC1CB3E873D3EA78C69FF6F6BDF83967D0E7A7D4F18D3FEDED7BF072CFA1CF4FA9E31A7FDBDAF7E0E59F439E9F53C634FF00B7B5EFC1CB3E873D3EA78C69FF006F6BDF83967D0E7A7D4F18D3FEDED7BF072CFA1CF4FA9E31A7FDBDAF7E0E59F439E9F53C634FFB7B5EFC1CB3E873D3EA78C69FF6F6BDF83967D0E7A7D4F18D3FEDED7BF072CFA1CF4FA9E31A7FDBDAF7E0E59F439E9F53C634FF00B7B5EFC1CB3E873D3EA78C69FF006F6BDF83967D0E7A7D4F18D3FEDED7BF072CFA1CF4FA9E31A7FDBDAF7E0E59F439E9F53C634FFB7B5EFC1CB3E873D3EA78C69FF6F6BDF83967D0E7A7D4F18D3FEDED7BF072CFA1CF4FA9E31A7FDBDAF7E0E59F439E9F53C634FF00B7B5EFC1CB3E873D3EA78C69FF006F6BDF83967D0E7A7D4F18D3FEDED7BF072CFA1CF4FA9E31A7FDBDAF7E0E59F439E9F54D176D5738A2ED154F9A2A8931304554CF495D19000000004CC44667BA01AB5E103BF4EEBC6D7747457D7D3E8F116E627966639B73D9EC767622A9EB2F2AE27D64DFD5CD113E54BD07831EC31A8DD357BD5FA31E2D88B3563BF39CB8BBEEA39688B71F3763C21A2E7BB55F9F9746C2B567A200000E3D55DA6C69AE5EAA62228A66A999FB21698CCE18D754534CCCB4D38FF79AB7FE2DD76E754E7E52BEAC7DD1C9BFE8ECF63662878BEE9AA9D56AAABB3F3742E53AF000000000000000000000000000000009EE491080AB08921559EF45844F70B0AC8A8916141942B50B0F935319E4F9D7D1C9B5D5CB34F52FD54F998DAF38657E3153969EE7D9C595C632BC0C653022D1DC24A63BC495A165128920898EE580500000000000000000000000000000000019E3C14BEAF7CFDEB7F8B59E20FE1F76FDC15D2EFD99D5ADB7C00000000000001AC9D3FEE3AED3F1F6A2DD8D55DB744534F2A6A988EE6E1B3DBA2AD3C4CC3CBF89EFDCA35D54532C79F3C6E9E9F7FDF976BD8DBF46BBFAABBEE93E78DD3D3EFF00BF27636FD0FD55DF749F3C6E9E9F7FDF93B1B7E87EAAEFBA4F9E374F4FBFEFC9D8DBF43F5577DD27CF1BA7A7DFF7E4EC6DFA1FAABBEE93E78DD3D3EFFBF27636FD0FD55DF749F3C6E9E9F7FDF93B1B7E87EAAEFBA4F9E374F4FBFEFC9D8DBF43F5577DD27CF1BA7A7DFF007E4EC6DFA1FAABBEE93E78DD3D3EFF00BF27636FD0FD55DF749F3C6E9E9F7FDF93B1B7E87EAAEFBA4F9E374F4FBFEFC9D8DBF43F5577DD27CF1BA7A7DFF7E4EC6DFA1FAABBEE93E78DD3D3EFFBF27636FD0FD55DF749F3C6E9E9F7FDF93B1B7E87EAAEFBA4F9E374F4FBFEFC9D8DBF43F5577DD27CF1BA7A7DFF007E4EC6DFA1FAABBEE93E78DD3D3EFF00BF27636FD0FD55DF749F3C6E9E9F7FDF93B1B7E87EAAEFBA4F9E374F4FBFEFC9D8DBF43F5577DD27CF1BA7A7DFF7E4EC6DFA1FAABBEE93E78DD3D3EFFBF27636FD0FD55DF749F3C6E9E9F7FDF93B1B7E87EAAEFBA4F9E374F4FBFEFC9D8DBF43F5577DD27CF1BA7A7DFF007E4EC6DFA1FAABBEE93E78DD3D3EFF00BF27636FD0FD55DF749F3C6E9E9F7FDF93B1B7E87EAAEFBA4F9E374F4FBFEFC9D8DBF43F5577DD27CF1BA7A7DFF7E4EC6DFA1FAABBEE93E78DD3D3EFFBF27636FD0FD55DF749F3C6E9E9F7FDF93B1B7E87EAAEFBA4F9E374F4FBFEFC9D8DBF43F5577DD27CF1BA7A7DFF007E4EC6DFA1FAABBEE964AF079DC35DA9E34A68BFAABB729C4F2AAA99F23A8DE6DD34D8F286CDC2D7AE57ACC55396CA3517A600000000EA78BF76B5B270EEB371BDFA96ADCFB67943EFA6B537AEC510E26BF534E9B4F55DABE4D31D6DFBBAEDC6EDEBB5CD772F5D9E73F6CF26FF0045314538878B5CAE6EDC9AA7ACB6CFA1FD8FE62E07D169AE5B8A6FD54CD57271CE73398691B95FEDAFCCC747ADEC5A4FD2E8E9A663CFE6F62E03B900001E0FA71DF6366E06D545BB9D5D4DF88A6DFB79BB2DAAC76B7E33D21D0711EB3F4FA3AA227CE7A353E666AAA6A9EF99CCB778792CCE50A8000000000000000000000000000000013DC9221005844AC2AB3DE8B089EE1615915122C2832852AEE19438A29EBDFA69F3BE377CA1CAB119A9F46E947C96E9768F3618D89CD30FA6AE315CC294CF2721C195E06298911718A6279061611312AC531209430657289C9943264326432643264326432643264326432643264326432643264326432643264326432643264326432643264678F051FABDF3F7ADFE2D6B883F87DDBFF0574BBF66756B6DEC00000000000006B278406DDAFD471F6A2E58D2DDB944D34F3A69998EE6E1B3DCA29D3C44CBCC389EC5CAF5D54D31963BF99F74F41BFEE4BB5EDA8F56BBFA5BDED93E67DD3D06FF00B9276D47A9FA5BDED93E67DD3D06FF00B9276D47A9FA5BDED93E67DD3D06FF00B9276D47A9FA5BDED93E67DD3D06FF00B9276D47A9FA5BDED93E67DD3D06FF00B9276D47A9FA5BDED93E67DD3D06FF00B9276D47A9FA5BDED93E67DD3D06FF00B9276D47A9FA5BDED93E67DD3D06FF00B9276D47A9FA5BDED93E67DD3D06FF00B9276D47A9FA5BDED93E67DD3D06FF00B9276D47A9FA5BDED93E67DD3D06FF00B9276D47A9FA5BDED93E67DD3D06FF00B9276D47A9FA5BDED93E67DD3D06FF00B9276D47A9FA5BDED93E67DD3D06FF00B9276D47A9FA5BDED93E67DD3D06FF00B9276D47A9FA5BDED93E67DD3D06FF00B9276D47A9FA5BDED93E67DD3D06FF00B9276D47A9FA5BDED93E67DD3D06FF00B9276D47A9FA5BDED93E67DD3D06FF00B9276D47A9FA5BDED93E67DD3D06FF00B9276D47A9FA5BDED93E67DD3D06FF00B9276D47A9FA5BDED93E67DD3D06FF00B9276D47A9FA5BDED93E67DD3D06FF00B9276D47A9FA5BDED93E67DD3D06FF00B9276D47A9FA5BDED93E67DD3D06FF00B9276D47A9FA5BDED93E67DD3D06FF00B9276D47A9FA5BDED93E67DD3D06FF00B9276D47A9FA5BDED93E67DD3D06FF00B9276D47A9FA5BDED93E67DD3D06FF00B9276D47A9FA5BDED93E67DD3D06FF00B9276D47A9FA5BDED93E67DD3D06FF00B9276D47A9FA5BDED93E67DD3D06FF00B9276D47A9FA5BDED964AF079DBF5DA6E35A6BBFA5BB6E9C4F3AA998F23A8DE6E53558C44B65E16B3728D666A8C3655A8BD30000000061BF09BDFE749B1E9F65B55E7C72666E444F744773BED8EC735C9B93F269BC5FACECECD3663F97561DE8BB64FF00A838D343A0AA9CDA9ABAD5CF9B1CDDFEBEFF006362AA9A66CDA4FD5EAE8B73D1B896A88B76A8B71DD4D3111FC1A1CCE672F64A631110B2280000D6EF097DFF00C7788ECECD455CB4399AE23CB35436CD8EC725A9B93F379AF176B3B5D44598FE2C47977B969E64C864C864C864C864C864C864C864C864C864C864C864C864C864C864C864C864C864C864C864C864C864C88C99511708995113208464ACCF21708052646489154AA790CA17DAE8F95DD2D51E7CB8F7E714CB9DA48CD710FAF8BAD7C8713EAAD79A63F930D24E6DC3EBB8D38BB30F829EE729D64AF0AC56811612568EE11610812568EF544A009208000000000000000000000000000000000CF3E0A3F57BE7EF5BFC5ADF107F0FBB7FE0AE977ECCEAD6DBD80000000000000A5766D5739AED5154F9E69895CCC319A699EB08F17D3FEC2D7B90734FA9C94FA1E2FA7FD85AF720E69F53929F43C5F4FF00B0B5EE41CD3EA7253E878BE9FF00616BDC839A7D4E4A7D0F17D3FEC2D7B90734FA9C94FA1E2FA7FD85AF720E69F53929F43C5F4FFB0B5EE41CD3EA7253E878BE9FF616BDC839A7D4E4A7D0F17D3FEC2D7B90734FA9C94FA1E2FA7FD85AF720E69F53929F43C5F4FF00B0B5EE41CD3EA7253E878BE9FF00616BDC839A7D4E4A7D0F17D3FEC2D7B90734FA9C94FA1E2FA7FD85AF720E69F53929F43C5F4FFB0B5EE41CD3EA7253E878BE9FF616BDC839A7D4E4A7D0F17D3FEC2D7B90734FA9C94FA1E2FA7FD85AF720E69F53929F43C5F4FF00B0B5EE41CD3EA7253E878BE9FF00616BDC839A7D4E4A7D0F17D3FEC2D7B90734FA9C94FA1E2FA7FD85AF720E69F53929F43C5F4FFB0B5EE41CD3EA7253E878BE9FF616BDC839A7D4E4A7D0F17D3FEC2D7B90734FA9C94FA1E2FA7FD85AF720E69F53929F43C5F4FF00B0B5EE41CD3EA7253E878BE9FF00616BDC839A7D4E4A7D0F17D3FEC2D7B90734FA9C94FA1E2FA7FD85AF720E69F53929F43C5F4FFB0B5EE41CD3EA7253E878BE9FF616BDC839A7D4E4A7D0F17D3FEC2D7B90734FA9C94FA268B56A89CD16A8A67CF14C41999229A63A42E8C800000115D514D1354F7446648499C465A91D34EFBF3DF1D6B2E5BB9D6D35A98A6D467BB9736F1B658EC74F113D5E47C41ACFD4EB2A989F28E8C8BE0C1B0F52CEB37BD45BCF5F1162AF379DD56FB7FCE2DC7DDB1F07E8F1155FAA3FC339B5C6F400003E5DDB576B43B6DFD55EAE28A2DD13399FB99DBA26BAA2987CAFDDA6D5B9AEAF934B78A373BDBC6FDABDC2FCCCD772E4FB22793D02C5B8B56E29878AEB75156A2F5572AF9BAD7D5C40000000000000000000000000000000000580544F7A8ACA2C02AB3DC2AA2C2B22AB22A957723287DFC236BE5F89F4B6BCF33FC9C5D5CE2DCBB3DBA9CDD88761D28D9F17E3FDC2CF775669FE50F9682736625F7DE29E5D4D50E823B9D83A595E062B408B092B47708B084092B477889004904000000000000000000000000000000000679F051FABDF3F7ADFE2D6F883F87DDBFF000574BBF66756B6DEC000000000000000000000000000000000000000000000000000000000000000000000000079CE9277B8E1FE0ED76E5988AA8A3AB4FDF3C9CBD158EDEF5343ADDDB57FA4D25771A75115EAB5D88CD555EBBFCE5BE7C34FF878E79DCAFF00CB71FA3AD969E1FE10D0EDB11113451D69FBE79B42D6DEEDAF555BD936AD27E934B45A7A1715D880000C65E113BF46D7C1956DF455D5BFADE544C4F3C44F3771B358ED2FF3FCA1AC714EB22C693B3F9D4D5EEFE72DC1E5A080000000000000000000000000000000000B00A89EF05645805567B85545856455645527B8650EFF00A2EB3E31C7FB7D9EFEB4D5FCA5D7EBE716665DD6CF4F36A698767D3DE9FC5BA58DD6888FA33D498F761F2DAAACE9E97238828E5D6570F1B4F73B46BD2BD2AC656818AD1DC24AD022C211DE24AD1DE2240124100000000000000000000000000000000019E7C147EAF7CFDEB7F8B5BE20FE1F76FF00C15D2EFD99D5ADB7B00000000000000000000000000000000000000000000000000000000000000000000000001827C27F7EC53A2D934F73BF337E9F661B26C563ADC9FB343E30D67C36299FF2C7FD096C5F3DF1D6922E5BEB69ACCCD577ECE5C9D9EE97FB2D3CE3ACB5FE1ED1FEA7594E63CA3AB6D69A629A6298EE88C43487ADC4612280013CA3320D5DF088DFA774E33AB6FA6BEB59D0C628989E5998E6DC766B1D9D8E6F9CBCB78A75937F5736E3A52C66EDDAB800000000000000000000000000000000000B00A89EF0567BC58055645567B858564556A194295F723287B2E8134FE33D2C6D544C7D18EBCCFBB2EAF75AB1A7A9B0F0FD1CDACA21DC784DE9BE47A44B9A8C7D6D31FF00110F86CD566CE1CBE26A31A9CFAB1A51DCEEDAA4AF0AC25681256818CAC2272A8B02608494E4C21060498301830183018301830183018301830183018301830183018301830183018301830183018301830183018301830CF3E0A1F57BE7EF5BFC5AD71075A1BEF0574BBF66756B6DEC0000000000000619E9BF8F788385F79D3E9B6AD4536EDD713989A625DFED5A0B3A8A266B8699C43BC6A7457629B538863CED978D3D369F870ED7B9B4DE8D77C51AFF0071DB2F1A7A6D3F0E0EE6D37A1E28D7FB8ED978D3D369F87077369BD0F146BFDC76CBC69E9B4FC383B9B4DE878A35FEE3B65E34F4DA7E1C1DCDA6F43C51AFF71DB2F1A7A6D3F0E0EE6D37A1E28D7FB8ED978D3D369F87077369BD0F146BFDC76CBC69E9B4FC383B9B4DE878A35FEE3B65E34F4DA7E1C1DCDA6F43C51AFF0071DB2F1A7A6D3F0E0EE6D37A1E28D7FB8ED978D3D369F87077369BD0F146BFDC76CBC69E9B4FC383B9B4DE878A35FEE3B65E34F4DA7E1C1DCDA6F43C51AFF71DB2F1A7A6D3F0E0EE6D37A1E28D7FB8ED978D3D369F87077369BD0F146BFDC76CBC69E9B4FC383B9B4DE878A35FEE3B65E34F4DA7E1C1DCDA6F43C51AFF0071DB2F1A7A6D3F0E0EE6D37A1E28D7FB8ED978D3D369F87077369BD0F146BFDC76CBC69E9B4FC383B9B4DE878A35FEE3B65E34F4DA7E1C1DCDA6F43C51AFF71DB2F1A7A6D3F0E0EE6D37A1E28D7FB8ED978D3D369F87077369BD0F146BFDC76CBC69E9B4FC383B9B4DE878A35FEE3B65E34F4DA7E1C1DCDA6F43C51AFF0071DB2F1A7A6D3F0E0EE6D37A1E28D7FB8ED978D3D369F87077369BD0F146BFDC76CBC69E9B4FC383B9B4DE878A35FEE3B65E34F4DA7E1C1DCDA6F43C51AFF71DB2F1A7A6D3F0E0EE6D37A1E28D7FB8ED978D3D369F87077369BD0F146BFDC76CBC69E9B4FC383B9B4DE878A35FEE3B65E34F4DA7E1C1DCDA6F43C51AFF0073D4F451D267146FFC79A0DAB70D5535E9AF457D7A62888CE232E16E1B6D8B3A7AABA63CE1DAECBBF6B355ACA2D5CABCA5B00D61E8000002B7AB8B766BB93DD4D3354FF0588CCE12A9C44CB4DFA4CDEE78838CF5FB8C559A2AABAB4C79B1C9BEE86C763629A1E35BBEAFF57ABAEE3357832EC33A3E1EBFBD5CA79EB663A933E48A72D7F7CD473DC8B71F26EDC23A3ECEC4DE9FE5FF00F1981D0B7000001D6714EE76767D8757B85F9C516ADCFB67B9F6D3DA9BB7229871759A8A74F62AB957C9A5BBAEAEEEBB71D46AAFD735D772E4CE67EF7A05BA228A629878B5FB9376E4D557CDF333C3E580C180C180C180C180C180C180C180C180C180C180C180C180C180C180C180C180C180C180C180C180C180C180C1844980C981124AC205572084556458564650AC8B0A57DC8CE192FC1934DF2DD225BD463EAA99FF00989749BCD58B386D7C33467539F4779E16DA4F91DF36AD4E3EBA9AF9FDD87C363AB34D50E5F15518AE9ABD585A89E50D8A1A54B923BD584AF1DC314C772A2C8C568EE516108444AE5130644990320640C8190320640C8190320640C8190320640C8190320640C819032064679F050FABDF3F7ADFE2D6B883AD0DF782BA5DFB33AB5B6F6000000000000035BFC273FF00C8F49CA7BA7F936CD8BFF14BCDF8BFFF00629621E7E69F63BDCB50C1CFCD3EC3260E7E69F6193073F34FB0C9839F9A7D864C1CFCD3EC3260E7E69F6193073F34FB0C9839F9A7D864C1CFCD3EC3260E7E69F6193073F34FB0C9839F9A7D864C1CFCD3EC3260E7E69F6193073F34FB0C9839F9A7D864C1CFCD3EC3260E7E69F6193073F34FB0C9839F9A7D864C1CFCD3EC3260E7E69F6193073F34FB0C9839F9A7D864C1CFCD3EC3260E7E69F6193073F34FB0C9839F9A7D864C1CFCD3EC3260E7E69F6193073F34FB0C9839F9A7D864C3DD74099ED536AE53DD73FF00E65D6EEFFF00A953BEE1AFFEA36FEFFF00E9B68D21EB200003C5F4CDBEFCC5C0DACBD6EE757515C4536E33DF99E6EC36DB1DB5F889E8E977ED5FE9B4754C4F9CF46A76DFA7BDAFDCED69ED5135DCBD763947DB3CDBB57545144CCBC9AD5155DB914C7596E8F09ED76766E1FD26DD623145AB71ED9E72F3FD45D9BB726B97B4E8B4F4E9AC536E9F93B47C5CA00001883C2677F9D0F0E59D9A8AB9EBA67AD113DD14CBBDD8EC73DD9B93F26A1C5DACECEC4598FE5FFF001AE0DB32F360C8190320640C8190320640C8190320640C8190320640C8190320640C8190320644499106444A28AAACF70AAA0ACF72B244F722A93DE32871D73CA5259C334F824E93E5B7CDD7538FA9A68E7F7E5AEEF95629A61BAF0AD19AEAABD1E87C2DF47F2DB2ED9ABC7D455573FBF0E36CB562B9873B8A2DF35AA6AF46BA5AE74C36A879ED5D5CAAF9AF0AC530424AC24AD022C200918A60120000000000000000000000000000000000CF1E0A1F57BE7EF5BFC5AD6FFD686FBC17D2EFD99D9AE37B00000000000001D0F10F07F0FEFF00A8A6FEEBA0A751728FD599998C39367597ACC6289C381AADB34DABAB9AED399757D987057A9A8F7A5F6EF3D4FB9C5F0FE83E99D987057A9A8F7A4EF3D4FB8F0FE83E99D987057A9A8F7A4EF3D4FB8F0FE83E99D987057A9A8F7A4EF3D4FB8F0FE83E99D987057A9A8F7A4EF3D4FB8F0FE83E99D987057A9A8F7A4EF3D4FB8F0FE83E99D987057A9A8F7A4EF3D4FB8F0FE83E99D987057A9A8F7A4EF3D4FB8F0FE83E99D987057A9A8F7A4EF3D4FB8F0FE83E99D987057A9A8F7A4EF3D4FB8F0FE83E99D987057A9A8F7A4EF3D4FB8F0FE83E99D987057A9A8F7A4EF3D4FB8F0FE83E99D987057A9A8F7A4EF3D4FB8F0FE83E99D987057A9A8F7A4EF3D4FB8F0FE83E99D987057A9A8F7A4EF3D4FB8F0FE83E99D987057A9A8F7A4EF3D4FB8F0FE83E99D987057A9A8F7A4EF3D4FB8F0FE83E99D987057A9A8F7A4EF3D4FB8F0FE83E99D987057A9A8F7A4EF3D4FB8F0FE83E99D987057A9A8F7A4EF3D4FB8F0FE83E99D987057A9A8F7A4EF3D4FB8F0FE83E99D987057A9A8F7A4EF3D4FB8F0FE83E99D987057A9A8F7A4EF3D4FB8F0FE83E99D987057A9A8F7A4EF3D4FB8F0FE83E99D987057A9A8F7A4EF3D4FB8F0FE83E99D987057A9A8F7A4EF3D4FB8F0FE83E99D987057A9A8F7A4EF3D4FB8F0FE83E99D987057A9A8F7A4EF3D4FB8F0FE83E99D987057A9A8F7A4EF3D4FB8F0FE83E99D987057A9A8F7A4EF3D4FB8F0FE83E99D987057A9A8F7A4EF3D4FB8F0FE83E99D987057A9A8F7A4EF3D4FB8F0FE83E99D987057A9A8F7A4EF3D4FB8F0FE83E9BECD9780F85F67DCADEE3B7ED9459D4DACF52B8AA7967BD85DD7DFBB4F2575793EDA7D9F47A7B9172DD18987A670DD980000D76F09CDFE355BCE9764B35E3C56266EC44F7E63936AD8EC72D13727E6F3AE2FD6457769B11FC7ABA4F079D86775E35A35F5D1D7B1A2E75C4C72CCC727DF78BFD9D8E5F9CB85C2FA39BFAB8AE7A52DA48E518869CF5200001154C534CD53DD1199099C3533A71DF677AE3AD545BB9D7D358C536BD9CDBB6D763B2B119EB2F25E22D67EA7595627CA3A3C2BB274200000000000000000000000000000000000089040206402B22AA2C2B24AC2245511938AEF2A6525F4A7AB62FC12347F23B2EE7ABC7D7D54F3FBB2D577AAB35C43D0B85EDF2DAAAAF57A6F097D04EA7A34D5EA69A735589A67F8661C5DAABE5D44439DC416F9B4754FA3532C4FD186E74CF93CC2B8F373B27C968562B41092B4092981168EE1252098EE18CA63BC120000000000000000000000000000000000CF1E0A1F57BE7EF5BFC5AD6FF00D686FBC17D2EFD99D9AE37B00000000000000000000000000000000000000000000000000000000000000000000001C1B86A2DE93457B5176B8A29B744D5333F732A299AAA8887CEED716E89AA7E4D2EE31DDAEEFBC4BADDCAECCCD776E4C7B39437FD35A8B36A28878BEBF5356A75155CABE6D89F074D8636CE0CA771AE9EADFD773AE2639E2279356DE6FF00697B93E50F44E16D1C59D2769F3A993DD3B6800001D07483BD53B07096BB73AA623E4E8C47DF3C9C9D1D9EDAF450E06E9AA8D2E96ABBE8D33D45DAAF6A2EDEAE6666BAE6ACCFDB2DFA98C461E315D5CD54CA8AC400000000000000000000000000000000000113DE089EE0840C913DC10AC8A8916159256159155464E0BF3F4658D53E4FAD11E6DB3F068D04E9BA34D26A6AA7155F9AA7F8665A66EB5F36A261E9FC3F6F97474CFABD474A7A1F9C781772D2E33D6B79C7DDCDC6D255CB7A25CFDC6DF69A6AA9691D1F46E574F9AA98FF0096F7474792DE8C552E7A65F471E568918CAD024AD13C845862989094C08910C8616CAE10C980C980C980C980C980C980C980C980C980C980C980C980C980C980C980C980C980C980C980C980C980C9819E7C13FEAB7CFDEB7F8B5AE20EB47DDBEF05F4BBF66766B6DEC0000000000000000000000000000000000000000000000000000000000000000000000639F080DFA369E07BDA5B773A9A9D5FD1B739F34F376BB458ED2FC4CF486B9C4DAC8B1A39A227CEA6B3F0CEDB7F79DFB4BA0B199B976E44FF00CE65B75FB916ADCD52F34D258AB517A9B74F596EA6D1A3B5A0DB74FA4B1445145BA222223EE79FDCAE6BAA6A97B4D8B54DAB71453F27D4C1F50000183BC2837F9B5A4D1EC962E67E57337E989EEC630D8B62D3E666E4B47E2FD6629A6CD33D7AB00367C3CFD39301930193019301930193019301930193019301930193019301930193019301930193019301930193019301930193019302B945C0089151322C201599E4325645856645856A9194382BFA5728A7CF5447FCBE75F4722CC66A86EE7459A1F9BB8176DD2E31D5B79C7DFCDA26AEAE6BD32F5ADBADF67A6A697A0DC6D537F417ED574F5A9AEDD5131FC1F0A671312E5D711553312D10DFB473B77106B7475463A976AE5FC5BE69ABE7A225E45ADB5D9DDAA97052E543812B40C57818A60458629805A16512800956228000000000000000000000000000000033D7827FD56F9FBD6FF16B3C41FC3EEDF782FA5DFB33B35B6F600000000000003C6748FC7FA1E0BB9A4A35962AB93A9CF57138C61D868B4156AE27967A3A6DD779B7B74D315C672F23DBBEC9E8757BCE6F715DF5751E2FB1ED3B77D93D0EAF78EE2BBEA78BEC7B4EDDF64F43ABDE3B8AEFA9E2FB1ED3B77D93D0EAF78EE2BBEA78BEC7B4EDDF64F43ABDE3B8AEFA9E2FB1ED3B77D93D0EAF78EE2BBEA78BEC7B4EDDF64F43ABDE3B8AEFA9E2FB1ED3B77D93D0EAF78EE2BBEA78BEC7B4EDDF64F43ABDE3B8AEFA9E2FB1ED3B77D93D0EAF78EE2BBEA78BEC7B4EDDF64F43ABDE3B8AEFA9E2FB1ED3B77D93D0EAF78EE2BBEA78BEC7B4EDDF64F43ABDE3B8AEFA9E2FB1ED3B77D93D0EAF78EE2BBEA78BEC7B4EDDF64F43ABDE3B8AEFA9E2FB1ED3B77D93D0EAF78EE2BBEA78BEC7B4EDDF64F43ABDE3B8AEFA9E2FB1ED3B77D93D0EAF78EE2BBEA78BEC7B4EDDF64F43ABDE3B8AEFA9E2FB1ED3B77D93D0EAF78EE2BBEA78BEC7B4EDDF64F43ABDE3B8AEFA9E2FB1ED3B77D93D0EAF78EE2BBEA78BEC7B4EDDF64F43ABDE3B8AEFA9E2FB1ED3B77D93D0EAF78EE2BBEA78BEC7B4EDDF64F43ABDE3B8AEFA9E2FB1ED3B77D93D0EAF78EE2BBEA78BEC7B4EDDF64F43ABDE3B8AEFA9E2FB1ED3B77D93D0EAF78EE2BBEA78BEC7B4EDDF64F43ABDE3B8AEFA9E2FB1ED3B77D93D0EAF78EE2BBEA78BEC7B4EDDF64F43ABDE3B8AEFA9E2FB1ED3B77D93D0EAF78EE2BBEA78BEC7B4EDDF64F43ABDE3B8AEFA9E2FB1ED761C39D31ED3BCEF3A7DB2CE96AA6BBD3889EB3E77B67B96A89AE67A391A5E27B3A8BB16E29EACA34CE6989F3BA66D0000D63F091DFA772E2EA76AA6ACDBD07763BB35436FD92C767679FD5E65C57ACEDB55D97CA97D3E0CFB078F712DEDE6BA79686222999F2CD50C77CBFC96A2DFABE9C25A3ED75137A7F8B64DA93D24000056ED716EDD55CF7531332B1199C24CE232D3CE95F7CF9FF8DF5DADA2A99B3D6EAD119E518E4DEF6FB1D8D8A69978F6F5ABFD56AEBAE3A3CA39CEA40000000000000000000000000000000000004108C8044AC0ACA2A015919224552464AD44B2873EC3A39DC788345A3A633D7BB4F2FE2E2EA6BE4A265CFD15AED2ED34B7BF6EB54D8D058B5453D5A68B74C447F068754E6665EBB444534C4439AA8EB53313E58C3164D34E9DF6D9DAFA4EDC68A6316AE4D35513FC1B9ED7739EC43CCB7FB3D9EAEA78DA7B9DA35F95D582D0315A045A3B8494C7788B42A2404130B0922A00000000000000000000000000000000CF5E09FF0055BE7EF5BFC5ACF107F0FBB7DE0BE977ECCECD6DBD80000000000000C03E15FF00DEB64FBAB6CDC3FD2B683C67F15BFBB06B6368A000000000000000000000000000000000000000000000000F53D147FF009EEDBFBD3FC9C3DC3FF5EA76BB2FFEE51FE5B8D6FF00529FBA1A14BD8A3A2457C1C43B859DAF66D4EBB5157568B76E673F6F91F5B36E6E5714C38FAABD4D8B555CABA434AF7AD6DFDD378D46AEF5535DDBB7279FF1E4F40B5445BA229878BEA2ED57AECD757596D37419B0C6CBC0DA59BB6FA9A9BF1355DF6F269BBADFED6FCE3A43D4B87747FA7D1D3331E73D5EF5D63BE00001E47A5CDF3E60E07D76B2DD7117A69EAD119E739E52E76DD63B6BF14CF4751BDEAFF4BA3AAB8EAD3FAEA9AEE555CF7D554CCFF16F7118878FD5399CAAA80000000000000000000000000000000000004A4AC211451120ACF7A2A27B858564556455464A55DC8CE1ECBA08DB6774E93B6EA2A8CDAB735555CFF0757BA5CE4B12D8360B3DA6AE96E5D31D5A6223C918698F4D4835A3C2CF6AAB4FBDEDDB9D347D1D4455154C79E30D9365B99A669F4691C536715D35FAB0B5B9E4D8A1A554E58EE57CE56A4495A0495A1512226045840081252200000000000000000000000000000000CF5E09FF0055BE7EF5BFC5ADF107F06FBC17D2EFD99D9ADB7B000000000000018FFA59E8E678EAEE86E7CE93A2F158AA31F27D6EB65D9EDFB8FE922639739741BCEC9DE534CF3E31FF004F0DFD9EBFCCB3FEDFF3763E20FE8FCBA3F05FF77F1FECFECF5FE659FF006FF99E20FE8FC9E0BFEEFE3FD9FD9EBFCCB3FEDFF33C41FD1F93C17FDDFC7FB3FB3D7F9967FDBFE67883FA3F2782FF00BBF8FF0067F67AFF0032CFFB7FCCF107F47E4F05FF0077F1FECFECF5FE659FF6FF0099E20FE8FC9E0BFEEFE3FD9FD9EBFCCB3FEDFF0033C41FD1F93C17FDDFC7FB3FB3D7F9967FDBFE67883FA3F2782FFBBF8FF67F67AFF32CFF00B7FCCF107F47E4F05FF77F1FECFECF5FE659FF006FF99E20FE8FC9E0BFEEFE3FD9FD9EBFCCB3FEDFF33C41FD1F93C17FDDFC7FB3FB3D7F9967FDBFE67883FA3F2782FF00BBF8FF0067F67AFF0032CFFB7FCCF107F47E4F05FF0077F1FECFECF5FE659FF6FF0099E20FE8FC9E0BFEEFE3FD9FD9EBFCCB3FEDFF0033C41FD1F93C17FDDFC7FB3FB3D7F9967FDBFE67883FA3F2782FFBBF8FF67F67AFF32CFF00B7FCCF107F47E4F05FF77F1FECFECF5FE659FF006FF99E20FE8FC9E0BFEEFE3FD9FD9EBFCCB3FEDFF33C41FD1F93C17FDDFC7FB3FB3D7F9967FDBFE67883FA3F2782FF00BBF8FF0067F67AFF0032CFFB7FCCF107F47E4F05FF0077F1FECFECF5FE659FF6FF0099E20FE8FC9E0BFEEFE3FD9FD9EBFCCB3FEDFF0033C41FD1F93C17FDDFC7FB3FB3D7F9967FDBFE67883FA3F2782FFBBF8FF67F67AFF32CFF00B7FCCF107F47E4F05FF77F1FECFECF5FE659FF006FF99E20FE8FC9E0BFEEFE3FD9FD9EBFCCB3FEDFF33C41FD1F93C17FDDFC7FB3FB3D7F9967FDBFE67883FA3F2782FF00BBF8FF0067F67AFF0032CFFB7FCCF107F47E4F05FF0077F1FECFECF5FE659FF6FF0099E20FE8FC9E0BFEEFE3FD9FD9EBFCCB3FEDFF0033C41FD1F93C17FDDFC7FB3FB3D7F9967FDBFE67883FA3F2782FFBBF8FF67F67AFF32CFF00B7FCCF107F47E4F05FF77F1FEDDA70A74213B1F1069B75FF00A826F7C84E7A9F238CFF001CBE3A8DEBB6B734727572B47C29FA6BD4DDED338FFA664A6314C479A1D0B71848313784AEFF00F37F0AD1B453562BD7CF93BF14CC4BBBD92C73DDE7F46A7C59ACECB4D1663F9303747FB355BFF16E876CA6267E52BEB4FF000E6D93577BB1B335B43DB34B3AAD4D36E3E6DCED2DAA6C69ADD9A622228A229888FB21A0D5399CBD9A8A629A6221C88C800006BE784FEFF17B5FA3D92C5C98F91CCDFA73DF9C61B3EC56314CDC9F9BCFB8BF59CD5D36299E9D5849B0B4800000000000000000000000000000000000001122C0280AC8A815122AB28B0AD42C2B3DC2C38AE4F2497D29669F04CDAAAD46F7B8EE7551F474F14C5333E79CB5DDEAE6298A7D5BAF0B59CD7557E8D976B6DDC0623F0A2DAAAD67024EBE9A3AD3A4AA27EECCC3B5DA2E72DEE5F56BFC45679F4DCDE8D58B339A61B853D1E6B5C79B9A2593E4B65517818A626445A0494E444E430981120644C190C190C190C190C190C190C190C190C190C190C190C190C190C190C190C190C190C190C190C190C190C33DF827FD56F9FBD6FF0016B7C41FC3EEDF782FA5DFB33B35B6F40000000000000000000000000000000000000000000000000000000000000000000133111333DD00D50E9EF7E9DDF8E75162DDCEBE9B4B8A6DCFF0E6DD369B1D958899EB2F29E24D5FEA3593113E50F5DE0BFB0FCAEB359BDEA2DCC7C9622C558EFCE72E16FB7F14C5B876FC21A3E6AEABF5474E8D816B0DFC0000716AEED3634B76F5754534D144D5333F642D3199C31AEA8A699AA5A5FC7BBD57BFF166BB74AE67372BC7F08E4DFF0049662CD98A1E33B96AA755A9AAECFCDD4DDD35FB5A6B5A8AE898B7773D49F3E1F68AA26661C39B75534C5531E52E1CB2618321832183218321832183218321832183218321832183218321832183218321832183218321832183218321832183218054482322E1190448B0ACCC8A89154C8C95994570DE9C532C6AE8FAD11E6DA7F05DDAAAD1F0246BEAA3AB3ABAA67EFC4CB4FDDEE735EE5F47A570ED9E4D3737AB2E3AA6C003A0E90B6CF9E383F70D0757ADD7B5338FBB9BEFA6B9D9DD8A9C4D6DAED6C554346EAA6AB5A8BB6AA8989A2B9A663EE96F96E7319792DFA796A9872D2FA38D2BC2B15A91123195A012315A0130A89400000000000000000000000000000000019EBC13BEAB7CFDEB7F8B5BE20FE1F76F9C17D2EFD99DDADB7A00000000000000000000000000000000000000000000000000000000000000000001D271CEF16F61E16D6EE7766229B56F1FC6794391A5B337AEC510E16E3AA8D2E9AABB3F26986A6EDCD66BEBB95D535D77AEF7FDF2DFA988A69C7A3C6AAAA6E5733EADBFE89F62FF00A7F82743A1AE888BDD4EB573E59CF368DB85FEDAFD554747AEECBA4FD2E929A27ABD5B84ED40000780E9DF7E8D9B8175545AB9D4D4EA2229B5EDE6ECF6AB1DADF899E90E8388F57FA7D1D5113E73D1A9F6E99BB7E9A7BEAB95C47F1996E93E50F2988E6AB0C8FD2F6C71C3DC33C33B74D311729A2BAAA9F3E712EAB6EBFDBDDB95B64DEF49FA5D3D9B7F3C4B1B3B66B40000000000000000000000000000000000000225444A2AA089192A108A864AC8AA548CA1C54D355DD45AB54C4CCD75C5311F7CBE7727119726C53CD5443793A3DDB3E67E0FDBF41D5EAF52D44E3EFE6D0F5373B4BB353D6B456BB2B14D0EFDF072C056ED3D7B55D1FF00B5330B09319869274AFB4D7B27483B968A68EAD315F5A9FB73CDBB6DF77B4B312F2DDE2C763A9AA979DA7B9D83A595E158CAD031958495A0448C5300B42A4A5000000000000000000000000000000000067AF04EFAADF3F7ADFE2D6F883F87DDBE705F4BBF66776B6DE80000000000000000000000000000000000000000000000000000000000000000000614F09FDFE74FB669364B35E7C66666F444F763186C1B158E6AA6E4FC9A57176B392DD3669F9F5627E88B62F9FF008E343A4B944CD88AA6AB93E6C738777B85FEC6C5554756A9B2693F55ACA689E8DC1B74C516E9A23BA9888868B33997AFC46230B2280000D6AF098DFF00C7F89ECECD455CB4119AB1E7AA1B6EC96392D4DCF579B716EB3B5D44598FE2F2DD0D6C5F3EF1D68AC5DB73569A899AAECE3BB119873372BFD8D8998EAEAF61D27EA7594D331E4F77E155114EB366A63BA9A2A88FF875BB07C35BBEE318C556E1845B0B480000000000000000000000000000000000000112A42B28A80448C9516159161591942957723287A2E8A369AF7BE9076DD1451D6A66BEB55F6639BAFDC2EF676665DD6CF63B6D4D34B76ED53D4B5451FF00AD310D265EA511885914001AD1E163B257A6DEF43BCDBA3346A2262BAA3C93186C9B2DDCD334348E28D3E2BA6E47CD856DCE61B1434AAA1CB4B2612B4092B4770C53022C24A444A92B2200000000000000000000000000000000033D78277D56F9FBD6FF0016B7C41FC3EEDF382FA5DFB33BB5B6F40000000000000000000000000000000000000000000000000000000000000000008B954516EAAE7BA98999223293388CB4FF00A60DF7E7EE39D6EA6DD733A7A6A8A6DC67BB11896F5B758EC6C444F5790EF9ABFD56B2AAA3A329F82FEC13636FD66F77EDE7E5E622CD531DD8EF74DBEDFCD516E3E4DA784347CB4557AA8EBD19B9AF37600001F26F3ACB3B7ED9A8D5DFAE28A2DD13399FB99DBA26BAE2987C6FDDA6D5B9AEAF934AB89772BDBBEFBABDC2FCCCD772E4F3FB22793D02CDB8B56E29878BEAEFD57EF5572AF9B3BF8306C13A6D9F55BDDEA33E353116A663BB1DED6F7CBFCD5C5B8F937BE11D1CD16AABD57CFA3A6F0ADFEFFB3FDD5B91B07C35B87C65F1DBFBB0836169000000000000000000000000000000000000002AAB084102C2B22A27B85564650AD42C38AE4E218CB3A619ABC13B64AF53BDEBB79B94628D3C445154F96672D777ABB8A6286EBC2FA7CD755C9F9365DADB77000018D7C22B62F9E3A3ED55DB719BFA6C55472FB79BB1DB2F7677E33F374BBEE9FB6D2CCC7586A2D99F24F7C726E74CF93CC6E4625CD4B3CBE2B9962B41945A3BCCB1C2D0A808B026044800000000000000000000000000000000CF5E09DF55BE7EF5BFC5ADF1075A1BE705F4BBF66776B6DE8000000000000000000000000000000000000000000000000000000000000000001E5BA54DF7FE9FE0AD76BE8AA22E451D5A23CB39E4E6682C76D7E29757BCEAFF004BA4AAE47569ED9A2BD5EBA9A29A66AAAF5DEEFBE5BD4CF2D39790D31372BC7AB73B80B66A360E14D0ED96FBADD199FBE79B42D5DE9BD7AAAE5EC9B6E9634BA6A6D47C9DEB8CE700000C5DE11BBFC6D9C1B3B6D15F56F6BA714CC77E22632EE366B1DA5EE7F94357E29D6459D2F67F3A9ACBA1B17355ADB3A7B74CD75DCAE2311F6CB6EAEA8A6999979A5BA26BAE298F9B74B82B68B7B170C68B6DB58EADAB713FC679CB41D55E9BD766B97B3EDFA68D2E9E9B51F2616F0ADFEFFB3FDD5BBFD83E1A9A67197C76FEEC20D85A4000000000000000000000000000000000000224102AA048AACF7A6570AC9964A99552A32C9C37A7C91DF3C98553E4FB5B8CCB6EBC1D762F99FA3ED2DDB918BFA9CD55F2FB7934CDCEF7697E71F27A76C5A7EC74B133D65929D73BA00001F26F3A3B5AFDAF51A4BD4F5A8B96E6263F833A2A9A6A8987CEED115D134CB45B89B6DAF66E24D6EDD722626D5D9EFF0034B7AD35CED288A9E4FAFB1366ED54BE4A7B9C975D2B52AC5681178562981168006298048260494800000000000000000000000000000CF5E09DF57BE7EF5BFC5AD71075A3EEDF3833A5DFB33BB5C6F4000000000000000000000000000000000000000000000000000000000000000000C01E143BFF005F51A2D934F73F53337E9CF7E7186CDB158C44DC9685C5FACCD54D9A67A7578CE81F619DE78EF4D76E5BEBE974D9AAEC7F0E4E7EEB7FB2B1311D65D370E693F51ACA6663CA3AB6C6988A698A63BA2310D29EAD1E490000267119906AC7843EFD3BAF1B57A0A2BEBD8D172A2627966639B72D9EC767639BE72F2EE27D64DED5CD11D2970F401B0CEEFC73675572DF5F4DA4CCDC8C72CCC7265BBDFECEC4C475961C35A39BFAB8AA63CA1B5B11111111DD0D2DEA8D7CF0ADFEFF00B3FDD5B67D83E1A9A07197C76FEEC22D85A40000000000000000000000000000000002242102A2410048C9590448AA4A3256A155ABB91943EBE19DB6BDE789345B75B8999BB763BBCD0E36A6E76744D4EC741626F5DA696F4ECDA3B5A0DAF4FA4B34F568B76E2223F8345AEA9AAA9997AC5AA228A22987D6C1F40000006AAF851EC1F36F18DADDEDDAEADBD6C73988E598886D3B3DEE6B7CBE8D0B8974BC97BB488EAC5144F277AD4661785860B8C5685448C65680489291120402C200000000000000000000000000000CF5E09DF57BEFEF5BFC5AD71075A3EEDF3833A5DFB33BB5C6F4000000000000000000000000000000000000000000000000000000000000000038F53722CE9EE5DAA62228A66A9CFD90B4C6670C6BAB969999698F489BDD5C41C61AFDD266662BAFAB1FC3937DD1D9EC6CC50F1BDD3553AAD55573D59DBC19F60F10E16B9BC554E2AD7CC633DF8A665AE6F77F9EEC5BF46F5C27A3ECB4F37A7F932E3A46D800003AAE2CDD6CECBC3DACDC6FCE28B56E7DB3CA1F6D3DA9BB722887175BA8A74F62AB957C9A55B96AAEEB770BFAABD5CD75DCB93399FBF93D028A628A6221E317AE4DCAE6A9F9B64BC1AF60F9BB84AADDAAA7AB735F399CF7E29996A7BD5FE7BDC9E8F47E14D1F63A6ED7DCCB0E95B535F3C2B7FBFECFF756D9F60F86A681C65F1DBFBB08B61690000000000000000000000000000000000AC8A020102C224554211232551549259295CF246710CAFE0B9B07CE5C637777B96BAD6F451CA663966625D16F17B96DF2FAB6EE1AD2F3DEED263A36A9AB37D000000018CBC23387677AE03BDA8B54F5B51A4FA5472FB79BB2DB2F7677A227E6E937DD2F6FA6998EB0D47B3338C4F7C726E54CE61E65729C4B9E193E32B42A4AD04319595253022D02482260120981120000000000000000000000000000CF5E09DF57BEFEF5BFC5AD71075A3EEDF3833A5DFB33BB5C6F400000000000000000000000000000000000000000000000000000000000000003C274E3BF46C9C09AB9B573ABAABD114DA8F3F3E6ECB6BB1DADF8CF48745C43ABFD3E8EAC4F9CF46AA6D1A3BDB9EED634B6699AEE5EBB1CBF8F36E572B8B744CCBCB6C5BAAF5D8A63ACB75786B6DB3B4EC9A5D069E9EAD16ADC72FB7CAD02FDC9B9726A97B3E92C5362CD36E9F93B17C9C800001877C2777F9D170F69F65B7573D74CF5E227BA29C3BDD8EC735C9B93F26A1C5BACECEC4598FE4D7DD876FBDBA6F1A5D0E9E99AAE5CB91CBECCF36CF7AE45BA26A979FE9ACD57AEC514FCDBADB0682CED9B3E9B45629EAD16EDC463EDC7379FDEB9372B9AA5ED1A6B34D9B54D14FC9F73E6FBB5F3C2B7FBFECFF756D9F60F86A681C65F1DBFBB08B616900000000000000000000000000000000224102A2410048B0AC8A8161594958564650ACA2C382F4CE311DF3C98D53887DADD3996DC7839F0ECECBC076751769EAEA357F4ABE5F6F269BB9DEED2F4C47C9E9BB1697B0D344CF5964D75AEEC00000007CFB9E96D6B7417F4B7A88AE8B944D3313F732A2A9A6626185CA22BA669968D71BECF5F0F7176BB6BAE99A62DDC99A73E69E6DE7497BB5B7153CA772D37617AAA1D6532E5BAC95E9560B08BC2B14C0898048C5300904C04A4400000000000000000000000000067AF04EFABDF7F7ADFE2D6B883AD1F76F9C19D2EFD99DDAE37A00000000000000000000000000000000000000000000000000000000000000001ADBE137BFF008EF1169F65B7563C4A266B88F2F5A21B5EC76392DCDC9F9BCE38B759DA5F8B31FC5D4783C6DD6359C7D63517B13E2F1334D331DF987DF78B934E9E623E6E270C58A6E6B62A9F936A5A6BD48000045554534CD53DD1199099C3523A6FDF677BE3BD5CDBB9D6D35998A6D467BB9736EFB5D8ECAC467ACBC9788357FA9D65589F28E8EF7C1AF61F9C78B6BDDAAA734683CFDD9AA1C6DEAFF259E4F573F85347DAEA7B5F952D9B6A2F4B01AF9E15BFDFF67FBAB6CFB07C35340E32F8EDFDD845B0B4800000000000000000000000000000001122C20112080448C912089154464AD42A954A338767C11B3D7C43C5DA1DAE8A66A8B97226AC79A39B89ABBDD95B9A9D9EDBA6EDEF53437976CD2DAD1682C696CD114516E88A6223EE68D5D5354CCCBD5ADD1145314C3E862CC000000001ADFE15FC3555AD6E9788B4F4FD1B99A6F4C47DD10D8B66D4794DB9699C4DA4F38BB0C196EACC44B6486915479B962792B0985A2462B65530B448C5399113911209C886413954C193C8C193C8C193C8C193C8C193C8C193C8C193C8C193C8C193C8C193C8C193C8C193C8C193C8C193C8C193C8C193C8C193C8C193C8C33DF826FD5EF9FBD6FF0016B5C41D68FBB7CE0CE977ECCF0D6DBD00000000000000000000000000000000000000000000000000000000000000000D47E9F2269E95375FB7A93FFF00CC377DA7FF00569793F1247FFE857FFF00DF276BE0DD73ABC77451FF00B533FC9F1DEA3FF8EE4F0ACE35910DA369CF4F00001E7BA46DEE9E1FE0FD76E754C44D147563EF9E4E568ECF6D7A9A1D7EE9AAFD2E96AB8D31BF72ABDA8B9726666AB95CCFB65BF4444461E3954CD5565B53E0FF00B0C6D1C0D6353728EA6A7559AAE463CD3C9A66EF7FB5BF311D21EA5C35A48B1A38AA63CEA646754D8406BE78577F7FD9FEEADB3EC1F0D4D078C7E3B7F760FCB62F268F8327918327918327918327918327918327918327918327918327918327918327918327918327918327918327918327918327918327918327918327918321846514C82054641199151322AB9196159945566790CA21C572AC44CA4B3A63CD9CFC14386AABBADD57116A29FA36F14D9998FBE25ADEF3A8F28B70DDF86749E73765B20D75B980000000000F2DD2970F5BE25E0CD76DD55B8AEE4D1D6A27CD31CDC9D25E9B3762A70771D346A2C5543496E59BBA5D55DD35EA268AEDD734CC4FD8DE2DD5154661E557EDCD154C4AF4CBEAE34AF0AC5618A625516113022D0008089804800000000000000000000000000CF7E09BF57BE7EF5BFC5AD71075A3EEDF3833A5DFB33C35C6F20000000000000000000000000000000000000000000000000000000000000000353BC2168EAF49BAFAF1FAD4D1FF00F2DD3689FF00E2D2F2AE268C6E15CFF872783BD7D5E92349467F5A9ABF926F11FF00C6965C3138D7D30DAD698F5300052F5DB766D5576ED514514466A999EE8588999C425554531996B074E5D21D5C4BB855B4ED9731B6D8AA626A8FFF006CB6FDAF6FEC29E7AFE297997106F53ACAFB2B73FB23F2F0DC15B3DDDF789F45B65ACF5AEDC89FE11CDD8EA6F459B535CBA4D069A753A8A6DC7CDBA9A0D3DBD2E8ACE9EDD114D36E88A6223EE6815D53555332F66B7445144531F273B166035F3C2BBFBFECFF00756D9F61F86A683C63F1DBFBB07B616900000000000000000000000000000008904002922AB208155991508AAC8C94AA5194296ECDDD56AAD69ACD135D772B8A6223ED7CAE5514C665C9B16E6BAA221BB5D16F0F5BE1AE0CD0EDD4DB8A2E451D6AE7CF33CDA3EAEF4DEBB353D576ED3469EC5343D4B8CE7000000000008AA22AA6699EE98C48350BC227863FE9FE37AF596689A74DAD9EB51CB966239B6DDAB51DA5AC4F5879DF1068FB1BFCD1D258EE89E597730D6261C83095A1525681256856208B0244040160000000000000000000000000019EFC137EAF7CFDEB7F8B5AE20EB47DDBE70674BBF66786B8DE400000000000000000000000000000000000000000000000000000000000000006AC784751D5E902F57FFB534FF26E5B34FF00F1E1E5FC5118D6CCBE0F07FAFABD29ED94FF00ED15FF00FCCBE9BBFF00EAD4F870D7FF0050A3EFFF00E9B6CD25EAE01331113333888EF0600E9FBA479BB55CE19D9AF7D08E5A9B94CF7FD912D9B69DBB1FF35C8FF0D0B8937BE6CE9ACCF97CE582F9CCF966667DAD89A3B3FF0083A701EA34B547146E36E6DD5547FF001A998E78EE996B3BCEBA2AFF00868FBB7DE17DA2AA27F55723FC33A35D6F0000D7CF0AEFEFFB3FDD5B67D87E1A9A0F18FC76FEEC1ED85A40000000000000000000000000000002A0002A05540915594650AC8B0AA2C38EB9E59259C4322783B70C7FD41C6F46B2F513569B453D6AF972CCC7274DBAEA3B3B588EB2D9F87F47DB5FE69E90DBDA6229A6298EE88C43527A22400000000000018DFC20B857FEA3E08BD72CC7FF002B4B1D7B5CB3E5E6EC36DD47657633D25D3EF5A3FD469E71D61A836A662668ABBE99C4B73A6730F31B94E25CF4F7337C2568545862B44AA2444C08B400202260120000000000000000000000000CF7E09BF57BE7EF5BFC5AD71075A3EEDF3833A5DFB33C35C6F200000000000000000000000000000000000000000000000000000000000000003587C25A8EAF19C578FD6A63F936FD967FE0799F15C63579743D05D7F27D28ED354F9EAFE4E4EEB19D2D4E170ECE35F6DB78D1DEB20311F4EDD23D3B168EBD8F68BD13B85D8C5CAE99FAA8FCDDDED5B776D3DA57D1A9F116F91A6A7B0B33FBA7AFFD35A6E5755CAEAB95D5355554E666679CCB6D88C793CDE6666732CA7D06F4735F116BE8DE375B331B6D99CD34CFFF00B65D36E9B87614F251F14B68E1FD927575F6D763F647E5B3B66DD166D536ADD314D14C629888EE86A333333997A5D34C531885914001AF9E15DFDFF67FBAB6CFB0FC35341E31F8EDFDD83DB0B48000000000000000000000000000011208005245564102A2645551559192B57722C382ECCCCC514F7D53886154E21F7B74E65B7DE0FBC2BFF4E70459B97A3FF95AA8EBDDE58F2F2699B96A3B5BB38E90F4ED9747FA7D3C67ACB243AF7700000000000000297EDD37ACD76AB889A6BA669989FB5627139498CC61A61D3570C57C2DC71A9B54D38D35FABAF6A71CA7CEDC76DD476B6A3D5E69BDE8A74F7E71D25E3E89768E8261C912AC16891131224AD12A89818E168904E4404013904E40C8190320640C8190320640C8190320640C8190320CF7E09BF57BE7EF5BFC5AD71075A3EEDF3833A5DFB33C35C6F2000000000000000000000000000000000000000000000000000000000000000035AFC27E8EAF13696BFF00DA27F936CD8E7FE2979C716D38D444BC7743973E4FA46DAEAF3553FC9CEDC633A6A9D46C738D6D12DC4A39D31F73457AEC3C1F4C3C7BA6E10D966DD9AE9AF71BF4CC59A227BBCF33E6765B76867535E67E18747BE6EF4E82D629F8A7A354371D6EA370D6DDD66AEED572F5DAB35552DD28A228A7969795DDBB55DAE6BAA7332F5FD13702EAF8C77AA6269AADE82C4C4DEBB8E5F647DAE0EE1AEA74B47FDCBB6D9B69AF5F77FA63ACB6CF6ADBF4BB5E82D687456A9B566D538A69869572E5572A9AAAEAF56B3668B34451446221F5307D400006BE78577F7FD9FEEADB3EC1F0D4D078C7E3B7F760FCB61690640C8190320640C8190320640C8190320640C8190320640C823208000C8A89915590C226464ACCA2C226455664571D728CE21EC3A16E18AF8A78E34D6AAA73A6B1575EECE394799D5EE5A8ECAD4FABBFD93453A8BF19E90DCFB16E9B3668B544445345314C447D8D3A673397A5C46230BA280000000000000031578477087FD41C2556BF4F6E2757A38EB5388E731E5767B66A7B2BB89E92E8B7DD17EA2C7347586A6DA99899A6794C4E25B8D339879B5CA712E7A659C3E32B2B195A0494C08B40C5224A60130A92944000000000000000000000000019F7C133EAB7CFDEB7F8B5AE20EB47DDBE70674BBF66786B8DE400000000000000000000000000000000000000000000000000000000000000006B9F85451D5DE76DAF1FAD15369D867F654F3DE2F8C5DA258F7A2EAFE4F8EB6DAF38FA6ED35D19B1535FDA271ABA3FCB69F8FB8BB43C23C3B56BF5354557A68FD15ACE26B969DA4D255A9B9CB1D1E9FB96E36F43639EAEBF286A2F146F9AFE22DE6FEE7B85DAAE5DBB5797BA23C90DDAC59A6C511452F27D66AEE6AEECDDB93E72FB381385B5FC59BEDADBB4744C5133FA5B98E54C30D56AA8D35B9AAA7DB6ED05CD75E8B7436FB84387F41C35B258DAF416A28A2DC739F2D53E568FA8D4577EB9AEA7AD68B476F476A2D5B8E8EDDF072C000001AF7E15FF00DFF67FBAB6CFB07C35B41E31F8EDFDD839B0B4800000000000000000000000000000044AAC225150108915591922458545856A949650E0BB333314C73999C430AA710FB5BA732DB2F071E10FFA7F84A9D7EA2DC46AF591D6AB31CE23C8D3B73D4F6B7711D21E93B168BF4F639A7ACB2ABAC77A000000000000000038F53668D469EE58B94C554574CD3313F6AC4E27309553154625A5FD33F0AD7C27C6BA8B54D331A5BF575AD4E397DADCB6ED4F6D6E3D5E69BD68674F7E71D25E429AB93B38974330E485CB05A0CA2C658A615161011604C09803000200000000000000000000033EF8267D5EF9FBD6FF0016B5C41D68FBB7CE0CE977ECCF0D71BC80000000000000000000000000000000000000000000000000000000000000000D7DF0B0B7D5D66CD5FF00ED15B66D827F6D6D0B8C63155B9FF2C43C29B85BDAF7ED36BEEC669B53D67797E89B96E6986A3A3BD166F4573F2763D21F186BF8BF799D66A66AA2C511116ACE7953C9F2D1E928D351CB1D5C9DCF72B9AFBBCF574F943A9E1FDA35BBE6ED636DDBECD576FDDAB1111E48F2CBEF7AED36689AEAE8E269B4D7353722DDB8CCCB6E3A32E0BD17076C7469AD534D7ABB94C4DFBD8E754F99A46BB5956AAE667A7C9EB1B4ED76F6FB3CB1F14F597AD709DA80000000D7BF0AFF00EFFB3FDD5B67D83E1A9A0F18FC76FEEC1CD85A4000000000000000000000000000A06090C2055401559150995564CB2564CAB8EAAB924CB3887AFE863856BE2CE35D3DAAA999D2D8ABAD7671CBEC759B8EA7B1B73EAEFB65D0CEA2FC67A437434D668D3E9EDD8B74C534514C53111F634D99CCE65E974D314C621C88A000000000000000000C69E105C1D4F137085CD458A63C73491D6B78A73331E5763B76A7B1BB89E92E9B7AD0C6A6C4CC7586A1DBCD35556EB898AA99989896E545598799DDA312E6A679337C257818CAD12A929116811222615130090001880000000000000000000033EF8267D5EFBFBD6FF16B5C41D686F9C19D2EFD99E1AE3790000000000000000000000000000000000000000000000000000000000000000180BC2D23F49B0D5E7F948FE4D9787FA56D178CA3CEDFDD81DB1B4472E934F7B55A9B7A7B16EAB972E5514D34C466652AAA298CCB3A28AABAA29A7AB6A3A15E8FACF0A6D54EB75B6E9AB73D453135CCC7EA7D90D3773D7CEA2BE5A7E187A86C3B3C68ADF3D71FBE7F0C90EA9B100000000035EFC2BFFBFECFF757F8367D87E1A9A0F18FC76FEEC1CD85A4000000000000000000000000000C80448224108A89155151322C2B28B0A553C8650E1B99AAAA6DD1133555311110C2BAB10FBDAA332DBCF07DE0EA7867842DEA2FD31E39AB8EB5CCD38988F234DDC753DB5DC47487A66CBA18D358899EB2C96EB9DC800000000000000000008AE98AE8AA8AA331546242632D40F080E0DAF8638B2BD6E9E89F12D5CF5A9C47289F2B6DDAF55DADBE59EB0F3BDFB6FEC2ECD51D258EE8AB3197710D66630E489560BC2A2C314C1092B40804ACA8980001010000000000000000000067DF04CFABDF7F7ADFE2D6B883AD0DF3833A5DFB33C35C6F20000000000000000000000000000000000000000000000000000000000000000304785951D6B1B257FF00AD573F06C7B04F9D6D1F8CA3CAD4FF009602A699AAA8A69899999C444795B2B4388CF93633A04E8DE36DB36F88F7AB313ACAE3362DD51F571E76ADBB6E3CF3D95B9F2F9BD0F87364EC623517A3CFE5FF004CD0E81B880000000000D7BF0AFF00EFFB3FDD5FE0D9F61F86A683C63F1DBFBB073616900000000000000000000000000A0A48201545824159256102AB232526515C75D588CA4B388CB22783FF0006D7C4FC5946B75144F896927AD566394CF91D3EE9AAECADF2C7596CDB0EDFDBDD8AA7A436FE8A628A29A298C4531886A4F4488C240000000000000000000001E43A58E12B1C5DC27A9D0D56E27514D3D6B357962639B95A3D44D8B915381B8E8E35566699EAD2CD669751B76BEF687576E6DDDB554D334CB76B5722BA730F2ED4599B75CD330532FB38930BC4AB15A2445A2570898918E1312224309CC889C81904C489208000000000000000000CF9E099F57BEFEF5BFC5AD71075A1BE70674BBF66796B8DE40000000000000000000000000000000000000000000000000000000000000000612F0AAA33B56D95E3F56AAFF06C1B0CFEFA9A5F18466DD12F3FD01F46F56E57ADF11EF366634944E6C5BAA3EB27CFFC1C9DDB71ECE3B2B73E7F370387363EDA63517A3F6FCBFEDB194D314D314D31111118888F23567A14463C92280000000000D7BF0AFF00EFFB3FDD5B67D83E1A9A0F18FC747DD839B0B4800000000000000000000000991611914C8233208170899044C8B844C9864ACCA2AB322A954A3288347A5D46E3AFB3A1D25B9B976ED514C530F8DDB914539972F4F666E5714C4374FA27E12B1C23C27A6D0D36E2351553D6BD57966679B49D66A26FDC9A9EA3B768E34B66298EAF5EE2B9E000000000000000000000013CE300D6CF09FE05F15D4D3C51B75BC515FF0078A698EEF3362DA357FF00DBA9A6F116DD8FF9A8FBB065AABAD0D8E25A4D518972D32C9F395E044C4AA2C314C092B408089804800981010000000000000000067CF04BFABDF7F7ADFE2D6B883AD0DF3833A5DFB33CB5C6F200000000000000000000000000000000000000000000000000000000000000003CAF1E70769B8B2F6828D6D7FF00C6D3D53557463F5BCCE6E9359569A2AE5EB2EAF71DB69D74D315F487A5D269ECE974D6F4F628A68B76E98A69A6230E1D554D53997654514D14C534F4872A320000000000006BD7857FFDC367FBAB6CFB07C35341E31F8E8FBB07B6169000000000000000000000048A81404482009155916102AB323244A2A9548B0E2BB575618CCBE94C6659CFC183817C6B5357146E36F3451FDDE9AA3BFCED7377D5FF00F6E96EDC3BB767FE6AFECD938E5186BADC800000000000000000000000007C3BFED7A6DE768D46DDABA22BB57A898989F3B3B75CDBAA2A87CAF5AA6ED13455F3693748DC2FABE10E2AD4EDBA8B734D9EB66D57E4AA3BDBAE8B5317ADC4C3CC773D0D5A6BB34CC793A2A672E73A8987244AB158632B44AA2445A0448808980480091880000000000000000CF9E097F57BEFEF5BFC5AD71075A1BE70674BBF66796B8DE4000000000000000000000000000000000000000000000000000000000000000000000000000000001AF7E161FF0070D9FEEADB3EC1F0D4D078C7E3A3EEC1CD85A4000000000000000000000206402241000A89155151322AA8B0ACC8C9C754E119443BDE8E785F57C5FC55A6DB74F6E6AB3D6CDDAFC94C77B83ADD4C59B7332EDF6CD0D5A9BB14C479376760DAF4DB36D1A7DBB4944516ACD111111E769572B9B954D52F4EB36A9B544514FC9F7307D40000000000000000000000000018D3A79E04B7C59C357353A6A629DC34D4F5ADCC47EB47961D8EDFAB9B17313D25D36F1B7C6AACCCC7586A25545DD3DFAF4F7E89A2E5B99A6A896E36EB8AA330F35BD6E68AB12E4897D1C7985E2558A6045E15084CA2D0A891032984C02408048980300600C0180300600C018030061EB38038EB74E0DA7574EDB1131A9C75F311E470B57A1A3558E7F93B5DB776BDA08ABB3F9BD4F6E1C51E6A7D90E1F72D8769E2AD59DB871479A9F641DCB60F156ACEDC38A3CD4FB20EE5B078AB5676E1C51E6A7D90772D83C55AB3B70E28F353EC83B96C1E2AD59DB871479A9F641DCB60F156ACEDC38A3CD4FB20EE5B078AB5676E1C51E6A7D90772D83C55AB3B70E28F353EC83B96C1E2AD59DB871479A9F641DCB60F156ACEDC38A3CD4FB20EE5B078AB5676E1C51E6A7D90772D83C55AB3B70E28F353EC83B96C1E2AD59DB871479A9F641DCB60F156ACEDC38A3CD4FB20EE5B078AB5676E1C51E6A7D90772D83C55AB3B70E28F353EC83B96C1E2AD59DB871479A9F641DCB60F156ACEDC38A3CD4FB20EE5B078AB5676E1C51E6A7D90772D83C55AB3B70E28F353EC83B96C1E2AD59DB871479A9F641DCB60F156ACEDC38A3CD4FB20EE5B078AB5676E1C51E6A7D90772D83C55AB3B70E28F353EC83B96C1E2AD59DB871479A9F641DCB60F156ACEDC38A3CD4FB20EE5B078AB5676E1C51E6A7D90772D83C55AB3B70E28F353EC83B96C1E2AD59DB871479A9F641DCB60F156ACEDC38A3CD4FB20EE5B078AB5676E1C51E6A7D90772D83C55AB3B70E28F353EC83B96C1E2AD59DB871479A9F641DCB60F156ACEDC38A3CD4FB20EE5B078AB5676E1C51E6A7D90772D83C55AB3B70E28F353EC83B96C1E2AD59DB871479A9F641DCB60F156ACEDC38A3CD4FB20EE5B078AB5676E1C51E6A7D90772D83C55AB3B70E28F353EC83B96C1E2AD59DB871479A9F641DCB60F156ACEDC38A3CD4FB20EE5B078AB5676E1C51E6A7D90772D83C55AB3B70E28F353EC83B96C1E2AD59DB871479A9F641DCB60F156ACEDC38A3CD4FB20EE5B078AB5676E1C51E6A7D90772D83C55AB3B70E28F353EC83B96C1E2AD59DB871479A9F641DCB60F156ACEDC38A3CD4FB20EE5B078AB5676E1C51E6A7D90772D83C55AB3B70E28F353EC83B96C1E2AD59DB871479A9F641DCB60F156ACEDC78A3CD4FB20EE5B078AB56F23C7BC69B9F18DDD35CDCB19D3E7A98FB5CDD268E8D344C51F3753B8EE9775F31373E4F30E63ACC0180300600C0180300600C0180300600C018448A02241064C02A24556532A4AAA928A8991549946510E3A68BBA8BF469EC5135DCB9314D310F9DCAE298CCB9166DCD75621B77D037025BE13E1AB7A9D4D3156E1A9A7AD72663F563C90D3B70D5CDFB988E90F4AD9F6F8D2D9899EB2C96EB9DC800000000000000000000000000005511544C4C662794C0358BC253A3E8DB35F57136D763ABA7BB39BF4D31CA996C9B56B79A3B3A9A4F106D9CB3DB511E52C2D6AB8AA1B044E5A6D54E1CB4CB27CE5681168911618A6145A0404016540089048000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008990000551402455645420ACC8C959155AA458715DAE298633387D29A72CD3E0D7D1F46E7AFA789B74B1D6D3DA9CD8A6A8E554B5FDD75BCB1D9D2DCB87F6CE69EDAB8F286CED3114C4444622394435B6EC00000000000000000000000000000003E2DF36DD2EEFB5DFDBF596E2E59BD4CC4C4B3B75CD154550F9DDB54DDA268ABA4B4B7A53E10D5705F13DDD2574551A5B954CD9AFC930DCB43AA8BF467E6F35DD76F9D2DD98F93CCD15663397630E9261C91230C2D12A985A244C262444E445A25513122009C886408904E40C8190320640C8190320640C8190320640C8190320640C8190320640C8190320640C8190320640C8190320640C8190320640C8190320640C8190320640C8190320640C8190320640C8190320640C8190320640C8190320640C8190320640C8190320640C8190320640C822640C819040A4C8226455728A899151322E1599170ACCA2E1C75D588CE496710F4DD167086AB8D389ED6928A2A9D2DBAA26F57E48875DAED5458A33F3777B56DF3AABB11F26E96C7B6E9768DAEC6DFA3B716ECD9A622221A6DCAE6BAA6A97A55AB54DAA228A7A43ED60FA0000000000000000000000000000000003C6F4B3C19A5E32E1BBBA4AE88F19B74CCD9AFCB12E5E8F53362BCC7475FB8E8A9D5DA9A67AB4CB77DBF55B36ED7F6CD6DBAADDEB35626261BA58BB17298AA1E65AAD3D566B9A6AF938A997DDC2985E2558AD022D022D0A8222615168100040131209000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001132080001490564542292AAACA2AB22AB322A954A328872ED1B7EAB79DDAC6D9A2B755CBD7AAC44443E17EEC5BA66A97374BA7AAF5714D3F36E6F44DC19A5E0DE1BB5A4A288F19B94C4DEAFCB32D2F59A99BF5E67A3D376ED153A4B514C757B2711D800000000000000000000000000000000000030D7844747146FFB7D5BEED966235F62335C531CEB876FB66B66D55C95746BDBDED91A8A3B4A23CE1AB91D6B772AB57299A6BA671313E46D94559879E5CB734CE25CB4CB37C65789562B089891168562402C22604001004C48240000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000044C820000524102AB22920ACCA3240AACC8AA5528CA1C53D6B9729B56E99AABAA71111E5615D5887DADDB9AA710DA3F077E8E28D836FA77DDCECC4EBEFC6688AA39D10D4F73D6CDDAB929E8F43D936C8D3D1DA571E72CCAEA1B0800000000000000000000000000000000000008AA98AA99A6A889898C4C4F941AD1E115D194E83557389B64B13166BE77EDD31DD2D8F6BD7E7FE3ADA66FBB4E266F5B8FF002C1F6ABCC7DAD8699CB4CAE9C4B9A2593E4B44AA2C3194C4A8B0C4805844C080020098904800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000899040000A48205564501599192108566464ACCA2B86ED788FB58D5387D68A732CE1E0EBD194EBF556F89B7BB133668E762DD51DF2D7B74D7E3FE3A1B9EC5B4E662F5C8FF000D97A698A698A69888888C444791AE373480000000000000000000000000000000000000003835FA4D3EBB49734BAAB74DCB5729C554CB2A6A9A6730C6BA22BA796A6A374E7D1C6AB83F78AB71D0DBAAE6D77EA998988FD49FB5B56DDAE8BD4F2D5D5E7FBD6D33A7AF9E98FDB2C716EB8987731396B3553872C4AB095A2551618A62551610805844C080020098904800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000899040000A482055645015991508AACC8C9599458715CAE2212670CE9A72C8FD067471AAE30DE29DC75D6EAB7B5D8AA266663F5E7EC74DB8EBA2CD3CB4F56CDB2ED33A8AF9EA8FDB0DB9D06934FA1D25BD2E96DD36ED5BA714D30D56AAA6A9CCBD028A228A796973B164000000000000000000000000000000000000000000EBB88F67D16FBB4DEDBB5D6A9B96AED38E71DCFA5AB955BAB9A97CAFD9A6F513454D38E95F8135FC13BE5CA3A9557A1B954CDAAF1CA21B7E875B17E9FF00B79CEEBB655A5AFF00E9E428AF319876512E8A69C3922558CC2D9956385A244C273224C2D12754C262550CC861312227222624300600C27218322190320640C8190320640C8190320640C8190320640C8190320640C8190320640C8190320640C8190320640C8190320640C8190320640C8190320640C8190320640C8190320640C8190320640C8190320640C8190320640C8190322E10180304C86119044C8A8CC8B826411329D170AE6458844C8B857322E159946510E3AEBC4665265945397AFE8A38135FC6DBE5BA3A9551A1B7544DDAF1CA61D6EBB5B1629FFB77BB56D956AABFFA6E3F0E6CFA2D8B69B3B7686D536ED5AA71CA3BDA85DB955CAB9AA7A358B34D9A228A5D8BE6FA8000000000000000000000000000000000000000000003A2E36E18DBB8AB65BBB76BED53575A9FA15E39D32FB58BF559AB9A971B55A5A3536E68ADA6BD22707EE5C15BF5CD0EB2DD5362AAA66D5DC72AA1B8E8F574DFA730F38DCB6EAF4B72699E8F3F45598CC39F0EA261C9123E730B428B448C522262545A062026244C2443209000003008000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002E000004640044C8B840A482B32324208991559192B3284438EBAB119925F4887A0E8EF83F72E35DFADE87476EA8B14D51376EE39530E06B3574D8A732EDF6DDBABD55C8A63A372B8278636EE15D96D6DDA0B54D3D5A7E9D78E754B4EBF7EABD57354F47D2E968D35B8A2877AF8B92000000000000000000000000000000000000000000000000F37D20F07ED7C63B1DCDBB70B54F5F1FA2BB8E744B91A7D45562BE6A5C3D668EDEAEDCD15B4DB8EB84F75E0CDF6E6DBB8DAABA99FD15DC72AE1B8693574DFA730F38DC36FB9A5B934D50E968AB319873A25D54C392246130B428B448C522262545A0620262444811222400000040000000000000000000000000000000000000000000000000000000000000000000000000000000000000000014000044C802A264102920ACC8C9082264556464ACCA110E3AEAC4664996710EEB81784F75E33DF6DEDBB75AABA99FD2DDC72A21C1D5EAE9B14E65DAEDFB7DCD55C8A6986E4F47DC1FB5F076C76F6EDBED53D7C7E96EE39D72D3F51A8AAFD7CD53D1F47A3B7A4B71450F48E3B98000000000000000000000000000000000000000000000000000F31D22F05ED7C67B25CD06BED531771FA2BB8E744B91A6D4D762BE6A5C3D6E8ADEAEDF2D4D38E3AE13DD78337BB9B76E56AAEA67F45771CAB86E1A4D5D37E9CC3CE370DBEE696E4D3543A6A2ACF387372EAA61C94CAB0985A145A24629113120B44AA021009113022600000004000000000000000000000000000000000000000000000000000000000000000000000000000000000000001400090448205448A01322AB328A8044C8AAC8C95AA508871D75639CA659C43B9E05E13DD78CF7BB7B76DB6AAEA67F4B771CA8870B57ABA6C539976BB7EDF73557229A61B8FD1D705ED7C19B25BD0682D533771FA5BB8E75CB4FD4EA6BBF5F354F47D168ADE92DF2D2F4EE3B98000000000000000000000000000000000000000000000000000000F37D207076D5C63B2DCDBF71B54F5F1FA2BB8E744B91A7D45762AE6A5C3D668EDEAEDF2570D3CE90383376E0ADE6BD1EBAD55558CFE8AEC472AA1B7E935945FA730F3BDC76DB9A5AF154793CFD1544F3873A25D44C61C912AC30B42A2D123148984C49913954C2440131222444C4800000002000000000000000000000000000000000000000000000000000000000000000000000000000000000A000013208044C8A81404645C226532A80C2264556464ACCA2E1C75D511CE52659C465E83A3FE0CDDB8D779A347A1B5553633FA5BB31CA9870757ACA2C539976FB76DB73555E298F26E1F47FC1DB57076CB6F6FDBAD53D7C7E96EE39D72D4351A8AEFD5CD53D1347A3B7A4B7C9443D238EE60000000000000000000000000000000000000000000000000000000003A2E35E16DAF8AB68B9A0DC6C535E63E8578E74CBED62FD566AE6A5C6D5696DEA68E4AE1A87D27F47DBAF04EE75F5EDD77743555F42EC472886DBA2D7537E9FFB79F6E7B557A5ABA793C85BAE2A876512E8AAA70E58956130B089895458422445A2551220098913002722240000003008000000000000000000000000000000000000000000000000000000000000000000000000002E000000119040A4C861028089915599450556645422AB322C438AE5714C24CB3A69CBD7F461D1F6EBC6DB9D1D4B75DAD0D357D3BB31CA61D6EB75D4D8A7FEDDEED9B557AAABA7936F382B85B6BE15DA2DE836EB14D188FA75E39D52D4AFDFAAF55CD53D074BA5B7A6A3928877AF8B92000000000000000000000000000000000000000000000000000000000000EBB88365DBB7DDBAE68771D3D37AD5718E71CE1F4B772AB757352F95EB145EA796B86A774C1D14EE5C1FADAF5DB75156A76BAE731311CE8FB1B4E8372A6F472D5D5A1EEBB355A799AA8F3A58DEDDCCF29E530EE2272D6EAA261CD12C9F3C2D122612A8989116810113904E44C2440004E44C240105C80272601000000000000000000000000000000000000000000000000000000000000000000000CAE040064100546430814001191708C8A802455664540A89945C2B322E1C372E63947399633387D29A265923A1FE8A772E30D6D1AEDC68AB4DB5D1399998E75FD8E9F5FB953663969EAD936AD9AAD44C555F952DB1E1FD976ED8B6EB7A1DBB4F4D9B54463947396AD72E5572AE6A9BE59B1459A79688762F9BEA000000000000000000000000000000000000000000000000000000000000000E0D7E8F4DAED2D7A5D5DAA6EDAB918AA9AA195354D3398635D14D718A9AD9D34742FA8D04DEDF3866DCDCB31F4AED88EF86C1A0DD338A2E34FDDB6298CDCB30C1F15576EE4DBBB4D54574CE26263130D869AE261A7DCB534CF9B922A6797C66178956384E445A24CA61312651265309893226255130882820289C898488006401390000000000000000000000000000000000000000000000000000000000000000320800C80008C8B840A20284A08995544CA655064C2264CAA264CAE15C8A899170A4D4996510E39AABB9722DDAA6AAEBAA71111199961557110FB5BB5354F9338742FD0BEA35F3677CE26B736ECCFD2B5627BE5AF6BF74C668B6DC369D8A67172F4364F41A3D36874B4697496A9B56ADC629A6986BF555354E65B8514534462973B1640000000000000000000000000000000000000000000000000000000000000000008AA98AA99A6A88989E5313E5061AE97FA18D1EFF0045DDCF61A29D3EBE23AD344472AE5DB68B72AAD7EDAFA35EDCF64A351135DBF296B1EEBB76E3B2EBABD16E7A6AEC5EA2713154368B57A9B919A65A26A34B5D9AB96A8C38A9AA279C3EF971261789CAB1C2D918A7222624458011395C89891309100005139130910000032090000000000000000000000000000000000000000000000000000000011900000004645C2051000044C8B8464CAA1005566411915191559919614AAA88E72996510E5DAB6EDC77AD751A2DB34D5DFBD5CE222987C2EDEA6DC66A972F4FA5AEF55CB4C65B39D107431A3D828B5B9EFD453A8D7CC75A2898E544B57D6EE555DFDB4746F7B66C9469E22BB9E72CCB4D314D314D311111CA223C8EA5B0A40000000000000000000000000000000000000000000000000000000000000000000000078DE917A3CD8F8CB455D1ABB34DAD4E3E85EA639C4B97A6D5D762731D1D7EB76EB5ABA715479B543A40E00DFB82B5B5D1ACB35DDD2E7E85EA6394C369D26BA8BF1E5D5A16E1B55DD2CF9C793CB5BB915795D844E5D3D54CC3962593E785A244C262445A244C26244489822544C02722612206000513913091000003209C80000000000000000000000000000000000000000000000001904640000001191708144030008C8B8448A899010C2264544C8B85664544C8B856645C38AE5C8A7CAC6670FA534CCBD4F47FC01BF71AEB68A34766BB5A5CFD3BD54728875FABD751623CFABB8DBF6ABBAA9F28F26D7F475D1E6C7C1BA2A28D259A6EEA71F4EF551CE65AB6A7575DF9CCF46FBA2DBAD6929C531E6F64E23B00000000000000000000000000000000000000000000000000000000000000000000000000007C5BCED5A0DDF455E8F70D3517ECD71898AA19D172AA2734CBE776D51769E5AA330D6DE963A0FD66D917775E18A66FE9E9FA55588EFA61B068B758ABF6DC69FB9EC134E6BB3D1856E45DD3DEAAC6A6DD56EE53389A6A8C3BEA2E4551986A576CD544E2617A67CB0FA65F0985A272AC6616C889C8898904E44489832A262444E4309100005139130024400000C8272000000000000000000000000000000000000000064119000000040A643081440001191708990464510C2322A264546411915599C0B10AD53E594CB28852DC5DD45EA6C69ADD572E55388A698CBE75DC8A6332FBDAB3557388866AE89FA0FD66E716B75E27A66C69EAFA54D89EFAA1D0EB7758A7F6DB6DBB66C13562BBDD1B25B36D5A0DA345468F6FD35162CD11888A61AFD772AAE7354B70B56A8B54F2D31887DAC1F40000000000000000000000000000000000000000000000000000000000000000000000000000002A88AA262622627BE2418CFA50E88F62E2CB33A9D35AA749B853138B94C72ABF83B0D2EE172C4E27CE1D3EBF68B5AA8CC4625AC3C6DC15C41C1FAFB9A7DCB495FC8D33F42EC4662A86CFA6D6DBBD19A65A3EBB6CBBA6AB1543A0B7722A8EF73625D4D54CC39225930C2D13E61309C889C8985A244480260CA89804E44C2440000C8289C89801220000001904E40C80000000000000000000000001903208C800000000814C86102899000004645C224546404300A89905722E11915133E7170ACC8B871DCB914C77B199674D332EFF0082782B8838C35F6F4FB6E92BF91AA7E9DD98C4530E16A75B6ECC66A976DA1DB2EEA6AC530D9EE8BFA23D8B84ECC6A7536A9D5EE154466E551CA9FE0D6355B85CBF388F286F1A0DA2D69633319964CA6229888888888EE8875EEE0000000000000000000000000000000000000000000000000000000000000000000000000000000000001F06F5B3EDDBCE8EBD26E3A5B77ED571898AA39FB59D172AA2734CBE576CD1769E5AE32D79E93FA06BFA5F94DC785AAF94A233555A7F37F177DA4DDBF8DC6A7B8F0F7F3B3FFE183B5DA7D66DDABAF49AED3D766F5138AA9AA30EFADDDA6B8CC4B52BDA6AADCE2A8569AE279C3ED12E34D2BC54AC70B448984E55309C8984F58309C8983261309C8613950EB22613D653064306530612A80009C898321832183218321832183218321832183AC183AC183AC184F5BEC0C1D6FB03075BEC0C1D6FB03075BEC0C1D6FB0308EB060EB060EB060C860C860C860C860C860C860C860C860C86102800232985C19530758308EB21832AA8CA18464C18322E11D61708C8611917089945C2B350B852AAE239CA4CB28A56D0E9F59B8EAE8D26874F5DEBD5CE29A698CBE372ED3446665C9B3A6AAE4E298671E8C3A06BFAAF93DC78A6AF93A271553A7F3FF1743ABDDBF8DB6DBB770F7F3BDFFE1B0DB2ECFB76CDA3A349B7696DD8B544622298E7ED7435DCAAB9CD52DB2D59A2D53CB4461F7B07D40000000000000000000000000000000000000000000000000000000000000000000000000000000000000009E7DE0F1FC7BD1DF0F717E96BA75DA4A28D44C7D1BD4C62627F8395A7D65CB13FB65C0D5EDD67551FBA3CDAD7D22F43BC45C2F72BD4E8ADD5AED0E667AF4C7388FB9B1E9774A2E7955E52D375FB15DB1E74F9C31BC5CAA9ABAB729AA8AA3BE2A8C4BB5A6B896BD5DA9A5CB4D512FA3E530B448C70B44AA272184886444C4A89C889004C006413904819130643091000000000000000000000000000000000000000004645C190C02A3208C8000601519044C8A8CA00A8C8B844C82B328B856AAA206510E29B95555756DD355754F74531997CEAAE21F5A2D4D4C91D1D743BC45C51728D4EB6DD5A1D0E627AF547398FB9D56AB74A2DF953E72D8741B15DBFE75794365380BA3BE1EE10D2D14E8749457A888FA57AA8CCCCFF0016B9A8D65CBF3FBA5B96936EB3A58FDB1E6F611CBB9C573C00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000115D14D74CD35D31544F926321319633E90FA1CE1BE27A6ABFA7B54E8B5BCE7E5288E533F73B1D36E376CF94F9C3A7D6ECD6353E711896B9F1CF461C51C2576AAAEE96BD4E96338BB44793EE6C3A6DC6DDEF9F9B4ED6ECD7B4FE78CC3C65373138AA2699F34BB28AE25D2D56E61CB4D512C9F3985A246384E5516890C022413932982255139048026003209C800910C860C861390C0200000000000000000000000000645C2321832180102990464000300A8C822640CA6570815004C8B8572089945C2B555103288715573338A626A9F34319AE21F4A6DCCBD9F037461C51C5B769AAD696BD3E967BEED71E4FB9D6EA771B767E7E6EEB45B35ED479E310D8CE8F3A1CE1BE18A69BFA8B54EB75BCA7E52B8E513F735ED4EE376F794794371D16CD634DE7319964CA28A68A629A298A623C911875CEE22309000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001C7A8B167516A6D5FB545CA263131546562663A24D31546258B3A40E84B8778822BD4EDF44683573133D6A79C4CFDCECB4DB9DDB5E53E70E9759B258BFE74F94B5FB8D7A2EE2BE15B955777495EA34B19C5DA39F2FB9DFE9F72B777E7E6D4B59B2DFB1E78CC3C5D372627AB5D334CF9A630EC62B8974B5DA9872D3544F959E5F2985A246384E544C48984E44C240C8984E4C9832A89C82400C026003209C81903200240C898321832183218321832183218321832183218321832180540190320641190000C02E00464119032995C2321805464308991708C8A899430AD5544794CB288715572667AB453354F9A232C26B887D68B532F69C15D17715F155CA6BB5A4AF4FA59C66ED7CB97DCEBB51B95BB5F3F3775A3D96FDFF003C621B03D1FF00425C3BC3F146A770A235FAB8889EB55CA227EE741A9DCEEDDF28F286DBA3D92C58F3ABCE594F4F62CE9ED45AB16A8B7444622298C3AD9999EAEEA298A6310E445000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000014BD6AD5EA268BB6E9AE99E531546562663A24C44F5638E39E86F85789226F5BD3C68B57CFF4B4777B1CFB1B8DDB5E59CC3A9D5ECDA7D479E312C0DC6BD0B715F0F75AF68EDCEBF4D4CFEBD3889C7DCEF34FBADBB9E53E4D5759B05EB5E74C6618E6FD1A8D25EAACEAACDCB55D33898AA9C3B4A6EC55198743734F551389829B913E57D625F09A66178956384C488B44AE50CA184E55306504E543265309C8613932864C86412860530194C064C064C06432643264326432644E4C864C88C990C990C990C99032064C064C064C02E04308CA864C864C88C8B8464C98322A328195308CA2E0995C8ACCA2A2645C2955C88F2A4CB28A664B146A3577A9B3A5B372ED754E2229A72F95576298CCBEF6F4F5573888646E0AE85B8AF887AB7B596E741A6AA7F5EAC4CE3EE757A8DD6DDBF28F377DA3D82F5DF3AA310CF3C0DD0DF0AF0DC45EB9A78D6EAF97E96BEEF63A3BFB8DDBBE59C436AD26CDA7D3F9E332C8F66D5AB344516ADD34531CA2298C3813333D5DB4444745D1400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004554D35462A8898F34C03CB717747FC31C4D66BA771DB6DCDCAA39574FD198F6393675776D4FED970B53B7D8D447EFA58578CFC1E3556AAAB51C39ADF958E73166A8C7FCCBB8B1BC474AE1AE6AF86E7ADA961FE21E15E24E1DB9551BAEDB7AD45338EB44663FE1DC59D65BB9F0CB5BD46DB7ACFC74BA7A6EF3C55989F34B9515C38155B987245713DD2CB2F9CD2B44AB1C2D9032224300984E40C82720644C2721832184E44320640C8190320640C860C860C860C860C8190320640C81903208C8B83218464306454640C820300B84640C8AACC86159AE23BE532CA2971D5779E29CCCF9A18CD70FA536E65DC70F70AF127115CA68DAB6DBD762A9C75A6311FF002E2DED65BB7F14B9FA7DB6F5EF829660E0CF078D55DAA9D4711EB7E4A394CD9A633FF30E9EFEF11D2886C9A4E1B9EB7659AB847A3FE18E19B3453B76DB6E2E531CEBABE94CFB5D3DED5DDBB3FBA5B1E9B6FB1A78FD94BD4D34D34C6298888F34438CE6A40000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001F3EBB43A3D6D8AACEAB4D6AED15C6262AA62595354D3398615D14D718AA18DF8BBA12E11DEE66EE9F4FE25A89FFCE89998F639F6773BD6FCA672EA753B269EF79C46258838AFA01E26DB7E52E6D17A370B74F388E54CE1DB59DE2DD5F17935FD4F0E5DA3336FCD8CB78D8B7CD96E4DBDCB6EBF666271FAB987696F5545CE92E86F686EDA9FDD4BAF8BD19C551313F6B9115C38736A61C94D713E56597CE695A255309891309C819112180309C898320640C82720644C190C190C190C190C190C190C190C190C190C190C190C1915190320640C86102E00C232064544C8611322E15AAB88F2A6562971CDE8CE298999FB18CD70FA45A99761B3EC5BE6F5722DEDBB75FBD3338FD5C438F735545BEB2E659D0DDBB3FB6964DE14E80789B72F93B9BBDE8DBEDD5CE63955387577B78B74FC3E6EFB4DC3976BC4DCF265FE11E84B8476498BBA8D3F8EEA23FF003AE6623D8EA6F6E77AE7944E1B069B64D3D9F398CCB2468743A3D158A6CE974D6AD514462229A621C0AAA9AA732EDA8A29A2314C3E862CC000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001F1EE1B668370B1559D5E92CDDA2AEF8AA88654D755339897CEBB545718AA18FB8A7A14E0CDE7372CE8FC52FCFFE74553FC9CEB5B95EB7F3CBABD46C9A6BBE7118962FE25F076DD74D72BB9B36E51AAA279D34554F5663ECEF7676B79A67E38749A8E1AAA3CEDCE58DF7EE8F38CF63B95C6BB68BB14D3FF9533D689F63B2B5B859B9D25D25FD9F516BE2A5E66BF97B554D376C5CB731DF155330E5C5D8975D558AA3AC14DEA67CAFA733E536E6178AE3CEB96134AD152E5309C89832184E40C889C860C8600C0180306430644C190C190C190C191700600C018321832184640C8A8C860C861135195C2B35C79D32B14A955EA63CA9CCCE2DCC947CBDDAA29B562E5C99EE8A69997CE6EC43EB4D8AA7A43D36C3D1E719EF97288D0ED17669ABFF002AA7AB11ED712EEE166DF597636367D45DF869648E1AF076DD753728B9BCEE51A5A239D54534F5A67ECEF75B7779A63E08777A7E1AAA7CEE4E194385BA14E0CD9B172F68FC6EFC7FE75D53FC9D65DDCAF5CF9E1DDE9F64D35AF398CCB20EDFB66836FB14D9D2692CDAA29EE8A688706AAEAAA7332ED28B545118A61F6317D00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000015AEDDBAFF005EDD357DF195CA4C44BA1DEF83386B79EB78FED562E75BBF11D5FE4FB51A9B947C32E35DD1D9BBF152F01BF7403C23ADAAAAB6FA6BD0CD5E699AB0E6DBDDAF53F179BABBDC3FA6AFE1F2781DF3C1CF76D357555B5EED4EAA9EFA699A3AB3FCDCFB7BD44FC50EAAF70CD51F0559788DEBA23E3DDAEA9AABDA6ABB6A3BABA2B89736DEE766AF9BABBDB16A6DFF001794DC769DE76DAA6359B76A2DE3BFE84CB9946A68ABA4BAEB9A1B96FE287C5372BA7F5ADD74FDF4CBEB1721C79B3547C88BF4CF959733E736E568BB4CF95965392568B913E532C7953D78F3AE4E54C5502729D6832983AD0183AC184F5BED0C1D60C1D60C1D6FB4308EB060EB4060EB419304D502F2A3AF1E732BCA89B911E54C9CAACDDA63CA659724AB37E98F2B1E658B7245CAEAFD5B75D5F7532C66E43E9166A9F93EDDBB69DE772AA2347B76A2E67BBE84C3E55EA68A7ACB916F4372E7C30F57B2F447C7BBA551551B4D56AD4F7D75D710E1DCDCECD3F37636762D4DCFE2F6FB1F839EEDA9AE9AB74DDA9D2D3DF5531475A7F9B85737A88F861DA59E19AA7E3AB0F7DB0F403C23A2AA9AB70A6BD74D3E799A72E05CDDAF55F0F93B5B3C3FA6A3E2F37BFD9383386B66EAF886D562DF57BB31D6FE6E157A9B95FC52ED2D68ECDAF86977D45BB747EA5BA69FBA30F8E5C9888859140000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000455115462A8898FB41C37F45A3BF44D17B4B66BA67BE2AA225945531D258CD14CF5879DDCFA3EE11DCB3E37B3D9AF3DF8E5FC9F7A757769E92E2D7A0D3D7F152F2BBAF413C09AAAA6AD3682AD3553E6B9330E4D1BA5FA7ACB857362D255D230F31B8F837ED77B3E29BCDCD379BF479C7FCB914EF35C75870AE70D5AABE1AB0F39AFF070DDAC67C577BA351E6FD163F17269DEA99EB0E157C335474AB2E875BD0371B59CF8BDAA2FFF00F6887DE9DE2D4F5716BE1CD447474DABE87BA46D2E66E6C79A7CF176998FE6FBD3BAD89FE4E355B0EAE9FE2EAF53C01C63A6CFCB6D55538FF1C3EB1AFB53D25C7AB68D453D6975F7F8737FB1F5BA29A7FF00B43E91ABB73F37C676FBB1D61F15DD0EE16BF5EC4C7F16717E997CA7495C7587CD726ED1FAD4619C5D8613A798714EA71DEBDA31EC48D4E7B8ED0EC5CB6E6ED7FAB46526EC328D3CCBE9B5A1DC2EFEA5899FE2C26FD30CE3495CF487DB638737FBFF0055A29AB3FE28613ABB71F37D636FBB3D21D869B8038C7538F91DAAAAB3FE387CE75F6A3ACBED4ED1A8ABA52ED349D0F748DAAC4DBD8F14F9E6ED311FCDF2AB75B11FC9C8A761D5D5FC5DCE8BA06E36BD8F18B5458FFED12F855BC5A8E8E4D1C39A89EAEFB41E0E1BB5FC78D6F7469FCFFA2CFE2F855BD531D21CAA3866A9EB561E8F6EF06FDAECE3C6F79B9A9F3FE8F19FF971AADE6B9E90E6D1C356A9F8AACBD3ED5D04F02696A8AB53A0AB535479EE4C438F5EE97EAE92E6DBD8B494F58CBD56D9D1F708EDB8F14D9ECD18EECF3FE6E355ABBB57597368D069E8F8697A2B1A2D1D8A228B3A5B34531DD14D110F84D533D65CA8A298E90E6A62298C531111F63164900000000000000000000000000000000000000000000000000000000000000000000000000007FFD9'),
(5, NULL);

-- 
-- Вывод данных для таблицы jobs
--
INSERT INTO jobs VALUES
(1, 1, '?????????', 'secretary', 'secret', 1, 0),
(2, 2, '????????', 'tehnolog', '123123qweasdzxc', 1, 0),
(3, 3, 'Демо', 'demo', 'demo', 0, 0),
(4, 4, 'Генеральный директор', '123', '123', 0, 2),
(6, 5, 'Исполнительный директор', '12345', '12345', 0, 0),
(7, 6, 'Экономист', 'ВП', '1234', 0, 3),
(8, 7, 'Бухгалтер', '1234', '1234', 0, 1),
(9, 8, 'Технолог', 'НЕВ', '12345', 0, 1),
(10, 9, 'Инженер', 'ХЕЮ', 'en', 0, 0),
(11, 10, 'Секретарь', 'ПНА', 'se', 0, 0),
(12, 11, 'Рабочая группа', 'Р.гр', 'Пре', 0, 0),
(17, 12, 'Облойщица', 'Обл', 'Обл', 0, 0),
(20, 13, 'Вальцовщик', 'Вал', 'Вал', 1, 0),
(21, 14, 'Вырубщик', 'Выр', 'Выр', 1, 0),
(22, 15, 'Слесарь', 'Сле', 'Сле', 1, 0),
(23, 16, 'Механик', 'Мех', 'Мех', 1, 0),
(24, 17, 'Токарь', 'Ток', 'Ток', 1, 0),
(25, 18, 'admin', 'admin', 'admin', 0, 3);

-- 
-- Вывод данных для таблицы machines
--
INSERT INTO machines VALUES
(1, 1, 'Пресс гидравлический', '1200*800', '1', 2, 40.000, 2.500, 42.500, 6.00, 4.25, '11', 0),
(2, 2, 'Пресс гидравлический 2п', '600*600', '2', 3, 22.500, 2.500, 25.000, 6.00, 2.50, NULL, 0),
(3, 3, 'Пресс вырубной', '350*400', '11', 1, 0.000, 1.500, 1.500, 6.00, 0.15, NULL, 0);

-- 
-- Вывод данных для таблицы mass_calculations
--
INSERT INTO mass_calculations VALUES
(1, 2, 30, 100, 500, 10, 100, 12, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 0, 2, 2, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5*10'),
(3, 4, 1.7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, 200, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3,14*25'),
(4, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '45'),
(5, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2*30'),
(6, 8, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '30'),
(7, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0,21'),
(8, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '23'),
(9, 4, 1.7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 23, 12, 123, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 8, 0.9, 10, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20'),
(11, 8, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10'),
(12, 3, 1.7, 11, NULL, NULL, NULL, NULL, 560, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0,017'),
(13, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0,11'),
(14, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0,15'),
(15, 3, 2, 3, NULL, NULL, 200, NULL, 150, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 0, 1.7, 2, NULL, NULL, 200, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0,02'),
(18, 0, 1.7, 5, NULL, NULL, 483, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 0, 1.7, 5, NULL, NULL, 489, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 3, 1.7, 5.8, NULL, NULL, NULL, NULL, 108.8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 3, 1.7, 6.2, NULL, NULL, NULL, NULL, 326.4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 3, 1.7, 5.8, NULL, NULL, NULL, NULL, 360, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 3, 1.7, 9, NULL, NULL, NULL, NULL, 222.2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 1, 1.7, 8, NULL, NULL, 179, 160, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 1, 1.7, 8, NULL, NULL, 255, 230, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0,809'),
(27, 8, 0.4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0,05'),
(28, 8, 1.7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0,05');

-- 
-- Вывод данных для таблицы materials
--
INSERT INTO materials VALUES
(1, 1, 'Материал1', 'ГОСТ123123', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(2, 2, 'Материал2', 'ТУ 4324982', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(3, 1, '????????', '123??1234123', 100.231, 12.12, 423.42, 123.21, 4000.50, '??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ', 1),
(4, 1, '654654', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(5, 2, '8tjgfnfytjhrhy654', '564321654', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(6, 3, 'gfdbfdnhtryjrtynh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(7, 1, 'ТМКЩ-1', 'ТУ 010-234', 1.7, 1, 3000, 1000, 83.50, NULL, 0),
(8, 2, 'ТМКЩ-30', 'ГОСТ 23.45', 1.7, 30, 100, 100, 65.00, NULL, 0),
(9, 3, '????? ????????', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(10, 4, 'Новый материал', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(11, 3, 'В-14', 'ТУ 34-56', 2, 3, 100, 20, 100.00, NULL, 0),
(12, 4, 'Войлок - 6', 'ГОСТ 3456', 0.4, 6, 1000, 1000, 377.10, NULL, 0),
(13, 5, 'ИРП-1375', 'ТУ 005.1166-87', 1.7, NULL, NULL, NULL, 111.27, NULL, 0),
(14, 6, '51-1481', 'ТУ 21.45', NULL, NULL, NULL, NULL, 180.00, NULL, 0),
(15, 7, '4326-1НТА', 'ТУ 38 0051166-98', 1.7, 0, 0, 0, 136.00, NULL, 0),
(16, 8, 'Резина маслобензостойкая', 'ТУ МХП 1264-55Р', 1.7, NULL, NULL, NULL, NULL, ' Паровой клапан', 0),
(17, 9, 'Ткань кордовая', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(18, 10, '51-3029', 'ТУ 105.1325-79', 1.7, NULL, NULL, NULL, 240.00, NULL, 0),
(19, 11, 'ИРП-1320', NULL, 1.7, NULL, NULL, NULL, 228.30, NULL, 0),
(20, 12, 'ИРП-1321', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(21, 13, 'Резина-4326', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(22, 14, '199', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(23, 15, 'Резина силиконовая', 'ТУ5555555555', NULL, NULL, NULL, NULL, 600.00, NULL, 0),
(24, 16, '3311', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(25, 17, 'НО-68', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(26, 18, 'ИРП-1347', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- 
-- Вывод данных для таблицы measure_units
--
INSERT INTO measure_units VALUES
(1, 1, 'шт.', '196', 0),
(2, 2, 'м.', '123', 0),
(3, 3, 'штуки', '3545', 1),
(4, 3, 'кг', '333', 0),
(5, 4, 'тн', '33', 0);

-- 
-- Вывод данных для таблицы methods
--
INSERT INTO methods VALUES
(1, 1, 'Met121', 'sfdv ls''fd;lvk s'';lgfk sfd sdkjgf s;lkgj ', 1),
(2, 2, 'fv swerg ', 'werg werg  wergwerrg werg', 1),
(3, 1, 'Вырубка', NULL, 0),
(4, 2, 'Варка', NULL, 1),
(5, 3, 'Лазер', NULL, 0),
(6, 4, 'Формовка', NULL, 0),
(7, 5, 'Котел', NULL, 0);

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
(1, '2016-06-09'),
(2, '2016-06-10'),
(3, '2016-06-16'),
(4, '2016-06-17'),
(5, '2016-06-18'),
(6, '2016-06-28'),
(7, '2016-07-02'),
(8, '2016-07-04'),
(9, '2016-07-13'),
(10, '2016-08-03');

-- 
-- Вывод данных для таблицы drawings
--
INSERT INTO drawings VALUES
(1, '2016-04-12 22:38:59', 1, 'Чертеж1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(3, '2016-04-12 22:39:02', 3, 'Чуртеж2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(4, '2016-04-12 22:39:04', 4, 'Чартеж3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(5, '2016-04-12 22:39:14', 5, 'Чэртеж4', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(6, '2016-04-12 22:39:11', 6, 'Чыртеж5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(7, '2016-04-12 22:39:17', 7, 'Чяртеж6', 3, 1, NULL, 5, 5, 1, NULL, 1, NULL, NULL, 1200.00, 201.00, NULL, NULL, 1500.00, 2, 1, 12, 3, 23, 4, NULL, 1, 'qq af sdfg rtg werg wergf', 1, NULL, NULL, NULL, NULL, NULL),
(8, '2016-04-28 16:01:33', 1, '230.456', 6, 1, NULL, 8, 8, 1, NULL, 5, NULL, 61, 120.00, 2.00, NULL, NULL, 0.00, 4, 4, 1, 2, 3, 1, 1, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(9, '2016-04-28 16:19:55', 1, '320.567', 6, 1, NULL, 8, 8, 2, NULL, 6, NULL, 35, 60.00, 2.00, NULL, NULL, NULL, 3, 3, 1, 2, 3, 4, 1, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(10, '2016-04-28 16:30:41', 1, '320.678', 7, 1, '12345', 8, 8, 1, NULL, 7, 10, 0.231, 45.00, 2.00, 48, 10, NULL, 4, 3, 1, 1, 1, 1, 1, 3, NULL, 0, 7, NULL, NULL, NULL, NULL),
(11, '2016-04-28 16:32:17', 2, '120.780', 7, 1, NULL, 7, 7, 2, NULL, 8, NULL, 25, 25.00, 2.00, NULL, NULL, NULL, 4, 3, 2, 2, 3, 4, 3, 4, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(12, '2016-04-29 12:28:34', 2, '589.245', 11, 4, 'ЭЛМА', 7, 8, 2, NULL, 9, 10, 0.06380000000000001, 40.00, 2.00, 39, 14, NULL, 5, 5, 1, 3, 5, 3, 1, 5, NULL, 0, 7, NULL, NULL, NULL, 4.00),
(13, '2016-04-29 12:31:25', 3, '167.345', 9, 5, NULL, 12, 12, 1, NULL, 10, 10, 0.022000000000000002, 25.00, 0.50, 44, 16, NULL, 3, 6, 4, 1, 1, 1, 1, NULL, NULL, 0, 8, NULL, NULL, NULL, NULL),
(14, '2016-05-12 15:14:04', 4, '210.055', 6, 3, NULL, 11, 11, 1, NULL, 11, 10, 0.011000000000000001, NULL, NULL, 19, 20, NULL, 5, 3, 20, 500, 3, NULL, NULL, NULL, NULL, 1, 7, NULL, NULL, NULL, 3.00),
(15, '2016-05-12 15:14:04', 4, 'Новый чертеж', 6, 3, NULL, 11, 11, 1, NULL, 11, NULL, 6, NULL, NULL, NULL, NULL, NULL, 5, 3, 20, 500, 3, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(16, '2016-05-12 16:00:55', 5, '370.570', 7, 20, NULL, 13, 15, 1, NULL, 12, 200, 0.27, 152.88, 3.00, 11, 12, NULL, 12, 6, NULL, NULL, 10, 540, 560, NULL, NULL, 0, 7, NULL, 0.2, NULL, 11.00),
(17, '2016-05-13 15:36:24', 6, 'Новый чертеж', 6, NULL, NULL, NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(18, '2016-05-13 16:26:09', 7, '370.166', 8, NULL, NULL, NULL, NULL, NULL, NULL, 14, NULL, 0.15, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(19, '2016-06-17 16:13:52', 6, '370.298', 6, 1, NULL, 7, 7, 1, NULL, 16, 20, 0.1284, 20.00, 0.50, 34, 18, NULL, 8, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 7, NULL, NULL, NULL, 17.00),
(20, '2016-06-27 16:01:35', 7, '370.215', 7, 7, NULL, 14, 14, 1, NULL, 17, 0, 0.02, NULL, NULL, 23, 24, NULL, 9, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 5.00),
(21, '2016-06-27 21:52:36', 8, '06.03.101', 14, 8, 'Дополнительная информация Дополнительная информация Дополнительная информация Дополнительная информация Дополнительная информация Дополнительная информация Дополнительная информация Дополнительная информация Дополнительная информация Дополнительная информация Дополнительная информация Дополнительная информация Дополнительная информация Дополнительная информация Дополнительная информация ', 16, 15, 1, NULL, 19, 10, 1.7556000000000003, 1636.45, NULL, 21, 22, NULL, 10, 6, NULL, NULL, 5, NULL, 415, NULL, NULL, 0, 13, NULL, 1.55, NULL, 51.00),
(22, '2016-07-08 17:08:22', 9, 'Новый чертеж', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 3.00),
(23, '2016-07-08 17:44:10', 9, 'Новый чертеж', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(24, '2016-07-15 16:06:01', 9, '320.990', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(25, '2016-07-21 12:17:38', 10, '370.443', 7, 12, NULL, 18, 15, 1, NULL, 22, 200, 0.048, 51.15, 3.00, 51, 52, NULL, 17, 6, NULL, NULL, 5.8, 354, 365.6, NULL, NULL, 0, NULL, NULL, 0.042, NULL, 7.30),
(26, '2016-07-21 12:18:38', 11, '370.414', 7, 12, NULL, 19, 15, 1, NULL, 20, 100, 0.01, 23.31, 3.00, 25, 26, NULL, 15, 6, NULL, NULL, NULL, 103, 114.6, NULL, NULL, 0, 5, NULL, 0.009, NULL, 10.00),
(27, '2016-07-21 16:54:33', 12, '370.214', 7, 12, NULL, 20, 15, 1, NULL, 21, 200, 0.051000000000000004, 35.96, 3.00, 47, 28, NULL, 16, 6, NULL, NULL, 6.2, 314, 326.4, NULL, NULL, 0, 5, NULL, 0.04, NULL, 10.00),
(28, '2016-07-27 20:31:37', 13, '370.291', 7, 12, NULL, 20, 18, 1, NULL, 23, 165, 0.0636, 40.20, 3.00, 49, 50, NULL, 18, 6, NULL, NULL, 8.6, 205, 222.2, NULL, NULL, 0, 5, NULL, NULL, 'tв=6/2пресса=3', 8.00),
(29, '2016-07-27 22:13:30', 14, '372.366.1', 6, 5, NULL, 20, 18, 1, NULL, 24, NULL, 0.072, 32.67, 3.00, 53, 54, NULL, 19, 6, NULL, NULL, 8, 160, 179, NULL, NULL, 0, 5, NULL, 0.062, NULL, 8.00),
(30, '2016-07-27 22:26:40', 15, '372.367.1', 6, 5, NULL, 20, 18, 1, NULL, 25, NULL, 0.112, 93.06, 3.00, 59, 56, NULL, 20, 6, NULL, NULL, 8, 230, 246, NULL, NULL, 0, 5, NULL, 0.094, NULL, 3.00),
(31, '2016-08-02 10:32:02', 16, 'Г6', 6, 5, 'ИЦ ВНТИ', 23, 23, 1, NULL, 26, NULL, 0.9, 344.83, 3.00, 64, 60, NULL, 21, 6, NULL, NULL, NULL, NULL, NULL, NULL, 'Резка  заготовки в виде П 33/23/21/10/6', 0, 5, NULL, 0.808, NULL, 25.00),
(32, '2016-08-05 17:33:54', 17, '111.111', 7, 4, '123', 12, 11, 2, NULL, 27, 10, 0.05500000000000001, 10.00, 1.00, 69, 67, NULL, 22, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 7, NULL, NULL, NULL, 4.00),
(33, '2016-08-10 14:23:26', 18, '111111', 6, 3, '111', 8, 8, 2, NULL, 28, 10, 0.05500000000000001, 5.00, 0.50, NULL, NULL, NULL, 24, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 7, NULL, NULL, NULL, 3.00);

-- 
-- Вывод данных для таблицы employees
--
INSERT INTO employees VALUES
(1, 1, '123654', '? ? ?321', 1, NULL, 1),
(2, 1, 'НЕВ', 'Наумова Елена Викторовна', 9, NULL, 0),
(3, 2, 'ХВП', 'Холодникова Вера Петровна', 7, NULL, 0),
(4, 3, 'ХМЮ', 'Холодников Михаил Юрьевич', 6, NULL, 0),
(5, 4, 'ХЮВ', 'Холодников Юрий Васильевич', 4, NULL, 0),
(6, 5, 'БСА', 'Бородулин Сергей Анатольевич', 12, NULL, 0),
(7, 6, 'ВАВ', 'Вершинин АВ', 12, NULL, 0),
(8, 7, 'МНА', 'Морозова Н А', 17, NULL, 0),
(9, 8, 'БД', 'Бусыгин Д', 12, NULL, 0),
(10, 9, 'ВФ', 'Валиев Ф', 12, NULL, 0),
(11, 10, 'СС', 'Скребнев С', 12, NULL, 0),
(12, 11, 'ЛЕ', 'Логинов Е', 12, NULL, 0),
(13, 12, 'ШЭ', 'Шагаев Э', 12, NULL, 0),
(14, 13, 'ЗН', 'Здобнов Н', 12, NULL, 0),
(15, 14, 'ШЕ', 'Шатров Е', 12, NULL, 0),
(16, 15, 'ША', 'Шатров А', 12, NULL, 0),
(17, 16, 'ВА', 'Вершинин А', 12, NULL, 0),
(18, 17, 'БС', 'Бородулин С', 12, NULL, 0);

-- 
-- Вывод данных для таблицы material_arrival_records
--
INSERT INTO material_arrival_records VALUES
(1, 1, '1', 9, 0.00, '2016-05-11 00:00:00', '11/05/16', 11, 1, 10.00, 150.000, 'склад', 0),
(2, 2, '1', 6, 0.00, '2016-04-01 00:00:00', '1', 8, 1, 50.00, 10000.000, NULL, 0),
(3, 3, '15', 6, 20000.00, '2016-07-27 00:00:00', '15', 18, 4, 200.00, 100.000, '100', 0);

-- 
-- Вывод данных для таблицы requests
--
INSERT INTO requests VALUES
(21, 1, '2016-03-30 00:00:00', NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, 0, NULL, 0),
(23, 2, '2016-03-30 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(25, 3, '2016-03-30 00:00:00', NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, 0, NULL, 0),
(26, 4, '2016-03-30 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(28, 5, '2016-03-30 00:00:00', NULL, NULL, '2016-06-10 00:00:00', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(31, 6, '2016-03-30 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(40, 7, '2016-03-30 00:00:00', NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, 0, NULL, 0),
(41, 8, '2016-03-30 00:00:00', '2016-06-18 00:00:00', '2016-05-01 00:00:00', '2016-06-10 00:00:00', NULL, 15, 5, 11, 783.74, 0, 1200.00, 1),
(42, 9, '2016-04-05 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(49, 10, '2016-04-05 00:00:00', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, 1),
(51, 11, '2016-04-15 00:00:00', NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, 0, NULL, 0),
(55, 12, '2016-04-18 00:00:00', NULL, '2016-05-02 00:00:00', NULL, NULL, 10, 5, NULL, NULL, 0, NULL, 0),
(57, 13, '2016-04-18 00:00:00', '2016-06-30 00:00:00', '2016-05-05 00:00:00', NULL, NULL, 9, 5, NULL, 24.00, 0, NULL, 0),
(61, 14, '2016-05-12 00:00:00', NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, 0, NULL, 1),
(63, 15, '2016-06-08 00:00:00', NULL, NULL, '2016-07-04 00:00:00', 1, NULL, 8, 11, 450.00, 0, 12.12, 1),
(65, 16, '2016-06-09 00:00:00', NULL, NULL, NULL, 2, NULL, 7, 11, NULL, 0, 1200.00, 0),
(68, 17, '2016-06-09 00:00:00', NULL, NULL, NULL, NULL, NULL, 7, 11, NULL, 0, NULL, 1),
(72, 18, '2016-06-10 00:00:00', '2016-06-15 00:00:00', '2016-06-20 00:00:00', '2016-07-02 00:00:00', NULL, 5, 7, 11, 1000.00, 0, NULL, 0),
(76, 19, '2016-06-27 00:00:00', '2016-06-20 00:00:00', '2016-06-30 00:00:00', '2016-07-20 00:00:00', 5, 11, 13, 11, 0.00, 0, 15000.00, 0),
(94, 20, '2016-06-27 00:00:00', '2016-06-27 00:00:00', '2016-06-29 00:00:00', '2016-07-27 00:00:00', NULL, 2, 5, 11, 3669.12, 0, NULL, 0),
(100, 21, '2016-07-12 00:00:00', '2016-07-12 00:00:00', NULL, '2016-07-12 00:00:00', 3, NULL, 8, 14, 400.00, 1, 152.00, 1),
(108, 22, '2016-07-18 00:00:00', NULL, NULL, '2016-07-27 00:00:00', NULL, NULL, 7, 11, 4000.00, 0, NULL, 0),
(112, 23, '2016-07-19 00:00:00', NULL, NULL, '2016-07-19 00:00:00', 4, 11, 5, 11, 135000.00, 0, 20.00, 0),
(121, 24, '2016-08-02 00:00:00', '2016-08-02 00:00:00', '2016-09-02 00:00:00', '2016-08-02 00:00:00', 6, 15, 5, 11, 3914.50, 0, 15000.00, 0),
(123, 25, '2016-08-02 00:00:00', '2016-08-02 00:00:00', '2016-09-02 00:00:00', '2016-08-12 00:00:00', 7, 15, 8, 11, 8620.75, 0, 123.00, 0);

-- 
-- Вывод данных для таблицы drawing_calculation_history
--
INSERT INTO drawing_calculation_history VALUES
(1, 27, 29),
(2, 27, 30),
(3, 27, 31),
(4, 19, 32),
(5, 19, 33),
(6, 19, 34),
(7, 12, 35),
(8, 12, 36),
(9, 12, 37),
(10, 12, 38),
(11, 12, 39),
(12, 13, 40),
(13, 13, 41),
(14, 13, 42),
(15, 13, 43),
(16, 13, 44),
(17, 10, 45),
(18, 10, 46),
(19, 27, 47),
(20, 10, 48),
(21, 30, 57),
(22, 30, 57),
(23, 30, 58),
(24, 30, 58),
(25, 30, 58),
(26, 30, 58),
(27, 30, 58),
(28, 30, 59),
(29, 31, 61),
(30, 31, 62),
(31, 31, 62),
(32, 31, 63),
(33, 31, 63),
(34, 31, 63),
(35, 31, 63),
(36, 31, 63),
(37, 31, 64),
(38, 32, 68),
(39, 32, 69);

-- 
-- Вывод данных для таблицы drawing_flowsheet_machines
--
INSERT INTO drawing_flowsheet_machines VALUES
(1, 16, 1, 2, 180.00, 8.00),
(2, 10, 1, 3, 130.00, 5.00),
(3, 12, 1, 2, 100.00, 4.00),
(4, 13, 1, 3, 120.00, 4.00),
(5, 19, 1, 1, 180.00, 5.00),
(6, 14, 1, 2, 120.00, 130.00),
(7, 20, 1, 3, 0.00, 5.00),
(8, 21, 1, 1, 170.00, 20.00),
(9, 22, 1, 2, 122.00, 3.00),
(10, 26, 1, 1, 170.00, 7.00),
(11, 27, 1, 2, 170.00, 7.00),
(12, 28, 1, 1, 170.00, 6.00),
(13, 25, 1, 1, 170.00, 5.00),
(14, 29, 1, 2, 170.00, 6.00),
(15, 30, 1, 2, 170.00, 5.00),
(16, 31, 1, 1, 180.00, 20.00),
(17, 32, 1, 2, 180.00, 5.00),
(18, 32, 2, 1, 180.00, 5.00),
(19, 33, 1, 1, 180.00, 5.00);

-- 
-- Вывод данных для таблицы drawing_flowsheet_processes
--
INSERT INTO drawing_flowsheet_processes VALUES
(1, 16, 1, 1, NULL, NULL, NULL, NULL, NULL, 0.00, NULL),
(2, 16, 2, 3, NULL, NULL, NULL, NULL, NULL, 0.00, NULL),
(3, 16, 3, 7, 1, NULL, NULL, NULL, NULL, 1.00, NULL),
(4, 16, 4, 8, 1, NULL, NULL, NULL, NULL, 8.00, NULL),
(5, 16, 5, 9, 1, NULL, NULL, NULL, NULL, 2.00, NULL),
(7, 10, 1, 7, NULL, NULL, NULL, NULL, NULL, 1.00, NULL),
(8, 10, 2, 8, NULL, NULL, NULL, NULL, NULL, 1.00, NULL),
(9, 10, 3, 9, NULL, NULL, NULL, NULL, NULL, 1.00, NULL),
(10, 14, 1, 7, 1, NULL, NULL, NULL, NULL, 1.00, NULL),
(11, 14, 2, 8, 1, NULL, NULL, NULL, NULL, 1.00, NULL),
(12, 14, 3, 9, 1, NULL, NULL, NULL, NULL, 1.00, NULL),
(13, 14, 4, 1, NULL, NULL, NULL, NULL, NULL, 0.00, NULL),
(14, 14, 5, 2, NULL, NULL, NULL, NULL, NULL, 0.00, NULL),
(15, 14, 6, 4, NULL, NULL, NULL, NULL, NULL, 0.00, NULL),
(16, 12, 1, 7, 1, NULL, NULL, NULL, NULL, 1.00, NULL),
(17, 12, 2, 8, 1, NULL, NULL, NULL, NULL, 2.00, NULL),
(18, 12, 3, 9, 1, NULL, NULL, NULL, NULL, 1.00, NULL),
(19, 13, 1, 7, NULL, NULL, NULL, NULL, NULL, 1.00, NULL),
(20, 13, 2, 8, NULL, NULL, NULL, NULL, NULL, 1.00, NULL),
(21, 13, 3, 9, NULL, NULL, NULL, NULL, NULL, 1.00, NULL),
(22, 19, 1, 1, 0, NULL, NULL, NULL, NULL, 2.00, NULL),
(23, 19, 2, 2, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(24, 19, 3, 3, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(25, 19, 4, 4, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(26, 19, 5, 5, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(27, 19, 6, 6, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(28, 19, 7, 7, 1, NULL, NULL, NULL, NULL, 5.00, NULL),
(29, 19, 8, 8, 1, NULL, NULL, NULL, NULL, 7.00, NULL),
(30, 19, 9, 9, 1, NULL, NULL, NULL, NULL, 5.00, NULL),
(31, 19, 10, 10, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(32, 19, 11, 11, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(35, 20, 12, 13, 1, 'Токарные работы', NULL, 'Токарь', NULL, 0.00, NULL),
(36, 20, 1, 1, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(37, 20, 2, 2, 0, NULL, NULL, NULL, NULL, 4.00, NULL),
(38, 20, 3, 3, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(39, 20, 4, 4, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(40, 20, 5, 5, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(41, 20, 6, 6, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(42, 20, 7, 7, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(43, 20, 8, 8, 1, NULL, NULL, NULL, NULL, 5.00, NULL),
(44, 20, 9, 9, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(45, 20, 10, 10, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(46, 20, 11, 11, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(48, 21, 1, 1, 1, NULL, NULL, NULL, NULL, 5.00, NULL),
(49, 21, 2, 2, 1, NULL, NULL, NULL, NULL, 5.00, NULL),
(50, 21, 3, 3, 1, NULL, NULL, NULL, NULL, 5.00, NULL),
(51, 21, 4, 4, 1, NULL, NULL, NULL, NULL, 5.00, NULL),
(52, 21, 5, 5, 0, NULL, NULL, NULL, NULL, 0.00, NULL),
(53, 21, 6, 6, 1, NULL, NULL, NULL, NULL, 5.00, NULL),
(54, 21, 7, 7, 1, NULL, NULL, NULL, NULL, 3.00, 'Загружать слоями резина,ткань,резина'),
(55, 21, 8, 8, 1, NULL, NULL, NULL, NULL, 20.00, '2 круга по 243 мм'),
(56, 21, 9, 9, 1, NULL, NULL, NULL, NULL, 3.00, NULL),
(57, 21, 10, 10, 0, NULL, NULL, NULL, NULL, 0.00, NULL),
(58, 21, 11, 11, 0, NULL, NULL, NULL, NULL, 0.00, NULL),
(59, 22, 1, 1, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(60, 22, 2, 2, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(61, 22, 3, 3, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(62, 22, 4, 4, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(63, 22, 5, 5, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(64, 22, 6, 6, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(65, 22, 7, 7, 1, NULL, NULL, NULL, NULL, 3.00, NULL),
(66, 22, 8, 8, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(67, 22, 9, 9, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(68, 22, 10, 10, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(69, 22, 11, 11, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(70, 26, 1, 1, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(71, 26, 2, 2, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(72, 26, 3, 3, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(73, 26, 4, 4, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(74, 26, 5, 5, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(75, 26, 6, 6, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(76, 26, 7, 7, 1, NULL, NULL, NULL, NULL, 2.00, NULL),
(77, 26, 8, 8, 1, NULL, NULL, NULL, NULL, 7.00, NULL),
(78, 26, 9, 9, 1, NULL, NULL, NULL, NULL, 1.00, NULL),
(79, 26, 10, 10, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(80, 26, 11, 11, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(81, 27, 1, 1, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(82, 27, 2, 2, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(83, 27, 3, 3, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(84, 27, 4, 4, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(85, 27, 5, 5, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(86, 27, 6, 6, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(87, 27, 7, 7, 1, NULL, NULL, NULL, NULL, 2.00, NULL),
(88, 27, 8, 8, 1, NULL, NULL, NULL, NULL, 7.00, NULL),
(89, 27, 9, 9, 1, NULL, NULL, NULL, NULL, 1.00, NULL),
(90, 27, 10, 10, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(91, 27, 11, 11, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(92, 28, 1, 1, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(93, 28, 2, 2, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(94, 28, 3, 3, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(95, 28, 4, 4, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(96, 28, 5, 5, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(97, 28, 6, 6, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(98, 28, 7, 7, 1, NULL, NULL, NULL, NULL, 3.00, NULL),
(99, 28, 8, 8, 1, NULL, NULL, NULL, NULL, 3.00, NULL),
(100, 28, 9, 9, 1, NULL, NULL, NULL, NULL, 2.00, NULL),
(101, 28, 10, 10, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(102, 28, 11, 11, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(103, 25, 1, 1, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(104, 25, 2, 2, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(105, 25, 3, 3, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(106, 25, 4, 4, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(107, 25, 5, 5, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(108, 25, 6, 6, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(109, 25, 7, 7, 1, NULL, NULL, NULL, NULL, 3.00, NULL),
(110, 25, 8, 8, 1, NULL, NULL, NULL, NULL, 2.30, NULL),
(111, 25, 9, 9, 1, NULL, NULL, NULL, NULL, 2.00, NULL),
(112, 25, 10, 10, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(113, 25, 11, 11, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(114, 29, 12, 9, NULL, NULL, NULL, NULL, NULL, 0.00, NULL),
(115, 29, 1, 1, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(116, 29, 2, 2, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(117, 29, 3, 3, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(118, 29, 4, 4, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(119, 29, 5, 5, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(120, 29, 6, 6, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(121, 29, 7, 7, 1, NULL, NULL, NULL, NULL, 3.00, NULL),
(122, 29, 8, 8, 1, NULL, NULL, NULL, NULL, 3.00, NULL),
(123, 29, 9, 9, 1, NULL, NULL, NULL, NULL, 2.00, NULL),
(124, 29, 10, 10, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(125, 29, 11, 11, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(126, 30, 12, 7, 1, NULL, NULL, NULL, NULL, 3.00, NULL),
(127, 30, 13, 8, 1, NULL, NULL, NULL, NULL, 3.00, NULL),
(128, 30, 14, 9, 1, NULL, NULL, NULL, NULL, 2.00, NULL),
(129, 31, 1, 1, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(130, 31, 2, 2, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(131, 31, 3, 3, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(132, 31, 4, 4, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(133, 31, 5, 5, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(134, 31, 6, 6, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(135, 31, 7, 7, 1, NULL, NULL, NULL, NULL, 3.00, NULL),
(136, 31, 8, 8, 1, NULL, NULL, NULL, NULL, 20.00, NULL),
(137, 31, 9, 9, 1, NULL, NULL, NULL, NULL, 2.00, NULL),
(138, 31, 10, 10, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(139, 31, 11, 11, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(140, 32, 1, 1, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(141, 32, 2, 2, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(142, 32, 3, 3, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(143, 32, 4, 4, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(144, 32, 5, 5, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(145, 32, 6, 6, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(146, 32, 7, 7, 1, NULL, NULL, NULL, NULL, 1.00, NULL),
(147, 32, 8, 8, 1, NULL, NULL, NULL, NULL, 2.00, NULL),
(148, 32, 9, 9, 1, NULL, NULL, NULL, NULL, 1.00, NULL),
(149, 32, 10, 10, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(150, 32, 11, 11, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(151, 33, 1, 1, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(152, 33, 2, 2, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(153, 33, 3, 3, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(154, 33, 4, 4, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(155, 33, 5, 5, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(156, 33, 6, 6, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(157, 33, 7, 7, 1, NULL, NULL, NULL, NULL, 1.00, NULL),
(158, 33, 8, 8, 1, NULL, NULL, NULL, NULL, 1.00, NULL),
(159, 33, 9, 9, 1, NULL, NULL, NULL, NULL, 1.00, NULL),
(160, 33, 10, 10, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(161, 33, 11, 11, 1, NULL, NULL, NULL, NULL, 0.00, NULL);

-- 
-- Вывод данных для таблицы equipment_payments
--
INSERT INTO equipment_payments VALUES
(1, 21, '2016-07-01 00:00:00', 20000.00, NULL, 0);

-- 
-- Вывод данных для таблицы payments
--
INSERT INTO payments VALUES
(1, 72, '2016-06-17 00:00:00', '12', '15', 6000.00, NULL, 0),
(2, 100, '2016-07-12 00:00:00', '21', '21', 480.00, NULL, 0),
(3, 121, '2016-08-02 00:00:00', '24', NULL, 100.00, NULL, 0),
(4, 123, '2016-08-02 00:00:00', '402', NULL, 200.00, NULL, 0);

-- 
-- Вывод данных для таблицы report_of_completion_items
--
INSERT INTO report_of_completion_items VALUES
(1, 41, 0, 1),
(2, 41, 1, 2),
(3, 41, 2, 3),
(4, 41, 3, 4),
(5, 41, 4, 5),
(6, 63, 0, 1),
(7, 63, 1, 2),
(8, 63, 2, 3),
(9, 63, 3, 4),
(10, 63, 4, 0),
(11, 65, 0, 2),
(12, 65, 1, 0),
(13, 65, 2, 0),
(14, 65, 3, 4),
(15, 65, 4, 0),
(16, 72, 0, 0),
(17, 72, 1, 0),
(18, 72, 2, 0),
(19, 72, 3, 0),
(20, 72, 4, 0),
(21, 100, 0, 1),
(22, 100, 1, 0),
(23, 100, 2, 4),
(24, 100, 3, 0),
(25, 100, 4, 0),
(26, 76, 0, 1),
(27, 76, 1, 1),
(28, 76, 2, 2),
(29, 76, 3, 1),
(30, 76, 4, 3),
(31, 94, 0, 0),
(32, 94, 1, 1),
(33, 94, 2, 0),
(34, 94, 3, 0),
(35, 94, 4, 0),
(36, 112, 0, 1),
(37, 112, 1, 0),
(38, 112, 2, 0),
(39, 112, 3, 0),
(40, 112, 4, 0),
(41, 121, 0, 1),
(42, 121, 1, 2),
(43, 121, 2, 0),
(44, 121, 3, 0),
(45, 121, 4, 0),
(46, 123, 0, 0),
(47, 123, 1, 0),
(48, 123, 2, 10),
(49, 123, 3, 0),
(50, 123, 4, 0);

-- 
-- Вывод данных для таблицы request_details
--
INSERT INTO request_details VALUES
(1, 41, 1, 1, 1, 1, NULL, NULL, 12, 15.31, NULL, 183.74, NULL, NULL, 0, 0),
(2, 41, 2, 3, NULL, NULL, '123', NULL, 2, 0.00, NULL, 0.00, 5, NULL, 0, 0),
(8, 41, 8, 6, 2, NULL, NULL, NULL, 5, 150.00, 150.00, 600.00, 3, 'примечание примечание примечание примечание', 0, 0),
(9, 41, 9, 5, 3, NULL, 'asdfasdfs', NULL, 50, 0.00, NULL, 0.00, NULL, NULL, 0, 0),
(10, 41, 10, 4, 1, 1, NULL, NULL, 6, 0.00, NULL, 0.00, NULL, NULL, 0, 0),
(12, 41, 12, 1, NULL, 1, NULL, NULL, 9, 0.00, NULL, 0.00, NULL, NULL, 0, 0),
(13, 41, 13, 4, 2, NULL, NULL, NULL, 0, 0.00, NULL, 0.00, NULL, NULL, 0, 0),
(14, 49, 1, 6, 1, 1, '123123', NULL, 50, 100.00, NULL, 0.00, 3, 'вымывтмдлывта ыдвамо тыдвалом ыдва дывлоам ыдвало мрдылаврм', 0, 0),
(15, 51, 1, 1, NULL, NULL, NULL, NULL, 0, 0.00, NULL, 0.00, NULL, NULL, 0, 0),
(16, 51, 2, 3, NULL, NULL, NULL, NULL, 0, 0.00, NULL, 0.00, NULL, NULL, 0, 0),
(17, 51, 3, 4, NULL, NULL, NULL, NULL, 0, 0.00, NULL, 0.00, NULL, NULL, 0, 0),
(18, 51, 4, 5, NULL, NULL, NULL, NULL, 0, 0.00, NULL, 0.00, NULL, NULL, 0, 0),
(19, 51, 5, 6, NULL, NULL, NULL, NULL, 0, 0.00, NULL, 0.00, NULL, NULL, 0, 0),
(20, 51, 6, 7, NULL, NULL, NULL, NULL, 0, 0.00, NULL, 0.00, NULL, NULL, 0, 0),
(21, 51, 7, 8, NULL, NULL, NULL, NULL, 0, 0.00, NULL, 0.00, NULL, NULL, 0, 0),
(22, 51, 8, 1, NULL, NULL, NULL, NULL, 0, 0.00, NULL, 0.00, NULL, NULL, 0, 0),
(23, 51, 9, 4, NULL, NULL, NULL, NULL, 0, 0.00, NULL, 0.00, NULL, NULL, 0, 0),
(24, 55, 1, 9, NULL, NULL, NULL, NULL, 0, 0.00, NULL, 0.00, NULL, NULL, 0, 0),
(25, 57, 1, 9, 7, 1, NULL, NULL, 2, 12.00, 23.00, 24.00, 7, NULL, 0, 0),
(26, 61, 1, 10, NULL, NULL, NULL, NULL, 5, 10.00, NULL, 50.00, NULL, NULL, 0, 0),
(27, 63, 1, 10, 7, 1, 'нужно 10 хороших деталей', 10, 10, 45.00, 17.70, 450.00, 8, 'надо', 3, 0),
(28, 65, 1, 13, 9, 5, NULL, NULL, 0, 20.00, NULL, 0.00, 12, NULL, 0, 0),
(29, 68, 1, 16, 7, 5, NULL, NULL, 150, 20.00, 17.15, 3000.00, 13, NULL, 2, 0),
(30, 72, 1, 13, 9, 5, NULL, NULL, 10, 20.00, NULL, 200.00, 12, NULL, 3, 0),
(31, 72, 2, 12, 11, 4, NULL, NULL, 20, 40.00, NULL, 800.00, 7, NULL, 3, 0),
(32, 76, 1, 21, 14, 8, NULL, NULL, 6, 0.00, NULL, 0.00, 15, NULL, 0, 0),
(33, 94, 1, 16, 7, 5, NULL, NULL, 24, 152.88, 17.15, 3669.12, 13, NULL, 1, 0),
(34, 100, 1, 12, 11, 4, NULL, NULL, 10, 40.00, 47.33, 400.00, 7, NULL, 3, 0),
(35, 108, 1, 12, 11, 4, 'ЭЛМА', NULL, 100, 40.00, 41.78, 4000.00, 7, NULL, 1, 0),
(36, 112, 1, 10, 7, 1, '12345', NULL, 3000, 45.00, 2164.28, 135000.00, 8, NULL, 1, 0),
(37, 121, 1, 31, 6, 5, 'ИЦ ВНТИ', NULL, 10, 344.83, 1127.72, 3448.30, 23, NULL, 3, 0),
(38, 121, 2, 26, 7, 12, NULL, NULL, 20, 23.31, 20.09, 466.20, 19, NULL, 3, 0),
(39, 123, 1, 31, 6, 5, 'ИЦ ВНТИ', NULL, 25, 344.83, 1127.72, 8620.75, 23, NULL, 3, 0);

-- 
-- Вывод данных для таблицы rolling_records
--
INSERT INTO rolling_records VALUES
(1, 1, '2016-05-11 00:00:00', 7, 12, 8, 10, NULL, 0),
(2, 2, '2016-07-01 00:00:00', 13, 10, 16, 10, NULL, 0),
(3, 3, '2016-07-01 00:00:00', 8, 10, 16, 50, NULL, 0);

-- 
-- Вывод данных для таблицы shaving_records
--
INSERT INTO shaving_records VALUES
(1, 1, 5, '2016-05-11 00:00:00', 12, NULL, 15, 2, 0),
(2, 2, 2, '2016-05-11 00:00:00', 10, NULL, 20, 1, 0),
(3, 3, 2, '2016-06-09 00:00:00', 14, 4, 0, 0, 1),
(4, 4, 2, '2016-06-28 00:00:00', 16, 6, 100, 1, 1),
(5, 5, 3, '2016-06-28 00:00:00', 20, 7, 40, 1, 1),
(6, 5, 8, '2016-07-01 00:00:00', 10, 6, 100, 10, 0),
(7, 6, 8, '2016-07-01 00:00:00', 10, 7, 200, 5, 0),
(8, 7, 7, '2016-07-20 00:00:00', 12, 2, 0, 0, 0);

-- 
-- Вывод данных для таблицы shipped_product_records
--

-- Таблица rti.shipped_product_records не содержит данных

-- 
-- Вывод данных для таблицы shipping_order_records
--
INSERT INTO shipping_order_records VALUES
(1, 1, '2016-05-11 00:00:00', 7, 13, 15, 0),
(2, 2, '2016-05-12 00:00:00', 7, 13, 14, 0);

-- 
-- Вывод данных для таблицы work_item_employee_package
--
INSERT INTO work_item_employee_package VALUES
(1, '2016-06-10 00:00:00', 5, 'формовой'),
(2, '2016-06-10 00:00:00', 3, NULL),
(3, '2016-06-18 00:00:00', 4, 'gffgf'),
(4, '2016-06-18 00:00:00', 2, NULL),
(5, '2016-07-02 00:00:00', 7, NULL),
(6, '2016-07-13 00:00:00', 2, '321'),
(7, '2016-06-28 00:00:00', 6, NULL),
(8, '2016-08-03 00:00:00', 7, 'Формовка'),
(9, '2016-08-02 00:00:00', 17, 'формовка'),
(10, '2016-08-03 00:00:00', 6, 'Формовой'),
(11, '2016-08-04 00:00:00', 6, 'Формовой'),
(12, '2016-08-06 00:00:00', 3, '123');

-- 
-- Вывод данных для таблицы shipments
--
INSERT INTO shipments VALUES
(1, 1, '2016-06-23', 72, 7, 7, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(2, 2, '2016-06-23', 72, 7, 8, 1, 0, 0, NULL, 1, 'АА №1 от 12.12.2012', NULL, 100, NULL, NULL, NULL, 0, 21, '2016-06-27'),
(3, 3, '2016-06-23', 72, 7, 7, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 31, '2016-06-28'),
(4, 4, '2016-06-28', 65, 7, 7, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(5, 5, '2016-07-01', 65, 7, 7, NULL, 0, 0, NULL, 1, '25 от 16.06.2016', 1, 1, 'чвыров', NULL, 4720.00, 0, NULL, NULL),
(6, 6, '2016-07-12', 100, 8, 8, 2, 0, 0, '123', 1, '12', 1, 1, 'frefd', 'dgdfd', 472.00, 0, NULL, NULL),
(7, 7, '2016-07-19', 100, 8, 8, 2, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 7, '2016-07-19'),
(8, 8, '2016-08-03', 121, 5, 5, 3, 0, 0, '1', 1, '1 от 02.08.2016', 1, 1, NULL, NULL, 4344.05, 0, 8, '2016-08-02'),
(9, 9, '2016-08-06', 121, 5, 5, 3, 0, 0, '1', 1, '1', 1, NULL, NULL, NULL, 4068.99, 1, 9, '2016-08-02');

-- 
-- Вывод данных для таблицы work_item_employee_package_machines
--
INSERT INTO work_item_employee_package_machines VALUES
(1, 1, 480, 0, 2),
(2, 2, 100, 40, 3),
(4, 3, 480, 8, 3),
(5, 4, 480, 8, 3),
(6, 4, 480, 40, 2),
(7, 6, 480, 20, 2),
(8, 8, 480, 207, 1),
(9, 9, 480, 207, 1),
(10, 10, 480, 500, 1),
(11, 11, 480, 20, 1),
(12, 12, 480, 250, 2);

-- 
-- Вывод данных для таблицы work_items
--
INSERT INTO work_items VALUES
(1, '2016-06-09', 1, 10, 10, 100, NULL, NULL, NULL, 4, NULL, 0, NULL),
(2, '2016-06-09', 2, 16, 0, 200, NULL, NULL, NULL, 2, NULL, 0, NULL),
(7, '2016-06-09', 3, 14, 0, 100, NULL, NULL, NULL, 4, NULL, 0, NULL),
(8, '2016-06-10', 1, 10, 10, 10, 10, 0, NULL, 3, 2, 0, NULL),
(13, '2016-06-10', 2, 16, 150, 100, 100, 0, NULL, 5, 1, 1, NULL),
(14, '2016-06-10', 3, 13, 10, 10, NULL, NULL, NULL, 3, 4, 1, NULL),
(15, '2016-06-10', 4, 12, 20, 20, 10, 1, NULL, 5, 3, 1, NULL),
(16, '2016-06-16', 1, 12, 11, 100, NULL, NULL, NULL, 2, NULL, 0, '16.06.2016/1'),
(17, '2016-06-16', 2, 16, 50, 50, NULL, NULL, NULL, 5, NULL, 0, '16.06.2016/2'),
(18, '2016-06-17', 1, 12, 11, 100, NULL, NULL, NULL, 3, NULL, 0, '17.06.2016/1'),
(19, '2016-06-17', 2, 12, 11, 50, NULL, NULL, NULL, 4, NULL, 0, '17.06.2016/2'),
(23, '2016-06-18', 1, 13, 10, 10, 10, NULL, NULL, 2, 4, 0, '18.06.2016/1'),
(24, '2016-06-18', 2, 12, 11, 20, 20, NULL, NULL, 2, 3, 0, '18.06.2016/2'),
(25, '2016-06-28', 1, 21, 0, 6, 6, NULL, NULL, 6, NULL, 0, '28.06.2016/1'),
(26, '2016-07-04', 1, 10, 0, 100, NULL, NULL, NULL, 7, NULL, 0, '04.07.2016/1'),
(27, '2016-07-02', 1, 10, 0, 100, NULL, NULL, NULL, 7, NULL, 0, '02.07.2016/1'),
(28, '2016-07-13', 1, 12, 10, 10, 10, NULL, NULL, 2, 3, 0, '13.07.2016/1'),
(29, '2016-06-17', 3, 16, 74, 10, NULL, NULL, NULL, 3, NULL, 0, '17.06.2016/3'),
(30, '2016-07-19', 1, 16, 74, 40, NULL, NULL, NULL, 9, NULL, 0, '19.07.2016/1'),
(31, '2016-07-19', 2, 25, 0, 200, NULL, NULL, NULL, 10, NULL, 0, '19.07.2016/2'),
(32, '2016-07-19', 3, 25, 0, 18, NULL, NULL, NULL, 9, NULL, 0, '19.07.2016/3'),
(33, '2016-07-19', 4, 26, 0, 10, NULL, NULL, NULL, 11, NULL, 0, '19.07.2016/4'),
(34, '2016-07-28', 1, 25, 0, 18, NULL, NULL, NULL, 9, NULL, 0, '28.07.2016/1'),
(37, '2016-08-02', 1, 31, 10, 10, 12, 2, NULL, 17, 16, 0, '02.08.2016/1'),
(38, '2016-08-02', 2, 26, 20, 20, 20, NULL, NULL, 17, 10, 0, '02.08.2016/2'),
(39, '2016-08-03', 1, 31, 25, 25, 24, NULL, NULL, 6, 16, 0, '03.08.2016/1'),
(40, '2016-08-04', 1, 31, 1, 1, 1, NULL, NULL, 6, 16, 0, '04.08.2016/1'),
(41, '2016-08-06', 1, 32, 0, 100, 100, NULL, NULL, 3, 17, 0, '06.08.2016/1');

-- 
-- Вывод данных для таблицы shipment_items
--
INSERT INTO shipment_items VALUES
(1, 1, 1, 30, 0, 20.00, 18, NULL, 10, NULL, ''),
(2, 2, 1, 30, 9, 20.00, 18, 'упак', 10, 10, '18.06.2016/1'),
(3, 3, 1, 31, 20, 40.00, 18, NULL, NULL, 100, '18.06.2016/2'),
(4, 4, 1, 28, 0, 20.00, 18, NULL, NULL, 10, ''),
(5, 6, 1, 34, 10, 40.00, 18, NULL, NULL, NULL, '18.06.2016/2'),
(6, 7, 1, 34, 10, 40.00, 18, NULL, NULL, NULL, NULL),
(7, 8, 1, 37, 10, 344.83, 18, NULL, NULL, NULL, '02.08.2016/1'),
(8, 8, 2, 38, 10, 23.31, 18, NULL, NULL, NULL, '02.08.2016/2'),
(9, 9, 1, 37, 10, 344.83, 18, NULL, NULL, NULL, '02.08.2016/1,03.08.2016/1');

-- 
-- Вывод данных для таблицы work_item_request_details
--
INSERT INTO work_item_request_details VALUES
(6, 13, 29, 0, 100),
(7, 15, 31, 0, 9),
(15, 24, 31, 0, 11),
(17, 8, 27, 0, 10),
(18, 23, 30, 0, 10),
(19, 28, 34, 0, 10),
(24, 37, 37, 0, 10),
(25, 38, 38, 0, 20),
(26, 39, 39, 0, 24),
(27, 40, 39, 0, 1);

-- 
-- Вывод данных для таблицы shipment_item_work_items
--
INSERT INTO shipment_item_work_items VALUES
(18, 2, 23, 9),
(20, 3, 15, 10),
(21, 3, 24, 10),
(22, 5, 24, 10),
(25, 7, 37, 10),
(26, 8, 38, 10),
(27, 9, 37, 2),
(28, 9, 39, 8);

DELIMITER $$

--
-- Описание для триггера calculations_trg_bi
--
DROP TRIGGER IF EXISTS calculations_trg_bi$$
CREATE 
	DEFINER = 'root'@'%'
TRIGGER calculations_trg_bi
	BEFORE INSERT
	ON calculations
	FOR EACH ROW
BEGIN
  SET NEW.created_date = CURRENT_TIME();
END
$$

DELIMITER ;

-- 
-- Восстановить предыдущий режим SQL (SQL mode)
-- 
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

-- 
-- Включение внешних ключей
-- 
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;