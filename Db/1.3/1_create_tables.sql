-- 
-- Скрипт сгенерирован Devart dbForge Studio for MySQL, Версия 6.3.358.0
-- Домашняя страница продукта: http://www.devart.com/ru/dbforge/mysql/studio
-- Дата скрипта: 27.04.2016 23:35:28
-- Версия сервера базы данных источника: 5.7.9
-- Строка соединения источника: User Id=root;Host=localhost;Database=rti;Character Set=utf8
-- Версия сервера базы данных получателя: 5.7.12
-- Строка соединения получателя: User Id=root;Host=81.177.174.193;Database=rti;Character Set=utf8
-- Выполните скрипт в базу rti, чтобы синхронизировать ее с базой rti
-- Пожалуйста, сохраните резервную копию вашей базы получателя перед запуском этого скрипта
-- 

--
-- Отключение внешних ключей
--
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

SET NAMES 'utf8';

USE rti_prerelease;


--
-- Создать таблицу "processes"
--
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
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'типы процессов'
ROW_FORMAT = DYNAMIC;

--
-- Создать таблицу "calculations"
--
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
    REFERENCES drawings(id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'калькуляции'
ROW_FORMAT = DYNAMIC;

--
-- Создать таблицу "flowsheets"
--
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
    REFERENCES drawings(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_flowsheets_sec_customers_id FOREIGN KEY (secondary_customer_id)
    REFERENCES contragents(id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'технологические карты'
ROW_FORMAT = DYNAMIC;

--
-- Создать таблицу "flowsheet_machines"
--
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
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'Оборудование технологической карты'
ROW_FORMAT = DYNAMIC;

--
-- Создать таблицу "flowsheet_processes"
--
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
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'технологические процессы'
ROW_FORMAT = DYNAMIC;

--
-- Включение внешних ключей
--
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;