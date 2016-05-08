-- 
-- Скрипт сгенерирован Devart dbForge Studio for MySQL, Версия 7.0.49.0
-- Домашняя страница продукта: http://www.devart.com/ru/dbforge/mysql/studio
-- Дата скрипта: 08.05.2016 23:17:36
-- Версия сервера базы данных источника: 5.7.9
-- Строка соединения источника: User Id=root;Host=localhost;Database=estimation;Character Set=AUTO
-- Версия сервера базы данных получателя: 5.7.12
-- Строка соединения получателя: User Id=root;Host=81.177.174.193;Character Set=utf8
-- Выполните скрипт в базу rti, чтобы синхронизировать ее с базой rti
-- Пожалуйста, сохраните резервную копию вашей базы получателя перед запуском этого скрипта
-- 

--
-- Отключение внешних ключей
--
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

SET NAMES 'utf8';

USE rti;


--
-- Изменить таблицу "flowsheets"
--
ALTER TABLE flowsheets
  DROP FOREIGN KEY FK_flowsheets_drawings_id,
  DROP INDEX FK_flowsheets_drawings_id;

ALTER TABLE flowsheets
  ADD INDEX FK_flowsheets_drawings_id (drawing_id);

--
-- Включение внешних ключей
--
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;