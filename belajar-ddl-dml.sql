CREATE DATABASE sekolah;

CREATE TABLE SISWA2(
    -> NIS CHAR(10) PRIMARY KEY,
    -> NAMA VARCHAR(100),
    -> JK CHAR(1),
    -> TEMPAT_LAHIR VARCHAR(50),
    -> TANGGAL_LAHIR DATE,
    -> ALAMAT TEXT,
    -> KELAS VARCHAR(10),
    -> NILAI FLOAT,
    -> JOMBLO BOOLEAN);
    
show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sekolah            |
| sys                |
| test               |
+--------------------+

SHOW TABLES;
+-------------------+
| Tables_in_sekolah |
+-------------------+
| SISWA2            |
| siswa             |
+-------------------+

use sekolah;

DESC SISWA2;
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| NIS           | char(10)     | NO   | PRI | NULL    |       |
| NAMA          | varchar(100) | YES  |     | NULL    |       |
| JK            | char(1)      | YES  |     | NULL    |       |
| TEMPAT_LAHIR  | varchar(50)  | YES  |     | NULL    |       |
| TANGGAL_LAHIR | date         | YES  |     | NULL    |       |
| ALAMAT        | text         | YES  |     | NULL    |       |
| KELAS         | varchar(10)  | YES  |     | NULL    |       |
| NILAI         | float        | YES  |     | NULL    |       |
| JOMBLO        | tinyint(1)   | YES  |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+

INSERT INTO SISWA2 VALUES(
    -> '12100018',
    -> 'ADNANA MAULANA',
    -> 'L',
    -> 'SUBANG',
    -> '2005-08-17',
    -> 'CIGADUNG',
    -> 'XI RPL 2',
    -> '81.32',
    -> '0');
    
INSERT INTO SISWA2 VALUES(
    -> '12100027',
    -> 'ANDI AHMAD YUSUSP',
    -> 'L',
    -> 'SUBANG',
    -> '2005-01-17',
    -> 'CURUG RENDENG',
    -> 'XI RPL 2',
    -> '79.99',
    -> '1');
    
INSERT INTO SISWA2 VALUES(
    -> '12100029',
    -> 'AGUNG ARYANTO',
    -> 'L',
    -> 'SUBANG',
    -> '2005-01-27',
    -> 'BALANYENGKED',
    -> 'XI RPL 2',
    -> '90.00',
    -> '100');

INSERT INTO SISWA2 VALUES(
    -> '12100263',
    -> 'FAREL VANDIN',
    -> 'L',
    -> 'SUBANG',
    -> '2006-02-26',
    -> 'KASOMALANG',
    -> 'XI RPL 2',
    -> '99.99',
    -> '1');

INSERT INTO SISWA2 VALUES(
    -> '12100694',
    -> 'SALSABILA ZAHRA ANDINA',
    -> 'P',
    -> 'SUBANG',
    -> '2006-03-26',
    -> 'CIGADUNG',
    -> 'XI RPL 2',
    -> '80.00',
    -> '1');
    
INSERT INTO SISWA2 VALUES(
    -> '12100707',
    -> 'SATRIO AUGISTIAWAN',
    -> 'L',
    -> 'SUBANG',
    -> '2005-08-04',
    -> 'CILOA',
    -> 'XI RPL 2',
    -> '80.00',
    -> '10');
    
UPDATE SISWA2 SET TEMPAT_LAHIR = 'BANDUNG' WHERE NIS = '12100018';

UPDATE SISWA2 SET TANGGAL_LAHIR = '2005-05-05', KELAS = 'XI RPL 1' WHERE NIS = '12100018';

DELETE FROM SISWA2 WHERE NIS = '12100018';

SELECT *FROM SISWA2;
+----------+------------------------+------+--------------+---------------+---------------+----------+-------+--------+
| NIS      | NAMA                   | JK   | TEMPAT_LAHIR | TANGGAL_LAHIR | ALAMAT        | KELAS    | NILAI | JOMBLO |
+----------+------------------------+------+--------------+---------------+---------------+----------+-------+--------+
| 12100027 | ANDI AHMAD YUSUSP      | L    | SUBANG       | 2005-01-17    | CURUG RENDENG | XI RPL 2 | 79.99 |      1 |
| 12100029 | AGUNG ARYANTO          | L    | SUBANG       | 2005-01-27    | BALANYENGKED  | XI RPL 2 |    90 |    100 |
| 12100263 | FAREL VANDIN           | L    | SUBANG       | 2006-02-26    | KASOMALANG    | XI RPL 2 | 99.99 |      1 |
| 12100694 | SALSABILA ZAHRA ANDINA | P    | SUBANG       | 2006-03-26    | CIGADUNG      | XI RPL 2 |    80 |      1 |
| 12100707 | SATRIO AUGISTIAWAN     | L    | SUBANG       | 2005-08-04    | CILOA         | XI RPL 2 |    80 |     10 |
+----------+------------------------+------+--------------+---------------+---------------+----------+-------+--------+