CREATE TABLE `cbb_a` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

CREATE TABLE `cbb_b` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `charttype` varchar(255) DEFAULT NULL COMMENT '图表类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UQ_CHARTTYPE` (`charttype`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

INSERT INTO `cbb_a`(`id`, `name`, `sex`, `age`) VALUES (1, 'gcc1', '女', '1');
INSERT INTO `cbb_a`(`id`, `name`, `sex`, `age`) VALUES (2, 'gcc2', '女', '2');
INSERT INTO `cbb_b`(`id`, `charttype`) VALUES (1, '1');
INSERT INTO `cbb_b`(`id`, `charttype`) VALUES (2, '2');

