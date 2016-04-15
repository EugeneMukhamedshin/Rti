--
-- Скрипт сгенерирован Devart dbForge Studio for MySQL, Версия 6.3.358.0
-- Домашняя страница продукта: http://www.devart.com/ru/dbforge/mysql/studio
-- Дата скрипта: 15.04.2016 15:57:59
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
-- Описание для таблицы contragents
--
DROP TABLE IF EXISTS contragents;
CREATE TABLE contragents (
  id INT(11) NOT NULL AUTO_INCREMENT,
  sort_order INT(11) NOT NULL,
  name VARCHAR(1000) NOT NULL,
  type INT(11) NOT NULL COMMENT 'тип контрагента (0 - заказчик, 1 - поставщик)',
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
AUTO_INCREMENT = 5
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
  existance INT(11) NOT NULL,
  square DOUBLE NOT NULL,
  form_count INT(11) NOT NULL,
  slot_count INT(11) NOT NULL,
  output INT(11) NOT NULL,
  note VARCHAR(1000) DEFAULT NULL,
  is_deleted INT(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (id)
)
ENGINE = INNODB
AUTO_INCREMENT = 2
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
  data BLOB DEFAULT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB
AUTO_INCREMENT = 1
CHARACTER SET utf8
COLLATE utf8_general_ci;

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
  plate_power DOUBLE DEFAULT NULL,
  engine_power DOUBLE DEFAULT NULL,
  total_power DOUBLE DEFAULT NULL,
  power_price DOUBLE DEFAULT NULL COMMENT 'Цена электроэнергии, руб/КВтч',
  time_price DOUBLE DEFAULT NULL COMMENT 'Цена электроэнергии, руб/мин',
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
AUTO_INCREMENT = 2
AVG_ROW_LENGTH = 16384
CHARACTER SET utf8
COLLATE utf8_general_ci;

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
  price DOUBLE DEFAULT NULL,
  note VARCHAR(1000) DEFAULT NULL,
  is_deleted INT(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (id)
)
ENGINE = INNODB
AUTO_INCREMENT = 7
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
  mass_calculation_id INT(11) DEFAULT NULL,
  mass_with_shruff DOUBLE DEFAULT NULL,
  price DOUBLE DEFAULT NULL,
  shaving_price DOUBLE DEFAULT NULL,
  calculation_price DOUBLE DEFAULT NULL,
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
  PRIMARY KEY (id),
  CONSTRAINT FK_drawings_details_id FOREIGN KEY (detail_id)
    REFERENCES details(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_drawings_equipments_id FOREIGN KEY (equipment_id)
    REFERENCES equipments(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_drawings_groups_id FOREIGN KEY (group_id)
    REFERENCES groups(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_drawings_images_id FOREIGN KEY (drawing_image_id)
    REFERENCES images(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_drawings_mass_calculations_id FOREIGN KEY (mass_calculation_id)
    REFERENCES mass_calculations(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_drawings_materials_bp_id FOREIGN KEY (material_by_passport_id)
    REFERENCES materials(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_drawings_materials_id FOREIGN KEY (material_id)
    REFERENCES materials(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_drawings_measure_units_id FOREIGN KEY (measure_unit_id)
    REFERENCES measure_units(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_drawings_methods_id FOREIGN KEY (method_id)
    REFERENCES methods(id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 9
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
AUTO_INCREMENT = 2
AVG_ROW_LENGTH = 16384
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'сотрудники'
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
AUTO_INCREMENT = 52
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
  equipment_existance INT(11) DEFAULT NULL,
  additional_info VARCHAR(1000) DEFAULT NULL,
  equipment_lead_time INT(11) DEFAULT NULL,
  count DOUBLE NOT NULL,
  price DOUBLE NOT NULL,
  calculation_price DOUBLE DEFAULT NULL,
  sum DOUBLE NOT NULL,
  material_id INT(11) DEFAULT NULL,
  note VARCHAR(1000) DEFAULT NULL,
  is_deleted INT(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (id),
  UNIQUE INDEX UK_request_details (request_id, sort_order),
  CONSTRAINT FK_request_details_details_id FOREIGN KEY (detail_id)
    REFERENCES details(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_request_details_drawings_id FOREIGN KEY (drawing_id)
    REFERENCES drawings(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_request_details_groups_id FOREIGN KEY (group_id)
    REFERENCES groups(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_request_details_materials_id FOREIGN KEY (material_id)
    REFERENCES materials(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_request_details_requests_id FOREIGN KEY (request_id)
    REFERENCES requests(id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 24
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
(1, 1.345, 2.123, 3.9, 4, 5, 6, 7, 8, 9321, '2016-01-04 00:00:00', '3000-12-31 00:00:00', 0);

-- 
-- Вывод данных для таблицы contragents
--
INSERT INTO contragents VALUES
(1, 1, 'З1', 0, '1', 'Мухамедшин', '1', '89263706340', '1', '1', '1', '4700181012384234980', '1', '1', '1', '1', '1', '1', '1', '1', '111', 0),
(2, 2, '2', 0, '2', '2', '2', '2', '2', '2989867547636', '2', '2', '2', '22132346243653456', '2', '2', '2', '2', '2', 'email@server.ru', '22222', 0),
(3, 1, 'П1', 0, '11', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', NULL, 0),
(4, 1, 'G2', 1, '1', '1', '1', '1', '1', '1', '2', '2', '2', '2', '4', '4', '4', '4', '6', '7', '8', 0);

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
(1, 1, 'Новая оснастка', 0, 10, 5, 5, 25, 'Примечание к новой оснастке', 0);

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
(1, 1, '2', '3', '4', 5, 6, 7, 8, 9, 10, '11', 0);

-- 
-- Вывод данных для таблицы mass_calculations
--
INSERT INTO mass_calculations VALUES
(1, 2, 30, 100, 500, 10, 100, 12, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- 
-- Вывод данных для таблицы materials
--
INSERT INTO materials VALUES
(1, 1, 'Материал1', 'ГОСТ123123', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(2, 2, 'Материал2', 'ТУ 4324982', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(3, 1, 'Материал', '123ТУ1234123', 100.2312, 12.12, 423.42, 123.21, 4000.5, 'Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание Большое примечание ', 0),
(4, 1, '654654', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(5, 2, '8tjgfnfytjhrhy654', '564321654', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(6, 3, 'gfdbfdnhtryjrtynh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

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
-- Вывод данных для таблицы drawings
--
INSERT INTO drawings VALUES
(1, '2016-04-13 09:23:32', 1, 'Чертеж1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(3, '2016-04-13 09:23:34', 3, 'Чуртеж2', NULL, 1, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(4, '2016-04-13 09:23:35', 4, 'Чартеж3', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(5, '2016-04-13 09:23:36', 5, 'Чэртеж4', 1, 1, NULL, 3, 4, 1, NULL, 1, 2, 3, 123, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, '1sadcasd a', 0),
(6, '2016-04-13 09:23:37', 6, 'Чыртеж5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(7, '2016-04-13 09:23:38', 7, 'Чяртеж6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(8, '2016-04-13 09:23:39', 8, 'новый', 3, 1, NULL, 5, 4, 1, 1, 1, 2, 3, 4, 1, 1, 10, 11, 12, 13, 14, NULL, '5', 0);

-- 
-- Вывод данных для таблицы employees
--
INSERT INTO employees VALUES
(1, 1, '123654', 'Я Я Я321', 1, NULL, 0);

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
(51, 11, '2016-04-15 00:00:00', NULL, NULL, 2, 0);

-- 
-- Вывод данных для таблицы request_details
--
INSERT INTO request_details VALUES
(1, 41, 1, 1, 1, 1, 2, NULL, NULL, 12, 15.312, NULL, 183.744, NULL, NULL, 0),
(2, 41, 2, 3, NULL, NULL, 2, '123', NULL, 2, 0, NULL, 0, 5, NULL, 0),
(8, 41, 8, 6, 2, NULL, 2, NULL, NULL, 5, 150, 150, 600, 3, 'примечание примечание примечание примечание', 0),
(9, 41, 9, 5, NULL, NULL, 2, 'asdfasdfs', NULL, 50, 0, NULL, 0, NULL, NULL, 0),
(10, 41, 10, 4, 1, 1, 0, NULL, NULL, 6.3, 0, NULL, 0, NULL, NULL, 0),
(12, 41, 12, 1, NULL, 1, 1, NULL, NULL, 8.9, 0, NULL, 0, NULL, NULL, 0),
(13, 41, 13, 4, 2, NULL, 2, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, 0),
(14, 49, 1, 6, 1, 1, 2, '123123', NULL, 50, 100, NULL, 0, 3, 'вымывтмдлывта ыдвамо тыдвалом ыдва дывлоам ыдвало мрдылаврм', 0),
(15, 51, 1, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, 0),
(16, 51, 2, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, 0),
(17, 51, 3, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, 0),
(18, 51, 4, 5, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, 0),
(19, 51, 5, 6, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, 0),
(20, 51, 6, 7, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, 0),
(21, 51, 7, 8, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, 0),
(22, 51, 8, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, 0),
(23, 51, 9, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, 0);

-- 
-- Восстановить предыдущий режим SQL (SQL mode)
-- 
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

-- 
-- Включение внешних ключей
-- 
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;