--
-- Скрипт сгенерирован Devart dbForge Studio for MySQL, Версия 7.0.49.0
-- Домашняя страница продукта: http://www.devart.com/ru/dbforge/mysql/studio
-- Дата скрипта: 28.04.2016 10:47:10
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
  contragent_type_enum INT(11) NOT NULL COMMENT 'тип контрагента (0 - заказчик, 1 - поставщик)',
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
-- Описание для таблицы drawings
--
DROP TABLE IF EXISTS drawings;
CREATE TABLE drawings (
  id INT(11) NOT NULL AUTO_INCREMENT,
  creation_date DATETIME NOT NULL,
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
  mass_with_shruff DECIMAL(10, 3) DEFAULT NULL,
  price DECIMAL(10, 2) DEFAULT NULL,
  shaving_price DECIMAL(10, 2) DEFAULT NULL,
  calculation_price DECIMAL(10, 2) DEFAULT NULL,
  equipment_id INT(11) DEFAULT NULL,
  method_id INT(11) DEFAULT NULL,
  width DECIMAL(10, 2) DEFAULT NULL,
  length DECIMAL(10, 2) DEFAULT NULL,
  thickness DECIMAL(10, 2) DEFAULT NULL,
  inner_diameter DECIMAL(10, 2) DEFAULT NULL,
  outer_diameter DECIMAL(10, 2) DEFAULT NULL,
  drawing_image_id INT(11) DEFAULT NULL,
  note VARCHAR(500) DEFAULT NULL,
  is_deleted INT(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (id),
  INDEX FK_drawings_details_id (detail_id),
  INDEX FK_drawings_equipments_id (equipment_id),
  INDEX FK_drawings_groups_id (group_id),
  INDEX FK_drawings_images_id (drawing_image_id),
  INDEX FK_drawings_mass_calculations_id (mass_calculation_id),
  INDEX FK_drawings_materials_bp_id (material_by_passport_id),
  INDEX FK_drawings_materials_id (material_id),
  INDEX FK_drawings_measure_units_id (measure_unit_id),
  INDEX FK_drawings_methods_id (method_id),
  CONSTRAINT FK_calculations_drawings_id FOREIGN KEY (drawing_id)
    REFERENCES drawings(id) ON DELETE NO ACTION ON UPDATE NO ACTIONNGS_ID
)
ENGINE = INNODB
AUTO_INCREMENT = 8
AVG_ROW_LENGTH = 2730
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
  form_count INT(11) NOT NULL,
  slot_count INT(11) NOT NULL,
  output INT(11) NOT NULL,
  note VARCHAR(1000) DEFAULT NULL,
  is_deleted INT(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (id)
)
ENGINE = INNODB
AUTO_INCREMENT = 5
AVG_ROW_LENGTH = 4096
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
AUTO_INCREMENT = 8
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
AUTO_INCREMENT = 1
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
AUTO_INCREMENT = 13
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
AUTO_INCREMENT = 2
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
AUTO_INCREMENT = 4
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
AUTO_INCREMENT = 12
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
AUTO_INCREMENT = 4
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
AUTO_INCREMENT = 5
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
-- Описание для таблицы calculations
--
DROP TABLE IF EXISTS calculations;
CREATE TABLE calculations (
  id INT(11) NOT NULL AUTO_INCREMENT,
  drawing_id INT(11) NOT NULL,
  calculation_type_enum INT(11) NOT NULL DEFAULT 0 COMMENT '0 - плановая, 1 - фактическая',
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
  PRIMARY KEY (id),
  CONSTRAINT FK_calculations_drawings_id FOREIGN KEY (drawing_id)
    REFERENCES drawings(id) ON DELETE NO ACTION ON UPDATE NO ACTION
)
ENGINE = INNODB
AUTO_INCREMENT = 3
AVG_ROW_LENGTH = 8192
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'калькуляции'
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
AUTO_INCREMENT = 4
AVG_ROW_LENGTH = 16384
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'сотрудники'
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы flowsheets
--
DROP TABLE IF EXISTS flowsheets;
CREATE TABLE flowsheets (
  id INT(11) NOT NULL AUTO_INCREMENT,
  drawing_id INT(11) NOT NULL,
  customer_id INT(11) NOT NULL,
  secondary_customer_id INT(11) DEFAULT NULL,
  blank_mass DECIMAL(10, 3) DEFAULT NULL COMMENT 'масса заготовки',
  fact_mass DECIMAL(10, 3) DEFAULT NULL COMMENT 'фактическая масса',
  note VARCHAR(1000) DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT FK_flowsheets_customers_id FOREIGN KEY (customer_id)
    REFERENCES contragents(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_flowsheets_drawings_id FOREIGN KEY (drawing_id)
    REFERENCES drawings(id) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT FK_flowsheets_sec_customers_id FOREIGN KEY (secondary_customer_id)
    REFERENCES contragents(id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 10
AVG_ROW_LENGTH = 3276
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'технологические карты'
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
  lead_time INT(11) DEFAULT NULL,
  customer_id INT(11) DEFAULT NULL,
  is_deleted INT(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (id),
  CONSTRAINT FK_requests_contragents_id FOREIGN KEY (customer_id)
    REFERENCES contragents(id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 58
AVG_ROW_LENGTH = 3276
CHARACTER SET utf8
COLLATE utf8_general_ci
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы flowsheet_machines
--
DROP TABLE IF EXISTS flowsheet_machines;
CREATE TABLE flowsheet_machines (
  id INT(11) NOT NULL AUTO_INCREMENT,
  flowsheet_id INT(11) NOT NULL,
  sort_order INT(11) NOT NULL,
  machine_id INT(11) NOT NULL,
  plate_temperature DECIMAL(10, 2) DEFAULT NULL,
  cure_time DECIMAL(10, 2) DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT FK_flowsheet_equipments_flowsheets_id FOREIGN KEY (flowsheet_id)
    REFERENCES flowsheets(id) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT FK_flowsheet_machines_machines_id FOREIGN KEY (machine_id)
    REFERENCES machines(id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 7
AVG_ROW_LENGTH = 5461
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'Оборудование технологической карты'
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы flowsheet_processes
--
DROP TABLE IF EXISTS flowsheet_processes;
CREATE TABLE flowsheet_processes (
  id INT(11) NOT NULL AUTO_INCREMENT,
  flowsheet_id INT(11) DEFAULT NULL,
  sort_order INT(11) DEFAULT NULL,
  process_id INT(11) NOT NULL COMMENT 'тип процесса',
  name VARCHAR(255) DEFAULT NULL,
  operation VARCHAR(255) DEFAULT NULL,
  executor VARCHAR(255) DEFAULT NULL,
  var_name VARCHAR(50) DEFAULT NULL,
  norm_time DECIMAL(10, 2) NOT NULL DEFAULT 0.00,
  note VARCHAR(4000) DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT FK_flowsheet_processes_flowsheets_id FOREIGN KEY (flowsheet_id)
    REFERENCES flowsheets(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_flowsheet_processes_processes_id FOREIGN KEY (process_id)
    REFERENCES processes(id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 50
AVG_ROW_LENGTH = 356
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'технологические процессы'
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
  equipment_existance INT(11) DEFAULT NULL,
  additional_info VARCHAR(1000) DEFAULT NULL,
  equipment_lead_time INT(11) DEFAULT NULL,
  count DECIMAL(10, 2) NOT NULL,
  price DECIMAL(10, 2) NOT NULL,
  calculation_price DECIMAL(10, 2) DEFAULT NULL,
  sum DECIMAL(10, 2) NOT NULL,
  material_id INT(11) DEFAULT NULL,
  note VARCHAR(1000) DEFAULT NULL,
  is_deleted INT(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (id),
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
AUTO_INCREMENT = 26
AVG_ROW_LENGTH = 2340
CHARACTER SET utf8
COLLATE utf8_general_ci
ROW_FORMAT = DYNAMIC;

-- 
-- Вывод данных для таблицы additional_infos
--

-- Таблица rti.additional_infos не содержит данных

-- 
-- Вывод данных для таблицы constants
--
INSERT INTO constants VALUES
(1, 7.00, 31.00, 90.00, 80.00, 7.00, 1.00, 25.00, 18.00, 3.47, '2016-01-04 00:00:00', '3000-12-31 00:00:00', 0);

-- 
-- Вывод данных для таблицы contragents
--
INSERT INTO contragents VALUES
(1, 1, '?1', 0, '1', '??????????', '1', '89263706340', '1', '1', '1', '4700181012384234980', '1', '1', '1', '1', '1', '1', '1', '1', '111', 1),
(2, 2, '2', 0, '2', '2', '2', '2', '2', '2989867547636', '2', '2', '2', '22132346243653456', '2', '2', '2', '2', '2', 'email@server.ru', '22222', 1),
(3, 1, '?1', 0, '11', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', NULL, 1),
(4, 1, 'G2', 1, '1', '1', '1', '1', '1', '1', '2', '2', '2', '2', '4', '4', '4', '4', '6', '7', '8', 1),
(5, 1, 'ЗАО "ЭНЕРГОМАШ (Екатеринбург)-Уралэлектротяжмаш"', 0, 'Россия, 620017, Екатеринбург, Фронтовых бригад,22', 'Иванов Иван Иванович', 'Иванов Иван Иванович', '(343) 3245218/3244017', 'дог. 0403-14-0224 от 08.09.2014г.', '6673197337', '660850001', '40702810000261004126', '30101810800000000945', '335455765345', '235645766767', '454363747', '3747633767', '3787389798907', 'ПАО "Втб24"', 'energomash@mail.ru', NULL, 0),
(6, 1, 'ОАО "Резинапласт"', 1, 'Екатеринбург, ул. Малышева, 15', 'Сидоров Иван Иванович', 'Сидоров Иван Иванович', '+(343)3455663', 'заявка', '3656478858', '357578946', '37653487626857475', '527627598745787268', '374768987989089', '37678798346', '3656768588', '36556767876', '34767859599', 'ПАО "Втб24"', 'rezina@yandex.ru', NULL, 0);

-- 
-- Вывод данных для таблицы details
--
INSERT INTO details VALUES
(1, 1, 'Прокладка', '', 0),
(2, 2, 'deTail132', 'sfv sgth fhg j fe''r;lfq''fr ', 1);

-- 
-- Вывод данных для таблицы drawings
--
INSERT INTO drawings VALUES
(1, '2016-04-12 22:38:59', 1, 'Чертеж1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(3, '2016-04-12 22:39:02', 3, 'Чуртеж2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(4, '2016-04-12 22:39:04', 4, 'Чартеж3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(5, '2016-04-12 22:39:14', 5, 'Чэртеж4', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0),
(6, '2016-04-12 22:39:11', 6, 'Чыртеж5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(7, '2016-04-12 22:39:17', 7, 'Чяртеж6', 3, 1, NULL, 5, 5, 1, NULL, 1, NULL, 1200.00, 201.00, 1500.00, 2, 1, 12.00, 3.00, 23.00, 4.00, NULL, 1, 'qq af sdfg rtg werg wergf', 0);

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
(1, 1, '????? ????????', 0, 10.000, 5, 5, 25, '?????????? ? ????? ????????', 1),
(2, 2, '????? ????????', 0, 0.000, 2, 4, 8, NULL, 1),
(3, 1, 'Shtanez', 0, 125.000, 2, 2, 4, NULL, 0),
(4, 2, 'Zigovka', 4, 54.000, 3, 2, 6, NULL, 0);

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
(7, 2, '8СЯ', NULL, 0);

-- 
-- Вывод данных для таблицы images
--

-- Таблица rti.images не содержит данных

-- 
-- Вывод данных для таблицы jobs
--
INSERT INTO jobs VALUES
(1, 1, '?????????', 'secretary', 'secret', 1),
(2, 2, '????????', 'tehnolog', '123123qweasdzxc', 1),
(3, 3, 'Демо', 'demo', 'demo', 0),
(4, 4, 'Генеральный директор', '123', '123', 0),
(6, 5, 'Isp. director', '1234', '1234', 0),
(7, 6, 'Economist', 'ec', 'ec', 0),
(8, 7, 'Buhgalter', '12345', '12345', 0),
(9, 8, 'Tehnolog', 'tex', 'tex', 0),
(10, 9, 'Engineer', 'en', 'en', 0),
(11, 10, 'Secretary', 'se', 'se', 0),
(12, 11, 'Working', 'wo', 'wo', 0);

-- 
-- Вывод данных для таблицы machines
--
INSERT INTO machines VALUES
(1, 1, 'Пресс гидравлический', '1200*800', '1', 2, 40.000, 2.500, 42.500, 6.00, 4.25, '11', 0);

-- 
-- Вывод данных для таблицы mass_calculations
--
INSERT INTO mass_calculations VALUES
(1, 2, 30.000, 100.000, 500.000, 10.000, 100.000, 12.000, 10.000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 0, 2.000, 2.000, NULL, NULL, 100.000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5*10'),
(3, 4, 1.700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22.000, 200.000, 100.000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3,14*25');

-- 
-- Вывод данных для таблицы materials
--
INSERT INTO materials VALUES
(1, 1, 'Материал1', 'ГОСТ123123', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(2, 2, 'Материал2', 'ТУ 4324982', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(3, 1, '????????', '123??1234123', 100.231, 12.120, 423.420, 123.210, 4000.50, '??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ??????? ?????????? ', 1),
(4, 1, '654654', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(5, 2, '8tjgfnfytjhrhy654', '564321654', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(6, 3, 'gfdbfdnhtryjrtynh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(7, 1, 'ТМКЩ-1', 'ТУ 010-234', 1.700, 1.000, 3000.000, 1000.000, 83.50, NULL, 0),
(8, 2, 'ТМКЩ-30', 'ГОСТ 23.45', 1.700, 30.000, 100.000, 100.000, 65.00, NULL, 0),
(9, 3, '????? ????????', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(10, 4, 'Новый материал', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(11, 3, 'В-14', NULL, 2.000, 3.000, 100.000, 20.000, 100.00, NULL, 0);

-- 
-- Вывод данных для таблицы measure_units
--
INSERT INTO measure_units VALUES
(1, 1, 'шт.', '196', 0),
(2, 2, 'м.', '123', 0),
(3, 3, 'штуки', '3545', 1);

-- 
-- Вывод данных для таблицы methods
--
INSERT INTO methods VALUES
(1, 1, 'Met121', 'sfdv ls''fd;lvk s'';lgfk sfd sdkjgf s;lkgj ', 1),
(2, 2, 'fv swerg ', 'werg werg  wergwerrg werg', 1),
(3, 1, 'Вырубка', NULL, 0),
(4, 2, 'Варка', NULL, 0);

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
-- Вывод данных для таблицы calculations
--
INSERT INTO calculations VALUES
(1, 7, 0, 1933964.44, 123.00, 234.00, 345.00, 456.00, 567.00, NULL, 2610851.99, 37284.00, 3389.45, 86227.72, 158626.47, 162693.82, 4993037.90, 15.00, 75.00, 4993127.90, 29958767.38, 34951895.28, 244663266.97, 279615162.25, 2236921298.01, 2516536460.26),
(2, 7, 1, 246240.00, 1.00, 2.00, 3.00, 4.00, 5.00, NULL, 332424.00, 37284.00, 3389.45, 86227.72, 158626.47, 162693.82, 1026885.47, 15.00, 75.00, 1026975.47, 6161852.81, 7188828.28, 50321797.99, 57510626.27, 460085010.15, 517595636.42);

-- 
-- Вывод данных для таблицы employees
--
INSERT INTO employees VALUES
(1, 1, '123654', '? ? ?321', 1, NULL, 1),
(2, 1, '123', 'Наумова Елена Викторовна', 9, NULL, 0),
(3, 2, '456', 'Холодникова Вера Петровна', 7, NULL, 0);

-- 
-- Вывод данных для таблицы flowsheets
--
INSERT INTO flowsheets VALUES
(5, 6, 1, NULL, NULL, NULL, NULL),
(6, 4, 2, NULL, NULL, NULL, NULL),
(7, 7, 3, 3, 30.000, 20.000, NULL),
(8, 1, 3, NULL, NULL, NULL, NULL),
(9, 3, 1, 3, 100.000, 200.000, NULL);

-- 
-- Вывод данных для таблицы requests
--
INSERT INTO requests VALUES
(21, 1, '2016-03-30 00:00:00', NULL, NULL, 2, 0),
(23, 2, '2016-03-30 00:00:00', NULL, NULL, NULL, 0),
(25, 3, '2016-03-30 00:00:00', NULL, NULL, 3, 0),
(26, 4, '2016-03-30 00:00:00', NULL, NULL, NULL, 0),
(28, 5, '2016-03-30 00:00:00', NULL, NULL, 2, 0),
(31, 6, '2016-03-30 00:00:00', NULL, NULL, NULL, 0),
(40, 7, '2016-03-30 00:00:00', NULL, NULL, 3, 0),
(41, 8, '2016-03-30 00:00:00', '2016-05-01 00:00:00', 15, 1, 0),
(42, 9, '2016-04-05 00:00:00', NULL, NULL, NULL, 0),
(49, 10, '2016-04-05 00:00:00', NULL, NULL, 1, 0),
(51, 11, '2016-04-15 00:00:00', NULL, NULL, 2, 0),
(55, 12, '2016-04-18 00:00:00', '2016-05-02 00:00:00', 10, 5, 0),
(57, 13, '2016-04-18 00:00:00', '2016-05-05 00:00:00', 9, 5, 0);

-- 
-- Вывод данных для таблицы flowsheet_machines
--
INSERT INTO flowsheet_machines VALUES
(4, 7, 1, 1, 300.00, 15.00),
(5, 7, 2, 1, 200.00, 20.00),
(6, 9, 1, 1, 130.00, 150.00);

-- 
-- Вывод данных для таблицы flowsheet_processes
--
INSERT INTO flowsheet_processes VALUES
(1, 6, 1, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(2, 6, 2, 2, NULL, NULL, NULL, NULL, 0.00, NULL),
(3, 6, 3, 3, NULL, NULL, NULL, NULL, 0.00, NULL),
(4, 6, 4, 4, NULL, NULL, NULL, NULL, 0.00, NULL),
(5, 6, 5, 5, NULL, NULL, NULL, NULL, 0.00, NULL),
(6, 6, 6, 6, NULL, NULL, NULL, NULL, 0.00, NULL),
(7, 6, 7, 7, NULL, NULL, NULL, NULL, 0.00, NULL),
(8, 6, 8, 8, NULL, NULL, NULL, NULL, 0.00, NULL),
(9, 6, 9, 9, NULL, NULL, NULL, NULL, 0.00, NULL),
(10, 6, 10, 10, NULL, NULL, NULL, NULL, 0.00, NULL),
(11, 6, 11, 11, NULL, NULL, NULL, NULL, 0.00, NULL),
(12, 6, 12, 12, NULL, NULL, NULL, NULL, 0.00, NULL),
(13, 7, 1, 1, NULL, NULL, NULL, NULL, 20.00, 'павыиавпи'),
(14, 7, 2, 2, NULL, NULL, NULL, NULL, 21.00, 'вапи'),
(15, 7, 3, 3, NULL, NULL, NULL, NULL, 34.00, 'авп вап ипарт арп'),
(16, 7, 4, 4, NULL, NULL, '3', NULL, 65.00, 'т апрт уке у'),
(17, 7, 5, 5, '1', NULL, NULL, NULL, 23.00, 'нуен нек'),
(18, 7, 6, 6, NULL, '2', NULL, NULL, 56.00, 'р уцекп '),
(20, 7, 8, 8, NULL, NULL, NULL, NULL, 9.00, 'р унер кне оукне р'),
(21, 7, 9, 9, NULL, NULL, NULL, NULL, 15.00, 'унекр унекр укре'),
(22, 7, 10, 10, NULL, NULL, NULL, NULL, 14.00, 'уцекп уек р'),
(23, 7, 11, 11, NULL, NULL, NULL, NULL, 34.00, 'еукр ук'),
(25, 8, 1, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(26, 8, 2, 2, NULL, NULL, NULL, NULL, 0.00, NULL),
(27, 8, 4, 4, NULL, NULL, NULL, NULL, 0.00, NULL),
(28, 8, 5, 5, NULL, NULL, NULL, NULL, 0.00, NULL),
(29, 8, 6, 6, NULL, NULL, NULL, NULL, 0.00, NULL),
(30, 8, 7, 7, NULL, NULL, NULL, NULL, 0.00, NULL),
(31, 8, 8, 8, '1', '2', '3', '1', 0.00, NULL),
(32, 8, 9, 9, NULL, NULL, NULL, NULL, 0.00, NULL),
(33, 7, 13, 13, 'Новый', 'Операция нового', 'Ктото', 'tнов', 0.00, NULL),
(35, 9, 1, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(36, 9, 2, 2, NULL, NULL, NULL, NULL, 0.00, ' йуца йц'),
(37, 9, 3, 3, NULL, NULL, NULL, NULL, 0.00, NULL),
(38, 9, 4, 4, NULL, NULL, NULL, NULL, 0.00, 'цук укца укц'),
(39, 9, 5, 5, NULL, NULL, NULL, NULL, 0.00, 'а '),
(40, 9, 6, 6, NULL, NULL, NULL, NULL, 0.00, 'укца '),
(41, 9, 7, 7, NULL, NULL, NULL, NULL, 0.00, NULL),
(42, 9, 8, 8, NULL, NULL, NULL, NULL, 0.00, 'уа цука  цук у'),
(43, 9, 9, 9, NULL, NULL, NULL, NULL, 0.00, NULL),
(44, 9, 10, 10, NULL, NULL, NULL, NULL, 0.00, 'цука '),
(45, 9, 11, 11, NULL, NULL, NULL, NULL, 0.00, 'укц'),
(46, 9, 12, 12, NULL, NULL, NULL, NULL, 0.00, 'а уцка '),
(47, 9, 13, 1, NULL, NULL, NULL, NULL, 0.00, NULL),
(48, 9, 14, 2, NULL, NULL, NULL, NULL, 0.00, NULL),
(49, 9, 15, 13, 'Новый процецц', 'ломтвыатмывд', 'лотдлоидлои', 'илорим', 321.00, 'ыавм ьцашм оам о');

-- 
-- Вывод данных для таблицы request_details
--
INSERT INTO request_details VALUES
(1, 41, 1, 1, 1, 1, 2, NULL, NULL, 12.00, 15.31, NULL, 183.74, NULL, NULL, 0),
(2, 41, 2, 3, NULL, NULL, 2, '123', NULL, 2.00, 0.00, NULL, 0.00, 5, NULL, 0),
(8, 41, 8, 6, 2, NULL, 2, NULL, NULL, 5.00, 150.00, 150.00, 600.00, 3, 'примечание примечание примечание примечание', 0),
(9, 41, 9, 5, NULL, NULL, 2, 'asdfasdfs', NULL, 50.00, 0.00, NULL, 0.00, NULL, NULL, 0),
(10, 41, 10, 4, 1, 1, 0, NULL, NULL, 6.30, 0.00, NULL, 0.00, NULL, NULL, 0),
(12, 41, 12, 1, NULL, 1, 1, NULL, NULL, 8.90, 0.00, NULL, 0.00, NULL, NULL, 0),
(13, 41, 13, 4, 2, NULL, 2, NULL, NULL, 0.00, 0.00, NULL, 0.00, NULL, NULL, 0),
(14, 49, 1, 6, 1, 1, 2, '123123', NULL, 50.00, 100.00, NULL, 0.00, 3, 'вымывтмдлывта ыдвамо тыдвалом ыдва дывлоам ыдвало мрдылаврм', 0),
(15, 51, 1, 1, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, NULL, 0.00, NULL, NULL, 0),
(16, 51, 2, 3, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, NULL, 0.00, NULL, NULL, 0),
(17, 51, 3, 4, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, NULL, 0.00, NULL, NULL, 0),
(18, 51, 4, 5, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, NULL, 0.00, NULL, NULL, 0),
(19, 51, 5, 6, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, NULL, 0.00, NULL, NULL, 0),
(20, 51, 6, 7, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, NULL, 0.00, NULL, NULL, 0),
(21, 51, 7, 8, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, NULL, 0.00, NULL, NULL, 0),
(22, 51, 8, 1, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, NULL, 0.00, NULL, NULL, 0),
(23, 51, 9, 4, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, NULL, 0.00, NULL, NULL, 0),
(24, 55, 1, 9, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, NULL, 0.00, NULL, NULL, 0),
(25, 57, 1, 9, 7, 1, 0, NULL, NULL, 2.00, 12.00, 23.00, 24.00, 7, NULL, 0);

-- 
-- Восстановить предыдущий режим SQL (SQL mode)
-- 
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

-- 
-- Включение внешних ключей
-- 
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;