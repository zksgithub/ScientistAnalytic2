# MySQL-Front 5.1  (Build 1.46)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;


# Host: localhost    Database: scientistanalytic
# ------------------------------------------------------
# Server version 5.0.83-community-nt

DROP DATABASE IF EXISTS `scientistanalytic`;
CREATE DATABASE `scientistanalytic` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `scientistanalytic`;

#
# Source for table ambiguity
#

DROP TABLE IF EXISTS `ambiguity`;
CREATE TABLE `ambiguity` (
  `Id` int(11) NOT NULL auto_increment,
  `ysc` varchar(255) default NULL COMMENT '原始词',
  `jcc` varchar(255) default NULL COMMENT '纠错词',
  `cxbz` varchar(255) default NULL COMMENT '词性标志',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

#
# Dumping data for table ambiguity
#
LOCK TABLES `ambiguity` WRITE;
/*!40000 ALTER TABLE `ambiguity` DISABLE KEYS */;

INSERT INTO `ambiguity` VALUES (1,'习近平','习近平','nr');
INSERT INTO `ambiguity` VALUES (2,'李民工作','李民','nr');
INSERT INTO `ambiguity` VALUES (3,'三个和尚','三个','m');
INSERT INTO `ambiguity` VALUES (4,'的确定不','的确','d');
INSERT INTO `ambiguity` VALUES (5,'大和尚','大','a');
INSERT INTO `ambiguity` VALUES (6,'张三和','张三','nr');
INSERT INTO `ambiguity` VALUES (7,'动漫游戏','动漫','n');
INSERT INTO `ambiguity` VALUES (8,'邓颖超','邓颖超','nr');
INSERT INTO `ambiguity` VALUES (9,'刘振兴','刘振兴','nr');
INSERT INTO `ambiguity` VALUES (10,'山东省昌乐中学山塘分校','山东省昌乐中学山塘分校','nt');
INSERT INTO `ambiguity` VALUES (11,'赵立平','赵立平','nr');
INSERT INTO `ambiguity` VALUES (12,'山东省立潍县师范学校后师部','山东省立潍县师范学校后师部','nt');
/*!40000 ALTER TABLE `ambiguity` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table cxindex
#

DROP TABLE IF EXISTS `cxindex`;
CREATE TABLE `cxindex` (
  `Id` int(11) NOT NULL auto_increment,
  `cxbz` varchar(255) default NULL COMMENT '词性标志',
  `cxsm` varchar(255) default NULL COMMENT '词性说明',
  `color` varchar(255) default NULL,
  `size` varchar(255) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;

#
# Dumping data for table cxindex
#
LOCK TABLES `cxindex` WRITE;
/*!40000 ALTER TABLE `cxindex` DISABLE KEYS */;

INSERT INTO `cxindex` VALUES (1,'n','名词','#0000EE','4');
INSERT INTO `cxindex` VALUES (2,'nr','人名','#006400','19');
INSERT INTO `cxindex` VALUES (3,'nr1','汉语姓氏','#006400','19');
INSERT INTO `cxindex` VALUES (4,'nr2','汉语名字','#006400','19');
INSERT INTO `cxindex` VALUES (5,'nrj','日语人名','#006400','19');
INSERT INTO `cxindex` VALUES (6,'nrf','音译人名','#006400','19');
INSERT INTO `cxindex` VALUES (7,'ns','地名','EEC900','19');
INSERT INTO `cxindex` VALUES (8,'nsf','音译地名','EEC900','19');
INSERT INTO `cxindex` VALUES (9,'nt','机构团体名','#EEEE00','19');
INSERT INTO `cxindex` VALUES (10,'nz','其它专名','#0000EE','4');
INSERT INTO `cxindex` VALUES (11,'nl','名词性惯用语','#0000EE','4');
INSERT INTO `cxindex` VALUES (12,'ng','名词性语素','#0000EE','4');
INSERT INTO `cxindex` VALUES (13,'nw','新词','#0000EE','4');
INSERT INTO `cxindex` VALUES (14,'t','时间词','#A020F0','4');
INSERT INTO `cxindex` VALUES (15,'tg','时间词性语素','#A020F0','4');
INSERT INTO `cxindex` VALUES (16,'s','处所词','#A020F0','4');
INSERT INTO `cxindex` VALUES (17,'f','方位词','#A020F0','4');
INSERT INTO `cxindex` VALUES (18,'v','动词','#EE0000','19');
INSERT INTO `cxindex` VALUES (19,'vd','副动词','#EE0000','19');
INSERT INTO `cxindex` VALUES (20,'vn','名动词','#EE0000','19');
INSERT INTO `cxindex` VALUES (21,'vshi','动词“是”','#EE0000','19');
INSERT INTO `cxindex` VALUES (22,'vyou','动词“有”','#EE0000','19');
INSERT INTO `cxindex` VALUES (23,'vf','趋向动词','#EE0000','19');
INSERT INTO `cxindex` VALUES (24,'vx','形式动词','#EE0000','19');
INSERT INTO `cxindex` VALUES (25,'vi','不及物动词（内动词）','#EE0000','19');
INSERT INTO `cxindex` VALUES (26,'vl','动词性惯用语','#EE0000','19');
INSERT INTO `cxindex` VALUES (27,'vg','动词性语素','#EE0000','19');
INSERT INTO `cxindex` VALUES (28,'a',' 形容词','#A020F0','4');
INSERT INTO `cxindex` VALUES (29,'ad','副形词','#A020F0','4');
INSERT INTO `cxindex` VALUES (30,'an','名形词','#A020F0','4');
INSERT INTO `cxindex` VALUES (31,'ag','形容词性语素','#A020F0','4');
INSERT INTO `cxindex` VALUES (32,'al','形容词性惯用语','#A020F0','4');
INSERT INTO `cxindex` VALUES (33,'b','区别词','#A020F0','4');
INSERT INTO `cxindex` VALUES (34,'bl','区别词性惯用语','#A020F0','4');
INSERT INTO `cxindex` VALUES (35,'z','状态词','#A020F0','4');
INSERT INTO `cxindex` VALUES (36,'r','代词','#A020F0','4');
INSERT INTO `cxindex` VALUES (37,'rr','人称代词','#A020F0','4');
INSERT INTO `cxindex` VALUES (38,'rz','指示代词','#A020F0','4');
INSERT INTO `cxindex` VALUES (39,'rzt','时间指示代词','#A020F0','4');
INSERT INTO `cxindex` VALUES (40,'rzs','处所指示代词','#A020F0','4');
INSERT INTO `cxindex` VALUES (41,'rzv','谓词性指示代词','#A020F0','4');
INSERT INTO `cxindex` VALUES (42,'ry','疑问代词','#A020F0','4');
INSERT INTO `cxindex` VALUES (43,'ryt','时间疑问代词','#A020F0','4');
INSERT INTO `cxindex` VALUES (44,'rys','处所疑问代词','#A020F0','4');
INSERT INTO `cxindex` VALUES (45,'ryv','谓词性疑问代词','#A020F0','4');
INSERT INTO `cxindex` VALUES (46,'rg','代词性语素','#A020F0','4');
INSERT INTO `cxindex` VALUES (47,'m','数词','#3D3D3D','4');
INSERT INTO `cxindex` VALUES (48,'mq','数量词','#3D3D3D','4');
INSERT INTO `cxindex` VALUES (49,'q','量词','#551A8B','4');
INSERT INTO `cxindex` VALUES (50,'qv','动量词','#551A8B','4');
INSERT INTO `cxindex` VALUES (51,'qt','时量词','#551A8B','4');
INSERT INTO `cxindex` VALUES (52,'d','副词','#A020F0','4');
INSERT INTO `cxindex` VALUES (53,'p','介词','#A020F0','4');
INSERT INTO `cxindex` VALUES (54,'pba','介词“把”','#A020F0','4');
INSERT INTO `cxindex` VALUES (55,'pbei','介词“被”','#A020F0','4');
INSERT INTO `cxindex` VALUES (56,'c','连词','#A020F0','4');
INSERT INTO `cxindex` VALUES (57,'cc','并列连词','#A020F0','4');
INSERT INTO `cxindex` VALUES (58,'u','助词','#A020F0','4');
INSERT INTO `cxindex` VALUES (59,'uzhe','着','#A020F0','4');
INSERT INTO `cxindex` VALUES (60,'ule','了 喽','#A020F0','4');
INSERT INTO `cxindex` VALUES (61,'uguo','过','#A020F0','4');
INSERT INTO `cxindex` VALUES (62,'ude1','的 底','#A020F0','4');
INSERT INTO `cxindex` VALUES (63,'ude2','地','#A020F0','4');
INSERT INTO `cxindex` VALUES (64,'ude3','得','#A020F0','4');
INSERT INTO `cxindex` VALUES (65,'usuo','所','#A020F0','4');
INSERT INTO `cxindex` VALUES (66,'udeng','等 等等 云云','#A020F0','4');
INSERT INTO `cxindex` VALUES (67,'uyy','一样 一般 似的 般','#A020F0','4');
INSERT INTO `cxindex` VALUES (68,'udh','的话','#A020F0','4');
INSERT INTO `cxindex` VALUES (69,'uls','来讲 来说 而言 说来','#A020F0','4');
INSERT INTO `cxindex` VALUES (70,'uzhi','之','#A020F0','4');
INSERT INTO `cxindex` VALUES (71,'ulian','连 （“连小学生都会”）','#A020F0','4');
INSERT INTO `cxindex` VALUES (72,'e','叹词','#A020F0','4');
INSERT INTO `cxindex` VALUES (73,'y','语气词(delete yg)','#A020F0','4');
INSERT INTO `cxindex` VALUES (74,'o','拟声词','#A020F0','4');
INSERT INTO `cxindex` VALUES (75,'h','前缀','#A020F0','4');
INSERT INTO `cxindex` VALUES (76,'k','后缀','#A020F0','4');
INSERT INTO `cxindex` VALUES (77,'x','字符串','#A020F0','4');
INSERT INTO `cxindex` VALUES (78,'xx','非语素字','#A020F0','4');
INSERT INTO `cxindex` VALUES (79,'xu','网址URL','#A020F0','4');
INSERT INTO `cxindex` VALUES (80,'w','标点符号','#A020F0','4');
INSERT INTO `cxindex` VALUES (81,'wkz','左括号，全角：（ 〔  ［  ｛  《 【  〖〈   半角：( [ { <','#A020F0','4');
INSERT INTO `cxindex` VALUES (82,'wky','右括号，全角：） 〕  ］ ｝ 》  】 〗 〉 半角： ) ] { >','#A020F0','4');
INSERT INTO `cxindex` VALUES (83,'wyz','左引号，全角：“ ‘ 『','#A020F0','4');
INSERT INTO `cxindex` VALUES (84,'wyy','右引号，全角：” ’ 』','#A020F0','4');
INSERT INTO `cxindex` VALUES (85,'wj','句号，全角：。','#A020F0','4');
INSERT INTO `cxindex` VALUES (86,'ww','问号，全角：？ 半角：?','#A020F0','4');
INSERT INTO `cxindex` VALUES (87,'wt','叹号，全角：！ 半角：!','#A020F0','4');
INSERT INTO `cxindex` VALUES (88,'wd','逗号，全角：， 半角：,','#A020F0','4');
INSERT INTO `cxindex` VALUES (89,'wf','分号，全角：； 半角： ;','#A020F0','4');
INSERT INTO `cxindex` VALUES (90,'wn','顿号，全角：、','#A020F0','4');
INSERT INTO `cxindex` VALUES (91,'wm','冒号，全角：： 半角： :','#A020F0','4');
INSERT INTO `cxindex` VALUES (92,'ws','省略号，全角：……  …','#A020F0','4');
INSERT INTO `cxindex` VALUES (93,'wp','破折号，全角：——   －－   ——－   半角：---  ----','#A020F0','4');
INSERT INTO `cxindex` VALUES (94,'wb','百分号千分号，全角：％ ‰   半角：%','#A020F0','4');
INSERT INTO `cxindex` VALUES (95,'wh','单位符号，全角：￥ ＄ ￡  °  ℃  半角：$','#A020F0','4');
/*!40000 ALTER TABLE `cxindex` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table province
#

DROP TABLE IF EXISTS `province`;
CREATE TABLE `province` (
  `Id` int(11) NOT NULL auto_increment,
  `sfbm` int(11) NOT NULL default '0' COMMENT '省份编码',
  `sfmc` varchar(255) default NULL COMMENT '省份名称',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table province
#
LOCK TABLES `province` WRITE;
/*!40000 ALTER TABLE `province` DISABLE KEYS */;

/*!40000 ALTER TABLE `province` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table scientists
#

DROP TABLE IF EXISTS `scientists`;
CREATE TABLE `scientists` (
  `Id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL COMMENT '名称',
  `content` text COMMENT '生平内容',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

#
# Dumping data for table scientists
#
LOCK TABLES `scientists` WRITE;
/*!40000 ALTER TABLE `scientists` DISABLE KEYS */;

INSERT INTO `scientists` VALUES (2,'刘振兴','1929年9月14农历十二生于山东省县五图乡营子村双胞胎弟弟1935年祖父去世进入营子村小学学习1938年日寇入侵小学学习中断进入私塾学习1940年私塾先生离开私塾变成学堂受学堂老师赵立平建议更名刘振兴原名刘振亨1941年4月27日本军队扫荡游击队营子村是重点逃亡过程刘振兴母亲哥哥打死躲进麦田菜园子躲一劫考上高小1944年1月高小毕业考取山东省昌乐中学山塘分校省一些老师到山村来避难使得教师队伍数学化学语文史教课老师是毕业名牌大学几门课教学效果学习打下基础1946年12月山塘分校毕业1947年9月考取山东省立潍县师范学校后师部1948年2月学校宿舍国民党军队占据中断学习4月潍县解放离开潍县前往青岛6月进入青岛市辖中学是一成立学校没有课桌学生只能坐马扎听课1949年6月青岛解放学校进行整编9月进入青岛市立第四中学二年级学习1950年7月市学校同意提前半年报考大学高中物理数学绝大部分学报考大学几位同学租一阁楼一个多月时间自学没有学完课程复习学课程9月考入山东大学物理系1951年申请转到系批准9月开始休学进入文学教书1952年9月复学回到山东大学物理系学习不久系分专业选择气象专业1953年3月调整到南京大学气象系学习1955年9月大学毕业分配到中国科学院地球物理任实习研究员11月中国科学院组织召开一次钱学森先生报告会地址是礼堂参加报告会作为一个毕业到两个月大学生能参加钱先生报告会令感到1956年7月报考地球物理研究生10月全国副博士统考12月发表论文论陆面蒸发量计算1957年3月录取赵九章研究生是解放先生招收第一个研究生1958年5月参加中国科学院组织一个固沙队分配到气象组发表论文地层大气湍流混合规律性1959年发表论文风力作用砂传输砂丘移动3月刘振兴调入581组承担火箭探测数据处理工作相应专业改大气物理学位论文题目有所改变1960年2月发表论文风砂问题研究Ⅰ地层湍流大气砂传输风砂问题研究Ⅱ风力作用砂丘移动规律性研究5月发表论文地层大气湍流混合规律性1962年6月发表论文流星高层大气分子作用热力学动力学过程11月16毕业中国科学院地球物理研究所高层大气物理专业获副博士研究生学位研究生毕业高层大气组转入磁暴研究组从事磁暴地球辐射带变化研究1963年发表论文             1964年9月濮祖荫地球物理学报合作发表论文磁暴辐射带结构变化濮先生合作达半个世纪1965年磁暴研究小组解散1967年卫星设计院同仁合作我国进行卫星空间粒子环境试验基础编写地球卫星环境手册一书粒子辐射部分1969年随中国科学院应用地球物理研究所到西安1975年我国提出提出太阳风磁层电离层高层大气耦合概念发展一套观测结果复合太阳风谱表达了解地球环境变化机制有科学意义1976年父母世1978年1月发表论文太阳活动磁层扰动天气过程影响3月参与编写地球卫星环境手册一书获全国科学大会奖9月发表论文大气湍流谱有关大气污染问题1979年堂去世参加我国第一次空间物理学术会议作报告太阳风磁层电离层高层大气耦合层气影响1980年4月发表论文层气湍流结构5月9月到美国马里兰大学物理技术研究所做访问学者1981年1月发表论文磁层同步电子通量增理论计算1982年1月发表论文木星磁层结构定态模式旅行者号空间飞船探测数据建立一个木星磁层磁盘模型收入..主编木星磁层物理一书模式称为刘氏模式1983年1月发表论文试验电子湍流等离子体能量变化5月发表论文木星通量管等离子体湍流无线电波激发功率木星磁层模式中国科学院推荐成果10月发表论文倒电子沉降通量能谱理论计算1984年批准中国首批有贡献专家5月发表论文等离子体湍流电子加速1985年冲破三十多年来磁场联研究传统观念首次提出流体涡旋诱发磁场联新机制创建涡旋诱发联理论磁场联研究开辟一条途径12月发表论文等离子体流等离子体片结构影响理论模式磁层过程应用1986年10月15参与汉字信息处理系统工程七四八工程情报检索分系统领导小组主持研制汉语主题词表荣获一九八五年国家科学技术进步奖二等奖1987年28月美国阿拉斯加大学福大学加州大学洛杉矶分校访问讲学合作研究木星磁盘状结构形成原因作研究提出木星磁层状结构可能是木星等离子体存在尺度引起开始研究磁层磁场联2月发表论文        6月发表论文磁通量管传输事件形成整体三维结构8月参与空间环境探测理论研究项目获国家奖三等奖1988年7月发表论文         8月发表论文         1989年美国阿拉斯加大学访问李权教授合作采用电路方法研究磁层过程一研究建立一个太阳风─磁层─电离层电场电流耦合模型篇文章太阳风驱动过程磁层装卸过程统一起来1月发表论文尺度木星磁盘状结构8月15钟鸣中国科学报发表题师承赵九章 成就访空间科学应用研究中心刘振兴研究员报道11月参与撰写空间物理学进展一书荣获四川省颁发四川省科技学术著作奖1990年1月发表论文涡旋诱发联模型Ⅰ动力学特性5月发表论文涡旋诱发联模型Ⅱ通量传输事件理论发表论文                \r\n1991年2月刘振兴提出合作方案得到欧洲空间局3月发表论文磁层边界层太阳风能量磁层传输9月发表论文通量传输事件磁场理论计算观测1992年5月参加中国合作北京多点探测卫星工作会议代表中国科学工作队作合作建议报告获法国图鲁兹市市长勋章1993年10月涡旋诱发联理论地球磁层应用项目获中国科学院奖一等奖11月24我国空间物理科学数据系统签署合作协议刘振兴任中方首席科学家聘科学数据系统指导委员会委员1994年教育局评为教师参加扰动事件学术会议作报告4月中国科学报报道刘振兴提出涡旋诱发联概念国际空间物理认为是联模型8月参加中国地球物理学会第十届学术年会作报告磁层顶区全球联结构效应发表论文中国开展科学合作9月发表论文同行星际条件磁层顶区磁场位形12月发表论文我国磁层物理学研究若干进展1995年3月发表论文磁层顶边界层联过程9月3史斌中国报发表题星空装点记空间科学应用研究中心刘振兴研究员报道重点报道刘振兴生平科学成就10月参加中国地球物理学会第学术年会作报告等离子体片磁层顶区扰动响应磁层尺度等离子体团事件11月当选中国科学院院士12月涡旋诱发联理论磁层应用项目获国家奖三等奖1996年6月4代表中国到法属圭亚那发射场观看Ι卫星发射搭载卫星5火箭飞行软件出现故障发射时发生爆炸Ι计划失败8月14人中国科学报发表题迎接地球空间探测研究飞跃访院士刘振兴10月参加中国地球物理学会第十二届学术年会作报告空间环境经济活动影响开展我国空间环境监测预报建议11月发表论文空间环境监测预报1997年1月刘振兴牵头有关科学家多次讨论提出地球空间双星探测计划4月香山科学会议提出地球空间双星探测计划11月科学项目部空间中心签署双星计划星簇计划合作议定书表示卫星轨道计算载荷研制卫星技术卫星数据地面站方面支持参加中国地球物理学会第十三届学术年会作报告地球磁尾物质抛射中国科学技术期刊编辑学会建会十周年学术研讨会作题祝贺中国科学技术期刊编辑学会成立十周年 满载中国科学技术期刊成绩跨入21世纪报告12月发表论文我国磁层物理研究进展展望2000-2020年国际空间物理探测发展参加地球物理中国建设庆祝中国地球物理学会成立50周年会议作题涡旋诱发联理论应用报告任国际地磁物理协会中国委员会主席1998年2月发表论文涡旋诱发联理论应用10月参加中国地球物理学会第十届学术年会作报告全球磁层粒子成像探测磁暴警报想法11月发表论文加强我院期刊工作 迎接知识创新局面12月1参加寸集庆贺刘光院士工作50周年学术会议作题中国空间物理学发展回顾展望报告获深圳华为奖教1999年9月代表团访华国家航天局提出双星计划合作请求庆祝中华人民共和国成立50周年笔谈会科学技术期刊发展趋势我国科技期刊发展提出意见建议科技期刊科技创新题发表编辑学报9月10月启动双星计划可行性论证参加中国地球物理学会第十五届年会作报告地磁场倒转时期地球多圈层整体发表论文我国磁层物理研究进展10月18参加中国首届学术年会作题21世纪空间物理学展望报告2000年1月7中国科学院主持召开双星计划科学目标论证评审会包括王7名院士与会专家论证评审推荐国家立项发表论文21世纪空间探测展望3月中国双星计划代表团应邀出席巴黎本部召开双星计划阶段方案论证会与会专家阶段方案报告表示满意签订合作协议4月发表论文我国地球空间探测一个台阶地球空间双星探测计划5月22中国科学院航天科技集团北京召开双星计划总体方案可行性论证评审会评审专家委员会认为双星计划空间科学发展应用卫星卫星应用技术发展国家现代化发展相应提高中国国际地位开拓欧洲技术合作方面具有战略性意义评审委员会总体方案可行性评审6月发表论文地球空间双星探测计划有关合作7月17华沙召开第33届国际空间年会刘振兴获得国际空间研究委员会印度空间研究组织联合颁发2000 奖是国际空间研究奖是中国科学家空间研究领域获得国际性奖项发表论文动压冲击停止产生联过程8月20燕国际商报发表题星光刘振兴报道重点报道刘振兴院士学术成就9月参加第五届空间/科学讨论会作报告物理探测研究进展展望10月参加第九届全国空间物理学术讨论会作报告世纪交地球空间探测计划热点科学问题发表论文动压引起局部联11月参观西昌卫星发射中心12月国务院决定双星计划列入十五计划启动2001年1月荣获2000年克拉•拉奖2月19国防科工委主持召开双星计划卫星工程总体讨论会确定双星发射日期订出总体计划进度日程节点会议确定双星计划启动4月母校一题词祝愿母校世纪腾飞17一同学联谊会刘振兴院士生殖生物学家刘训院士母校举行院士报告会19出席第六届中国()全国珠宝展销订货会开幕剪彩仪式参加中国寿光国际蔬菜科技博览会7月参与主编空间物理学进展第3卷出版7月9赴巴黎本部参加中国签署地球空间双星探测计划合作协议仪式10月18获梁利基金科学进步奖11月获局长签署Ⅱ作出贡献证书12月磁层能量传输释放研究项目获得国家奖二等奖12月10参加钱学森科学贡献学术思想研讨会作题钱学森先生我国空间科学应用报告2002年1月刘振兴获得局长项目部主任签发表彰证书6月发表论文物理学交叉特点出席中国科学院研究生院2002年博士学位授予仪式8月发表论文空间科学发展概况发展前景9月参加中国地球空间双星探测计划科学研讨会作题地球空间双星探测计划地球空间双星探测计划进展研究任务方案空间天气母子星座监测计划报告11月发表论文地球空间双星探测计划2003年1月发表论文我国科技期刊发展几点意见5月6刘振兴肖佐做客浪嘉宾聊天室谈空间科学发展展望6月参与主编20世纪中国学术大典天文学空间科学出版7月发表论文地球空间双星探测计划国际合作9月发表论文科技期刊奔小康10月发表论文双星照环宇参加中国地球物理学会第十九届年会作报告2006-2015年我国-物理探测计划国际合作建议10月15刘振兴濮祖荫作客浪网谈神舟飞船发射12月主持双星计划探测一号卫星发射任国际宇航联卫星委员会委员2004年2月当选全国十科技英才4月23做客中央电视台新闻话栏目畅谈火星发现甲烷意义5月主讲空间物理学基础1课程中国科学院研究生院评为2002-2003学年课程7月主持双星计划探测二号卫星发射8月获美国宇航局局长授予项目贡献奖9月聘国家海洋局极地科学重点实验室第一届学术委员会委员10月15聘国防科工委月球探测工程中心月球探测二三期工程研究专家组成员11月中国2004年学术年会提出一箭三星空间风暴计划12月4参加第六届海峡两岸空间/科学研讨会2005年3月出版著作物理学4月刘振兴受邀参加一项称为空间探测领域规模名    国际空间合作项目会议刘振兴项目起一个中文名字人类共存计划发表论文国际共存计划中国空间风暴探测计划5月发表论文中国空间风暴探测计划国际共存计划推动我国科技期刊可持续发展几点意见建议6月评为中关村地区共产党员中国科学院区共产党员8月北京晨报透漏双星计划两颗状态设计寿命可延长一倍参加中国地球物理第二年会作报告双星计划进展空间风暴探测计划11月赴澳门科技大学参加全球华人空间/天气科学大会获欧洲空间局地球空间做出贡献奖2006年1月发表论文建议学术期刊人公益性事业管理思考6月评为中央共产党员7月北京召开36届国际大会分析双星联合观测数据刘振兴院士首次提出锋面触发理论16当选国际宇航科学院通讯院士2007年1月发表论文坚持科技自主创新 推动期刊发展4月12聘北京职业学院荣誉教授5月发表论文探测一号卫星地磁尾观测到尾流统计特性8月6做客腾讯网谈火星探测9月参加历程回顾中国地球物理学会60周年会议作题中国空间物理发展回顾我国空间物理奠基赵九章先生报告9月19做客腾讯科技院士访谈栏目漫谈物理学10月11参加第八届空间天气研讨会2008年1月发表论文导向国际科学 推动科技期刊创新发展任空间科学学报主编9月25做客腾讯网师线系列访谈10月参加母校一建校70周年庆典活动发表讲话2009年1月发表论文学习科学发展观 推动科技期刊发展4月18参加南京大学大气科学学院成立大会大气科学国际论坛9月山东大学威海作一场主题学习实践创新发展报告参加  -13,-17   12月南昌大学作题学习实践创新发展报告聘南昌大学兼职教授2010年7月6做客浪网首都科学讲堂率领团队获国际宇航联颁发双星团队奖2011年1月双星计划获2010年度国家科技进步奖一等奖2月18双星计划国家科技进步一等奖获奖者合影10月17参加中国地球物理学会第二十七届年会作题地球空间双星探测计划科学技术成果报告2012年身体开始家休养2013年9月参与主编空间物理学进展第4卷出版');
INSERT INTO `scientists` VALUES (3,'黄旭华',NULL);
INSERT INTO `scientists` VALUES (4,'陆钟武',NULL);
INSERT INTO `scientists` VALUES (5,'潘家铮',NULL);
INSERT INTO `scientists` VALUES (6,'沈克琦',NULL);
INSERT INTO `scientists` VALUES (7,'陈志恺',NULL);
INSERT INTO `scientists` VALUES (8,'戴元本',NULL);
INSERT INTO `scientists` VALUES (9,'冯纯伯',NULL);
INSERT INTO `scientists` VALUES (10,'冯端',NULL);
INSERT INTO `scientists` VALUES (11,'高守一',NULL);
INSERT INTO `scientists` VALUES (12,'胡含',NULL);
INSERT INTO `scientists` VALUES (13,'蒋亦元',NULL);
INSERT INTO `scientists` VALUES (14,'梁思礼',NULL);
INSERT INTO `scientists` VALUES (15,'沈志云',NULL);
INSERT INTO `scientists` VALUES (16,'唐明述',NULL);
INSERT INTO `scientists` VALUES (17,'涂铭旌',NULL);
INSERT INTO `scientists` VALUES (18,'王德滋',NULL);
INSERT INTO `scientists` VALUES (19,'王翰章',NULL);
INSERT INTO `scientists` VALUES (20,'王金陵',NULL);
INSERT INTO `scientists` VALUES (21,'王文兴',NULL);
INSERT INTO `scientists` VALUES (22,'吴征镒',NULL);
INSERT INTO `scientists` VALUES (23,'谢家荣',NULL);
INSERT INTO `scientists` VALUES (24,'张本仁',NULL);
INSERT INTO `scientists` VALUES (25,'张炳炎',NULL);
INSERT INTO `scientists` VALUES (26,'钟香崇',NULL);
INSERT INTO `scientists` VALUES (27,'钟训正',NULL);
/*!40000 ALTER TABLE `scientists` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table scientists_year
#

DROP TABLE IF EXISTS `scientists_year`;
CREATE TABLE `scientists_year` (
  `Id` int(11) NOT NULL auto_increment,
  `noun` varchar(255) default NULL COMMENT '名词',
  `verb` varchar(255) default NULL COMMENT '动词',
  `noun2` varchar(255) default NULL COMMENT '名词',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='按科学家成长的年份进行数据处理';

#
# Dumping data for table scientists_year
#
LOCK TABLES `scientists_year` WRITE;
/*!40000 ALTER TABLE `scientists_year` DISABLE KEYS */;

/*!40000 ALTER TABLE `scientists_year` ENABLE KEYS */;
UNLOCK TABLES;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
