# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.5.5-10.1.29-MariaDB)
# Database: numlistview
# Generation Time: 2018-01-16 01:33:23 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table num_list
# ------------------------------------------------------------

DROP TABLE IF EXISTS `num_list`;

CREATE TABLE `num_list` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fullname` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `logs` text,
  `vendor` text,
  `date` int(15) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `num_list` WRITE;
/*!40000 ALTER TABLE `num_list` DISABLE KEYS */;

INSERT INTO `num_list` (`id`, `fullname`, `phone`, `logs`, `vendor`, `date`)
VALUES
	(1,'0919321217','0919321217','','vinaphone',1516059364),
	(2,'01667060155','01667060155','','viettel',1516059364),
	(3,'0976580236','0976580236','','viettel',1516059364),
	(4,'0979609173','0979609173','','viettel',1516059364),
	(5,'0985569178','0985569178','','viettel',1516059364),
	(6,'0903460866','0903460866','','mobifone',1516059364),
	(7,'0962442985','0962442985','','viettel',1516059364),
	(8,'0936666692','0936666692','','mobifone',1516059364),
	(9,'0938192000','0938192000','','mobifone',1516059364),
	(10,'0973796879','0973796879','','viettel',1516059364),
	(11,'0976110188','0976110188','','viettel',1516059364),
	(12,'0918500099','0918500099','','vinaphone',1516059364),
	(13,'0908859681','0908859681','','mobifone',1516059364),
	(14,'0903009969','0903009969','','mobifone',1516059364),
	(15,'0947055659','0947055659','','vinaphone',1516059364),
	(16,'01682944833','01682944833','','viettel',1516059364),
	(17,'0988533012','0988533012','','viettel',1516059364),
	(18,'01224944568','01224944568','','mobifone',1516059364),
	(19,'0909646093','0909646093','','mobifone',1516059364),
	(20,'0903926633','0903926633','','mobifone',1516059364),
	(21,'0903326099','0903326099','','mobifone',1516059364),
	(22,'0916430497','0916430497','','vinaphone',1516059364),
	(23,'0933362666','0933362666','','mobifone',1516059364),
	(24,'0983311580','0983311580','','viettel',1516059364),
	(25,'0979005312','0979005312','','viettel',1516059364),
	(26,'0903826751','0903826751','','mobifone',1516059364),
	(27,'0909984808','0909984808','','mobifone',1516059364),
	(28,'0906622650','0906622650','','mobifone',1516059364),
	(29,'0986038284','0986038284','','viettel',1516059364),
	(30,'0937318101','0937318101','','mobifone',1516059364),
	(31,'0907604056','0907604056','','mobifone',1516059364),
	(32,'0937498168','0937498168','','mobifone',1516059364),
	(33,'0932621692','0932621692','','mobifone',1516059364),
	(34,'0913679090','0913679090','','vinaphone',1516059364),
	(35,'0903988536','0903988536','','mobifone',1516059364),
	(36,'06513719396','06513719396','','others',1516059364),
	(37,'0912848501','0912848501','','vinaphone',1516059364),
	(38,'09474899999','09474899999','','vinaphone',1516059364),
	(39,'01687774363','01687774363','','viettel',1516059364),
	(40,'0903326787','0903326787','','mobifone',1516059364),
	(41,'0932471917','0932471917','','mobifone',1516059364),
	(42,'0908048185','0908048185','','mobifone',1516059364),
	(43,'0918073227','0918073227','','vinaphone',1516059364),
	(44,'0919524163','0919524163','','vinaphone',1516059364),
	(45,'0949242724','0949242724','','vinaphone',1516059364),
	(46,'01699929747','01699929747','','viettel',1516059364),
	(47,'0904765086','0904765086','','mobifone',1516059364),
	(48,'0979447988','0979447988','','viettel',1516059364),
	(49,'0918095813','0918095813','','vinaphone',1516059364),
	(50,'0909327512','0909327512','','mobifone',1516059364),
	(51,'0908623299','0908623299','','mobifone',1516059364),
	(52,'0906960715','0906960715','','mobifone',1516059364),
	(53,'0908240069','0908240069','','mobifone',1516059364),
	(54,'0903163678','0903163678','','mobifone',1516059364),
	(55,'0906600202','0906600202','','mobifone',1516059364),
	(56,'0986742653','0986742653','','viettel',1516059364),
	(57,'0902823134','0902823134','','mobifone',1516059364),
	(59,'0918695559','0918695559','','vinaphone',1516059364),
	(60,'0909290639','0909290639','','mobifone',1516059364),
	(61,'0913917105','0913917105','','vinaphone',1516059364),
	(62,'0906782404','0906782404','','mobifone',1516059364),
	(63,'0914919999','0914919999','','vinaphone',1516059364),
	(64,'0908360689','0908360689','','mobifone',1516059364),
	(65,'0916044767','0916044767','','vinaphone',1516059364),
	(66,'0903936917','0903936917','','mobifone',1516059364),
	(67,'0903844771','0903844771','','mobifone',1516059364),
	(68,'0903846481','0903846481','','mobifone',1516059364),
	(69,'0909432434','0909432434','','mobifone',1516059364),
	(70,'0959835202','0959835202','','others',1516059364),
	(71,'0908828006','0908828006','','mobifone',1516059364),
	(72,'0919694142','0919694142','','vinaphone',1516059364),
	(73,'0973632737','0973632737','','viettel',1516059364),
	(74,'0903717247','0903717247','','mobifone',1516059364),
	(75,'0913849391','0913849391','','vinaphone',1516059364),
	(76,'0977388773','0977388773','','viettel',1516059364),
	(77,'0989220087','0989220087','','viettel',1516059364),
	(78,'0913450390','0913450390','','vinaphone',1516059364),
	(79,'0939333334','0939333334','','mobifone',1516059364),
	(80,'0913457643','0913457643','','vinaphone',1516059364),
	(82,'01224788804','01224788804','','mobifone',1516059364),
	(83,'0944234249','0944234249','','vinaphone',1516059364),
	(84,'0909529668','0909529668','','mobifone',1516059364),
	(85,'0918158093','0918158093','','vinaphone',1516059364),
	(86,'0983979825','0983979825','','viettel',1516059364),
	(87,'01696615375','01696615375','','viettel',1516059364),
	(88,'0908107467','0908107467','','mobifone',1516059364),
	(89,'0906682968','0906682968','','mobifone',1516059364),
	(90,'0908630349','0908630349','','mobifone',1516059364),
	(91,'01682268787','01682268787','','viettel',1516059364),
	(92,'0908888548','0908888548','','mobifone',1516059364),
	(93,'0933034554','0933034554','','mobifone',1516059364),
	(94,'0983581166','0983581166','','viettel',1516059364),
	(95,'0907388407','0907388407','','mobifone',1516059364),
	(96,'0909992464','0909992464','','mobifone',1516059364),
	(97,'0989351889','0989351889','','viettel',1516059364),
	(98,'0978417717','0978417717','','viettel',1516059364),
	(99,'0903705898','0903705898','','mobifone',1516059364),
	(100,'0909159788','0909159788','','mobifone',1516059364),
	(101,'0907597565','0907597565','','mobifone',1516059364),
	(102,'0906982789','0906982789','','mobifone',1516059364),
	(103,'0982555779','0982555779','','viettel',1516059364),
	(104,'0982789125','0982789125','','viettel',1516059364),
	(105,'0909020034','0909020034','','mobifone',1516059364),
	(106,'0903814386','0903814386','','mobifone',1516059364),
	(107,'0909380878','0909380878','','mobifone',1516059364),
	(108,'0987161057','0987161057','','viettel',1516059364),
	(109,'0983834969','0983834969','','viettel',1516059364),
	(110,'0908165699','0908165699','','mobifone',1516059364),
	(111,'01689940467','01689940467','','viettel',1516059364),
	(112,'0918032008','0918032008','','vinaphone',1516059364),
	(113,'0918504979','0918504979','','vinaphone',1516059364),
	(114,'0903306165','0903306165','','mobifone',1516059364),
	(115,'0907660888','0907660888','','mobifone',1516059364),
	(116,'0909022288','0909022288','','mobifone',1516059364),
	(117,'0933907288','0933907288','','mobifone',1516059364),
	(118,'01267677379','01267677379','','mobifone',1516059364),
	(119,'0903380088','0903380088','','mobifone',1516059364),
	(120,'0903916263','0903916263','','mobifone',1516059364),
	(121,'0933658356','0933658356','','mobifone',1516059364),
	(122,'0903023138','0903023138','','mobifone',1516059364),
	(123,'012251206663','012251206663','','mobifone',1516059364),
	(124,'0987725741','0987725741','','viettel',1516059364),
	(125,'0903881289','0903881289','','mobifone',1516059364),
	(126,'0913914772','0913914772','','vinaphone',1516059364),
	(127,'0903719867','0903719867','','mobifone',1516059364),
	(129,'0908501629','0908501629','','mobifone',1516059364),
	(130,'0909140650','0909140650','','mobifone',1516059364),
	(131,'0903903824','0903903824','','mobifone',1516059364),
	(132,'0903689314','0903689314','','mobifone',1516059364),
	(133,'01239090909','01239090909','','vinaphone',1516059364),
	(135,'0983516625','0983516625','','viettel',1516059364),
	(136,'0902569729','0902569729','','mobifone',1516059364),
	(137,'0909899592','0909899592','','mobifone',1516059364),
	(138,'01269559282','01269559282','','mobifone',1516059364),
	(139,'0908366464','0908366464','','mobifone',1516059364),
	(140,'01236976229','01236976229','','vinaphone',1516059364),
	(141,'0908119909','0908119909','','mobifone',1516059364),
	(142,'0902928838','0902928838','','mobifone',1516059364),
	(143,'0903149802','0903149802','','mobifone',1516059364),
	(144,'01655193529','01655193529','','viettel',1516059364),
	(145,'0908083727','0908083727','','mobifone',1516059364),
	(146,'0908688123','0908688123','','mobifone',1516059364),
	(147,'0902635688','0902635688','','mobifone',1516059364),
	(148,'0918119566','0918119566','','vinaphone',1516059364),
	(149,'0908541131','0908541131','','mobifone',1516059364),
	(150,'0907578711','0907578711','','mobifone',1516059364),
	(151,'01223679689','01223679689','','mobifone',1516059364),
	(152,'0907979504','0907979504','','mobifone',1516059364),
	(153,'01695054719','01695054719','','viettel',1516059364),
	(155,'0983808189','0983808189','','viettel',1516059364),
	(156,'0913654654','0913654654','','vinaphone',1516059364),
	(157,'0903833753','0903833753','','mobifone',1516059364),
	(158,'0905756655','0905756655','','mobifone',1516059364),
	(159,'0908163823','0908163823','','mobifone',1516059364),
	(160,'0988657779','0988657779','','viettel',1516059364),
	(161,'0907999959','0907999959','','mobifone',1516059364),
	(162,'0937221004','0937221004','','mobifone',1516059364),
	(163,'0903834131','0903834131','','mobifone',1516059364),
	(164,'38234191','38234191','','others',1516059364),
	(165,'0907901487','0907901487','','mobifone',1516059364),
	(166,'0982437710','0982437710','','viettel',1516059364),
	(167,'01257728518','01257728518','','vinaphone',1516059364),
	(168,'0978777879','0978777879','','viettel',1516059364),
	(169,'0903696008','0903696008','','mobifone',1516059364),
	(170,'0914194979','0914194979','','vinaphone',1516059364),
	(171,'0907814585','0907814585','','mobifone',1516059364),
	(172,'0968542307','0968542307','','viettel',1516059364),
	(173,'01262969191','01262969191','','mobifone',1516059364),
	(174,'0907363777','0907363777','','mobifone',1516059364),
	(175,'0985359868','0985359868','','viettel',1516059364),
	(176,'01265929005','01265929005','','mobifone',1516059364),
	(177,'01259208163','01259208163','','vinaphone',1516059364),
	(178,'0913836838','0913836838','','vinaphone',1516059364),
	(179,'0903359258','0903359258','','mobifone',1516059364),
	(180,'0913789361','0913789361','','vinaphone',1516059364),
	(182,'0908066671','0908066671','','mobifone',1516059364),
	(183,'0953107107','0953107107','','others',1516059364),
	(184,'0907976767','0907976767','','mobifone',1516059364),
	(185,'0919963015','0919963015','','vinaphone',1516059364),
	(186,'0919850192','0919850192','','vinaphone',1516059364),
	(187,'0982472589','0982472589','','viettel',1516059364),
	(188,'0973537847','0973537847','','viettel',1516059364),
	(189,'0903916689','0903916689','','mobifone',1516059364),
	(190,'0919100092','0919100092','','vinaphone',1516059364),
	(191,'0909707691','0909707691','','mobifone',1516059364),
	(192,'0913736468','0913736468','','vinaphone',1516059364),
	(193,'0987886469','0987886469','','viettel',1516059364),
	(194,'0909182488','0909182488','','mobifone',1516059364),
	(195,'0977545790','0977545790','','viettel',1516059364),
	(196,'0974754256','0974754256','','viettel',1516059364),
	(197,'0903323276','0903323276','','mobifone',1516059364),
	(198,'0983716161','0983716161','','viettel',1516059364),
	(199,'0903537727','0903537727','','mobifone',1516059364),
	(200,'0918208282','0918208282','','vinaphone',1516059364),
	(201,'0986856112','0986856112','','viettel',1516059364),
	(202,'0975582107','0975582107','','viettel',1516059364),
	(203,'0903964769','0903964769','','mobifone',1516059364),
	(204,'0986300369','0986300369','','viettel',1516059364),
	(205,'0908367292','0908367292','','mobifone',1516059364),
	(206,'0903908466','0903908466','','mobifone',1516059364),
	(207,'0983734735','0983734735','','viettel',1516059364),
	(208,'0983237082','0983237082','','viettel',1516059364),
	(209,'0913444703','0913444703','','vinaphone',1516059364),
	(210,'0988129269','0988129269','','viettel',1516059364),
	(211,'0907148921','0907148921','','mobifone',1516059364),
	(212,'0909346968','0909346968','','mobifone',1516059364),
	(213,'0903921069','0903921069','','mobifone',1516059364),
	(214,'0974293744','0974293744','','viettel',1516059364),
	(215,'0908567484','0908567484','','mobifone',1516059364),
	(216,'0918089527','0918089527','','vinaphone',1516059364),
	(217,'0908135231','0908135231','','mobifone',1516059364),
	(218,'0907438355','0907438355','','mobifone',1516059364),
	(219,'0908320329','0908320329','','mobifone',1516059364),
	(220,'0913113424','0913113424','','vinaphone',1516059364),
	(221,'0989324034','0989324034','','viettel',1516059364),
	(222,'0983365204','0983365204','','viettel',1516059364),
	(223,'0909092730','0909092730','','mobifone',1516059364),
	(224,'0903991646','0903991646','','mobifone',1516059364),
	(225,'0904422079','0904422079','','mobifone',1516059364),
	(226,'0938295394','0938295394','','mobifone',1516059364),
	(227,'0904739063','0904739063','','mobifone',1516059364),
	(228,'0907506976','0907506976','','mobifone',1516059364),
	(229,'39512173','39512173','','others',1516059364),
	(230,'0918131173','0918131173','','vinaphone',1516059364),
	(231,'0913499305','0913499305','','vinaphone',1516059364),
	(233,'0918063085','0918063085','','vinaphone',1516059364),
	(234,'0989181819','0989181819','','viettel',1516059364),
	(235,'0903133272','0903133272','','mobifone',1516059364),
	(236,'0903351703','0903351703','','mobifone',1516059364),
	(237,'0908365395','0908365395','','mobifone',1516059364),
	(238,'0903131279','0903131279','','mobifone',1516059364),
	(239,'09130715474','09130715474','','vinaphone',1516059364),
	(240,'0908908181','0908908181','','mobifone',1516059364),
	(241,'0918879861','0918879861','','vinaphone',1516059364),
	(242,'0903137997','0903137997','','mobifone',1516059364),
	(243,'0908168952','0908168952','','mobifone',1516059364),
	(244,'0918413967','0918413967','','vinaphone',1516059364),
	(245,'0906678908','0906678908','','mobifone',1516059364),
	(246,'0985517775','0985517775','','viettel',1516059364),
	(247,'0917538168','0917538168','','vinaphone',1516059364),
	(248,'0918809888','0918809888','','vinaphone',1516059364),
	(249,'0984307747','0984307747','','viettel',1516059364),
	(250,'0907296868','0907296868','','mobifone',1516059364),
	(251,'0983373345','0983373345','','viettel',1516059364),
	(253,'01687608999','01687608999','','viettel',1516059364),
	(254,'0918797575','0918797575','','vinaphone',1516059364),
	(255,'0983939169','0983939169','','viettel',1516059364),
	(256,'0938166666','0938166666','','mobifone',1516059364),
	(257,'0958866227','0958866227','','others',1516059364),
	(258,'0904483044','0904483044','','mobifone',1516059364),
	(260,'0907530388','0907530388','','mobifone',1516059364),
	(261,'0904225451','0904225451','','mobifone',1516059364),
	(262,'0905901212','0905901212','','mobifone',1516059364),
	(263,'0989078900','0989078900','','viettel',1516059364),
	(264,'0934221978','0934221978','','mobifone',1516059364),
	(265,'0989171058','0989171058','','viettel',1516059364),
	(266,'0903804141','0903804141','','mobifone',1516059364),
	(267,'01998039793','01998039793','','gmobile',1516059364),
	(268,'0903907378','0903907378','','mobifone',1516059364),
	(269,'0938339917','0938339917','','mobifone',1516059364),
	(270,'0903723929','0903723929','','mobifone',1516059364),
	(271,'0909777979','0909777979','','mobifone',1516059364),
	(272,'0903752275','0903752275','','mobifone',1516059364),
	(273,'0903920797','0903920797','','mobifone',1516059364),
	(274,'0949596978','0949596978','','vinaphone',1516059364),
	(275,'0915678448','0915678448','','vinaphone',1516059364),
	(276,'0939244555','0939244555','','mobifone',1516059364),
	(277,'0989138138','0989138138','','viettel',1516059364),
	(278,'0918313990','0918313990','','vinaphone',1516059364),
	(279,'0908679521','0908679521','','mobifone',1516059364),
	(280,'0909933040','0909933040','','mobifone',1516059364),
	(282,'0908868444','0908868444','','mobifone',1516059364),
	(283,'0937880648','0937880648','','mobifone',1516059364),
	(284,'01696908809','01696908809','','viettel',1516059364),
	(285,'0902797979','0902797979','','mobifone',1516059364),
	(286,'0908852329','0908852329','','mobifone',1516059364),
	(287,'0909099942','0909099942','','mobifone',1516059364),
	(288,'0909274479','0909274479','','mobifone',1516059364),
	(289,'0906587579','0906587579','','mobifone',1516059364),
	(290,'0903665611','0903665611','','mobifone',1516059364),
	(291,'0933799333','0933799333','','mobifone',1516059364),
	(292,'0933627614','0933627614','','mobifone',1516059364),
	(294,'0903010664','0903010664','','mobifone',1516059364),
	(295,'0982597959','0982597959','','viettel',1516059364),
	(296,'0906348825','0906348825','','mobifone',1516059364),
	(297,'01217959343','01217959343','','mobifone',1516059364),
	(298,'0903623678','0903623678','','mobifone',1516059364),
	(299,'0903670092','0903670092','','mobifone',1516059364),
	(300,'09089249415','09089249415','','mobifone',1516059364),
	(301,'0975929924','0975929924','','viettel',1516059364),
	(302,'0988254040','0988254040','','viettel',1516059364),
	(303,'0908100222','0908100222','','mobifone',1516059364),
	(304,'0958068037','0958068037','','others',1516059364),
	(305,'0939876868','0939876868','','mobifone',1516059364),
	(306,'0935248735','0935248735','','mobifone',1516059364),
	(308,'0986306446','0986306446','','viettel',1516059364),
	(309,'0984185902','0984185902','','viettel',1516059364),
	(310,'0903841313-38618069','0903841313-38618069','','mobifone',1516059364),
	(312,'0933536886','0933536886','','mobifone',1516059364),
	(313,'0909452916','0909452916','','mobifone',1516059364),
	(314,'0989678785','0989678785','','viettel',1516059364),
	(315,'0932802544','0932802544','','mobifone',1516059364),
	(316,'0976483060','0976483060','','viettel',1516059364),
	(317,'0933592219','0933592219','','mobifone',1516059364),
	(318,'0906755575','0906755575','','mobifone',1516059364),
	(319,'0985200200','0985200200','','viettel',1516059364),
	(320,'0945797881','0945797881','','vinaphone',1516059364),
	(321,'01696189081','01696189081','','viettel',1516059364),
	(322,'0909234004','0909234004','','mobifone',1516059364),
	(323,'0913910145','0913910145','','vinaphone',1516059364),
	(324,'0919104799','0919104799','','vinaphone',1516059364),
	(325,'0913802510','0913802510','','vinaphone',1516059364),
	(326,'0854445081','0854445081','','others',1516059364),
	(327,'0982255297','0982255297','','viettel',1516059364),
	(328,'0907746851','0907746851','','mobifone',1516059364),
	(329,'0947444868','0947444868','','vinaphone',1516059364),
	(330,'01663733335','01663733335','','viettel',1516059364),
	(331,'0943993777','0943993777','','vinaphone',1516059364),
	(332,'0938881148','0938881148','','mobifone',1516059364),
	(333,'0908211356','0908211356','','mobifone',1516059364),
	(334,'0903911256','0903911256','','mobifone',1516059364),
	(336,'0989115199','0989115199','','viettel',1516059364),
	(337,'0938.555.567','0938.555.567','','mobifone',1516059364),
	(338,'0862960059','0862960059','','viettel',1516059364),
	(339,'0968958777','0968958777','','viettel',1516059364),
	(340,'0957173172','0957173172','','others',1516059364),
	(341,'0904757309','0904757309','','mobifone',1516059364),
	(342,'0983504095','0983504095','','viettel',1516059364),
	(343,'0907341688','0907341688','','mobifone',1516059364),
	(344,'0909902506','0909902506','','mobifone',1516059364),
	(345,'0908917530','0908917530','','mobifone',1516059364),
	(346,'0903820717','0903820717','','mobifone',1516059364),
	(347,'0909298595','0909298595','','mobifone',1516059364),
	(348,'0904444536','0904444536','','mobifone',1516059364),
	(349,'0987375731','0987375731','','viettel',1516059364),
	(350,'0976848679','0976848679','','viettel',1516059364),
	(351,'01699853191','01699853191','','viettel',1516059364),
	(352,'0938345107','0938345107','','mobifone',1516059364),
	(353,'0935865868','0935865868','','mobifone',1516059364),
	(354,'0918918963','0918918963','','vinaphone',1516059364),
	(355,'0903806094','0903806094','','mobifone',1516059364),
	(356,'0908277419','0908277419','','mobifone',1516059364),
	(357,'0903140755','0903140755','','mobifone',1516059364),
	(358,'0909724427','0909724427','','mobifone',1516059364),
	(359,'0903912788','0903912788','','mobifone',1516059364),
	(360,'0942696696','0942696696','','vinaphone',1516059364),
	(361,'0904159580','0904159580','','mobifone',1516059364),
	(362,'0923009932','0923009932','','vietnamobile',1516059364),
	(363,'0983353905','0983353905','','viettel',1516059364),
	(364,'0982424514','0982424514','','viettel',1516059364),
	(365,'0919551469','0919551469','','vinaphone',1516059364),
	(366,'0972873434','0972873434','','viettel',1516059364),
	(367,'0908603090','0908603090','','mobifone',1516059364),
	(368,'0986661913','0986661913','','viettel',1516059364),
	(369,'0979830057','0979830057','','viettel',1516059364),
	(370,'0908316112','0908316112','','mobifone',1516059364),
	(371,'0984727281','0984727281','','viettel',1516059364),
	(372,'0903685269','0903685269','','mobifone',1516059364),
	(373,'0913732341','0913732341','','vinaphone',1516059364),
	(374,'0909747235','0909747235','','mobifone',1516059364),
	(375,'0909597930','0909597930','','mobifone',1516059364),
	(376,'0902950206','0902950206','','mobifone',1516059364),
	(377,'0913964129','0913964129','','vinaphone',1516059364),
	(378,'0908000999','0908000999','','mobifone',1516059364),
	(379,'0909914428','0909914428','','mobifone',1516059364),
	(380,'0903194888','0903194888','','mobifone',1516059364),
	(381,'0976525054','0976525054','','viettel',1516059364),
	(382,'0908385327','0908385327','','mobifone',1516059364),
	(383,'0948780458','0948780458','','vinaphone',1516059364),
	(384,'0905940727','0905940727','','mobifone',1516059364),
	(385,'0904979026','0904979026','','mobifone',1516059364),
	(386,'0907081153','0907081153','','mobifone',1516059364),
	(387,'0905607282','0905607282','','mobifone',1516059364),
	(388,'0918341305','0918341305','','vinaphone',1516059364),
	(1553,'nam nguyen','0909650039','chua co goi','mobifone',1516059474),
	(2332,'nam 2 2','0909650030','goi roi','other',1516059532);

/*!40000 ALTER TABLE `num_list` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
