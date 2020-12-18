-- Crear la base de datos de zabbix

-- Crear base de datos si no existe
CREATE DATABASE IF NOT EXISTS zabbix character set utf8 collate utf8_bin;

-- Crear el usuario zabbix e7Ab81x$1025n caso de que no exista
CREATE USER IF NOT EXISTS 'zabbix'@'localhost' IDENTIFIED BY '7Ab81x$1025';

-- Asignamos los privilegios correspondientes para este usuario
GRANT ALL PRIVILEGES ON zabbix.* TO zabbix@'localhost' IDENTIFIED BY '7Ab81x$1025';

-- Cambiamos el encode de la base de datos
ALTER DATABASE zabbix CHARACTER SET utf8 COLLATE utf8_general_ci;

-- Cambiamos el encode de la base de datos
alter database zabbix character set utf8 collate utf8_bin;

-- Commiteamos las transacciones
COMMIT; 

