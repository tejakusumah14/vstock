# ************************************************************
# Sequel Ace SQL dump
# Version 20067
#
# https://sequel-ace.com/
# https://github.com/Sequel-Ace/Sequel-Ace
#
# Host: localhost (MySQL 8.0.33)
# Database: db_stokbarang
# Generation Time: 2024-08-09 17:47:03 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE='NO_AUTO_VALUE_ON_ZERO', SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table barang
# ------------------------------------------------------------

DROP TABLE IF EXISTS `barang`;

CREATE TABLE `barang` (
  `id` int NOT NULL AUTO_INCREMENT,
  `kode_barang` varchar(20) DEFAULT NULL,
  `nama_barang` varchar(80) DEFAULT NULL,
  `stok` int DEFAULT NULL,
  `satuan` varchar(20) DEFAULT NULL,
  `keterangan` char(50) NOT NULL,
  `jenis_id` int unsigned DEFAULT NULL,
  `merek` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `barang` WRITE;
/*!40000 ALTER TABLE `barang` DISABLE KEYS */;

INSERT INTO `barang` (`id`, `kode_barang`, `nama_barang`, `stok`, `satuan`, `keterangan`, `jenis_id`, `merek`)
VALUES
	(3,'27475946','Kabel Roll',14,'pcs','Barang di Lantai Dasar KRT',NULL,NULL),
	(4,'48382962','Kabel HDMI 15 M',0,'pcs','',NULL,NULL),
	(5,'41333551','Kabel VGA panjang',0,'pcs','',NULL,NULL),
	(6,'62316066','Kran 1/2 ',6,'pcs','Barang di Perlengkapan lemari depan',NULL,NULL),
	(7,'52976740','Stop kontak tanam',5,'pcs','Barang di Lantai 1 Perlengkapan',NULL,NULL),
	(8,'16329521','Suzuki Ertiga',1,'pcs','Di garasi',NULL,NULL),
	(9,'73719811','Lampu Outbow 12w',6,'pcs','Barang di Lantai 1 Perlengkapan',NULL,NULL),
	(10,'10425327','Innova Reborn',1,'pcs','Di garasi',NULL,NULL),
	(11,'21057455','Bendera Indonesia',1,'pcs','',NULL,NULL),
	(12,'72468785','Bendera Unisma',1,'pcs','',NULL,NULL),
	(13,'93063082','Bendera NU',1,'pcs','',NULL,NULL),
	(14,'65297257','Bendera FAI',1,'pcs','',NULL,NULL),
	(15,'15310628','Bendera FH',1,'pcs','',NULL,NULL),
	(16,'97623695','Bendera FKIP',1,'pcs','',NULL,NULL),
	(17,'33385246','Bendera FMIPA',1,'pcs','',NULL,NULL),
	(18,'64917824','Bendera FEB',1,'pcs','',NULL,NULL),
	(19,'47473979','Bendera FAPERTA',1,'pcs','',NULL,NULL),
	(20,'15638151','Bendera FAPET',1,'pcs','',NULL,NULL),
	(21,'51117219','Bendera POLISMA',1,'pcs','',NULL,NULL),
	(22,'36153193','Bendera FT',1,'pcs','',NULL,NULL),
	(23,'49924388','Tiang Bendera Besi',0,'pcs','',NULL,NULL),
	(24,'15838270','Papan Besi Putih',115,'pcs','barang di perlengkapan',NULL,NULL),
	(25,'39852221','Tatakan Bendera',0,'pcs','',NULL,NULL),
	(26,'48748597','Sound Wireless kecil',2,'pcs','barang di Perlengkapan',NULL,NULL),
	(27,'80617713','Kabel Power',0,'pcs','',NULL,NULL),
	(28,'25768190','Kabel Printer',0,'pcs','',NULL,NULL),
	(29,'29402507','Baterai',0,'pcs','',NULL,NULL),
	(30,'88131615','MIC Wireless',1,'pcs','barang di perlengkapan',NULL,NULL),
	(31,'71683465','MIC Kabel',1,'pcs','barang di perlengkapan',NULL,NULL),
	(32,'44979020','Stand Sound',2,'pcs','barang di perlengkapan',NULL,NULL),
	(33,'58270813','Layar LCD',5,'pcs','barang di perlengkapan',NULL,NULL),
	(36,'86435417','Stand MIC Meja',0,'pcs','',NULL,NULL),
	(37,'35217235','Stand MIC Biasa',4,'pcs','barang di perlengkapan',NULL,NULL),
	(38,'76821934','Converter HDMI to VGA',0,'pcs','',NULL,NULL),
	(39,'77233756','Converter HDMI',0,'pcs','',NULL,NULL),
	(40,'20503732','Handy Talky (HT)',6,'pcs','barang di Perlengkapan lantai 1',NULL,NULL),
	(41,'41658529','Karpet Hambal besar',4,'pcs','',NULL,NULL),
	(42,'74520659','Tikar',0,'pcs','',NULL,NULL),
	(44,'46852192','Papan Tulis WhiteBoard',0,'pcs','',NULL,NULL),
	(45,'90957706','splitter HDMI',0,'pcs','',NULL,NULL),
	(46,'31523619','Lampu Bolam',2,'pcs','barang di perlengkapan lemari depan',NULL,NULL),
	(47,'49944773','lampu Inbow',0,'pcs','',NULL,NULL),
	(48,'23340821','Lampu TL 18 Watt Putih',2,'pcs','Barang di Lantai 1 Perlengkapan',NULL,NULL),
	(49,'34693811','Stop IB',0,'pcs','',NULL,NULL),
	(50,'29706302','Saklar single',0,'pcs','',NULL,NULL),
	(51,'15323699','Pitingan Lampu Bolam',26,'pcs','Barang di Lantai 1 Perlengkapan',NULL,NULL),
	(52,'61321334','HT WLn',6,'pcs','',NULL,NULL),
	(53,'36162331','LCD Proyektor',3,'pcs','Barang di Lantai 5 BAUPK',NULL,NULL),
	(54,'49766267','Gembok besar',1,'pcs','Barang dilantai 5',NULL,NULL),
	(57,'76818578','Laptop Lenovo',10,'unit','barang di lantai 5 lemari',NULL,NULL),
	(58,'63859249','shower kran',13,'pcs','Barang di KRT lemari depan',NULL,NULL),
	(59,'98286053','Alat detektor ',2,'pcs','BAUPK lemari Kabag',NULL,NULL),
	(60,'71560828','Sivon',2,'pcs','barang di KRT lemari depan',NULL,NULL),
	(61,'22450437','Slot Pintu kayu',5,'pcs','barang di KRT bawah lemari depan',NULL,NULL),
	(62,'84978092','Slot pintu Almini',1,'pcs','barang di KRT lemari depan bawah',NULL,NULL),
	(63,'78789383','Kran shower T',2,'pcs','Barang di Perlengkapan Lemari Depan',NULL,NULL),
	(64,'87031804','Paku Cor 1,5',1,'pak','barang di perlengkapan lemari depan',NULL,NULL),
	(65,'49814214','Kran Shower single',1,'pcs','barang di perlengkapan lemari depan',NULL,NULL),
	(66,'70968360','Slang flexible 40 cm',10,'pcs','barang di perlengkapan lemari depan',NULL,NULL),
	(67,'26577901','Grendel Pintu',13,'pcs','barang di perlengkapan lemari depan',NULL,NULL),
	(68,'37844992','Lampu inbow 12 watt',5,'pcs','barang di perlengkapan lemari depan',NULL,NULL),
	(69,'60698999','sound wireless besar',2,'unit','barang di perlengkapan',NULL,NULL),
	(70,'36506137','kran 3/4',2,'pcs','barang di perlengkapan lemari depan',6,'maspion'),
	(71,'37862909','sound hupper',4,'unit','barang di perlengkapan',NULL,NULL);

/*!40000 ALTER TABLE `barang` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table customer
# ------------------------------------------------------------

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `kode` varchar(20) DEFAULT NULL,
  `nama` varchar(80) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telepon` varchar(15) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;

INSERT INTO `customer` (`id`, `kode`, `nama`, `email`, `telepon`, `alamat`)
VALUES
	(4,'CST410','Nizar','inventaris@gmail.com','085000000000','Jogja'),
	(5,'CST224','Suyitno',NULL,'082244522600',NULL),
	(7,'CST861','Ainul Solihin, S.T.',NULL,'0',NULL),
	(8,'CST287','Riski Wijaya',NULL,'0',NULL),
	(9,'CST226','Very Adi Wijaya',NULL,'0',NULL),
	(10,'CST527','Hadi',NULL,'0',NULL),
	(11,'CST949','Zidan',NULL,'0',NULL),
	(12,'CST676','Wahyu Widodo',NULL,'0',NULL);

/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table data_toko
# ------------------------------------------------------------

DROP TABLE IF EXISTS `data_toko`;

CREATE TABLE `data_toko` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama_toko` varchar(80) DEFAULT NULL,
  `nama_pemilik` varchar(80) DEFAULT NULL,
  `no_telepon` varchar(15) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `data_toko` WRITE;
/*!40000 ALTER TABLE `data_toko` DISABLE KEYS */;

INSERT INTO `data_toko` (`id`, `nama_toko`, `nama_pemilik`, `no_telepon`, `alamat`)
VALUES
	(1,'Stok Barang Perlengkapan dan Aset','Fakhrul Nugroho','085000000000','https://github.com/fakhrulnugroho/ci-app-inventori');

/*!40000 ALTER TABLE `data_toko` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table detail_keluar
# ------------------------------------------------------------

DROP TABLE IF EXISTS `detail_keluar`;

CREATE TABLE `detail_keluar` (
  `no_keluar` varchar(25) DEFAULT NULL,
  `nama_barang` varchar(80) DEFAULT NULL,
  `jumlah` int DEFAULT NULL,
  `satuan` varchar(20) DEFAULT NULL,
  `keterangan` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `detail_keluar` WRITE;
/*!40000 ALTER TABLE `detail_keluar` DISABLE KEYS */;

INSERT INTO `detail_keluar` (`no_keluar`, `nama_barang`, `jumlah`, `satuan`, `keterangan`)
VALUES
	('TR1680493850','Pitingan Lampu Bolam',1,'pcs','Gedung F'),
	('TR1680661543','Lampu TL 18 Watt Putih',4,'pcs','LP2RP'),
	('TR1680661597','Gembok besar',1,'pcs','Ex Bookstore'),
	('TR1723225510','MIC Kabel',1,'pcs','barang di perlengkapan');

/*!40000 ALTER TABLE `detail_keluar` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table detail_terima
# ------------------------------------------------------------

DROP TABLE IF EXISTS `detail_terima`;

CREATE TABLE `detail_terima` (
  `no_terima` varchar(25) DEFAULT NULL,
  `nama_barang` varchar(80) DEFAULT NULL,
  `jumlah` int DEFAULT NULL,
  `satuan` varchar(20) DEFAULT NULL,
  `keterangan` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `detail_terima` WRITE;
/*!40000 ALTER TABLE `detail_terima` DISABLE KEYS */;

INSERT INTO `detail_terima` (`no_terima`, `nama_barang`, `jumlah`, `satuan`, `keterangan`)
VALUES
	('TR1680749518','Gembok besar',2,'pcs','Barang dilantai 5'),
	('TR1680749519','Gembok besar',2,'pcs','Barang dilantai 5'),
	('TR1680749520','Gembok besar',2,'pcs','Barang dilantai 5'),
	('TR1680749521','Gembok besar',2,'pcs','Barang dilantai 5');

/*!40000 ALTER TABLE `detail_terima` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table jenis_barang
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jenis_barang`;

CREATE TABLE `jenis_barang` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nama_jenis` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `jenis_barang` WRITE;
/*!40000 ALTER TABLE `jenis_barang` DISABLE KEYS */;

INSERT INTO `jenis_barang` (`id`, `nama_jenis`)
VALUES
	(6,'Pipa');

/*!40000 ALTER TABLE `jenis_barang` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table penerimaan
# ------------------------------------------------------------

DROP TABLE IF EXISTS `penerimaan`;

CREATE TABLE `penerimaan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `no_terima` varchar(25) DEFAULT NULL,
  `tgl_terima` varchar(25) DEFAULT NULL,
  `jam_terima` varchar(10) DEFAULT NULL,
  `nama_supplier` varchar(80) DEFAULT NULL,
  `nama_petugas` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `no_terima` (`no_terima`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `penerimaan` WRITE;
/*!40000 ALTER TABLE `penerimaan` DISABLE KEYS */;

INSERT INTO `penerimaan` (`id`, `no_terima`, `tgl_terima`, `jam_terima`, `nama_supplier`, `nama_petugas`)
VALUES
	(23,'TR1680749518','06/04/2023','09:51:58','Perlengkapan','M. Faisol, SH., MH'),
	(24,'TR1680749519','08/04/2023','09:51:58','Perlengkapan','M. Faisol, SH., MH'),
	(25,'TR1680749520','09/04/2023','09:51:58','Perlengkapan','M. Faisol, SH., MH'),
	(26,'TR1680749521','11/04/2023','09:51:58','Perlengkapan','M. Faisol, SH., MH');

/*!40000 ALTER TABLE `penerimaan` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pengeluaran
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pengeluaran`;

CREATE TABLE `pengeluaran` (
  `id` int NOT NULL AUTO_INCREMENT,
  `no_keluar` varchar(25) DEFAULT NULL,
  `tgl_keluar` varchar(25) DEFAULT NULL,
  `jam_keluar` varchar(10) DEFAULT NULL,
  `nama_customer` varchar(80) DEFAULT NULL,
  `nama_petugas` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `no_keluar` (`no_keluar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `pengeluaran` WRITE;
/*!40000 ALTER TABLE `pengeluaran` DISABLE KEYS */;

INSERT INTO `pengeluaran` (`id`, `no_keluar`, `tgl_keluar`, `jam_keluar`, `nama_customer`, `nama_petugas`)
VALUES
	(20,'TR1680493850','03/04/2023','10:50:50','Ainul Solihin, S.T.','Chamidah'),
	(22,'TR1680661543','05/04/2023','09:25:43','Riski Wijaya','Chamidah'),
	(23,'TR1680661597','05/04/2023','09:26:37','Nizar','Chamidah'),
	(26,'TR1723225510','10/08/2024','00:45:10','','Chamidah');

/*!40000 ALTER TABLE `pengeluaran` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pengguna
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pengguna`;

CREATE TABLE `pengguna` (
  `id` int NOT NULL AUTO_INCREMENT,
  `kode` varchar(20) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `pengguna` WRITE;
/*!40000 ALTER TABLE `pengguna` DISABLE KEYS */;

INSERT INTO `pengguna` (`id`, `kode`, `nama`, `username`, `password`)
VALUES
	(1,'PGN17','Chamidah','admin','admin'),
	(2,'PENGGUNA - 35','M. Faisol, SH., MH','faisol','faisol');

/*!40000 ALTER TABLE `pengguna` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table petugas
# ------------------------------------------------------------

DROP TABLE IF EXISTS `petugas`;

CREATE TABLE `petugas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `kode` varchar(20) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `petugas` WRITE;
/*!40000 ALTER TABLE `petugas` DISABLE KEYS */;

INSERT INTO `petugas` (`id`, `kode`, `nama`, `username`, `password`)
VALUES
	(3,'PETUGAS - 35','Faisol','faisol','faisol'),
	(4,'PETUGAS - 43','Hadi','hadi','hadi'),
	(6,'PETUGAS - 61','Teknisi','teknisi','teknisi');

/*!40000 ALTER TABLE `petugas` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table supplier
# ------------------------------------------------------------

DROP TABLE IF EXISTS `supplier`;

CREATE TABLE `supplier` (
  `id` int NOT NULL AUTO_INCREMENT,
  `kode` varchar(20) DEFAULT NULL,
  `nama` varchar(80) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telepon` varchar(15) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;

INSERT INTO `supplier` (`id`, `kode`, `nama`, `email`, `telepon`, `alamat`)
VALUES
	(2,'SPL118','Kepala Keuangan Boss','kepalakeuangan@gmail.com','085000000000','Jogja');

/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
