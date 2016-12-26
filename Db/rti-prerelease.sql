--
-- Скрипт сгенерирован Devart dbForge Studio for MySQL, Версия 7.1.13.0
-- Домашняя страница продукта: http://www.devart.com/ru/dbforge/mysql/studio
-- Дата скрипта: 25.12.2016 22:39:20
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
  Main_Salary DECIMAL(20, 4) DEFAULT 0.0000,
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
  Press_Count INT(11) DEFAULT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB
AUTO_INCREMENT = 509
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
AUTO_INCREMENT = 3
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
AUTO_INCREMENT = 2
AVG_ROW_LENGTH = 1365
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
AUTO_INCREMENT = 42
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
AUTO_INCREMENT = 142
AVG_ROW_LENGTH = 8192
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
  cutting_time DECIMAL(10, 2) DEFAULT NULL COMMENT 'Время вулканизации/вырубки. Берется из процессов =tв.',
  PRIMARY KEY (id),
  INDEX FK_drawings_customer_id (customer_id),
  INDEX FK_drawings_details_id (detail_id),
  INDEX FK_drawings_equipments_id (equipment_id),
  INDEX FK_drawings_fact_calculations_id (fact_calculation_id),
  INDEX FK_drawings_groups_id (group_id),
  INDEX FK_drawings_images_id (drawing_image_id),
  INDEX FK_drawings_mass_calculations_id (mass_calculation_id),
  INDEX FK_drawings_materials_bp_id (material_by_passport_id),
  INDEX FK_drawings_materials_id (material_id),
  INDEX FK_drawings_measure_units_id (measure_unit_id),
  INDEX FK_drawings_methods_id (method_id),
  INDEX FK_drawings_plan_calculations_id (plan_calculation_id),
  INDEX FK_drawings_sec_customer_id (secondary_customer_id)
)
ENGINE = INNODB
AUTO_INCREMENT = 70
AVG_ROW_LENGTH = 1024
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
AUTO_INCREMENT = 5
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
AUTO_INCREMENT = 58
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
AUTO_INCREMENT = 22
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
AUTO_INCREMENT = 4
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
AUTO_INCREMENT = 45
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
AUTO_INCREMENT = 21
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
AUTO_INCREMENT = 68
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
AUTO_INCREMENT = 64
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
AUTO_INCREMENT = 14
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
AUTO_INCREMENT = 26
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
AUTO_INCREMENT = 25
AVG_ROW_LENGTH = 963
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'дневной наряд'
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
AUTO_INCREMENT = 450
AVG_ROW_LENGTH = 260
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
AUTO_INCREMENT = 66
AVG_ROW_LENGTH = 528
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
AUTO_INCREMENT = 479
AVG_ROW_LENGTH = 69
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'технологические процессы'
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
AUTO_INCREMENT = 46
AVG_ROW_LENGTH = 16384
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'сотрудники'
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы equipment_payments
--
DROP TABLE IF EXISTS equipment_payments;
CREATE TABLE equipment_payments (
  id INT(11) NOT NULL AUTO_INCREMENT,
  drawing_id INT(11) NOT NULL,
  payment_doc_number INT(11) DEFAULT NULL,
  payment_date DATETIME NOT NULL,
  sum DECIMAL(10, 2) NOT NULL,
  note VARCHAR(255) DEFAULT NULL,
  is_deleted INT(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (id),
  CONSTRAINT FK_equipment_payments_drawings_id FOREIGN KEY (drawing_id)
    REFERENCES drawings(id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 8
AVG_ROW_LENGTH = 5461
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'оплата изготовления оснастки'
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
AUTO_INCREMENT = 25
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
  specification_number INT(11) DEFAULT NULL,
  specification_date DATE DEFAULT NULL,
  equipment_invoice_number INT(11) DEFAULT NULL,
  equipment_invoice_date DATE DEFAULT NULL,
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
AUTO_INCREMENT = 272
AVG_ROW_LENGTH = 3276
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
AUTO_INCREMENT = 14
AVG_ROW_LENGTH = 16384
CHARACTER SET utf8
COLLATE utf8_general_ci
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
AUTO_INCREMENT = 1
AVG_ROW_LENGTH = 8192
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'журнал распоряжений на отгрузку'
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
AUTO_INCREMENT = 16
AVG_ROW_LENGTH = 2730
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
  drawing_id INT(11) DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT FK_report_of_completion_items_drawings_id FOREIGN KEY (drawing_id)
    REFERENCES drawings(id) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT FK_report_of_completion_items_requests_id FOREIGN KEY (request_id)
    REFERENCES requests(id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 1
AVG_ROW_LENGTH = 252
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
AUTO_INCREMENT = 85
AVG_ROW_LENGTH = 2340
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
AUTO_INCREMENT = 28
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
AUTO_INCREMENT = 46
AVG_ROW_LENGTH = 1024
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'индивидуальный наряд'
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
AUTO_INCREMENT = 99
AVG_ROW_LENGTH = 496
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'Строки дневного наряда'
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
  invoice_facture VARCHAR(255) DEFAULT NULL,
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
AUTO_INCREMENT = 38
AVG_ROW_LENGTH = 910
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
AUTO_INCREMENT = 57
AVG_ROW_LENGTH = 1489
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'оборудование по индивидуальному наряду'
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
AUTO_INCREMENT = 302
AVG_ROW_LENGTH = 862
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'привязка строк дневного наряда к строкам заявок'
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
AUTO_INCREMENT = 59
AVG_ROW_LENGTH = 682
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'строки отгрузки'
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
AUTO_INCREMENT = 282
AVG_ROW_LENGTH = 1260
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
(154, 1.01, NULL, NULL, NULL, NULL, NULL, NULL, 0.07, 1.3880, 0.13, 0.47, 2.27, 3.03, 8.36, 7.65, 0.17, 16.18, 0.49, 16.67, 4.17, 20.83, 3.75, 24.58, NULL, 0, '2016-12-25 00:16:57', NULL),
(155, 11.65, NULL, NULL, NULL, NULL, NULL, NULL, 0.82, 6.9400, 0.63, 2.35, 6.06, 6.81, 35.25, 5.25, 0.71, 41.21, 1.24, 42.44, 10.61, 53.05, 9.55, 62.60, NULL, 0, '2016-12-07 14:36:19', NULL),
(156, 11.65, NULL, NULL, NULL, NULL, NULL, NULL, 0.82, 6.9400, 0.32, 1.17, 3.03, 3.41, 23.86, 5.25, 0.48, 29.58, 0.89, 30.47, 7.62, 38.09, 6.86, 44.95, NULL, 0, '2016-12-07 14:37:34', 2),
(157, 89.08, NULL, NULL, NULL, NULL, NULL, NULL, 6.24, 76.3400, 6.94, 25.82, 124.92, 166.56, 495.89, 50.00, 9.92, 555.81, 16.67, 572.48, 143.12, 715.61, 128.81, 844.41, NULL, 0, '2016-12-09 07:18:41', NULL),
(158, 78.88, NULL, NULL, NULL, NULL, NULL, NULL, 5.52, 76.3400, 2.31, 8.61, 27.76, 41.64, 190.17, 50.00, 3.80, 243.97, 7.32, 251.29, 62.82, 314.11, 56.54, 370.65, NULL, 0, '2016-12-08 16:01:40', 3),
(159, 78.88, NULL, NULL, NULL, NULL, NULL, NULL, 5.52, 76.3400, 3.47, 12.91, 41.64, 62.46, 243.05, 50.00, 4.86, 297.91, 8.94, 306.85, 76.71, 383.56, 69.04, 452.60, NULL, 0, '2016-12-08 16:01:58', 2),
(160, 78.88, NULL, NULL, NULL, NULL, NULL, NULL, 5.52, 76.3400, 2.31, 8.61, 41.64, 55.52, 217.93, 50.00, 4.36, 272.29, 8.17, 280.45, 70.11, 350.57, 63.10, 413.67, NULL, 0, '2016-12-08 16:05:15', 3),
(161, 78.88, NULL, NULL, NULL, NULL, NULL, NULL, 5.52, 76.3400, 2.31, 8.61, 41.64, 55.52, 217.93, 50.00, 4.36, 272.29, 8.17, 280.45, 70.11, 350.57, 63.10, 413.67, NULL, 0, '2016-12-08 16:06:09', 3),
(162, 78.88, NULL, NULL, NULL, NULL, NULL, NULL, 5.52, 76.3400, 2.31, 8.61, 41.64, 55.52, 217.93, 50.00, 4.36, 272.29, 8.17, 280.45, 70.11, 350.57, 63.10, 413.67, NULL, 0, '2016-12-08 16:06:47', 3),
(163, 0.50, NULL, NULL, NULL, NULL, NULL, NULL, 0.04, 0.6940, 0.06, 0.23, 1.14, 1.51, 4.18, 2.84, 0.08, 7.10, 0.21, 7.31, 1.83, 9.14, 1.64, 10.78, NULL, 0, '2016-12-12 17:30:57', NULL),
(164, 0.50, NULL, NULL, NULL, NULL, NULL, NULL, 0.04, 12.1500, 0.37, 1.37, 6.62, 8.83, 21.78, 2.63, 0.44, 24.84, 0.75, 25.59, 6.40, 31.98, 5.76, 37.74, NULL, 0, '2016-12-08 16:29:05', 3),
(165, 0.50, NULL, NULL, NULL, NULL, NULL, NULL, 0.04, 12.1500, 0.28, 1.03, 4.97, 6.62, 16.47, 1.31, 0.33, 18.11, 0.54, 18.65, 4.66, 23.32, 4.20, 27.52, NULL, 0, '2016-12-08 16:42:12', 4),
(166, 0.50, NULL, NULL, NULL, NULL, NULL, NULL, 0.04, 12.1500, 0.28, 1.03, 4.97, 6.62, 16.47, 1.31, 0.33, 18.11, 0.54, 18.65, 4.66, 23.32, 4.20, 27.52, NULL, 0, '2016-12-08 16:43:44', 4),
(167, 0.50, NULL, NULL, NULL, NULL, NULL, NULL, 0.04, 12.1500, 0.28, 1.03, 4.97, 6.62, 16.47, 1.31, 0.33, 18.11, 0.54, 18.65, 4.66, 23.32, 4.20, 27.52, NULL, 0, '2016-12-08 16:44:59', 4),
(168, 0.50, NULL, NULL, NULL, NULL, NULL, NULL, 0.04, 12.1500, 0.28, 1.03, 4.97, 6.62, 16.47, 1.31, 0.33, 18.11, 0.54, 18.65, 4.66, 23.32, 4.20, 27.52, NULL, 0, '2016-12-08 16:45:05', 4),
(169, 0.50, NULL, NULL, NULL, NULL, NULL, NULL, 0.04, 6.0700, 0.14, 0.51, 2.48, 3.31, 8.50, 1.31, 0.17, 9.98, 0.30, 10.28, 2.57, 12.85, 2.31, 15.16, NULL, 0, '2016-12-08 16:45:50', 4),
(170, 0.50, NULL, NULL, NULL, NULL, NULL, NULL, 0.04, 6.0700, 0.14, 0.51, 2.48, 3.31, 8.50, 1.31, 0.17, 9.98, 0.30, 10.28, 2.57, 12.85, 2.31, 15.16, NULL, 0, '2016-12-08 16:45:53', 4),
(171, 0.50, NULL, NULL, NULL, NULL, NULL, NULL, 0.04, 6.0700, 0.14, 0.51, 2.48, 3.31, 8.50, 1.31, 0.17, 9.98, 0.30, 10.28, 2.57, 12.85, 2.31, 15.16, NULL, 0, '2016-12-08 16:46:03', 4),
(172, 0.51, NULL, NULL, NULL, NULL, NULL, NULL, 0.04, 0.6940, 0.06, 0.23, 1.14, 1.51, 4.18, 2.84, 0.08, 7.10, 0.21, 7.32, 1.83, 9.14, 1.65, 10.79, NULL, 0, '2016-12-12 17:31:25', NULL),
(173, 0.51, NULL, NULL, NULL, NULL, NULL, NULL, 0.04, 6.0700, 0.18, 0.68, 3.31, 4.42, 11.16, 1.31, 0.22, 12.70, 0.38, 13.08, 3.27, 16.35, 2.94, 19.29, NULL, 0, '2016-12-08 16:54:00', 3),
(174, 0.51, NULL, NULL, NULL, NULL, NULL, NULL, 0.04, 6.0700, 0.18, 0.68, 3.31, 4.42, 11.16, 1.31, 0.22, 12.70, 0.38, 13.08, 3.27, 16.35, 2.94, 19.29, NULL, 0, '2016-12-08 16:54:09', 3),
(175, 0.51, NULL, NULL, NULL, NULL, NULL, NULL, 0.04, 6.0700, 0.18, 0.68, 3.31, 4.42, 11.16, 1.31, 0.22, 12.70, 0.38, 13.08, 3.27, 16.35, 2.94, 19.29, NULL, 0, '2016-12-08 16:55:46', 3),
(176, 0.51, NULL, NULL, NULL, NULL, NULL, NULL, 0.04, 6.0700, 0.14, 0.51, 2.48, 3.31, 8.51, 1.31, 0.17, 9.99, 0.30, 10.29, 2.57, 12.86, 2.32, 15.18, NULL, 0, '2016-12-08 16:57:44', 4),
(177, 1.33, NULL, NULL, NULL, NULL, NULL, NULL, 0.09, 24.2900, 2.21, 8.21, 39.75, 53.00, 128.88, 5.25, 2.58, 136.71, 4.10, 140.81, 35.20, 176.01, 31.68, 207.69, NULL, 0, '2016-12-08 17:06:39', NULL),
(178, 1.33, NULL, NULL, NULL, NULL, NULL, NULL, 0.09, 3.0363, 0.28, 1.03, 4.97, 6.62, 17.36, 3.54, 0.35, 21.25, 0.64, 21.88, 5.47, 27.36, 4.92, 32.28, NULL, 0, '2016-12-22 11:20:20', NULL),
(179, 1.33, NULL, NULL, NULL, NULL, NULL, NULL, 0.09, 12.1500, 0.28, 1.03, 4.97, 6.62, 17.36, 2.63, 0.35, 20.33, 0.61, 20.94, 5.23, 26.17, 4.71, 30.88, NULL, 0, '2016-12-08 17:13:12', 4),
(180, 1.33, NULL, NULL, NULL, NULL, NULL, NULL, 0.09, 12.1500, 0.37, 1.37, 6.62, 8.83, 22.67, 2.63, 0.45, 25.75, 0.77, 26.52, 6.63, 33.15, 5.97, 39.11, NULL, 0, '2016-12-08 17:13:24', 3),
(181, 0.73, NULL, NULL, NULL, NULL, NULL, NULL, 0.05, 2.0820, 0.19, 0.70, 3.41, 4.54, 11.71, 3.26, 0.23, 15.20, 0.46, 15.65, 3.91, 19.57, 3.52, 23.09, NULL, 0, '2016-12-12 17:31:54', NULL),
(182, 0.73, NULL, NULL, NULL, NULL, NULL, NULL, 0.05, 12.1500, 0.28, 1.03, 4.97, 6.62, 16.72, 2.63, 0.33, 19.67, 0.59, 20.26, 5.07, 25.33, 4.56, 29.89, NULL, 0, '2016-12-08 17:21:09', 4),
(183, 100.50, NULL, NULL, NULL, NULL, NULL, NULL, 7.04, 13.8800, 1.26, 4.69, 22.71, 30.28, 180.37, 20.30, 3.61, 204.27, 6.13, 210.40, 52.60, 263.00, 47.34, 310.34, NULL, 0, '2016-12-12 17:27:37', NULL),
(184, 144.72, NULL, NULL, NULL, NULL, NULL, NULL, 10.13, 48.5800, 1.10, 4.11, 19.87, 26.50, 218.58, 14.50, 4.37, 237.45, 7.12, 244.57, 61.14, 305.72, 55.03, 360.75, NULL, 0, '2016-12-08 17:40:56', 4),
(185, 144.72, NULL, NULL, NULL, NULL, NULL, NULL, 10.13, 48.5800, 1.10, 4.11, 19.87, 26.50, 218.58, 14.50, 4.37, 237.45, 7.12, 244.57, 61.14, 305.72, 55.03, 360.75, NULL, 0, '2016-12-08 17:41:03', 4),
(186, 113.00, NULL, NULL, NULL, NULL, 0.00, NULL, 7.91, 13.8800, 1.26, 4.69, 22.71, 30.28, 193.74, 20.30, 3.87, 217.92, 6.54, 224.45, 56.11, 280.57, 50.50, 331.07, NULL, 0, '2016-12-12 16:33:53', NULL),
(187, 226.80, NULL, NULL, NULL, NULL, NULL, NULL, 15.88, 48.5800, 1.10, 4.11, 19.87, 26.50, 306.40, 14.50, 6.13, 327.03, 9.81, 336.84, 84.21, 421.05, 75.79, 496.84, NULL, 0, '2016-12-08 17:47:56', 4),
(188, 0.50, NULL, NULL, NULL, NULL, NULL, NULL, 0.04, 5.0700, 0.12, 0.43, 2.07, 2.77, 7.19, 1.31, 0.14, 8.64, 0.26, 8.90, 2.23, 11.13, 2.00, 13.13, NULL, 0, '2016-12-08 22:31:40', 4),
(189, 0.50, NULL, NULL, NULL, NULL, NULL, NULL, 0.04, 5.0700, 0.12, 0.43, 2.07, 2.77, 7.19, 1.31, 0.14, 8.64, 0.26, 8.90, 2.23, 11.13, 2.00, 13.13, NULL, 0, '2016-12-08 22:31:42', 4),
(190, 0.50, NULL, NULL, NULL, NULL, NULL, NULL, 0.04, 3.4700, 0.08, 0.29, 1.42, 1.89, 5.09, 1.31, 0.10, 6.50, 0.20, 6.70, 1.67, 8.37, 1.51, 9.88, NULL, 0, '2016-12-08 22:31:53', 4),
(191, 0.50, NULL, NULL, NULL, NULL, NULL, NULL, 0.04, 3.4700, 0.08, 0.29, 1.42, 1.89, 5.09, 1.31, 0.10, 6.50, 0.20, 6.70, 1.67, 8.37, 1.51, 9.88, NULL, 0, '2016-12-08 22:31:55', 4),
(192, 0.50, NULL, NULL, NULL, NULL, NULL, NULL, 0.04, 3.0000, 0.07, 0.25, 1.23, 1.64, 4.47, 1.31, 0.09, 5.87, 0.18, 6.05, 1.51, 7.56, 1.36, 8.92, NULL, 0, '2016-12-08 22:32:09', 4),
(193, 0.50, NULL, NULL, NULL, NULL, NULL, NULL, 0.04, 2.9000, 0.07, 0.25, 1.19, 1.58, 4.34, 1.31, 0.09, 5.74, 0.17, 5.91, 1.48, 7.39, 1.33, 8.72, NULL, 0, '2016-12-08 22:32:22', 4),
(194, 0.50, NULL, NULL, NULL, NULL, NULL, NULL, 0.04, 2.9000, 0.07, 0.25, 1.19, 1.58, 4.34, 1.31, 0.09, 5.74, 0.17, 5.91, 1.48, 7.39, 1.33, 8.72, NULL, 0, '2016-12-08 22:32:25', 4),
(195, 0.50, NULL, NULL, NULL, NULL, NULL, NULL, 0.04, 2.7000, 0.06, 0.23, 1.10, 1.47, 4.08, 1.31, 0.08, 5.47, 0.16, 5.64, 1.41, 7.04, 1.27, 8.31, NULL, 0, '2016-12-08 22:32:47', 4),
(196, 0.50, NULL, NULL, NULL, NULL, NULL, NULL, 0.04, 2.7000, 0.06, 0.23, 1.10, 1.47, 4.08, 1.31, 0.08, 5.47, 0.16, 5.64, 1.41, 7.04, 1.27, 8.31, NULL, 0, '2016-12-08 22:32:50', 4),
(197, 0.50, NULL, NULL, NULL, NULL, NULL, NULL, 0.04, 2.5000, 0.06, 0.21, 1.02, 1.36, 3.81, 1.31, 0.08, 5.20, 0.16, 5.36, 1.34, 6.70, 1.21, 7.91, NULL, 0, '2016-12-08 22:32:58', 4),
(198, 0.50, NULL, NULL, NULL, NULL, NULL, NULL, 0.04, 2.5200, 0.06, 0.21, 1.03, 1.37, 3.84, 1.31, 0.08, 5.23, 0.16, 5.39, 1.35, 6.73, 1.21, 7.95, NULL, 0, '2016-12-08 22:33:14', 4),
(199, 0.50, NULL, NULL, NULL, NULL, NULL, NULL, 0.04, 2.5300, 0.06, 0.21, 1.04, 1.38, 3.85, 1.31, 0.08, 5.24, 0.16, 5.40, 1.35, 6.75, 1.22, 7.97, NULL, 0, '2016-12-08 22:33:32', 4),
(200, 0.50, NULL, NULL, NULL, NULL, NULL, NULL, 0.04, 2.5400, 0.06, 0.21, 1.04, 1.39, 3.87, 1.31, 0.08, 5.26, 0.16, 5.41, 1.35, 6.77, 1.22, 7.99, NULL, 0, '2016-12-08 22:33:43', 4),
(201, 0.50, NULL, NULL, NULL, NULL, NULL, NULL, 0.04, 2.5500, 0.06, 0.22, 1.04, 1.39, 3.88, 1.31, 0.08, 5.27, 0.16, 5.43, 1.36, 6.79, 1.22, 8.01, NULL, 0, '2016-12-08 22:34:19', 4),
(202, 0.50, NULL, NULL, NULL, NULL, NULL, NULL, 0.04, 2.5300, 0.06, 0.21, 1.04, 1.38, 3.85, 1.31, 0.08, 5.24, 0.16, 5.40, 1.35, 6.75, 1.22, 7.97, NULL, 0, '2016-12-08 22:35:09', 4),
(203, 0.50, NULL, NULL, NULL, NULL, NULL, NULL, 0.04, 2.5400, 0.06, 0.21, 1.04, 1.39, 3.87, 1.31, 0.08, 5.26, 0.16, 5.41, 1.35, 6.77, 1.22, 7.99, NULL, 0, '2016-12-08 22:35:52', 4),
(204, 0.50, NULL, NULL, NULL, NULL, NULL, 0.01, 0.04, 2.5500, 0.06, 0.22, 1.04, 1.39, 3.89, 1.31, 0.08, 5.28, 0.16, 5.44, 1.36, 6.80, 1.22, 8.02, NULL, 0, '2016-12-08 22:36:29', 4),
(205, 0.50, NULL, NULL, NULL, NULL, NULL, 0.00, 0.04, 2.5500, 0.06, 0.22, 1.04, 1.39, 3.88, 1.31, 0.08, 5.27, 0.16, 5.43, 1.36, 6.79, 1.22, 8.01, NULL, 0, '2016-12-08 22:36:47', 4),
(206, 0.51, NULL, NULL, NULL, NULL, NULL, NULL, 0.04, 2.5500, 0.06, 0.22, 1.04, 1.39, 3.89, 0.53, 0.08, 4.49, 0.13, 4.63, 1.16, 5.79, 1.04, 6.83, NULL, 0, '2016-12-08 22:38:23', 4),
(207, 0.51, NULL, NULL, NULL, NULL, NULL, NULL, 0.04, 2.6500, 0.06, 0.22, 1.08, 1.45, 4.02, 0.53, 0.08, 4.63, 0.14, 4.77, 1.19, 5.96, 1.07, 7.03, NULL, 0, '2016-12-08 22:39:04', 4),
(208, 0.51, NULL, NULL, NULL, NULL, NULL, NULL, 0.04, 3.5500, 0.08, 0.30, 1.45, 1.94, 5.20, 0.53, 0.10, 5.83, 0.17, 6.01, 1.50, 7.51, 1.35, 8.86, NULL, 0, '2016-12-08 22:39:16', 4),
(209, 0.51, NULL, NULL, NULL, NULL, NULL, NULL, 0.04, 2.5500, 0.06, 0.22, 1.04, 1.39, 3.89, 0.53, 0.08, 4.49, 0.13, 4.63, 1.16, 5.79, 1.04, 6.83, NULL, 0, '2016-12-08 22:40:21', 4),
(210, 0.51, NULL, NULL, NULL, NULL, NULL, NULL, 0.04, 2.5500, 0.08, 0.29, 1.39, 1.85, 5.01, 0.53, 0.10, 5.63, 0.17, 5.80, 1.45, 7.25, 1.30, 8.55, NULL, 0, '2016-12-08 22:40:28', 3),
(211, 0.51, NULL, NULL, NULL, NULL, NULL, NULL, 0.04, 2.5500, 0.06, 0.22, 1.04, 1.39, 3.89, 0.53, 0.08, 4.49, 0.13, 4.63, 1.16, 5.79, 1.04, 6.83, NULL, 0, '2016-12-08 22:48:25', 4),
(212, 0.51, NULL, NULL, NULL, NULL, NULL, NULL, 0.04, 2.5500, 0.06, 0.22, 1.04, 1.39, 3.89, 0.53, 0.08, 4.49, 0.13, 4.63, 1.16, 5.79, 1.04, 6.83, NULL, 0, '2016-12-08 22:54:10', 4),
(213, 0.51, NULL, NULL, NULL, NULL, NULL, NULL, 0.04, 2.5500, 0.06, 0.22, 1.04, 1.39, 3.89, 1.31, 0.08, 5.28, 0.16, 5.44, 1.36, 6.80, 1.22, 8.02, NULL, 0, '2016-12-08 23:02:57', 4),
(214, 0.51, NULL, NULL, NULL, NULL, NULL, NULL, 0.04, 2.5500, 0.06, 0.22, 1.04, 1.39, 3.89, 1.31, 0.08, 5.28, 0.16, 5.44, 1.36, 6.80, 1.22, 8.02, NULL, 0, '2016-12-09 06:20:11', 4),
(215, 0.73, NULL, NULL, NULL, NULL, NULL, NULL, 0.05, 4.0000, 0.09, 0.34, 1.64, 2.18, 6.03, 2.63, 0.12, 8.77, 0.26, 9.04, 2.26, 11.30, 2.03, 13.33, NULL, 0, '2016-12-09 06:22:46', 4),
(216, 0.73, NULL, NULL, NULL, NULL, NULL, NULL, 0.05, 3.0000, 0.07, 0.25, 1.23, 1.64, 4.72, 2.63, 0.09, 7.44, 0.22, 7.66, 1.91, 9.57, 1.72, 11.30, NULL, 0, '2016-12-09 06:23:41', 4),
(217, 0.73, NULL, NULL, NULL, NULL, NULL, NULL, 0.05, 2.9000, 0.07, 0.25, 1.19, 1.58, 4.59, 2.63, 0.09, 7.30, 0.22, 7.52, 1.88, 9.40, 1.69, 11.09, NULL, 0, '2016-12-09 06:24:18', 4),
(218, 0.73, NULL, NULL, NULL, NULL, NULL, NULL, 0.05, 2.5000, 0.06, 0.21, 1.02, 1.36, 4.06, 2.63, 0.08, 6.77, 0.20, 6.97, 1.74, 8.71, 1.57, 10.28, NULL, 0, '2016-12-09 06:24:29', 4),
(219, 0.73, NULL, NULL, NULL, NULL, NULL, NULL, 0.05, 2.4000, 0.05, 0.20, 0.98, 1.31, 3.93, 2.63, 0.08, 6.63, 0.20, 6.83, 1.71, 8.54, 1.54, 10.08, NULL, 0, '2016-12-09 06:24:39', 4),
(220, 0.73, NULL, NULL, NULL, NULL, NULL, NULL, 0.05, 2.4000, 0.05, 0.20, 0.98, 1.31, 3.93, 2.63, 0.08, 6.63, 0.20, 6.83, 1.71, 8.54, 1.54, 10.08, NULL, 0, '2016-12-09 06:24:51', 4),
(221, 1.33, NULL, NULL, NULL, NULL, NULL, NULL, 0.09, 12.1500, 0.37, 1.37, 6.63, 8.84, 22.67, 2.63, 0.45, 25.75, 0.77, 26.53, 6.63, 33.16, 5.97, 39.13, NULL, 0, '2016-12-09 06:31:30', 3),
(222, 144.72, NULL, NULL, NULL, NULL, NULL, NULL, 10.13, 40.0000, 0.91, 3.38, 16.36, 21.82, 207.32, 14.50, 4.15, 225.97, 6.78, 232.75, 58.19, 290.94, 52.37, 343.30, NULL, 0, '2016-12-09 06:36:31', 4),
(223, 144.72, NULL, NULL, NULL, NULL, NULL, NULL, 10.13, 38.0000, 0.86, 3.21, 15.55, 20.73, 204.70, 14.50, 4.09, 223.29, 6.70, 229.99, 57.50, 287.49, 51.75, 339.24, NULL, 0, '2016-12-09 06:36:42', 4),
(224, 144.72, NULL, NULL, NULL, NULL, NULL, NULL, 10.13, 37.0000, 0.84, 3.13, 15.14, 20.18, 203.39, 14.50, 4.07, 221.96, 6.66, 228.61, 57.15, 285.77, 51.44, 337.21, NULL, 0, '2016-12-09 06:36:50', 4),
(225, 144.72, NULL, NULL, NULL, NULL, NULL, NULL, 10.13, 36.0000, 0.82, 3.04, 14.73, 19.64, 202.08, 14.50, 4.04, 220.62, 6.62, 227.24, 56.81, 284.04, 51.13, 335.17, NULL, 0, '2016-12-09 06:37:01', 4),
(226, 144.72, NULL, NULL, NULL, NULL, NULL, NULL, 10.13, 34.0000, 0.77, 2.87, 13.91, 18.55, 199.45, 14.50, 3.99, 217.94, 6.54, 224.48, 56.12, 280.60, 50.51, 331.11, NULL, 0, '2016-12-09 06:37:10', 4),
(227, 144.72, NULL, NULL, NULL, NULL, NULL, NULL, 10.13, 34.0000, 0.77, 2.87, 13.91, 18.55, 199.45, 14.50, 3.99, 217.94, 6.54, 224.48, 56.12, 280.60, 50.51, 331.11, NULL, 0, '2016-12-09 06:37:15', 4),
(228, 144.72, NULL, NULL, NULL, NULL, NULL, NULL, 10.13, 32.0000, 0.73, 2.71, 13.09, 17.45, 196.83, 14.50, 3.94, 215.27, 6.46, 221.72, 55.43, 277.15, 49.89, 327.04, NULL, 0, '2016-12-09 06:37:27', 4),
(229, 144.72, NULL, NULL, NULL, NULL, NULL, NULL, 10.13, 28.0000, 0.64, 2.37, 11.45, 15.27, 191.58, 14.50, 3.83, 209.91, 6.30, 216.21, 54.05, 270.26, 48.65, 318.91, NULL, 0, '2016-12-09 06:37:37', 4),
(230, 144.72, NULL, NULL, NULL, NULL, NULL, NULL, 10.13, 25.0000, 0.57, 2.11, 10.23, 13.64, 187.65, 14.50, 3.75, 205.90, 6.18, 212.08, 53.02, 265.09, 47.72, 312.81, NULL, 0, '2016-12-09 06:37:56', 4),
(231, 144.72, NULL, NULL, NULL, NULL, NULL, NULL, 10.13, 24.0000, 0.55, 2.03, 9.82, 13.09, 186.33, 14.50, 3.73, 204.56, 6.14, 210.70, 52.67, 263.37, 47.41, 310.78, NULL, 0, '2016-12-09 06:38:07', 4),
(232, 144.72, NULL, NULL, NULL, NULL, NULL, NULL, 10.13, 22.0000, 0.50, 1.86, 9.00, 12.00, 183.71, 14.50, 3.67, 201.88, 6.06, 207.94, 51.99, 259.93, 46.79, 306.71, NULL, 0, '2016-12-09 06:38:19', 4),
(233, 144.72, NULL, NULL, NULL, NULL, NULL, NULL, 10.13, 22.0000, 0.50, 1.86, 9.00, 12.00, 183.71, 14.50, 3.67, 201.88, 6.06, 207.94, 51.99, 259.93, 46.79, 306.71, NULL, 0, '2016-12-09 06:38:48', 4),
(234, 226.80, NULL, NULL, NULL, NULL, NULL, NULL, 15.88, 22.0000, 0.50, 1.86, 9.00, 12.00, 271.54, 14.50, 5.43, 291.47, 8.74, 300.21, 75.05, 375.26, 67.55, 442.81, NULL, 0, '2016-12-09 06:40:20', 4),
(235, 226.80, NULL, NULL, NULL, NULL, NULL, NULL, 15.88, 22.0000, 0.50, 1.86, 9.00, 12.00, 271.54, 14.50, 5.43, 291.47, 8.74, 300.21, 75.05, 375.26, 67.55, 442.81, NULL, 0, '2016-12-09 06:41:17', 4),
(236, 226.80, NULL, NULL, NULL, NULL, NULL, NULL, 15.88, 22.0000, 0.50, 1.86, 9.00, 12.00, 271.54, 14.50, 5.43, 291.47, 8.74, 300.21, 75.05, 375.26, 67.55, 442.81, NULL, 0, '2016-12-09 06:41:36', 4),
(237, 226.80, NULL, NULL, NULL, NULL, NULL, NULL, 15.88, 20.0000, 0.45, 1.69, 8.18, 10.91, 268.91, 14.50, 5.38, 288.79, 8.66, 297.45, 74.36, 371.82, 66.93, 438.75, NULL, 0, '2016-12-09 06:42:34', 4),
(238, 226.80, NULL, NULL, NULL, NULL, NULL, NULL, 15.88, 18.0000, 0.41, 1.52, 7.36, 9.82, 266.29, 14.50, 5.33, 286.11, 8.58, 294.70, 73.67, 368.37, 66.31, 434.68, NULL, 0, '2016-12-09 06:42:48', 4),
(239, 226.80, NULL, NULL, NULL, NULL, NULL, NULL, 15.88, 12.0000, 0.27, 1.01, 4.91, 6.55, 258.42, 14.50, 5.17, 278.09, 8.34, 286.43, 71.61, 358.04, 64.45, 422.48, NULL, 0, '2016-12-09 06:42:59', 4),
(240, 226.80, NULL, NULL, NULL, NULL, NULL, NULL, 15.88, 12.0000, 0.27, 1.01, 4.91, 6.55, 258.42, 14.50, 5.17, 278.09, 8.34, 286.43, 71.61, 358.04, 64.45, 422.48, NULL, 0, '2016-12-09 06:45:59', 4),
(241, 226.80, NULL, NULL, NULL, NULL, NULL, NULL, 15.88, 12.0000, 0.27, 1.01, 4.91, 6.55, 258.42, 14.50, 5.17, 278.09, 8.34, 286.43, 71.61, 358.04, 64.45, 422.48, NULL, 0, '2016-12-09 06:46:03', 4),
(242, 226.80, NULL, NULL, NULL, NULL, NULL, NULL, 15.88, 12.0000, 0.27, 1.01, 4.91, 6.55, 258.42, 14.50, 5.17, 278.09, 8.34, 286.43, 71.61, 358.04, 64.45, 422.48, NULL, 0, '2016-12-09 06:46:07', 4),
(243, 226.80, NULL, NULL, NULL, NULL, NULL, NULL, 15.88, 12.0000, 0.27, 1.01, 4.91, 6.55, 258.42, 14.50, 5.17, 278.09, 8.34, 286.43, 71.61, 358.04, 64.45, 422.48, NULL, 0, '2016-12-09 06:46:18', 4),
(244, 226.80, NULL, NULL, NULL, NULL, NULL, NULL, 15.88, 12.0000, 0.27, 1.01, 4.91, 6.55, 258.42, 14.50, 5.17, 278.09, 8.34, 286.43, 71.61, 358.04, 64.45, 422.48, NULL, 0, '2016-12-09 06:46:31', 4),
(245, 226.80, NULL, NULL, NULL, NULL, NULL, NULL, 15.88, 12.0000, 0.27, 1.01, 4.91, 6.55, 258.42, 14.50, 5.17, 278.09, 8.34, 286.43, 71.61, 358.04, 64.45, 422.48, NULL, 0, '2016-12-09 06:46:33', 4),
(246, 226.80, NULL, NULL, NULL, NULL, NULL, NULL, 15.88, 12.0000, 0.27, 1.01, 4.91, 6.55, 258.42, 14.50, 5.17, 278.09, 8.34, 286.43, 71.61, 358.04, 64.45, 422.48, NULL, 0, '2016-12-09 06:46:36', 4),
(247, 226.80, NULL, NULL, NULL, NULL, NULL, NULL, 15.88, 12.0000, 0.27, 1.01, 4.91, 6.55, 258.42, 14.50, 5.17, 278.09, 8.34, 286.43, 71.61, 358.04, 64.45, 422.48, NULL, 0, '2016-12-09 06:59:04', 4),
(248, 226.80, NULL, NULL, NULL, NULL, NULL, NULL, 15.88, 12.0000, 0.27, 1.01, 4.91, 6.55, 258.42, 14.50, 5.17, 278.09, 8.34, 286.43, 71.61, 358.04, 64.45, 422.48, NULL, 0, '2016-12-09 06:59:41', 4),
(249, 226.80, NULL, NULL, NULL, NULL, NULL, NULL, 15.88, 12.0000, 0.27, 1.01, 4.91, 6.55, 258.42, 14.50, 5.17, 278.09, 8.34, 286.43, 71.61, 358.04, 64.45, 422.48, NULL, 0, '2016-12-09 06:59:46', 4),
(250, 226.80, NULL, NULL, NULL, NULL, NULL, NULL, 15.88, 12.0000, 0.27, 1.01, 4.91, 6.55, 258.42, 14.50, 5.17, 278.09, 8.34, 286.43, 71.61, 358.04, 64.45, 422.48, NULL, 0, '2016-12-09 07:02:18', 4),
(251, 226.80, NULL, NULL, NULL, NULL, NULL, NULL, 15.88, 12.0000, 0.27, 1.01, 4.91, 6.55, 258.42, 14.50, 5.17, 278.09, 8.34, 286.43, 71.61, 358.04, 64.45, 422.48, NULL, 0, '2016-12-09 07:02:21', 4),
(252, 226.80, NULL, NULL, NULL, NULL, NULL, NULL, 15.88, 12.0000, 0.27, 1.01, 4.91, 6.55, 258.42, 14.50, 5.17, 278.09, 8.34, 286.43, 71.61, 358.04, 64.45, 422.48, NULL, 0, '2016-12-09 07:02:23', 4),
(253, 226.80, NULL, NULL, NULL, NULL, NULL, NULL, 15.88, 12.0000, 0.27, 1.01, 4.91, 6.55, 258.42, 14.50, 5.17, 278.09, 8.34, 286.43, 71.61, 358.04, 64.45, 422.48, NULL, 0, '2016-12-09 07:02:25', 4),
(254, 226.80, NULL, NULL, NULL, NULL, NULL, NULL, 15.88, 12.0000, 0.27, 1.01, 4.91, 6.55, 258.42, 14.50, 5.17, 278.09, 8.34, 286.43, 71.61, 358.04, 64.45, 422.48, NULL, 0, '2016-12-09 07:05:39', 4),
(255, 226.80, NULL, NULL, NULL, NULL, NULL, NULL, 15.88, 12.0000, 0.27, 1.01, 4.91, 6.55, 258.42, 14.50, 5.17, 278.09, 8.34, 286.43, 71.61, 358.04, 64.45, 422.48, NULL, 0, '2016-12-09 07:05:41', 4),
(256, 226.80, NULL, NULL, NULL, NULL, NULL, NULL, 15.88, 12.0000, 0.27, 1.01, 4.91, 6.55, 258.42, 14.50, 5.17, 278.09, 8.34, 286.43, 71.61, 358.04, 64.45, 422.48, NULL, 0, '2016-12-09 07:05:43', 4),
(257, 226.80, NULL, NULL, NULL, NULL, NULL, NULL, 15.88, 10.0000, 0.23, 0.85, 4.09, 5.45, 255.79, 14.50, 5.12, 275.41, 8.26, 283.67, 70.92, 354.59, 63.83, 418.42, NULL, 0, '2016-12-09 07:08:02', 4),
(258, 226.80, NULL, NULL, NULL, NULL, NULL, NULL, 15.88, 10.0000, 0.23, 0.85, 4.09, 5.45, 255.79, 14.50, 5.12, 275.41, 8.26, 283.67, 70.92, 354.59, 63.83, 418.42, NULL, 0, '2016-12-09 07:08:06', 4),
(259, 78.88, NULL, NULL, NULL, NULL, NULL, NULL, 5.52, 76.3400, 2.31, 8.61, 41.64, 55.52, 217.93, 50.00, 4.36, 272.29, 8.17, 280.45, 70.11, 350.57, 63.10, 413.67, NULL, 0, '2016-12-09 07:16:10', 3),
(260, 78.88, NULL, NULL, NULL, NULL, NULL, NULL, 5.52, 76.3400, 2.31, 8.61, 41.64, 55.52, 217.93, 50.00, 4.36, 272.29, 8.17, 280.45, 70.11, 350.57, 63.10, 413.67, NULL, 0, '2016-12-09 07:16:13', 3),
(261, 78.88, NULL, NULL, NULL, NULL, NULL, NULL, 5.52, 76.3400, 2.31, 8.61, 41.64, 55.52, 217.93, 50.00, 4.36, 272.29, 8.17, 280.45, 70.11, 350.57, 63.10, 413.67, NULL, 0, '2016-12-09 07:16:15', 3),
(262, 78.88, NULL, NULL, NULL, NULL, NULL, NULL, 5.52, 76.3400, 2.31, 8.61, 41.64, 55.52, 217.93, 50.00, 4.36, 272.29, 8.17, 280.45, 70.11, 350.57, 63.10, 413.67, NULL, 0, '2016-12-09 07:16:17', 3),
(263, 78.88, NULL, NULL, NULL, NULL, NULL, NULL, 5.52, 76.3400, 2.31, 8.61, 41.64, 55.52, 217.93, 50.00, 4.36, 272.29, 8.17, 280.45, 70.11, 350.57, 63.10, 413.67, NULL, 0, '2016-12-09 07:18:49', 3),
(264, 78.88, NULL, NULL, NULL, NULL, NULL, NULL, 5.52, 76.3400, 2.31, 8.61, 41.64, 55.52, 217.93, 50.00, 4.36, 272.29, 8.17, 280.45, 70.11, 350.57, 63.10, 413.67, NULL, 0, '2016-12-09 07:18:54', 3),
(265, 78.88, NULL, NULL, NULL, NULL, NULL, NULL, 5.52, 76.3400, 2.31, 8.61, 41.64, 55.52, 217.93, 50.00, 4.36, 272.29, 8.17, 280.45, 70.11, 350.57, 63.10, 413.67, NULL, 0, '2016-12-09 07:18:56', 3),
(266, 78.88, NULL, NULL, NULL, NULL, NULL, NULL, 5.52, 76.3400, 2.31, 8.61, 41.64, 55.52, 217.93, 50.00, 4.36, 272.29, 8.17, 280.45, 70.11, 350.57, 63.10, 413.67, NULL, 0, '2016-12-09 07:18:58', 3),
(267, 78.88, NULL, NULL, NULL, NULL, NULL, NULL, 5.52, 76.3400, 2.31, 8.61, 41.64, 55.52, 217.93, 50.00, 4.36, 272.29, 8.17, 280.45, 70.11, 350.57, 63.10, 413.67, NULL, 0, '2016-12-09 07:20:33', 3),
(268, 78.88, NULL, NULL, NULL, NULL, NULL, NULL, 5.52, 34.7000, 1.05, 3.91, 18.93, 25.24, 145.10, 50.00, 2.90, 198.00, 5.94, 203.94, 50.98, 254.92, 45.89, 300.81, NULL, 0, '2016-12-09 07:22:32', 3),
(269, 78.88, NULL, NULL, NULL, NULL, NULL, NULL, 5.52, 34.7000, 1.05, 3.91, 18.93, 25.24, 145.10, 50.00, 2.90, 198.00, 5.94, 203.94, 50.98, 254.92, 45.89, 300.81, NULL, 0, '2016-12-09 07:22:52', 3),
(270, 78.88, NULL, NULL, NULL, NULL, NULL, NULL, 5.52, 34.7000, 1.05, 3.91, 18.93, 25.24, 145.10, 50.00, 2.90, 198.00, 5.94, 203.94, 50.98, 254.92, 45.89, 300.81, NULL, 0, '2016-12-09 07:24:09', 3),
(271, 78.88, NULL, NULL, NULL, NULL, NULL, NULL, 5.52, 50.0000, 1.52, 5.64, 27.27, 36.36, 171.86, 50.00, 3.44, 225.29, 6.76, 232.05, 58.01, 290.07, 52.21, 342.28, NULL, 0, '2016-12-09 07:24:24', 3),
(272, 78.88, NULL, NULL, NULL, NULL, NULL, NULL, 5.52, 50.0000, 1.52, 5.64, 27.27, 36.36, 171.86, 50.00, 3.44, 225.29, 6.76, 232.05, 58.01, 290.07, 52.21, 342.28, NULL, 0, '2016-12-09 07:24:33', 3),
(273, 78.88, NULL, NULL, NULL, NULL, NULL, NULL, 5.52, 34.4700, 1.04, 3.89, 18.80, 25.07, 144.69, 50.00, 2.89, 197.59, 5.93, 203.51, 50.88, 254.39, 45.79, 300.18, NULL, 0, '2016-12-09 07:25:05', 3),
(274, 78.88, NULL, NULL, NULL, NULL, NULL, NULL, 5.52, 34.4700, 1.04, 3.89, 18.80, 25.07, 144.69, 50.00, 2.89, 197.59, 5.93, 203.51, 50.88, 254.39, 45.79, 300.18, NULL, 0, '2016-12-09 07:25:08', 3),
(275, 78.88, NULL, NULL, NULL, NULL, NULL, NULL, 5.52, 34.4700, 1.04, 3.89, 18.80, 25.07, 144.69, 50.00, 2.89, 197.59, 5.93, 203.51, 50.88, 254.39, 45.79, 300.18, NULL, 0, '2016-12-09 07:25:10', 3),
(276, 78.88, NULL, NULL, NULL, NULL, NULL, NULL, 5.52, 34.4700, 1.04, 3.89, 18.80, 25.07, 144.69, 50.00, 2.89, 197.59, 5.93, 203.51, 50.88, 254.39, 45.79, 300.18, NULL, 0, '2016-12-09 07:25:12', 3),
(277, 78.88, NULL, NULL, NULL, NULL, NULL, NULL, 5.52, 34.4700, 1.04, 3.89, 18.80, 25.07, 144.69, 50.00, 2.89, 197.59, 5.93, 203.51, 50.88, 254.39, 45.79, 300.18, NULL, 0, '2016-12-09 07:25:15', 3),
(278, 78.88, NULL, NULL, NULL, 100.00, NULL, NULL, 12.52, 34.4700, 1.04, 3.89, 18.80, 25.07, 251.69, 50.00, 5.03, 306.73, 9.20, 315.93, 78.98, 394.91, 71.08, 465.99, NULL, 0, '2016-12-09 07:25:44', 3),
(279, 78.88, NULL, NULL, NULL, 100.00, NULL, NULL, 12.52, 34.4700, 1.04, 3.89, 18.80, 25.07, 251.69, 50.00, 5.03, 306.73, 9.20, 315.93, 78.98, 394.91, 71.08, 465.99, NULL, 0, '2016-12-09 07:25:48', 3),
(280, 78.88, NULL, NULL, NULL, 180.00, NULL, NULL, 18.12, 34.4700, 1.04, 3.89, 18.80, 25.07, 337.29, 50.00, 6.75, 394.04, 11.82, 405.86, 101.46, 507.32, 91.32, 598.64, NULL, 0, '2016-12-09 07:26:16', 3),
(281, 78.88, NULL, NULL, NULL, 160.00, NULL, NULL, 16.72, 34.4700, 1.04, 3.89, 18.80, 25.07, 315.89, 50.00, 6.32, 372.21, 11.17, 383.38, 95.84, 479.22, 86.26, 565.48, NULL, 0, '2016-12-09 07:26:25', 3),
(282, 11.65, NULL, NULL, NULL, NULL, NULL, NULL, 0.82, 6.9400, 0.32, 1.17, 5.68, 7.57, 30.67, 7.08, 0.61, 38.37, 1.15, 39.52, 9.88, 49.40, 8.89, 58.29, NULL, 0, '2016-12-09 07:27:01', 2),
(283, 11.65, NULL, NULL, NULL, NULL, NULL, NULL, 0.82, 6.9400, 0.21, 0.78, 3.79, 5.05, 24.60, 7.08, 0.49, 32.18, 0.97, 33.14, 8.29, 41.43, 7.46, 48.89, NULL, 0, '2016-12-09 07:27:56', 3),
(284, 11.65, NULL, NULL, NULL, NULL, NULL, NULL, 0.82, 6.9400, 0.21, 0.78, 3.79, 5.05, 24.60, 7.08, 0.49, 32.18, 0.97, 33.14, 8.29, 41.43, 7.46, 48.89, NULL, 0, '2016-12-09 07:28:01', 3),
(285, 11.65, NULL, NULL, NULL, NULL, NULL, NULL, 0.82, 6.8000, 0.21, 0.77, 3.71, 4.95, 24.36, 7.08, 0.49, 31.93, 0.96, 32.89, 8.22, 41.11, 7.40, 48.51, NULL, 0, '2016-12-09 07:28:14', 3),
(286, 11.65, NULL, NULL, NULL, NULL, NULL, NULL, 0.82, 6.8000, 0.21, 0.77, 3.71, 4.95, 24.36, 7.08, 0.49, 31.93, 0.96, 32.89, 8.22, 41.11, 7.40, 48.51, NULL, 0, '2016-12-09 07:28:20', 3),
(287, 11.65, NULL, NULL, NULL, NULL, NULL, NULL, 0.82, 6.6000, 0.20, 0.74, 3.60, 4.80, 24.01, 7.08, 0.48, 31.57, 0.95, 32.52, 8.13, 40.65, 7.32, 47.97, NULL, 0, '2016-12-09 07:28:35', 3),
(288, 11.65, NULL, NULL, NULL, NULL, NULL, NULL, 0.82, 6.0000, 0.18, 0.68, 3.27, 4.36, 22.96, 7.08, 0.46, 30.50, 0.92, 31.42, 7.85, 39.27, 7.07, 46.34, NULL, 0, '2016-12-09 07:28:45', 3),
(289, 11.65, NULL, NULL, NULL, NULL, NULL, NULL, 0.82, 6.0000, 0.18, 0.68, 3.27, 4.36, 22.96, 7.08, 0.46, 30.50, 0.92, 31.42, 7.85, 39.27, 7.07, 46.34, NULL, 0, '2016-12-09 07:28:51', 3),
(290, 11.65, NULL, NULL, NULL, NULL, NULL, NULL, 0.82, 5.8000, 0.18, 0.65, 3.16, 4.22, 22.61, 7.08, 0.45, 30.15, 0.90, 31.05, 7.76, 38.81, 6.99, 45.80, NULL, 0, '2016-12-09 07:29:17', 3),
(291, 11.65, NULL, NULL, NULL, NULL, NULL, NULL, 0.82, 5.6000, 0.17, 0.63, 3.05, 4.07, 22.26, 7.08, 0.45, 29.79, 0.89, 30.68, 7.67, 38.35, 6.90, 45.26, NULL, 0, '2016-12-09 07:29:32', 3),
(292, 11.65, NULL, NULL, NULL, NULL, NULL, NULL, 0.82, 5.6000, 0.17, 0.63, 3.05, 4.07, 22.26, 7.08, 0.45, 29.79, 0.89, 30.68, 7.67, 38.35, 6.90, 45.26, NULL, 0, '2016-12-09 07:29:59', 3),
(293, 226.80, NULL, NULL, NULL, NULL, 2.00, NULL, 16.02, 10.0000, 0.23, 0.85, 4.09, 5.45, 257.93, 14.50, 5.16, 277.59, 8.33, 285.92, 71.48, 357.40, 64.33, 421.73, NULL, 0, '2016-12-09 13:12:56', 4),
(294, 226.80, NULL, NULL, NULL, NULL, 0.00, NULL, 15.88, 10.0000, 0.23, 0.85, 4.09, 5.45, 255.79, 14.50, 5.12, 275.41, 8.26, 283.67, 70.92, 354.59, 63.83, 418.42, NULL, 0, '2016-12-09 13:13:35', 4),
(295, 226.80, NULL, NULL, NULL, NULL, 0.00, NULL, 15.88, 10.0000, 0.23, 0.85, 4.09, 5.45, 255.79, 14.50, 5.12, 275.41, 8.26, 283.67, 70.92, 354.59, 63.83, 418.42, NULL, 0, '2016-12-09 13:17:41', 4),
(296, 226.80, NULL, NULL, NULL, NULL, 0.00, NULL, 15.88, 10.0000, 0.23, 0.85, 4.09, 5.45, 255.79, 14.50, 5.12, 275.41, 8.26, 283.67, 70.92, 354.59, 63.83, 418.42, NULL, 0, '2016-12-09 13:17:46', 4),
(297, 226.80, NULL, NULL, NULL, NULL, 0.00, NULL, 15.88, 10.0000, 0.23, 0.85, 4.09, 5.45, 255.79, 14.50, 5.12, 275.41, 8.26, 283.67, 70.92, 354.59, 63.83, 418.42, NULL, 0, '2016-12-09 13:17:47', 4),
(298, 226.80, NULL, NULL, NULL, NULL, 0.00, NULL, 15.88, 8.0000, 0.18, 0.68, 3.27, 4.36, 253.17, 14.50, 5.06, 272.73, 8.18, 280.92, 70.23, 351.14, 63.21, 414.35, NULL, 0, '2016-12-09 13:19:09', 4),
(299, 226.80, NULL, NULL, NULL, NULL, 0.00, NULL, 15.88, 6.0000, 0.14, 0.51, 2.45, 3.27, 250.55, 14.50, 5.01, 270.06, 8.10, 278.16, 69.54, 347.70, 62.59, 410.29, NULL, 0, '2016-12-09 13:19:22', 4),
(300, 226.80, NULL, NULL, NULL, NULL, 0.00, NULL, 15.88, 6.0000, 0.14, 0.51, 2.45, 3.27, 250.55, 14.50, 5.01, 270.06, 8.10, 278.16, 69.54, 347.70, 62.59, 410.29, NULL, 0, '2016-12-09 13:19:26', 4),
(301, 226.80, NULL, NULL, NULL, NULL, 0.00, NULL, 15.88, 6.0000, 0.14, 0.51, 2.45, 3.27, 250.55, 14.50, 5.01, 270.06, 8.10, 278.16, 69.54, 347.70, 62.59, 410.29, NULL, 0, '2016-12-09 13:19:38', 4),
(302, 1.97, NULL, NULL, NULL, NULL, NULL, NULL, 0.14, 3.4700, 0.32, 1.17, 5.68, 7.57, 20.31, 14.88, 0.41, 35.59, 1.07, 36.66, 9.16, 45.82, 8.25, 54.07, NULL, 0, '2016-12-12 17:32:19', NULL),
(303, 1.97, NULL, NULL, NULL, NULL, NULL, NULL, 0.14, 12.1500, 0.37, 1.37, 6.62, 8.83, 23.35, 4.38, 0.47, 28.19, 0.85, 29.03, 7.26, 36.29, 6.53, 42.82, NULL, 0, '2016-12-10 09:17:52', 3),
(304, 1.97, NULL, NULL, NULL, NULL, NULL, NULL, 0.14, 12.1500, 0.37, 1.37, 6.62, 8.83, 23.35, 1.75, 0.47, 25.56, 0.77, 26.33, 6.58, 32.91, 5.92, 38.84, NULL, 0, '2016-12-10 09:18:42', 3),
(305, 1.97, NULL, NULL, NULL, NULL, NULL, NULL, 0.14, 12.1500, 0.37, 1.37, 6.62, 8.83, 23.35, 1.75, 0.47, 25.56, 0.77, 26.33, 6.58, 32.91, 5.92, 38.84, NULL, 0, '2016-12-10 09:18:47', 3),
(306, 1.97, NULL, NULL, NULL, NULL, NULL, NULL, 0.14, 0.0000, 0.00, 0.00, 0.00, 0.00, 2.10, 1.75, 0.04, 3.89, 0.12, 4.01, 1.00, 5.01, 0.90, 5.92, NULL, 0, '2016-12-10 09:19:06', 3),
(307, 1.97, NULL, NULL, NULL, NULL, NULL, NULL, 0.14, 4.0000, 0.12, 0.45, 2.18, 2.91, 9.10, 1.75, 0.18, 11.03, 0.33, 11.36, 2.84, 14.20, 2.56, 16.76, NULL, 0, '2016-12-10 09:19:18', 3),
(308, 1.97, NULL, NULL, NULL, NULL, NULL, NULL, 0.14, 4.0000, 0.36, 1.35, 6.55, 8.73, 23.09, 4.38, 0.46, 27.93, 0.84, 28.77, 7.19, 35.96, 6.47, 42.43, NULL, 0, '2016-12-10 09:20:40', NULL),
(309, 1.97, NULL, NULL, NULL, NULL, NULL, NULL, 0.14, 3.0000, 0.27, 1.01, 4.91, 6.55, 17.84, 4.38, 0.36, 22.58, 0.68, 23.25, 5.81, 29.07, 5.23, 34.30, NULL, 0, '2016-12-10 09:22:44', NULL),
(310, 1.97, NULL, NULL, NULL, NULL, NULL, NULL, 0.14, 3.0000, 0.27, 1.01, 4.91, 6.55, 17.84, 4.38, 0.36, 22.58, 0.68, 23.25, 5.81, 29.07, 5.23, 34.30, NULL, 0, '2016-12-10 09:22:48', NULL),
(311, 1.97, NULL, NULL, NULL, NULL, NULL, NULL, 0.14, 3.0000, 0.27, 1.01, 4.91, 6.55, 17.84, 4.38, 0.36, 22.58, 0.68, 23.25, 5.81, 29.07, 5.23, 34.30, NULL, 0, '2016-12-10 09:25:05', NULL),
(312, 1.97, NULL, NULL, NULL, NULL, NULL, NULL, 0.14, 0.0000, 0.00, 0.00, 0.00, 0.00, 2.10, 4.38, 0.04, 6.52, 0.20, 6.72, 1.68, 8.39, 1.51, 9.90, NULL, 0, '2016-12-10 09:25:13', NULL),
(313, 1.97, NULL, NULL, NULL, NULL, NULL, NULL, 0.14, 0.0000, 0.00, 0.00, 0.00, 0.00, 2.10, 4.38, 0.04, 6.52, 0.20, 6.72, 1.68, 8.39, 1.51, 9.90, NULL, 0, '2016-12-10 09:25:20', NULL),
(314, 1.97, NULL, NULL, NULL, NULL, NULL, NULL, 0.14, 0.0000, 0.00, 0.00, 0.00, 0.00, 2.10, 4.38, 0.04, 6.52, 0.20, 6.72, 1.68, 8.39, 1.51, 9.90, NULL, 0, '2016-12-10 09:25:23', NULL),
(315, 1.97, NULL, NULL, NULL, NULL, NULL, NULL, 0.14, 0.0000, 0.00, 0.00, 0.00, 0.00, 2.10, 4.38, 0.04, 6.52, 0.20, 6.72, 1.68, 8.39, 1.51, 9.90, NULL, 0, '2016-12-10 09:25:25', NULL),
(316, 1.97, NULL, NULL, NULL, NULL, NULL, NULL, 0.14, 0.0000, 0.00, 0.00, 0.00, 0.00, 2.10, 4.38, 0.04, 6.52, 0.20, 6.72, 1.68, 8.39, 1.51, 9.90, NULL, 0, '2016-12-10 09:25:27', NULL),
(317, 1.97, NULL, NULL, NULL, NULL, NULL, NULL, 0.14, 0.0000, 0.00, 0.00, 0.00, 0.00, 2.10, 4.38, 0.04, 6.52, 0.20, 6.72, 1.68, 8.39, 1.51, 9.90, NULL, 0, '2016-12-10 09:25:30', NULL),
(318, 1.97, NULL, NULL, NULL, NULL, NULL, NULL, 0.14, 0.0000, 0.00, 0.00, 0.00, 0.00, 2.10, 4.38, 0.04, 6.52, 0.20, 6.72, 1.68, 8.39, 1.51, 9.90, NULL, 0, '2016-12-10 09:25:34', NULL),
(319, 1.97, NULL, NULL, NULL, NULL, NULL, NULL, 0.14, 0.0000, 0.00, 0.00, 0.00, 0.00, 2.10, 4.38, 0.04, 6.52, 0.20, 6.72, 1.68, 8.39, 1.51, 9.90, NULL, 0, '2016-12-10 09:25:37', NULL),
(320, 1.97, NULL, NULL, NULL, NULL, NULL, NULL, 0.14, 0.0000, 0.00, 0.00, 0.00, 0.00, 2.10, 4.38, 0.04, 6.52, 0.20, 6.72, 1.68, 8.39, 1.51, 9.90, NULL, 0, '2016-12-10 09:25:41', NULL),
(321, 1.97, NULL, NULL, NULL, NULL, NULL, NULL, 0.14, 0.0000, 0.00, 0.00, 0.00, 0.00, 2.10, 4.38, 0.04, 6.52, 0.20, 6.72, 1.68, 8.39, 1.51, 9.90, NULL, 0, '2016-12-10 09:25:43', NULL),
(322, 1.97, NULL, NULL, NULL, NULL, NULL, NULL, 0.14, 0.0000, 0.00, 0.00, 0.00, 0.00, 2.10, 4.38, 0.04, 6.52, 0.20, 6.72, 1.68, 8.39, 1.51, 9.90, NULL, 0, '2016-12-10 09:25:45', NULL),
(323, 1.97, NULL, NULL, NULL, NULL, NULL, NULL, 0.14, 0.0000, 0.00, 0.00, 0.00, 0.00, 2.10, 4.38, 0.04, 6.52, 0.20, 6.72, 1.68, 8.39, 1.51, 9.90, NULL, 0, '2016-12-10 09:25:48', NULL),
(324, 1.97, NULL, NULL, NULL, NULL, NULL, NULL, 0.14, 13.8800, 0.42, 1.56, 7.57, 10.09, 26.38, 10.63, 0.53, 37.53, 1.13, 38.66, 9.66, 48.32, 8.70, 57.02, NULL, 0, '2016-12-10 09:48:30', 3),
(325, 1.97, NULL, NULL, NULL, NULL, NULL, NULL, 0.14, 3.4700, 0.11, 0.39, 1.89, 2.52, 8.17, 10.63, 0.16, 18.96, 0.57, 19.53, 4.88, 24.41, 4.39, 28.81, NULL, 0, '2016-12-10 09:48:58', 3),
(326, 1.97, NULL, NULL, NULL, NULL, NULL, NULL, 0.14, 3.8100, 0.12, 0.43, 2.08, 2.77, 8.77, 10.63, 0.18, 19.57, 0.59, 20.15, 5.04, 25.19, 4.53, 29.73, NULL, 0, '2016-12-10 09:50:11', 3),
(327, 1.97, NULL, NULL, NULL, NULL, NULL, NULL, 0.14, 4.1600, 0.13, 0.47, 2.27, 3.03, 9.38, 10.63, 0.19, 20.19, 0.61, 20.80, 5.20, 26.00, 4.68, 30.68, NULL, 0, '2016-12-10 09:50:40', 3),
(328, 1.97, NULL, NULL, NULL, NULL, NULL, NULL, 0.14, 4.5100, 0.14, 0.51, 2.46, 3.28, 9.99, 10.63, 0.20, 20.82, 0.62, 21.44, 5.36, 26.80, 4.82, 31.62, NULL, 0, '2016-12-10 09:51:00', 3),
(329, 1.97, NULL, NULL, NULL, NULL, NULL, NULL, 0.14, 4.8500, 0.15, 0.55, 2.65, 3.53, 10.59, 10.63, 0.21, 21.42, 0.64, 22.07, 5.52, 27.58, 4.96, 32.55, NULL, 0, '2016-12-10 09:51:45', 3),
(330, 1.97, NULL, NULL, NULL, NULL, NULL, NULL, 0.14, 4.8400, 0.15, 0.55, 2.64, 3.52, 10.57, 10.63, 0.21, 21.40, 0.64, 22.05, 5.51, 27.56, 4.96, 32.52, NULL, 0, '2016-12-10 09:52:07', 3),
(331, 1.97, NULL, NULL, NULL, NULL, NULL, NULL, 0.14, 4.8000, 0.15, 0.54, 2.62, 3.49, 10.50, 10.63, 0.21, 21.33, 0.64, 21.97, 5.49, 27.47, 4.94, 32.41, NULL, 0, '2016-12-10 09:52:16', 3),
(332, 1.97, NULL, NULL, NULL, NULL, NULL, NULL, 0.14, 4.8100, 0.15, 0.54, 2.62, 3.50, 10.52, 10.63, 0.21, 21.35, 0.64, 21.99, 5.50, 27.49, 4.95, 32.44, NULL, 0, '2016-12-10 09:52:24', 3),
(333, 1.97, NULL, NULL, NULL, NULL, NULL, NULL, 0.14, 4.8200, 0.15, 0.54, 2.63, 3.51, 10.53, 10.63, 0.21, 21.37, 0.64, 22.01, 5.50, 27.51, 4.95, 32.46, NULL, 0, '2016-12-10 09:52:32', 3),
(334, 1.97, NULL, NULL, NULL, NULL, NULL, NULL, 0.14, 4.8100, 0.15, 0.54, 2.62, 3.50, 10.52, 10.63, 0.21, 21.35, 0.64, 21.99, 5.50, 27.49, 4.95, 32.44, NULL, 0, '2016-12-10 09:52:42', 3),
(335, 1.97, NULL, NULL, NULL, NULL, NULL, NULL, 0.14, 4.8100, 0.15, 0.54, 2.62, 3.50, 10.52, 10.63, 0.21, 21.35, 0.64, 21.99, 5.50, 27.49, 4.95, 32.44, NULL, 0, '2016-12-10 09:53:27', 3),
(336, 224.94, NULL, 83.81, NULL, NULL, 600.00, NULL, 63.61, 13.8800, 1.26, 4.69, 22.71, 30.28, 1045.19, 78.30, 20.90, 1144.40, 34.33, 1178.73, 294.68, 1473.41, 265.21, 1738.62, NULL, 0, '2016-12-12 17:56:36', NULL),
(337, 0.46, NULL, NULL, NULL, NULL, NULL, NULL, 0.03, 1.5422, 0.14, 0.52, 2.52, 3.36, 8.58, 0.00, 0.17, 8.75, 0.26, 9.02, 2.25, 11.27, 2.03, 13.30, NULL, 0, '2016-12-12 17:32:57', NULL),
(338, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 2.3133, 0.21, 0.78, 3.79, 5.05, 12.14, 2.45, 0.24, 14.83, 0.44, 15.28, 3.82, 19.10, 3.44, 22.53, NULL, 0, '2016-12-12 18:18:48', NULL),
(339, 0.46, NULL, NULL, NULL, NULL, NULL, NULL, 0.03, 5.4000, 0.49, 1.83, 8.83, 11.78, 28.81, NULL, 0.58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2016-12-12 10:33:23', NULL),
(340, 0.56, NULL, NULL, NULL, NULL, NULL, NULL, 0.04, 0.2082, 0.02, 0.07, 0.34, 0.45, 1.69, 0.06, 0.03, 1.78, 0.05, 1.84, 0.46, 2.29, 0.41, 2.71, NULL, 0, '2016-12-12 17:41:27', NULL),
(341, 0.42, NULL, NULL, NULL, NULL, NULL, NULL, 0.03, 0.2082, 0.02, 0.07, 0.34, 0.45, 1.54, 0.06, 0.03, 1.63, 0.05, 1.68, 0.42, 2.10, 0.38, 2.48, NULL, 0, '2016-12-12 17:41:55', NULL),
(342, 0.28, NULL, NULL, NULL, NULL, NULL, NULL, 0.02, 0.0964, 0.01, 0.03, 0.16, 0.21, 0.81, 0.01, 0.02, 0.83, 0.02, 0.85, 0.21, 1.07, 0.19, 1.26, NULL, 0, '2016-12-12 17:34:49', NULL),
(343, 13.24, NULL, NULL, NULL, NULL, NULL, NULL, 0.93, 1.7350, 0.16, 0.59, 2.84, 3.79, 23.27, 9.63, 0.47, 33.36, 1.00, 34.36, 8.59, 42.95, 7.73, 50.69, NULL, 0, '2016-12-12 17:44:37', NULL),
(344, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 8.75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2016-12-12 15:46:31', NULL),
(345, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 8.75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2016-12-12 15:46:35', NULL),
(346, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 6.9400, 0.32, 1.17, 5.68, 7.57, 18.21, 8.75, 0.36, 27.32, 0.82, 28.14, 7.04, 35.18, 6.33, 41.51, NULL, 0, '2016-12-12 15:46:56', 2),
(347, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 6.9400, 0.32, 1.17, 5.68, 7.57, 18.21, 8.75, 0.36, 27.32, 0.82, 28.14, 7.04, 35.18, 6.33, 41.51, NULL, 0, '2016-12-12 15:46:59', 2),
(348, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 6.9400, 0.32, 1.17, 5.68, 7.57, 18.21, 12.25, 0.36, 30.82, 0.92, 31.75, 7.94, 39.68, 7.14, 46.83, NULL, 0, '2016-12-12 16:26:14', 2),
(349, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 6.9400, 0.21, 0.78, 3.79, 5.05, 12.14, 12.25, 0.24, 24.63, 0.74, 25.37, 6.34, 31.71, 5.71, 37.42, NULL, 0, '2016-12-12 16:26:36', 3),
(350, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 6.9400, 0.21, 0.78, 3.79, 5.05, 12.14, 10.50, 0.24, 22.88, 0.69, 23.57, 5.89, 29.46, 5.30, 34.76, NULL, 0, '2016-12-12 16:28:08', 3),
(351, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 6.9400, 0.21, 0.78, 3.79, 5.05, 12.14, 10.50, 0.24, 22.88, 0.69, 23.57, 5.89, 29.46, 5.30, 34.76, NULL, 0, '2016-12-12 16:28:30', 3),
(352, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 6.9400, 0.21, 0.78, 3.79, 5.05, 12.14, 10.50, 0.24, 22.88, 0.69, 23.57, 5.89, 29.46, 5.30, 34.76, NULL, 0, '2016-12-12 16:28:36', 3),
(353, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 6.9400, 0.21, 0.78, 3.79, 5.05, 12.14, 10.50, 0.24, 22.88, 0.69, 23.57, 5.89, 29.46, 5.30, 34.76, NULL, 0, '2016-12-12 16:28:58', 3),
(354, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 3.4700, 0.16, 0.59, 2.84, 3.79, 9.10, 10.50, 0.18, 19.79, 0.59, 20.38, 5.09, 25.47, 4.59, 30.06, NULL, 0, '2016-12-12 16:30:15', 2),
(355, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 3.4700, 0.16, 0.59, 2.84, 3.79, 9.10, 10.50, 0.18, 19.79, 0.59, 20.38, 5.09, 25.47, 4.59, 30.06, NULL, 0, '2016-12-12 16:30:18', 2),
(356, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 3.4700, 0.16, 0.59, 2.84, 3.79, 9.10, 10.50, 0.18, 19.79, 0.59, 20.38, 5.09, 25.47, 4.59, 30.06, NULL, 0, '2016-12-12 16:30:22', 2),
(357, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 3.4700, 0.16, 0.59, 2.84, 3.79, 9.10, 10.50, 0.18, 19.79, 0.59, 20.38, 5.09, 25.47, 4.59, 30.06, NULL, 0, '2016-12-12 16:30:28', 2),
(358, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 3.1230, 0.14, 0.53, 2.56, 3.41, 8.19, 10.33, 0.16, 18.68, 0.56, 19.24, 4.81, 24.05, 4.33, 28.38, NULL, 0, '2016-12-12 16:32:18', 2),
(359, 226.80, NULL, NULL, NULL, NULL, 0.00, NULL, 15.88, 13.8800, 0.42, 1.56, 7.57, 10.09, 266.95, 20.30, 5.34, 292.59, 8.78, 301.37, 75.34, 376.71, 67.81, 444.52, NULL, 0, '2016-12-12 16:34:35', 3),
(360, 226.80, NULL, NULL, NULL, NULL, 0.00, NULL, 15.88, 13.8800, 0.42, 1.56, 7.57, 10.09, 266.95, 20.30, 5.34, 292.59, 8.78, 301.37, 75.34, 376.71, 67.81, 444.52, NULL, 0, '2016-12-12 16:34:39', 3),
(361, 226.80, NULL, NULL, NULL, NULL, 0.00, NULL, 15.88, 13.8800, 0.42, 1.56, 7.57, 10.09, 266.95, 20.30, 5.34, 292.59, 8.78, 301.37, 75.34, 376.71, 67.81, 444.52, NULL, 0, '2016-12-12 16:34:50', 3),
(362, 226.80, NULL, NULL, NULL, NULL, 0.00, NULL, 15.88, 13.8800, 0.63, 2.35, 11.36, 15.14, 279.09, 20.30, 5.58, 304.97, 9.15, 314.12, 78.53, 392.65, 70.68, 463.33, NULL, 0, '2016-12-12 16:35:22', 2),
(363, 226.80, NULL, NULL, NULL, NULL, 0.00, NULL, 15.88, 13.8800, 0.63, 2.35, 11.36, 15.14, 279.09, 20.30, 5.58, 304.97, 9.15, 314.12, 78.53, 392.65, 70.68, 463.33, NULL, 0, '2016-12-12 16:35:25', 2),
(364, 226.80, NULL, NULL, NULL, NULL, 0.00, NULL, 15.88, 13.8800, 0.63, 2.35, 11.36, 15.14, 279.09, 20.30, 5.58, 304.97, 9.15, 314.12, 78.53, 392.65, 70.68, 463.33, NULL, 0, '2016-12-12 16:35:27', 2),
(365, 226.80, NULL, NULL, NULL, NULL, 0.00, NULL, 15.88, 13.8800, 0.63, 2.35, 11.36, 15.14, 279.09, 20.30, 5.58, 304.97, 9.15, 314.12, 78.53, 392.65, 70.68, 463.33, NULL, 0, '2016-12-12 16:35:30', 2),
(366, 226.80, NULL, NULL, NULL, NULL, 0.00, NULL, 15.88, 13.8800, 0.63, 2.35, 11.36, 15.14, 279.09, 20.30, 5.58, 304.97, 9.15, 314.12, 78.53, 392.65, 70.68, 463.33, NULL, 0, '2016-12-12 16:35:32', 2),
(367, 226.80, NULL, NULL, NULL, NULL, 0.00, NULL, 15.88, 13.8800, 0.63, 2.35, 11.36, 15.14, 279.09, 20.30, 5.58, 304.97, 9.15, 314.12, 78.53, 392.65, 70.68, 463.33, NULL, 0, '2016-12-12 16:35:34', 2),
(368, 226.80, NULL, NULL, NULL, NULL, 0.00, NULL, 15.88, 13.8800, 0.63, 2.35, 11.36, 15.14, 279.09, 20.30, 5.58, 304.97, 9.15, 314.12, 78.53, 392.65, 70.68, 463.33, NULL, 0, '2016-12-12 16:35:37', 2),
(369, 226.80, NULL, NULL, NULL, NULL, 0.00, NULL, 15.88, 13.8800, 0.63, 2.35, 11.36, 15.14, 279.09, 20.30, 5.58, 304.97, 9.15, 314.12, 78.53, 392.65, 70.68, 463.33, NULL, 0, '2016-12-12 16:35:39', 2),
(370, 226.80, NULL, NULL, NULL, NULL, 0.00, NULL, 15.88, 13.8800, 0.63, 2.35, 11.36, 15.14, 279.09, 20.30, 5.58, 304.97, 9.15, 314.12, 78.53, 392.65, 70.68, 463.33, NULL, 0, '2016-12-12 17:20:20', 2),
(371, 226.80, NULL, NULL, NULL, NULL, 0.00, NULL, 15.88, 13.8800, 0.63, 2.35, 11.36, 15.14, 279.09, 20.30, 5.58, 304.97, 9.15, 314.12, 78.53, 392.65, 70.68, 463.33, NULL, 0, '2016-12-12 17:20:23', 2),
(372, 226.80, NULL, NULL, NULL, NULL, 0.00, NULL, 15.88, 13.8800, 0.63, 2.35, 11.36, 15.14, 279.09, 20.30, 5.58, 304.97, 9.15, 314.12, 78.53, 392.65, 70.68, 463.33, NULL, 0, '2016-12-12 17:24:45', 2),
(373, 226.80, NULL, NULL, NULL, NULL, 0.00, NULL, 15.88, 13.8800, 0.63, 2.35, 11.36, 15.14, 279.09, 20.30, 5.58, 304.97, 9.15, 314.12, 78.53, 392.65, 70.68, 463.33, NULL, 0, '2016-12-12 17:24:49', 2),
(374, 226.80, NULL, NULL, NULL, NULL, 0.00, NULL, 15.88, 13.8800, 0.63, 2.35, 11.36, 15.14, 279.09, 20.30, 5.58, 304.97, 9.15, 314.12, 78.53, 392.65, 70.68, 463.33, NULL, 0, '2016-12-12 17:24:52', 2),
(375, 226.80, NULL, NULL, NULL, NULL, 0.00, NULL, 15.88, 13.8800, 0.63, 2.35, 11.36, 15.14, 279.09, 20.30, 5.58, 304.97, 9.15, 314.12, 78.53, 392.65, 70.68, 463.33, NULL, 0, '2016-12-12 17:24:55', 2),
(376, 226.80, NULL, NULL, NULL, NULL, 0.00, NULL, 15.88, 13.8800, 0.63, 2.35, 11.36, 15.14, 279.09, 20.30, 5.58, 304.97, 9.15, 314.12, 78.53, 392.65, 70.68, 463.33, NULL, 0, '2016-12-12 17:24:58', 2),
(377, 144.72, NULL, NULL, NULL, NULL, NULL, NULL, 10.13, 22.0000, 0.50, 1.86, 9.00, 12.00, 183.71, 20.30, 3.67, 207.68, 6.23, 213.92, 53.48, 267.39, 48.13, 315.52, NULL, 0, '2016-12-12 17:27:58', 4),
(378, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 87.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2016-12-12 17:45:19', NULL),
(379, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 87.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2016-12-12 17:45:22', NULL),
(380, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 87.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2016-12-12 17:45:26', NULL),
(381, 226.80, NULL, NULL, NULL, NULL, 0.00, NULL, 15.88, 13.8800, 0.63, 2.35, 11.36, 15.14, 279.09, 20.30, 5.58, 304.97, 9.15, 314.12, 78.53, 392.65, 70.68, 463.33, NULL, 0, '2016-12-12 17:49:58', 2),
(382, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 87.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2016-12-12 17:52:37', NULL),
(383, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 78.30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2016-12-12 17:54:33', NULL),
(384, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 78.30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2016-12-12 17:54:37', NULL),
(385, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 78.30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2016-12-12 17:56:49', NULL),
(386, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 78.30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2016-12-12 17:56:52', NULL),
(387, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 78.30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2016-12-12 17:56:54', NULL),
(388, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 78.30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2016-12-12 17:57:27', 2),
(389, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 78.30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2016-12-12 18:02:21', 2),
(390, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 78.30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2016-12-12 18:05:07', 2),
(391, 0.46, NULL, NULL, NULL, NULL, NULL, NULL, 0.03, 5.4000, 0.49, 1.83, 8.84, 11.78, 28.83, 2.72, 0.58, 32.13, 0.96, 33.09, 8.27, 41.36, 7.45, 48.81, NULL, 0, '2016-12-12 18:07:03', NULL),
(392, 0.46, NULL, NULL, NULL, NULL, NULL, NULL, 0.03, 5.4000, 0.16, 0.61, 2.95, 3.93, 9.94, 2.72, 0.20, 12.86, 0.39, 13.24, 3.31, 16.56, 2.98, 19.53, NULL, 0, '2016-12-12 18:09:21', 3),
(393, 0.46, NULL, NULL, NULL, NULL, NULL, NULL, 0.03, 5.4000, 0.16, 0.61, 2.95, 3.93, 9.94, 2.72, 0.20, 12.86, 0.39, 13.24, 3.31, 16.56, 2.98, 19.53, NULL, 0, '2016-12-12 18:09:24', 3),
(394, 0.46, NULL, NULL, NULL, NULL, NULL, NULL, 0.03, 5.4000, 0.16, 0.61, 2.95, 3.93, 9.94, 2.72, 0.20, 12.86, 0.39, 13.24, 3.31, 16.56, 2.98, 19.53, NULL, 0, '2016-12-12 18:09:27', 3),
(395, 0.46, NULL, NULL, NULL, NULL, NULL, NULL, 0.03, 5.4000, 0.16, 0.61, 2.95, 3.93, 9.94, 2.72, 0.20, 12.86, 0.39, 13.24, 3.31, 16.56, 2.98, 19.53, NULL, 0, '2016-12-12 18:10:10', 3),
(396, 0.46, NULL, NULL, NULL, NULL, NULL, NULL, 0.03, 1.5400, 0.07, 0.26, 1.26, 1.68, 4.53, 2.72, 0.09, 7.35, 0.22, 7.57, 1.89, 9.46, 1.70, 11.16, NULL, 0, '2016-12-12 18:11:51', 2),
(397, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 0.01, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2016-12-12 18:19:20', NULL),
(398, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 0.01, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2016-12-12 18:19:24', NULL),
(399, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 0.06, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2016-12-12 23:36:28', NULL),
(400, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 0.06, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2016-12-12 23:36:30', NULL),
(401, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 76.85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2016-12-12 23:37:13', 2),
(402, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 76.85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2016-12-12 23:37:16', 2),
(403, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 76.85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2016-12-14 21:36:49', 2),
(404, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 76.85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2016-12-14 21:37:00', 2),
(405, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 76.85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2016-12-14 21:37:03', 2),
(406, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 13.8800, 0.63, 2.35, 11.36, 15.14, 36.42, 76.85, 0.73, 113.99, 3.42, 117.41, 29.35, 146.77, 26.42, 173.19, NULL, 0, '2016-12-14 21:38:41', 2),
(407, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 13.8800, 0.63, 2.35, 11.36, 15.14, 36.42, 76.85, 0.73, 113.99, 3.42, 117.41, 29.35, 146.77, 26.42, 173.19, NULL, 0, '2016-12-14 21:39:07', 2),
(408, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 13.8800, 0.63, 2.35, 11.36, 15.14, 36.42, 76.85, 0.73, 113.99, 3.42, 117.41, 29.35, 146.77, 26.42, 173.19, NULL, 0, '2016-12-14 21:39:14', 2),
(409, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 13.8800, 0.63, 2.35, 11.36, 15.14, 36.42, 76.85, 0.73, 113.99, 3.42, 117.41, 29.35, 146.77, 26.42, 173.19, NULL, 0, '2016-12-14 21:39:19', 2),
(410, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 13.8800, 0.63, 2.35, 11.36, 15.14, 36.42, 76.85, 0.73, 113.99, 3.42, 117.41, 29.35, 146.77, 26.42, 173.19, NULL, 0, '2016-12-14 21:40:26', 2),
(411, NULL, 224.94, NULL, NULL, NULL, NULL, NULL, 15.75, 13.8800, 0.63, 2.35, 11.36, 15.14, 277.10, 76.85, 5.54, 359.49, 10.78, 370.28, 92.57, 462.85, 83.31, 546.16, NULL, 0, '2016-12-14 21:40:46', 2),
(412, NULL, 224.94, 83.81, NULL, NULL, NULL, NULL, 21.61, 13.8800, 0.63, 2.35, 11.36, 15.14, 366.78, 76.85, 7.34, 450.96, 13.53, 464.49, 116.12, 580.62, 104.51, 685.13, NULL, 0, '2016-12-14 21:41:20', 2),
(413, NULL, 224.94, 83.81, NULL, NULL, NULL, 600.00, 63.61, 13.8800, 0.63, 2.35, 11.36, 15.14, 1008.78, 76.85, 20.18, 1105.80, 33.17, 1138.98, 284.74, 1423.72, 256.27, 1679.99, NULL, 0, '2016-12-14 21:41:54', 2),
(414, NULL, 224.94, 83.81, NULL, NULL, NULL, 600.00, 63.61, 13.8800, 1.26, 4.69, 22.71, 30.28, 1045.19, 76.85, 20.90, 1142.95, 34.29, 1177.24, 294.31, 1471.55, 264.88, 1736.42, NULL, 0, '2016-12-14 21:42:09', NULL),
(415, NULL, 224.94, 83.81, NULL, NULL, NULL, 600.00, 63.61, 13.8800, 1.26, 4.69, 22.71, 30.28, 1045.19, 76.85, 20.90, 1142.95, 34.29, 1177.24, 294.31, 1471.55, 264.88, 1736.42, NULL, 0, '2016-12-14 21:42:11', NULL),
(416, NULL, 224.94, 83.81, NULL, NULL, 200.00, 600.00, 77.61, 13.8800, 1.26, 4.69, 22.71, 30.28, 1259.19, 76.85, 25.18, 1361.23, 40.84, 1402.07, 350.52, 1752.58, 315.46, 2068.05, NULL, 0, '2016-12-14 21:42:35', NULL),
(417, NULL, 224.94, 83.81, NULL, NULL, 200.00, 600.00, 77.61, 13.8800, 1.26, 4.69, 22.71, 30.28, 1259.19, 76.85, 25.18, 1361.23, 40.84, 1402.07, 350.52, 1752.58, 315.46, 2068.05, NULL, 0, '2016-12-14 21:42:38', NULL),
(418, NULL, 224.94, 83.81, NULL, NULL, 200.00, 1200.00, 119.61, 13.8800, 1.26, 4.69, 22.71, 30.28, 1901.19, 76.85, 38.02, 2016.07, 60.48, 2076.55, 519.14, 2595.69, 467.22, 3062.91, NULL, 0, '2016-12-14 21:42:45', NULL),
(419, NULL, 224.94, 83.81, NULL, NULL, 200.00, 1200.00, 119.61, 13.8800, 1.26, 4.69, 22.71, 30.28, 1901.19, 76.85, 38.02, 2016.07, 60.48, 2076.55, 519.14, 2595.69, 467.22, 3062.91, NULL, 0, '2016-12-14 21:42:49', NULL),
(420, 200.00, 224.94, 83.81, NULL, NULL, 200.00, 1200.00, 133.61, 13.8800, 1.26, 4.69, 22.71, 30.28, 2115.19, 76.85, 42.30, 2234.35, 67.03, 2301.38, 575.34, 2876.72, 517.81, 3394.53, NULL, 0, '2016-12-14 21:43:26', NULL),
(421, 130.00, 224.94, 83.81, NULL, NULL, 200.00, 1200.00, 128.71, 13.8800, 1.26, 4.69, 22.71, 30.28, 2040.29, 76.85, 40.81, 2157.95, 64.74, 2222.69, 555.67, 2778.36, 500.11, 3278.47, NULL, 0, '2016-12-14 21:43:35', NULL),
(422, 130.00, 224.94, 83.81, NULL, NULL, 200.00, 1200.00, 128.71, 13.8800, 1.26, 4.69, 22.71, 30.28, 2040.29, 76.85, 40.81, 2157.95, 64.74, 2222.69, 555.67, 2778.36, 500.11, 3278.47, NULL, 0, '2016-12-14 21:43:38', NULL),
(423, 132.00, 224.94, 83.81, NULL, NULL, 200.00, 1200.00, 128.85, 13.8800, 1.26, 4.69, 22.71, 30.28, 2042.43, 76.85, 40.85, 2160.13, 64.80, 2224.94, 556.23, 2781.17, 500.61, 3281.78, NULL, 0, '2016-12-14 21:43:48', NULL),
(424, 131.00, 224.94, 83.81, NULL, NULL, 200.00, 1200.00, 128.78, 13.8800, 1.26, 4.69, 22.71, 30.28, 2041.36, 76.85, 40.83, 2159.04, 64.77, 2223.81, 555.95, 2779.77, 500.36, 3280.12, NULL, 0, '2016-12-14 21:43:58', NULL),
(425, 131.00, 224.94, 83.81, NULL, NULL, 200.00, 1200.10, 128.79, 13.8800, 1.26, 4.69, 22.71, 30.28, 2041.47, 76.85, 40.83, 2159.15, 64.77, 2223.93, 555.98, 2779.91, 500.38, 3280.29, NULL, 0, '2016-12-14 21:44:24', NULL),
(426, 131.00, 224.94, 83.81, NULL, NULL, 200.00, 1200.16, 128.79, 13.8800, 1.26, 4.69, 22.71, 30.28, 2041.54, 76.85, 40.83, 2159.22, 64.78, 2223.99, 556.00, 2779.99, 500.40, 3280.39, NULL, 0, '2016-12-14 21:44:35', NULL),
(427, 131.00, 224.94, 83.81, NULL, NULL, 200.00, 1200.17, 128.79, 13.8800, 1.26, 4.69, 22.71, 30.28, 2041.55, 76.85, 40.83, 2159.23, 64.78, 2224.00, 556.00, 2780.01, 500.40, 3280.41, NULL, 0, '2016-12-14 21:44:44', NULL),
(428, 131.00, 224.94, 83.81, NULL, NULL, 200.00, 1200.16, 128.79, 13.8800, 1.26, 4.69, 22.71, 30.28, 2041.54, 76.85, 40.83, 2159.22, 64.78, 2223.99, 556.00, 2779.99, 500.40, 3280.39, NULL, 0, '2016-12-14 21:44:57', NULL),
(429, 131.00, 224.94, 83.81, NULL, NULL, 200.00, 1200.16, 128.79, 13.8810, 1.26, 4.69, 22.71, 30.29, 2041.54, 76.85, 40.83, 2159.22, 64.78, 2224.00, 556.00, 2780.00, 500.40, 3280.40, NULL, 0, '2016-12-14 21:45:15', NULL),
(430, 131.00, 224.94, 83.81, NULL, NULL, 200.00, 1200.16, 128.79, 13.8810, 1.26, 4.69, 22.71, 30.29, 2041.54, 76.85, 40.83, 2159.22, 64.78, 2224.00, 556.00, 2780.00, 500.40, 3280.40, NULL, 0, '2016-12-14 21:45:27', NULL),
(431, 140.00, 224.94, 83.81, NULL, NULL, 200.00, 1200.16, 129.42, 13.8810, 1.26, 4.69, 22.71, 30.29, 2051.17, 76.85, 41.02, 2169.04, 65.07, 2234.12, 558.53, 2792.64, 502.68, 3295.32, NULL, 0, '2016-12-14 21:45:54', NULL),
(432, 145.00, 224.94, 83.81, NULL, NULL, 200.00, 1200.16, 129.77, 13.8810, 1.26, 4.69, 22.71, 30.29, 2056.52, 76.85, 41.13, 2174.50, 65.24, 2239.74, 559.93, 2799.67, 503.94, 3303.61, NULL, 0, '2016-12-14 21:46:03', NULL),
(433, 150.00, 224.94, 83.81, NULL, NULL, 200.00, 1200.16, 130.12, 13.8810, 1.26, 4.69, 22.71, 30.29, 2061.87, 76.85, 41.24, 2179.96, 65.40, 2245.36, 561.34, 2806.70, 505.21, 3311.90, NULL, 0, '2016-12-14 21:46:12', NULL),
(434, 148.00, 224.94, 83.81, NULL, NULL, 200.00, 1200.16, 129.98, 13.8810, 1.26, 4.69, 22.71, 30.29, 2059.73, 76.85, 41.19, 2177.78, 65.33, 2243.11, 560.78, 2803.89, 504.70, 3308.59, NULL, 0, '2016-12-14 21:46:20', NULL),
(435, 148.00, 224.94, 83.81, NULL, NULL, 200.00, 1200.16, 129.98, 13.8810, 1.26, 4.69, 22.71, 30.29, 2059.73, 76.85, 41.19, 2177.78, 65.33, 2243.11, 560.78, 2803.89, 504.70, 3308.59, NULL, 0, '2016-12-14 21:46:26', NULL),
(436, 148.00, 224.94, 83.81, NULL, NULL, 200.00, 1201.00, 130.04, 13.8800, 1.26, 4.69, 22.71, 30.28, 2060.62, 76.85, 41.21, 2178.69, 65.36, 2244.05, 561.01, 2805.06, 504.91, 3309.97, NULL, 0, '2016-12-14 21:46:52', NULL),
(437, 148.00, 224.94, 83.80, NULL, NULL, 200.00, 1201.00, 130.04, 13.8800, 1.26, 4.69, 22.71, 30.28, 2060.61, 76.85, 41.21, 2178.68, 65.36, 2244.04, 561.01, 2805.05, 504.91, 3309.95, NULL, 0, '2016-12-14 21:47:02', NULL),
(438, 148.00, 224.90, 83.80, NULL, NULL, 200.00, 1201.00, 130.04, 13.8800, 1.26, 4.69, 22.71, 30.28, 2060.57, 76.85, 41.21, 2178.63, 65.36, 2243.99, 561.00, 2804.99, 504.90, 3309.89, NULL, 0, '2016-12-14 21:47:27', NULL),
(439, 148.00, 224.91, 83.80, NULL, NULL, 200.00, 1201.00, 130.04, 13.8800, 1.26, 4.69, 22.71, 30.28, 2060.58, 76.85, 41.21, 2178.64, 65.36, 2244.00, 561.00, 2805.00, 504.90, 3309.90, NULL, 0, '2016-12-14 21:47:36', NULL),
(440, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 2.45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2016-12-14 21:48:02', NULL),
(441, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 2.45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2016-12-14 21:48:11', NULL),
(442, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 0.04, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2016-12-15 21:14:48', NULL),
(443, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 0.05, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2016-12-15 21:41:50', NULL),
(444, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.0000, 0.00, 0.00, 0.00, 0.00, 0.00, 0.05, 0.00, 0.05, 0.00, 0.05, 0.01, 0.06, 0.01, 0.07, NULL, 0, '2016-12-16 16:00:51', NULL),
(445, 485.10, NULL, NULL, NULL, NULL, NULL, NULL, 33.96, 104.1000, 9.46, 35.20, 170.35, 227.13, 1065.30, 255.00, 21.31, 1341.60, 40.25, 1381.85, 345.46, 1727.32, 310.92, 2038.23, NULL, 0, '2016-12-22 10:50:30', NULL),
(446, 485.10, NULL, NULL, NULL, NULL, NULL, NULL, 33.96, 27.7600, 2.52, 9.39, 45.43, 60.57, 664.72, 76.50, 13.29, 754.52, 22.64, 777.15, 194.29, 971.44, 174.86, 1146.30, NULL, 0, '2016-12-16 19:32:45', NULL),
(447, 485.10, NULL, NULL, NULL, NULL, NULL, NULL, 33.96, 27.7600, 2.52, 9.39, 45.43, 60.57, 664.72, 97.75, 13.29, 775.77, 23.27, 799.04, 199.76, 998.80, 179.78, 1178.58, NULL, 0, '2016-12-16 19:34:13', NULL),
(448, 485.10, NULL, NULL, NULL, NULL, NULL, 300.00, 54.96, 27.7600, 2.52, 9.39, 45.43, 60.57, 985.72, 97.75, 19.71, 1103.19, 33.10, 1136.28, 284.07, 1420.35, 255.66, 1676.01, NULL, 0, '2016-12-16 19:35:06', NULL),
(449, 485.10, NULL, NULL, NULL, NULL, NULL, 300.00, 54.96, 27.7600, 2.52, 9.39, 45.43, 60.57, 985.72, 97.75, 19.71, 1103.19, 33.10, 1136.28, 284.07, 1420.35, 255.66, 1676.01, NULL, 0, '2016-12-16 19:35:40', NULL),
(450, 485.10, NULL, NULL, 1500.00, NULL, NULL, 300.00, 159.96, 27.7600, 2.52, 9.39, 45.43, 60.57, 2590.72, 97.75, 51.81, 2740.29, 82.21, 2822.49, 705.62, 3528.12, 635.06, 4163.18, NULL, 0, '2016-12-16 19:38:02', NULL),
(451, 310.46, NULL, NULL, NULL, NULL, NULL, NULL, 21.73, 104.1000, 9.46, 35.20, 170.35, 227.13, 878.44, 255.00, 17.57, 1151.01, 34.53, 1185.54, 296.38, 1481.92, 266.75, 1748.67, NULL, 0, '2016-12-22 10:54:42', NULL),
(452, 310.46, NULL, NULL, NULL, NULL, NULL, NULL, 21.73, 34.7000, 3.15, 11.73, 56.78, 75.71, 514.28, 106.25, 10.29, 630.81, 18.92, 649.74, 162.43, 812.17, 146.19, 958.36, NULL, 0, '2016-12-16 19:43:38', NULL),
(453, 310.46, NULL, NULL, NULL, NULL, NULL, NULL, 21.73, 34.7000, 3.15, 11.73, 56.78, 75.71, 514.28, 106.25, 10.29, 630.81, 18.92, 649.74, 162.43, 812.17, 146.19, 958.36, NULL, 0, '2016-12-16 19:43:41', NULL),
(454, 310.46, NULL, NULL, 3500.00, NULL, NULL, 300.00, 287.73, 34.7000, 3.15, 11.73, 56.78, 75.71, 4580.28, 106.25, 91.61, 4778.13, 143.34, 4921.48, 1230.37, 6151.85, 1107.33, 7259.18, NULL, 0, '2016-12-16 19:44:44', NULL),
(455, 1074.45, NULL, NULL, 0.00, NULL, NULL, NULL, 75.21, 138.8000, 12.62, 46.94, 227.13, 302.84, 1877.98, 318.75, 37.56, 2234.29, 67.03, 2301.32, 575.33, 2876.65, 517.80, 3394.45, NULL, 0, '2016-12-25 00:10:41', NULL),
(456, 1074.45, NULL, NULL, NULL, NULL, NULL, NULL, 75.21, 69.4000, 6.31, 23.47, 113.56, 151.42, 1513.82, 170.00, 30.28, 1714.10, 51.42, 1765.52, 441.38, 2206.90, 397.24, 2604.14, NULL, 0, '2016-12-20 12:49:32', NULL),
(457, 1074.45, NULL, NULL, 5000.00, NULL, NULL, 300.00, 446.21, 69.4000, 6.31, 23.47, 113.56, 151.42, 7184.82, 170.00, 143.70, 7498.52, 224.96, 7723.47, 1930.87, 9654.34, 1737.78, 11392.12, NULL, 0, '2016-12-20 12:50:32', NULL),
(458, 485.10, NULL, NULL, 1500.00, NULL, NULL, 300.00, 159.96, 27.7600, 2.52, 9.39, 45.43, 60.57, 2590.72, 170.00, 51.81, 2812.54, 84.38, 2896.91, 724.23, 3621.14, 651.81, 4272.94, NULL, 0, '2016-12-20 13:08:19', NULL),
(459, 485.10, NULL, NULL, 3000.00, NULL, NULL, 0.00, 243.96, 27.7600, 2.52, 9.39, 45.43, 60.57, 3874.72, 170.00, 77.49, 4122.22, 123.67, 4245.88, 1061.47, 5307.35, 955.32, 6262.68, NULL, 0, '2016-12-20 13:14:57', NULL),
(460, 310.46, NULL, NULL, 3500.00, NULL, NULL, 300.00, 287.73, 34.7000, 3.15, 11.73, 56.78, 75.71, 4580.27, 170.00, 91.61, 4841.88, 145.26, 4987.13, 1246.78, 6233.92, 1122.11, 7356.02, NULL, 0, '2016-12-20 13:19:07', NULL),
(461, 310.46, NULL, NULL, 3000.00, NULL, NULL, 0.00, 231.73, 34.7000, 3.15, 11.73, 56.78, 75.71, 3724.27, 170.00, 74.49, 3968.76, 119.06, 4087.82, 1021.96, 5109.78, 919.76, 6029.54, NULL, 0, '2016-12-20 13:19:27', NULL),
(462, 310.46, NULL, NULL, 3000.00, NULL, NULL, 0.00, 231.73, 34.7000, 3.15, 11.73, 56.78, 75.71, 3724.27, 170.00, 74.49, 3968.76, 119.06, 4087.82, 1021.96, 5109.78, 919.76, 6029.54, NULL, 0, '2016-12-20 13:19:49', NULL),
(463, 310.46, NULL, NULL, 3000.00, NULL, NULL, 0.00, 231.73, 34.7000, 3.15, 11.73, 56.78, 75.71, 3724.27, 170.00, 74.49, 3968.76, 119.06, 4087.82, 1021.96, 5109.78, 919.76, 6029.54, NULL, 0, '2016-12-20 13:19:51', NULL),
(464, 310.46, NULL, NULL, 3000.00, NULL, NULL, 0.00, 231.73, 34.7000, 3.15, 11.73, 56.78, 75.71, 3724.27, 170.00, 74.49, 3968.76, 119.06, 4087.82, 1021.96, 5109.78, 919.76, 6029.54, NULL, 0, '2016-12-20 13:19:56', NULL),
(465, 1074.45, NULL, NULL, 5000.00, NULL, NULL, 300.00, 446.21, 69.4000, 6.31, 23.47, 113.56, 151.42, 7184.82, 170.00, 143.70, 7498.52, 224.96, 7723.47, 1930.87, 9654.34, 1737.78, 11392.12, NULL, 0, '2016-12-20 13:27:02', NULL),
(466, 1074.45, NULL, NULL, 5000.00, NULL, NULL, 300.00, 446.21, 69.4000, 6.31, 23.47, 113.56, 151.42, 7184.82, 170.00, 143.70, 7498.52, 224.96, 7723.47, 1930.87, 9654.34, 1737.78, 11392.12, NULL, 0, '2016-12-20 13:27:04', NULL),
(467, 1074.45, NULL, NULL, 5000.00, NULL, NULL, 300.00, 446.21, 69.4000, 6.31, 23.47, 113.56, 151.42, 7184.82, 170.00, 143.70, 7498.52, 224.96, 7723.47, 1930.87, 9654.34, 1737.78, 11392.12, NULL, 0, '2016-12-20 13:27:12', NULL),
(468, 485.10, NULL, NULL, 0.00, NULL, NULL, 0.00, 33.96, 27.7600, 2.52, 9.39, 45.43, 60.57, 664.72, 170.00, 13.29, 848.02, 25.44, 873.46, 218.36, 1091.82, 196.53, 1288.35, NULL, 0, '2016-12-22 10:47:45', NULL),
(469, 485.10, NULL, NULL, 0.00, NULL, NULL, 0.00, 33.96, 27.7600, 2.52, 9.39, 45.43, 60.57, 664.72, 1402.50, 13.29, 2080.52, 62.42, 2142.93, 535.73, 2678.66, 482.16, 3160.82, NULL, 0, '2016-12-22 10:48:51', NULL),
(470, 485.10, NULL, NULL, 0.00, NULL, NULL, 0.00, 33.96, 27.7600, 2.52, 9.39, 45.43, 60.57, 664.72, 255.00, 13.29, 933.02, 27.99, 961.01, 240.25, 1201.26, 216.23, 1417.48, NULL, 0, '2016-12-22 10:50:12', NULL),
(471, 485.10, NULL, NULL, 0.00, NULL, NULL, 0.00, 33.96, 27.7600, 2.52, 9.39, 45.43, 60.57, 664.72, 255.00, 13.29, 933.02, 27.99, 961.01, 240.25, 1201.26, 216.23, 1417.48, NULL, 0, '2016-12-22 10:50:26', NULL),
(472, 485.10, NULL, NULL, 0.00, NULL, NULL, 0.00, 33.96, 27.7600, 2.52, 9.39, 45.43, 60.57, 664.72, 255.00, 13.29, 933.02, 27.99, 961.01, 240.25, 1201.26, 216.23, 1417.48, NULL, 0, '2016-12-22 10:50:30', NULL),
(473, 485.10, NULL, NULL, 0.00, NULL, NULL, 0.00, 33.96, 27.7600, 2.52, 9.39, 45.43, 60.57, 664.72, 255.00, 13.29, 933.02, 27.99, 961.01, 240.25, 1201.26, 216.23, 1417.48, NULL, 0, '2016-12-22 10:52:36', NULL),
(474, 485.10, NULL, NULL, 0.00, NULL, NULL, 0.00, 33.96, 69.4000, 6.31, 23.47, 113.56, 151.42, 883.22, 255.00, 17.66, 1155.88, 34.68, 1190.56, 297.64, 1488.20, 267.88, 1756.07, NULL, 0, '2016-12-22 10:53:02', NULL),
(475, 485.10, NULL, NULL, 0.00, NULL, NULL, 0.00, 33.96, 104.1000, 9.46, 35.20, 170.35, 227.13, 1065.30, 255.00, 21.31, 1341.60, 40.25, 1381.85, 345.46, 1727.32, 310.92, 2038.23, NULL, 0, '2016-12-22 10:53:55', NULL),
(476, 310.46, NULL, NULL, 3000.00, NULL, NULL, 0.00, 231.73, 34.7000, 3.15, 11.73, 56.78, 75.71, 3724.27, 255.00, 74.49, 4053.76, 121.61, 4175.37, 1043.84, 5219.21, 939.46, 6158.67, NULL, 0, '2016-12-22 10:54:31', NULL),
(477, 310.46, NULL, NULL, 3000.00, NULL, NULL, 0.00, 231.73, 34.7000, 3.15, 11.73, 56.78, 75.71, 3724.27, 255.00, 74.49, 4053.76, 121.61, 4175.37, 1043.84, 5219.21, 939.46, 6158.67, NULL, 0, '2016-12-22 10:54:43', NULL),
(478, 1074.45, NULL, NULL, 5000.00, NULL, NULL, 300.00, 446.21, 69.4000, 6.31, 23.47, 113.56, 151.42, 7184.82, 318.75, 143.70, 7647.27, 229.42, 7876.69, 1969.17, 9845.86, 1772.25, 11618.11, NULL, 0, '2016-12-22 10:57:44', NULL),
(479, 1074.45, NULL, NULL, 5000.00, NULL, NULL, 300.00, 446.21, 69.4000, 6.31, 23.47, 113.56, 151.42, 7184.82, 318.75, 143.70, 7647.27, 229.42, 7876.69, 1969.17, 9845.86, 1772.25, 11618.11, NULL, 0, '2016-12-22 10:57:52', NULL),
(480, 1074.45, NULL, NULL, 0.00, NULL, NULL, 0.00, 75.21, 69.4000, 6.31, 23.47, 113.56, 151.42, 1513.82, 318.75, 30.28, 1862.85, 55.89, 1918.73, 479.68, 2398.42, 431.72, 2830.13, NULL, 0, '2016-12-22 10:58:20', NULL),
(481, 1074.45, NULL, NULL, 0.00, NULL, NULL, 0.00, 75.21, 69.4000, 6.31, 23.47, 113.56, 151.42, 1513.82, 318.75, 30.28, 1862.85, 55.89, 1918.73, 479.68, 2398.42, 431.72, 2830.13, NULL, 0, '2016-12-22 11:10:31', NULL),
(482, 1.33, NULL, NULL, NULL, NULL, NULL, NULL, 0.09, 12.1500, 0.37, 1.37, 6.63, 8.84, 22.67, 6.83, 0.45, 29.95, 0.90, 30.85, 7.71, 38.56, 6.94, 45.51, NULL, 0, '2016-12-22 11:13:55', 3),
(483, 1.33, NULL, NULL, NULL, NULL, NULL, NULL, 0.09, 12.1500, 0.37, 1.37, 6.63, 8.84, 22.67, 6.83, 0.45, 29.95, 0.90, 30.85, 7.71, 38.56, 6.94, 45.51, NULL, 0, '2016-12-22 11:14:13', 3),
(484, 1.33, NULL, NULL, NULL, NULL, NULL, NULL, 0.09, 12.1500, 0.37, 1.37, 6.63, 8.84, 22.67, 3.54, 0.45, 26.67, 0.80, 27.47, 6.87, 34.34, 6.18, 40.52, NULL, 0, '2016-12-22 11:20:21', 3),
(485, 1.33, NULL, NULL, NULL, NULL, NULL, NULL, 0.09, 12.1500, 0.37, 1.37, 6.63, 8.84, 22.67, 3.54, 0.45, 26.67, 0.80, 27.47, 6.87, 34.34, 6.18, 40.52, NULL, 0, '2016-12-22 11:20:32', 3),
(486, 1.33, NULL, NULL, NULL, NULL, NULL, NULL, 0.09, 12.1500, 0.37, 1.37, 6.63, 8.84, 22.67, 3.54, 0.45, 26.67, 0.80, 27.47, 6.87, 34.34, 6.18, 40.52, NULL, 0, '2016-12-22 11:21:19', 3),
(487, 1.33, NULL, NULL, NULL, NULL, NULL, NULL, 0.09, 12.1500, 0.37, 1.37, 6.63, 8.84, 22.67, 3.54, 0.45, 26.67, 0.80, 27.47, 6.87, 34.34, 6.18, 40.52, NULL, 0, '2016-12-22 11:21:41', 3),
(488, 1.33, NULL, NULL, NULL, NULL, NULL, NULL, 0.09, 12.1500, 0.37, 1.37, 6.63, 8.84, 22.67, 3.54, 0.45, 26.67, 0.80, 27.47, 6.87, 34.34, 6.18, 40.52, NULL, 0, '2016-12-22 11:22:15', 3),
(489, 1074.45, NULL, NULL, 0.00, NULL, NULL, 0.00, 75.21, 69.4000, 6.31, 23.47, 113.56, 151.42, 1513.82, 318.75, 30.28, 1862.85, 55.89, 1918.73, 479.68, 2398.42, 431.72, 2830.13, NULL, 0, '2016-12-25 00:06:30', NULL),
(490, 1074.45, NULL, NULL, 0.00, NULL, NULL, 0.00, 75.21, 69.4000, 6.31, 23.47, 113.56, 151.42, 1513.82, 318.75, 30.28, 1862.85, 55.89, 1918.73, 479.68, 2398.42, 431.72, 2830.13, NULL, 0, '2016-12-25 00:10:43', NULL),
(491, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.0000, 0.00, 0.00, 0.00, 0.00, 0.00, 7.65, 0.00, 7.65, 0.23, 7.88, 1.97, 9.85, 1.77, 11.62, NULL, 0, '2016-12-25 00:16:40', NULL),
(492, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.0000, 0.00, 0.00, 0.00, 0.00, 0.00, 7.65, 0.00, 7.65, 0.23, 7.88, 1.97, 9.85, 1.77, 11.62, NULL, 0, '2016-12-25 00:16:58', NULL),
(493, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 1.3800, 0.13, 0.47, 2.26, 3.01, 7.24, 7.65, 0.14, 15.04, 0.45, 15.49, 3.87, 19.36, 3.48, 22.84, NULL, 0, '2016-12-25 00:17:21', NULL),
(494, 1.33, NULL, NULL, NULL, NULL, NULL, NULL, 0.09, 12.1500, 0.37, 1.37, 6.63, 8.84, 22.67, 3.54, 0.45, 26.67, 0.80, 27.47, 6.87, 34.34, 6.18, 40.52, NULL, 0, '2016-12-25 00:18:42', 3),
(495, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.0000, 0.00, 0.00, 0.00, 0.00, 0.00, 2.45, 0.00, 2.45, 0.07, 2.52, 0.63, 3.15, 0.57, 3.72, NULL, 0, '2016-12-25 00:19:13', NULL),
(496, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.0000, 0.00, 0.00, 0.00, 0.00, 0.00, 0.01, 0.00, 0.01, 0.00, 0.01, 0.00, 0.01, 0.00, 0.01, NULL, 0, '2016-12-25 00:19:39', NULL),
(497, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.0000, 0.00, 0.00, 0.00, 0.00, 0.00, 0.01, 0.00, 0.01, 0.00, 0.01, 0.00, 0.01, 0.00, 0.01, NULL, 0, '2016-12-25 00:19:43', NULL),
(498, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.0000, 0.00, 0.00, 0.00, 0.00, 0.00, 0.01, 0.00, 0.01, 0.00, 0.01, 0.00, 0.01, 0.00, 0.01, NULL, 0, '2016-12-25 00:19:46', NULL),
(499, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.0964, 0.01, 0.03, 0.16, 0.21, 0.51, 0.01, 0.01, 0.52, 0.02, 0.54, 0.14, 0.68, 0.12, 0.80, NULL, 0, '2016-12-25 00:20:03', NULL),
(500, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.0964, 0.01, 0.03, 0.16, 0.21, 0.51, 0.01, 0.01, 0.52, 0.02, 0.54, 0.14, 0.68, 0.12, 0.80, NULL, 0, '2016-12-25 00:20:05', NULL),
(501, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.0964, 0.01, 0.03, 0.16, 0.21, 0.51, 0.01, 0.01, 0.52, 0.02, 0.54, 0.14, 0.68, 0.12, 0.80, NULL, 0, '2016-12-25 00:20:19', NULL),
(502, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.2082, 0.02, 0.07, 0.34, 0.45, 1.09, 0.06, 0.02, 1.17, 0.04, 1.21, 0.30, 1.51, 0.27, 1.78, NULL, 0, '2016-12-25 00:20:54', NULL),
(503, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.2082, 0.02, 0.07, 0.34, 0.45, 1.09, 0.06, 0.02, 1.17, 0.04, 1.21, 0.30, 1.51, 0.27, 1.78, NULL, 0, '2016-12-25 00:20:56', NULL),
(504, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.2082, 0.02, 0.07, 0.34, 0.45, 1.09, 0.06, 0.02, 1.17, 0.04, 1.21, 0.30, 1.51, 0.27, 1.78, NULL, 0, '2016-12-25 00:21:00', NULL),
(505, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.2082, 0.02, 0.07, 0.34, 0.45, 1.09, 0.06, 0.02, 1.17, 0.04, 1.21, 0.30, 1.51, 0.27, 1.78, NULL, 0, '2016-12-25 00:21:09', NULL),
(506, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 2.3000, 0.21, 0.78, 3.76, 5.02, 12.07, 2.45, 0.24, 14.76, 0.44, 15.20, 3.80, 19.00, 3.42, 22.42, NULL, 0, '2016-12-25 00:21:36', NULL),
(507, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 2.3000, 0.21, 0.78, 3.76, 5.02, 12.07, 2.45, 0.24, 14.76, 0.44, 15.20, 3.80, 19.00, 3.42, 22.42, NULL, 0, '2016-12-25 00:21:40', NULL),
(508, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 2.3000, 0.21, 0.78, 3.76, 5.02, 12.07, 2.45, 0.24, 14.76, 0.44, 15.20, 3.80, 19.00, 3.42, 22.42, NULL, 0, '2016-12-25 00:21:44', NULL);

-- 
-- Вывод данных для таблицы constants
--
INSERT INTO constants VALUES
(2, 7, 31, 150, 200, 2, 3, 25, 18, 3.47, '0001-01-01 00:00:00', '0001-01-01 00:00:00', 0);

-- 
-- Вывод данных для таблицы contracts
--
INSERT INTO contracts VALUES
(1, '2016-12-08 00:00:00', 1);

-- 
-- Вывод данных для таблицы contragents
--
INSERT INTO contragents VALUES
(19, 1, 'ЗАО "Энергомаш"', 0, 'г.Екатеринбург., ул.Фронтовых бригад  д.22', NULL, NULL, NULL, NULL, 'Договор', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(20, 1, 'ООО "Элма-1"', 2, '620076. г. Екатеринбург., пл. Жуковского, д. 1,  лит. В', 'Холодников Юрий Васильевич', NULL, '(343) 295-98-29', '(343) 295-98-56', NULL, '6664068381', '667901001', '40702810400000004026', '30101810800000000756', '25.13', '65401000000', '51835367', '1026605768452', '046577756', 'ПАО "СКБ-Банк" г. Екатеринбург', 'office@elma1.ru', NULL, 0),
(21, 2, 'ООО "УЭТМ-Монтаж"', 0, '620017, г. Екатеринбург, ул. Фронтовых бригад, 27', NULL, 'Козина Людмила Николаевна', NULL, NULL, NULL, '6663062122', '667301001', '40702810616110102962 30101810500000000674', '30101810500000000674', NULL, NULL, NULL, NULL, ' 046577674', 'СБ РФ', NULL, NULL, 0),
(22, 3, 'ООО "ФОРЭС"', 0, ' 624803, Свердловская обл., г.  Сухой Лог, ул. Кунарская, 15', NULL, NULL, NULL, NULL, NULL, '6658092629', '660850001', '40702810714900001585', '30101810800000000756', NULL, NULL, NULL, NULL, '046577756', 'ПАО "СКБ-Банк"', NULL, NULL, 0),
(23, 2, 'ООО СКБ "Мысль"', 2, '620076, г. Екатеринбург, пл. Жуковского, д. 1, лит. В', 'Холодников Юрий Васильевич', NULL, '(343) 295-98-29', '(343) 295-98-56', NULL, '6661016177', '667901001', '40702810500000000292', '30101810800000000756', '45.44.2; 28.51', '65401000000', '20616938', '1026605242476', '046577756', 'ПАО "СКБ-Банк" г. Екатеринбург', 'sdo_mysl@mail.ru', NULL, 0),
(24, 4, 'ООО "Энерготехсоюз" ', 0, '620072, г. Екатеринбург, ул. Новгородцевой, 7-300', NULL, NULL, NULL, NULL, NULL, '6670129459', '667001001', '40702810962200000008', '30101810900000000795', NULL, NULL, NULL, NULL, '046577795', 'ОАО "УБРиР" г. Екатеринбург', 'ets@epn.ru', NULL, 0),
(25, 5, 'ООО ПК "Кровтех"', 0, '620041, г. Екатеринбург, ул. Основинская, 8-42', NULL, NULL, '(343) 216-25-62', NULL, NULL, '6673226789', '667301001', '40702810112010015903', '30101810700000000940', NULL, NULL, NULL, NULL, '046577940', NULL, 'snegos@krovteh.ru', NULL, 0),
(26, 6, 'АО "Кировградский завод твердых сплавов"', 0, 'Россия,Свердловская обл., 624140, г. Кировград, ул. Свердлова,26-а', NULL, NULL, NULL, NULL, NULL, '6616000619', '660850001', '40702810516020101933', '30101810500000000674', NULL, NULL, NULL, NULL, '046577674', 'Уральский  Банк ПАО "Сбербанк России"', NULL, NULL, 0),
(27, 7, 'ООО "ТД "УЦПР"', 0, '620085, г.Екатеринбург, ул.Походная, д.81, оф. 34', NULL, NULL, '270-59-61', NULL, NULL, '6679005955', '667901001', '40702810262170001358', '30101810900000000795', NULL, NULL, NULL, NULL, '046577795', 'ОАО "УБРиР" г. Екатеринбург', 'rti-ucpr@yandex', NULL, 0),
(28, 8, 'ООО "Нефтеспецтехника"', 0, '625000, г. Тюмень, ул. Мельникайте, 44а, офис 406', NULL, NULL, '(3452) 41-57-01', NULL, NULL, '7203037464', '720301001', '40702810424220000338', '30101810165770000446', NULL, NULL, NULL, NULL, '046577446', 'Филиал ПАО "УРАЛСИБ" в г. Екатеринбурге', 'oil_texn_sib@mail.ru', NULL, 0),
(29, 9, 'АО "ЕВРАЗ КГОК"', 0, '624350, Россия, Свердловская область, г. Качканар, ул. Свердлова, д. 2.', NULL, NULL, NULL, NULL, 'Договор 1011В от 14.12.2011', '6615001962', '997550001', '40702810300010924443', '30101810300000000545', NULL, NULL, NULL, NULL, '044525545', 'ЗАО "ЮниКредитБанк"  г. Москва', NULL, NULL, 0),
(30, 10, 'АО "Бузулукский механический завод"', 0, '461040, Оренбургская область, Бузулукский р-н, г. Бузулук, ул. Рабочая, д. 81', NULL, NULL, NULL, NULL, NULL, '5653000012', '560301001', '40702810446200100451 ', '30101810600000000601', NULL, NULL, NULL, NULL, '045354601', 'Оренбургское отделение 8623, Сбербанк России г. Оренбург', 'svgbmz@gmail.com', NULL, 0),
(31, 11, 'ООО "Завод гидроизоляционных материалов "Пенетрон"', 0, '620072, г. Екатеринбург, ул. Новгородцевой, д. 35, кв. 77 ', NULL, NULL, NULL, NULL, NULL, '6670090466', '667001001', '40702810000261003431', '30101810365770000411', NULL, NULL, NULL, NULL, '046577411', 'Ф-л банка "ГПБ" (АО) в г. Екатеринбурге', 'krotov@penetron.ru', NULL, 0),
(32, 12, 'ООО "Технокерамика"', 0, '641870, Курганская обл., г. Шадринск, ул. Д. Бедного, 3', NULL, NULL, NULL, NULL, NULL, '4502015992', '450201001', '40702810414900001584', '30101810800000000756', NULL, NULL, NULL, NULL, '046577756', 'ОАО «СКБ-Банк»', 'tk2008@bk.ru', NULL, 0),
(33, 13, 'ООО "Ингортех"', 0, '620144,  г. Екатеринбург, ул. Хохрякова, д. 100, оф. 1', NULL, NULL, NULL, NULL, NULL, '6659026925', '666101001', '40702810200000003418', '30101810800000000756', NULL, NULL, NULL, NULL, '046577756', 'ОАО "СКБ-Банк" г. Екатеринбург', 'igt-service@mail.ru', NULL, 0),
(34, 14, 'АО "ЕВРАЗ НТМК"', 0, '622025, Свердловская область, г. Нижний Тагил, ул. Металлургов, 1', NULL, NULL, NULL, NULL, 'Договор ДГНТ3-002006', '6623000680', '997550001', '40702810000000000984', '30101810800000000805', NULL, NULL, NULL, NULL, '046510805', 'КБ "Тагилбанк",', NULL, NULL, 0),
(35, 15, 'ОАО "Птицефабрика "Свердловская"', 0, '620082, г. Екатеринбург, ул. Сажинская, д. 6', NULL, NULL, NULL, NULL, NULL, '6672350180', '667201001', '40702810638030001862', '30101810100000000964', NULL, NULL, NULL, NULL, '046577964', 'ОАО "Альфа-Банк"', NULL, NULL, 0),
(36, 16, 'ООО "ФОРЭС", Асбестовское отделение', 0, '624260, Свердловская обл., г. Асбест, ул. Заводская, 16/1', NULL, NULL, NULL, NULL, NULL, '6658408456', '665801001', '40702810654990005596 ', '30101810100000000639', NULL, NULL, NULL, NULL, '047130639', 'ОАО Запсибкомбанк ОАО г.Тюмень', 'omts@foresasb.ru', NULL, 0),
(37, 17, 'ООО "Богдановичский керамзит"', 0, '623530, Сведловская область, г. Богданович, ул. Ст. Разина, 62 б  ', NULL, NULL, NULL, NULL, NULL, '0266029390', '025250001', '40702810200200000039', '30101810200000000914', NULL, NULL, NULL, NULL, '048071914', 'Уфимский ф-ле АБ "РОССИЯ"', 'irinakeramzit@mail.ru', NULL, 0),
(38, 1, 'Общество с ограниченной ответственностью "Профит"', 1, 'Свердловская обл., Екатеринбург. ул. Завокзальная д.5., лит.Б., оф.409', 'Перетягина ЕВ', 'гл.бухгалтер Дехтерева СБ', '379-33-74', '379-33-75', 'Заявка', '6678009153', '667801001', '40702810400050011542', '30101810400000000774', '46.73', '66', NULL, '1126678002406', '046577774', 'ООО Банк "Нейва" г. Екатеринбург', NULL, NULL, 0),
(39, 2, 'ООО"Уральский филиал Барнаульского завода АТИ"', 1, 'г.Екатеринбург, ул. Новостроя,19а', 'Булатова ТГ', 'гл. бухгалтер Вшивцева ТВ', '287-17-53', NULL, 'Основной договор', '2223586054', '667945001', '40702810316120098609', '30101810500000000674', NULL, NULL, NULL, NULL, '046577674', 'Уральский банк ОАО "СБЕРБАНК РОССИИ"', NULL, NULL, 0),
(40, 3, 'Общество с ограниченной ответственностью "ТДС"', 1, '620057, Свердловская обл. г. Екатеринбург, ул.Красных командиров,д.106.кв45', 'Тебеньков ВВ ', NULL, NULL, NULL, 'Основной договор ', '6686068995', '668601001', '40702810138050001423', '30101810100000000964', NULL, NULL, NULL, NULL, '046577964', 'Филиал Екатеринбургский АО "Альфа-банк" г. Екатеринбург', NULL, NULL, 0),
(41, 4, 'Закрытое акционерное общество "Уралэластотехника"', 1, 'Россия,620085,г.Екатеринбург,ул.Монтерская,д7', 'Грицай Д.Б.', 'Н.В.Потемкина', '256-29-44', '256-29-45', '12/80-16СБРО от 14.01.20116', '6664014650', '667401001', '40702810816120102684', '30101810800000000756', NULL, NULL, '00149297', NULL, '046577674', 'Уральский банк ПАО СБЕРБАНК в г.Екатеринбурге', NULL, NULL, 0);

-- 
-- Вывод данных для таблицы details
--
INSERT INTO details VALUES
(26, 1, 'Прокладка', NULL, 0),
(27, 2, 'Пластина', NULL, 0),
(28, 3, 'Втулка', NULL, 0),
(29, 4, 'Диафрагма', NULL, 0),
(30, 5, 'Заглушка', NULL, 0),
(31, 6, 'Кольцо уплотнительное', NULL, 0),
(32, 7, 'Клапан', NULL, 0),
(33, 8, 'Кольцо', NULL, 0),
(34, 9, 'Клин', NULL, 0),
(35, 10, 'Сальник', NULL, 0),
(36, 11, 'Уплотнение', NULL, 0),
(37, 12, 'Упаковка', NULL, 0),
(38, 13, 'Шайба', NULL, 0),
(39, 14, 'Шайба изоляционная', NULL, 0),
(40, 15, 'Пробка', NULL, 0),
(41, 16, 'Штанец', NULL, 0),
(42, 17, 'Пробойник', NULL, 0),
(43, 18, 'Кольцо защитное', NULL, 0),
(44, 19, 'Прессформа', NULL, 0),
(45, 20, 'Амортизатор', NULL, 0),
(46, 21, 'Шарик резиновый', NULL, 0),
(47, 22, 'Шарик', NULL, 0),
(48, 23, 'Манжета', NULL, 0),
(49, 24, 'Манжета поршня', NULL, 0),
(50, 25, 'Полоса', NULL, 0),
(51, 26, 'Каркас', NULL, 0),
(52, 27, 'Колпачок', NULL, 0),
(53, 28, 'Уплотнение шевронное', NULL, 0),
(54, 29, 'Манжета гидравлическая', NULL, 0),
(55, 30, 'Прокладка широкая', NULL, 0),
(56, 31, 'Уплотнение  УП 50', NULL, 0),
(57, 32, 'Уплотнение УП 100', NULL, 0),
(58, 33, 'Бункер резиновый', NULL, 0),
(59, 34, 'Палец бильный', NULL, 0),
(60, 35, 'Прокладка баков', NULL, 0),
(61, 36, 'Вкладыш блок-шарнира резиновый', NULL, 0),
(62, 37, 'Каток', NULL, 0),
(63, 38, 'Направляющая', NULL, 0),
(64, 39, 'Манжета цилиндра', NULL, 0),
(65, 40, 'Протектор', NULL, 0),
(66, 41, 'Ручка резиновая', NULL, 0),
(67, 42, 'РОЧ', NULL, 0),
(68, 43, 'Оболочка', NULL, 0),
(69, 44, 'Колесо', NULL, 0),
(70, 45, 'Башмак', NULL, 0),
(71, 46, 'Болт', NULL, 0),
(72, 47, 'Вкладыш', NULL, 0),
(73, 48, 'Вставка уплотнительная', NULL, 0),
(74, 49, 'Скребок', NULL, 0),
(75, 50, 'Мембрана', NULL, 0),
(76, 51, 'Накладка армированная', NULL, 0),
(77, 52, 'Уплотнение фляги', NULL, 0),
(78, 53, 'Шина', NULL, 0),
(79, 54, 'Каток опорный', NULL, 0),
(80, 55, 'Компенсатор', NULL, 0),
(81, 56, 'Вентилятор', NULL, 0),
(82, 57, 'Основание', NULL, 0),
(83, 58, 'Косынка', NULL, 0),
(84, 59, 'Ребро', NULL, 0),
(85, 60, 'Крышка', NULL, 0),
(86, 61, 'Просечка', NULL, 0),
(87, 62, 'Профиль', NULL, 0),
(88, 63, 'Буфер', NULL, 0),
(89, 64, 'Планка', NULL, 0),
(90, 65, 'Прокладка узкая', NULL, 0),
(91, 66, 'Вал', NULL, 0),
(92, 67, 'Трос', NULL, 0),
(93, 68, 'Палец', NULL, 0),
(94, 69, 'Лента амортизационная', NULL, 0),
(95, 70, 'Вкладыш "Ласточкин хвост"', NULL, 0),
(96, 71, 'Демпфер', NULL, 0),
(97, 72, 'Подушка амортизационная', NULL, 0),
(98, 73, 'Уплотнение рам качения', NULL, 0),
(99, 74, 'Подвязка', NULL, 0),
(100, 75, 'Шнур', NULL, 0),
(101, 76, 'Лента', NULL, 0),
(102, 77, 'Ярлык', NULL, 0),
(103, 78, 'Надписи', NULL, 0),
(104, 79, 'Блок резиновый', NULL, 0),
(105, 80, 'Упор резиновый', NULL, 0),
(106, 81, 'Кольцо футеровочное', NULL, 0),
(107, 82, 'Изолятор ввода тягового двигателя', NULL, 0),
(108, 83, 'Уплотнение ободка фары', NULL, 0),
(109, 84, 'Амортизатор мотор-генератора', NULL, 0),
(110, 85, 'Кольцо резиновое', NULL, 0),
(111, 86, 'Вкладыш резиновый', NULL, 0),
(112, 87, 'Пыльник', NULL, 0),
(113, 88, 'Уплотнение нижнее', NULL, 0),
(114, 89, 'Уплотнение верхнее', NULL, 0),
(115, 90, 'Шайба лак', NULL, 0),
(116, 91, 'Ручка', NULL, 0),
(117, 92, 'Брус', NULL, 0),
(118, 93, 'Амортизатор муфты НКР-100', NULL, 0),
(119, 94, 'Конус', NULL, 0),
(120, 95, 'Патрубок', NULL, 0),
(121, 96, 'Муфта', NULL, 0),
(122, 97, 'Бандаж малый', NULL, 0),
(123, 98, 'Бандаж большой', NULL, 0),
(124, 99, 'Лист', NULL, 0),
(125, 100, 'Гофра', NULL, 0),
(126, 101, 'Стабилизатор', NULL, 0),
(127, 102, 'Чашка силиконовая', NULL, 0),
(128, 103, 'Фишер', NULL, 0),
(129, 104, 'Втулка  уплотнительная', NULL, 0),
(130, 105, 'Футеровочное кольцо', NULL, 0),
(131, 106, 'Втулка полумуфты', NULL, 0),
(132, 107, 'Втулка виброразгрузчика', NULL, 0),
(133, 108, 'Втулка упругая', NULL, 0),
(134, 109, 'Прокладка крышки ревизии', NULL, 0),
(135, 110, 'Шайба обрезиненная', NULL, 0),
(136, 111, 'Втулка предохранительная', NULL, 0),
(137, 112, 'Трубка дренажная', NULL, 0),
(138, 113, 'Прокладка отстойника', NULL, 0),
(139, 114, 'Шайба с бортом', NULL, 0),
(140, 115, 'Шайба сбортом', NULL, 0),
(141, 116, 'Поддон', NULL, 0);

-- 
-- Вывод данных для таблицы drawings
--
INSERT INTO drawings VALUES
(50, '2016-12-04 16:11:06', 1, '370.210-1', 17, 26, NULL, 35, 35, 6, NULL, 46, 10, 0.007700000000000001, 50.00, 0.50, 493, 154, NULL, 37, 12, NULL, NULL, NULL, 20, 100, NULL, '250шт/см', 0, 19, NULL, 0.007, '250шт/см 30мин на перерывы', 9.00, 7.00),
(51, '2016-12-07 14:29:05', 2, '233', 19, 26, NULL, 51, 51, 6, NULL, 49, 0, 0.14, 38.65, 0.80, 292, 155, NULL, 39, 12, 155, 780, 2.8, NULL, NULL, NULL, '240шт/см', 0, 30, NULL, 0.14, '2 рулона на 150шт (42кг) возврат отходов на вальцовку .Зазор вальцев 4 мм 240шт/см', 13.00, 10.00),
(52, '2016-12-08 15:13:23', 3, '372.000', 20, 135, '4326 цена 131', 35, 52, 10, NULL, 50, NULL, 0.68, 484.00, 1.00, 281, 157, NULL, 40, 12, NULL, NULL, 21, 39, 200, NULL, '20шт/см', 0, NULL, NULL, 0.68, '20шт/см', 55.00, 40.00),
(53, '2016-12-08 16:13:54', 4, '10-6 ГОСТ 19421-74', 19, 136, 'Одновременная загрузка  втулки 6*10*16', 53, 53, 10, NULL, 51, 10, 0.0022, 6.78, 0.50, 205, 163, NULL, 41, 12, NULL, NULL, 6, 6, 16, NULL, '140шт/см', 0, NULL, NULL, 0.002, NULL, 12.80, 10.00),
(54, '2016-12-08 16:47:47', 5, '6*10*16 ГОСТ 19421-74', 19, 136, 'Одновременно 10-6', 53, 53, 10, NULL, 52, 11, 0.00222, 6.78, 0.50, 214, 172, NULL, 42, 12, NULL, NULL, NULL, NULL, NULL, NULL, '210шт/см', 0, NULL, NULL, 0.002, '7пр-Цэ/мин=1,05руб,6прессформ, 210шт/см', 12.80, 10.00),
(55, '2016-12-08 16:58:08', 6, '18*22', 19, 93, NULL, 51, 51, 6, NULL, 53, 100, 0.016, 35.60, 0.50, 494, 178, NULL, 43, 12, NULL, NULL, NULL, NULL, NULL, NULL, '140шт/см', 0, NULL, NULL, 0.016, '140шт/см', 13.50, 10.00),
(56, '2016-12-08 17:13:54', 7, 'L40', 19, 137, NULL, 51, 51, 6, NULL, 54, 10, 0.0088, 8.58, 0.50, 220, 181, NULL, 44, 12, NULL, NULL, 40, 15, 20, NULL, '150шт/см', 0, NULL, NULL, 0.008, '152шт/см', 12.40, 10.00),
(57, '2016-12-08 17:30:08', 8, '760.023', 17, 27, NULL, 58, 55, 6, NULL, 55, 0, 0.804, 262.50, 1.00, 377, 183, NULL, 45, 12, NULL, NULL, NULL, NULL, NULL, NULL, '32шт/см', 0, NULL, NULL, 0.804, '32шт/см', 14.00, 10.00),
(58, '2016-12-08 17:43:06', 9, '760.024', 17, 27, NULL, 58, 55, 6, NULL, 63, 0, 0.904, 262.50, 1.00, 381, 186, NULL, 46, 12, NULL, NULL, NULL, NULL, NULL, NULL, '32шт/см', 0, NULL, NULL, 0.904, '32', 14.00, 10.00),
(59, '2016-12-10 08:43:51', 10, '68*50*9', 19, 138, 'Энерготехсоюз', 35, 35, 6, NULL, 56, NULL, 0.015, 27.50, 0.50, 335, 302, NULL, 47, 12, NULL, NULL, 9, 50, 68, NULL, '140шт/см', 0, 24, NULL, 0.026, '140шт/см', 13.60, 10.00),
(60, '2016-12-10 20:27:26', 11, '300', 21, 80, 'Эластомер', 59, 59, 6, NULL, 57, 40, 1.1493999999999998, 2805.00, 1.00, 439, 336, NULL, 48, 12, NULL, NULL, 114, 320, 368, NULL, '9шт/см', 0, 19, NULL, 1.149, '9шт/см', 53.00, 50.00),
(61, '2016-12-10 21:40:00', 12, '20*5*13', 19, 139, NULL, 51, 51, 6, NULL, 58, 10, 0.0055000000000000005, 3.60, 0.50, 396, 337, NULL, 49, 12, NULL, NULL, 13, 5, 20, NULL, '315шт/см', 0, NULL, NULL, 0.005, '315шт/см', 13.00, 10.00),
(62, '2016-12-11 23:45:16', 13, '307.026', 18, 52, NULL, 35, 35, 6, NULL, NULL, NULL, NULL, 22.08, 0.80, 508, 338, NULL, 50, 12, NULL, NULL, NULL, NULL, NULL, NULL, '210шт/см', 0, 19, NULL, NULL, '210шт/см', 14.00, 10.00),
(63, '2016-12-12 14:23:04', 14, '207*8*8', 19, 26, NULL, 53, 53, 6, NULL, 62, NULL, 0.058, 25.00, 0.80, 358, 343, NULL, 51, 12, NULL, NULL, NULL, NULL, NULL, NULL, '80шт/см', 0, NULL, NULL, 0.073, '80шт/см', 11.00, 10.00),
(64, '2016-12-12 14:26:19', 15, '18*55', 19, 26, NULL, 47, 47, 6, NULL, 60, 0, 0.002, 1.20, 0.00, 501, 342, NULL, 53, 13, 18, 55, 1, NULL, NULL, NULL, '8000шт/см', 0, NULL, NULL, 0.002, '8000шт/см', 4.00, 2.00),
(65, '2016-12-12 14:28:47', 16, '27*45*1,5', 19, 38, NULL, 47, 47, 6, NULL, 61, 0, 0.003, 2.55, 0.00, 505, 341, NULL, 54, 13, NULL, NULL, NULL, NULL, NULL, NULL, '1500шт/см', 0, 19, NULL, 0.003, NULL, 0.38, 0.32),
(66, '2016-12-12 14:32:25', 17, '18*45*1,5', 19, 38, NULL, 47, 47, 6, NULL, 59, 0, 0.004, 2.55, 0.00, 444, 340, NULL, 52, 13, NULL, NULL, 1.5, 18, 45, NULL, '1500шт/см', 0, NULL, NULL, 0.004, '1500 шт/см', 0.31, 0.25),
(67, '2016-12-16 19:17:31', 18, '106304', 19, 141, 'АВИСМА Оснастка в цене', 60, 62, 6, NULL, 64, NULL, 3.5, 1727.32, 1.00, 475, 445, NULL, 55, 12, 400, 400, 80, NULL, NULL, 2, '35 шт', 0, NULL, NULL, NULL, NULL, 60.00, 30.00),
(68, '2016-12-16 19:39:02', 19, '106305', 19, 141, 'АВИСМА Оснастка в  цене', 60, 62, 6, NULL, 65, NULL, 2.24, 1481.92, 1.00, 477, 451, NULL, 56, 12, 300, 300, 80, NULL, NULL, 3, '10шт', 0, NULL, NULL, NULL, NULL, 60.00, 30.00),
(69, '2016-12-20 12:42:30', 20, '106306', 19, 141, NULL, 60, 62, 10, NULL, 67, 5, 7.75215, 2876.65, 1.00, 490, 455, NULL, 57, 12, NULL, NULL, NULL, NULL, NULL, 1, '20шт', 0, NULL, NULL, NULL, NULL, 75.00, 35.00);

-- 
-- Вывод данных для таблицы drivers
--
INSERT INTO drivers VALUES
(4, 1, 'Газель', 'А414 РК 96', 'Манаев  СА', '65 03 149344', 0);

-- 
-- Вывод данных для таблицы equipments
--
INSERT INTO equipments VALUES
(37, 1, 'Прессформа', 4, 0.000, 0.00, 5, 1, 5, 'Элма-1', 7, '2016-12-14 00:00:00', 5000.00, 1, NULL, 0),
(38, 2, '233', 0, 0.000, 0.00, 2, 1, 2, NULL, NULL, NULL, NULL, 0, NULL, 0),
(39, 3, '233 пр', 0, 0.000, 0.00, 2, 3, 6, NULL, NULL, NULL, NULL, 0, NULL, 0),
(40, 4, 'Прессформа', 0, 0.000, 0.00, 2, 1, 2, 'Элма', 0, '2015-11-11 00:00:00', 0.00, 0, NULL, 0),
(41, 5, 'Прессформа', 0, 0.000, 0.00, 4, 1, 4, NULL, NULL, NULL, NULL, 0, 'Одновременная формовка 2-х деталей (4ф+4ф)', 0),
(42, 6, 'Прессформа', 0, 0.000, 0.00, 4, 1, 4, NULL, NULL, NULL, NULL, 0, 'Лабороторный пресс загрузка 2-х деталей( 4ф+4ф) форм 4', 0),
(43, 7, 'Прессформа', 0, 0.000, 0.00, 4, 1, 4, NULL, NULL, NULL, NULL, 0, 'Палец+трубка дренажная', 0),
(44, 8, 'Прессформа', 0, 0.000, 0.00, 4, 1, 4, NULL, NULL, NULL, NULL, 0, 'Одновременно палец+трубка', 0),
(45, 9, 'Прессформа', 0, 0.000, 0.00, 1, 1, 1, NULL, NULL, NULL, NULL, 0, NULL, 0),
(46, 10, 'Прессформа', 0, 0.000, 0.00, 1, 1, 1, NULL, NULL, NULL, NULL, 0, NULL, 0),
(47, 11, '68*50*9 пр', 0, 0.000, 0.00, 4, 1, 4, NULL, NULL, NULL, NULL, 0, NULL, 0),
(48, 12, 'Прессформа', 0, 0.000, 0.00, 1, 1, 1, NULL, NULL, NULL, NULL, 0, NULL, 0),
(49, 13, 'Прессформа', 0, 0.000, 0.00, 9, 1, 9, NULL, NULL, NULL, NULL, 0, NULL, 0),
(50, 14, 'Прессформа', 0, 0.000, 0.00, 1, 6, 6, NULL, NULL, NULL, NULL, 0, NULL, 0),
(51, 15, 'Прессформа', 0, 0.000, 0.00, 2, 1, 2, NULL, NULL, NULL, NULL, 0, NULL, 0),
(52, 16, 'Просечка', 0, 0.000, 0.00, 1, 1, 1, NULL, NULL, NULL, NULL, 0, NULL, 0),
(53, 17, 'Штанец', 0, 0.000, 0.00, 1, 72, 72, NULL, NULL, NULL, NULL, 0, NULL, 0),
(54, 18, 'Просечка', 0, 0.000, 0.00, 1, 1, 1, NULL, NULL, NULL, NULL, 0, NULL, 0),
(55, 19, '10634пр', 4, 0.000, 0.00, 1, 1, 1, NULL, NULL, NULL, NULL, 0, NULL, 0),
(56, 20, '106305 пр', 4, 0.000, 0.00, 1, 1, 1, NULL, NULL, NULL, 35000.00, 0, NULL, 0),
(57, 21, 'Прессформа', 4, 0.000, 0.00, 1, 1, 1, NULL, 60, '2017-02-28 00:00:00', NULL, 0, NULL, 0);

-- 
-- Вывод данных для таблицы groups
--
INSERT INTO groups VALUES
(17, 1, '8СЯ', NULL, 0),
(18, 2, '8БП', NULL, 0),
(19, 3, '-', NULL, 0),
(20, 4, '5-5АИ.', NULL, 0),
(21, 5, 'Ду', NULL, 0);

-- 
-- Вывод данных для таблицы images
--
INSERT INTO images VALUES
(1, NULL),
(2, NULL),
(3, NULL);

-- 
-- Вывод данных для таблицы jobs
--
INSERT INTO jobs VALUES
(26, 0, 'Администратор', 'admin', 'admin', 0, 3),
(27, 1, 'Генеральный директор', 'ГД', '11111', 0, 2),
(28, 2, 'Экономист', 'Э', '22222', 0, 2),
(29, 3, 'Бухгалтер', 'Б', '33333', 0, 1),
(30, 4, 'Технолог', 'Т', '44444', 0, 1),
(31, 5, 'Юрист', 'Ю', '55555', 0, 1),
(32, 6, 'Секретарь', 'С', '66666', 0, 1),
(33, 7, 'ОТК', 'ОТК', '77777', 0, 0),
(34, 8, 'Рабочий', 'Р', '88888', 0, 0),
(35, 9, 'Прессовщик', 'Пр', '99999', 0, 0),
(36, 10, 'Обрезчица', 'О', '10000', 0, 0),
(38, 11, 'Токарь', 'Ток', '11000', 0, 0),
(39, 12, 'Вальцовщик', 'В', '12000', 0, 0),
(40, 13, 'Вырубщик', 'Выр', '13000', 0, 0),
(41, 14, 'Слесарь', 'Сл', '14000', 0, 0),
(42, 15, 'Механик', 'Мех', '15000', 0, 0),
(43, 16, 'Электрик', 'Эл', '16000', 0, 0),
(44, 17, 'Зам. по производству', 'Зам', '17000', 0, 2);

-- 
-- Вывод данных для таблицы machines
--
INSERT INTO machines VALUES
(8, 1, 'ПГ-1б  Пресс гидравлический', '1200*800', '1', 2, 20.000, 2.500, 42.500, 6.00, 4.25, NULL, 0),
(9, 2, 'ПГ-2/2 Пресс гидравлический двухполочный', '600*600', '2', 3, 7.500, 2.500, 25.000, 6.00, 2.50, NULL, 0),
(10, 3, 'ПГ-3 Пресс гидравлический', '600*600', '3', 2, 7.500, 2.500, 17.500, 6.00, 1.75, NULL, 0),
(11, 4, 'ПГ-4 Пресс гидравлический', '600*600', '4', 2, 7.500, 2.500, 17.500, 6.00, 1.75, NULL, 0),
(12, 5, 'ПГ-5 б Пресс гидравлический', '900*800', '5', 2, 6.000, 2.500, 15.000, 6.00, 1.45, NULL, 0),
(13, 6, 'ПГ-6 Пресс гидравлический', '600*600', '6', 2, 7.500, 2.500, 18.000, 6.00, 1.75, NULL, 0),
(14, 7, 'ПГ-7 л Пресс гидравлический', '400*400', '7', 2, 4.000, 2.500, 11.000, 6.00, 1.05, NULL, 0),
(15, 8, 'ПГ-8 лПресс гидравлический', '400*400', '8', 2, 4.000, 2.500, 10.500, 6.00, 1.05, NULL, 0),
(16, 9, 'ПГ-9 л Пресс гидравлический', '400*400', '9', 2, 4.000, 2.500, 10.500, 6.00, 1.05, NULL, 0),
(17, 10, 'ПГк-10 Пресс гидравлический', '600*600', '10', 2, 7.500, 2.500, 18.000, 6.00, 1.75, NULL, 0),
(18, 11, 'ПВ-11 Пресс вырубной', '350*400', '11', 0, 0.000, 1.500, 1.500, 6.00, 0.15, NULL, 0),
(19, 12, 'ПВ-12 Пресс вырубной', '350*400', '12', 0, 0.000, 1.500, 1.500, 6.00, 0.14, NULL, 0),
(20, 13, 'ПВ-13 Пресс вырубной', '350*400', '13', 0, 0.000, 1.500, 1.500, 6.00, 0.15, NULL, 0);

-- 
-- Вывод данных для таблицы mass_calculations
--
INSERT INTO mass_calculations VALUES
(46, 3, 1.7, 5, NULL, NULL, NULL, NULL, 200, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 5, 1.7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 5, 1.7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2.8, 780, 155, 740, 115, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 5, 1.4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2.8, 780, 155, 740, 115, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 1, 1.7, 21, NULL, NULL, 200, 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 1, 1.7, 6, NULL, NULL, 16, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 1, 1.7, 6, NULL, NULL, 16, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 1, 1.4, 22, NULL, NULL, 18, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 1, 1.4, 40, NULL, NULL, 20, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 8, 1.7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.804'),
(56, 1, 1.7, 9, NULL, NULL, 68, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 1, 1.7, 144, NULL, NULL, 326.6, 320, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 1, 1.4, 13, NULL, NULL, 20, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 1, 2, 1.5, NULL, NULL, 45, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 4, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 55, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 1, 2, 1.5, NULL, NULL, 45, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 1, 1.7, 8, NULL, NULL, 223, 207, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 8, 1.7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.904'),
(64, 4, 1.7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 560, 560, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 4, 1.7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 460, 460, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 0, 1.7, 6, NULL, NULL, 960, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 0, 1.7, 6, NULL, NULL, 960, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- 
-- Вывод данных для таблицы materials
--
INSERT INTO materials VALUES
(32, 1, 'Пластина 1Н-I-ТМКЩ-С-1', 'ГОСТ 7338-80', 1.7, 1, 3000, 1000, 100.00, NULL, 0),
(33, 2, 'Пластина 1Н-I-ТМКЩ-С-3', 'ГОСТ 7338-80', 1.7, 3, 3000, 1000, 100.00, NULL, 0),
(34, 3, 'Смесь резиновая В-14', 'ТУ 38 0051166-2015 (НТА)', 1.7, NULL, NULL, NULL, 148.80, NULL, 0),
(35, 4, 'Смесь резиновая 4326', 'ТУ 38.0051166-2015 (НТА)', 1.7, NULL, NULL, NULL, 131.00, NULL, 0),
(36, 5, 'Пластина 1Н-I-ТМКЩ-С-2', 'ГОСТ 7338-90', 1.7, 2, 3000, 1000, 100.00, NULL, 0),
(37, 6, 'Пластина 1Н-I-ТМКЩ-С-1,5', 'ГОСТ 7338-90', 1.7, 1.5, 3000, 1000, 100.00, NULL, 0),
(38, 7, 'Пластина 1Н-I-ТМКЩ-С-4', 'ГОСТ 7338-90', 1.7, 4, 3000, 1000, 100.00, NULL, 0),
(39, 8, 'Пластина1Ф-1-МБС-М-2', 'ГОСТ 7338-90', 1.7, 2, 3000, 1000, 100.00, NULL, 0),
(40, 9, 'Пластина1Н-1-ТМКЩ-М-1', 'ГОСТ 7338-90', 1.7, 1, 3000, 1000, 100.00, NULL, 0),
(41, 10, 'Пластина1Н-1-ТМКЩ-М-3', 'ГОСТ 7338-90', 1.7, 3, 3000, 1000, 100.00, NULL, 0),
(42, 11, 'Пластина 2Ф-1-АМС-М-1', 'ГОСТ 7338-90', 1.7, 1, 3000, 1000, 100.00, NULL, 0),
(43, 12, 'Паронит ПОН-Б-2,0*500*500', 'ГОСТ481-80', 2, 2, 500, 500, NULL, NULL, 0),
(44, 13, 'Картон электроизоляционный ЭВ-1,5', 'ГОСТ2824-86', 2, 1.5, NULL, NULL, NULL, NULL, 0),
(45, 14, 'КартонБ-3,0-1500*1020', 'ГОСТ4194-88', 2, 3, 1500, 1020, NULL, NULL, 0),
(46, 15, 'Паронит ПОН-Б 0,5-1000*1500', 'ГОСТ 481-80', 2, 0.5, 1500, 1000, 165.67, NULL, 0),
(47, 16, 'Паронит ПОН-Б 1,5 1000*1500', 'ГОСТ 481,80', 2, 1.5, 1500, 1000, 140.00, NULL, 0),
(48, 17, 'Паронит ПОН-Б 2,0 1000*1500', 'ГОСТ 481-80', 2, 2, 1500, 1000, 115.21, NULL, 0),
(49, 18, 'Войлок тонкошерстный 8', 'ГОСТ 288-72', NULL, NULL, NULL, NULL, 593.22, NULL, 0),
(50, 19, 'Пластина 2Ф-1-МБС-С-5', 'ГОСТ 7338-90', 1.7, 5, 3000, 800, 111.23, NULL, 0),
(51, 20, 'Смесь резиновая 199', 'ТУ 2512-046-00151081-2003', 1.4, NULL, NULL, NULL, 83.20, NULL, 0),
(52, 21, 'Смесь резиновая 13-450', 'ТУ 2512-012-00149297-2004', 1.7, NULL, NULL, NULL, 116.00, NULL, 0),
(53, 22, 'Смесь резиновая НО-68-1', 'ТУ 38 0051166-2015 (НТА)', 1.7, NULL, NULL, NULL, 228.30, NULL, 0),
(54, 23, 'Смесь резиновая 3834', 'ТУ 38 0051166-2015 (НТА)', 1.7, NULL, NULL, NULL, 162.40, NULL, 0),
(55, 24, 'Смесь резиновая 3824', 'ТУ 38 0051166-2015 (НТА)', 1.7, NULL, NULL, NULL, 125.00, NULL, 0),
(56, 25, 'Смесь резиновая 93', 'ТУ 2512-046-00152081-2003', 1.7, NULL, NULL, NULL, 296.00, NULL, 0),
(57, 26, 'Смесь резиновая В-14-1', 'ТУ 38 0051166-2015 (НТА)', 1.7, NULL, NULL, NULL, 152.80, NULL, 0),
(58, 27, 'Пластина 12 7-ИРП-1233-7 УХЛ1 ', 'ТУ 38.30596-95', 1.7, 12, NULL, NULL, 180.00, NULL, 0),
(59, 28, 'Резиновая смесь 1347', 'ТУ 38 0051166-2015 (НТА)', 1.7, NULL, NULL, NULL, 195.70, NULL, 0),
(60, 29, 'Смесь резиновая 1-1в-8 3-6701', 'ТУ 2512-046-00152081-2003', 1.7, NULL, NULL, NULL, 138.60, NULL, 0),
(61, 30, 'Смесь резиновая1-1в-11-6190', 'ТУ 2512-046-00152081-2003', 1.7, NULL, NULL, NULL, 113.20, NULL, 0),
(62, 31, 'Смесь резиновая 7-ИРП-1348', 'ТУ 2512-046-00152081-2003', 1.7, NULL, NULL, NULL, 138.60, NULL, 0),
(63, 32, 'Пластина 1-25 Прессовая дублированная', NULL, 1.7, 27, NULL, NULL, 147.00, NULL, 0);

-- 
-- Вывод данных для таблицы measure_units
--
INSERT INTO measure_units VALUES
(6, 1, 'шт.', '796', 0),
(7, 2, 'метр', '006', 0),
(8, 3, 'кв м', '055', 0),
(9, 4, 'п.м.', '018', 0),
(10, 5, 'кг', '166', 0),
(11, 6, 'изделие', '657', 0),
(12, 7, 'комплект', '839', 0),
(13, 8, 'т', '168', 0);

-- 
-- Вывод данных для таблицы methods
--
INSERT INTO methods VALUES
(12, 1, 'Формовка', NULL, 0),
(13, 2, 'Вырубка', NULL, 0),
(14, 3, 'Лазер', NULL, 0),
(15, 4, 'Токарная', NULL, 0),
(16, 5, 'Сверление', NULL, 0),
(17, 6, 'Вулканизация в котле', NULL, 0),
(18, 7, 'Шпринцевание', NULL, 0),
(19, 8, 'Зиговка', NULL, 0),
(20, 9, 'Ручная', NULL, 0),
(21, 10, 'Подготовительное время', NULL, 0),
(22, 11, 'Заключительное время', NULL, 0),
(23, 12, 'Програмирование', NULL, 0),
(24, 13, 'Металлообработка', NULL, 0),
(25, 14, 'Пескоструйный ', NULL, 0);

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
(19, '2016-12-05'),
(20, '2016-12-09'),
(21, '2016-12-07'),
(22, '2016-12-08'),
(23, '2016-12-10'),
(24, '2016-12-19');

-- 
-- Вывод данных для таблицы drawing_calculation_history
--
INSERT INTO drawing_calculation_history VALUES
(116, 51, 156),
(117, 52, 158),
(118, 52, 159),
(119, 52, 160),
(120, 52, 161),
(121, 52, 162),
(122, 53, 164),
(123, 53, 165),
(124, 53, 166),
(125, 53, 167),
(126, 53, 168),
(127, 53, 169),
(128, 53, 170),
(129, 53, 171),
(130, 54, 173),
(131, 54, 174),
(132, 54, 175),
(133, 54, 176),
(134, 55, 179),
(135, 55, 180),
(136, 56, 182),
(137, 57, 184),
(138, 57, 185),
(139, 58, 187),
(140, 53, 188),
(141, 53, 189),
(142, 53, 190),
(143, 53, 191),
(144, 53, 192),
(145, 53, 193),
(146, 53, 194),
(147, 53, 195),
(148, 53, 196),
(149, 53, 197),
(150, 53, 198),
(151, 53, 199),
(152, 53, 200),
(153, 53, 201),
(154, 53, 202),
(155, 53, 203),
(156, 53, 204),
(157, 53, 205),
(158, 54, 206),
(159, 54, 207),
(160, 54, 208),
(161, 54, 209),
(162, 54, 210),
(163, 54, 211),
(164, 54, 212),
(165, 54, 213),
(166, 54, 214),
(167, 56, 215),
(168, 56, 216),
(169, 56, 217),
(170, 56, 218),
(171, 56, 219),
(172, 56, 220),
(173, 55, 221),
(174, 57, 222),
(175, 57, 223),
(176, 57, 224),
(177, 57, 225),
(178, 57, 226),
(179, 57, 227),
(180, 57, 228),
(181, 57, 229),
(182, 57, 230),
(183, 57, 231),
(184, 57, 232),
(185, 57, 233),
(186, 58, 234),
(187, 58, 235),
(188, 58, 236),
(189, 58, 237),
(190, 58, 238),
(191, 58, 239),
(192, 58, 240),
(193, 58, 241),
(194, 58, 242),
(195, 58, 243),
(196, 58, 244),
(197, 58, 245),
(198, 58, 246),
(199, 58, 247),
(200, 58, 248),
(201, 58, 249),
(202, 58, 250),
(203, 58, 251),
(204, 58, 252),
(205, 58, 253),
(206, 58, 254),
(207, 58, 255),
(208, 58, 256),
(209, 58, 257),
(210, 58, 258),
(211, 52, 259),
(212, 52, 260),
(213, 52, 261),
(214, 52, 262),
(215, 52, 263),
(216, 52, 264),
(217, 52, 265),
(218, 52, 266),
(219, 52, 267),
(220, 52, 268),
(221, 52, 269),
(222, 52, 270),
(223, 52, 271),
(224, 52, 272),
(225, 52, 273),
(226, 52, 274),
(227, 52, 275),
(228, 52, 276),
(229, 52, 277),
(230, 52, 278),
(231, 52, 279),
(232, 52, 280),
(233, 52, 281),
(234, 51, 282),
(235, 51, 283),
(236, 51, 284),
(237, 51, 285),
(238, 51, 286),
(239, 51, 287),
(240, 51, 288),
(241, 51, 289),
(242, 51, 290),
(243, 51, 291),
(244, 51, 292),
(245, 58, 293),
(246, 58, 294),
(247, 58, 295),
(248, 58, 296),
(249, 58, 297),
(250, 58, 298),
(251, 58, 299),
(252, 58, 300),
(253, 58, 301),
(254, 59, 303),
(255, 59, 304),
(256, 59, 305),
(257, 59, 306),
(258, 59, 307),
(259, 59, 308),
(260, 59, 309),
(261, 59, 310),
(262, 59, 311),
(263, 59, 312),
(264, 59, 313),
(265, 59, 314),
(266, 59, 315),
(267, 59, 316),
(268, 59, 317),
(269, 59, 318),
(270, 59, 319),
(271, 59, 320),
(272, 59, 321),
(273, 59, 322),
(274, 59, 323),
(275, 59, 324),
(276, 59, 325),
(277, 59, 326),
(278, 59, 327),
(279, 59, 328),
(280, 59, 329),
(281, 59, 330),
(282, 59, 331),
(283, 59, 332),
(284, 59, 333),
(285, 59, 334),
(286, 59, 335),
(287, 61, 339),
(288, 63, 344),
(289, 63, 345),
(290, 63, 346),
(291, 63, 347),
(292, 63, 348),
(293, 63, 349),
(294, 63, 350),
(295, 63, 351),
(296, 63, 352),
(297, 63, 353),
(298, 63, 354),
(299, 63, 355),
(300, 63, 356),
(301, 63, 357),
(302, 63, 358),
(303, 58, 359),
(304, 58, 360),
(305, 58, 361),
(306, 58, 362),
(307, 58, 363),
(308, 58, 364),
(309, 58, 365),
(310, 58, 366),
(311, 58, 367),
(312, 58, 368),
(313, 58, 369),
(314, 58, 370),
(315, 58, 371),
(316, 58, 372),
(317, 58, 373),
(318, 58, 374),
(319, 58, 375),
(320, 58, 376),
(321, 57, 377),
(322, 60, 378),
(323, 60, 379),
(324, 60, 380),
(325, 58, 381),
(326, 60, 382),
(327, 60, 383),
(328, 60, 384),
(329, 60, 385),
(330, 60, 386),
(331, 60, 387),
(332, 60, 388),
(333, 60, 389),
(334, 60, 390),
(335, 61, 391),
(336, 61, 392),
(337, 61, 393),
(338, 61, 394),
(339, 61, 395),
(340, 61, 396),
(341, 64, 397),
(342, 64, 398),
(343, 65, 399),
(344, 65, 400),
(345, 60, 401),
(346, 60, 402),
(347, 60, 403),
(348, 60, 404),
(349, 60, 405),
(350, 60, 406),
(351, 60, 407),
(352, 60, 408),
(353, 60, 409),
(354, 60, 410),
(355, 60, 411),
(356, 60, 412),
(357, 60, 413),
(358, 60, 414),
(359, 60, 415),
(360, 60, 416),
(361, 60, 417),
(362, 60, 418),
(363, 60, 419),
(364, 60, 420),
(365, 60, 421),
(366, 60, 422),
(367, 60, 423),
(368, 60, 424),
(369, 60, 425),
(370, 60, 426),
(371, 60, 427),
(372, 60, 428),
(373, 60, 429),
(374, 60, 430),
(375, 60, 431),
(376, 60, 432),
(377, 60, 433),
(378, 60, 434),
(379, 60, 435),
(380, 60, 436),
(381, 60, 437),
(382, 60, 438),
(383, 60, 439),
(384, 62, 440),
(385, 62, 441),
(386, 66, 442),
(387, 66, 443),
(388, 66, 444),
(389, 67, 446),
(390, 67, 447),
(391, 67, 448),
(392, 67, 449),
(393, 67, 450),
(394, 68, 452),
(395, 68, 453),
(396, 68, 454),
(397, 69, 456),
(398, 69, 457),
(399, 67, 458),
(400, 67, 459),
(401, 68, 460),
(402, 68, 461),
(403, 68, 462),
(404, 68, 463),
(405, 68, 464),
(406, 69, 465),
(407, 69, 466),
(408, 69, 467),
(409, 67, 468),
(410, 67, 469),
(411, 67, 470),
(412, 67, 471),
(413, 67, 472),
(414, 67, 473),
(415, 67, 474),
(416, 67, 475),
(417, 68, 476),
(418, 68, 477),
(419, 69, 478),
(420, 69, 479),
(421, 69, 480),
(422, 69, 481),
(423, 55, 482),
(424, 55, 483),
(425, 55, 484),
(426, 55, 485),
(427, 55, 486),
(428, 55, 487),
(429, 55, 488),
(430, 69, 489),
(431, 69, 490),
(432, 50, 491),
(433, 50, 492),
(434, 50, 493),
(435, 55, 494),
(436, 62, 495),
(437, 64, 496),
(438, 64, 497),
(439, 64, 498),
(440, 64, 499),
(441, 64, 500),
(442, 64, 501),
(443, 65, 502),
(444, 65, 503),
(445, 65, 504),
(446, 65, 505),
(447, 62, 506),
(448, 62, 507),
(449, 62, 508);

-- 
-- Вывод данных для таблицы drawing_flowsheet_machines
--
INSERT INTO drawing_flowsheet_machines VALUES
(34, 50, 1, 8, 170.00, 1.40),
(35, 51, 1, 8, 190.00, 1.67),
(36, 50, 2, 12, 170.00, 1.40),
(37, 52, 1, 9, 165.00, 20.00),
(38, 53, 1, 14, 175.00, 2.50),
(39, 54, 1, 14, 175.00, 2.50),
(40, 55, 1, 15, 190.00, 2.50),
(41, 56, 1, 15, 190.00, 2.50),
(42, 57, 1, 12, 180.00, 10.00),
(43, 58, 1, 12, 180.00, 10.00),
(44, 59, 1, 8, 180.00, 2.50),
(45, 60, 1, 12, 150.00, 50.00),
(46, 53, 2, 16, 175.00, 2.50),
(47, 54, 2, 16, 180.00, 2.50),
(48, 59, 2, 10, NULL, 2.50),
(49, 61, 1, 17, 190.00, 1.11),
(50, 62, 1, 15, 175.00, 1.67),
(51, 53, 3, 15, 175.00, 2.50),
(52, 54, 3, 8, NULL, 2.50),
(53, 66, 1, 18, 0.00, 0.25),
(54, 66, 2, 19, 0.00, 0.25),
(55, 66, 3, 20, 0.00, 0.25),
(56, 65, 1, 18, 0.00, 0.32),
(57, 65, 2, 19, 0.00, 0.32),
(58, 65, 3, 20, 0.00, 0.32),
(59, 64, 1, 18, 0.00, 0.03),
(60, 64, 2, 19, 0.00, 0.03),
(61, 64, 3, 20, 0.00, 0.03),
(62, 63, 1, 13, 180.00, 5.00),
(63, 67, 1, 8, 180.00, 30.00),
(64, 68, 1, 8, 180.00, 30.00),
(65, 69, 1, 8, 180.00, 35.00);

-- 
-- Вывод данных для таблицы drawing_flowsheet_processes
--
INSERT INTO drawing_flowsheet_processes VALUES
(258, 50, 1, 1, 0, NULL, NULL, NULL, NULL, 1.00, NULL),
(259, 50, 2, 2, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(260, 50, 3, 3, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(261, 50, 4, 4, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(262, 50, 5, 5, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(263, 50, 6, 6, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(264, 50, 7, 7, 1, NULL, NULL, NULL, NULL, 1.00, NULL),
(265, 50, 8, 8, 1, NULL, NULL, NULL, NULL, 7.00, NULL),
(266, 50, 9, 9, 1, NULL, NULL, NULL, NULL, 1.00, NULL),
(267, 50, 10, 10, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(268, 50, 11, 11, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(269, 51, 1, 1, 1, NULL, NULL, NULL, NULL, 1.00, NULL),
(270, 51, 2, 2, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(271, 51, 3, 3, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(272, 51, 4, 4, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(273, 51, 5, 5, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(274, 51, 6, 6, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(275, 51, 7, 7, 1, NULL, NULL, NULL, NULL, 1.00, NULL),
(276, 51, 8, 8, 1, NULL, NULL, NULL, NULL, 10.00, NULL),
(277, 51, 9, 9, 1, NULL, NULL, NULL, NULL, 1.00, NULL),
(278, 51, 10, 10, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(279, 51, 11, 11, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(280, 52, 1, 1, 1, NULL, NULL, NULL, NULL, 5.00, NULL),
(281, 52, 2, 2, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(282, 52, 3, 3, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(283, 52, 4, 4, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(284, 52, 5, 5, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(285, 52, 6, 6, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(286, 52, 7, 7, 1, NULL, NULL, NULL, NULL, 5.00, NULL),
(287, 52, 8, 8, 1, NULL, NULL, NULL, NULL, 40.00, NULL),
(288, 52, 9, 9, 1, NULL, NULL, NULL, NULL, 5.00, NULL),
(289, 52, 10, 10, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(290, 52, 11, 11, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(291, 53, 1, 1, 1, NULL, NULL, NULL, NULL, 2.00, NULL),
(292, 53, 2, 2, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(293, 53, 3, 3, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(294, 53, 4, 4, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(295, 53, 5, 5, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(296, 53, 6, 6, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(297, 53, 7, 7, 1, NULL, NULL, NULL, NULL, 0.40, NULL),
(298, 53, 8, 8, 1, NULL, NULL, NULL, NULL, 10.00, NULL),
(299, 53, 9, 9, 1, NULL, NULL, NULL, NULL, 0.40, NULL),
(300, 53, 10, 10, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(301, 53, 11, 11, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(302, 54, 1, 1, 1, NULL, NULL, NULL, NULL, 2.00, NULL),
(303, 54, 2, 2, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(304, 54, 3, 3, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(305, 54, 4, 4, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(306, 54, 5, 5, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(307, 54, 6, 6, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(308, 54, 7, 7, 1, NULL, NULL, NULL, NULL, 0.40, NULL),
(309, 54, 8, 8, 1, NULL, NULL, NULL, NULL, 10.00, NULL),
(310, 54, 9, 9, 1, NULL, NULL, NULL, NULL, 0.40, NULL),
(311, 54, 10, 10, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(312, 54, 11, 11, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(313, 55, 1, 1, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(314, 55, 2, 2, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(315, 55, 3, 3, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(316, 55, 4, 4, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(317, 55, 5, 5, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(318, 55, 6, 6, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(319, 55, 7, 7, 1, NULL, NULL, NULL, NULL, 1.75, NULL),
(320, 55, 8, 8, 1, NULL, NULL, NULL, NULL, 10.00, NULL),
(321, 55, 9, 9, 1, NULL, NULL, NULL, NULL, 1.75, NULL),
(322, 55, 10, 10, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(323, 55, 11, 11, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(324, 56, 1, 1, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(325, 56, 2, 2, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(326, 56, 3, 3, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(327, 56, 4, 4, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(328, 56, 5, 5, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(329, 56, 6, 6, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(330, 56, 7, 7, 1, NULL, NULL, NULL, NULL, 1.20, NULL),
(331, 56, 8, 8, 1, NULL, NULL, NULL, NULL, 10.00, NULL),
(332, 56, 9, 9, 1, NULL, NULL, NULL, NULL, 1.20, NULL),
(333, 56, 10, 10, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(334, 56, 11, 11, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(335, 57, 1, 1, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(336, 57, 2, 2, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(337, 57, 3, 3, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(338, 57, 4, 4, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(339, 57, 5, 5, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(340, 57, 6, 6, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(341, 57, 7, 7, 1, NULL, NULL, NULL, NULL, 2.00, NULL),
(342, 57, 8, 8, 1, NULL, NULL, NULL, NULL, 10.00, NULL),
(343, 57, 9, 9, 1, NULL, NULL, NULL, NULL, 2.00, NULL),
(344, 57, 10, 10, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(345, 57, 11, 11, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(346, 58, 1, 1, 0, NULL, NULL, NULL, NULL, 0.00, NULL),
(347, 58, 2, 2, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(348, 58, 3, 3, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(349, 58, 4, 4, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(350, 58, 5, 5, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(351, 58, 6, 6, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(352, 58, 7, 7, 1, NULL, NULL, NULL, NULL, 2.00, NULL),
(353, 58, 8, 8, 1, NULL, NULL, NULL, NULL, 10.00, NULL),
(354, 58, 9, 9, 1, NULL, NULL, NULL, NULL, 2.00, NULL),
(355, 58, 10, 10, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(356, 58, 11, 11, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(358, 59, 1, 1, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(359, 59, 2, 2, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(360, 59, 3, 3, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(361, 59, 4, 4, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(362, 59, 5, 5, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(363, 59, 6, 6, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(364, 59, 7, 7, 1, NULL, NULL, NULL, NULL, 1.80, NULL),
(365, 59, 8, 8, 1, NULL, NULL, NULL, NULL, 10.00, NULL),
(366, 59, 9, 9, 1, NULL, NULL, NULL, NULL, 1.80, NULL),
(367, 59, 10, 10, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(368, 59, 11, 11, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(369, 60, 1, 1, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(370, 60, 2, 2, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(371, 60, 3, 3, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(372, 60, 4, 4, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(373, 60, 5, 5, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(374, 60, 6, 6, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(375, 60, 7, 7, 1, NULL, NULL, NULL, NULL, 1.50, NULL),
(376, 60, 8, 8, 1, NULL, NULL, NULL, NULL, 50.00, NULL),
(377, 60, 9, 9, 1, NULL, NULL, NULL, NULL, 1.50, NULL),
(378, 60, 10, 10, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(379, 60, 11, 11, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(380, 61, 1, 1, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(381, 61, 2, 2, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(382, 61, 3, 3, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(383, 61, 4, 4, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(384, 61, 5, 5, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(385, 61, 6, 6, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(386, 61, 7, 7, 1, NULL, NULL, NULL, NULL, 1.50, NULL),
(387, 61, 8, 8, 1, NULL, NULL, NULL, NULL, 10.00, NULL),
(388, 61, 9, 9, 1, NULL, NULL, NULL, NULL, 1.50, NULL),
(389, 61, 10, 10, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(390, 61, 11, 11, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(391, 62, 1, 1, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(392, 62, 2, 2, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(393, 62, 3, 3, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(394, 62, 4, 4, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(395, 62, 5, 5, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(396, 62, 6, 6, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(397, 62, 7, 7, 1, NULL, NULL, NULL, NULL, 2.00, NULL),
(398, 62, 8, 8, 1, NULL, NULL, NULL, NULL, 10.00, NULL),
(399, 62, 9, 9, 1, NULL, NULL, NULL, NULL, 2.00, NULL),
(400, 62, 10, 10, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(401, 62, 11, 11, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(402, 66, 1, 1, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(403, 66, 2, 2, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(404, 66, 3, 3, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(405, 66, 4, 4, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(406, 66, 5, 5, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(407, 66, 6, 6, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(408, 66, 7, 7, 1, NULL, NULL, NULL, NULL, 0.03, NULL),
(409, 66, 8, 8, 1, NULL, NULL, NULL, NULL, 0.25, NULL),
(410, 66, 9, 9, 1, NULL, NULL, NULL, NULL, 0.03, NULL),
(411, 66, 10, 10, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(412, 66, 11, 11, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(413, 65, 1, 1, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(414, 65, 2, 2, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(415, 65, 3, 3, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(416, 65, 4, 4, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(417, 65, 5, 5, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(418, 65, 6, 6, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(419, 65, 7, 7, 1, NULL, NULL, NULL, NULL, 0.03, NULL),
(420, 65, 8, 8, 1, NULL, NULL, NULL, NULL, 0.32, NULL),
(421, 65, 9, 9, 1, NULL, NULL, NULL, NULL, 0.03, NULL),
(422, 65, 10, 10, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(423, 65, 11, 11, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(424, 64, 1, 1, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(425, 64, 2, 2, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(426, 64, 3, 3, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(427, 64, 4, 4, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(428, 64, 5, 5, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(429, 64, 6, 6, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(430, 64, 7, 7, 1, NULL, NULL, NULL, NULL, 1.00, NULL),
(431, 64, 8, 8, 1, NULL, NULL, NULL, NULL, 2.00, NULL),
(432, 64, 9, 9, 1, NULL, NULL, NULL, NULL, 1.00, NULL),
(433, 64, 10, 10, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(434, 64, 11, 11, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(435, 63, 1, 1, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(436, 63, 2, 2, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(437, 63, 3, 3, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(438, 63, 4, 4, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(439, 63, 5, 5, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(440, 63, 6, 6, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(441, 63, 7, 7, 1, NULL, NULL, NULL, NULL, 0.50, NULL),
(442, 63, 8, 8, 1, NULL, NULL, NULL, NULL, 10.00, NULL),
(443, 63, 9, 9, 1, NULL, NULL, NULL, NULL, 0.50, NULL),
(444, 63, 10, 10, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(445, 63, 11, 11, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(446, 67, 1, 1, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(447, 67, 2, 2, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(448, 67, 3, 3, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(449, 67, 4, 4, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(450, 67, 5, 5, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(451, 67, 6, 6, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(452, 67, 7, 7, 1, NULL, NULL, NULL, NULL, 15.00, NULL),
(453, 67, 8, 8, 1, NULL, NULL, NULL, NULL, 30.00, NULL),
(454, 67, 9, 9, 1, NULL, NULL, NULL, NULL, 15.00, NULL),
(455, 67, 10, 10, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(456, 67, 11, 11, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(457, 68, 1, 1, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(458, 68, 2, 2, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(459, 68, 3, 3, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(460, 68, 4, 4, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(461, 68, 5, 5, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(462, 68, 6, 6, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(463, 68, 7, 7, 1, NULL, NULL, NULL, NULL, 15.00, NULL),
(464, 68, 8, 8, 1, NULL, NULL, NULL, NULL, 30.00, NULL),
(465, 68, 9, 9, 1, NULL, NULL, NULL, NULL, 15.00, NULL),
(466, 68, 10, 10, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(467, 68, 11, 11, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(468, 69, 1, 1, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(469, 69, 2, 2, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(470, 69, 3, 3, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(471, 69, 4, 4, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(472, 69, 5, 5, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(473, 69, 6, 6, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(474, 69, 7, 7, 1, NULL, NULL, NULL, NULL, 20.00, NULL),
(475, 69, 8, 8, 1, NULL, NULL, NULL, NULL, 35.00, NULL),
(476, 69, 9, 9, 1, NULL, NULL, NULL, NULL, 20.00, NULL),
(477, 69, 10, 10, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(478, 69, 11, 11, 1, NULL, NULL, NULL, NULL, 0.00, NULL);

-- 
-- Вывод данных для таблицы employees
--
INSERT INTO employees VALUES
(19, 1, 'БСА', 'Бородулин СА', 35, NULL, 0),
(20, 2, 'ВАВ', 'Вершинин АВ', 35, NULL, 0),
(21, 3, 'ШАМ', 'Шатров АМ', 35, NULL, 0),
(22, 4, 'ШЕА', 'Шатров ЕА', 35, NULL, 0),
(23, 5, 'ССЮ', 'Скребнев СЮ', 35, NULL, 0),
(24, 6, 'ПАВ', 'Пучков АВ', 35, NULL, 0),
(25, 7, 'ШЭП', 'Шагаев ЭП', 35, NULL, 0),
(26, 8, 'ЛЕА', 'Логвинов ЕА', 40, NULL, 0),
(27, 9, 'НВА', 'Непейков ВА', 35, NULL, 0),
(28, 10, 'ХИХ', 'Хасанов ИХ', 39, NULL, 0),
(29, 11, 'ГАВ', 'Гоголин АВ', 40, NULL, 0),
(30, 12, 'ПДА', 'Погадаев ДА', 41, NULL, 0),
(31, 13, 'НЕВ', 'Наумова ЕВ', 30, NULL, 0),
(32, 14, 'МНА', 'Морозова НА', 36, NULL, 0),
(33, 15, 'НВ', 'Наумов В', 42, NULL, 0),
(34, 16, 'ТАС', 'Тюренкова АС', 36, NULL, 0),
(35, 17, 'МАА', 'Микишев АА', 38, NULL, 0),
(36, 18, 'СНИ', 'Сазонов НИ', 35, NULL, 0),
(37, 19, 'КЕВ', 'Каминская ЕВ', 36, NULL, 0),
(38, 20, 'СЛА', 'Санникова ЛА', 36, NULL, 0),
(39, 21, 'ГОА', 'Губин ОА', 38, NULL, 0),
(40, 22, 'ХЮВ', 'Холодников ЮВ', 27, NULL, 0),
(41, 23, 'ХЕЮ', 'Холодникова ЕЮ', 31, NULL, 0),
(42, 24, 'ХМЮ', 'Холодников МЮ', 44, NULL, 0),
(43, 25, 'ПНА', 'Поскребышева НА', 32, NULL, 0),
(44, 26, 'РТВ', 'Раупова ТВ', 29, NULL, 0),
(45, 27, 'ХВП', 'Холодникова ВП', 28, NULL, 0);

-- 
-- Вывод данных для таблицы equipment_payments
--
INSERT INTO equipment_payments VALUES
(5, 50, NULL, '2016-12-09 00:00:00', 5000.00, NULL, 0),
(6, 52, NULL, '2016-12-09 00:00:00', 5000.00, NULL, 1),
(7, 57, 348, '2016-12-24 00:00:00', 2000.00, NULL, 0);

-- 
-- Вывод данных для таблицы material_arrival_records
--
INSERT INTO material_arrival_records VALUES
(6, 1, '1/2480', 39, 3379.71, '2016-12-06 00:00:00', '2453', 46, 10, 140.40, 20.400, NULL, 0),
(7, 2, '1/2480', 39, 2542.00, '2016-12-06 00:00:00', '2453', 47, 10, 115.20, 18.700, NULL, 0),
(8, 3, '1/2480', 39, 2269.44, '2016-12-06 00:00:00', '2453', 48, 10, 115.20, 19.700, NULL, 0),
(9, 4, 'Т-1341', 38, 7000.00, '2016-12-06 00:00:00', 'Т-1341', 49, 10, 593.22, 10.000, NULL, 0),
(10, 5, '1113', 40, 8085.00, '2016-12-05 00:00:00', '1113', 50, 10, 111.23, 61.599, NULL, 0),
(11, 6, '5000', 40, 5600.00, '2016-12-05 00:00:00', '6000', 47, 10, 140.00, 40.000, NULL, 0),
(12, 7, '5001', 40, 2620.00, '2016-12-05 00:00:00', '6001', 35, 10, 131.00, 20.000, NULL, 0),
(13, 8, '5002', 40, 6656.80, '2016-12-05 00:00:00', '6002', 51, 10, 83.21, 80.000, NULL, 0),
(14, 9, '5003', 40, 3944.00, '2016-12-05 00:00:00', '6003', 52, 10, 116.00, 34.000, NULL, 0),
(15, 10, '5004', 40, 2283.00, '2016-12-05 00:00:00', '6004', 53, 10, 228.30, 10.000, NULL, 0),
(16, 11, '5005', 40, 1875.00, '2016-12-05 00:00:00', '6005', 55, 10, 125.00, 15.000, NULL, 0),
(17, 12, '5006', 40, 3914.00, '2016-12-05 00:00:00', '6006', 59, 10, 195.70, 20.000, NULL, 0),
(18, 13, '148', 40, 9000.00, '2016-12-21 00:00:00', '148', 51, 10, 90.00, 100.000, NULL, 0),
(19, 14, '141716416Ф от 23 .12.2016', 41, 4683.42, '2016-12-23 00:00:00', '8998/16', 63, 10, 147.00, 27.000, NULL, 0),
(20, 15, '141716416Ф от 23.12.16', 41, 28286.37, '2016-12-23 00:00:00', '8998/16', 53, 10, 228.30, 105.000, NULL, 0),
(21, 16, '141716416Ф от 23.12.16', 41, 27824.40, '2016-12-23 00:00:00', '8998/16', 35, 10, 131.00, 180.000, NULL, 0),
(22, 17, '141716416Ф от 23.12.16', 41, 29364.30, '2016-12-23 00:00:00', '8998/16', 34, 10, 118.50, 210.000, NULL, 0),
(23, 18, '141716416Ф от 23.12.16', 41, 21261.24, '2016-12-23 00:00:00', '8998/16', 62, 10, 138.60, 130.000, NULL, 0),
(24, 19, '141716416Ф от 23.12.16', 41, 12272.00, '2016-12-23 00:00:00', '8998/16', 51, 10, 83.20, 125.000, NULL, 0);

-- 
-- Вывод данных для таблицы requests
--
INSERT INTO requests VALUES
(226, 1, '2016-12-04 00:00:00', '2016-12-15 00:00:00', '2017-01-13 00:00:00', '2016-12-21 00:00:00', NULL, 20, 19, 20, 50000.00, 1, NULL, 0, NULL, NULL, 1, '2016-12-04'),
(235, 2, '2016-11-15 00:00:00', '2016-11-16 00:00:00', '2016-12-01 00:00:00', '2016-12-07 00:00:00', NULL, NULL, 30, 20, 19325.00, 1, NULL, 0, NULL, NULL, NULL, NULL),
(239, 3, '2016-12-08 00:00:00', '2016-12-08 00:00:00', NULL, '2016-12-24 00:00:00', 1, 1, 19, 20, 14031.00, 1, NULL, 0, 1, '2016-12-08', 2, '2016-12-08'),
(251, 4, '2016-12-07 00:00:00', '2016-12-08 00:00:00', '2016-12-31 00:00:00', '2016-12-23 00:00:00', NULL, 17, 22, 20, 1898.40, 0, NULL, 0, NULL, NULL, NULL, NULL),
(253, 5, '2016-12-07 00:00:00', '2016-12-08 00:00:00', '2016-12-31 00:00:00', '2016-12-10 00:00:00', NULL, 17, 19, 20, 30993.40, 0, NULL, 0, NULL, NULL, NULL, NULL),
(255, 6, '2016-12-07 00:00:00', '2016-12-08 00:00:00', '2016-12-31 00:00:00', '2016-12-11 00:00:00', NULL, 17, 19, 20, 7009.80, 0, NULL, 0, NULL, NULL, NULL, NULL),
(258, 7, '2016-12-07 00:00:00', '2016-12-08 00:00:00', '2016-12-31 00:00:00', '2016-12-12 00:00:00', NULL, 17, 19, 20, 31586.60, 0, NULL, 0, NULL, NULL, NULL, NULL),
(259, 8, '2016-12-07 00:00:00', '2016-12-08 00:00:00', '2016-12-31 00:00:00', '2016-12-19 00:00:00', NULL, 17, 19, 20, 29263.05, 0, NULL, 0, NULL, NULL, NULL, NULL);

-- 
-- Вывод данных для таблицы rolling_records
--
INSERT INTO rolling_records VALUES
(6, 1, '2016-12-08 00:00:00', 19, 52, 52, 10, NULL, 0),
(7, 2, '2016-12-08 00:00:00', 19, 53, 53, 10, NULL, 0),
(8, 3, '2016-12-08 00:00:00', 19, 54, 53, 140, NULL, 0),
(9, 4, '2016-12-08 00:00:00', 19, 55, 51, 70, NULL, 0),
(10, 5, '2016-12-08 00:00:00', 19, 56, 51, 70, NULL, 0),
(11, 6, '2016-12-08 00:00:00', 19, 57, 55, 11, NULL, 0),
(12, 7, '2016-12-08 00:00:00', 19, 58, 55, 5, NULL, 0),
(13, 8, '2016-12-23 00:00:00', 19, 52, 52, 10, NULL, 0);

-- 
-- Вывод данных для таблицы shipping_order_records
--

-- Таблица rti.shipping_order_records не содержит данных

-- 
-- Вывод данных для таблицы payments
--
INSERT INTO payments VALUES
(8, 226, '2016-12-09 00:00:00', '96', NULL, 20000.00, NULL, 1),
(9, 235, '2016-12-09 00:00:00', '15', NULL, 19325.00, NULL, 1),
(10, 239, '2016-12-09 00:00:00', '4', NULL, 14031.00, NULL, 1),
(11, 226, '2016-12-10 00:00:00', '13', NULL, 30000.00, NULL, 1),
(12, 253, '2016-12-21 00:00:00', '120', NULL, 5000.00, NULL, 1),
(13, 226, '2016-12-21 00:00:00', '131', NULL, 20000.00, NULL, 1),
(14, 226, '2016-12-21 00:00:00', '140', NULL, 30000.00, NULL, 1),
(15, 259, '2016-12-21 00:00:00', '184', NULL, 2500.00, NULL, 0);

-- 
-- Вывод данных для таблицы report_of_completion_items
--

-- Таблица rti.report_of_completion_items не содержит данных

-- 
-- Вывод данных для таблицы request_details
--
INSERT INTO request_details VALUES
(58, 226, 1, 50, 17, 26, NULL, NULL, 1000, 50.00, NULL, 50000.00, 35, NULL, 3, 0),
(59, 235, 1, 51, 19, 26, NULL, NULL, 500, 38.65, 38.09, 19325.00, 51, NULL, 2, 0),
(60, 239, 1, 52, 20, 135, '4326', NULL, 10, 484.00, 350.57, 4840.00, 52, NULL, 3, 0),
(61, 239, 2, 53, 19, 136, 'Одновременная загрузка  втулки 6*10*16', NULL, 140, 6.78, 12.85, 949.20, 53, NULL, 3, 0),
(62, 239, 3, 54, 19, 136, NULL, NULL, 140, 6.78, 12.86, 949.20, 53, NULL, 3, 0),
(63, 239, 4, 55, 19, 93, NULL, NULL, 70, 35.60, 33.15, 2492.00, 51, NULL, 3, 0),
(64, 239, 5, 56, 19, 137, NULL, NULL, 70, 8.58, 25.33, 600.60, 51, NULL, 3, 0),
(65, 239, 6, 57, 17, 27, NULL, NULL, 11, 262.50, 305.72, 2887.50, 58, NULL, 3, 0),
(66, 239, 7, 58, 17, 27, NULL, NULL, 5, 262.50, 421.05, 1312.50, 58, NULL, 3, 0),
(67, 251, 1, 53, 19, 136, 'Одновременная загрузка  втулки 6*10*16', NULL, 140, 6.78, 6.79, 949.20, 53, NULL, 3, 0),
(68, 251, 2, 54, 19, 136, NULL, NULL, 140, 6.78, 6.80, 949.20, 53, NULL, 2, 0),
(69, 253, 1, 60, 19, 80, 'Эластомер', NULL, 9, 2805.00, 2805.00, 25245.00, 59, NULL, 3, 0),
(70, 253, 2, 53, 19, 136, 'Одновременная загрузка  втулки 6*10*16', NULL, 140, 6.78, 6.79, 949.20, 53, NULL, 3, 0),
(71, 253, 3, 54, 19, 136, NULL, NULL, 140, 6.78, 6.80, 949.20, 53, NULL, 3, 0),
(72, 253, 4, 59, 19, 138, 'Энерготехсоюз', NULL, 140, 27.50, 27.49, 3850.00, 35, NULL, 2, 0),
(73, 255, 1, 53, 19, 136, 'Одновременная загрузка  втулки 6*10*16', NULL, 140, 6.78, 6.79, 949.20, 53, NULL, 1, 0),
(74, 255, 2, 54, 19, 136, NULL, NULL, 210, 6.78, 6.80, 1423.80, 53, NULL, 1, 0),
(75, 255, 3, 62, 18, 52, NULL, NULL, 210, 22.08, 58.05, 4636.80, 35, NULL, 3, 0),
(76, 258, 1, 55, 19, 93, NULL, NULL, 70, 35.60, 33.16, 2492.00, 51, NULL, 3, 0),
(77, 258, 2, 56, 19, 137, NULL, NULL, 70, 8.58, 8.54, 600.60, 51, NULL, 3, 0),
(78, 258, 4, 61, 19, 139, NULL, NULL, 315, 3.60, 9.46, 1134.00, 51, NULL, 3, 0),
(79, 258, 5, 59, 19, 138, 'Энерготехсоюз', NULL, 200, 27.50, 27.49, 5500.00, 35, NULL, 2, 0),
(80, 258, 6, 63, 19, 26, NULL, NULL, 100, 25.00, 24.05, 2500.00, 53, NULL, 2, 0),
(81, 258, 7, 52, 20, 135, '4326 цена 131', NULL, 40, 484.00, 479.22, 19360.00, 35, NULL, 2, 0),
(82, 259, 1, 65, 19, 38, NULL, NULL, 5000, 2.55, 2.10, 12750.00, 47, NULL, 3, 0),
(83, 259, 2, 64, 19, 26, NULL, NULL, 8000, 1.20, 1.07, 9600.00, 47, NULL, 3, 0),
(84, 259, 3, 66, 19, 38, '1500 шт/см ', NULL, 2711, 2.55, 2.29, 6913.05, 47, NULL, 2, 0);

-- 
-- Вывод данных для таблицы shaving_records
--
INSERT INTO shaving_records VALUES
(19, 1, 32, '2016-12-09 00:00:00', 50, 19, 640, 5, 0),
(20, 2, 34, '2016-12-09 00:00:00', 51, 20, 600, 10, 0),
(21, 3, 37, '2016-12-09 00:00:00', 52, 23, 10, 0, 0),
(22, 4, 38, '2016-12-09 00:00:00', 53, 23, 140, 0, 0),
(23, 5, 38, '2016-12-09 00:00:00', 55, 23, 70, 0, 0),
(24, 6, 37, '2016-12-09 00:00:00', 54, 23, 140, 0, 0),
(25, 7, 37, '2016-12-09 00:00:00', 56, 23, 70, 0, 0),
(26, 8, 37, '2016-12-09 00:00:00', 57, 23, 11, 0, 0),
(27, 9, 32, '2016-12-09 00:00:00', 58, 23, 5, 0, 0);

-- 
-- Вывод данных для таблицы shipped_product_records
--

-- Таблица rti.shipped_product_records не содержит данных

-- 
-- Вывод данных для таблицы work_item_employee_package
--
INSERT INTO work_item_employee_package VALUES
(17, '2016-12-05 00:00:00', 19, 'Формовка'),
(18, '2016-12-06 00:00:00', 19, 'формовка'),
(19, '2016-12-07 00:00:00', 19, NULL),
(20, '2016-12-08 00:00:00', 19, 'Формовой'),
(21, '2016-12-09 00:00:00', 19, NULL),
(22, '2016-12-09 00:00:00', 20, 'формовой'),
(23, '2016-12-08 00:00:00', 20, 'Формовой'),
(24, '2016-12-09 00:00:00', 21, 'Формовой'),
(25, '2016-12-12 00:00:00', 20, NULL),
(26, '2016-12-13 00:00:00', 20, NULL),
(27, '2016-12-14 00:00:00', 21, NULL),
(28, '2016-12-08 00:00:00', 23, 'Формовой'),
(29, '2016-12-08 00:00:00', 22, 'Формовой'),
(30, '2016-12-19 00:00:00', 20, 'Формовой/1'),
(31, '2016-12-19 00:00:00', 21, NULL),
(32, '2016-12-19 00:00:00', 22, NULL),
(33, '2016-12-19 00:00:00', 26, NULL),
(34, '2016-12-19 00:00:00', 24, NULL),
(35, '2016-12-19 00:00:00', 27, NULL),
(36, '2016-12-19 00:00:00', 23, NULL),
(37, '2016-12-16 00:00:00', 19, 'Формовой'),
(38, '2016-12-16 00:00:00', 20, 'Формовой'),
(39, '2016-12-16 00:00:00', 26, 'Вырубной'),
(40, '2016-12-16 00:00:00', 23, 'Формовой'),
(41, '2016-12-16 00:00:00', 21, 'Формовой'),
(42, '2016-12-16 00:00:00', 22, 'Формовой'),
(43, '2016-12-15 00:00:00', 19, NULL),
(44, '2016-12-15 00:00:00', 20, 'Формовой'),
(45, '2016-12-20 00:00:00', 24, NULL);

-- 
-- Вывод данных для таблицы work_items
--
INSERT INTO work_items VALUES
(50, '2016-12-05', 1, 50, 1000, 250, 250, 0, NULL, 19, 34, 1, '05.12.2016/1'),
(51, '2016-12-06', 1, 50, 1000, 250, 250, NULL, NULL, 19, 34, 0, '06.12.2016/1'),
(52, '2016-12-07', 1, 50, 1000, 250, 250, NULL, NULL, 19, 34, 1, '07.12.2016/1'),
(53, '2016-12-08', 1, 52, 50, 10, 10, NULL, NULL, 23, 37, 0, '08.12.2016/1'),
(55, '2016-12-09', 1, 50, 1000, 340, 340, NULL, NULL, 19, 34, 0, '09.12.2016/1'),
(57, '2016-12-08', 2, 53, 560, 140, 140, 0, NULL, 23, 38, 1, '08.12.2016/2'),
(58, '2016-12-09', 2, 51, 500, 216, 216, NULL, NULL, 20, 35, 0, '09.12.2016/2'),
(60, '2016-12-12', 1, 51, 500, 76, 76, NULL, NULL, 20, 35, 0, '12.12.2016/1'),
(61, '2016-12-13', 1, 51, 500, 100, 100, NULL, NULL, 20, 35, 0, '13.12.2016/1'),
(62, '2016-12-14', 1, 51, 500, 240, 240, NULL, NULL, 21, 35, 0, '14.12.2016/1'),
(63, '2016-12-08', 3, 54, 630, 140, 140, NULL, NULL, 23, 39, 1, '08.12.2016/3'),
(64, '2016-12-08', 4, 55, 140, 70, 70, NULL, NULL, 23, 40, 1, '08.12.2016/4'),
(65, '2016-12-08', 5, 56, 140, 70, 70, NULL, NULL, 23, 41, 1, '08.12.2016/5'),
(66, '2016-12-08', 6, 57, 11, 11, 11, NULL, NULL, 23, 42, 1, '08.12.2016/6'),
(67, '2016-12-08', 7, 58, 5, 5, 5, NULL, NULL, 23, 43, 1, '08.12.2016/7'),
(68, '2016-12-10', 1, 50, 1000, 100, NULL, NULL, NULL, 19, NULL, 0, '10.12.2016/1'),
(69, '2016-12-10', 2, 51, 500, 10, NULL, NULL, NULL, 20, NULL, 0, '10.12.2016/2'),
(72, '2016-12-08', 8, 60, 9, 9, 9, NULL, NULL, 20, 45, 0, '08.12.2016/8'),
(73, '2016-12-08', 9, 53, 420, 140, 140, NULL, NULL, 20, 46, 1, '08.12.2016/9'),
(74, '2016-12-08', 10, 54, 490, 140, 140, NULL, NULL, 20, 47, 1, '08.12.2016/10'),
(75, '2016-12-08', 11, 59, 340, 140, 140, NULL, NULL, 20, 48, 0, '08.12.2016/11'),
(76, '2016-12-08', 12, 50, 250, 250, 250, NULL, NULL, 22, 34, 1, '08.12.2016/12'),
(77, '2016-12-19', 1, 52, 50, 10, 10, NULL, NULL, 20, 37, 0, '19.12.2016/1'),
(78, '2016-12-19', 2, 53, 560, 140, 140, NULL, NULL, 20, 38, 0, '19.12.2016/2'),
(79, '2016-12-19', 3, 54, 630, 140, 140, NULL, NULL, 21, 39, 0, '19.12.2016/3'),
(80, '2016-12-19', 4, 55, 140, 70, 140, NULL, NULL, 22, 40, 0, '19.12.2016/4'),
(81, '2016-12-19', 5, 56, 140, 70, 140, NULL, NULL, 22, 41, 0, '19.12.2016/5'),
(82, '2016-12-19', 6, 59, 340, 200, 195, NULL, NULL, 21, 44, 0, '19.12.2016/6'),
(83, '2016-12-19', 7, 61, 315, 315, 315, NULL, NULL, 26, 49, 0, '19.12.2016/7'),
(84, '2016-12-19', 8, 62, 210, 210, 210, NULL, NULL, 24, 50, 0, '19.12.2016/8'),
(85, '2016-12-19', 9, 63, 100, 96, 96, NULL, NULL, 27, 62, 0, '19.12.2016/9'),
(86, '2016-12-19', 10, 64, 8000, 8000, 8000, NULL, NULL, 24, 61, 0, '19.12.2016/10'),
(87, '2016-12-19', 11, 65, 5000, 5000, 5000, NULL, NULL, 26, 56, 0, '19.12.2016/11'),
(88, '2016-12-19', 12, 66, 2711, 1500, 1500, NULL, NULL, 23, 53, 0, '19.12.2016/12'),
(89, '2016-12-16', 1, 52, 50, 10, 10, NULL, NULL, 19, 37, 0, '16.12.2016/1'),
(90, '2016-12-16', 2, 53, 560, 140, 140, NULL, NULL, 20, 38, 0, '16.12.2016/2'),
(91, '2016-12-16', 3, 54, 630, 140, 140, NULL, NULL, 21, 39, 0, '16.12.2016/3'),
(92, '2016-12-16', 4, 59, 285, 5, 5, NULL, NULL, 22, 44, 0, '16.12.2016/4'),
(93, '2016-12-16', 5, 63, 100, 4, 4, NULL, NULL, 23, 62, 0, '16.12.2016/5'),
(94, '2016-12-16', 6, 66, 2711, 1211, 1211, NULL, NULL, 26, 53, 0, '16.12.2016/6'),
(95, '2016-12-15', 1, 52, 50, 10, 10, NULL, NULL, 19, 37, 0, '15.12.2016/1'),
(96, '2016-12-15', 2, 52, 30, 10, 10, NULL, NULL, 20, 37, 0, '15.12.2016/2'),
(97, '2016-12-15', 3, 54, 630, 60, 60, NULL, NULL, 19, 39, 0, '15.12.2016/3'),
(98, '2016-12-20', 1, 54, 630, 10, 10, NULL, NULL, 24, 39, 0, '20.12.2016/1');

-- 
-- Вывод данных для таблицы shipments
--
INSERT INTO shipments VALUES
(22, 1, '2016-12-06', 226, 19, 19, 8, 0, 0, '061216/1', 4, '06.12.2016', 1, 1, 'Сильнягин ДВ', NULL, 5782.00, 0, 1, '2016-12-04', NULL),
(23, 2, '2016-12-09', 239, 19, 19, 10, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, '2016-12-09', NULL),
(24, 3, '2016-12-18', 251, 22, 22, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, '2016-12-18', NULL),
(25, 4, '2016-12-18', 226, 19, 19, 8, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4, '2016-12-18', NULL),
(26, 5, '2016-12-18', 226, 19, 19, 8, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 5, '2016-12-18', NULL),
(27, 6, '2016-12-18', 253, 19, 19, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 6, '2016-12-18', NULL),
(28, 7, '2016-12-18', 235, 30, 30, 9, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 7, '2016-12-18', NULL),
(29, 8, '2016-12-20', 258, 19, 19, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, '2016-12-19', NULL),
(30, 9, '2016-12-19', 258, 19, 19, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, '2016-12-19', NULL),
(31, 10, '2016-12-19', 253, 19, 19, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 10, '2016-12-19', NULL),
(32, 11, '2016-12-20', 255, 19, 19, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 11, '2016-12-19', NULL),
(33, 12, '2016-12-20', 259, 19, 19, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, '2016-12-19', NULL),
(34, 13, '2016-12-19', 253, 19, 19, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, '2016-12-19', NULL),
(35, 14, '2016-12-21', 255, 19, 19, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 14, '2016-12-19', NULL),
(36, 15, '2016-12-21', 226, 19, 19, 8, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 15, '2016-12-21', NULL),
(37, 16, '2016-12-24', 259, 19, 19, 15, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, '2016-12-24', NULL);

-- 
-- Вывод данных для таблицы work_item_employee_package_machines
--
INSERT INTO work_item_employee_package_machines VALUES
(17, 21, 480, 476, 8),
(18, 17, 480, 350, 8),
(19, 20, 480, 28, 8),
(20, 23, 480, 66, 8),
(21, 22, 480, 60, 8),
(22, 24, 480, 20, 8),
(23, 25, 480, 20, 8),
(24, 26, 480, 26, 8),
(25, 27, 480, 66, 8),
(26, 18, 480, 350, 8),
(27, 19, 480, 336, 8),
(28, 28, 480, 200, 9),
(29, 28, 480, 350, 14),
(30, 28, 480, 170, 15),
(31, 28, 480, 110, 12),
(32, 23, 480, 450, 12),
(33, 23, 480, 21, 16),
(34, 23, 480, 87, 10),
(35, 29, 480, 350, 8),
(36, 30, 480, 200, 9),
(37, 30, 480, 350, 14),
(38, 31, 480, 350, 14),
(39, 31, 480, 500, 8),
(40, 32, 480, 340, 15),
(41, 33, 480, 350, 17),
(42, 33, 480, 1600, 18),
(43, 34, 480, 350, 15),
(44, 34, 480, 222, 20),
(45, 35, 480, 500, 13),
(46, 36, 480, 677, 18),
(47, 37, 0, 200, 9),
(48, 38, 480, 350, 14),
(49, 39, 480, 302, 18),
(50, 40, 480, 20, 13),
(51, 41, 480, 350, 14),
(52, 42, 480, 10, 8),
(53, 43, 480, 200, 9),
(54, 44, 480, 200, 9),
(55, 43, 480, 150, 14),
(56, 45, 480, 20, 14);

-- 
-- Вывод данных для таблицы work_item_request_details
--
INSERT INTO work_item_request_details VALUES
(234, 50, 58, 0, 250),
(238, 51, 58, 0, 250),
(241, 52, 58, 0, 250),
(243, 53, 81, 0, 10),
(244, 57, 67, 0, 140),
(246, 63, 68, 0, 140),
(248, 64, 76, 0, 70),
(249, 65, 77, 0, 70),
(250, 66, 65, 0, 11),
(251, 67, 66, 0, 5),
(252, 72, 69, 0, 9),
(253, 73, 70, 0, 140),
(254, 74, 71, 0, 140),
(255, 75, 72, 0, 140),
(256, 55, 58, 0, 340),
(257, 58, 59, 0, 216),
(261, 60, 59, 0, 76),
(264, 61, 59, 0, 100),
(266, 62, 59, 0, 240),
(267, 76, 58, 0, 250),
(273, 77, 81, 0, 10),
(274, 78, 67, 0, 140),
(275, 79, 68, 0, 140),
(276, 82, 72, 0, 140),
(277, 82, 79, 1, 55),
(278, 80, 76, 0, 70),
(279, 80, 63, 1, 70),
(280, 81, 77, 0, 70),
(281, 81, 64, 1, 70),
(282, 83, 78, 0, 315),
(283, 87, 82, 0, 5000),
(284, 84, 75, 0, 210),
(285, 86, 83, 0, 8000),
(288, 88, 84, 0, 1500),
(289, 85, 80, 0, 96),
(290, 89, 81, 0, 10),
(291, 90, 67, 0, 140),
(292, 94, 84, 0, 1211),
(293, 93, 80, 0, 4),
(294, 91, 68, 0, 140),
(295, 92, 72, 0, 5),
(298, 95, 81, 0, 10),
(299, 96, 81, 0, 10),
(300, 97, 68, 0, 60),
(301, 98, 68, 0, 10);

-- 
-- Вывод данных для таблицы shipment_items
--
INSERT INTO shipment_items VALUES
(25, 22, 1, 58, 98, 50.00, 18, NULL, 98, 1, '05.12.2016/1'),
(26, 23, 1, 60, 10, 484.00, 18, NULL, NULL, NULL, '08.12.2016/1'),
(27, 23, 2, 61, 140, 6.78, 18, NULL, NULL, NULL, '08.12.2016/2'),
(28, 23, 3, 62, 140, 6.78, 18, NULL, NULL, NULL, '08.12.2016/3'),
(29, 23, 4, 63, 70, 35.60, 18, NULL, NULL, NULL, '08.12.2016/4'),
(30, 23, 5, 64, 70, 8.58, 18, NULL, NULL, NULL, '08.12.2016/5'),
(31, 23, 6, 65, 11, 262.50, 18, NULL, NULL, NULL, '08.12.2016/6'),
(32, 23, 7, 66, 5, 262.50, 18, NULL, NULL, NULL, '08.12.2016/7'),
(33, 24, 1, 67, 140, 6.78, 18, NULL, NULL, NULL, '08.12.2016/9'),
(34, 24, 2, 68, 140, 6.78, 18, NULL, NULL, NULL, '08.12.2016/10'),
(35, 25, 1, 58, 402, 50.00, 18, NULL, NULL, NULL, '05.12.2016/1,06.12.2016/1'),
(36, 26, 1, 58, 500, 50.00, 18, NULL, NULL, NULL, '05.12.2016/1,07.12.2016/1,08.12.2016/12'),
(37, 27, 1, 69, 9, 2805.00, 18, NULL, NULL, NULL, '08.12.2016/8'),
(38, 27, 2, 72, 140, 27.50, 18, NULL, NULL, NULL, '08.12.2016/11'),
(39, 28, 1, 59, 500, 38.65, 18, NULL, NULL, NULL, '09.12.2016/2,12.12.2016/1,13.12.2016/1,14.12.2016/1'),
(40, 29, 1, 81, 10, 484.00, 18, NULL, NULL, NULL, '19.12.2016/1'),
(41, 29, 2, 76, 70, 35.60, 18, NULL, NULL, NULL, '19.12.2016/4'),
(42, 29, 3, 77, 70, 8.58, 18, NULL, NULL, NULL, '19.12.2016/5'),
(43, 29, 4, 79, 200, 27.50, 18, NULL, NULL, NULL, '16.12.2016/4,19.12.2016/6'),
(44, 29, 5, 78, 315, 3.60, 18, NULL, NULL, NULL, '19.12.2016/7'),
(45, 29, 6, 80, 100, 25.00, 18, NULL, NULL, NULL, '16.12.2016/5,19.12.2016/9'),
(46, 30, 1, 81, 30, 484.00, 18, NULL, NULL, NULL, '15.12.2016/1,15.12.2016/2,16.12.2016/1'),
(47, 31, 1, 71, 140, 6.78, 18, NULL, NULL, NULL, '15.12.2016/3,16.12.2016/3'),
(49, 32, 1, 73, 140, 6.78, 18, NULL, NULL, NULL, '19.12.2016/2'),
(50, 32, 2, 74, 120, 6.78, 18, NULL, NULL, NULL, '16.12.2016/3,19.12.2016/3'),
(51, 32, 3, 75, 210, 22.08, 18, NULL, NULL, NULL, '19.12.2016/8'),
(53, 33, 2, 83, 8000, 1.20, 18, NULL, NULL, NULL, '19.12.2016/10'),
(54, 33, 3, 82, 5000, 2.55, 18, NULL, NULL, NULL, '19.12.2016/11'),
(55, 33, 4, 84, 2711, 2.55, 18, NULL, NULL, NULL, '16.12.2016/6,19.12.2016/12'),
(56, 34, 1, 70, 140, 6.78, 18, NULL, NULL, NULL, '16.12.2016/2'),
(57, 35, 1, 74, 90, 6.78, 18, NULL, NULL, NULL, '16.12.2016/3,19.12.2016/3,20.12.2016/1'),
(58, 36, 1, 58, 100, 50.00, 18, NULL, NULL, NULL, '05.12.2016/1,08.12.2016/12');

-- 
-- Вывод данных для таблицы shipment_item_work_items
--
INSERT INTO shipment_item_work_items VALUES
(93, 37, 72, 9),
(94, 38, 75, 140),
(95, 39, 58, 216),
(96, 39, 60, 76),
(97, 39, 61, 100),
(98, 39, 62, 108),
(147, 26, 53, 10),
(149, 27, 57, 140),
(151, 28, 63, 140),
(153, 29, 64, 70),
(155, 30, 65, 70),
(157, 31, 66, 11),
(158, 32, 67, 5),
(159, 46, 95, 10),
(160, 46, 96, 10),
(161, 46, 89, 10),
(183, 53, 86, 8000),
(184, 54, 87, 5000),
(185, 55, 94, 1211),
(186, 55, 88, 1500),
(214, 40, 77, 10),
(215, 41, 80, 70),
(216, 42, 81, 70),
(217, 43, 92, 5),
(218, 43, 82, 195),
(219, 44, 83, 315),
(220, 45, 93, 4),
(221, 45, 85, 96),
(228, 51, 84, 210),
(263, 25, 50, 98),
(264, 35, 50, 152),
(265, 35, 51, 250),
(266, 36, 50, 0),
(267, 36, 52, 250),
(268, 36, 76, 250),
(269, 58, 50, 0),
(270, 58, 76, 100),
(271, 33, 73, 140),
(272, 56, 90, 140),
(273, 49, 78, 140),
(274, 34, 74, 140),
(275, 47, 97, 60),
(276, 47, 91, 80),
(277, 50, 91, 60),
(278, 50, 79, 60),
(279, 57, 91, 0),
(280, 57, 79, 80),
(281, 57, 98, 10);

-- 
-- Восстановить предыдущий режим SQL (SQL mode)
-- 
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

-- 
-- Включение внешних ключей
-- 
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;