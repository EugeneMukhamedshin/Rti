--
-- Скрипт сгенерирован Devart dbForge Studio for MySQL, Версия 7.1.13.0
-- Домашняя страница продукта: http://www.devart.com/ru/dbforge/mysql/studio
-- Дата скрипта: 28.11.2016 10:42:18
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
AUTO_INCREMENT = 19
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
AUTO_INCREMENT = 26
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
  INDEX FK_drawings_sec_customer_id (secondary_customer_id),
  CONSTRAINT FK_work_item_request_details_request_details_id FOREIGN KEY (request_detail_id)
    REFERENCES request_details(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_work_item_request_details_work_items_id FOREIGN KEY (work_item_id)
    REFERENCES `)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1024 ROW_FORMAT=DYNAMIC`(id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 50
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
AUTO_INCREMENT = 4
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
AUTO_INCREMENT = 19
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
AUTO_INCREMENT = 37
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
AUTO_INCREMENT = 17
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
AUTO_INCREMENT = 8
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
AUTO_INCREMENT = 46
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
AUTO_INCREMENT = 32
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
AUTO_INCREMENT = 12
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
AUTO_INCREMENT = 58
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
AUTO_INCREMENT = 220
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
AUTO_INCREMENT = 58
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
AUTO_INCREMENT = 25
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
AUTO_INCREMENT = 22
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
AUTO_INCREMENT = 17
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
AUTO_INCREMENT = 19
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
AUTO_INCREMENT = 50
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
-- Восстановить предыдущий режим SQL (SQL mode)
-- 
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

-- 
-- Включение внешних ключей
-- 
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;