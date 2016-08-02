-- MySQL dump 10.13  Distrib 5.1.73, for redhat-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: blog
-- ------------------------------------------------------
-- Server version	5.6.23

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add article',7,'add_article'),(20,'Can change article',7,'change_article'),(21,'Can delete article',7,'delete_article'),(22,'Can add category',8,'add_category'),(23,'Can change category',8,'change_category'),(24,'Can delete category',8,'delete_category'),(25,'Can add tag',9,'add_tag'),(26,'Can change tag',9,'change_tag'),(27,'Can delete tag',9,'delete_tag'),(28,'Can add blog comment',10,'add_blogcomment'),(29,'Can change blog comment',10,'change_blogcomment'),(30,'Can delete blog comment',10,'delete_blogcomment');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$24000$jlucdbAL0Wds$VdepmEQi/gZPwSZScjBxb8HXVXENQ5QtRzRV4kLCvQs=','2016-07-16 20:51:25.175313',1,'root','','','admin@admin.com',1,1,'2016-05-29 13:51:42.509576');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_article`
--

DROP TABLE IF EXISTS `blog_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(70) NOT NULL,
  `body` longtext NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `last_modified_time` datetime(6) NOT NULL,
  `status` varchar(1) NOT NULL,
  `abstract` varchar(54) DEFAULT NULL,
  `views` int(10) unsigned NOT NULL,
  `likes` int(10) unsigned NOT NULL,
  `topped` tinyint(1) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_article_b583a629` (`category_id`),
  CONSTRAINT `blog_article_category_id_7e38f15e_fk_blog_category_id` FOREIGN KEY (`category_id`) REFERENCES `blog_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_article`
--

LOCK TABLES `blog_article` WRITE;
/*!40000 ALTER TABLE `blog_article` DISABLE KEYS */;
INSERT INTO `blog_article` VALUES (3,'使用django搭建一个blog','一个简单 Django Blog，用于发布小组每周的学习和开发文档\r\nDjango 中国社区，为国内的 Django 开发者们提供一个长期维护的 Django 社区，聚集全国的 Django 开发者到这个社区上来\r\nDjango 问答社区， 类似于 segmentfault 和 stackoverflow 但更加专注（只专注于 Django 开发的问题）的问答社区','2016-05-29 14:00:34.376200','2016-05-30 09:03:08.890664','p','',0,0,1,1),(4,'编写 View','上面已经介绍了 django 应用的工作流程，数据库建立完毕后需要编写视图函数（view）来处理 Http 请求。同样先来看 django 的 view 代码是如何写的，然后我们再逐行解释。\r\n\r\n我们现在要设计的是一个首页的视图函数，即用户进入我们的 Blog 首页后，我们需要把数据库中存储的文章的相关信息取出来展示给用户看：','2016-05-30 09:03:44.292148','2016-05-30 09:03:44.292216','d','',0,0,0,1),(5,'【小说】喜欢我十九年的男孩结婚了','夏季，周末，有晚风，有暑气。\r\n\r\n大学室友萍子从外地回来，特地给我打电话点名要吃烤全鱼，扬言要榨干我本月的工资，我在电话里调侃：只要你能吃得下，我请你吃光整个松花江。\r\n\r\n许久没见，萍子竟丰腴了不少，我俩坐在雾气缭绕的鱼锅旁从当年大学生活聊到如今工作，从大热韩剧来自星星的你聊到谢霆锋王菲分分合合，聊至起兴，萍子要了两瓶茅台，说这样才算是意境。\r\n\r\n我为了她的意境，先干了一杯。\r\n\r\n萍子夹了一块鱼肉说：好好，网上有一个特火的文章来着，叫什么，我喜欢了十年的姑娘今天结婚了，哎，多可惜。\r\n\r\n我呦了一声说：这么巧。\r\n\r\n她不明所以：什么这么巧？你喜欢的姑娘也在今天结婚了？\r\n\r\n我说：哪能呢，我是说喜欢了我…\r\n\r\n我掰了下手指头数了数接着说：喜欢了我十九年的那小子啊，今天也结婚了。\r\n\r\n萍子瞪圆眼睛问：你说谁啊，我怎么不知道。\r\n\r\n我说你哪能知道，谁都不知道。\r\n\r\n萍子嘿嘿傻乐：小伙子长什么样啊，让我见识见识。\r\n\r\n我掏出手机，翻至一张照片，照片里是某年冬天我和一个男孩在广场上看冰灯时的合照，他穿着黑白色的羽绒服，耳垂被冻得的通红，由于身高很高，他将手臂搭在我的肩上，侧头看着我，表情似乎是微微的不悦，因为那两条极是浓密的眉毛是皱着的，在斑驳的冰灯下溢彩流光。\r\n\r\n照片上，映在我脸上的光线有些暗了，看不清表情，只是大概觉得，神情是在瞪他的。远远看去，两个人竟神奇的有些‘深情对视’的味道。\r\n\r\n萍子接过去，醉眼朦胧的看了半天，我估计她是在对焦。\r\n\r\n过会，她咿咿呀呀的叫：哎呦，这不是你大学时候么，这小伙是哪院的草啊，我怎么没见过。\r\n\r\n我说：哪院也不是。\r\n\r\n萍子撇撇嘴：你不说他今天结婚么，新娘长什么样啊，比你漂亮吗，有多好看？\r\n\r\n有多好看？\r\n\r\n我在想该如何回答。\r\n\r\n隔着缭绕见薄的雾气和几乎见底的茅台白酒，我低下头，酒气上涌烧红两颊，烫的我几乎睁不开眼睛。\r\n\r\n过了一会儿，我说：应该是比月亮还好看吧。\r\n\r\n一\r\n\r\n2008年冬，摄于哈尔滨。\r\n\r\n肖丛和我随着闪光灯定格在08年冰灯夜的二十几个小时前，他还远在大不列颠潮湿的阳光下装绅士，或者拿着课本攻读他学的比死还难受的金融。\r\n\r\n而他出现在我面前的时候，只有一句话。\r\n\r\n他说，何好，我回来了。\r\n\r\n若不是他上下满身的风尘仆仆，我几乎以为自己是站在老楼的阴凉处，在等他和一群朋友在足球场挥汗如雨道别后，余兴未尽的跑回来，气喘吁吁的对我说：何好，我回来了！\r\n\r\n接着，胡乱应付了我絮絮叨叨告诉他剧烈运动不能马上喝水的嘱咐后，兴致盎然的讲着他今天踢了多么好的球，哪个哪个胖子长的比球门还宽却总是守不住球，哪个哪个小子运球还算厉害。\r\n\r\n好似寻常往时。\r\n\r\n我已经不记得是怎么记住肖丛这个名字，也不记得我和他说的第一句话。\r\n\r\n就像我不记得生命中是如何叫出第一声妈妈。\r\n\r\n妈妈就是妈妈。\r\n\r\n肖丛就是肖丛。\r\n\r\n文／卫好唯（简书作者）\r\n原文链接：http://www.jianshu.com/p/75668c529213\r\n著作权归作者所有，转载请联系作者获得授权，并标注“简书作者”。','2016-05-31 08:52:01.364400','2016-06-07 14:45:26.140312','p','',0,0,1,2),(6,'《莞尔好时》一：当时少年青衫薄','先从那个黄昏说起。\r\n\r\n正值夏日，余留热气的黄昏。\r\n\r\n饶是学校北门门口那一条红红火火的小吃街是最馋人、最具代表性的一段地，但咱也要先从女生寝室楼这一块风水宝地开始讲起，不然对不起那些隔三差五就在楼底下抛头颅洒热血拉横幅摆蜡烛嘶吼‘某某某我爱你我要和你在一起’的哥们儿们。\r\n\r\n这不，哥们又来了。\r\n\r\n彼时，赵好时赵同学正在水房里跟一台洗衣机较劲。\r\n\r\n她觉得这洗衣机太不厚道了，说好了三个硬币全自动，第一个硬币哗哗放水，第二个硬币疯狂旋转，第三个硬币保证甩干。可这前两个步骤完成的值得表扬，第三个步骤洗衣机直接歇菜，留下一桶水淋淋的衣服任锤任踹就是不给甩。\r\n\r\n没别的法，只能等，等别的洗衣机空下来再投个硬币去甩干。\r\n\r\n学校这两年换了大门，换了新漆，换了水龙头，就是没换洗衣机，这洗衣机也是间歇性抽风，今个好用明个不好用的。大伙估摸着可能是学校领导有意为之，意在锻炼大学生勤动手的自理能力，最好是没事就拿个搓衣板在寝室楼底下排排坐搓衣服，不然天天粘床上，等毕业了都拽不下来。\r\n\r\n好时等的时候就在轰轰隆隆的洗衣机运作声中听见了水房外面，寝室走廊上的声音。\r\n\r\n一个个姑娘趿拉着拖鞋兴奋地从寝室门里跑出来堆在楼梯口的窗户上向外看。\r\n\r\n“是喝醉了吧？”\r\n\r\n“好像是，但是看着还挺清醒的。”\r\n\r\n“可能喝的不多呗，喝到能壮胆的量就过来了吧。”\r\n\r\n“这男生怎么看着眼熟呢”\r\n\r\n“哎你这么一说我看着也眼熟。”\r\n\r\n好时抱着空洗衣盆靠在水房门口看热闹，守株待兔地等着下一台洗衣机空出来她好赶快把衣服转移。\r\n\r\n还没等多久，最起码下一台洗衣机没等出来，却等出来楼下男生一句豪气冲天的咆哮：程欢喜！我喜欢你！多久我都会等你！\r\n\r\n这一嗓子男高音直接将第十女生寝室楼全面包围，以后绕楼三日，余音不绝。\r\n\r\n窗户边的小姑娘们炸了，赵好时同学醉了。\r\n\r\n能不眼熟么，不用看也知道是谁了。\r\n\r\n且不说楼下这位男高音之前多少次在教室门口，宿舍门口，图书馆门口等各种门口‘偶遇’赵好时同学，每次都‘恰好’买了两大袋子零食往她手里一塞，笑声豪迈：“给你们寝室程欢喜的！”\r\n\r\n其实第一次他是这么说的：给你们寝室程欢喜的，但是你吃了也没事儿，把水晶之恋果冻留出来给她就行。\r\n\r\n然后就带着豪迈的笑声转身走了。\r\n\r\n后来赵同学嫌沉，这小子直接把袋子一扔一溜烟跑没影了，追都追不上。直接导致赵同学以后每次出大门的时候先伸出脑袋左右看看，要是看到门口有那么一个提着两大袋子两眼放光瞅着她的男同学，直接掉头往回跑。\r\n\r\n这是强制性脸熟，同宿舍楼的女同学对他脸熟也是被强制性的，因为算这次，男高音已经第三次出现在第十女生宿舍楼下了。第一次还带了个扩音喇叭。\r\n\r\n寝室四个人，除了程欢喜坚决抵制男高音，其他仨人都对男高音抱有错乱混杂的感情，拿人手短么，何况还吃了人家那么多零食，所以在心理上绝对支持男高音，行动上绝对继续吃。\r\n\r\n文／卫好唯（简书作者）\r\n原文链接：http://www.jianshu.com/p/fe33ac8f5299\r\n著作权归作者所有，转载请联系作者获得授权，并标注“简书作者”。','2016-05-31 08:52:30.037845','2016-05-31 08:52:30.037911','p','',0,0,0,2),(7,'你还记得他身上洗衣液的味道吗?','#这是个小言情。\r\n\r\n>言情的姑娘姓杜名楠姗，姑且称她为小南山。\r\n\r\n\r\n小南山如今25岁，用她自己的话说，现在叫小南山已经有点装嫩的嫌疑了，现在她这座山已经鲜有嫩芽。当然，她也被人说，等你30岁的时候，你再回头看看25岁的你，你就不这么说了。\r\n\r\n但若是岁月倒流，十年前的南山却是正儿八经的小南山，或者，压根称不上是座新绿的小山，最多是个小土包。\r\n\r\n回想学生时代的女孩子们，齐耳的学生头，短短露着眉毛的门帘，宽大洗旧的校服，刨除那些眉目清秀好看的姑娘们，剩下的就是小南山这样的小土包。\r\n\r\n而且我们的小土包还有一副除了睡觉才依依不舍分离的黑框眼镜。可那时候，谁又知道自己是个小土包呢，我们心里打着的小旗不是最美最美，而是高分高分。\r\n\r\n小南山是三点一线式生活状态的优秀的继承人，寝室，教学楼，食堂。埋头吃饭，埋头做题，抬头听课，她很乖。\r\n\r\n她习惯坐在理发店里告诉理发师将刘海剪的很短，甚至露出稀稀少少的眉毛，这样不会妨碍她看黑板的视线。她习惯早晨洗完脸用毛巾擦干，任它在北方的燥的起皮的天气里硬是什么也不涂便背起出包走人。\r\n\r\n再引一句小南山的原话“那时候活的，嗯，真是鲁莽而粗糙。”\r\n\r\n让这样鲁莽而又粗糙的汉子转型的人，他也是个鲁莽而又粗糙的汉子，当然，此汉子非寻常汉子可比。\r\n\r\n他高瘦，白净，篮球好，数学物理好，长得也好。这是学生时代吸引小女生的标配，再配上北方汉子特有的“鲁莽和粗糙”，那就是魅力。\r\n\r\n小南山是个俗气的姑娘，大众喜欢什么样的她也逃不掉。\r\n\r\n汉子叫陆台扬，隔壁班的一根小草。小南山常常觉得自己喜欢的非他外貌，而是其“万花丛中过，片叶不沾身”的定力，用这几年普遍起来的形容就是，禁欲。而小南山这片小叶子更是凑都不敢往上凑。\r\n\r\n起初并非一见钟情，隔壁班最多就是擦肩而过的缘分，我不会看你，你更不会多给我一个余光。\r\n\r\n倒是这样擦了一年多左右，火花才在小南山这边渐渐迸发。\r\n\r\n那一日小南山班里上着物理课，物理老头派小南山去隔壁班取盒彩色粉笔。\r\n\r\n小南山推了推眼镜，领旨，手脚麻利的推门走出去，在隔壁班的后门玻璃里望了望，教室里没有一人，这节正好是体育课，看见前门却是开着的。\r\n\r\n走进去，拿粉笔，转身，却被抓个正形。\r\n\r\n高瘦挺拔的男孩，蓝的球服，白的球鞋，手里的篮球，明亮的眼睛，一身年少热血，整个年华的青春洋溢，他就站在那，好整以暇的看着她。\r\n\r\n小南山怔在那，抱着那一盒粉笔，张了嘴，发出声，是磕磕巴巴的一句，我看，看见没人。\r\n\r\n瞧，多标准的一句小偷用语。\r\n\r\n按照那时候盛行的台湾偶像剧的套路，男主角先来个唇角一勾，这笑容还得是歪的，越歪越邪魅，越歪越有魅力，再痞气的说句：哪来的小偷。然后浪漫言情开始了。\r\n\r\n可咱们小南山没这当女主角的命，磕磕巴巴半天，只等来陆台扬一句话。\r\n\r\n他很淡定的说，我知道你是隔壁的，你拿走吧。然后让出一条路。\r\n\r\n小南山低着头擦过他身边时闻到了很浅的洗衣液的味道，还有那一瞬间的高温，是他打球后的余温。却足以烫红她的脸颊。\r\n\r\n其实动心不需要什么复杂的理由，因为年少，因为纯真，因为青春洋溢，因为你给我一刹那的惊艳。\r\n\r\n也因为你开始了我不一样的生活，就像我从未见过大海，却某一天在你身后看见了整个海洋，我不能去爱海洋，但我却能喜欢你。\r\n\r\n小南山有了细微的变化，她开始在意自己的皮肤好像不是应该擦点保湿乳了，开始在镜子面前摘下眼镜仔细端看自己的轮廓，开始想除了校服还可以穿什么。\r\n\r\n小南山坐在理发店的椅子上告诉理发师，刘海不要露眉毛了。\r\n\r\n她开始时不时的从书本习题里抬起头看向门外经过的人群，或者在一旁竖起耳朵听女同学口中的陆台扬，开始将粗糙的自己打磨的尽量精细。\r\n\r\n她以最笨拙的方式一点点描绘着一个年轻姑娘的悸动，她回想以往那些无数次的擦肩而过到底是怎么过来的，只因她不知道是从哪一次开始，擦肩而过竟变成那样一件小心翼翼，惊心动魄的大事，那短短的毫秒都可以被她拉扯成一个世纪。\r\n\r\n她也不知道自己的嗅觉记忆竟然这么好，在超市里竟然一下子便找到和陆台扬身上一样味道的洗衣液，那个味道牢牢的萦锁在她的鼻腔里。因为一个人爱上一座城这样浪漫文艺的事没做成，她倒是先因为一个人爱上了一袋洗衣液。\r\n\r\n高三那年学校组了个大班，年级前一百五的同学可以进去进行冲刺的辅导，陆台扬成绩好，自然在内。本来像小南山这样五百开外的想都不要想了，但是那一年，在同学眼中，小南山像开了挂，打了鸡血一样，从五百多的中游小兵一路杀到了一百三十多名的前锋壮士。班主任自此望过来的眼神都带着令她消化不良的宠爱，好几次当着全班同学的面喜气洋洋，慷慨激昂的表扬小南山。\r\n\r\n看见没，小南山同学是意识到自己高三应该努力了，小南山同学心中开始有那股劲了，人家心在心里肯定开始规划未来，有了目标了，看吧看吧，努力就是有收获的，看人家现在进步多大，简直进步神速，你们要向这样的同学学习。\r\n\r\n甚至把小南山叫到办公室亲自问，你想考哪个大学呀？将来想干什么呀？\r\n\r\n小南山蒙了，老实的摇头。\r\n\r\n她没想过要上哪所大学，没想过将来要干什么，那些都是远的，只有陆台扬是近的，她前进一名，就离陆台扬近一步，她想要每离他近一步，她就要不停的努力。\r\n\r\n文／卫好唯（简书作者）\r\n原文链接：http://www.jianshu.com/p/344ffe47a55b\r\n著作权归作者所有，转载请联系作者获得授权，并标注“简书作者”。','2016-05-31 08:53:00.724213','2016-06-07 14:45:47.289102','p','',0,0,1,2),(8,'猪怕','其实很多时候只想守着自己的一个小圈子\r\n\r\n说什么都不怕\r\n\r\n做什么都不累\r\n\r\n所有人都对你好\r\n\r\n所有人都对你笑\r\n\r\n我的小圈子。','2016-06-07 14:25:44.381793','2016-07-08 19:06:03.639069','p','',0,0,1,2),(9,'突然很想谈恋爱','喜欢他很久了。\r\n\r\n那天下雨，她从图书馆出来，刚要从书包里掏出伞，却看见他在门口躲雨的身影。\r\n\r\n默默地把伞塞回去。\r\n\r\n凑到他身边说：师兄！好巧，我也没带伞。\r\n\r\n他瞥了她一眼。\r\n\r\n她又说：哎…雨真大。\r\n\r\n他淡淡回答：还行。\r\n\r\n她说：哎…雨天的氛围真浪漫。\r\n\r\n他依旧寡淡：还行。\r\n\r\n她装作感概说：突然…很想谈恋爱…\r\n\r\n其实一颗心早已紧张到砰砰跳个不停。\r\n\r\n他侧目看她，很久，久到她几乎马上就要冲到雨里落荒而逃。\r\n\r\n终于，他有了其他动作。\r\n\r\n抬手，绕到她的身后，从她的书包里抽出一把伞。\r\n\r\n撑开，遮到两个人的头顶。\r\n\r\n他稍稍弯起嘴角，说：我也是。\r\n\r\n文／卫好唯（简书作者）\r\n原文链接：http://www.jianshu.com/p/aafea079b1d4\r\n著作权归作者所有，转载请联系作者获得授权，并标注“简书作者”。','2016-06-07 14:28:36.311699','2016-06-07 14:45:42.766277','p','',0,0,1,2),(10,'猴子和月亮的故事','一个关于猴子和月亮的故事： 小时候，猴子想要月亮，也知道月亮不在水里在天上，所以猴子想做齐天大圣，有一朵一个跟头十万八千里的筋斗云乘着他去摘月亮。可后来才知道，猴子有很多，齐天大圣却只有一个。肖从与何好 看了两遍 虐哭两次 相爱的人最后却不能在一起','2016-06-07 14:35:06.065329','2016-06-07 14:45:37.058712','p','',0,0,1,2),(11,'测试','4564','2016-06-07 14:44:42.797980','2016-06-07 14:44:42.798048','p','',0,0,0,2),(12,'测试','按时大大','2016-06-07 14:44:53.709135','2016-06-07 14:44:53.709202','p','',0,0,0,2),(13,'测试','去恶趣味请问','2016-06-07 14:45:03.594927','2016-06-07 14:45:03.595000','p','',0,0,0,2),(14,'测试语法高亮','```python \r\n\r\nclass CategoryView(ListView):\r\n    template_name = \"blog/index.html\"\r\n    context_object_name = \"article_list\"\r\n\r\n    def get_queryset(self):\r\n        article_list = Article.objects.filter(category=self.kwargs[\'cate_id\'],status=\'p\')\r\n\r\n        for article in article_list:\r\n            article.body = markdown2.markdown(article.body, extras=[\'fenced-code-blocks\'], )\r\n        return article_list\r\n\r\n    def get_context_data(self, **kwargs):\r\n        kwargs[\'category_list\'] = Category.objects.all().order_by(\'name\')\r\n        return super(CategoryView, self).get_context_data(**kwargs)\r\n```','2016-06-10 06:53:23.430258','2016-07-08 19:05:49.796331','p','',0,0,0,1);
/*!40000 ALTER TABLE `blog_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_article_tags`
--

DROP TABLE IF EXISTS `blog_article_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_article_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_article_tags_article_id_b78a22e9_uniq` (`article_id`,`tag_id`),
  KEY `blog_article_tags_tag_id_88eb3ed9_fk_blog_tag_id` (`tag_id`),
  CONSTRAINT `blog_article_tags_article_id_82c02dd6_fk_blog_article_id` FOREIGN KEY (`article_id`) REFERENCES `blog_article` (`id`),
  CONSTRAINT `blog_article_tags_tag_id_88eb3ed9_fk_blog_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `blog_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_article_tags`
--

LOCK TABLES `blog_article_tags` WRITE;
/*!40000 ALTER TABLE `blog_article_tags` DISABLE KEYS */;
INSERT INTO `blog_article_tags` VALUES (2,8,1),(1,14,2);
/*!40000 ALTER TABLE `blog_article_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_blogcomment`
--

DROP TABLE IF EXISTS `blog_blogcomment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_blogcomment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `body` longtext NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `website` varchar(200) DEFAULT NULL,
  `article_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_blogcomment_article_id_c1f8686b_fk_blog_article_id` (`article_id`),
  CONSTRAINT `blog_blogcomment_article_id_c1f8686b_fk_blog_article_id` FOREIGN KEY (`article_id`) REFERENCES `blog_article` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_blogcomment`
--

LOCK TABLES `blog_blogcomment` WRITE;
/*!40000 ALTER TABLE `blog_blogcomment` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_blogcomment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_category`
--

DROP TABLE IF EXISTS `blog_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `last_modified_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_category`
--

LOCK TABLES `blog_category` WRITE;
/*!40000 ALTER TABLE `blog_category` DISABLE KEYS */;
INSERT INTO `blog_category` VALUES (1,'django','2016-05-29 13:55:03.192530','2016-05-29 13:55:03.192594'),(2,'小说','2016-05-31 08:51:57.869103','2016-05-31 08:51:57.869168');
/*!40000 ALTER TABLE `blog_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_tag`
--

DROP TABLE IF EXISTS `blog_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `last_modified_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_tag`
--

LOCK TABLES `blog_tag` WRITE;
/*!40000 ALTER TABLE `blog_tag` DISABLE KEYS */;
INSERT INTO `blog_tag` VALUES (1,'小说','2016-07-08 19:03:50.029577','2016-07-08 19:03:50.029631'),(2,'django','2016-07-08 19:03:58.135458','2016-07-08 19:03:58.135519');
/*!40000 ALTER TABLE `blog_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2016-05-29 13:55:03.193461','1','django',1,'Added.',8,1),(2,'2016-05-29 14:00:34.377635','3','blog',1,'Added.',7,1),(3,'2016-05-29 14:03:45.585808','3','使用django搭建一个blog',2,'Changed title.',7,1),(4,'2016-05-30 09:03:04.698609','3','使用django搭建一个blog',2,'No fields changed.',7,1),(5,'2016-05-30 09:03:08.892895','3','使用django搭建一个blog',2,'No fields changed.',7,1),(6,'2016-05-30 09:03:44.294077','4','编写 View',1,'Added.',7,1),(7,'2016-05-31 08:51:57.870364','2','小说',1,'Added.',8,1),(8,'2016-05-31 08:52:01.365842','5','【小说】喜欢我十九年的男孩结婚了',1,'Added.',7,1),(9,'2016-05-31 08:52:30.039792','6','《莞尔好时》一：当时少年青衫薄',1,'Added.',7,1),(10,'2016-05-31 08:53:00.725904','7','你还记得他身上洗衣液的味道吗?',1,'Added.',7,1),(11,'2016-06-01 02:25:02.043425','7','你还记得他身上洗衣液的味道吗?',2,'Changed body.',7,1),(12,'2016-06-01 02:25:19.347175','7','你还记得他身上洗衣液的味道吗?',2,'Changed body.',7,1),(13,'2016-06-01 02:25:39.209760','7','你还记得他身上洗衣液的味道吗?',2,'Changed body.',7,1),(14,'2016-06-01 02:26:04.095770','7','你还记得他身上洗衣液的味道吗?',2,'No fields changed.',7,1),(15,'2016-06-07 14:25:44.383242','8','猪怕',1,'Added.',7,1),(16,'2016-06-07 14:28:36.313076','9','突然很想谈恋爱',1,'Added.',7,1),(17,'2016-06-07 14:35:06.066823','10','猴子和月亮的故事',1,'Added.',7,1),(18,'2016-06-07 14:44:42.799723','11','测试',1,'Added.',7,1),(19,'2016-06-07 14:44:53.710285','12','测试',1,'Added.',7,1),(20,'2016-06-07 14:45:03.596777','13','测试',1,'Added.',7,1),(21,'2016-06-07 14:45:26.142767','5','【小说】喜欢我十九年的男孩结婚了',2,'Changed topped.',7,1),(22,'2016-06-07 14:45:37.061233','10','猴子和月亮的故事',2,'Changed topped.',7,1),(23,'2016-06-07 14:45:42.768324','9','突然很想谈恋爱',2,'Changed topped.',7,1),(24,'2016-06-07 14:45:47.291583','7','你还记得他身上洗衣液的味道吗?',2,'Changed topped.',7,1),(25,'2016-06-07 14:45:56.704539','8','猪怕',2,'Changed topped.',7,1),(26,'2016-06-10 06:53:23.431553','14','测试语法高亮',1,'Added.',7,1),(27,'2016-06-10 06:55:09.453223','14','测试语法高亮',2,'Changed body.',7,1),(28,'2016-06-10 06:55:23.093161','14','测试语法高亮',2,'Changed body.',7,1),(29,'2016-06-10 06:55:41.051856','14','测试语法高亮',2,'No fields changed.',7,1),(30,'2016-06-10 07:00:39.194451','14','测试语法高亮',2,'Changed body.',7,1),(31,'2016-06-10 07:00:52.838862','14','测试语法高亮',2,'Changed body.',7,1),(32,'2016-06-10 07:01:12.100088','14','测试语法高亮',2,'Changed body.',7,1),(33,'2016-06-10 07:03:11.821274','14','测试语法高亮',2,'Changed body.',7,1),(34,'2016-06-10 07:03:23.158699','14','测试语法高亮',2,'Changed body.',7,1),(35,'2016-06-10 12:32:38.118301','14','测试语法高亮',2,'Changed body.',7,1),(36,'2016-06-10 12:33:06.810150','14','测试语法高亮',2,'Changed body.',7,1),(37,'2016-06-10 12:33:16.788252','14','测试语法高亮',2,'Changed body.',7,1),(38,'2016-06-10 12:33:48.554850','14','测试语法高亮',2,'Changed body.',7,1),(39,'2016-06-10 12:35:31.164368','14','测试语法高亮',2,'Changed body.',7,1),(40,'2016-06-10 12:35:47.050148','14','测试语法高亮',2,'Changed body.',7,1),(41,'2016-06-10 12:36:26.391754','14','测试语法高亮',2,'Changed body.',7,1),(42,'2016-06-10 12:36:51.155182','14','测试语法高亮',2,'Changed body.',7,1),(43,'2016-06-14 09:40:57.572416','15','markdown 语法简单使用',1,'Added.',7,1),(44,'2016-06-14 09:42:32.700633','15','markdown 语法简单使用',2,'Changed body.',7,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(7,'blog','article'),(10,'blog','blogcomment'),(8,'blog','category'),(9,'blog','tag'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2016-05-29 13:43:51.243850'),(2,'auth','0001_initial','2016-05-29 13:43:57.496470'),(3,'admin','0001_initial','2016-05-29 13:43:58.902306'),(4,'admin','0002_logentry_remove_auto_add','2016-05-29 13:43:59.036609'),(5,'contenttypes','0002_remove_content_type_name','2016-05-29 13:43:59.948725'),(6,'auth','0002_alter_permission_name_max_length','2016-05-29 13:44:00.701647'),(7,'auth','0003_alter_user_email_max_length','2016-05-29 13:44:01.270444'),(8,'auth','0004_alter_user_username_opts','2016-05-29 13:44:01.335381'),(9,'auth','0005_alter_user_last_login_null','2016-05-29 13:44:01.864262'),(10,'auth','0006_require_contenttypes_0002','2016-05-29 13:44:01.905974'),(11,'auth','0007_alter_validators_add_error_messages','2016-05-29 13:44:01.966543'),(12,'blog','0001_initial','2016-05-29 13:44:03.588319'),(13,'sessions','0001_initial','2016-05-29 13:44:04.165213'),(14,'blog','0002_auto_20160621_0709','2016-06-21 07:09:55.099257'),(15,'blog','0003_auto_20160624_1218','2016-06-24 12:18:26.285534');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('07hq2cb6cp1ec51w9rukvsjignex7cf5','ZmVhZjZmMDhmMDM0YjU5Y2RiM2NmODFkZjI5ZGE2MjdiOTM1NzAzNTp7Il9hdXRoX3VzZXJfaGFzaCI6IjhlY2Q5NGU0YzM1YjIxMmQ4NjM1ZWY0ZjgyYzNkN2E3MmQwOGJiODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-06-24 06:52:17.883688'),('10iwc0orpo0rgvy5wvr3tf1uryqoi3fy','ZmVhZjZmMDhmMDM0YjU5Y2RiM2NmODFkZjI5ZGE2MjdiOTM1NzAzNTp7Il9hdXRoX3VzZXJfaGFzaCI6IjhlY2Q5NGU0YzM1YjIxMmQ4NjM1ZWY0ZjgyYzNkN2E3MmQwOGJiODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-06-24 12:32:30.116144'),('1ardr3862c3ou33meem5aaftk2hz0ep7','ZmVhZjZmMDhmMDM0YjU5Y2RiM2NmODFkZjI5ZGE2MjdiOTM1NzAzNTp7Il9hdXRoX3VzZXJfaGFzaCI6IjhlY2Q5NGU0YzM1YjIxMmQ4NjM1ZWY0ZjgyYzNkN2E3MmQwOGJiODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-07-05 09:35:07.218342'),('5enxb5zxixkhe3de1l32e0c1l4bwqkac','ZmVhZjZmMDhmMDM0YjU5Y2RiM2NmODFkZjI5ZGE2MjdiOTM1NzAzNTp7Il9hdXRoX3VzZXJfaGFzaCI6IjhlY2Q5NGU0YzM1YjIxMmQ4NjM1ZWY0ZjgyYzNkN2E3MmQwOGJiODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-06-15 02:24:47.975782'),('7e5fqobmurehbsd7f5vv64qixu4659gm','ZmVhZjZmMDhmMDM0YjU5Y2RiM2NmODFkZjI5ZGE2MjdiOTM1NzAzNTp7Il9hdXRoX3VzZXJfaGFzaCI6IjhlY2Q5NGU0YzM1YjIxMmQ4NjM1ZWY0ZjgyYzNkN2E3MmQwOGJiODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-06-13 02:20:33.148237'),('jwxgv8iwhunocfgvqg54prhgr7t7ftld','ZmVhZjZmMDhmMDM0YjU5Y2RiM2NmODFkZjI5ZGE2MjdiOTM1NzAzNTp7Il9hdXRoX3VzZXJfaGFzaCI6IjhlY2Q5NGU0YzM1YjIxMmQ4NjM1ZWY0ZjgyYzNkN2E3MmQwOGJiODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-06-12 13:53:03.289909'),('pw7jjkf0635z23m51qjkn6reqwz93wvz','ZmVhZjZmMDhmMDM0YjU5Y2RiM2NmODFkZjI5ZGE2MjdiOTM1NzAzNTp7Il9hdXRoX3VzZXJfaGFzaCI6IjhlY2Q5NGU0YzM1YjIxMmQ4NjM1ZWY0ZjgyYzNkN2E3MmQwOGJiODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-06-21 14:25:23.655448'),('rys7j9d9l8doopoi0fhzq7sgbm717iek','ZmVhZjZmMDhmMDM0YjU5Y2RiM2NmODFkZjI5ZGE2MjdiOTM1NzAzNTp7Il9hdXRoX3VzZXJfaGFzaCI6IjhlY2Q5NGU0YzM1YjIxMmQ4NjM1ZWY0ZjgyYzNkN2E3MmQwOGJiODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-07-30 20:51:25.251121');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-17  8:56:21
