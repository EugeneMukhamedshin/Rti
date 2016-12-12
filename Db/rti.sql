--
-- Скрипт сгенерирован Devart dbForge Studio for MySQL, Версия 7.1.13.0
-- Домашняя страница продукта: http://www.devart.com/ru/dbforge/mysql/studio
-- Дата скрипта: 06.12.2016 8:39:39
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
  Press_Count INT(11) DEFAULT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB
AUTO_INCREMENT = 154
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
AUTO_INCREMENT = 13
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
AUTO_INCREMENT = 38
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
AUTO_INCREMENT = 27
AVG_ROW_LENGTH = 8192
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
AUTO_INCREMENT = 116
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
AUTO_INCREMENT = 34
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
AUTO_INCREMENT = 258
AVG_ROW_LENGTH = 69
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'технологические процессы'
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
AUTO_INCREMENT = 51
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
AUTO_INCREMENT = 20
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
AUTO_INCREMENT = 5
AVG_ROW_LENGTH = 5461
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'оплата изготовления оснастки'
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
AUTO_INCREMENT = 38
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
AUTO_INCREMENT = 20
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
AUTO_INCREMENT = 28
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
AUTO_INCREMENT = 9
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
AUTO_INCREMENT = 47
AVG_ROW_LENGTH = 16384
CHARACTER SET utf8
COLLATE utf8_general_ci
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
AUTO_INCREMENT = 6
AVG_ROW_LENGTH = 16384
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'журнал прихода материала'
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
AUTO_INCREMENT = 36
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
AUTO_INCREMENT = 24
AVG_ROW_LENGTH = 8192
CHARACTER SET utf8
COLLATE utf8_general_ci
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
AUTO_INCREMENT = 8
AVG_ROW_LENGTH = 2730
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'платежи'
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
AUTO_INCREMENT = 66
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
AUTO_INCREMENT = 59
AVG_ROW_LENGTH = 2340
CHARACTER SET utf8
COLLATE utf8_general_ci
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
AUTO_INCREMENT = 230
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
AUTO_INCREMENT = 6
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
AUTO_INCREMENT = 19
AVG_ROW_LENGTH = 8192
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'Журнал обрезки облоя'
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
AUTO_INCREMENT = 65
AVG_ROW_LENGTH = 1260
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'распределение отгруженных деталей по выполненным партиям'
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
AUTO_INCREMENT = 26
AVG_ROW_LENGTH = 682
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'строки отгрузки'
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
AUTO_INCREMENT = 23
AVG_ROW_LENGTH = 910
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'отгрузка'
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
AUTO_INCREMENT = 21
AVG_ROW_LENGTH = 1024
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'индивидуальный наряд'
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
AUTO_INCREMENT = 17
AVG_ROW_LENGTH = 1489
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'оборудование по индивидуальному наряду'
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
AUTO_INCREMENT = 20
AVG_ROW_LENGTH = 963
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'дневной наряд'
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
AUTO_INCREMENT = 40
AVG_ROW_LENGTH = 862
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'привязка строк дневного наряда к строкам заявок'
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
AUTO_INCREMENT = 54
AVG_ROW_LENGTH = 496
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'Строки дневного наряда'
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

-- Таблица rti.calculations не содержит данных

-- 
-- Вывод данных для таблицы constants
--
INSERT INTO constants VALUES
(2, 7, 31, 80, 90, 10, 3, 25, 18, 3.47, '0001-01-01 00:00:00', '0001-01-01 00:00:00', 0);

-- 
-- Вывод данных для таблицы contracts
--

-- Таблица rti.contracts не содержит данных

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
(37, 17, 'ООО "Богдановичский керамзит"', 0, '623530, Сведловская область, г. Богданович, ул. Ст. Разина, 62 б  ', NULL, NULL, NULL, NULL, NULL, '0266029390', '025250001', '40702810200200000039', '30101810200000000914', NULL, NULL, NULL, NULL, '048071914', 'Уфимский ф-ле АБ "РОССИЯ"', 'irinakeramzit@mail.ru', NULL, 0);

-- 
-- Вывод данных для таблицы details
--
INSERT INTO details VALUES
(26, 1, 'Прокладка', NULL, 0);

-- 
-- Вывод данных для таблицы drawing_calculation_history
--

-- Таблица rti.drawing_calculation_history не содержит данных

-- 
-- Вывод данных для таблицы drawing_flowsheet_machines
--

-- Таблица rti.drawing_flowsheet_machines не содержит данных

-- 
-- Вывод данных для таблицы drawing_flowsheet_processes
--

-- Таблица rti.drawing_flowsheet_processes не содержит данных

-- 
-- Вывод данных для таблицы drawings
--
INSERT INTO drawings VALUES
(50, '2016-12-04 16:11:06', 1, '370.210-1', 17, 26, NULL, 35, 35, NULL, NULL, 46, 10, 0.007700000000000001, 50.00, 5.00, NULL, NULL, NULL, 37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);

-- 
-- Вывод данных для таблицы drivers
--
INSERT INTO drivers VALUES
(4, 1, 'Газель', 'А414 РК 96', 'Манаев  СА', '65 03 149344', 0);

-- 
-- Вывод данных для таблицы employees
--
INSERT INTO employees VALUES
(19, 1, '1', 'Бородулин СА', 27, NULL, 0);

-- 
-- Вывод данных для таблицы equipment_payments
--

-- Таблица rti.equipment_payments не содержит данных

-- 
-- Вывод данных для таблицы equipments
--
INSERT INTO equipments VALUES
(37, 1, 'Прессформа', 4, 0.000, 0.00, 1, 1, 1, 'Элма-1', 7, '2016-12-14 00:00:00', 5000.00, 0, NULL, 0);

-- 
-- Вывод данных для таблицы groups
--
INSERT INTO groups VALUES
(17, 1, '8СЯ', NULL, 0),
(18, 2, '8БП', NULL, 0),
(19, 3, '-', NULL, 0);

-- 
-- Вывод данных для таблицы images
--

-- Таблица rti.images не содержит данных

-- 
-- Вывод данных для таблицы jobs
--
INSERT INTO jobs VALUES
(26, 0, 'Администратор', 'admin', 'admin', 0, 3),
(27, 1, 'Рабочий', 'Рб', 'рб', 0, 0);

-- 
-- Вывод данных для таблицы machines
--
INSERT INTO machines VALUES
(8, 1, 'Пресс гидравлический', '600*600', '1', 2, 14.000, 3.500, 31.500, 6.00, 3.15, NULL, 0);

-- 
-- Вывод данных для таблицы mass_calculations
--
INSERT INTO mass_calculations VALUES
(46, 3, 1.7, 5, NULL, NULL, NULL, NULL, 200, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- 
-- Вывод данных для таблицы material_arrival_records
--

-- Таблица rti.material_arrival_records не содержит данных

-- 
-- Вывод данных для таблицы materials
--
INSERT INTO materials VALUES
(32, 1, 'Тепластина ТМКЩ1', 'ГОСТ 7338-80', 1.7, 1, 3000, 1000, 100.00, NULL, 0),
(33, 2, 'Техпластина ТМКЩ3', 'ГОСТ 7338-80', 1.7, 3, 3000, 1000, 100.00, NULL, 0),
(34, 3, 'В-14', 'ТУ 38-0021116-2015', 1.7, NULL, NULL, NULL, 148.80, NULL, 0),
(35, 4, '4326', 'ТУ 38.0051116-2015', 1.7, NULL, NULL, NULL, 131.00, NULL, 0);

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
(23, 12, 'Програмирование', NULL, 0);

-- 
-- Вывод данных для таблицы payments
--

-- Таблица rti.payments не содержит данных

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
-- Вывод данных для таблицы report_of_completion_items
--

-- Таблица rti.report_of_completion_items не содержит данных

-- 
-- Вывод данных для таблицы request_details
--
INSERT INTO request_details VALUES
(58, 226, 1, 50, 17, 26, NULL, NULL, 1000, 50.00, NULL, 50000.00, 35, NULL, 0, 0);

-- 
-- Вывод данных для таблицы requests
--
INSERT INTO requests VALUES
(226, 1, '2016-12-04 00:00:00', '2016-12-15 00:00:00', '2017-01-13 00:00:00', '2016-12-04 00:00:00', NULL, 20, 19, 20, 50000.00, 0, NULL, 0, NULL, NULL, NULL, NULL);

-- 
-- Вывод данных для таблицы rolling_records
--

-- Таблица rti.rolling_records не содержит данных

-- 
-- Вывод данных для таблицы shaving_records
--

-- Таблица rti.shaving_records не содержит данных

-- 
-- Вывод данных для таблицы shipment_item_work_items
--
INSERT INTO shipment_item_work_items VALUES
(64, 25, 50, 98);

-- 
-- Вывод данных для таблицы shipment_items
--
INSERT INTO shipment_items VALUES
(25, 22, 1, 58, 98, 50.00, 18, NULL, NULL, NULL, '05.12.2016/1');

-- 
-- Вывод данных для таблицы shipments
--
INSERT INTO shipments VALUES
(22, 1, '2016-12-06', 226, 19, 19, NULL, 0, 0, '061216/1', 4, '06.12.2016', 1, 1, 'Сильнягин ДВ', NULL, 5782.00, 0, 1, '2016-12-04', NULL);

-- 
-- Вывод данных для таблицы shipped_product_records
--

-- Таблица rti.shipped_product_records не содержит данных

-- 
-- Вывод данных для таблицы shipping_order_records
--

-- Таблица rti.shipping_order_records не содержит данных

-- 
-- Вывод данных для таблицы work_item_employee_package
--
INSERT INTO work_item_employee_package VALUES
(17, '2016-12-05 00:00:00', 19, 'Формовка'),
(18, '2016-12-06 00:00:00', 19, 'формовка'),
(19, '2016-12-07 00:00:00', 19, NULL),
(20, '2016-12-08 00:00:00', 19, 'формовка');

-- 
-- Вывод данных для таблицы work_item_employee_package_machines
--

-- Таблица rti.work_item_employee_package_machines не содержит данных

-- 
-- Вывод данных для таблицы work_item_package
--
INSERT INTO work_item_package VALUES
(19, '2016-12-05');

-- 
-- Вывод данных для таблицы work_item_request_details
--

-- Таблица rti.work_item_request_details не содержит данных

-- 
-- Вывод данных для таблицы work_items
--
INSERT INTO work_items VALUES
(50, '2016-12-05', 1, 50, 0, 100, 98, 2, NULL, 19, NULL, 0, '05.12.2016/1'),
(51, '2016-12-06', 1, 50, 0, 102, 102, NULL, NULL, 19, NULL, 0, '06.12.2016/1'),
(52, '2016-12-07', 1, 50, 0, 100, 100, NULL, NULL, 19, NULL, 0, '07.12.2016/1'),
(53, '2016-12-08', 1, 50, 0, 100, 100, NULL, NULL, 19, NULL, 0, '08.12.2016/1');

-- 
-- Восстановить предыдущий режим SQL (SQL mode)
-- 
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

-- 
-- Включение внешних ключей
-- 
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;