
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `nick_name` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_name` (`user_name`),
  KEY `nick_name` (`nick_name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='学生表1';


INSERT INTO `user` (`id`, `user_name`, `nick_name`) VALUES
	(1, 'xiaohuang', 'huangzai'),
	(2, 'xiaohua', 'huazai'),
	(3, 'xiaoji', 'jizai'),
	(4, 'xiaowang', ''),
	(5, 'xiaoli', ''),
	(6, 'xiaohou', ''),
	(7, 'xiaolizi', NULL),
	(8, 'xiaopeng', 'pengzai'),
	(9, 'xiaohuan', 'huanzai'),
	(10, 'xiaoxiang', 'xiangzai');
	
explain SELECT * FROM user WHERE nick_name IS null

UPDATE user SET nick_name=NULL WHERE id>3