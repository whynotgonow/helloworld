DROP TABLE `cbb_b`;

CREATE TABLE `cbb_c` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

CREATE TABLE `cbb_d` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `charttype` varchar(255) DEFAULT NULL COMMENT '图表类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UQ_CHARTTYPE` (`charttype`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;


INSERT INTO `cbb_c`(`id`, `name`, `sex`, `age`) VALUES (100, 'gcc100', '女', '100');
INSERT INTO `cbb_d`(`id`, `charttype`) VALUES (1, '1');
