# Host: localhost  (Version 5.5.5-10.1.32-MariaDB)
# Date: 2018-12-25 01:07:38
# Generator: MySQL-Front 6.1  (Build 1.23)


#
# Structure for table "barang"
#

DROP TABLE IF EXISTS `barang`;
CREATE TABLE `barang` (
  `KdBrg` varchar(6) NOT NULL DEFAULT '',
  `NmBrg` varchar(50) DEFAULT NULL,
  `Ukuran` varchar(10) DEFAULT NULL,
  `HargaBrg` int(6) DEFAULT NULL,
  `Stok` int(3) DEFAULT NULL,
  `KdKategori` int(3) DEFAULT NULL,
  PRIMARY KEY (`KdBrg`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

#
# Data for table "barang"
#

INSERT INTO `barang` VALUES ('B101','Gamis Monalisa [S]','S',95000,12,1),('B102','Gamiis Monalisa [M]','M',95000,10,1),('B103','Gamis Monalisa [L]','L',95000,12,1),('B104','Gamis Renata [S]','S',95000,12,1),('B105','Gamis Renata [M]','M',95000,9,1),('B106','Gamis Syakira [S]','S',95000,12,1),('B107','Gamis Syakira [M]','M',95000,12,1),('B201','Koko Black Phanter [S]','S',102000,12,2),('B202','Koko Black Phanter [M]','M',102000,11,2),('B203','Koko Sopal [S]','S',105000,12,2),('B204','Koko Sopal [M]','M',105000,12,2),('B401','Sarung Gajah Duduk','-',90000,10,4);

#
# Structure for table "buktipesan"
#

DROP TABLE IF EXISTS `buktipesan`;
CREATE TABLE `buktipesan` (
  `NoPesan` varchar(7) NOT NULL DEFAULT '',
  `TglPesan` date DEFAULT NULL,
  `KdPlg` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`NoPesan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

#
# Data for table "buktipesan"
#

INSERT INTO `buktipesan` VALUES ('BP00001','2018-12-25',NULL),('BP00002','2018-12-25',NULL),('BP00003','2018-12-25',NULL),('BP00004','2018-12-25',NULL),('BP00005','2018-12-25',NULL),('BP00006','2018-12-25',NULL);

#
# Structure for table "detilpesan"
#

DROP TABLE IF EXISTS `detilpesan`;
CREATE TABLE `detilpesan` (
  `NoPesan` varchar(7) NOT NULL DEFAULT '',
  `KdBrg` varchar(6) NOT NULL DEFAULT '0',
  `HrgPesan` int(6) DEFAULT NULL,
  `JmlPesan` int(3) DEFAULT NULL,
  PRIMARY KEY (`NoPesan`,`KdBrg`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

#
# Data for table "detilpesan"
#

INSERT INTO `detilpesan` VALUES ('BP00001','B102',95000,1),('BP00002','B202',102000,1),('BP00003','B102',95000,1),('BP00004','B401',90000,1),('BP00005','B401',90000,1),('BP00006','B105',95000,3);

#
# Structure for table "kategori"
#

DROP TABLE IF EXISTS `kategori`;
CREATE TABLE `kategori` (
  `KdKategori` varchar(3) NOT NULL DEFAULT '',
  `NmKategori` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`KdKategori`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

#
# Data for table "kategori"
#

INSERT INTO `kategori` VALUES ('1','Gamis'),('2','Baju Koko'),('3','Pasmina'),('4','Sarung');

#
# Structure for table "pelanggan"
#

DROP TABLE IF EXISTS `pelanggan`;
CREATE TABLE `pelanggan` (
  `KdPlg` varchar(6) NOT NULL DEFAULT '',
  `NmPlg` varchar(50) DEFAULT NULL,
  `AlamatPlg` varchar(50) DEFAULT NULL,
  `TelpPlg` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`KdPlg`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

#
# Data for table "pelanggan"
#


#
# Structure for table "suplier"
#

DROP TABLE IF EXISTS `suplier`;
CREATE TABLE `suplier` (
  `kdsuplier` int(11) NOT NULL AUTO_INCREMENT,
  `nmsuplier` varchar(20) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `telpsuplier` int(11) DEFAULT NULL,
  PRIMARY KEY (`kdsuplier`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

#
# Data for table "suplier"
#

INSERT INTO `suplier` VALUES (1,'Joe Agent','Pasar Tanah Abang Blok A',2151515),(2,'Su Agent','Pasar Tanah Abang Blok B',155451514),(3,'Shili','Bandung',1251251);
