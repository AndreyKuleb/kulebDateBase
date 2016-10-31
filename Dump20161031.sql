CREATE DATABASE  IF NOT EXISTS `perftest2` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `perftest2`;
-- MySQL dump 10.13  Distrib 5.5.52, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: perftest2
-- ------------------------------------------------------
-- Server version	5.5.52-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `followers`
--

DROP TABLE IF EXISTS `followers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `followers` (
  `followerEmail` varchar(255) NOT NULL,
  `followeeEmail` varchar(255) NOT NULL,
  PRIMARY KEY (`followerEmail`,`followeeEmail`),
  KEY `index2` (`followeeEmail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `followers`
--

LOCK TABLES `followers` WRITE;
/*!40000 ALTER TABLE `followers` DISABLE KEYS */;
INSERT INTO `followers` VALUES ('tav35mec@bk.ru','8m2@ua.ru'),('kn3@ya.ru','sk6r@list.ru'),('3nilyvdwe4@ya.ru','tav35mec@bk.ru'),('8m2@ua.ru','tav35mec@bk.ru'),('gnf@yahoo.com','x87b5afyi@bk.ru');
/*!40000 ALTER TABLE `followers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `shortname` varchar(255) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  PRIMARY KEY (`shortname`),
  UNIQUE KEY `shortname_UNIQUE` (`shortname`),
  UNIQUE KEY `name_UNIQUE` (`name`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (4,'fwtz c4gyt8am 74y35','1rc6udkg9f','kn3@ya.ru'),(1,'flhpidu1 wu9 sv bs62','aznt810k','8m2@ua.ru'),(6,'70 gx9r4y tqeay7 begx','cbp0ovyf','8m2@ua.ru'),(5,'eqna2mgi38 gbmz7el3 ticr0s3ge','ew185tcbv','3nilyvdwe4@ya.ru'),(7,'q0mo9s','gao7592m13','kn3@ya.ru'),(3,'ri8 nkcai3s6b fe24cpnsta z8x5w0n','pt','tav35mec@bk.ru'),(2,'gyk9vx n8054 g3bu48vda0','rcwvh','frw@mail.ru'),(10,'piv2lnxcw','ref5cwg9','3nilyvdwe4@ya.ru'),(8,'5gx','tn2iuzm','x87b5afyi@bk.ru'),(9,'yp','uel2p37yc0','kn3@ya.ru');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isApproved` tinyint(1) NOT NULL DEFAULT '0',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0',
  `isEdited` tinyint(1) NOT NULL DEFAULT '0',
  `isHighlighted` tinyint(1) NOT NULL DEFAULT '1',
  `isSpam` tinyint(1) NOT NULL DEFAULT '0',
  `likes` int(11) NOT NULL DEFAULT '0',
  `message` varchar(255) NOT NULL,
  `parent` varchar(255) NOT NULL,
  `points` int(11) NOT NULL DEFAULT '0',
  `threadId` int(10) unsigned NOT NULL,
  `date` datetime NOT NULL,
  `forumShortname` varchar(255) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `dislikes` int(11) NOT NULL DEFAULT '0',
  `materPath` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `threadId_materPath` (`threadId`,`materPath`),
  KEY `forumShort-date` (`forumShortname`,`date`),
  KEY `userEmail-date` (`userEmail`,`date`),
  KEY `threadid-date-materPath` (`threadId`,`date`,`materPath`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,1,0,1,1,1,0,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam a lorem a leo porttitor tincidunt eget et urna. Aenean id lacinia dolor. Sed consequat ipsum at orci porta, sed condimentum dui elementum. Curabitur magna purus, sagittis in convallis ultric','',0,3,'2013-03-17 15:19:51','ew185tcbv','tav35mec@bk.ru',0,'00'),(2,1,0,1,0,0,0,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam a lorem a leo porttitor tincidunt eget et urna. Aenean id lacinia dolor. Sed consequat ipsum at orci porta, sed condimentum dui elementum. Curabitur magna purus, sagittis in convallis ultric','',0,8,'2013-09-07 13:02:59','rcwvh','8m2@ua.ru',0,'00'),(3,1,0,0,0,1,0,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam a lorem a leo porttitor tincidunt eget et urna. Aenean id lacinia dolor. Sed consequat ipsum at orci porta, sed condimentum dui elementum. Curabitur magna purus, sagittis in convallis ultric','',0,6,'2013-08-09 06:57:18','1rc6udkg9f','gnf@yahoo.com',0,'00'),(4,0,1,1,0,1,0,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam a lorem a leo porttitor tincidunt eget et urna. Aenean id lacinia dolor. Sed consequat ipsum at orci porta, sed condimentum dui elementum. Curabitur magna purus, sagittis in convallis ultric','',0,6,'2013-01-27 13:30:27','1rc6udkg9f','3nilyvdwe4@ya.ru',0,'01'),(5,0,0,0,1,1,0,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam a lorem a leo porttitor tincidunt eget et urna. Aenean id lacinia dolor. Sed consequat ipsum at orci porta, sed condimentum dui elementum. Curabitur magna purus, sagittis in convallis ultric','',0,7,'2013-07-10 00:45:06','ew185tcbv','8m2@ua.ru',0,'00'),(6,1,0,1,0,0,0,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam a lorem a leo porttitor tincidunt eget et urna. Aenean id lacinia dolor. Sed consequat ipsum at orci porta, sed condimentum dui elementum. Curabitur magna purus, sagittis in convallis ultric','',0,9,'2013-04-27 20:15:31','cbp0ovyf','3nilyvdwe4@ya.ru',0,'00'),(7,1,1,1,0,1,0,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam a lorem a leo porttitor tincidunt eget et urna. Aenean id lacinia dolor. Sed consequat ipsum at orci porta, sed condimentum dui elementum. Curabitur magna purus, sagittis in convallis ultric','',0,7,'2013-01-04 02:26:50','ew185tcbv','tav35mec@bk.ru',0,'00'),(8,1,0,0,0,1,0,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam a lorem a leo porttitor tincidunt eget et urna. Aenean id lacinia dolor. Sed consequat ipsum at orci porta, sed condimentum dui elementum. Curabitur magna purus, sagittis in convallis ultric','',0,5,'2013-05-23 03:00:05','rcwvh','sk6r@list.ru',0,'00'),(9,1,0,0,0,1,0,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam a lorem a leo porttitor tincidunt eget et urna. Aenean id lacinia dolor. Sed consequat ipsum at orci porta, sed condimentum dui elementum. Curabitur magna purus, sagittis in convallis ultric','',0,4,'2013-01-14 17:19:28','cbp0ovyf','frw@mail.ru',0,'00'),(10,1,1,1,1,1,0,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam a lorem a leo porttitor tincidunt eget et urna. Aenean id lacinia dolor. Sed consequat ipsum at orci porta, sed condimentum dui elementum. Curabitur magna purus, sagittis in convallis ultric','1',0,3,'2013-01-05 04:46:10','ew185tcbv','1sqn8apm3@yahoo.com',0,'0000');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscribes`
--

DROP TABLE IF EXISTS `subscribes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscribes` (
  `userEmail` varchar(255) NOT NULL,
  `threadId` int(11) NOT NULL,
  PRIMARY KEY (`threadId`,`userEmail`),
  KEY `index2` (`userEmail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscribes`
--

LOCK TABLES `subscribes` WRITE;
/*!40000 ALTER TABLE `subscribes` DISABLE KEYS */;
INSERT INTO `subscribes` VALUES ('1sqn8apm3@yahoo.com',1),('1sqn8apm3@yahoo.com',3),('kn3@ya.ru',6),('sk6r@list.ru',10),('x87b5afyi@bk.ru',4);
/*!40000 ALTER TABLE `subscribes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thread`
--

DROP TABLE IF EXISTS `thread`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thread` (
  `date` datetime NOT NULL,
  `dislikes` int(11) NOT NULL DEFAULT '0',
  `forumShortname` varchar(255) NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isClosed` tinyint(1) NOT NULL,
  `isDeleted` tinyint(1) NOT NULL,
  `likes` int(11) NOT NULL DEFAULT '0',
  `message` varchar(5000) NOT NULL,
  `points` int(11) NOT NULL DEFAULT '0',
  `posts` int(10) unsigned NOT NULL DEFAULT '0',
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `forumSh-date` (`forumShortname`,`date`),
  KEY `user-date` (`userEmail`,`date`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thread`
--

LOCK TABLES `thread` WRITE;
/*!40000 ALTER TABLE `thread` DISABLE KEYS */;
INSERT INTO `thread` VALUES ('2013-11-23 01:02:18',0,'tn2iuzm',1,1,1,0,'97wtfn1za h3cltn2w d2xoi04nkr qgalpvn 2gtaypnqx w3 qw bx4os 20b9pn8 wg0t h2ws04z5i7 il1kpvg7 4592 9ftl bvnadkseq fxcwe49qs u5az3dlh1 3yvqa vgw165ab csgw em hxgwk2cs g95a6df3',0,0,'un','cg zy y3uqel 9sih6w34uz','kn3@ya.ru'),('2013-02-11 00:15:12',0,'1rc6udkg9f',2,0,1,0,'q8hwsgmap 6x8s bry2 69gq 7rpaeyq3f bg oc2s31p5i iv g64c8insty nifq7 61fz8 3mwra amcd6yu mt1gib625 gk xecsu91m2l 2e6won bqgl aeg7st6dhz 4i6vbhdpw7 7d mvoceg6wu cgvgtw6 hbwpg6 1rk6tn wp6orgy4 r76kepo 7y5q 8tecb0',0,0,'zo','zey3vfh7w mrx8zbp7u 6cwtd','8m2@ua.ru'),('2013-05-09 15:54:30',0,'ew185tcbv',3,1,0,0,'7u o1gui ggdi02au6 i1hkz4ylg m689 m4o8w e9qf6s1 2btshcyx fmab3i 6gxfz17n r3na 3b94a ew24 2d t5gb7mh8 at fl p5qgy g20s vn1c p4x6u p8xz d9oer3 gpvg87 0m',0,2,'tgnq4w9','h2p05uqe 01xc98v pn4tav l5','gnf@yahoo.com'),('2013-06-25 00:06:25',0,'cbp0ovyf',4,0,1,0,'wvf38 gorqpais pevtioqrws c21k gidvfy zp2sc5y3 bcz3ym utckh 3pi t45y dp41i6y39b oxsb4z x0u4 fv1g8zs7 0l vs t7q92y8 r7n03 cxbvz6sor u8xn2o 3ig12bt rukx gt 8v5qydau3x iltf96b',0,1,'pd','4f3ibrl 26r','8m2@ua.ru'),('2013-10-03 23:02:46',0,'rcwvh',5,1,1,0,'9a3giku fxsn1aci sze 9b73mstg f09g13eqa 9r4wqngzgs 4eocwu dgyu durp thar89 ownicb0zes nov3i1 bv3w ang4kc12g ch5i18o whi413nft 97bng1h42 6zy4 mwt1 a7r v9t2gm7',0,1,'nheb3g','rg30z9iqk akh7f86mez w24g5szh t410r','gnf@yahoo.com'),('2013-07-06 15:25:52',0,'1rc6udkg9f',6,1,1,0,'bcl 7h4q6 edw1p pgwdl wyb bvmyhgfgps 36e85ig7q e8uvryb0qs yop5q4rn 1fr05 ztn 1f6hgo fctzs17m2 ldn9ox nfa50uos ew drt57 qrhxw tfn 62o tc 493ylg5t vdm2 mvsprud egnv 2c st 3s 2p',0,2,'5k3p','d0wkt4m1 ya431 q0','sk6r@list.ru'),('2013-01-14 21:21:07',0,'ew185tcbv',7,1,0,0,'bcwq53kn6 ybca 284y9mbga 8i9 8glmtg gtp209 l9h7 rugne59g cotm9w2rd3 b6goh0q bir62 0em3bfy epnuskov75 tg8zrkso bk73g 1fe3xognw8 ovlzmgqby gbwytod guc psxeho50y',0,2,'xa08q3vl','t7cewnk5 yzqo2v1pt5','tav35mec@bk.ru'),('2013-12-03 11:58:34',0,'rcwvh',8,1,1,0,'d86 gp0u p23zflkg tlk zp0ggs3rfx 3zqly ex8l viw0dhgc 93e braxogz glwg581m e2 9r zg rl xgtgb6ip g0qe9k x0dnza3q khzgy6c 2t0pr6w 4dy059 0h2emf8q c6 i5 3iaymeru1q xg4kao6lf 3enmc4a lvgaum8n3 fws5y',0,1,'9d187pth','dwu75k8 u2 k3qguc7p2 8nm1','frw@mail.ru'),('2013-11-13 22:06:23',0,'cbp0ovyf',9,1,0,0,'vlf9o0i ktpvbd8na duoft gfvtzy7 x48 mz 70rbqkl ued m7vult5wg6 45ngu 0682bazc ho1f 9l674 3z0o4wqmhp hg94k 4fkt1ao z4 qwg90 12plcxt5yi mv waeqhtgsrm 7am lm shbpf2d cslm6epw7o 9ts a3usgwld 018wo2 mwzx8a',0,1,'94bgrt','g16e obcx1iu udkmf4a6e9','sk6r@list.ru'),('2013-02-06 00:30:47',0,'tn2iuzm',10,0,1,0,'baqdh48 b3int6q2 3ya1 3orpnvcy92 xd0f7eg3zb cwgsg86 8gbyn5o2zl 7bxus0 g25nk8 orps6ugl0 t0hlbiec2 ueq khgea pv1f t1b6s h5d6qec sie1mvrc64 mkc7w zivurepx 9sndu 8ml fbe0md',0,0,'6wra98pq12','dtwqb5cp2 nabkpfxs05 gavg','tav35mec@bk.ru');
/*!40000 ALTER TABLE `thread` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `email` varchar(255) NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `about` varchar(5000) NOT NULL,
  `isAnonymous` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`email`,`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('1sqn8apm3@yahoo.com',4,'',1,'',''),('3nilyvdwe4@ya.ru',9,'hwl7t0v4rg n5fthagqv 6f1 ktgw 2yetda6 t2b6aeo sk49 l0iwk5 he8y7qf9 x04ybcf8 mqo1 phznd 710dtq gv87gix clrn3etf 0pf5r9g6s7 q8 s6qrf thy9np c7vlqs369 u613c mg0xnis k7u1f nl nhm4z dgi9rn dulch2grw ps c9ow618f',0,'nc3pr8h09v','14q0uemfy'),('8m2@ua.ru',10,'',1,'',''),('frw@mail.ru',2,'u6v hw20ns5lv6 nqkefc0 mwx43nbg5y 4lca6szfdo g9pm4qlx yggasho1 qtx 8e skxbghdc hxu uw5fm yupkn ugxme 6m4kzo rez3yac ekzupb5a n54s9hv u8pg537w oec7g61n 6i5n1el tgg2l9i3d1 ngl tp5he h4ui 7a95bqv 6bhcrzmk rey nhy mb4di358x2',0,'9xliv fzd qkp1gstw09','9qmvwuc'),('gnf@yahoo.com',3,'kbw5gsx g0z5ayro vaex3b6o wte 6gks qz3mawc 2izkwl3o mq8v5wx4ug sybkn3d081 dagv4 qx97hw5r trx1iwnzdb mint0se59g s3n gc7mnxq4 5l4q ecwnq7dlry psn5f 52r0 fn 4y9xmgz hw 5o8t kumso',0,'gpnhxdivt 4efr2bdo3u 19zb7','lr'),('kn3@ya.ru',5,'fy8 9o824 i1c60 gzx04dgvml vl tmghy a3 6wov rq irp3 6dnqm4ey o1 koaezi ts4pq6 atl 26r35t7 bflkcdos2 k6 b4tg3ue eu89 hgqrz3 g6gkw45rn8',0,'0hqo9dri8 gy0fn q3a2pez5m','pq'),('sk6r@list.ru',8,'81it b6ia95u qpsih8y a40hx b3 egsz fuaq 3f1 hk oxy13 ivcn 1l42h spf64i ceb p95d7 yixa m2g4uhl9 ix0pr3 w9min4kyab v3buo1 nb g4ntg dz32f6 th6 cghxnd1r69 ag2fsh0vq5 ggaiymdn pg3w d60 wy21',0,'gs 4g weft07 8kegg61s5t','5ca7sgtlyw'),('tav35mec@bk.ru',7,'2ib83r 0og t9 30q5i2ogfe cqvggi41us g27 xe8v xp lx4e 47 3f95r8 dmaef6pgt0 echtxby406 wnqytlsa mvg0 qrg63 o1gr0stv9 89tun0 wy2atsvu7o i1o643tbd 7t21im cxzbs0qo e4bgda6mi adsyg3k1 vw30m',0,'v1za7ep4 mw 46dzhygix','am86n49g'),('x87b5afyi@bk.ru',6,'',1,'',''),('yl3w8gtnk@gmail.com',1,'3bd1 yax 9zdx76 pbqr0k4c drz0 hyetdpq6an gyrdqg 43igcyg f6roi30dpk eo9 95wgby a4t6my2rf mv6qt1ez7 8o74p6dk t4q6c defrsptv 0tpx8qo529 9stggcoi n7u vzku3ieo 76v3g1fo8k p5znbugo o75tn2 zun4icrb',0,'pnqlfxsg ng5v gqsc4 vdbarwoelp','idn');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-31 13:29:13
