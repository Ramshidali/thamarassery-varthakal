/*
SQLyog Community Edition- MySQL GUI v8.03 
MySQL - 5.1.32-community : Database - thamarasseryvarthakal
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`thamarasseryvarthakal` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `thamarasseryvarthakal`;

/*Table structure for table `auth_group` */

DROP TABLE IF EXISTS `auth_group`;

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `auth_group` */

/*Table structure for table `auth_group_permissions` */

DROP TABLE IF EXISTS `auth_group_permissions`;

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `auth_group_permissions` */

/*Table structure for table `auth_permission` */

DROP TABLE IF EXISTS `auth_permission`;

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;

/*Data for the table `auth_permission` */

insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add adv_position',7,'add_adv_position'),(26,'Can change adv_position',7,'change_adv_position'),(27,'Can delete adv_position',7,'delete_adv_position'),(28,'Can view adv_position',7,'view_adv_position'),(29,'Can add news_district',8,'add_news_district'),(30,'Can change news_district',8,'change_news_district'),(31,'Can delete news_district',8,'delete_news_district'),(32,'Can view news_district',8,'view_news_district'),(33,'Can add news_nation',9,'add_news_nation'),(34,'Can change news_nation',9,'change_news_nation'),(35,'Can delete news_nation',9,'delete_news_nation'),(36,'Can view news_nation',9,'view_news_nation'),(37,'Can add news_place',10,'add_news_place'),(38,'Can change news_place',10,'change_news_place'),(39,'Can delete news_place',10,'delete_news_place'),(40,'Can view news_place',10,'view_news_place'),(41,'Can add registration',11,'add_registration'),(42,'Can change registration',11,'change_registration'),(43,'Can delete registration',11,'delete_registration'),(44,'Can view registration',11,'view_registration'),(45,'Can add whatsapp_link',12,'add_whatsapp_link'),(46,'Can change whatsapp_link',12,'change_whatsapp_link'),(47,'Can delete whatsapp_link',12,'delete_whatsapp_link'),(48,'Can view whatsapp_link',12,'view_whatsapp_link'),(49,'Can add news_field',13,'add_news_field'),(50,'Can change news_field',13,'change_news_field'),(51,'Can delete news_field',13,'delete_news_field'),(52,'Can view news_field',13,'view_news_field'),(53,'Can add advetiment_field',14,'add_advetiment_field'),(54,'Can change advetiment_field',14,'change_advetiment_field'),(55,'Can delete advetiment_field',14,'delete_advetiment_field'),(56,'Can view advetiment_field',14,'view_advetiment_field'),(57,'Can add special_days',15,'add_special_days'),(58,'Can change special_days',15,'change_special_days'),(59,'Can delete special_days',15,'delete_special_days'),(60,'Can view special_days',15,'view_special_days'),(61,'Can add aboutus_content',16,'add_aboutus_content'),(62,'Can change aboutus_content',16,'change_aboutus_content'),(63,'Can delete aboutus_content',16,'delete_aboutus_content'),(64,'Can view aboutus_content',16,'view_aboutus_content'),(65,'Can add aboutus',17,'add_aboutus'),(66,'Can change aboutus',17,'change_aboutus'),(67,'Can delete aboutus',17,'delete_aboutus'),(68,'Can view aboutus',17,'view_aboutus');

/*Table structure for table `auth_user` */

DROP TABLE IF EXISTS `auth_user`;

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `auth_user` */

insert  into `auth_user`(`id`,`password`,`last_login`,`is_superuser`,`username`,`first_name`,`last_name`,`email`,`is_staff`,`is_active`,`date_joined`) values (1,'pbkdf2_sha256$150000$e46zHH1btV7M$YafMI7vAJg4+eId8c0A173RkWBku0LrjhFqJsJO2dbc=',NULL,0,'aliramshid@gmail.com','Ramshid','ali','aliramshid@gmail.com',0,1,'2020-08-19 16:46:48');

/*Table structure for table `auth_user_groups` */

DROP TABLE IF EXISTS `auth_user_groups`;

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `auth_user_groups` */

/*Table structure for table `auth_user_user_permissions` */

DROP TABLE IF EXISTS `auth_user_user_permissions`;

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `auth_user_user_permissions` */

/*Table structure for table `django_admin_log` */

DROP TABLE IF EXISTS `django_admin_log`;

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `django_admin_log` */

/*Table structure for table `django_content_type` */

DROP TABLE IF EXISTS `django_content_type`;

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `django_content_type` */

insert  into `django_content_type`(`id`,`app_label`,`model`) values (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(17,'editors','aboutus'),(16,'editors','aboutus_content'),(14,'editors','advetiment_field'),(7,'editors','adv_position'),(8,'editors','news_district'),(13,'editors','news_field'),(9,'editors','news_nation'),(10,'editors','news_place'),(11,'editors','registration'),(15,'editors','special_days'),(12,'editors','whatsapp_link'),(6,'sessions','session');

/*Table structure for table `django_migrations` */

DROP TABLE IF EXISTS `django_migrations`;

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

/*Data for the table `django_migrations` */

insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values (1,'contenttypes','0001_initial','2020-08-19 16:31:49'),(2,'auth','0001_initial','2020-08-19 16:31:50'),(3,'admin','0001_initial','2020-08-19 16:31:52'),(4,'admin','0002_logentry_remove_auto_add','2020-08-19 16:31:52'),(5,'admin','0003_logentry_add_action_flag_choices','2020-08-19 16:31:52'),(6,'contenttypes','0002_remove_content_type_name','2020-08-19 16:31:52'),(7,'auth','0002_alter_permission_name_max_length','2020-08-19 16:31:53'),(8,'auth','0003_alter_user_email_max_length','2020-08-19 16:31:53'),(9,'auth','0004_alter_user_username_opts','2020-08-19 16:31:53'),(10,'auth','0005_alter_user_last_login_null','2020-08-19 16:31:53'),(11,'auth','0006_require_contenttypes_0002','2020-08-19 16:31:53'),(12,'auth','0007_alter_validators_add_error_messages','2020-08-19 16:31:53'),(13,'auth','0008_alter_user_username_max_length','2020-08-19 16:31:53'),(14,'auth','0009_alter_user_last_name_max_length','2020-08-19 16:31:53'),(15,'auth','0010_alter_group_name_max_length','2020-08-19 16:31:54'),(16,'auth','0011_update_proxy_permissions','2020-08-19 16:31:54'),(17,'editors','0001_initial','2020-08-19 16:31:54'),(18,'sessions','0001_initial','2020-08-19 16:31:56');

/*Table structure for table `django_session` */

DROP TABLE IF EXISTS `django_session`;

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `django_session` */

insert  into `django_session`(`session_key`,`session_data`,`expire_date`) values ('8yodpo5z8alpap11vv0487kk4bvs2ie7','NTQ1Y2M2YTU1ODkwNjcxNWViYzVjOWM0MWMyYjczZTlhYTNkMjQ1OTp7ImlkIjoxfQ==','2020-09-13 16:40:42'),('czctqeyu5kdam196yjmt73q5jlydsvwe','NTQ1Y2M2YTU1ODkwNjcxNWViYzVjOWM0MWMyYjczZTlhYTNkMjQ1OTp7ImlkIjoxfQ==','2020-09-11 00:34:24'),('de8m1zndbpfn4hvsj8usm8llhjhbkevk','NTQ1Y2M2YTU1ODkwNjcxNWViYzVjOWM0MWMyYjczZTlhYTNkMjQ1OTp7ImlkIjoxfQ==','2020-09-09 13:29:14'),('inyqz9nau4ix8j6e8ikksgg4sernnosn','NTQ1Y2M2YTU1ODkwNjcxNWViYzVjOWM0MWMyYjczZTlhYTNkMjQ1OTp7ImlkIjoxfQ==','2020-09-11 00:38:49'),('jwxbcj4nqogwd8es6xoa2x1qe77ekorx','NTQ1Y2M2YTU1ODkwNjcxNWViYzVjOWM0MWMyYjczZTlhYTNkMjQ1OTp7ImlkIjoxfQ==','2020-09-11 09:15:18'),('oi5n57tq6tnqcby6vuv89n66y9ug2sxd','NTQ1Y2M2YTU1ODkwNjcxNWViYzVjOWM0MWMyYjczZTlhYTNkMjQ1OTp7ImlkIjoxfQ==','2020-09-10 20:05:00'),('p6lwxp157m1v9rss3tivmgpadzy0be1l','NTQ1Y2M2YTU1ODkwNjcxNWViYzVjOWM0MWMyYjczZTlhYTNkMjQ1OTp7ImlkIjoxfQ==','2020-09-12 14:37:45'),('sqb37d3n3lawf6i1s50wv741gtiugpy4','NTQ1Y2M2YTU1ODkwNjcxNWViYzVjOWM0MWMyYjczZTlhYTNkMjQ1OTp7ImlkIjoxfQ==','2020-09-04 15:54:31'),('uakwnrch45omdr21r996mgcpxurbin8o','NTQ1Y2M2YTU1ODkwNjcxNWViYzVjOWM0MWMyYjczZTlhYTNkMjQ1OTp7ImlkIjoxfQ==','2020-09-02 18:42:35');

/*Table structure for table `editors_aboutus` */

DROP TABLE IF EXISTS `editors_aboutus`;

CREATE TABLE `editors_aboutus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_image` varchar(100) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `editor_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `editors_aboutus_editor_id_id_1182d758_fk_auth_user_id` (`editor_id_id`),
  CONSTRAINT `editors_aboutus_editor_id_id_1182d758_fk_auth_user_id` FOREIGN KEY (`editor_id_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `editors_aboutus` */

/*Table structure for table `editors_aboutus_content` */

DROP TABLE IF EXISTS `editors_aboutus_content`;

CREATE TABLE `editors_aboutus_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contant` varchar(10000) NOT NULL,
  `editor_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `editors_aboutus_content_editor_id_id_242d7086_fk_auth_user_id` (`editor_id_id`),
  CONSTRAINT `editors_aboutus_content_editor_id_id_242d7086_fk_auth_user_id` FOREIGN KEY (`editor_id_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `editors_aboutus_content` */

/*Table structure for table `editors_adv_position` */

DROP TABLE IF EXISTS `editors_adv_position`;

CREATE TABLE `editors_adv_position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adv_position` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `editors_adv_position` */

insert  into `editors_adv_position`(`id`,`adv_position`) values (1,'Carousel'),(2,'Small Bar'),(3,'Side Bar'),(4,'Bottom Bar');

/*Table structure for table `editors_advetiment_field` */

DROP TABLE IF EXISTS `editors_advetiment_field`;

CREATE TABLE `editors_advetiment_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_of_publish` datetime DEFAULT NULL,
  `adv_images` varchar(100) NOT NULL,
  `adv_content` varchar(100) NOT NULL,
  `ad_position_id` int(11) NOT NULL,
  `user_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `editors_advetiment_f_ad_position_id_bd489d65_fk_editors_a` (`ad_position_id`),
  KEY `editors_advetiment_field_user_id_id_0bb9e860_fk_auth_user_id` (`user_id_id`),
  CONSTRAINT `editors_advetiment_field_user_id_id_0bb9e860_fk_auth_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `editors_advetiment_f_ad_position_id_bd489d65_fk_editors_a` FOREIGN KEY (`ad_position_id`) REFERENCES `editors_adv_position` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `editors_advetiment_field` */

/*Table structure for table `editors_news_district` */

DROP TABLE IF EXISTS `editors_news_district`;

CREATE TABLE `editors_news_district` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_district` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `editors_news_district` */

insert  into `editors_news_district`(`id`,`news_district`) values (1,'Thiruvananthapuram'),(2,'Kollam'),(3,'Alappuzha'),(4,'Pathanamthitta'),(5,'Kottayam'),(6,'Idukki'),(7,'Ernakulam'),(8,'Thrissur'),(9,'Palakkad'),(10,'Malappuram'),(11,'Kozhikkode'),(12,'Wayanad'),(13,'Kannur'),(14,'Kasaragod'),(15,NULL);

/*Table structure for table `editors_news_field` */

DROP TABLE IF EXISTS `editors_news_field`;

CREATE TABLE `editors_news_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `published_date` datetime DEFAULT NULL,
  `news_title` varchar(10000) CHARACTER SET utf8 NOT NULL,
  `news_content` varchar(10000) CHARACTER SET utf8 NOT NULL,
  `news_image` varchar(100) CHARACTER SET utf8 NOT NULL,
  `main_news` int(11) NOT NULL,
  `breaking_news` int(11) NOT NULL,
  `editor_id_id` int(11) NOT NULL,
  `news_district_id` int(11) NOT NULL,
  `news_nation_id` int(11) NOT NULL,
  `news_place_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `editors_news_field_editor_id_id_81e04f68_fk_auth_user_id` (`editor_id_id`),
  KEY `editors_news_field_news_district_id_7771adfe_fk_editors_n` (`news_district_id`),
  KEY `editors_news_field_news_nation_id_1b13f2c0_fk_editors_n` (`news_nation_id`),
  KEY `editors_news_field_news_place_id_209c0cc8_fk_editors_n` (`news_place_id`),
  CONSTRAINT `editors_news_field_editor_id_id_81e04f68_fk_auth_user_id` FOREIGN KEY (`editor_id_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `editors_news_field_news_district_id_7771adfe_fk_editors_n` FOREIGN KEY (`news_district_id`) REFERENCES `editors_news_district` (`id`),
  CONSTRAINT `editors_news_field_news_nation_id_1b13f2c0_fk_editors_n` FOREIGN KEY (`news_nation_id`) REFERENCES `editors_news_nation` (`id`),
  CONSTRAINT `editors_news_field_news_place_id_209c0cc8_fk_editors_n` FOREIGN KEY (`news_place_id`) REFERENCES `editors_news_place` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

/*Data for the table `editors_news_field` */

insert  into `editors_news_field`(`id`,`published_date`,`news_title`,`news_content`,`news_image`,`main_news`,`breaking_news`,`editor_id_id`,`news_district_id`,`news_nation_id`,`news_place_id`) values (1,'2020-08-20 00:00:00','പെട്ടിമുടി ദുരന്തം:  മൂന്ന്  ലക്ഷം വീതം ധനസഹായം പ്രഖ്യാപിച്ച്  തമിഴ് നാട്  സർക്കാർ','കി രാജമല പെട്ടിമുടിയിലെ ദുരന്തബാധിതർക്ക്  ധനസഹായവുമായി തമിഴ് നാട്  സർക്കാർ. ഉരുൾപൊട്ടലിൽ ജീവൻ നഷ് ടപ്പെട്ടവരുടെ കുടുംബങ്ങൾക്ക്  മൂന്ന്  ലക്ഷം രൂപ വീതം നൽകുമെന്ന്  തമിഴ് നാട്  മുഖ്യമന്ത്രി എടപ്പാടി പളനിസ്വാമി പ്രഖ്യാപിച്ചു. ഗുരുതരമായി പരിക്കേറ്റവർക്ക്  ഒരു ലക്ഷം രൂപയും ധനസഹായമായി പ്രഖ്യാപിച്ചിട്ടുണ്ട് .\r\n\r\nആഗസ് റ്റ്  ഏഴിനുണ്ടായ ഉരുൾപൊട്ടലിൽ ജീവൻ നഷ് ടപ്പെട്ട 62 പേരുടെ മൃതദേഹങ്ങൾ ഇതിനകം കണ്ടെടുത്തിട്ടുണ്ട് . മരിച്ചവരെല്ലാവരും രാജമലയിലെ തേയില പ്ലാന്റേഷനിൽ   ജോലി ചെയ്യുന്നവരായിരുന്നു. തലമുറകൾക്ക്   മുമ്പ്  തമിഴ് നാട്ടിൽ നിന്ന്  കുടിയേറി വന്നവരുടെ കുടുംബങ്ങളാണിവർ  .\r\n\r\nമരിച്ചവരുടെ കുടുംബാംങ്ങൾക്ക്  കേരള മുഖ്യമന്ത്രി പിണറായി വിജയൻ അഞ്ച്  ലക്ഷം രൂപ വീതവും പ്രധാനമന്ത്രി നരേന്ദ്ര മോദി രണ്ട്  ലക്ഷം രൂപ വീതവും ധനസഹായം പ്രഖ്യാപിച്ചിട്ടുണ്ട് .','malayalam.samayam.com.jpg',2,1,1,1,1,8),(2,'2020-08-20 00:00:00','പെട്ടിമുടി ദുരന്തം:  മൂന്ന്  ലക്ഷം വീതം ധനസഹായം പ്രഖ്യാപിച്ച്  തമിഴ് നാട്  സർക്കാർ','ി രാജമല പെട്ടിമുടിയിലെ ദുരന്തബാധിതർക്ക്  ധനസഹായവുമായി തമിഴ് നാട്  സർക്കാർ. ഉരുൾപൊട്ടലിൽ ജീവൻ നഷ് ടപ്പെട്ടവരുടെ കുടുംബങ്ങൾക്ക്  മൂന്ന്  ലക്ഷം രൂപ വീതം നൽകുമെന്ന്  തമിഴ് നാട്  മുഖ്യമന്ത്രി എടപ്പാടി പളനിസ്വാമി പ്രഖ്യാപിച്ചു. ഗുരുതരമായി പരിക്കേറ്റവർക്ക്  ഒരു ലക്ഷം രൂപയും ധനസഹായമായി പ്രഖ്യാപിച്ചിട്ടുണ്ട് .\r\n\r\nആഗസ് റ്റ്  ഏഴിനുണ്ടായ ഉരുൾപൊട്ടലിൽ ജീവൻ നഷ് ടപ്പെട്ട 62 പേരുടെ മൃതദേഹങ്ങൾ ഇതിനകം കണ്ടെടുത്തിട്ടുണ്ട് . മരിച്ചവരെല്ലാവരും രാജമലയിലെ തേയില പ്ലാന്റേഷനിൽ   ജോലി ചെയ്യുന്നവരായിരുന്നു. തലമുറകൾക്ക്   മുമ്പ്  തമിഴ് നാട്ടിൽ നിന്ന്  കുടിയേറി വന്നവരുടെ കുടുംബങ്ങളാണിവർ  .\r\n\r\nമരിച്ചവരുടെ കുടുംബാംങ്ങൾക്ക്  കേരള മുഖ്യമന്ത്രി പിണറായി വിജയൻ അഞ്ച്  ലക്ഷം രൂപ വീതവും പ്രധാനമന്ത്രി നരേന്ദ്ര മോദി രണ്ട്  ലക്ഷം രൂപ വീതവും ധനസഹായം പ്രഖ്യാപിച്ചിട്ടുണ്ട് .','malayalam.samayam.com.jpg',1,1,1,2,1,8),(3,'2020-08-20 00:00:00','പെട്ടിമുടി ദുരന്തം:  മൂന്ന്  ലക്ഷം വീതം ധനസഹായം പ്രഖ്യാപിച്ച്  തമിഴ് നാട്  സർക്കാർ','ി രാജമല പെട്ടിമുടിയിലെ ദുരന്തബാധിതർക്ക്  ധനസഹായവുമായി തമിഴ് നാട്  സർക്കാർ. ഉരുൾപൊട്ടലിൽ ജീവൻ നഷ് ടപ്പെട്ടവരുടെ കുടുംബങ്ങൾക്ക്  മൂന്ന്  ലക്ഷം രൂപ വീതം നൽകുമെന്ന്  തമിഴ് നാട്  മുഖ്യമന്ത്രി എടപ്പാടി പളനിസ്വാമി പ്രഖ്യാപിച്ചു. ഗുരുതരമായി പരിക്കേറ്റവർക്ക്  ഒരു ലക്ഷം രൂപയും ധനസഹായമായി പ്രഖ്യാപിച്ചിട്ടുണ്ട് .\r\n\r\nആഗസ് റ്റ്  ഏഴിനുണ്ടായ ഉരുൾപൊട്ടലിൽ ജീവൻ നഷ് ടപ്പെട്ട 62 പേരുടെ മൃതദേഹങ്ങൾ ഇതിനകം കണ്ടെടുത്തിട്ടുണ്ട് . മരിച്ചവരെല്ലാവരും രാജമലയിലെ തേയില പ്ലാന്റേഷനിൽ   ജോലി ചെയ്യുന്നവരായിരുന്നു. തലമുറകൾക്ക്   മുമ്പ്  തമിഴ് നാട്ടിൽ നിന്ന്  കുടിയേറി വന്നവരുടെ കുടുംബങ്ങളാണിവർ  .\r\n\r\nമരിച്ചവരുടെ കുടുംബാംങ്ങൾക്ക്  കേരള മുഖ്യമന്ത്രി പിണറായി വിജയൻ അഞ്ച്  ലക്ഷം രൂപ വീതവും പ്രധാനമന്ത്രി നരേന്ദ്ര മോദി രണ്ട്  ലക്ഷം രൂപ വീതവും ധനസഹായം പ്രഖ്യാപിച്ചിട്ടുണ്ട് .','malayalam.samayam.com.jpg',1,1,1,3,1,8),(4,'2020-08-20 00:00:00','പെട്ടിമുടി ദുരന്തം:  മൂന്ന്  ലക്ഷം വീതം ധനസഹായം പ്രഖ്യാപിച്ച്  തമിഴ് നാട്  സർക്കാർ','ി രാജമല പെട്ടിമുടിയിലെ ദുരന്തബാധിതർക്ക്  ധനസഹായവുമായി തമിഴ് നാട്  സർക്കാർ. ഉരുൾപൊട്ടലിൽ ജീവൻ നഷ് ടപ്പെട്ടവരുടെ കുടുംബങ്ങൾക്ക്  മൂന്ന്  ലക്ഷം രൂപ വീതം നൽകുമെന്ന്  തമിഴ് നാട്  മുഖ്യമന്ത്രി എടപ്പാടി പളനിസ്വാമി പ്രഖ്യാപിച്ചു. ഗുരുതരമായി പരിക്കേറ്റവർക്ക്  ഒരു ലക്ഷം രൂപയും ധനസഹായമായി പ്രഖ്യാപിച്ചിട്ടുണ്ട് .\r\n\r\nആഗസ് റ്റ്  ഏഴിനുണ്ടായ ഉരുൾപൊട്ടലിൽ ജീവൻ നഷ് ടപ്പെട്ട 62 പേരുടെ മൃതദേഹങ്ങൾ ഇതിനകം കണ്ടെടുത്തിട്ടുണ്ട് . മരിച്ചവരെല്ലാവരും രാജമലയിലെ തേയില പ്ലാന്റേഷനിൽ   ജോലി ചെയ്യുന്നവരായിരുന്നു. തലമുറകൾക്ക്   മുമ്പ്  തമിഴ് നാട്ടിൽ നിന്ന്  കുടിയേറി വന്നവരുടെ കുടുംബങ്ങളാണിവർ  .\r\n\r\nമരിച്ചവരുടെ കുടുംബാംങ്ങൾക്ക്  കേരള മുഖ്യമന്ത്രി പിണറായി വിജയൻ അഞ്ച്  ലക്ഷം രൂപ വീതവും പ്രധാനമന്ത്രി നരേന്ദ്ര മോദി രണ്ട്  ലക്ഷം രൂപ വീതവും ധനസഹായം പ്രഖ്യാപിച്ചിട്ടുണ്ട് .','malayalam.samayam.com.jpg',1,1,1,4,1,8),(5,'2020-08-20 00:00:00','പെട്ടിമുടി ദുരന്തം:  മൂന്ന്  ലക്ഷം വീതം ധനസഹായം പ്രഖ്യാപിച്ച്  തമിഴ് നാട്  സർക്കാർ','ി രാജമല പെട്ടിമുടിയിലെ ദുരന്തബാധിതർക്ക്  ധനസഹായവുമായി തമിഴ് നാട്  സർക്കാർ. ഉരുൾപൊട്ടലിൽ ജീവൻ നഷ് ടപ്പെട്ടവരുടെ കുടുംബങ്ങൾക്ക്  മൂന്ന്  ലക്ഷം രൂപ വീതം നൽകുമെന്ന്  തമിഴ് നാട്  മുഖ്യമന്ത്രി എടപ്പാടി പളനിസ്വാമി പ്രഖ്യാപിച്ചു. ഗുരുതരമായി പരിക്കേറ്റവർക്ക്  ഒരു ലക്ഷം രൂപയും ധനസഹായമായി പ്രഖ്യാപിച്ചിട്ടുണ്ട് .\r\n\r\nആഗസ് റ്റ്  ഏഴിനുണ്ടായ ഉരുൾപൊട്ടലിൽ ജീവൻ നഷ് ടപ്പെട്ട 62 പേരുടെ മൃതദേഹങ്ങൾ ഇതിനകം കണ്ടെടുത്തിട്ടുണ്ട് . മരിച്ചവരെല്ലാവരും രാജമലയിലെ തേയില പ്ലാന്റേഷനിൽ   ജോലി ചെയ്യുന്നവരായിരുന്നു. തലമുറകൾക്ക്   മുമ്പ്  തമിഴ് നാട്ടിൽ നിന്ന്  കുടിയേറി വന്നവരുടെ കുടുംബങ്ങളാണിവർ  .\r\n\r\nമരിച്ചവരുടെ കുടുംബാംങ്ങൾക്ക്  കേരള മുഖ്യമന്ത്രി പിണറായി വിജയൻ അഞ്ച്  ലക്ഷം രൂപ വീതവും പ്രധാനമന്ത്രി നരേന്ദ്ര മോദി രണ്ട്  ലക്ഷം രൂപ വീതവും ധനസഹായം പ്രഖ്യാപിച്ചിട്ടുണ്ട് .','malayalam.samayam.com.jpg',1,1,1,5,1,8),(6,'2020-08-20 00:00:00','പെട്ടിമുടി ദുരന്തം:  മൂന്ന്  ലക്ഷം വീതം ധനസഹായം പ്രഖ്യാപിച്ച്  തമിഴ് നാട്  സർക്കാർ','ി രാജമല പെട്ടിമുടിയിലെ ദുരന്തബാധിതർക്ക്  ധനസഹായവുമായി തമിഴ് നാട്  സർക്കാർ. ഉരുൾപൊട്ടലിൽ ജീവൻ നഷ് ടപ്പെട്ടവരുടെ കുടുംബങ്ങൾക്ക്  മൂന്ന്  ലക്ഷം രൂപ വീതം നൽകുമെന്ന്  തമിഴ് നാട്  മുഖ്യമന്ത്രി എടപ്പാടി പളനിസ്വാമി പ്രഖ്യാപിച്ചു. ഗുരുതരമായി പരിക്കേറ്റവർക്ക്  ഒരു ലക്ഷം രൂപയും ധനസഹായമായി പ്രഖ്യാപിച്ചിട്ടുണ്ട് .\r\n\r\nആഗസ് റ്റ്  ഏഴിനുണ്ടായ ഉരുൾപൊട്ടലിൽ ജീവൻ നഷ് ടപ്പെട്ട 62 പേരുടെ മൃതദേഹങ്ങൾ ഇതിനകം കണ്ടെടുത്തിട്ടുണ്ട് . മരിച്ചവരെല്ലാവരും രാജമലയിലെ തേയില പ്ലാന്റേഷനിൽ   ജോലി ചെയ്യുന്നവരായിരുന്നു. തലമുറകൾക്ക്   മുമ്പ്  തമിഴ് നാട്ടിൽ നിന്ന്  കുടിയേറി വന്നവരുടെ കുടുംബങ്ങളാണിവർ  .\r\n\r\nമരിച്ചവരുടെ കുടുംബാംങ്ങൾക്ക്  കേരള മുഖ്യമന്ത്രി പിണറായി വിജയൻ അഞ്ച്  ലക്ഷം രൂപ വീതവും പ്രധാനമന്ത്രി നരേന്ദ്ര മോദി രണ്ട്  ലക്ഷം രൂപ വീതവും ധനസഹായം പ്രഖ്യാപിച്ചിട്ടുണ്ട് .','malayalam.samayam.com.jpg',1,1,1,6,1,8),(7,'2020-08-20 00:00:00','പെട്ടിമുടി ദുരന്തം:  മൂന്ന്  ലക്ഷം വീതം ധനസഹായം പ്രഖ്യാപിച്ച്  തമിഴ് നാട്  സർക്കാർ','ി രാജമല പെട്ടിമുടിയിലെ ദുരന്തബാധിതർക്ക്  ധനസഹായവുമായി തമിഴ് നാട്  സർക്കാർ. ഉരുൾപൊട്ടലിൽ ജീവൻ നഷ് ടപ്പെട്ടവരുടെ കുടുംബങ്ങൾക്ക്  മൂന്ന്  ലക്ഷം രൂപ വീതം നൽകുമെന്ന്  തമിഴ് നാട്  മുഖ്യമന്ത്രി എടപ്പാടി പളനിസ്വാമി പ്രഖ്യാപിച്ചു. ഗുരുതരമായി പരിക്കേറ്റവർക്ക്  ഒരു ലക്ഷം രൂപയും ധനസഹായമായി പ്രഖ്യാപിച്ചിട്ടുണ്ട് .\r\n\r\nആഗസ് റ്റ്  ഏഴിനുണ്ടായ ഉരുൾപൊട്ടലിൽ ജീവൻ നഷ് ടപ്പെട്ട 62 പേരുടെ മൃതദേഹങ്ങൾ ഇതിനകം കണ്ടെടുത്തിട്ടുണ്ട് . മരിച്ചവരെല്ലാവരും രാജമലയിലെ തേയില പ്ലാന്റേഷനിൽ   ജോലി ചെയ്യുന്നവരായിരുന്നു. തലമുറകൾക്ക്   മുമ്പ്  തമിഴ് നാട്ടിൽ നിന്ന്  കുടിയേറി വന്നവരുടെ കുടുംബങ്ങളാണിവർ  .\r\n\r\nമരിച്ചവരുടെ കുടുംബാംങ്ങൾക്ക്  കേരള മുഖ്യമന്ത്രി പിണറായി വിജയൻ അഞ്ച്  ലക്ഷം രൂപ വീതവും പ്രധാനമന്ത്രി നരേന്ദ്ര മോദി രണ്ട്  ലക്ഷം രൂപ വീതവും ധനസഹായം പ്രഖ്യാപിച്ചിട്ടുണ്ട് .','malayalam.samayam.com.jpg',1,1,1,7,1,8),(8,'2020-08-20 00:00:00','പെട്ടിമുടി ദുരന്തം:  മൂന്ന്  ലക്ഷം വീതം ധനസഹായം പ്രഖ്യാപിച്ച്  തമിഴ് നാട്  സർക്കാർ','ി രാജമല പെട്ടിമുടിയിലെ ദുരന്തബാധിതർക്ക്  ധനസഹായവുമായി തമിഴ് നാട്  സർക്കാർ. ഉരുൾപൊട്ടലിൽ ജീവൻ നഷ് ടപ്പെട്ടവരുടെ കുടുംബങ്ങൾക്ക്  മൂന്ന്  ലക്ഷം രൂപ വീതം നൽകുമെന്ന്  തമിഴ് നാട്  മുഖ്യമന്ത്രി എടപ്പാടി പളനിസ്വാമി പ്രഖ്യാപിച്ചു. ഗുരുതരമായി പരിക്കേറ്റവർക്ക്  ഒരു ലക്ഷം രൂപയും ധനസഹായമായി പ്രഖ്യാപിച്ചിട്ടുണ്ട് .\r\n\r\nആഗസ് റ്റ്  ഏഴിനുണ്ടായ ഉരുൾപൊട്ടലിൽ ജീവൻ നഷ് ടപ്പെട്ട 62 പേരുടെ മൃതദേഹങ്ങൾ ഇതിനകം കണ്ടെടുത്തിട്ടുണ്ട് . മരിച്ചവരെല്ലാവരും രാജമലയിലെ തേയില പ്ലാന്റേഷനിൽ   ജോലി ചെയ്യുന്നവരായിരുന്നു. തലമുറകൾക്ക്   മുമ്പ്  തമിഴ് നാട്ടിൽ നിന്ന്  കുടിയേറി വന്നവരുടെ കുടുംബങ്ങളാണിവർ  .\r\n\r\nമരിച്ചവരുടെ കുടുംബാംങ്ങൾക്ക്  കേരള മുഖ്യമന്ത്രി പിണറായി വിജയൻ അഞ്ച്  ലക്ഷം രൂപ വീതവും പ്രധാനമന്ത്രി നരേന്ദ്ര മോദി രണ്ട്  ലക്ഷം രൂപ വീതവും ധനസഹായം പ്രഖ്യാപിച്ചിട്ടുണ്ട് .','malayalam.samayam.com.jpg',1,1,1,7,1,8),(9,'2020-08-20 00:00:00','പെട്ടിമുടി ദുരന്തം:  മൂന്ന്  ലക്ഷം വീതം ധനസഹായം പ്രഖ്യാപിച്ച്  തമിഴ് നാട്  സർക്കാർ','ി രാജമല പെട്ടിമുടിയിലെ ദുരന്തബാധിതർക്ക്  ധനസഹായവുമായി തമിഴ് നാട്  സർക്കാർ. ഉരുൾപൊട്ടലിൽ ജീവൻ നഷ് ടപ്പെട്ടവരുടെ കുടുംബങ്ങൾക്ക്  മൂന്ന്  ലക്ഷം രൂപ വീതം നൽകുമെന്ന്  തമിഴ് നാട്  മുഖ്യമന്ത്രി എടപ്പാടി പളനിസ്വാമി പ്രഖ്യാപിച്ചു. ഗുരുതരമായി പരിക്കേറ്റവർക്ക്  ഒരു ലക്ഷം രൂപയും ധനസഹായമായി പ്രഖ്യാപിച്ചിട്ടുണ്ട് .\r\n\r\nആഗസ് റ്റ്  ഏഴിനുണ്ടായ ഉരുൾപൊട്ടലിൽ ജീവൻ നഷ് ടപ്പെട്ട 62 പേരുടെ മൃതദേഹങ്ങൾ ഇതിനകം കണ്ടെടുത്തിട്ടുണ്ട് . മരിച്ചവരെല്ലാവരും രാജമലയിലെ തേയില പ്ലാന്റേഷനിൽ   ജോലി ചെയ്യുന്നവരായിരുന്നു. തലമുറകൾക്ക്   മുമ്പ്  തമിഴ് നാട്ടിൽ നിന്ന്  കുടിയേറി വന്നവരുടെ കുടുംബങ്ങളാണിവർ  .\r\n\r\nമരിച്ചവരുടെ കുടുംബാംങ്ങൾക്ക്  കേരള മുഖ്യമന്ത്രി പിണറായി വിജയൻ അഞ്ച്  ലക്ഷം രൂപ വീതവും പ്രധാനമന്ത്രി നരേന്ദ്ര മോദി രണ്ട്  ലക്ഷം രൂപ വീതവും ധനസഹായം പ്രഖ്യാപിച്ചിട്ടുണ്ട് .','malayalam.samayam.com.jpg',1,1,1,8,1,8),(10,'2020-08-20 00:00:00','പെട്ടിമുടി ദുരന്തം:  മൂന്ന്  ലക്ഷം വീതം ധനസഹായം പ്രഖ്യാപിച്ച്  തമിഴ് നാട്  സർക്കാർ','ി രാജമല പെട്ടിമുടിയിലെ ദുരന്തബാധിതർക്ക്  ധനസഹായവുമായി തമിഴ് നാട്  സർക്കാർ. ഉരുൾപൊട്ടലിൽ ജീവൻ നഷ് ടപ്പെട്ടവരുടെ കുടുംബങ്ങൾക്ക്  മൂന്ന്  ലക്ഷം രൂപ വീതം നൽകുമെന്ന്  തമിഴ് നാട്  മുഖ്യമന്ത്രി എടപ്പാടി പളനിസ്വാമി പ്രഖ്യാപിച്ചു. ഗുരുതരമായി പരിക്കേറ്റവർക്ക്  ഒരു ലക്ഷം രൂപയും ധനസഹായമായി പ്രഖ്യാപിച്ചിട്ടുണ്ട് .\r\n\r\nആഗസ് റ്റ്  ഏഴിനുണ്ടായ ഉരുൾപൊട്ടലിൽ ജീവൻ നഷ് ടപ്പെട്ട 62 പേരുടെ മൃതദേഹങ്ങൾ ഇതിനകം കണ്ടെടുത്തിട്ടുണ്ട് . മരിച്ചവരെല്ലാവരും രാജമലയിലെ തേയില പ്ലാന്റേഷനിൽ   ജോലി ചെയ്യുന്നവരായിരുന്നു. തലമുറകൾക്ക്   മുമ്പ്  തമിഴ് നാട്ടിൽ നിന്ന്  കുടിയേറി വന്നവരുടെ കുടുംബങ്ങളാണിവർ  .\r\n\r\nമരിച്ചവരുടെ കുടുംബാംങ്ങൾക്ക്  കേരള മുഖ്യമന്ത്രി പിണറായി വിജയൻ അഞ്ച്  ലക്ഷം രൂപ വീതവും പ്രധാനമന്ത്രി നരേന്ദ്ര മോദി രണ്ട്  ലക്ഷം രൂപ വീതവും ധനസഹായം പ്രഖ്യാപിച്ചിട്ടുണ്ട് .','malayalam.samayam.com.jpg',1,1,1,9,1,8),(11,'2020-08-20 00:00:00','പെട്ടിമുടി ദുരന്തം:  മൂന്ന്  ലക്ഷം വീതം ധനസഹായം പ്രഖ്യാപിച്ച്  തമിഴ് നാട്  സർക്കാർ','ി രാജമല പെട്ടിമുടിയിലെ ദുരന്തബാധിതർക്ക്  ധനസഹായവുമായി തമിഴ് നാട്  സർക്കാർ. ഉരുൾപൊട്ടലിൽ ജീവൻ നഷ് ടപ്പെട്ടവരുടെ കുടുംബങ്ങൾക്ക്  മൂന്ന്  ലക്ഷം രൂപ വീതം നൽകുമെന്ന്  തമിഴ് നാട്  മുഖ്യമന്ത്രി എടപ്പാടി പളനിസ്വാമി പ്രഖ്യാപിച്ചു. ഗുരുതരമായി പരിക്കേറ്റവർക്ക്  ഒരു ലക്ഷം രൂപയും ധനസഹായമായി പ്രഖ്യാപിച്ചിട്ടുണ്ട് .\r\n\r\nആഗസ് റ്റ്  ഏഴിനുണ്ടായ ഉരുൾപൊട്ടലിൽ ജീവൻ നഷ് ടപ്പെട്ട 62 പേരുടെ മൃതദേഹങ്ങൾ ഇതിനകം കണ്ടെടുത്തിട്ടുണ്ട് . മരിച്ചവരെല്ലാവരും രാജമലയിലെ തേയില പ്ലാന്റേഷനിൽ   ജോലി ചെയ്യുന്നവരായിരുന്നു. തലമുറകൾക്ക്   മുമ്പ്  തമിഴ് നാട്ടിൽ നിന്ന്  കുടിയേറി വന്നവരുടെ കുടുംബങ്ങളാണിവർ  .\r\n\r\nമരിച്ചവരുടെ കുടുംബാംങ്ങൾക്ക്  കേരള മുഖ്യമന്ത്രി പിണറായി വിജയൻ അഞ്ച്  ലക്ഷം രൂപ വീതവും പ്രധാനമന്ത്രി നരേന്ദ്ര മോദി രണ്ട്  ലക്ഷം രൂപ വീതവും ധനസഹായം പ്രഖ്യാപിച്ചിട്ടുണ്ട് .','malayalam.samayam.com.jpg',1,1,1,10,1,8),(12,'2020-08-20 00:00:00','1പെട്ടിമുടി ദുരന്തം:  മൂന്ന്  ലക്ഷം വീതം ധനസഹായം പ്രഖ്യാപിച്ച്  തമിഴ് നാട്  സർക്കാർ','ി രാജമല പെട്ടിമുടിയിലെ ദുരന്തബാധിതർക്ക്  ധനസഹായവുമായി തമിഴ് നാട്  സർക്കാർ. ഉരുൾപൊട്ടലിൽ ജീവൻ നഷ് ടപ്പെട്ടവരുടെ കുടുംബങ്ങൾക്ക്  മൂന്ന്  ലക്ഷം രൂപ വീതം നൽകുമെന്ന്  തമിഴ് നാട്  മുഖ്യമന്ത്രി എടപ്പാടി പളനിസ്വാമി പ്രഖ്യാപിച്ചു. ഗുരുതരമായി പരിക്കേറ്റവർക്ക്  ഒരു ലക്ഷം രൂപയും ധനസഹായമായി പ്രഖ്യാപിച്ചിട്ടുണ്ട് .\r\n\r\nആഗസ് റ്റ്  ഏഴിനുണ്ടായ ഉരുൾപൊട്ടലിൽ ജീവൻ നഷ് ടപ്പെട്ട 62 പേരുടെ മൃതദേഹങ്ങൾ ഇതിനകം കണ്ടെടുത്തിട്ടുണ്ട് . മരിച്ചവരെല്ലാവരും രാജമലയിലെ തേയില പ്ലാന്റേഷനിൽ   ജോലി ചെയ്യുന്നവരായിരുന്നു. തലമുറകൾക്ക്   മുമ്പ്  തമിഴ് നാട്ടിൽ നിന്ന്  കുടിയേറി വന്നവരുടെ കുടുംബങ്ങളാണിവർ  .\r\n\r\nമരിച്ചവരുടെ കുടുംബാംങ്ങൾക്ക്  കേരള മുഖ്യമന്ത്രി പിണറായി വിജയൻ അഞ്ച്  ലക്ഷം രൂപ വീതവും പ്രധാനമന്ത്രി നരേന്ദ്ര മോദി രണ്ട്  ലക്ഷം രൂപ വീതവും ധനസഹായം പ്രഖ്യാപിച്ചിട്ടുണ്ട് .','malayalam.samayam.com.jpg',1,1,1,11,1,1),(13,'2020-08-20 00:00:00','പെട്ടിമുടി ദുരന്തം:  മൂന്ന്  ലക്ഷം വീതം ധനസഹായം പ്രഖ്യാപിച്ച്  തമിഴ് നാട്  സർക്കാർ','ി രാജമല പെട്ടിമുടിയിലെ ദുരന്തബാധിതർക്ക്  ധനസഹായവുമായി തമിഴ് നാട്  സർക്കാർ. ഉരുൾപൊട്ടലിൽ ജീവൻ നഷ് ടപ്പെട്ടവരുടെ കുടുംബങ്ങൾക്ക്  മൂന്ന്  ലക്ഷം രൂപ വീതം നൽകുമെന്ന്  തമിഴ് നാട്  മുഖ്യമന്ത്രി എടപ്പാടി പളനിസ്വാമി പ്രഖ്യാപിച്ചു. ഗുരുതരമായി പരിക്കേറ്റവർക്ക്  ഒരു ലക്ഷം രൂപയും ധനസഹായമായി പ്രഖ്യാപിച്ചിട്ടുണ്ട് .\r\n\r\nആഗസ് റ്റ്  ഏഴിനുണ്ടായ ഉരുൾപൊട്ടലിൽ ജീവൻ നഷ് ടപ്പെട്ട 62 പേരുടെ മൃതദേഹങ്ങൾ ഇതിനകം കണ്ടെടുത്തിട്ടുണ്ട് . മരിച്ചവരെല്ലാവരും രാജമലയിലെ തേയില പ്ലാന്റേഷനിൽ   ജോലി ചെയ്യുന്നവരായിരുന്നു. തലമുറകൾക്ക്   മുമ്പ്  തമിഴ് നാട്ടിൽ നിന്ന്  കുടിയേറി വന്നവരുടെ കുടുംബങ്ങളാണിവർ  .\r\n\r\nമരിച്ചവരുടെ കുടുംബാംങ്ങൾക്ക്  കേരള മുഖ്യമന്ത്രി പിണറായി വിജയൻ അഞ്ച്  ലക്ഷം രൂപ വീതവും പ്രധാനമന്ത്രി നരേന്ദ്ര മോദി രണ്ട്  ലക്ഷം രൂപ വീതവും ധനസഹായം പ്രഖ്യാപിച്ചിട്ടുണ്ട് .','malayalam.samayam.com.jpg',1,1,1,11,1,2),(14,'2020-08-20 00:00:00','പെട്ടിമുടി ദുരന്തം:  മൂന്ന്  ലക്ഷം വീതം ധനസഹായം പ്രഖ്യാപിച്ച്  തമിഴ് നാട്  സർക്കാർ','ി രാജമല പെട്ടിമുടിയിലെ ദുരന്തബാധിതർക്ക്  ധനസഹായവുമായി തമിഴ് നാട്  സർക്കാർ. ഉരുൾപൊട്ടലിൽ ജീവൻ നഷ് ടപ്പെട്ടവരുടെ കുടുംബങ്ങൾക്ക്  മൂന്ന്  ലക്ഷം രൂപ വീതം നൽകുമെന്ന്  തമിഴ് നാട്  മുഖ്യമന്ത്രി എടപ്പാടി പളനിസ്വാമി പ്രഖ്യാപിച്ചു. ഗുരുതരമായി പരിക്കേറ്റവർക്ക്  ഒരു ലക്ഷം രൂപയും ധനസഹായമായി പ്രഖ്യാപിച്ചിട്ടുണ്ട് .\r\n\r\nആഗസ് റ്റ്  ഏഴിനുണ്ടായ ഉരുൾപൊട്ടലിൽ ജീവൻ നഷ് ടപ്പെട്ട 62 പേരുടെ മൃതദേഹങ്ങൾ ഇതിനകം കണ്ടെടുത്തിട്ടുണ്ട് . മരിച്ചവരെല്ലാവരും രാജമലയിലെ തേയില പ്ലാന്റേഷനിൽ   ജോലി ചെയ്യുന്നവരായിരുന്നു. തലമുറകൾക്ക്   മുമ്പ്  തമിഴ് നാട്ടിൽ നിന്ന്  കുടിയേറി വന്നവരുടെ കുടുംബങ്ങളാണിവർ  .\r\n\r\nമരിച്ചവരുടെ കുടുംബാംങ്ങൾക്ക്  കേരള മുഖ്യമന്ത്രി പിണറായി വിജയൻ അഞ്ച്  ലക്ഷം രൂപ വീതവും പ്രധാനമന്ത്രി നരേന്ദ്ര മോദി രണ്ട്  ലക്ഷം രൂപ വീതവും ധനസഹായം പ്രഖ്യാപിച്ചിട്ടുണ്ട് .','malayalam.samayam.com.jpg',1,1,1,11,1,2),(15,'2020-08-20 00:00:00','പെട്ടിമുടി ദുരന്തം:  മൂന്ന്  ലക്ഷം വീതം ധനസഹായം പ്രഖ്യാപിച്ച്  തമിഴ് നാട്  സർക്കാർ','ി രാജമല പെട്ടിമുടിയിലെ ദുരന്തബാധിതർക്ക്  ധനസഹായവുമായി തമിഴ് നാട്  സർക്കാർ. ഉരുൾപൊട്ടലിൽ ജീവൻ നഷ് ടപ്പെട്ടവരുടെ കുടുംബങ്ങൾക്ക്  മൂന്ന്  ലക്ഷം രൂപ വീതം നൽകുമെന്ന്  തമിഴ് നാട്  മുഖ്യമന്ത്രി എടപ്പാടി പളനിസ്വാമി പ്രഖ്യാപിച്ചു. ഗുരുതരമായി പരിക്കേറ്റവർക്ക്  ഒരു ലക്ഷം രൂപയും ധനസഹായമായി പ്രഖ്യാപിച്ചിട്ടുണ്ട് .\r\n\r\nആഗസ് റ്റ്  ഏഴിനുണ്ടായ ഉരുൾപൊട്ടലിൽ ജീവൻ നഷ് ടപ്പെട്ട 62 പേരുടെ മൃതദേഹങ്ങൾ ഇതിനകം കണ്ടെടുത്തിട്ടുണ്ട് . മരിച്ചവരെല്ലാവരും രാജമലയിലെ തേയില പ്ലാന്റേഷനിൽ   ജോലി ചെയ്യുന്നവരായിരുന്നു. തലമുറകൾക്ക്   മുമ്പ്  തമിഴ് നാട്ടിൽ നിന്ന്  കുടിയേറി വന്നവരുടെ കുടുംബങ്ങളാണിവർ  .\r\n\r\nമരിച്ചവരുടെ കുടുംബാംങ്ങൾക്ക്  കേരള മുഖ്യമന്ത്രി പിണറായി വിജയൻ അഞ്ച്  ലക്ഷം രൂപ വീതവും പ്രധാനമന്ത്രി നരേന്ദ്ര മോദി രണ്ട്  ലക്ഷം രൂപ വീതവും ധനസഹായം പ്രഖ്യാപിച്ചിട്ടുണ്ട് .','malayalam.samayam.com.jpg',1,1,1,11,1,3),(16,'2020-08-20 00:00:00','പെട്ടിമുടി ദുരന്തം:  മൂന്ന്  ലക്ഷം വീതം ധനസഹായം പ്രഖ്യാപിച്ച്  തമിഴ് നാട്  സർക്കാർ','ി രാജമല പെട്ടിമുടിയിലെ ദുരന്തബാധിതർക്ക്  ധനസഹായവുമായി തമിഴ് നാട്  സർക്കാർ. ഉരുൾപൊട്ടലിൽ ജീവൻ നഷ് ടപ്പെട്ടവരുടെ കുടുംബങ്ങൾക്ക്  മൂന്ന്  ലക്ഷം രൂപ വീതം നൽകുമെന്ന്  തമിഴ് നാട്  മുഖ്യമന്ത്രി എടപ്പാടി പളനിസ്വാമി പ്രഖ്യാപിച്ചു. ഗുരുതരമായി പരിക്കേറ്റവർക്ക്  ഒരു ലക്ഷം രൂപയും ധനസഹായമായി പ്രഖ്യാപിച്ചിട്ടുണ്ട് .\r\n\r\nആഗസ് റ്റ്  ഏഴിനുണ്ടായ ഉരുൾപൊട്ടലിൽ ജീവൻ നഷ് ടപ്പെട്ട 62 പേരുടെ മൃതദേഹങ്ങൾ ഇതിനകം കണ്ടെടുത്തിട്ടുണ്ട് . മരിച്ചവരെല്ലാവരും രാജമലയിലെ തേയില പ്ലാന്റേഷനിൽ   ജോലി ചെയ്യുന്നവരായിരുന്നു. തലമുറകൾക്ക്   മുമ്പ്  തമിഴ് നാട്ടിൽ നിന്ന്  കുടിയേറി വന്നവരുടെ കുടുംബങ്ങളാണിവർ  .\r\n\r\nമരിച്ചവരുടെ കുടുംബാംങ്ങൾക്ക്  കേരള മുഖ്യമന്ത്രി പിണറായി വിജയൻ അഞ്ച്  ലക്ഷം രൂപ വീതവും പ്രധാനമന്ത്രി നരേന്ദ്ര മോദി രണ്ട്  ലക്ഷം രൂപ വീതവും ധനസഹായം പ്രഖ്യാപിച്ചിട്ടുണ്ട് .','malayalam.samayam.com.jpg',1,1,1,11,1,4),(17,'2020-08-20 00:00:00','പെട്ടിമുടി ദുരന്തം:  മൂന്ന്  ലക്ഷം വീതം ധനസഹായം പ്രഖ്യാപിച്ച്  തമിഴ് നാട്  സർക്കാർ','ി രാജമല പെട്ടിമുടിയിലെ ദുരന്തബാധിതർക്ക്  ധനസഹായവുമായി തമിഴ് നാട്  സർക്കാർ. ഉരുൾപൊട്ടലിൽ ജീവൻ നഷ് ടപ്പെട്ടവരുടെ കുടുംബങ്ങൾക്ക്  മൂന്ന്  ലക്ഷം രൂപ വീതം നൽകുമെന്ന്  തമിഴ് നാട്  മുഖ്യമന്ത്രി എടപ്പാടി പളനിസ്വാമി പ്രഖ്യാപിച്ചു. ഗുരുതരമായി പരിക്കേറ്റവർക്ക്  ഒരു ലക്ഷം രൂപയും ധനസഹായമായി പ്രഖ്യാപിച്ചിട്ടുണ്ട് .\r\n\r\nആഗസ് റ്റ്  ഏഴിനുണ്ടായ ഉരുൾപൊട്ടലിൽ ജീവൻ നഷ് ടപ്പെട്ട 62 പേരുടെ മൃതദേഹങ്ങൾ ഇതിനകം കണ്ടെടുത്തിട്ടുണ്ട് . മരിച്ചവരെല്ലാവരും രാജമലയിലെ തേയില പ്ലാന്റേഷനിൽ   ജോലി ചെയ്യുന്നവരായിരുന്നു. തലമുറകൾക്ക്   മുമ്പ്  തമിഴ് നാട്ടിൽ നിന്ന്  കുടിയേറി വന്നവരുടെ കുടുംബങ്ങളാണിവർ  .\r\n\r\nമരിച്ചവരുടെ കുടുംബാംങ്ങൾക്ക്  കേരള മുഖ്യമന്ത്രി പിണറായി വിജയൻ അഞ്ച്  ലക്ഷം രൂപ വീതവും പ്രധാനമന്ത്രി നരേന്ദ്ര മോദി രണ്ട്  ലക്ഷം രൂപ വീതവും ധനസഹായം പ്രഖ്യാപിച്ചിട്ടുണ്ട് .','malayalam.samayam.com.jpg',1,1,1,11,1,5),(18,'2020-08-20 00:00:00','പെട്ടിമുടി ദുരന്തം:  മൂന്ന്  ലക്ഷം വീതം ധനസഹായം പ്രഖ്യാപിച്ച്  തമിഴ് നാട്  സർക്കാർ','ി രാജമല പെട്ടിമുടിയിലെ ദുരന്തബാധിതർക്ക്  ധനസഹായവുമായി തമിഴ് നാട്  സർക്കാർ. ഉരുൾപൊട്ടലിൽ ജീവൻ നഷ് ടപ്പെട്ടവരുടെ കുടുംബങ്ങൾക്ക്  മൂന്ന്  ലക്ഷം രൂപ വീതം നൽകുമെന്ന്  തമിഴ് നാട്  മുഖ്യമന്ത്രി എടപ്പാടി പളനിസ്വാമി പ്രഖ്യാപിച്ചു. ഗുരുതരമായി പരിക്കേറ്റവർക്ക്  ഒരു ലക്ഷം രൂപയും ധനസഹായമായി പ്രഖ്യാപിച്ചിട്ടുണ്ട് .\r\n\r\nആഗസ് റ്റ്  ഏഴിനുണ്ടായ ഉരുൾപൊട്ടലിൽ ജീവൻ നഷ് ടപ്പെട്ട 62 പേരുടെ മൃതദേഹങ്ങൾ ഇതിനകം കണ്ടെടുത്തിട്ടുണ്ട് . മരിച്ചവരെല്ലാവരും രാജമലയിലെ തേയില പ്ലാന്റേഷനിൽ   ജോലി ചെയ്യുന്നവരായിരുന്നു. തലമുറകൾക്ക്   മുമ്പ്  തമിഴ് നാട്ടിൽ നിന്ന്  കുടിയേറി വന്നവരുടെ കുടുംബങ്ങളാണിവർ  .\r\n\r\nമരിച്ചവരുടെ കുടുംബാംങ്ങൾക്ക്  കേരള മുഖ്യമന്ത്രി പിണറായി വിജയൻ അഞ്ച്  ലക്ഷം രൂപ വീതവും പ്രധാനമന്ത്രി നരേന്ദ്ര മോദി രണ്ട്  ലക്ഷം രൂപ വീതവും ധനസഹായം പ്രഖ്യാപിച്ചിട്ടുണ്ട് .','malayalam.samayam.com.jpg',1,1,1,11,1,6),(19,'2020-08-20 00:00:00','പെട്ടിമുടി ദുരന്തം:  മൂന്ന്  ലക്ഷം വീതം ധനസഹായം പ്രഖ്യാപിച്ച്  തമിഴ് നാട്  സർക്കാർ','ി രാജമല പെട്ടിമുടിയിലെ ദുരന്തബാധിതർക്ക്  ധനസഹായവുമായി തമിഴ് നാട്  സർക്കാർ. ഉരുൾപൊട്ടലിൽ ജീവൻ നഷ് ടപ്പെട്ടവരുടെ കുടുംബങ്ങൾക്ക്  മൂന്ന്  ലക്ഷം രൂപ വീതം നൽകുമെന്ന്  തമിഴ് നാട്  മുഖ്യമന്ത്രി എടപ്പാടി പളനിസ്വാമി പ്രഖ്യാപിച്ചു. ഗുരുതരമായി പരിക്കേറ്റവർക്ക്  ഒരു ലക്ഷം രൂപയും ധനസഹായമായി പ്രഖ്യാപിച്ചിട്ടുണ്ട് .\r\n\r\nആഗസ് റ്റ്  ഏഴിനുണ്ടായ ഉരുൾപൊട്ടലിൽ ജീവൻ നഷ് ടപ്പെട്ട 62 പേരുടെ മൃതദേഹങ്ങൾ ഇതിനകം കണ്ടെടുത്തിട്ടുണ്ട് . മരിച്ചവരെല്ലാവരും രാജമലയിലെ തേയില പ്ലാന്റേഷനിൽ   ജോലി ചെയ്യുന്നവരായിരുന്നു. തലമുറകൾക്ക്   മുമ്പ്  തമിഴ് നാട്ടിൽ നിന്ന്  കുടിയേറി വന്നവരുടെ കുടുംബങ്ങളാണിവർ  .\r\n\r\nമരിച്ചവരുടെ കുടുംബാംങ്ങൾക്ക്  കേരള മുഖ്യമന്ത്രി പിണറായി വിജയൻ അഞ്ച്  ലക്ഷം രൂപ വീതവും പ്രധാനമന്ത്രി നരേന്ദ്ര മോദി രണ്ട്  ലക്ഷം രൂപ വീതവും ധനസഹായം പ്രഖ്യാപിച്ചിട്ടുണ്ട് .','malayalam.samayam.com.jpg',1,1,1,11,1,7),(20,'2020-08-20 00:00:00','പെട്ടിമുടി ദുരന്തം:  മൂന്ന്  ലക്ഷം വീതം ധനസഹായം പ്രഖ്യാപിച്ച്  തമിഴ് നാട്  സർക്കാർ','ി രാജമല പെട്ടിമുടിയിലെ ദുരന്തബാധിതർക്ക്  ധനസഹായവുമായി തമിഴ് നാട്  സർക്കാർ. ഉരുൾപൊട്ടലിൽ ജീവൻ നഷ് ടപ്പെട്ടവരുടെ കുടുംബങ്ങൾക്ക്  മൂന്ന്  ലക്ഷം രൂപ വീതം നൽകുമെന്ന്  തമിഴ് നാട്  മുഖ്യമന്ത്രി എടപ്പാടി പളനിസ്വാമി പ്രഖ്യാപിച്ചു. ഗുരുതരമായി പരിക്കേറ്റവർക്ക്  ഒരു ലക്ഷം രൂപയും ധനസഹായമായി പ്രഖ്യാപിച്ചിട്ടുണ്ട് .\r\n\r\nആഗസ് റ്റ്  ഏഴിനുണ്ടായ ഉരുൾപൊട്ടലിൽ ജീവൻ നഷ് ടപ്പെട്ട 62 പേരുടെ മൃതദേഹങ്ങൾ ഇതിനകം കണ്ടെടുത്തിട്ടുണ്ട് . മരിച്ചവരെല്ലാവരും രാജമലയിലെ തേയില പ്ലാന്റേഷനിൽ   ജോലി ചെയ്യുന്നവരായിരുന്നു. തലമുറകൾക്ക്   മുമ്പ്  തമിഴ് നാട്ടിൽ നിന്ന്  കുടിയേറി വന്നവരുടെ കുടുംബങ്ങളാണിവർ  .\r\n\r\nമരിച്ചവരുടെ കുടുംബാംങ്ങൾക്ക്  കേരള മുഖ്യമന്ത്രി പിണറായി വിജയൻ അഞ്ച്  ലക്ഷം രൂപ വീതവും പ്രധാനമന്ത്രി നരേന്ദ്ര മോദി രണ്ട്  ലക്ഷം രൂപ വീതവും ധനസഹായം പ്രഖ്യാപിച്ചിട്ടുണ്ട് .','malayalam.samayam.com.jpg',1,1,1,12,1,8),(21,'2020-08-20 00:00:00','പെട്ടിമുടി ദുരന്തം:  മൂന്ന്  ലക്ഷം വീതം ധനസഹായം പ്രഖ്യാപിച്ച്  തമിഴ് നാട്  സർക്കാർ','ി രാജമല പെട്ടിമുടിയിലെ ദുരന്തബാധിതർക്ക്  ധനസഹായവുമായി തമിഴ് നാട്  സർക്കാർ. ഉരുൾപൊട്ടലിൽ ജീവൻ നഷ് ടപ്പെട്ടവരുടെ കുടുംബങ്ങൾക്ക്  മൂന്ന്  ലക്ഷം രൂപ വീതം നൽകുമെന്ന്  തമിഴ് നാട്  മുഖ്യമന്ത്രി എടപ്പാടി പളനിസ്വാമി പ്രഖ്യാപിച്ചു. ഗുരുതരമായി പരിക്കേറ്റവർക്ക്  ഒരു ലക്ഷം രൂപയും ധനസഹായമായി പ്രഖ്യാപിച്ചിട്ടുണ്ട് .\r\n\r\nആഗസ് റ്റ്  ഏഴിനുണ്ടായ ഉരുൾപൊട്ടലിൽ ജീവൻ നഷ് ടപ്പെട്ട 62 പേരുടെ മൃതദേഹങ്ങൾ ഇതിനകം കണ്ടെടുത്തിട്ടുണ്ട് . മരിച്ചവരെല്ലാവരും രാജമലയിലെ തേയില പ്ലാന്റേഷനിൽ   ജോലി ചെയ്യുന്നവരായിരുന്നു. തലമുറകൾക്ക്   മുമ്പ്  തമിഴ് നാട്ടിൽ നിന്ന്  കുടിയേറി വന്നവരുടെ കുടുംബങ്ങളാണിവർ  .\r\n\r\nമരിച്ചവരുടെ കുടുംബാംങ്ങൾക്ക്  കേരള മുഖ്യമന്ത്രി പിണറായി വിജയൻ അഞ്ച്  ലക്ഷം രൂപ വീതവും പ്രധാനമന്ത്രി നരേന്ദ്ര മോദി രണ്ട്  ലക്ഷം രൂപ വീതവും ധനസഹായം പ്രഖ്യാപിച്ചിട്ടുണ്ട് .','malayalam.samayam.com.jpg',1,1,1,13,1,8),(22,'2020-08-20 00:00:00','പെട്ടിമുടി ദുരന്തം:  മൂന്ന്  ലക്ഷം വീതം ധനസഹായം പ്രഖ്യാപിച്ച്  തമിഴ് നാട്  സർക്കാർ','ി രാജമല പെട്ടിമുടിയിലെ ദുരന്തബാധിതർക്ക്  ധനസഹായവുമായി തമിഴ് നാട്  സർക്കാർ. ഉരുൾപൊട്ടലിൽ ജീവൻ നഷ് ടപ്പെട്ടവരുടെ കുടുംബങ്ങൾക്ക്  മൂന്ന്  ലക്ഷം രൂപ വീതം നൽകുമെന്ന്  തമിഴ് നാട്  മുഖ്യമന്ത്രി എടപ്പാടി പളനിസ്വാമി പ്രഖ്യാപിച്ചു. ഗുരുതരമായി പരിക്കേറ്റവർക്ക്  ഒരു ലക്ഷം രൂപയും ധനസഹായമായി പ്രഖ്യാപിച്ചിട്ടുണ്ട് .\r\n\r\nആഗസ് റ്റ്  ഏഴിനുണ്ടായ ഉരുൾപൊട്ടലിൽ ജീവൻ നഷ് ടപ്പെട്ട 62 പേരുടെ മൃതദേഹങ്ങൾ ഇതിനകം കണ്ടെടുത്തിട്ടുണ്ട് . മരിച്ചവരെല്ലാവരും രാജമലയിലെ തേയില പ്ലാന്റേഷനിൽ   ജോലി ചെയ്യുന്നവരായിരുന്നു. തലമുറകൾക്ക്   മുമ്പ്  തമിഴ് നാട്ടിൽ നിന്ന്  കുടിയേറി വന്നവരുടെ കുടുംബങ്ങളാണിവർ  .\r\n\r\nമരിച്ചവരുടെ കുടുംബാംങ്ങൾക്ക്  കേരള മുഖ്യമന്ത്രി പിണറായി വിജയൻ അഞ്ച്  ലക്ഷം രൂപ വീതവും പ്രധാനമന്ത്രി നരേന്ദ്ര മോദി രണ്ട്  ലക്ഷം രൂപ വീതവും ധനസഹായം പ്രഖ്യാപിച്ചിട്ടുണ്ട് .','malayalam.samayam.com.jpg',1,1,1,14,1,8),(23,'2020-08-20 00:00:00','പെട്ടിമുടി ദുരന്തം:  മൂന്ന്  ലക്ഷം വീതം ധനസഹായം പ്രഖ്യാപിച്ച്  തമിഴ് നാട്  സർക്കാർ','ി രാജമല പെട്ടിമുടിയിലെ ദുരന്തബാധിതർക്ക്  ധനസഹായവുമായി തമിഴ് നാട്  സർക്കാർ. ഉരുൾപൊട്ടലിൽ ജീവൻ നഷ് ടപ്പെട്ടവരുടെ കുടുംബങ്ങൾക്ക്  മൂന്ന്  ലക്ഷം രൂപ വീതം നൽകുമെന്ന്  തമിഴ് നാട്  മുഖ്യമന്ത്രി എടപ്പാടി പളനിസ്വാമി പ്രഖ്യാപിച്ചു. ഗുരുതരമായി പരിക്കേറ്റവർക്ക്  ഒരു ലക്ഷം രൂപയും ധനസഹായമായി പ്രഖ്യാപിച്ചിട്ടുണ്ട് .\r\n\r\nആഗസ് റ്റ്  ഏഴിനുണ്ടായ ഉരുൾപൊട്ടലിൽ ജീവൻ നഷ് ടപ്പെട്ട 62 പേരുടെ മൃതദേഹങ്ങൾ ഇതിനകം കണ്ടെടുത്തിട്ടുണ്ട് . മരിച്ചവരെല്ലാവരും രാജമലയിലെ തേയില പ്ലാന്റേഷനിൽ   ജോലി ചെയ്യുന്നവരായിരുന്നു. തലമുറകൾക്ക്   മുമ്പ്  തമിഴ് നാട്ടിൽ നിന്ന്  കുടിയേറി വന്നവരുടെ കുടുംബങ്ങളാണിവർ  .\r\n\r\nമരിച്ചവരുടെ കുടുംബാംങ്ങൾക്ക്  കേരള മുഖ്യമന്ത്രി പിണറായി വിജയൻ അഞ്ച്  ലക്ഷം രൂപ വീതവും പ്രധാനമന്ത്രി നരേന്ദ്ര മോദി രണ്ട്  ലക്ഷം രൂപ വീതവും ധനസഹായം പ്രഖ്യാപിച്ചിട്ടുണ്ട് .','malayalam.samayam.com.jpg',1,1,1,15,2,8),(24,'2020-08-20 00:00:00','പെട്ടിമുടി ദുരന്തം:  മൂന്ന്  ലക്ഷം വീതം ധനസഹായം പ്രഖ്യാപിച്ച്  തമിഴ് നാട്  സർക്കാർ','ി രാജമല പെട്ടിമുടിയിലെ ദുരന്തബാധിതർക്ക്  ധനസഹായവുമായി തമിഴ് നാട്  സർക്കാർ. ഉരുൾപൊട്ടലിൽ ജീവൻ നഷ് ടപ്പെട്ടവരുടെ കുടുംബങ്ങൾക്ക്  മൂന്ന്  ലക്ഷം രൂപ വീതം നൽകുമെന്ന്  തമിഴ് നാട്  മുഖ്യമന്ത്രി എടപ്പാടി പളനിസ്വാമി പ്രഖ്യാപിച്ചു. ഗുരുതരമായി പരിക്കേറ്റവർക്ക്  ഒരു ലക്ഷം രൂപയും ധനസഹായമായി പ്രഖ്യാപിച്ചിട്ടുണ്ട് .\r\n\r\nആഗസ് റ്റ്  ഏഴിനുണ്ടായ ഉരുൾപൊട്ടലിൽ ജീവൻ നഷ് ടപ്പെട്ട 62 പേരുടെ മൃതദേഹങ്ങൾ ഇതിനകം കണ്ടെടുത്തിട്ടുണ്ട് . മരിച്ചവരെല്ലാവരും രാജമലയിലെ തേയില പ്ലാന്റേഷനിൽ   ജോലി ചെയ്യുന്നവരായിരുന്നു. തലമുറകൾക്ക്   മുമ്പ്  തമിഴ് നാട്ടിൽ നിന്ന്  കുടിയേറി വന്നവരുടെ കുടുംബങ്ങളാണിവർ  .\r\n\r\nമരിച്ചവരുടെ കുടുംബാംങ്ങൾക്ക്  കേരള മുഖ്യമന്ത്രി പിണറായി വിജയൻ അഞ്ച്  ലക്ഷം രൂപ വീതവും പ്രധാനമന്ത്രി നരേന്ദ്ര മോദി രണ്ട്  ലക്ഷം രൂപ വീതവും ധനസഹായം പ്രഖ്യാപിച്ചിട്ടുണ്ട് .','malayalam.samayam.com.jpg',1,1,1,15,3,8),(25,'2020-08-20 00:00:00','പെട്ടിമുടി ദുരന്തം:  മൂന്ന്  ലക്ഷം വീതം ധനസഹായം പ്രഖ്യാപിച്ച്  തമിഴ് നാട്  സർക്കാർ','പെട്ടിമുടി ദുരന്തം:  മൂന്ന്  ലക്ഷം വീതം ധനസഹായം പ്രഖ്യാപിച്ച്  തമിഴ് നാട്  സർക്കാർപെട്ടിമുടി ദുരന്തം:  മൂന്ന്  ലക്ഷം വീതം ധനസഹായം പ്രഖ്യാപിച്ച്  തമിഴ് നാട്  സർക്കാർപെട്ടിമുടി ദുരന്തം:  മൂന്ന്  ലക്ഷം വീതം ധനസഹായം പ്രഖ്യാപിച്ച്  തമിഴ് നാട്  സർക്കാർ','malayalam.samayam.com.jpg',1,1,1,11,1,2),(26,'2020-08-20 00:00:00','പെട്ടിമുടി ദുരന്തം:  മൂന്ന്  ലക്ഷം വീതം ധനസഹായം പ്രഖ്യാപിച്ച്  തമിഴ് നാട്  സർക്കാർ','പെട്ടിമുടി ദുരന്തം:  മൂന്ന്  ലക്ഷം വീതം ധനസഹായം പ്രഖ്യാപിച്ച്  തമിഴ് നാട്  സർക്കാർപെട്ടിമുടി ദുരന്തം:  മൂന്ന്  ലക്ഷം വീതം ധനസഹായം പ്രഖ്യാപിച്ച്  തമിഴ് നാട്  സർക്കാർപെട്ടിമുടി ദുരന്തം:  മൂന്ന്  ലക്ഷം വീതം ധനസഹായം പ്രഖ്യാപിച്ച്  തമിഴ് നാട്  സർക്കാർ','malayalam.samayam.com.jpg',1,1,1,11,1,1),(27,'2020-08-20 00:00:00','പെട്ടിമുടി ദുരന്തം:  മൂന്ന്  ലക്ഷം വീതം ധനസഹായം പ്രഖ്യാപിച്ച്  തമിഴ് നാട്  സർക്കാർ','പെട്ടിമുടി ദുരന്തം:  മൂന്ന്  ലക്ഷം വീതം ധനസഹായം പ്രഖ്യാപിച്ച്  തമിഴ് നാട്  സർക്കാർപെട്ടിമുടി ദുരന്തം:  മൂന്ന്  ലക്ഷം വീതം ധനസഹായം പ്രഖ്യാപിച്ച്  തമിഴ് നാട്  സർക്കാർപെട്ടിമുടി ദുരന്തം:  മൂന്ന്  ലക്ഷം വീതം ധനസഹായം പ്രഖ്യാപിച്ച്  തമിഴ് നാട്  സർക്കാർപെട്ടിമുടി ദുരന്തം:  മൂന്ന്  ലക്ഷം വീതം ധനസഹായം പ്രഖ്യാപിച്ച്  തമിഴ് നാട്  സർക്കാർ','malayalam.samayam.com.jpg',1,1,1,11,1,3),(28,'2020-08-20 00:00:00','പെട്ടിമുടി ദുരന്തം:  മൂന്ന്  ലക്ഷം വീതം ധനസഹായം പ്രഖ്യാപിച്ച്  തമിഴ് നാട്  സർക്കാർ','പെട്ടിമുടി ദുരന്തം:  മൂന്ന്  ലക്ഷം വീതം ധനസഹായം പ്രഖ്യാപിച്ച്  തമിഴ് നാട്  സർക്കാർപെട്ടിമുടി ദുരന്തം:  മൂന്ന്  ലക്ഷം വീതം ധനസഹായം പ്രഖ്യാപിച്ച്  തമിഴ് നാട്  സർക്കാർപെട്ടിമുടി ദുരന്തം:  മൂന്ന്  ലക്ഷം വീതം ധനസഹായം പ്രഖ്യാപിച്ച്  തമിഴ് നാട്  സർക്കാർ','malayalam.samayam.com.jpg',1,1,1,11,1,4),(29,'2020-08-20 00:00:00','പെട്ടിമുടി ദുരന്തം:  മൂന്ന്  ലക്ഷം വീതം ധനസഹായം പ്രഖ്യാപിച്ച്  തമിഴ് നാട്  സർക്കാർ','പെട്ടിമുടി ദുരന്തം:  മൂന്ന്  ലക്ഷം വീതം ധനസഹായം പ്രഖ്യാപിച്ച്  തമിഴ് നാട്  സർക്കാർപെട്ടിമുടി ദുരന്തം:  മൂന്ന്  ലക്ഷം വീതം ധനസഹായം പ്രഖ്യാപിച്ച്  തമിഴ് നാട്  സർക്കാർപെട്ടിമുടി ദുരന്തം:  മൂന്ന്  ലക്ഷം വീതം ധനസഹായം പ്രഖ്യാപിച്ച്  തമിഴ് നാട്  സർക്കാർപെട്ടിമുടി ദുരന്തം:  മൂന്ന്  ലക്ഷം വീതം ധനസഹായം പ്രഖ്യാപിച്ച്  തമിഴ് നാട്  സർക്കാർ','malayalam.samayam.com.jpg',1,1,1,11,1,5),(30,'2020-08-20 00:00:00','പെട്ടിമുടി ദുരന്തം:  മൂന്ന്  ലക്ഷം വീതം ധനസഹായം പ്രഖ്യാപിച്ച്  തമിഴ് നാട്  സർക്കാർ','പെട്ടിമുടി ദുരന്തം:  മൂന്ന്  ലക്ഷം വീതം ധനസഹായം പ്രഖ്യാപിച്ച്  തമിഴ് നാട്  സർക്കാർപെട്ടിമുടി ദുരന്തം:  മൂന്ന്  ലക്ഷം വീതം ധനസഹായം പ്രഖ്യാപിച്ച്  തമിഴ് നാട്  സർക്കാർപെട്ടിമുടി ദുരന്തം:  മൂന്ന്  ലക്ഷം വീതം ധനസഹായം പ്രഖ്യാപിച്ച്  തമിഴ് നാട്  സർക്കാർ','malayalam.samayam.com.jpg',1,1,1,11,1,6),(31,'2020-08-20 00:00:00','പെട്ടിമുടി ദുരന്തം:  മൂന്ന്  ലക്ഷം വീതം ധനസഹായം പ്രഖ്യാപിച്ച്  തമിഴ് നാട്  സർക്കാർ','പെട്ടിമുടി ദുരന്തം:  മൂന്ന്  ലക്ഷം വീതം ധനസഹായം പ്രഖ്യാപിച്ച്  തമിഴ് നാട്  സർക്കാർപെട്ടിമുടി ദുരന്തം:  മൂന്ന്  ലക്ഷം വീതം ധനസഹായം പ്രഖ്യാപിച്ച്  തമിഴ് നാട്  സർക്കാർപെട്ടിമുടി ദുരന്തം:  മൂന്ന്  ലക്ഷം വീതം ധനസഹായം പ്രഖ്യാപിച്ച്  തമിഴ് നാട്  സർക്കാർ','malayalam.samayam.com.jpg',1,1,1,11,1,7),(39,'2020-08-29 15:46:14','മുഖത്തെ കറുത്ത പാടുകള്‍ ഇല്ലാതാക്കാന്‍ ശര്‍ക്കര കൊണ്ടുള്ള ഫേസ് പാക്കുകൾ പരീക്ഷിക്കാം...','ചര്‍മ്മത്തിലെ കറുത്ത പാടുകൾ, മുഖക്കുരുവിന്റെ പാടുകൾ എന്നിവയെ തടയാനും യുവത്വം നിലനിര്‍ത്താനും ശര്‍ക്കര കൊണ്ടുള്ള ഫേസ് പാക്കുകൾ സഹായിക്കും. \r\n\r\nപഞ്ചസാരയുടെ അടുത്ത ബന്ധുവായ ശർക്കര ആരോഗ്യത്തിന് മാത്രമല്ല, സൗന്ദര്യവർദ്ധക ഉൽ‌പന്നമായും ഉപയോഗിക്കാം. ചര്‍മ്മത്തിന്‍റെ ആരോഗ്യത്തിനായി ആന്‍റിഓക്സിഡന്‍റുകള്‍ ധാരാളം അടങ്ങിയ ശര്‍ക്കര കഴിക്കുക മാത്രമല്ല ശര്‍ക്കര കൊണ്ടുള്ള ഫേസ് പാക്കുകളും ഉപയോഗിക്കാവുന്നതാണ് എന്നാണ് ബംഗ്ലൂരുവില്‍ നിന്നുള്ള ചര്‍മ്മ വിദഗ്ധയായ ഡോ. പ്രിയങ്ക റെഡ്ഡി പറയുന്നത്. \r\n\r\nചര്‍മ്മത്തിലെ കറുത്ത പാടുകൾ, മുഖക്കുരുവിന്റെ പാടുകൾ എന്നിവ തടയാനും യുവത്വം നിലനിര്‍ത്താനും ശര്‍ക്കര കൊണ്ടുള്ള ഫേസ് പാക്കുകൾ സഹായിക്കും. വീട്ടില്‍ ഉണ്ടാക്കാവുന്ന ചില ഫേസ് പാക്കുകളെ പരിചയപ്പെടാം. \r\n\r\n\r\n\r\nഒന്ന്...\r\n\r\nഒരു ടീസ്പൂണ്‍ ശര്‍ക്കര പൊടിച്ചതിലേയ്ക്ക്  ഒരു ടീസ്പൂണ്‍ തേന്‍, അര ടീസ്പൂണ്‍ നാരങ്ങാനീര് എന്നിവ ചേര്‍ത്ത് മിശ്രിതമാക്കുക. ശേഷം ഈ മിശ്രിതം മുഖത്ത് പുരട്ടാം. പത്ത് മിനിറ്റിന് ശേഷം കഴുകി കളയാം. ഇത് ആഴ്ചയില്‍ രണ്ടുതവണ ചെയ്യുന്നത് ചര്‍മ്മത്തിലെ കറുത്ത പാടുകള്‍ മാറ്റാനും ചര്‍മ്മം മൃദുലമാകാനും സഹായിക്കും. \r\n\r\n\r\nരണ്ട്...\r\n\r\nഒരു ടീസ്പൂണ്‍ ശര്‍ക്കര പൊടിച്ചത്, ഒരു ടീസ്പൂണ്‍ തക്കാളി നീര്, അര ടീസ്പൂണ്‍ നാരങ്ങാനീര്, ഒരു നുള്ള് മഞ്ഞള്‍പ്പൊടി എന്നിവ മിശ്രിതമാക്കുക. ശേഷം ഈ മിശ്രിതം  മുഖത്ത് പുരട്ടാം. 10-15 മിനിറ്റിന് ശേഷം ചെറുചൂടുവെള്ളത്തില്‍ കഴുകാം. ഇതും ആഴ്ചയില്‍ മൂന്ന് മുതല്‍ നാല് ദിവസം വരെയൊക്കെ ചെയ്യാം. \r\n\r\nമൂന്ന്...\r\n\r\nഒരു ടീസ്പൂണ്‍ മുന്തിരി നീരും ഒരു ടീസ്പൂണ്‍ ശര്‍ക്കര പൊടിച്ചതും മിശ്രിതമാക്കുക. ഇതിലേയ്ക്ക് ഒരു നുള്ള് മഞ്ഞള്‍പ്പൊടിയും റോസ് വാട്ടറും കൂടി ചേര്‍ത്ത് മിശ്രിതമാക്കാം. ഈ മിശ്രിതം മുഖത്ത് പുരട്ടി 15 മിനിറ്റിന് ശേഷം ചെറുചൂടുവെള്ളത്തില്‍ കഴുകി കളയാം. ഇത് ആഴ്ചയില്‍ രണ്ടുതവണ ചെയ്യുന്നത് ചര്‍മ്മം തൂങ്ങാതിരിക്കാനും നിറം വര്‍ധിപ്പിക്കാനും സഹായിക്കും','Capture_mod_oZ1Lwy2.PNG',1,1,1,15,6,8);

/*Table structure for table `editors_news_nation` */

DROP TABLE IF EXISTS `editors_news_nation`;

CREATE TABLE `editors_news_nation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_nation` varchar(50) DEFAULT NULL,
  `nation_logo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `editors_news_nation` */

insert  into `editors_news_nation`(`id`,`news_nation`,`nation_logo`) values (1,'Kerala','kerala.png'),(2,'Gulf','gulf.png'),(3,'International','international.png'),(4,'latest','latest.png'),(5,'Sports','sports.png'),(6,'More','more.png');

/*Table structure for table `editors_news_place` */

DROP TABLE IF EXISTS `editors_news_place`;

CREATE TABLE `editors_news_place` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_place` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `editors_news_place` */

insert  into `editors_news_place`(`id`,`news_place`) values (1,'Thamarassery'),(2,'Koduvally'),(3,'Balussery'),(4,'Mukkam'),(5,'Thiruvampady'),(6,'Puthuppadi'),(7,'Kattippara'),(8,NULL);

/*Table structure for table `editors_registration` */

DROP TABLE IF EXISTS `editors_registration`;

CREATE TABLE `editors_registration` (
  `id_id` int(11) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `user_type` varchar(10) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id_id`),
  CONSTRAINT `editors_registration_id_id_8a11e0f6_fk_auth_user_id` FOREIGN KEY (`id_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `editors_registration` */

insert  into `editors_registration`(`id_id`,`phone`,`user_type`,`image`) values (1,9544334756,'admin','');

/*Table structure for table `editors_special_days` */

DROP TABLE IF EXISTS `editors_special_days`;

CREATE TABLE `editors_special_days` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_of_publish` datetime NOT NULL,
  `whish_head` varchar(50) NOT NULL,
  `wishing_image` varchar(100) NOT NULL,
  `editor_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `editors_special_days_editor_id_id_16eba318_fk_auth_user_id` (`editor_id_id`),
  CONSTRAINT `editors_special_days_editor_id_id_16eba318_fk_auth_user_id` FOREIGN KEY (`editor_id_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `editors_special_days` */

insert  into `editors_special_days`(`id`,`date_of_publish`,`whish_head`,`wishing_image`,`editor_id_id`) values (1,'2020-08-31 18:39:31','in','8EA70F27-5554-4297-8957-F08662A902E9_5Bh0nN2_6PWQvll.jpeg',1),(4,'2020-08-31 20:01:07','MKMK','tsy2222_oQvdyN8.jpg',1),(5,'2020-08-31 20:12:50','MKMK','photo_2020-09-01_01-42-27_HXbutC3.jpg',1);

/*Table structure for table `editors_w_link` */

DROP TABLE IF EXISTS `editors_w_link`;

CREATE TABLE `editors_w_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `whatsapp` varchar(500) CHARACTER SET utf8 NOT NULL,
  `editor_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `editors_w_link_editor_id_id_53fe9ae8_fk_auth_user_id` (`editor_id_id`),
  CONSTRAINT `editors_w_link_editor_id_id_53fe9ae8_fk_auth_user_id` FOREIGN KEY (`editor_id_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `editors_w_link` */

insert  into `editors_w_link`(`id`,`whatsapp`,`editor_id_id`) values (2,'\r\n➖➖➖➖➖➖➖➖➖➖\r\n*കൂടുതൽ വാർത്തകളറിയാൻ താമരശ്ശേരി വാർത്തകൾ വാട്സ്അപ്പ് ഗ്രൂപ്പിൽ ജോയിന്റ് ചെയ്യുക*\r\nhttps://chat.whatsapp.com/GAoVPQTcHg9Id1jHbjrASN\r\n*താമരശ്ശേരി വാർത്തകൾ ടെലിഗ്രാമിലും ,ഫെയ്‌സ് ബുക്കിലും ലഭ്യമാണ്....*\r\nhttps://t.me/joinchat/L-pmZ1AFopEsHNKA95C-Xw\r\n*ഫെയ്സ്ബുക്ക് ഗ്രൂപ്പ്*\r\nhttps://www.facebook.com/groups/2081227165274481/\r\n➖➖➖➖➖➖➖➖➖➖➖\r\n*വാർത്തകൾക്കും , പരസ്യങ്ങൾക്കും*\r\n*24 മണിക്കൂറും ബന്ധപ്പെടുക*\r\nhttp://wa.me/919961568091\r\nhttp://wa.me/966552964337',1);

/*Table structure for table `editors_whatsapp_link` */

DROP TABLE IF EXISTS `editors_whatsapp_link`;

CREATE TABLE `editors_whatsapp_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `whatsapp_link_urls` varchar(200) NOT NULL,
  `editor_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `whatsapp_link_urls` (`whatsapp_link_urls`),
  KEY `editors_whatsapp_link_editor_id_id_1ec3cbf0_fk_auth_user_id` (`editor_id_id`),
  CONSTRAINT `editors_whatsapp_link_editor_id_id_1ec3cbf0_fk_auth_user_id` FOREIGN KEY (`editor_id_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `editors_whatsapp_link` */

insert  into `editors_whatsapp_link`(`id`,`whatsapp_link_urls`,`editor_id_id`) values (1,'https://chat.whatsapp.com/KoftXu1mD915RvNor2akwO',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
