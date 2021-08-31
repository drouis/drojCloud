/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 50703
 Source Host           : 127.0.0.1:3306
 Source Schema         : droj-uc

 Target Server Type    : MySQL
 Target Server Version : 50703
 File Encoding         : 65001

 Date: 31/08/2021 18:44:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ums_member
-- ----------------------------
DROP TABLE IF EXISTS `ums_member`;
CREATE TABLE `ums_member`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '数据主键',
  `username` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `phone` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '手机号码',
  `password` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '密码',
  `is_administration` int(11) NULL DEFAULT NULL COMMENT '来源管理员:0是联系人用户，1是系统用户, 2是商户用户',
  `status` int(11) NULL DEFAULT NULL COMMENT '帐号启用状态:0->禁用；1->启用',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '注册时间',
  `wechat_open_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_username_phone`(`username`, `phone`) USING BTREE,
  INDEX `id`(`id`) USING BTREE,
  INDEX `username`(`username`) USING BTREE,
  INDEX `phone`(`phone`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1216 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ums_member
-- ----------------------------
INSERT INTO `ums_member` VALUES (1165, 'wire733ij9m71ici', 'admin', '', '$2a$10$E3V7pzYxoXCj46KfnvuiO.qj1NZyQbr5sqp/DA1iwmsVr/TCAnZmu', 1, 1, '2020-08-18 17:41:55', '');
INSERT INTO `ums_member` VALUES (1169, '68wlo6k7qbh0vkcm', 'dongqi', '17607671513', '$2a$10$E3V7pzYxoXCj46KfnvuiO.qj1NZyQbr5sqp/DA1iwmsVr/TCAnZmu', 1, 1, '2021-03-12 14:22:13', '');
INSERT INTO `ums_member` VALUES (1170, '26pqmmavnnaeipfo', 'caiwu123', '18556565656', '$2a$10$E3V7pzYxoXCj46KfnvuiO.qj1NZyQbr5sqp/DA1iwmsVr/TCAnZmu', 1, 1, '2021-03-29 10:38:46', '');
INSERT INTO `ums_member` VALUES (1171, 'ml00wow5rnehb5tm', 'demo', '18812345678', '$2a$10$E3V7pzYxoXCj46KfnvuiO.qj1NZyQbr5sqp/DA1iwmsVr/TCAnZmu', 1, 1, '2021-03-30 16:49:16', '');
INSERT INTO `ums_member` VALUES (1172, 'pp08n7ppmrt5ec0h', 'tutu', '18611977534', '$2a$10$E3V7pzYxoXCj46KfnvuiO.qj1NZyQbr5sqp/DA1iwmsVr/TCAnZmu', 1, 1, '2021-03-30 18:14:20', NULL);
INSERT INTO `ums_member` VALUES (1173, 'bcf6mhjk856bp4rh', 'baobashi@mail.com', '13011000117', '$2a$10$rBoXpsENIvQgIyeYBFU3O.N4.DjVPRraM7P24N2znQGBOtoNpv6Yy', 0, 1, '2021-04-02 14:21:27', '');
INSERT INTO `ums_member` VALUES (1174, 'a2uoq29tbkjt0oql', 'guoshunzulin@mail.com', '13011000111', '$2a$10$HDgj/iZg2n3n2.o8iX8/l.eUJDJxc./qQTadP3OzhbVwlkMF40v5.', 0, 1, '2021-04-02 14:21:27', '');
INSERT INTO `ums_member` VALUES (1175, 'up3ic9krn7pac34h', 'guoyaojilin@mail.com', '13011000104', '$2a$10$u3BOKBjgWu7FfmgPZ/bVkuXb.m.QcDvBAxn4uNfJ3gT9iDOqOeBBC', 0, 1, '2021-04-02 14:21:27', '');
INSERT INTO `ums_member` VALUES (1176, 's55kansq222m2rbh', 'guoyaoqingdao@mail.com', '13011000121', '$2a$10$.qDq/Ax4Kf20/5XHjiyHZuGMsKj6dnQlgqEULtBWOVGiNTb.qv4P2', 0, 1, '2021-04-02 14:21:27', '');
INSERT INTO `ums_member` VALUES (1177, 'tbn215vl894t243l', 'guoyaoshanghai@mail.com', '13011000101', '$2a$10$UE2SuGdtMYnD7MD3WgL.Fudc7.KwZ7.qYYRal.SQLLC9XslcAqL4a', 0, 1, '2021-04-02 14:21:27', '');
INSERT INTO `ums_member` VALUES (1178, 'kcetknn103ctl50k', 'guoyaotianjin@mail.com', '13011000106', '$2a$10$t9riobnrkUfe4Z7fxDzuD.WZ1lVoNmaGJwR9AKGlvNrqXJkcLOg5K', 0, 1, '2021-04-02 14:21:27', '');
INSERT INTO `ums_member` VALUES (1179, 'bj4k57rddd7cbe9j', 'guoyaoweifang@mail.com', '13011000108', '$2a$10$CMOb.v/gWZ0YtO.AuFm16.BS1Jy641J0QtYIvS/mfo.7wvTtCFUaW', 0, 1, '2021-04-02 14:21:27', '');
INSERT INTO `ums_member` VALUES (1180, 'qd9c5putnpna7bfn', 'guoyaoyunnan@mail.com', '13011000102', '$2a$10$ZcS50bfwHOHLr1EQypewsOlcau7d5u2ZDvIgtJtrgDjUa/93Q4oyq', 0, 1, '2021-04-02 14:21:27', '');
INSERT INTO `ums_member` VALUES (1181, 'r9twkhrkltn0usih', 'haizhiyiliao@mail.com', '13011000115', '$2a$10$867KRX3uPzSEzR7TUl130.bJggDLcLMRmf8rtj4PLXTgmrxoi7.by', 0, 1, '2021-04-02 14:21:27', '');
INSERT INTO `ums_member` VALUES (1182, 's4k49bdnkmpmp40i', 'jushengfu@mail.com', '13011000113', '$2a$10$7ShaNWmQmZb4a1UaNQuUl.qLkNDdM.uFfCMbAvBVyjpWZYJott6ji', 0, 1, '2021-04-02 14:21:27', '');
INSERT INTO `ums_member` VALUES (1183, '9f0imm1po8bp1drj', 'juxinquan@mail.com', '13011000112', '$2a$10$0laYYHKmsFQpoFU6yb5yqez4iv.Fxc3RnWlWeGaSsM/aZ7lLqweAq', 0, 1, '2021-04-02 14:21:27', '');
INSERT INTO `ums_member` VALUES (1184, 'sjer10l666qlwcin', 'keyunlian@mail.com', '13011000119', '$2a$10$8SVHccB0xeWgazyWmZJi0.tYnLZI65ocR6zs1PFXdb30JJOdH1mgy', 0, 1, '2021-04-02 14:21:27', '');
INSERT INTO `ums_member` VALUES (1185, 'fw7wbt1aow3qcqei', 'naxinshengwu@mail.com', '13011000110', '$2a$10$.sJ2HHT1YqGuddAq1leo0usCyr/U.OQ.v9I2.gmqB6BHzo3V9c.7a', 0, 1, '2021-04-02 14:21:27', '');
INSERT INTO `ums_member` VALUES (1186, '3uce2dhc10wae7ml', 'qishengbaoli@mail.com', '13011000122', '$2a$10$GdyRW49Z7szSmuw3TzBJt.2JeliHWppbOmeYVDsQGgoXKyuIU6yQG', 0, 1, '2021-04-02 14:21:27', '');
INSERT INTO `ums_member` VALUES (1187, 'dh8m28caumu0e9sm', 'qishenggongyinglian@mail.com', '13011000126', '$2a$10$QA26JS327F.LBWEcxeeWWeXHsUetvTP68znIpQLzdhWjIaczPLvo.', 0, 1, '2021-04-02 14:21:27', '');
INSERT INTO `ums_member` VALUES (1188, 'mora9me86imu3bdm', 'qishengjufu@mail.com', '13011000114', '$2a$10$6l6qanyvWwI9yQjQxcUUK.7pNOrN5FdL3Huf9Ff9BhCW9RvQxZjYa', 0, 1, '2021-04-02 14:21:27', '');
INSERT INTO `ums_member` VALUES (1189, 'rbec9iwecin66tdn', 'qishengshiye@mail.com', '13011000107', '$2a$10$leV2CsYKA./JV9SENYMYwOXlDQZGYyTFNiASSOQZBt8hU4fDOWvau', 0, 1, '2021-04-02 14:21:27', '');
INSERT INTO `ums_member` VALUES (1190, 'v3nl4um4kqnt6wfi', 'rongshunbaoli@mail.com', '13011000123', '$2a$10$cd9QO7jYRsfRFPCYZhfu2.dzGVhcpft3jfgG1zNviceaQi6Pyzo36', 0, 1, '2021-04-02 14:21:27', '');
INSERT INTO `ums_member` VALUES (1191, 'ouoekh9l2w832ojk', 'sanliangkeji@mail.com', '13011000103', '$2a$10$iiCmyaJFX/1VBNgEaq5ZgOXR8K5s3fR5ep7Nlv2olyyv1qMAa6nEy', 0, 1, '2021-04-02 14:21:27', '');
INSERT INTO `ums_member` VALUES (1192, 'f675r2570k2b9jui', 'shiliaobencao@mail.com', '13011000120', '$2a$10$7oSCQ1dqOLtW15pmdSo.G.ygbhvLrtG/mmMHq2lusO2rS3Uyviw8S', 0, 1, '2021-04-02 14:21:27', '');
INSERT INTO `ums_member` VALUES (1193, '7ll16nld403mnsqi', 'yaoxintao@mail.com', '13011000118', '$2a$10$YbfdVjfvSCkjsfAXr8YomOVYMJbz7sThsf37sbyBouBAFw4qnnk.K', 0, 1, '2021-04-02 14:21:27', '');
INSERT INTO `ums_member` VALUES (1194, 'd8l8hfro7wh37hph', 'yisanyi@mail.com', '13011000105', '$2a$10$Uprw5zLtabTLc8SDMLyM/e5qb.fkSMFY5VkDfRe1MzyRxgKGaflO6', 0, 1, '2021-04-02 14:21:27', '');
INSERT INTO `ums_member` VALUES (1195, 'vt1mjih363dbdali', 'yizhanzhineng@mail.com', '13011000124', '$2a$10$KHrGBUsax4uHS./mMqMAte9UzUvWstNKf.KjLFG9LpVRNndmI7Po6', 0, 1, '2021-04-02 14:21:27', '');
INSERT INTO `ums_member` VALUES (1196, 'ds4cqanmesjhu4tn', 'youzhengai@mail.com', '13011000109', '$2a$10$60x/UstQjhVqZeWDoWi8SeA4W/sE37y.GnGw71JCv25r5yyxgnOYW', 0, 1, '2021-04-02 14:21:27', '');
INSERT INTO `ums_member` VALUES (1197, 'sv9872pk7e66oatl', 'yundongjia@mail.com', '13011000125', '$2a$10$4PGzizCx4Tv5ogWuWIf7Ge6X0oA0MXcns6Dx2MUMUXoo//.dlh6DK', 0, 1, '2021-04-02 14:21:27', '');
INSERT INTO `ums_member` VALUES (1198, 'j86aek69r462lubi', 'zhiyunlian@mail.com', '13011000116', '$2a$10$I0Q8fdD1KB34TYUWqIAfJunx.hu2RC0A7uL6vYe0EovDFhuLEAFb2', 0, 1, '2021-04-02 14:21:27', '');
INSERT INTO `ums_member` VALUES (1210, '7ii57nwo3mm4d3fi', '49616026@mail.com', '18611977534', '$2a$10$eUB5FawVpGYxdzhYRBY1Q.EmtAwOE1qFY4wBxZUZ5QAyAram5CfNS', 0, 1, '2021-05-10 17:47:36', '');
INSERT INTO `ums_member` VALUES (1214, 've51k5cnujba06jm', 'bangzhuti', '12346434567', '$2a$10$D3K5KEk0uPwOX2BsOn3Ybu/0CKbZZTykZ69td9hX2FHlS/3CXuiNS', 0, 1, '2021-05-28 21:10:03', '');
INSERT INTO `ums_member` VALUES (1215, 's3l3p2wwookqu8en', 'liqiang', '18565890306', '$2a$10$jfjkTbgOj9jdcvV0sp01oOwrMVTrjA7UhwEeZPprGQdtD0lohw2X.', 1, 1, '2021-06-02 11:33:42', '');

-- ----------------------------
-- Table structure for ums_member_info
-- ----------------------------
DROP TABLE IF EXISTS `ums_member_info`;
CREATE TABLE `ums_member_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `nickname` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `phone` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '手机号码',
  `icon` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '头像',
  `gender` int(11) NULL DEFAULT NULL COMMENT '性别：0->未知；1->男；2->女',
  `birthday` date NULL DEFAULT NULL COMMENT '生日',
  `city` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '所在城市',
  `job` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '职业',
  `source_type` int(11) NULL DEFAULT NULL COMMENT '用户来源',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '注册时间',
  `wechat_open_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ums_member_info
-- ----------------------------
INSERT INTO `ums_member_info` VALUES (1, 'qishenggongyinglian@mail.com', '企升供应链', '13011000126', '', NULL, NULL, '', '', NULL, '2021-04-02 14:21:27', '');
INSERT INTO `ums_member_info` VALUES (2, 'qishengbaoli@mail.com', '企升保理', '13011000122', '', NULL, NULL, '', '', NULL, '2021-04-02 14:21:27', '');
INSERT INTO `ums_member_info` VALUES (3, 'rongshunbaoli@mail.com', '融顺保理', '13011000123', '', NULL, NULL, '', '', NULL, '2021-04-02 14:21:27', '');
INSERT INTO `ums_member_info` VALUES (4, 'guoshunzulin@mail.com', '国顺租赁', '13011000111', '', NULL, NULL, '', '', NULL, '2021-04-02 14:21:27', '');
INSERT INTO `ums_member_info` VALUES (5, 'yundongjia@mail.com', '运动加', '13011000125', '', NULL, NULL, '', '', NULL, '2021-04-02 14:21:27', '');
INSERT INTO `ums_member_info` VALUES (6, 'zhiyunlian@mail.com', '智云链', '13011000116', '', NULL, NULL, '', '', NULL, '2021-04-02 14:21:27', '');
INSERT INTO `ums_member_info` VALUES (7, 'keyunlian@mail.com', '科云联', '13011000119', '', NULL, NULL, '', '', NULL, '2021-04-02 14:21:27', '');
INSERT INTO `ums_member_info` VALUES (8, 'qishengshiye@mail.com', '企升实业', '13011000107', '', NULL, NULL, '', '', NULL, '2021-04-02 14:21:27', '');
INSERT INTO `ums_member_info` VALUES (9, 'juxinquan@mail.com', '聚鑫泉', '13011000112', '', NULL, NULL, '', '', NULL, '2021-04-02 14:21:27', '');
INSERT INTO `ums_member_info` VALUES (10, 'jushengfu@mail.com', '聚升富', '13011000113', '', NULL, NULL, '', '', NULL, '2021-04-02 14:21:27', '');
INSERT INTO `ums_member_info` VALUES (11, 'qishengjufu@mail.com', '企升聚富', '13011000114', '', NULL, NULL, '', '', NULL, '2021-04-02 14:21:27', '');
INSERT INTO `ums_member_info` VALUES (12, 'haizhiyiliao@mail.com', '海智医疗', '13011000115', '', NULL, NULL, '', '', NULL, '2021-04-02 14:21:27', '');
INSERT INTO `ums_member_info` VALUES (13, 'shiliaobencao@mail.com', '食疗本草', '13011000120', '', NULL, NULL, '', '', NULL, '2021-04-02 14:21:27', '');
INSERT INTO `ums_member_info` VALUES (14, 'yaoxintao@mail.com', '耀新淘', '13011000118', '', NULL, NULL, '', '', NULL, '2021-04-02 14:21:27', '');
INSERT INTO `ums_member_info` VALUES (15, 'baobashi@mail.com', '保巴适', '13011000117', '', NULL, NULL, '', '', NULL, '2021-04-02 14:21:27', '');
INSERT INTO `ums_member_info` VALUES (16, 'youzhengai@mail.com', '优正艾', '13011000109', '', NULL, NULL, '', '', NULL, '2021-04-02 14:21:27', '');
INSERT INTO `ums_member_info` VALUES (17, 'sanliangkeji@mail.com', '三良科技', '13011000103', '', NULL, NULL, '', '', NULL, '2021-04-02 14:21:27', '');
INSERT INTO `ums_member_info` VALUES (18, 'guoyaojilin@mail.com', '国药吉林', '13011000104', '', NULL, NULL, '', '', NULL, '2021-04-02 14:21:27', '');
INSERT INTO `ums_member_info` VALUES (19, 'guoyaoqingdao@mail.com', '国药青岛', '13011000121', '', NULL, NULL, '', '', NULL, '2021-04-02 14:21:27', '');
INSERT INTO `ums_member_info` VALUES (20, 'guoyaoweifang@mail.com', '国药潍坊', '13011000108', '', NULL, NULL, '', '', NULL, '2021-04-02 14:21:27', '');
INSERT INTO `ums_member_info` VALUES (21, 'guoyaoshanghai@mail.com', '国药上海', '13011000101', '', NULL, NULL, '', '', NULL, '2021-04-02 14:21:27', '');
INSERT INTO `ums_member_info` VALUES (22, 'guoyaotianjin@mail.com', '国药天津', '13011000106', '', NULL, NULL, '', '', NULL, '2021-04-02 14:21:27', '');
INSERT INTO `ums_member_info` VALUES (23, 'guoyaoyunnan@mail.com', '国药云南', '13011000102', '', NULL, NULL, '', '', NULL, '2021-04-02 14:21:27', '');
INSERT INTO `ums_member_info` VALUES (24, 'naxinshengwu@mail.com', '纳新生物', '13011000110', '', NULL, NULL, '', '', NULL, '2021-04-02 14:21:27', '');
INSERT INTO `ums_member_info` VALUES (25, 'yizhanzhineng@mail.com', '一站智能', '13011000124', '', NULL, NULL, '', '', NULL, '2021-04-02 14:21:27', '');
INSERT INTO `ums_member_info` VALUES (26, 'yisanyi@mail.com', '壹叁壹', '13011000105', '', NULL, NULL, '', '', NULL, '2021-04-02 14:21:27', '');

-- ----------------------------
-- Table structure for ums_member_login_log
-- ----------------------------
DROP TABLE IF EXISTS `ums_member_login_log`;
CREATE TABLE `ums_member_login_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `admin_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '系统管理员业务ID',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建系统时间',
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '访问IP',
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_agent` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '浏览器登录类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2451 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ums_member_login_log
-- ----------------------------
INSERT INTO `ums_member_login_log` VALUES (2238, '1172', '2021-07-15 16:14:25', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2239, '1214', '2021-07-15 16:15:17', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2240, '1172', '2021-07-15 16:17:47', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2241, '1172', '2021-07-15 17:01:23', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2242, '1215', '2021-07-15 17:10:42', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2243, '1215', '2021-07-15 17:10:46', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2244, '1215', '2021-07-15 17:10:47', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2245, '1215', '2021-07-15 17:10:47', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2246, '1215', '2021-07-15 17:10:54', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2247, '1165', '2021-07-15 17:10:57', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2248, '1215', '2021-07-15 17:11:31', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2249, '1215', '2021-07-15 17:11:36', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2250, '1215', '2021-07-15 17:17:09', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2251, '1165', '2021-07-15 17:17:19', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2252, '1215', '2021-07-15 17:18:14', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2253, '1215', '2021-07-15 17:21:54', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2254, '1173', '2021-07-15 17:43:42', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2255, '1173', '2021-07-15 17:44:21', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2256, '1173', '2021-07-15 17:50:22', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2257, '1215', '2021-07-15 17:50:31', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2258, '1172', '2021-07-16 10:01:50', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2259, '1215', '2021-07-16 15:00:11', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2260, '1169', '2021-07-16 15:09:39', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2261, '1165', '2021-07-16 15:09:54', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2262, '1165', '2021-07-16 15:14:06', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2263, '1214', '2021-07-19 10:50:16', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2264, '1215', '2021-07-19 10:50:26', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2265, '1165', '2021-07-19 11:23:23', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2266, '1165', '2021-07-19 15:46:39', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2267, '1215', '2021-07-20 09:33:01', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2268, '1165', '2021-07-20 09:55:59', '192.168.2.100', '登录失败，密码不正确', NULL);
INSERT INTO `ums_member_login_log` VALUES (2269, '1165', '2021-07-20 09:56:00', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2270, '1165', '2021-07-21 09:49:03', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2271, '1215', '2021-07-21 10:02:02', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2272, '1165', '2021-07-21 10:22:14', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2273, '1215', '2021-07-22 09:32:25', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2274, '1215', '2021-07-23 09:19:47', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2275, '1165', '2021-07-23 11:00:16', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2276, '1165', '2021-07-23 11:07:09', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2277, '1172', '2021-07-23 11:11:19', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2278, '1215', '2021-07-23 14:37:30', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2279, '1172', '2021-07-23 14:45:45', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2280, '1215', '2021-07-26 09:54:59', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2281, '1165', '2021-07-26 10:04:46', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2282, '1215', '2021-07-26 10:09:17', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2283, '1165', '2021-07-26 10:58:16', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2284, '1165', '2021-07-26 18:59:52', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2285, '1165', '2021-07-27 14:53:23', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2286, '1215', '2021-07-27 14:55:05', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2287, '1165', '2021-07-27 15:00:27', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2288, '1173', '2021-07-27 15:06:22', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2289, '1173', '2021-07-27 15:08:01', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2290, '1165', '2021-07-27 16:41:50', '192.168.2.100', '登录失败，密码不正确', NULL);
INSERT INTO `ums_member_login_log` VALUES (2291, '1165', '2021-07-27 16:41:53', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2292, '1215', '2021-07-27 18:15:41', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2293, '1165', '2021-07-27 18:15:48', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2294, '1165', '2021-07-28 11:06:50', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2295, '1172', '2021-07-28 11:53:19', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2296, '1171', '2021-07-28 11:55:02', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2297, '1215', '2021-07-28 11:57:30', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2298, '1171', '2021-07-28 14:56:28', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2299, '1171', '2021-07-28 15:17:16', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2300, '1165', '2021-07-28 17:30:59', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2301, '1172', '2021-07-28 18:23:28', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2302, '1172', '2021-07-28 18:50:43', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2303, '1172', '2021-07-28 18:54:38', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2304, '1215', '2021-07-29 09:21:04', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2305, '1171', '2021-07-29 09:31:36', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2306, '1171', '2021-07-29 09:53:56', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2307, '1172', '2021-07-29 09:54:21', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2308, '1165', '2021-07-29 09:55:15', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2309, '1172', '2021-07-29 10:02:35', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2310, '1172', '2021-07-29 10:04:10', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2311, '1215', '2021-07-29 10:27:07', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2312, '1173', '2021-07-29 10:27:46', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2313, '1172', '2021-07-29 10:28:48', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2314, '1172', '2021-07-29 11:29:47', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2315, '1172', '2021-07-29 11:54:19', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2316, '1172', '2021-07-29 12:06:31', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2317, '1172', '2021-07-29 13:39:52', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2318, '1172', '2021-07-29 14:05:51', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2319, '1214', '2021-07-29 14:25:34', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2320, '1172', '2021-07-29 14:28:46', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2321, '1215', '2021-07-29 14:35:13', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2322, '1165', '2021-07-29 14:48:44', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2323, '1215', '2021-07-29 16:48:15', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2324, '1215', '2021-07-29 16:48:43', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2325, '1215', '2021-07-29 16:50:40', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2326, '1215', '2021-07-29 16:57:23', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2327, '1215', '2021-07-29 17:06:02', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2328, '1215', '2021-07-29 17:48:48', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2329, '1172', '2021-07-29 17:54:39', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2330, '1215', '2021-07-30 09:16:45', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2331, '1165', '2021-07-30 10:05:24', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2332, '1165', '2021-07-30 11:37:54', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2333, '1165', '2021-07-30 11:57:43', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2334, '1165', '2021-07-30 16:32:34', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2335, '1191', '2021-07-30 16:52:18', '192.168.2.100', '登录失败，密码不正确', NULL);
INSERT INTO `ums_member_login_log` VALUES (2336, '1191', '2021-07-30 16:52:30', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2337, '1175', '2021-07-30 16:56:55', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2338, '1175', '2021-07-30 17:13:24', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2339, '1175', '2021-07-30 17:23:04', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2340, '1215', '2021-08-02 10:06:31', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2341, '1165', '2021-08-02 10:08:07', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2342, '1215', '2021-08-02 10:38:01', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2343, '1172', '2021-08-02 14:21:09', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2344, '1215', '2021-08-02 15:26:12', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2345, '1165', '2021-08-02 15:30:44', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2346, '1165', '2021-08-02 15:44:24', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2347, '1165', '2021-08-02 15:46:30', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2348, '1169', '2021-08-02 15:49:24', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2349, '1169', '2021-08-02 15:53:46', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2350, '1215', '2021-08-02 16:09:38', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2351, '1165', '2021-08-02 16:09:49', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2352, '1165', '2021-08-02 16:10:12', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2353, '1165', '2021-08-02 16:10:13', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2354, '1165', '2021-08-02 16:10:23', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2355, '1175', '2021-08-02 16:25:26', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2356, '1175', '2021-08-02 17:32:48', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2357, '1215', '2021-08-02 17:50:33', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2358, '1215', '2021-08-02 18:03:07', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2359, '1215', '2021-08-02 18:08:38', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2360, '1215', '2021-08-02 18:10:54', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2361, '1215', '2021-08-02 18:16:05', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2362, '1215', '2021-08-02 18:18:41', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2363, '1215', '2021-08-02 18:45:30', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2364, '1215', '2021-08-02 19:07:31', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2365, '1215', '2021-08-02 19:07:42', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2366, '1215', '2021-08-02 19:07:48', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2367, '1165', '2021-08-03 10:16:27', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2368, '1215', '2021-08-03 10:18:09', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2369, '1165', '2021-08-03 10:41:33', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2370, '1215', '2021-08-03 11:24:25', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2371, '1215', '2021-08-03 14:17:42', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2372, '1165', '2021-08-03 15:16:08', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2373, '1165', '2021-08-03 15:16:08', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2374, '1165', '2021-08-03 15:16:08', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2375, '1165', '2021-08-03 15:16:08', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2376, '1165', '2021-08-03 15:16:08', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2377, '1165', '2021-08-03 15:16:09', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2378, '1165', '2021-08-03 15:16:11', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2379, '1165', '2021-08-03 15:16:11', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2380, '1165', '2021-08-03 15:16:11', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2381, '1165', '2021-08-03 15:16:11', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2382, '1165', '2021-08-03 15:16:11', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2383, '1165', '2021-08-03 15:16:11', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2384, '1165', '2021-08-03 15:16:11', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2385, '1165', '2021-08-03 15:16:11', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2386, '1165', '2021-08-03 15:16:11', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2387, '1165', '2021-08-03 15:16:13', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2388, '1165', '2021-08-03 15:16:13', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2389, '1165', '2021-08-03 15:16:13', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2390, '1165', '2021-08-03 15:16:13', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2391, '1165', '2021-08-03 15:16:13', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2392, '1215', '2021-08-03 16:49:26', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2393, '1215', '2021-08-03 17:46:57', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2394, '1172', '2021-08-04 10:19:33', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2395, '1165', '2021-08-04 10:55:15', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2396, '1215', '2021-08-04 13:44:53', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2397, '1215', '2021-08-04 13:46:38', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2398, '1215', '2021-08-04 13:49:06', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2399, '1215', '2021-08-04 13:50:20', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2400, '1215', '2021-08-04 13:52:29', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2401, '1215', '2021-08-04 13:53:54', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2402, '1215', '2021-08-04 13:54:30', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2403, '1215', '2021-08-04 13:57:03', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2404, '0', '2021-08-04 13:57:47', '192.168.2.100', '登录失败，admim访问用户不存在', NULL);
INSERT INTO `ums_member_login_log` VALUES (2405, '1165', '2021-08-04 13:57:56', '192.168.2.100', '登录失败，密码不正确', NULL);
INSERT INTO `ums_member_login_log` VALUES (2406, '1165', '2021-08-04 13:58:00', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2407, '1215', '2021-08-04 14:00:29', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2408, '1165', '2021-08-04 14:00:44', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2409, '1165', '2021-08-04 14:02:06', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2410, '1215', '2021-08-04 14:08:38', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2411, '1165', '2021-08-04 14:17:08', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2412, '1215', '2021-08-04 14:21:48', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2413, '1215', '2021-08-04 14:22:03', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2414, '1215', '2021-08-04 14:22:23', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2415, '1215', '2021-08-04 14:33:37', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2416, '1215', '2021-08-04 14:39:51', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2417, '1165', '2021-08-04 14:43:03', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2418, '0', '2021-08-04 17:10:10', '192.168.2.100', '登录失败， admin访问用户不存在', NULL);
INSERT INTO `ums_member_login_log` VALUES (2419, '0', '2021-08-04 17:10:13', '192.168.2.100', '登录失败， admin访问用户不存在', NULL);
INSERT INTO `ums_member_login_log` VALUES (2420, '0', '2021-08-04 17:10:18', '192.168.2.100', '登录失败， admin访问用户不存在', NULL);
INSERT INTO `ums_member_login_log` VALUES (2421, '0', '2021-08-04 17:10:25', '192.168.2.100', '登录失败， admin访问用户不存在', NULL);
INSERT INTO `ums_member_login_log` VALUES (2422, '1165', '2021-08-04 17:10:30', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2423, '1165', '2021-08-05 09:43:51', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2424, '1215', '2021-08-05 09:48:49', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2425, '1165', '2021-08-05 18:16:12', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2426, '1165', '2021-08-05 18:16:46', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2427, '1175', '2021-08-05 18:35:50', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2428, '1215', '2021-08-06 10:02:47', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2429, '1165', '2021-08-06 10:10:33', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2430, '1165', '2021-08-06 10:11:15', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2431, '1215', '2021-08-06 10:53:25', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2432, '1172', '2021-08-06 10:53:27', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2433, '1172', '2021-08-06 10:54:56', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2434, '1215', '2021-08-06 10:57:01', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2435, '1165', '2021-08-06 14:55:08', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2436, '1165', '2021-08-06 15:49:05', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2437, '1165', '2021-08-06 15:49:44', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2438, '1165', '2021-08-06 16:48:05', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2439, '1165', '2021-08-06 17:14:38', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2440, '1172', '2021-08-06 17:59:33', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2441, '1165', '2021-08-06 18:03:34', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2442, '1169', '2021-08-06 18:04:49', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2443, '1215', '2021-08-06 18:07:24', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2444, '1165', '2021-08-06 18:07:46', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2445, '1165', '2021-08-06 18:08:45', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2446, '1165', '2021-08-06 18:19:33', '192.168.2.100', '登录失败，密码不正确', NULL);
INSERT INTO `ums_member_login_log` VALUES (2447, '1165', '2021-08-06 18:19:37', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2448, '1172', '2021-08-06 18:20:31', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2449, '1172', '2021-08-06 19:14:11', '192.168.2.100', '登录成功', NULL);
INSERT INTO `ums_member_login_log` VALUES (2450, '1175', '2021-08-06 19:57:00', '192.168.2.100', '登录成功', NULL);

-- ----------------------------
-- Table structure for ums_permission
-- ----------------------------
DROP TABLE IF EXISTS `ums_permission`;
CREATE TABLE `ums_permission`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '业务ID，关联自联Pid',
  `pid` bigint(20) NULL DEFAULT NULL COMMENT '父级权限id,0父权限(系统权限总类别)',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `value` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限值',
  `icon` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标',
  `type` int(11) NULL DEFAULT NULL COMMENT '权限类型：0->目录；1->菜单；2->按钮（接口绑定权限）；9->权限分类',
  `uri` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '前端资源路径',
  `status` int(11) NULL DEFAULT NULL COMMENT '启用状态；0->禁用；1->启用',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `sort` int(11) NULL DEFAULT 0 COMMENT '排序',
  `permission_memo_1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '系统权限备用字段1',
  `permission_memo_2` int(11) NULL DEFAULT NULL COMMENT '系统权限备用字段2',
  `permission_memo_3` bigint(20) NULL DEFAULT NULL COMMENT '系统权限备用字段3',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sid`(`sid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15071 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ums_permission
-- ----------------------------
INSERT INTO `ums_permission` VALUES (15034, '2020081117562642ae52f0fac043a4b0833c96db7e230a', 2047286574, '修改权限', 'ums:permission:update', NULL, 2, '/permission/update/{id}', 1, '2020-08-11 17:56:26', NULL, NULL, NULL, NULL);
INSERT INTO `ums_permission` VALUES (15035, '20200811175626e1fbd42969c4433598a68c4cf4b276cf', 2047286574, '根据角色id批量删除权限', 'ums:permission:delete', NULL, 2, '/permission/update/delete', 1, '2020-08-11 17:56:26', NULL, NULL, NULL, NULL);
INSERT INTO `ums_permission` VALUES (15036, '20200811175626e3decb359047459dae5699fd9e21553d', 2047286574, '添加权限', 'ums:permission:create', NULL, 2, '/permission/add', 1, '2020-08-11 17:56:26', NULL, NULL, NULL, NULL);
INSERT INTO `ums_permission` VALUES (15037, '20200811175626f057a4f38bb94a90b4dd98fdeb8d4a40', 2047286574, '获取所有权限列表', 'ums:permission:list', NULL, 2, '/permission/list', 1, '2020-08-11 17:56:26', NULL, NULL, NULL, NULL);
INSERT INTO `ums_permission` VALUES (15038, '20200811175626144816105e3a42a69516b01122bc8eac', 2047286574, '以层级结构返回所有权限', 'ums:permission:treeList', NULL, 2, '/permission/treeList', 1, '2020-08-11 17:56:26', NULL, NULL, NULL, NULL);
INSERT INTO `ums_permission` VALUES (15039, '202008111756269fc2c59c47ed42818fea50ef138a254b', 2047286574, '关键字查询获取所有权限列表', 'ums:permission:fetchPermissionlist', NULL, 2, '/permission/fetchPermissionlist', 1, '2020-08-11 17:56:26', NULL, NULL, NULL, NULL);
INSERT INTO `ums_permission` VALUES (15040, '2047286574', 0, '后台操作权限管理', 'ums:permission', NULL, 9, '/permission', 9, '2020-08-11 17:56:26', NULL, NULL, NULL, NULL);
INSERT INTO `ums_permission` VALUES (15041, '20200811175626d87f3723637a44fc997dcf0ca416e918', 1853003853, '用户注册', 'ums:user:register', NULL, 2, '/user/register', 1, '2020-08-11 17:56:26', NULL, NULL, NULL, NULL);
INSERT INTO `ums_permission` VALUES (15042, '202008111756265ac7c1667d1b4c7e873ecf325c2c1266', 1853003853, '修改指定用户信息', 'ums:user:update', NULL, 2, '/user/update/{id}', 1, '2020-08-11 17:56:26', NULL, NULL, NULL, NULL);
INSERT INTO `ums_permission` VALUES (15043, '202008111756260ccd15d75a1c4a1b9d0908952bae557e', 1853003853, '删除指定用户信息', 'ums:user:delete', NULL, 2, '/user/update/delete/{id}', 1, '2020-08-11 17:56:26', NULL, NULL, NULL, NULL);
INSERT INTO `ums_permission` VALUES (15044, '202008111756263f0c7244047344a7984a2efcc1834c26', 1853003853, '获取指定用户信息', 'ums:user:getItem', NULL, 2, '/user/{id}', 1, '2020-08-11 17:56:26', NULL, NULL, NULL, NULL);
INSERT INTO `ums_permission` VALUES (15045, '202008111756264626ad27e00444148803ffdf0c0cbcf5', 1853003853, '删除批量用户信息', 'ums:user:batchDelete', NULL, 2, '/user/update/batchDelete', 1, '2020-08-11 17:56:26', NULL, NULL, NULL, NULL);
INSERT INTO `ums_permission` VALUES (15046, '20200811175626aebed35cb7b14d14ac9a39a61159f417', 1853003853, '根据用户名或姓名分页获取用户列表', 'ums:user:fetchMemberlist', NULL, 2, '/user/fetchMemberlist', 1, '2020-08-11 17:56:26', NULL, NULL, NULL, NULL);
INSERT INTO `ums_permission` VALUES (15047, '20200811175626e0a15f31ceb44b7a84adcee6b99519ec', 1853003853, '修改指定用户密码', 'ums:user:updatePassword', NULL, 2, '/user/update/updatePassword', 1, '2020-08-11 17:56:26', NULL, NULL, NULL, NULL);
INSERT INTO `ums_permission` VALUES (15048, '2020081117562678377a973e9e4e35b4a137c4b7aaaacb', 1853003853, '修改指定用户启用状态', 'ums:user:updateMemberActiveStatus', NULL, 2, '/user/update/updateMemberActiveStatus', 1, '2020-08-11 17:56:26', NULL, NULL, NULL, NULL);
INSERT INTO `ums_permission` VALUES (15049, '1853003853', 0, '后台用户管理', 'ums:user', NULL, 9, '/user', 9, '2020-08-11 17:56:26', NULL, NULL, NULL, NULL);
INSERT INTO `ums_permission` VALUES (15050, '202008111756263ff2a3e687cb4366be8a4a0bd48fd2c8', 418031299, '修改角色', 'ums:role:update', NULL, 2, '/role/update/{id}', 1, '2020-08-11 17:56:26', NULL, NULL, NULL, NULL);
INSERT INTO `ums_permission` VALUES (15051, '20200811175626d6af38dfbd9c4268b666aedf41dd8122', 418031299, '删除角色', 'ums:role:delete', NULL, 2, '/role/update/delete/{id}', 1, '2020-08-11 17:56:26', NULL, NULL, NULL, NULL);
INSERT INTO `ums_permission` VALUES (15052, '20200811175626f00f5ac5866e4e4baf747e4bd88c1893', 418031299, '添加角色', 'ums:role:create', NULL, 2, '/role/add', 1, '2020-08-11 17:56:26', NULL, NULL, NULL, NULL);
INSERT INTO `ums_permission` VALUES (15053, '20200811175626ac89904ef4e240f88743b99a410ad43c', 418031299, '获取所有角色', 'ums:role:list', NULL, 2, '/role/list', 1, '2020-08-11 17:56:26', NULL, NULL, NULL, NULL);
INSERT INTO `ums_permission` VALUES (15054, '202008111756265c184ba902124b1d936b1617475b1fa8', 418031299, '关键字查询获取所有角色', 'ums:role:fetchRolelist', NULL, 2, '/role/fetchRolelist', 1, '2020-08-11 17:56:26', NULL, NULL, NULL, NULL);
INSERT INTO `ums_permission` VALUES (15055, '2020081117562690e30f5ee0a24606b0cd701842799f81', 418031299, '批量删除角色', 'ums:role:batchDelete', NULL, 2, '/role/update/batchDelete', 1, '2020-08-11 17:56:26', NULL, NULL, NULL, NULL);
INSERT INTO `ums_permission` VALUES (15056, '2020081117562610c08c49a664498a9d3b2dc913edc091', 418031299, '修改角色启用状态', 'ums:role:updateActiveRoleStatus', NULL, 2, '/role/update/updateActiveRoleStatus', 1, '2020-08-11 17:56:26', NULL, NULL, NULL, NULL);
INSERT INTO `ums_permission` VALUES (15057, '418031299', 0, '后台用户角色管理', 'ums:role', NULL, 9, '/role', 9, '2020-08-11 17:56:26', NULL, NULL, NULL, NULL);
INSERT INTO `ums_permission` VALUES (15058, '20200811175626a19f311957e041ae96665105134191be', 1522559116, '获取角色绑定的权限', 'ums:bund:getPermissions', NULL, 2, '/bund/role/{roleId}/permissions', 1, '2020-08-11 17:56:26', NULL, NULL, NULL, NULL);
INSERT INTO `ums_permission` VALUES (15059, '20200811175626f0d64043200646fe8f649f90281fe333', 1522559116, '绑定角色权限', 'ums:bund:bundRolePermission', NULL, 2, '/bund/role/bundRolePermission/{roleId}', 1, '2020-08-11 17:56:26', NULL, NULL, NULL, NULL);
INSERT INTO `ums_permission` VALUES (15060, '20200811175626996ba11b33ee40738ae349c958370b04', 1522559116, '修改角色权限', 'ums:bund:updateRolePermission', NULL, 2, '/bund/role/updateRolePermission/{roleId}', 1, '2020-08-11 17:56:26', NULL, NULL, NULL, NULL);
INSERT INTO `ums_permission` VALUES (15061, '20200811175626b35e9592c1604e4ea14fd8bace6314dc', 1522559116, '修改角色权限状态', 'ums:bund:ActiveRolePermissionStatus', NULL, 2, '/bund/role/ActiveRolePermissionStatus', 1, '2020-08-11 17:56:26', NULL, NULL, NULL, NULL);
INSERT INTO `ums_permission` VALUES (15062, '1522559116', 0, '系统角色与操作权限关系管理', 'ums:bund', NULL, 9, '/bund', 1, '2020-08-11 17:56:26', NULL, NULL, NULL, NULL);
INSERT INTO `ums_permission` VALUES (15063, '20200811175626e51a66c567594d9db870d34ee6f34f80', 72326903, '获取角色绑定的访问资源', 'ums:bund:getResources', NULL, 2, '/bund/role/{roleId}/resouces', 1, '2020-08-11 17:56:26', NULL, NULL, NULL, NULL);
INSERT INTO `ums_permission` VALUES (15064, '20200811175626b8e605b21b1e4f1ab897e75e0a957982', 72326903, '绑定角色访问资源', 'ums:bund:bundRoleResources', NULL, 2, '/bund/role/bundRoleResources/{roleId}', 1, '2020-08-11 17:56:26', NULL, NULL, NULL, NULL);
INSERT INTO `ums_permission` VALUES (15065, '20200811175626aa4ace1eac3a48d7b5acc70293fa11b9', 72326903, '修改角色访问资源状态', 'ums:bund:ActiveRoleResourcesStatus', NULL, 2, '/bund/role/ActiveRoleResourcesStatus', 1, '2020-08-11 17:56:26', NULL, NULL, NULL, NULL);
INSERT INTO `ums_permission` VALUES (15066, '2020081117562645837f5d7477474b87751228429e4a07', 72326903, '修改角色访问资源', 'ums:bund:updateRoleResources', NULL, 2, '/bund/role/updateRoleResources/{roleId}', 1, '2020-08-11 17:56:26', NULL, NULL, NULL, NULL);
INSERT INTO `ums_permission` VALUES (15067, '72326903', 0, '后台角色访问资源管理', 'ums:bund', NULL, 9, '/bund', 9, '2020-08-11 17:56:26', NULL, NULL, NULL, NULL);
INSERT INTO `ums_permission` VALUES (15068, '202008111756262a7a6fcde21046bab8db6be99bd4f8b1', 1501128332, '获取指定用户的角色列表', 'ums:grant:getRoles', NULL, 2, '/grant/user/{memberId}/roles', 1, '2020-08-11 17:56:26', NULL, NULL, NULL, NULL);
INSERT INTO `ums_permission` VALUES (15069, '20200811175626c00418d3517741429d2a899ac34efc77', 1501128332, '获取指定用户的角色列表', 'ums:grant:updateRole', NULL, 2, '/grant/user/update', 1, '2020-08-11 17:56:26', NULL, NULL, NULL, NULL);
INSERT INTO `ums_permission` VALUES (15070, '1501128332', 0, '系统用户与系统角色关系管理', 'ums:user', NULL, 9, '/grant', 1, '2020-08-11 17:56:26', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for ums_resources
-- ----------------------------
DROP TABLE IF EXISTS `ums_resources`;
CREATE TABLE `ums_resources`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `sid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '业务ID',
  `parent_sid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '父级ID',
  `level` int(11) NULL DEFAULT NULL COMMENT '级别',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `path` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路径',
  `title` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `router` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路由',
  `icon` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `note` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注信息',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `uri` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '服务器端URI',
  `order_level` int(11) NOT NULL DEFAULT 0 COMMENT '排序',
  `hidden` int(11) NOT NULL DEFAULT 0 COMMENT '是否隐藏',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `sid`(`sid`) USING BTREE,
  INDEX `uri`(`uri`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 192 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ums_resources
-- ----------------------------
INSERT INTO `ums_resources` VALUES (12, '010001', '010000', 1, 'product', 'product', '全部商品', '/pms/product/index', 'product-list', NULL, '2020-03-18 23:32:39', NULL, 0, 0);
INSERT INTO `ums_resources` VALUES (14, '010003', '010000', 1, 'updateProduct', 'updateProduct', '修改商品', '/pms/product/update', 'product-add', NULL, '2020-04-27 00:23:39', NULL, 0, 1);
INSERT INTO `ums_resources` VALUES (15, '010004', '010000', 1, 'productRecycle', 'productRecycle', '商品回收站', '/pms/product/index', 'product-recycle', NULL, '2020-04-27 00:24:13', NULL, 0, 1);
INSERT INTO `ums_resources` VALUES (16, '010005', '010000', 1, 'productComment', 'productComment', '商品评价', '/pms/product/index', 'product-comment', NULL, '2020-04-27 00:24:17', NULL, 0, 1);
INSERT INTO `ums_resources` VALUES (17, '010006', '010000', 1, 'productCate', 'productCate', '商品分类', '/pms/productCate/index', 'product-cate', NULL, '2020-03-18 23:32:39', NULL, 0, 0);
INSERT INTO `ums_resources` VALUES (18, '010007', '010000', 1, 'addProductCate', 'addProductCate', '添加商品分类', '/pms/productCate/add', NULL, NULL, '2020-04-27 00:24:27', NULL, 0, 1);
INSERT INTO `ums_resources` VALUES (19, '010008', '010000', 1, 'updateProductCate', 'updateProductCate', '修改商品分类', '/pms/productCate/update', NULL, NULL, '2020-04-27 00:24:35', NULL, 0, 1);
INSERT INTO `ums_resources` VALUES (21, '010010', '010000', 1, 'productAttrList', 'productAttrList', '商品属性列表', '/pms/productAttr/productAttrList', NULL, NULL, '2020-04-27 00:25:16', NULL, 0, 1);
INSERT INTO `ums_resources` VALUES (22, '010011', '010000', 1, 'addProductAttr', 'addProductAttr', '添加商品属性', '/pms/productAttr/addProductAttr', NULL, NULL, '2020-04-27 00:25:19', NULL, 0, 1);
INSERT INTO `ums_resources` VALUES (23, '010012', '010000', 1, 'updateProductAttr', 'updateProductAttr', '修改商品属性', '/pms/productAttr/updateProductAttr', NULL, NULL, '2020-04-27 00:25:27', NULL, 0, 1);
INSERT INTO `ums_resources` VALUES (24, '010013', '010000', 1, 'brand', 'brand', '品牌管理', '/pms/brand/index', 'product-brand', NULL, '2020-03-18 23:32:39', NULL, 0, 0);
INSERT INTO `ums_resources` VALUES (25, '010014', '010000', 1, 'addBrand', 'addBrand', '添加品牌', '/pms/brand/add', NULL, NULL, '2020-04-27 00:25:39', NULL, 0, 1);
INSERT INTO `ums_resources` VALUES (26, '010015', '010000', 1, 'updateBrand', 'updateBrand', '编辑品牌', '/pms/brand/update', NULL, NULL, '2020-04-27 00:25:42', NULL, 0, 1);
INSERT INTO `ums_resources` VALUES (27, '010016', '010000', 1, 'photosManagemnet', 'photosManagemnet', '图片库管理', '/pms/photos/index', 'sys-role', NULL, '2020-03-18 23:32:39', NULL, 0, 0);
INSERT INTO `ums_resources` VALUES (28, '010017', '010000', 1, 'photosList', 'photosList', '相册列表', '/pms/photos/list', 'sys-role', NULL, '2020-04-27 00:25:52', NULL, 0, 1);
INSERT INTO `ums_resources` VALUES (29, '010018', '010000', 1, 'addPhotos', 'addPhotos', '新建相册', '/pms/photos/add', 'sys-role', NULL, '2020-04-27 00:25:59', NULL, 0, 1);
INSERT INTO `ums_resources` VALUES (30, '010019', '010000', 1, 'toExamine', 'toExamine', '商品审核', '/pms/toExamine/toExamine', 'product-list', NULL, '2020-03-18 23:32:39', NULL, 0, 0);
INSERT INTO `ums_resources` VALUES (31, '010020', '010000', 1, 'evaluate', 'evaluate', '商品评价', '/pms/evaluate/evaluate', 'product-list', NULL, '2020-03-18 23:32:39', NULL, 0, 0);
INSERT INTO `ums_resources` VALUES (32, '010021', '010000', 1, 'recycleBin', 'recycleBin', '商品回收站', '/pms/recycleBin/recycleBin', 'product-list', NULL, '2020-03-18 23:32:39', NULL, 0, 0);
INSERT INTO `ums_resources` VALUES (33, '020001', '020000', 1, 'order', 'order', '订单列表', '/oms/order/index', 'product-list', NULL, '2020-03-18 23:35:28', NULL, 0, 0);
INSERT INTO `ums_resources` VALUES (34, '020002', '020000', 1, 'confirmOrder', 'confirmOrder', '确认收货', '/oms/order/confirmOrder', 'product-list', NULL, '2020-03-18 23:35:28', NULL, 0, 0);
INSERT INTO `ums_resources` VALUES (35, '020003', '020000', 1, 'orderDetail', 'orderDetail', '订单详情', '/oms/order/detailOrder', NULL, NULL, '2020-04-27 00:26:45', NULL, 0, 1);
INSERT INTO `ums_resources` VALUES (36, '020004', '020000', 1, 'deliverOrderList', 'deliverOrderList', '发货列表', '/oms/order/deliverOrderList', NULL, NULL, '2020-04-27 00:26:48', NULL, 0, 1);
INSERT INTO `ums_resources` VALUES (37, '020005', '020000', 1, 'orderSetting', 'orderSetting', '订单设置', '/oms/order/setting', 'order-setting', NULL, '2020-03-18 23:35:28', NULL, 0, 0);
INSERT INTO `ums_resources` VALUES (38, '020006', '020000', 1, 'exchangeGoods', 'exchangeGoods', '换货申请处理', '/oms/exchangeGoods/exchangeGoods', 'order-return', NULL, '2020-04-27 00:27:01', NULL, 0, 1);
INSERT INTO `ums_resources` VALUES (39, '020007', '020000', 1, 'returnApply', 'returnApply', '退货申请处理', '/oms/apply/index', 'order-return', NULL, '2020-03-18 23:35:28', NULL, 0, 0);
INSERT INTO `ums_resources` VALUES (40, '020008', '020000', 1, 'returnReason', 'returnReason', '退货原因设置', '/oms/apply/reason', 'order-return-reason', NULL, '2020-03-18 23:35:28', NULL, 0, 0);
INSERT INTO `ums_resources` VALUES (41, '020009', '020000', 1, 'returnApplyDetail', 'returnApplyDetail', '退货原因详情', '/oms/apply/applyDetail', NULL, NULL, '2020-04-27 00:27:19', NULL, 0, 1);
INSERT INTO `ums_resources` VALUES (42, '030001', '030000', 1, 'warehouse', 'warehouse', '仓库管理', '/warehouses/warehouse', 'sys-role', NULL, '2020-03-18 23:37:24', NULL, 0, 0);
INSERT INTO `ums_resources` VALUES (43, '030002', '030000', 1, 'enterWarehouse', 'enterWarehouse', '入库管理', '/warehouses/enterWarehouse', 'sys-role', NULL, '2020-03-18 23:37:24', NULL, 0, 0);
INSERT INTO `ums_resources` VALUES (44, '030003', '030000', 1, 'outWarehouse', 'outWarehouse', '出库管理', '/warehouses/outWarehouse', 'sys-role', NULL, '2020-03-18 23:37:24', NULL, 0, 0);
INSERT INTO `ums_resources` VALUES (45, '030004', '030000', 1, 'warehouseDetail', 'warehouseDetail', '修改仓库', '/warehouses/components/warehouseDetail', 'sys-role', NULL, '2020-04-27 00:27:32', NULL, 0, 1);
INSERT INTO `ums_resources` VALUES (46, '040001', '040000', 1, 'user', 'user', '用户列表', '/user/userList/index', 'product-list', NULL, '2020-03-18 23:38:21', NULL, 0, 0);
INSERT INTO `ums_resources` VALUES (47, '040002', '040000', 1, 'labei', 'labei', '标签管理', '/user/label/labei', 'product-list', NULL, '2020-03-18 23:38:21', NULL, 0, 0);
INSERT INTO `ums_resources` VALUES (48, '040003', '040000', 1, 'grade', 'grade', '会员等级设置', '/user/grade/grade', 'product-list', NULL, '2020-03-18 23:38:21', NULL, 0, 0);
INSERT INTO `ums_resources` VALUES (49, '040004', '040000', 1, 'reward', 'reward', '任务奖励设置', '/user/reward/reward', 'product-list', NULL, '2020-03-18 23:38:21', NULL, 0, 0);
INSERT INTO `ums_resources` VALUES (50, '040005', '040000', 1, 'rule', 'rule', '更多规则设置', '/user/rule/rule', 'product-list', NULL, '2020-04-27 00:27:48', NULL, 0, 1);
INSERT INTO `ums_resources` VALUES (61, '050001', '050000', 1, 'flash', 'flash', '秒杀活动', '/sms/flash/index', 'sms-flash', NULL, '2020-03-18 23:39:49', NULL, 0, 0);
INSERT INTO `ums_resources` VALUES (62, '050002', '050000', 1, 'flashSession', 'flashSession', '秒杀时段', '/sms/flash/sessionList', 'sms-flash', NULL, '2020-03-18 23:39:49', NULL, 0, 0);
INSERT INTO `ums_resources` VALUES (63, '050003', '050000', 1, 'promotionOrderList', 'promotionOrderList', '订单列表', '/promotion/orderList/orderList', 'product-list', NULL, '2020-03-18 23:39:49', NULL, 0, 0);
INSERT INTO `ums_resources` VALUES (64, '050004', '050000', 1, 'selectSession', 'selectSession', '秒杀时间段选择', '/sms/flash/selectSessionList', NULL, NULL, '2020-04-27 00:28:23', NULL, 0, 1);
INSERT INTO `ums_resources` VALUES (65, '050005', '050000', 1, 'flashProductRelation', 'flashProductRelation', '秒杀商品列表', '/sms/flash/productRelationList', NULL, NULL, '2020-04-27 00:28:28', NULL, 0, 1);
INSERT INTO `ums_resources` VALUES (66, '050006', '050000', 1, 'seckillSet', 'seckillSet', '秒杀设置', '/promotion/seckillSet/seckillSet', 'product-list', NULL, '2020-03-18 23:39:49', NULL, 0, 0);
INSERT INTO `ums_resources` VALUES (67, '050007', '050000', 1, 'coupon', 'coupon', '优惠券列表', '/sms/coupon/index', 'sms-coupon', NULL, '2020-03-18 23:39:49', NULL, 0, 0);
INSERT INTO `ums_resources` VALUES (68, '050008', '050000', 1, 'addCoupon', 'addCoupon', '添加优惠券', '/sms/coupon/add', NULL, NULL, '2020-04-27 00:28:42', NULL, 0, 1);
INSERT INTO `ums_resources` VALUES (69, '050009', '050000', 1, 'updateCoupon', 'updateCoupon', '修改优惠券', '/sms/coupon/update', NULL, NULL, '2020-04-27 00:28:46', NULL, 0, 1);
INSERT INTO `ums_resources` VALUES (70, '050010', '050000', 1, 'couponHistory', 'couponHistory', '优惠券领取详情', '/sms/coupon/history', NULL, NULL, '2020-04-27 00:28:49', NULL, 0, 1);
INSERT INTO `ums_resources` VALUES (95, '100001', '100000', 1, 'index', 'index', '顶部菜单', '/mall/index', 'sys-role', NULL, '2020-03-18 23:47:44', NULL, 0, 0);
INSERT INTO `ums_resources` VALUES (96, '100002', '100000', 1, 'rotationChart', 'rotationChart', '商城页面配置', '/mall/index', 'mall-rotationChart', NULL, '2020-03-18 23:47:44', NULL, 0, 0);
INSERT INTO `ums_resources` VALUES (100, '110001', '110000', 1, 'roles', 'roles', '角色管理', '/sys/roles/index', 'sys-role', NULL, '2020-03-18 23:48:32', NULL, 0, 0);
INSERT INTO `ums_resources` VALUES (101, '110002', '110000', 1, 'rolePermission', 'rolePermission', '绑定权限', '/sys/components/rolePermission', 'sys-role', NULL, '2020-04-27 00:34:10', NULL, 0, 1);
INSERT INTO `ums_resources` VALUES (102, '110003', '110000', 1, 'permissions', 'permissions', '角色权限', '/sys/permissions/index', 'sys-permissions', NULL, '2020-04-27 00:34:19', NULL, 0, 1);
INSERT INTO `ums_resources` VALUES (103, '110004', '110000', 1, 'admin', 'admin', '系统管理员', '/sys/admin/index', 'mms-membership', NULL, '2020-03-18 23:48:32', NULL, 0, 0);
INSERT INTO `ums_resources` VALUES (106, '120001', '120000', 1, 'menuList', 'menuList', '配置列表', '/menuMobile/menuList', 'menuMobile', NULL, '2020-04-24 04:11:15', NULL, 0, 0);
INSERT INTO `ums_resources` VALUES (111, '120002', '120000', 1, 'menuMrg', '/menuMobile/menuMrg', '菜单管理', '/menuMobile/menuMrg', 'menuMrg', '', '2020-04-27 00:31:18', '', 0, 1);
INSERT INTO `ums_resources` VALUES (115, '110005', '110000', 1, 'JurisdictionLog', '/sys/JurisdictionLog', '操作日志', '/sys/JurisdictionLog', '', '', '2020-04-30 01:03:24', '', 1, 0);
INSERT INTO `ums_resources` VALUES (117, '130001', '130000', 1, 'basics', '/dcm/basics', '基础设置', '/dcm/basics', '', '', '2020-05-11 22:26:53', '', 1, 0);
INSERT INTO `ums_resources` VALUES (118, '130002', '130000', 1, 'distributionList', '/dcm/distributionList', '分销列表', '/dcm/distributionList', '', '', '2020-05-11 22:27:30', '', 1, 0);
INSERT INTO `ums_resources` VALUES (119, '130003', '130000', 1, 'distributionOrder', '/dcm/distributionOrder', '分销订单', '/dcm/distributionOrder', '', '', '2020-05-11 22:28:00', '', 1, 0);
INSERT INTO `ums_resources` VALUES (120, '130004', '130000', 1, 'distributionCarry', '/dcm/distributionCarry', '分销提现', '/dcm/distributionCarry', '', '', '2020-05-11 22:28:23', '', 1, 0);
INSERT INTO `ums_resources` VALUES (121, '40006', '040000', 1, 'signIn', '/user/signIn', '签到规则', '/user/signIn', '', '', '2020-05-15 19:05:11', '', 1, 0);
INSERT INTO `ums_resources` VALUES (123, '140001', '140000', 1, 'groupBuying', '/groupBuying/groupBuying', '团购列表', '/groupBuying/groupBuying', '', '', '2020-05-21 23:39:34', '', 1, 0);
INSERT INTO `ums_resources` VALUES (124, '800001', '080000', 1, 'subject', '/cms/subject', '专题列表', '/cms/subject', '', '', '2020-06-24 00:25:38', '', 1, 0);
INSERT INTO `ums_resources` VALUES (125, '800002', '080000', 1, 'subjectCatalog', '/cmd/subjectCatalog', '专题分类', '/cmd/subjectCatalog', '', '', '2020-06-24 00:26:27', '', 1, 0);
INSERT INTO `ums_resources` VALUES (131, '1500001', '150000', 1, 'sale', '/forms/sale', '综合统计', '/forms/sale', '', '', '2020-07-16 23:38:16', '', 1, 0);
INSERT INTO `ums_resources` VALUES (132, '1500002', '150000', 1, 'transaction', '/forms/transaction', '交易统计', '/forms/transaction', '', '', '2020-07-16 23:38:49', '', 1, 0);
INSERT INTO `ums_resources` VALUES (135, '999000', '9', 0, '添加系统测试资源', 'addResourcesForTest', '添加系统测试资源', '/addResourcesForTest', '/hideenicon', '修改系统测试资源', '2020-08-12 23:20:03', '/addResourcesForTest', 0, 0);
INSERT INTO `ums_resources` VALUES (136, '', '', 0, '', 'supplier', '商户管理', '/home', 'zhuanti', '', '2021-03-10 21:56:59', '', 1, 0);
INSERT INTO `ums_resources` VALUES (138, '2d4515aafd064e37918d6ff0814ed8c9', '', 0, '', 'demo', '系统测试资源', '/demo', 'demo', '', '2021-03-10 22:39:16', '', 1, 0);
INSERT INTO `ums_resources` VALUES (146, 'e969f87f14474151ba67efe41760ec22', '652ea8bcb9de41478b17086e9cf7d335', 1, '', 'demo', 'demo3', '/demo1', 'demo1', '', '2021-03-10 23:30:22', '', 1, 0);
INSERT INTO `ums_resources` VALUES (147, '67795410c2db498788afdf0c071519f8', '0', 0, '', 'supplier', '商户管理', '/home', 'zhuanti', '', '2021-03-10 23:37:19', '', 1, 0);
INSERT INTO `ums_resources` VALUES (148, '90350a28e7c7408c836e9a3fe98b5077', '67795410c2db498788afdf0c071519f8', 1, 'Yibiaopan', 'supplier', '仪表盘', '/yibiaopan', 'iconyibiaopan', '', '2021-03-10 23:38:26', '', 0, 0);
INSERT INTO `ums_resources` VALUES (149, '6b24836d27ac4a43aa86fbf421d9328b', '67795410c2db498788afdf0c071519f8', 1, 'Dinghuodan', 'supplier', '订货单', '/dinghuodan_list', 'icondinghuodan', '', '2021-03-10 23:39:27', '', 2, 0);
INSERT INTO `ums_resources` VALUES (150, '2c9a6c486a1745e8b5488f4879430986', '67795410c2db498788afdf0c071519f8', 1, 'Daibanshixian', 'supplier', '代办事项', '/daibanshixian_list', 'icondaibanshixiang', '', '2021-03-10 23:40:09', '', 3, 0);
INSERT INTO `ums_resources` VALUES (151, '1018caa66d354d9ab248991fbf9c27b4', '67795410c2db498788afdf0c071519f8', 1, 'Shangji', 'supplier', '商机', '/shangji_list', 'iconshangji1', '', '2021-03-10 23:40:39', '', 4, 0);
INSERT INTO `ums_resources` VALUES (152, 'cc2c749beba34cff94895b7c176fc41c', '67795410c2db498788afdf0c071519f8', 1, 'Supplier', 'supplier', '商户', '/supplier_list', 'icongongyingshangliebiao', '', '2021-03-10 23:41:09', '', 5, 0);
INSERT INTO `ums_resources` VALUES (153, 'c34db3cb33524a4a9dd3e93050eba236', '67795410c2db498788afdf0c071519f8', 1, 'Contacts', 'supplier', '联系人', '/contacts_list', 'iconlianxiren1', '', '2021-03-10 23:41:41', '', 6, 0);
INSERT INTO `ums_resources` VALUES (154, '58c0ac3a3ac642368609086ed07d12e2', '67795410c2db498788afdf0c071519f8', 1, 'Chanping', 'supplier', '商品', '/chanping_list', 'iconchanpin', '', '2021-03-10 23:42:15', '', 7, 0);
INSERT INTO `ums_resources` VALUES (155, '7538eeced3234212b79ce2073cbc5635', '67795410c2db498788afdf0c071519f8', 1, 'Hetong', 'supplier', '合同', '/hetong_list', 'iconshangji1', '', '2021-03-10 23:42:54', '', 8, 0);
INSERT INTO `ums_resources` VALUES (156, '79831df90eb344749ec514abf0300e8c', '67795410c2db498788afdf0c071519f8', 1, 'Huikuan', 'supplier', '应收款', '/huikuan_list', 'iconhuikuan', '', '2021-03-10 23:43:31', '', 9, 0);
INSERT INTO `ums_resources` VALUES (157, 'd42472adedc14124a94ff3cf487bd6fc', '67795410c2db498788afdf0c071519f8', 1, 'Fapiao', 'supplier', '发票', '/fapiao_list', 'iconfapiao-copy', '', '2021-03-10 23:43:55', '', 10, 0);
INSERT INTO `ums_resources` VALUES (158, 'b786bc8688814eec90e591a25d8af6cd', '0', 0, '', 'warehouse', '仓库管理', '/warehouseSet', 'iconzidian', '', '2021-03-10 23:45:16', '', 2, 0);
INSERT INTO `ums_resources` VALUES (159, '1a58c18e9f034ad5b3cc96907d8e5e81', 'b786bc8688814eec90e591a25d8af6cd', 1, 'Warehouse', 'warehouse', '库存查询', '/kucunchaxun', 'iconkucunchaxun', '', '2021-03-10 23:45:43', '', 1, 0);
INSERT INTO `ums_resources` VALUES (160, '1b62526e044d43959ed96ae3a86d97b0', 'b786bc8688814eec90e591a25d8af6cd', 1, 'Churukujilu', 'warehouse', '出入库记录', '/churukujilu', 'iconchurukujilu', '', '2021-03-10 23:46:05', '', 2, 0);
INSERT INTO `ums_resources` VALUES (161, '589ab412e33e40588edaa00e3239fa23', 'b786bc8688814eec90e591a25d8af6cd', 1, 'Huowuruku', 'warehouse', '货物入库', '/huowuruku', 'iconA-kunei-huowuruku', '', '2021-03-10 23:46:36', '', 3, 0);
INSERT INTO `ums_resources` VALUES (162, '91aac39588fc44f2ad7eb7a370a19f56', 'b786bc8688814eec90e591a25d8af6cd', 1, 'Huowuchuku', 'warehouse', '货物出库', '/huowuchuku', 'iconA-kunei-huowuchuku', '', '2021-03-10 23:47:01', '', 4, 0);
INSERT INTO `ums_resources` VALUES (167, '4593620cb39f46e691094b4798e207f3', 'b786bc8688814eec90e591a25d8af6cd', 1, 'Cangkuxinxiguanli', 'warehouse', '仓库信息管理', '/cangkuxinxiguanli', 'iconcangkuxinxi', '', '2021-03-10 23:49:10', '', 9, 0);
INSERT INTO `ums_resources` VALUES (168, 'b8bcd324b931478181730c352b1fa5a8', 'b786bc8688814eec90e591a25d8af6cd', 1, 'Cangkumoban', 'warehouse', '仓库模板管理', '/mobanguanli', 'iconcangkuxinxi', '', '2021-03-10 23:49:32', '', 10, 0);
INSERT INTO `ums_resources` VALUES (169, 'c08b371804d443e1af46dbcf6284e857', '0', 0, '', 'system', '系统设置', '/system', 'iconzidian', '', '2021-03-10 23:50:18', '', 10, 0);
INSERT INTO `ums_resources` VALUES (170, '1a467fb9dab0421a86b730bf8b709cbc', 'c08b371804d443e1af46dbcf6284e857', 1, 'Dictionaries', 'system', '字典', '/dictionaries', 'iconzidian', '', '2021-03-10 23:50:54', '', 1, 0);
INSERT INTO `ums_resources` VALUES (171, '0a455fa409594ffb8e53470945ff9a6c', 'c08b371804d443e1af46dbcf6284e857', 1, 'Menus', 'system', '菜单管理', '/menus', 'iconicon_huabanfuben', '', '2021-03-10 23:51:35', '', 2, 0);
INSERT INTO `ums_resources` VALUES (172, 'f81aaf91c96a45109eb469a7beaaa30e', 'c08b371804d443e1af46dbcf6284e857', 1, 'Jueseguanli', 'system', '角色管理', '/jueseguanli', 'iconrole', '', '2021-03-10 23:57:21', '', 3, 0);
INSERT INTO `ums_resources` VALUES (173, '2fbe15dbb1054679b1ad5be991c5926a', 'c08b371804d443e1af46dbcf6284e857', 1, 'User', 'system', '用户管理', '/user', 'iconyonghuguanli', '', '2021-03-11 23:28:10', '', 4, 0);
INSERT INTO `ums_resources` VALUES (175, '8099d25860d7473fb4791c7293e5b512', '0', 0, '', 'finance', '财务管理', '/finance', '11', '', '2021-03-16 22:08:25', '', 3, 0);
INSERT INTO `ums_resources` VALUES (176, '881559b2d3fd41b2a79ed18d5316a5e3', '0', 0, '', 'offers', '报价管理', '/offers', '11', '', '2021-03-16 22:18:41', '', 5, 0);
INSERT INTO `ums_resources` VALUES (177, 'be8632949a5540e3a47f760a6cc9dfe7', 'f78b6ef08d764fc89049ca8b19a3a5a8', 1, 'Peizhicanshu', 'middleMrg', '参数配置', '/peizhicanshu', 'iconcanshupeizhi', '', '2021-03-16 22:38:21', '', 1, 0);
INSERT INTO `ums_resources` VALUES (179, '01545cdd07fe47fd8a4db5d8bf744028', '8099d25860d7473fb4791c7293e5b512', 1, 'Shixian', 'finance', '事项', '/shixian', 'iconhuijihesuan', '', '2021-03-18 22:57:49', '', 2, 0);
INSERT INTO `ums_resources` VALUES (181, '95dbabf578b54b2197e90e2bfc9fa2a9', 'f78b6ef08d764fc89049ca8b19a3a5a8', 1, 'Jiagegusuan', 'middleMrg', '价格估算', '/jiagegusuan', 'iconjiagegusuan', '', '2021-03-23 23:31:58', '', 2, 0);
INSERT INTO `ums_resources` VALUES (182, '69fdb40c12ab486f9df81597978dcac3', '881559b2d3fd41b2a79ed18d5316a5e3', 1, 'Chuchangjia', 'offers', '出厂价', '/exFactoryPrice', 'iconhuaban30', '', '2021-03-24 00:55:38', '', 3, 0);
INSERT INTO `ums_resources` VALUES (183, 'cf12dac3fd404bd1b70f6fd78b0dabad', '881559b2d3fd41b2a79ed18d5316a5e3', 1, 'Xiaoshoujia', 'offers', '报价', '/offer', 'iconxiaoshoujia', '', '2021-03-24 00:56:10', '', 2, 0);
INSERT INTO `ums_resources` VALUES (184, 'b1dea26e8f724eada54a26a3d3370ad7', '8099d25860d7473fb4791c7293e5b512', 1, 'Baobiao', 'finance', '数据表', '/baobiao', 'iconxianjinliuliangbiao-normal', '', '2021-03-24 18:53:14', '', 4, 0);
INSERT INTO `ums_resources` VALUES (187, 'a143af1beef1406e926836444ced2954', '8099d25860d7473fb4791c7293e5b512', 1, 'Canshupeizhi', 'finance', '参数配置', '/canshupeizhi', 'iconguize', '', '2021-03-25 17:16:50', '', 6, 0);
INSERT INTO `ums_resources` VALUES (188, '93415e4b0203422d8cbf846cdae7ae46', '8099d25860d7473fb4791c7293e5b512', 1, 'Kemu', 'finance', '科目', '/kemu', 'iconhuijihesuan', '', '2021-03-31 19:43:18', '', 2, 0);
INSERT INTO `ums_resources` VALUES (189, 'ea67342089124ebba95cd6bdaf3e0279', 'c08b371804d443e1af46dbcf6284e857', 1, 'Chajianpeizhi', 'system', '插件配置', '/chajianpeizhi', 'iconchajianpeizhi', '', '2021-04-28 11:55:47', '', 5, 0);
INSERT INTO `ums_resources` VALUES (190, '983cda203db447c4a9c26dcc5a90c70a', 'c08b371804d443e1af46dbcf6284e857', 1, 'Xitonglog', 'system', '系统日志', '/xitonglog', 'iconhoutai-rizhiguanli-caozuorizhi', '', '2021-04-28 15:14:20', '', 6, 0);
INSERT INTO `ums_resources` VALUES (191, '24f6a9ada02845689a0f688020ff1049', '67795410c2db498788afdf0c071519f8', 1, 'Shop_info', 'supplier', '商户信息', '/shop_info', 'icongetigongshanghu', '', '2021-06-15 16:04:50', '', 1, 0);

-- ----------------------------
-- Table structure for ums_role
-- ----------------------------
DROP TABLE IF EXISTS `ums_role`;
CREATE TABLE `ums_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '业务ID',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `checked` tinyint(1) NULL DEFAULT NULL COMMENT '是否选择：true:可选择，false不可选择',
  `description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `admin_count` int(11) NULL DEFAULT NULL COMMENT '后台用户数量',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `status` int(11) NULL DEFAULT 1 COMMENT '启用状态：0->禁用；1->启用',
  `sort` int(11) NULL DEFAULT 0,
  `mngflg` int(11) NULL DEFAULT NULL COMMENT '系统默认管理员区分，1：超级管理员身份，0普通角色',
  `role_memo_1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '系统角色备用字段1',
  `role_memo_2` int(11) NULL DEFAULT NULL COMMENT '系统角色备用字段2',
  `role_memo_3` bigint(20) NULL DEFAULT NULL COMMENT '系统角色备用字段3',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sid`(`sid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ums_role
-- ----------------------------
INSERT INTO `ums_role` VALUES (38, 'f80584b3d4604bb5ab1ca7f440e75f51', '超级管理员', 0, '对平台拥有全部模块的操作权限', 0, '2021-03-11 18:27:59', 1, 1, 1, '', NULL, NULL);
INSERT INTO `ums_role` VALUES (39, '6f5025bf5e094eef90ea22d35029c1bf', '平台运营人员', 1, '平台的使用者，数据录入员。可以建立商户，添加商户，商品，订单等平台运行需要的业务数据。参与平台运行业务数据的审核人员。可指配下次数据流的审核/审批人。', 0, '2021-03-12 14:21:38', 1, 5, 0, '', NULL, NULL);
INSERT INTO `ums_role` VALUES (40, 'df16c92c61ca4c4fb8c1277b10ed3464', '商户操作人员', 1, '商户账号建立的内部管理人员。具备业务功能权限，可操作权限，访问资源', 0, '2021-03-29 10:37:46', 1, 3, 0, '', NULL, NULL);
INSERT INTO `ums_role` VALUES (41, 'f60d8e2310564a6985c696422c42bd53', '平台运维人员', 1, '超级管理员设立的数据维护角色。拥有平台内既定系统数据的修改权限', 0, '2021-03-30 16:48:27', 1, 4, 0, '', NULL, NULL);
INSERT INTO `ums_role` VALUES (43, 'ac218d77cb83404bb9f2a0950203075f', '仓库管理员', 1, '仓库管理员仓库管理员仓库管理员', 0, '2021-07-15 12:10:12', 1, 99, 0, '', NULL, NULL);
INSERT INTO `ums_role` VALUES (44, 'f77df8b313b44803bb4c7c3531b5a202', '测试角色', 1, '测试供', 0, '2021-07-15 17:17:42', 1, 6, 0, '', NULL, NULL);

-- ----------------------------
-- Table structure for ums_role_member_relation
-- ----------------------------
DROP TABLE IF EXISTS `ums_role_member_relation`;
CREATE TABLE `ums_role_member_relation`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `admin_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '管理员业务ID',
  `role_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '系统角色业务ID',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `admin_id`(`admin_id`) USING BTREE,
  INDEX `role_id`(`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 140 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ums_role_member_relation
-- ----------------------------
INSERT INTO `ums_role_member_relation` VALUES (78, '1169', '6f5025bf5e094eef90ea22d35029c1bf');
INSERT INTO `ums_role_member_relation` VALUES (80, '1170', 'df16c92c61ca4c4fb8c1277b10ed3464');
INSERT INTO `ums_role_member_relation` VALUES (81, '1165', 'f80584b3d4604bb5ab1ca7f440e75f51');
INSERT INTO `ums_role_member_relation` VALUES (84, '1174', 'df16c92c61ca4c4fb8c1277b10ed3464');
INSERT INTO `ums_role_member_relation` VALUES (85, '1175', 'df16c92c61ca4c4fb8c1277b10ed3464');
INSERT INTO `ums_role_member_relation` VALUES (86, '1176', 'df16c92c61ca4c4fb8c1277b10ed3464');
INSERT INTO `ums_role_member_relation` VALUES (87, '1177', 'df16c92c61ca4c4fb8c1277b10ed3464');
INSERT INTO `ums_role_member_relation` VALUES (88, '1178', 'df16c92c61ca4c4fb8c1277b10ed3464');
INSERT INTO `ums_role_member_relation` VALUES (89, '1179', 'df16c92c61ca4c4fb8c1277b10ed3464');
INSERT INTO `ums_role_member_relation` VALUES (90, '1180', 'df16c92c61ca4c4fb8c1277b10ed3464');
INSERT INTO `ums_role_member_relation` VALUES (91, '1181', 'df16c92c61ca4c4fb8c1277b10ed3464');
INSERT INTO `ums_role_member_relation` VALUES (92, '1182', 'df16c92c61ca4c4fb8c1277b10ed3464');
INSERT INTO `ums_role_member_relation` VALUES (93, '1183', 'df16c92c61ca4c4fb8c1277b10ed3464');
INSERT INTO `ums_role_member_relation` VALUES (94, '1184', 'df16c92c61ca4c4fb8c1277b10ed3464');
INSERT INTO `ums_role_member_relation` VALUES (95, '1185', 'df16c92c61ca4c4fb8c1277b10ed3464');
INSERT INTO `ums_role_member_relation` VALUES (96, '1186', 'df16c92c61ca4c4fb8c1277b10ed3464');
INSERT INTO `ums_role_member_relation` VALUES (97, '1187', 'df16c92c61ca4c4fb8c1277b10ed3464');
INSERT INTO `ums_role_member_relation` VALUES (98, '1188', 'df16c92c61ca4c4fb8c1277b10ed3464');
INSERT INTO `ums_role_member_relation` VALUES (99, '1189', 'df16c92c61ca4c4fb8c1277b10ed3464');
INSERT INTO `ums_role_member_relation` VALUES (100, '1190', 'df16c92c61ca4c4fb8c1277b10ed3464');
INSERT INTO `ums_role_member_relation` VALUES (101, '1191', 'df16c92c61ca4c4fb8c1277b10ed3464');
INSERT INTO `ums_role_member_relation` VALUES (102, '1192', 'df16c92c61ca4c4fb8c1277b10ed3464');
INSERT INTO `ums_role_member_relation` VALUES (104, '1194', 'df16c92c61ca4c4fb8c1277b10ed3464');
INSERT INTO `ums_role_member_relation` VALUES (105, '1195', 'df16c92c61ca4c4fb8c1277b10ed3464');
INSERT INTO `ums_role_member_relation` VALUES (106, '1196', 'df16c92c61ca4c4fb8c1277b10ed3464');
INSERT INTO `ums_role_member_relation` VALUES (107, '1197', 'df16c92c61ca4c4fb8c1277b10ed3464');
INSERT INTO `ums_role_member_relation` VALUES (108, '1198', 'df16c92c61ca4c4fb8c1277b10ed3464');
INSERT INTO `ums_role_member_relation` VALUES (109, '1168', 'f60d8e2310564a6985c696422c42bd53');
INSERT INTO `ums_role_member_relation` VALUES (110, '1201', 'df16c92c61ca4c4fb8c1277b10ed3464');
INSERT INTO `ums_role_member_relation` VALUES (113, '1202', '6f5025bf5e094eef90ea22d35029c1bf');
INSERT INTO `ums_role_member_relation` VALUES (114, '1202', 'df16c92c61ca4c4fb8c1277b10ed3464');
INSERT INTO `ums_role_member_relation` VALUES (115, '1210', 'f60d8e2310564a6985c696422c42bd53');
INSERT INTO `ums_role_member_relation` VALUES (118, '1171', 'f60d8e2310564a6985c696422c42bd53');
INSERT INTO `ums_role_member_relation` VALUES (120, '1172', 'f60d8e2310564a6985c696422c42bd53');
INSERT INTO `ums_role_member_relation` VALUES (121, '1172', 'f80584b3d4604bb5ab1ca7f440e75f51');
INSERT INTO `ums_role_member_relation` VALUES (123, '1211', 'cc6e7ed98edb4fa1a8cc85e9c697a2f0');
INSERT INTO `ums_role_member_relation` VALUES (124, '1214', 'df16c92c61ca4c4fb8c1277b10ed3464');
INSERT INTO `ums_role_member_relation` VALUES (129, '1173', 'df16c92c61ca4c4fb8c1277b10ed3464');
INSERT INTO `ums_role_member_relation` VALUES (130, '1173', '6f5025bf5e094eef90ea22d35029c1bf');
INSERT INTO `ums_role_member_relation` VALUES (138, '1193', 'df16c92c61ca4c4fb8c1277b10ed3464');
INSERT INTO `ums_role_member_relation` VALUES (139, '1215', 'f77df8b313b44803bb4c7c3531b5a202');

-- ----------------------------
-- Table structure for ums_role_permission_relation
-- ----------------------------
DROP TABLE IF EXISTS `ums_role_permission_relation`;
CREATE TABLE `ums_role_permission_relation`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `role_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '系统角色业务ID',
  `permission_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '系统权限业务ID',
  `relation_memo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色权限关联备用字段',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `role_id`(`role_id`) USING BTREE,
  INDEX `permission_id`(`permission_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ums_role_permission_relation
-- ----------------------------
INSERT INTO `ums_role_permission_relation` VALUES (45, '20200427154202d95f1d31895c4808a383a624e68653e3', '2047286574', NULL);
INSERT INTO `ums_role_permission_relation` VALUES (46, '20200427154202d95f1d31895c4808a383a624e68653e3', '1853003853', NULL);

-- ----------------------------
-- Table structure for ums_role_resources_relation
-- ----------------------------
DROP TABLE IF EXISTS `ums_role_resources_relation`;
CREATE TABLE `ums_role_resources_relation`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `adminmenu_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单ID',
  `role_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '系统角色ID',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `adminmenu_id`(`adminmenu_id`) USING BTREE,
  INDEX `role_id`(`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1956 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ums_role_resources_relation
-- ----------------------------
INSERT INTO `ums_role_resources_relation` VALUES (518, '90350a28e7c7408c836e9a3fe98b5077', '20200427154202d95f1d31895c4808a383a624e68653e3');
INSERT INTO `ums_role_resources_relation` VALUES (519, '6b24836d27ac4a43aa86fbf421d9328b', '20200427154202d95f1d31895c4808a383a624e68653e3');
INSERT INTO `ums_role_resources_relation` VALUES (520, '2c9a6c486a1745e8b5488f4879430986', '20200427154202d95f1d31895c4808a383a624e68653e3');
INSERT INTO `ums_role_resources_relation` VALUES (521, '1018caa66d354d9ab248991fbf9c27b4', '20200427154202d95f1d31895c4808a383a624e68653e3');
INSERT INTO `ums_role_resources_relation` VALUES (522, 'cc2c749beba34cff94895b7c176fc41c', '20200427154202d95f1d31895c4808a383a624e68653e3');
INSERT INTO `ums_role_resources_relation` VALUES (523, 'c34db3cb33524a4a9dd3e93050eba236', '20200427154202d95f1d31895c4808a383a624e68653e3');
INSERT INTO `ums_role_resources_relation` VALUES (524, '58c0ac3a3ac642368609086ed07d12e2', '20200427154202d95f1d31895c4808a383a624e68653e3');
INSERT INTO `ums_role_resources_relation` VALUES (525, '7538eeced3234212b79ce2073cbc5635', '20200427154202d95f1d31895c4808a383a624e68653e3');
INSERT INTO `ums_role_resources_relation` VALUES (526, '79831df90eb344749ec514abf0300e8c', '20200427154202d95f1d31895c4808a383a624e68653e3');
INSERT INTO `ums_role_resources_relation` VALUES (527, 'd42472adedc14124a94ff3cf487bd6fc', '20200427154202d95f1d31895c4808a383a624e68653e3');
INSERT INTO `ums_role_resources_relation` VALUES (528, '1a58c18e9f034ad5b3cc96907d8e5e81', '20200427154202d95f1d31895c4808a383a624e68653e3');
INSERT INTO `ums_role_resources_relation` VALUES (529, '1b62526e044d43959ed96ae3a86d97b0', '20200427154202d95f1d31895c4808a383a624e68653e3');
INSERT INTO `ums_role_resources_relation` VALUES (530, '589ab412e33e40588edaa00e3239fa23', '20200427154202d95f1d31895c4808a383a624e68653e3');
INSERT INTO `ums_role_resources_relation` VALUES (531, '91aac39588fc44f2ad7eb7a370a19f56', '20200427154202d95f1d31895c4808a383a624e68653e3');
INSERT INTO `ums_role_resources_relation` VALUES (532, '0b6e2784e7a04489aa586d6ce2a41292', '20200427154202d95f1d31895c4808a383a624e68653e3');
INSERT INTO `ums_role_resources_relation` VALUES (533, 'b8c31eb1e8384a0b8360ababda116fa3', '20200427154202d95f1d31895c4808a383a624e68653e3');
INSERT INTO `ums_role_resources_relation` VALUES (534, '9b89d8bcb57d4b98b594418bf76223d8', '20200427154202d95f1d31895c4808a383a624e68653e3');
INSERT INTO `ums_role_resources_relation` VALUES (535, 'b31d5e42f62f4d51938721e866299b20', '20200427154202d95f1d31895c4808a383a624e68653e3');
INSERT INTO `ums_role_resources_relation` VALUES (536, '4593620cb39f46e691094b4798e207f3', '20200427154202d95f1d31895c4808a383a624e68653e3');
INSERT INTO `ums_role_resources_relation` VALUES (537, 'b8bcd324b931478181730c352b1fa5a8', '20200427154202d95f1d31895c4808a383a624e68653e3');
INSERT INTO `ums_role_resources_relation` VALUES (538, '1a467fb9dab0421a86b730bf8b709cbc', '20200427154202d95f1d31895c4808a383a624e68653e3');
INSERT INTO `ums_role_resources_relation` VALUES (539, '0a455fa409594ffb8e53470945ff9a6c', '20200427154202d95f1d31895c4808a383a624e68653e3');
INSERT INTO `ums_role_resources_relation` VALUES (540, 'f81aaf91c96a45109eb469a7beaaa30e', '20200427154202d95f1d31895c4808a383a624e68653e3');
INSERT INTO `ums_role_resources_relation` VALUES (1442, '983cda203db447c4a9c26dcc5a90c70a', 'cc6e7ed98edb4fa1a8cc85e9c697a2f0');
INSERT INTO `ums_role_resources_relation` VALUES (1443, 'ea67342089124ebba95cd6bdaf3e0279', 'cc6e7ed98edb4fa1a8cc85e9c697a2f0');
INSERT INTO `ums_role_resources_relation` VALUES (1444, '2fbe15dbb1054679b1ad5be991c5926a', 'cc6e7ed98edb4fa1a8cc85e9c697a2f0');
INSERT INTO `ums_role_resources_relation` VALUES (1445, 'f81aaf91c96a45109eb469a7beaaa30e', 'cc6e7ed98edb4fa1a8cc85e9c697a2f0');
INSERT INTO `ums_role_resources_relation` VALUES (1446, '0a455fa409594ffb8e53470945ff9a6c', 'cc6e7ed98edb4fa1a8cc85e9c697a2f0');
INSERT INTO `ums_role_resources_relation` VALUES (1447, '1a467fb9dab0421a86b730bf8b709cbc', 'cc6e7ed98edb4fa1a8cc85e9c697a2f0');
INSERT INTO `ums_role_resources_relation` VALUES (1448, 'a143af1beef1406e926836444ced2954', 'cc6e7ed98edb4fa1a8cc85e9c697a2f0');
INSERT INTO `ums_role_resources_relation` VALUES (1449, 'b1dea26e8f724eada54a26a3d3370ad7', 'cc6e7ed98edb4fa1a8cc85e9c697a2f0');
INSERT INTO `ums_role_resources_relation` VALUES (1450, 'a29c5d34c8444ec6afd12018c371f1a4', 'cc6e7ed98edb4fa1a8cc85e9c697a2f0');
INSERT INTO `ums_role_resources_relation` VALUES (1451, '01545cdd07fe47fd8a4db5d8bf744028', 'cc6e7ed98edb4fa1a8cc85e9c697a2f0');
INSERT INTO `ums_role_resources_relation` VALUES (1452, '93415e4b0203422d8cbf846cdae7ae46', 'cc6e7ed98edb4fa1a8cc85e9c697a2f0');
INSERT INTO `ums_role_resources_relation` VALUES (1453, 'b8bcd324b931478181730c352b1fa5a8', 'cc6e7ed98edb4fa1a8cc85e9c697a2f0');
INSERT INTO `ums_role_resources_relation` VALUES (1454, '4593620cb39f46e691094b4798e207f3', 'cc6e7ed98edb4fa1a8cc85e9c697a2f0');
INSERT INTO `ums_role_resources_relation` VALUES (1455, 'b31d5e42f62f4d51938721e866299b20', 'cc6e7ed98edb4fa1a8cc85e9c697a2f0');
INSERT INTO `ums_role_resources_relation` VALUES (1456, '9b89d8bcb57d4b98b594418bf76223d8', 'cc6e7ed98edb4fa1a8cc85e9c697a2f0');
INSERT INTO `ums_role_resources_relation` VALUES (1457, 'b8c31eb1e8384a0b8360ababda116fa3', 'cc6e7ed98edb4fa1a8cc85e9c697a2f0');
INSERT INTO `ums_role_resources_relation` VALUES (1458, '0b6e2784e7a04489aa586d6ce2a41292', 'cc6e7ed98edb4fa1a8cc85e9c697a2f0');
INSERT INTO `ums_role_resources_relation` VALUES (1459, '91aac39588fc44f2ad7eb7a370a19f56', 'cc6e7ed98edb4fa1a8cc85e9c697a2f0');
INSERT INTO `ums_role_resources_relation` VALUES (1460, '589ab412e33e40588edaa00e3239fa23', 'cc6e7ed98edb4fa1a8cc85e9c697a2f0');
INSERT INTO `ums_role_resources_relation` VALUES (1461, '1b62526e044d43959ed96ae3a86d97b0', 'cc6e7ed98edb4fa1a8cc85e9c697a2f0');
INSERT INTO `ums_role_resources_relation` VALUES (1462, '1a58c18e9f034ad5b3cc96907d8e5e81', 'cc6e7ed98edb4fa1a8cc85e9c697a2f0');
INSERT INTO `ums_role_resources_relation` VALUES (1463, 'd42472adedc14124a94ff3cf487bd6fc', 'cc6e7ed98edb4fa1a8cc85e9c697a2f0');
INSERT INTO `ums_role_resources_relation` VALUES (1464, '79831df90eb344749ec514abf0300e8c', 'cc6e7ed98edb4fa1a8cc85e9c697a2f0');
INSERT INTO `ums_role_resources_relation` VALUES (1465, '7538eeced3234212b79ce2073cbc5635', 'cc6e7ed98edb4fa1a8cc85e9c697a2f0');
INSERT INTO `ums_role_resources_relation` VALUES (1466, '58c0ac3a3ac642368609086ed07d12e2', 'cc6e7ed98edb4fa1a8cc85e9c697a2f0');
INSERT INTO `ums_role_resources_relation` VALUES (1467, 'c34db3cb33524a4a9dd3e93050eba236', 'cc6e7ed98edb4fa1a8cc85e9c697a2f0');
INSERT INTO `ums_role_resources_relation` VALUES (1468, 'cc2c749beba34cff94895b7c176fc41c', 'cc6e7ed98edb4fa1a8cc85e9c697a2f0');
INSERT INTO `ums_role_resources_relation` VALUES (1469, '1018caa66d354d9ab248991fbf9c27b4', 'cc6e7ed98edb4fa1a8cc85e9c697a2f0');
INSERT INTO `ums_role_resources_relation` VALUES (1470, '2c9a6c486a1745e8b5488f4879430986', 'cc6e7ed98edb4fa1a8cc85e9c697a2f0');
INSERT INTO `ums_role_resources_relation` VALUES (1471, '6b24836d27ac4a43aa86fbf421d9328b', 'cc6e7ed98edb4fa1a8cc85e9c697a2f0');
INSERT INTO `ums_role_resources_relation` VALUES (1472, '24f6a9ada02845689a0f688020ff1049', 'cc6e7ed98edb4fa1a8cc85e9c697a2f0');
INSERT INTO `ums_role_resources_relation` VALUES (1473, '90350a28e7c7408c836e9a3fe98b5077', 'cc6e7ed98edb4fa1a8cc85e9c697a2f0');
INSERT INTO `ums_role_resources_relation` VALUES (1474, '67795410c2db498788afdf0c071519f8', 'cc6e7ed98edb4fa1a8cc85e9c697a2f0');
INSERT INTO `ums_role_resources_relation` VALUES (1475, 'b786bc8688814eec90e591a25d8af6cd', 'cc6e7ed98edb4fa1a8cc85e9c697a2f0');
INSERT INTO `ums_role_resources_relation` VALUES (1476, 'c08b371804d443e1af46dbcf6284e857', 'cc6e7ed98edb4fa1a8cc85e9c697a2f0');
INSERT INTO `ums_role_resources_relation` VALUES (1477, '8099d25860d7473fb4791c7293e5b512', 'cc6e7ed98edb4fa1a8cc85e9c697a2f0');
INSERT INTO `ums_role_resources_relation` VALUES (1620, 'a143af1beef1406e926836444ced2954', 'df16c92c61ca4c4fb8c1277b10ed3464');
INSERT INTO `ums_role_resources_relation` VALUES (1621, 'b1dea26e8f724eada54a26a3d3370ad7', 'df16c92c61ca4c4fb8c1277b10ed3464');
INSERT INTO `ums_role_resources_relation` VALUES (1622, '01545cdd07fe47fd8a4db5d8bf744028', 'df16c92c61ca4c4fb8c1277b10ed3464');
INSERT INTO `ums_role_resources_relation` VALUES (1623, '93415e4b0203422d8cbf846cdae7ae46', 'df16c92c61ca4c4fb8c1277b10ed3464');
INSERT INTO `ums_role_resources_relation` VALUES (1624, 'b8bcd324b931478181730c352b1fa5a8', 'df16c92c61ca4c4fb8c1277b10ed3464');
INSERT INTO `ums_role_resources_relation` VALUES (1625, '4593620cb39f46e691094b4798e207f3', 'df16c92c61ca4c4fb8c1277b10ed3464');
INSERT INTO `ums_role_resources_relation` VALUES (1626, 'b31d5e42f62f4d51938721e866299b20', 'df16c92c61ca4c4fb8c1277b10ed3464');
INSERT INTO `ums_role_resources_relation` VALUES (1627, '9b89d8bcb57d4b98b594418bf76223d8', 'df16c92c61ca4c4fb8c1277b10ed3464');
INSERT INTO `ums_role_resources_relation` VALUES (1628, 'b8c31eb1e8384a0b8360ababda116fa3', 'df16c92c61ca4c4fb8c1277b10ed3464');
INSERT INTO `ums_role_resources_relation` VALUES (1629, '0b6e2784e7a04489aa586d6ce2a41292', 'df16c92c61ca4c4fb8c1277b10ed3464');
INSERT INTO `ums_role_resources_relation` VALUES (1630, '91aac39588fc44f2ad7eb7a370a19f56', 'df16c92c61ca4c4fb8c1277b10ed3464');
INSERT INTO `ums_role_resources_relation` VALUES (1631, '589ab412e33e40588edaa00e3239fa23', 'df16c92c61ca4c4fb8c1277b10ed3464');
INSERT INTO `ums_role_resources_relation` VALUES (1632, '1b62526e044d43959ed96ae3a86d97b0', 'df16c92c61ca4c4fb8c1277b10ed3464');
INSERT INTO `ums_role_resources_relation` VALUES (1633, '1a58c18e9f034ad5b3cc96907d8e5e81', 'df16c92c61ca4c4fb8c1277b10ed3464');
INSERT INTO `ums_role_resources_relation` VALUES (1634, 'd42472adedc14124a94ff3cf487bd6fc', 'df16c92c61ca4c4fb8c1277b10ed3464');
INSERT INTO `ums_role_resources_relation` VALUES (1635, '79831df90eb344749ec514abf0300e8c', 'df16c92c61ca4c4fb8c1277b10ed3464');
INSERT INTO `ums_role_resources_relation` VALUES (1636, '7538eeced3234212b79ce2073cbc5635', 'df16c92c61ca4c4fb8c1277b10ed3464');
INSERT INTO `ums_role_resources_relation` VALUES (1637, '58c0ac3a3ac642368609086ed07d12e2', 'df16c92c61ca4c4fb8c1277b10ed3464');
INSERT INTO `ums_role_resources_relation` VALUES (1638, '1018caa66d354d9ab248991fbf9c27b4', 'df16c92c61ca4c4fb8c1277b10ed3464');
INSERT INTO `ums_role_resources_relation` VALUES (1639, '2c9a6c486a1745e8b5488f4879430986', 'df16c92c61ca4c4fb8c1277b10ed3464');
INSERT INTO `ums_role_resources_relation` VALUES (1640, '6b24836d27ac4a43aa86fbf421d9328b', 'df16c92c61ca4c4fb8c1277b10ed3464');
INSERT INTO `ums_role_resources_relation` VALUES (1641, '24f6a9ada02845689a0f688020ff1049', 'df16c92c61ca4c4fb8c1277b10ed3464');
INSERT INTO `ums_role_resources_relation` VALUES (1642, '90350a28e7c7408c836e9a3fe98b5077', 'df16c92c61ca4c4fb8c1277b10ed3464');
INSERT INTO `ums_role_resources_relation` VALUES (1643, '67795410c2db498788afdf0c071519f8', 'df16c92c61ca4c4fb8c1277b10ed3464');
INSERT INTO `ums_role_resources_relation` VALUES (1644, 'b786bc8688814eec90e591a25d8af6cd', 'df16c92c61ca4c4fb8c1277b10ed3464');
INSERT INTO `ums_role_resources_relation` VALUES (1645, '8099d25860d7473fb4791c7293e5b512', 'df16c92c61ca4c4fb8c1277b10ed3464');
INSERT INTO `ums_role_resources_relation` VALUES (1683, 'b8bcd324b931478181730c352b1fa5a8', 'ac218d77cb83404bb9f2a0950203075f');
INSERT INTO `ums_role_resources_relation` VALUES (1684, '4593620cb39f46e691094b4798e207f3', 'ac218d77cb83404bb9f2a0950203075f');
INSERT INTO `ums_role_resources_relation` VALUES (1685, '91aac39588fc44f2ad7eb7a370a19f56', 'ac218d77cb83404bb9f2a0950203075f');
INSERT INTO `ums_role_resources_relation` VALUES (1686, '589ab412e33e40588edaa00e3239fa23', 'ac218d77cb83404bb9f2a0950203075f');
INSERT INTO `ums_role_resources_relation` VALUES (1687, '1b62526e044d43959ed96ae3a86d97b0', 'ac218d77cb83404bb9f2a0950203075f');
INSERT INTO `ums_role_resources_relation` VALUES (1688, '1a58c18e9f034ad5b3cc96907d8e5e81', 'ac218d77cb83404bb9f2a0950203075f');
INSERT INTO `ums_role_resources_relation` VALUES (1689, 'b786bc8688814eec90e591a25d8af6cd', 'ac218d77cb83404bb9f2a0950203075f');
INSERT INTO `ums_role_resources_relation` VALUES (1756, 'b8bcd324b931478181730c352b1fa5a8', '6f5025bf5e094eef90ea22d35029c1bf');
INSERT INTO `ums_role_resources_relation` VALUES (1757, '4593620cb39f46e691094b4798e207f3', '6f5025bf5e094eef90ea22d35029c1bf');
INSERT INTO `ums_role_resources_relation` VALUES (1758, '91aac39588fc44f2ad7eb7a370a19f56', '6f5025bf5e094eef90ea22d35029c1bf');
INSERT INTO `ums_role_resources_relation` VALUES (1759, '589ab412e33e40588edaa00e3239fa23', '6f5025bf5e094eef90ea22d35029c1bf');
INSERT INTO `ums_role_resources_relation` VALUES (1760, '1b62526e044d43959ed96ae3a86d97b0', '6f5025bf5e094eef90ea22d35029c1bf');
INSERT INTO `ums_role_resources_relation` VALUES (1761, '1a58c18e9f034ad5b3cc96907d8e5e81', '6f5025bf5e094eef90ea22d35029c1bf');
INSERT INTO `ums_role_resources_relation` VALUES (1762, 'd42472adedc14124a94ff3cf487bd6fc', '6f5025bf5e094eef90ea22d35029c1bf');
INSERT INTO `ums_role_resources_relation` VALUES (1763, '79831df90eb344749ec514abf0300e8c', '6f5025bf5e094eef90ea22d35029c1bf');
INSERT INTO `ums_role_resources_relation` VALUES (1764, '7538eeced3234212b79ce2073cbc5635', '6f5025bf5e094eef90ea22d35029c1bf');
INSERT INTO `ums_role_resources_relation` VALUES (1765, '58c0ac3a3ac642368609086ed07d12e2', '6f5025bf5e094eef90ea22d35029c1bf');
INSERT INTO `ums_role_resources_relation` VALUES (1766, 'c34db3cb33524a4a9dd3e93050eba236', '6f5025bf5e094eef90ea22d35029c1bf');
INSERT INTO `ums_role_resources_relation` VALUES (1767, '2c9a6c486a1745e8b5488f4879430986', '6f5025bf5e094eef90ea22d35029c1bf');
INSERT INTO `ums_role_resources_relation` VALUES (1768, '6b24836d27ac4a43aa86fbf421d9328b', '6f5025bf5e094eef90ea22d35029c1bf');
INSERT INTO `ums_role_resources_relation` VALUES (1769, '24f6a9ada02845689a0f688020ff1049', '6f5025bf5e094eef90ea22d35029c1bf');
INSERT INTO `ums_role_resources_relation` VALUES (1770, '90350a28e7c7408c836e9a3fe98b5077', '6f5025bf5e094eef90ea22d35029c1bf');
INSERT INTO `ums_role_resources_relation` VALUES (1771, '67795410c2db498788afdf0c071519f8', '6f5025bf5e094eef90ea22d35029c1bf');
INSERT INTO `ums_role_resources_relation` VALUES (1772, 'b786bc8688814eec90e591a25d8af6cd', '6f5025bf5e094eef90ea22d35029c1bf');
INSERT INTO `ums_role_resources_relation` VALUES (1796, 'a143af1beef1406e926836444ced2954', 'f60d8e2310564a6985c696422c42bd53');
INSERT INTO `ums_role_resources_relation` VALUES (1797, 'b1dea26e8f724eada54a26a3d3370ad7', 'f60d8e2310564a6985c696422c42bd53');
INSERT INTO `ums_role_resources_relation` VALUES (1798, '01545cdd07fe47fd8a4db5d8bf744028', 'f60d8e2310564a6985c696422c42bd53');
INSERT INTO `ums_role_resources_relation` VALUES (1799, '93415e4b0203422d8cbf846cdae7ae46', 'f60d8e2310564a6985c696422c42bd53');
INSERT INTO `ums_role_resources_relation` VALUES (1800, 'b8bcd324b931478181730c352b1fa5a8', 'f60d8e2310564a6985c696422c42bd53');
INSERT INTO `ums_role_resources_relation` VALUES (1801, '4593620cb39f46e691094b4798e207f3', 'f60d8e2310564a6985c696422c42bd53');
INSERT INTO `ums_role_resources_relation` VALUES (1802, '91aac39588fc44f2ad7eb7a370a19f56', 'f60d8e2310564a6985c696422c42bd53');
INSERT INTO `ums_role_resources_relation` VALUES (1803, '589ab412e33e40588edaa00e3239fa23', 'f60d8e2310564a6985c696422c42bd53');
INSERT INTO `ums_role_resources_relation` VALUES (1804, '1b62526e044d43959ed96ae3a86d97b0', 'f60d8e2310564a6985c696422c42bd53');
INSERT INTO `ums_role_resources_relation` VALUES (1805, '1a58c18e9f034ad5b3cc96907d8e5e81', 'f60d8e2310564a6985c696422c42bd53');
INSERT INTO `ums_role_resources_relation` VALUES (1806, 'd42472adedc14124a94ff3cf487bd6fc', 'f60d8e2310564a6985c696422c42bd53');
INSERT INTO `ums_role_resources_relation` VALUES (1807, '79831df90eb344749ec514abf0300e8c', 'f60d8e2310564a6985c696422c42bd53');
INSERT INTO `ums_role_resources_relation` VALUES (1808, '7538eeced3234212b79ce2073cbc5635', 'f60d8e2310564a6985c696422c42bd53');
INSERT INTO `ums_role_resources_relation` VALUES (1809, '58c0ac3a3ac642368609086ed07d12e2', 'f60d8e2310564a6985c696422c42bd53');
INSERT INTO `ums_role_resources_relation` VALUES (1810, 'c34db3cb33524a4a9dd3e93050eba236', 'f60d8e2310564a6985c696422c42bd53');
INSERT INTO `ums_role_resources_relation` VALUES (1811, 'cc2c749beba34cff94895b7c176fc41c', 'f60d8e2310564a6985c696422c42bd53');
INSERT INTO `ums_role_resources_relation` VALUES (1812, '1018caa66d354d9ab248991fbf9c27b4', 'f60d8e2310564a6985c696422c42bd53');
INSERT INTO `ums_role_resources_relation` VALUES (1813, '2c9a6c486a1745e8b5488f4879430986', 'f60d8e2310564a6985c696422c42bd53');
INSERT INTO `ums_role_resources_relation` VALUES (1814, '6b24836d27ac4a43aa86fbf421d9328b', 'f60d8e2310564a6985c696422c42bd53');
INSERT INTO `ums_role_resources_relation` VALUES (1815, '90350a28e7c7408c836e9a3fe98b5077', 'f60d8e2310564a6985c696422c42bd53');
INSERT INTO `ums_role_resources_relation` VALUES (1816, '67795410c2db498788afdf0c071519f8', 'f60d8e2310564a6985c696422c42bd53');
INSERT INTO `ums_role_resources_relation` VALUES (1817, 'b786bc8688814eec90e591a25d8af6cd', 'f60d8e2310564a6985c696422c42bd53');
INSERT INTO `ums_role_resources_relation` VALUES (1818, '8099d25860d7473fb4791c7293e5b512', 'f60d8e2310564a6985c696422c42bd53');
INSERT INTO `ums_role_resources_relation` VALUES (1819, '2fbe15dbb1054679b1ad5be991c5926a', 'f80584b3d4604bb5ab1ca7f440e75f51');
INSERT INTO `ums_role_resources_relation` VALUES (1820, 'f81aaf91c96a45109eb469a7beaaa30e', 'f80584b3d4604bb5ab1ca7f440e75f51');
INSERT INTO `ums_role_resources_relation` VALUES (1821, '0a455fa409594ffb8e53470945ff9a6c', 'f80584b3d4604bb5ab1ca7f440e75f51');
INSERT INTO `ums_role_resources_relation` VALUES (1822, '1a467fb9dab0421a86b730bf8b709cbc', 'f80584b3d4604bb5ab1ca7f440e75f51');
INSERT INTO `ums_role_resources_relation` VALUES (1823, 'cf12dac3fd404bd1b70f6fd78b0dabad', 'f80584b3d4604bb5ab1ca7f440e75f51');
INSERT INTO `ums_role_resources_relation` VALUES (1824, '69fdb40c12ab486f9df81597978dcac3', 'f80584b3d4604bb5ab1ca7f440e75f51');
INSERT INTO `ums_role_resources_relation` VALUES (1825, '95dbabf578b54b2197e90e2bfc9fa2a9', 'f80584b3d4604bb5ab1ca7f440e75f51');
INSERT INTO `ums_role_resources_relation` VALUES (1826, 'be8632949a5540e3a47f760a6cc9dfe7', 'f80584b3d4604bb5ab1ca7f440e75f51');
INSERT INTO `ums_role_resources_relation` VALUES (1827, 'a143af1beef1406e926836444ced2954', 'f80584b3d4604bb5ab1ca7f440e75f51');
INSERT INTO `ums_role_resources_relation` VALUES (1828, 'b1dea26e8f724eada54a26a3d3370ad7', 'f80584b3d4604bb5ab1ca7f440e75f51');
INSERT INTO `ums_role_resources_relation` VALUES (1829, '01545cdd07fe47fd8a4db5d8bf744028', 'f80584b3d4604bb5ab1ca7f440e75f51');
INSERT INTO `ums_role_resources_relation` VALUES (1830, '93415e4b0203422d8cbf846cdae7ae46', 'f80584b3d4604bb5ab1ca7f440e75f51');
INSERT INTO `ums_role_resources_relation` VALUES (1831, 'b8bcd324b931478181730c352b1fa5a8', 'f80584b3d4604bb5ab1ca7f440e75f51');
INSERT INTO `ums_role_resources_relation` VALUES (1832, '4593620cb39f46e691094b4798e207f3', 'f80584b3d4604bb5ab1ca7f440e75f51');
INSERT INTO `ums_role_resources_relation` VALUES (1833, '91aac39588fc44f2ad7eb7a370a19f56', 'f80584b3d4604bb5ab1ca7f440e75f51');
INSERT INTO `ums_role_resources_relation` VALUES (1834, '589ab412e33e40588edaa00e3239fa23', 'f80584b3d4604bb5ab1ca7f440e75f51');
INSERT INTO `ums_role_resources_relation` VALUES (1835, '1b62526e044d43959ed96ae3a86d97b0', 'f80584b3d4604bb5ab1ca7f440e75f51');
INSERT INTO `ums_role_resources_relation` VALUES (1836, '1a58c18e9f034ad5b3cc96907d8e5e81', 'f80584b3d4604bb5ab1ca7f440e75f51');
INSERT INTO `ums_role_resources_relation` VALUES (1837, 'd42472adedc14124a94ff3cf487bd6fc', 'f80584b3d4604bb5ab1ca7f440e75f51');
INSERT INTO `ums_role_resources_relation` VALUES (1838, '79831df90eb344749ec514abf0300e8c', 'f80584b3d4604bb5ab1ca7f440e75f51');
INSERT INTO `ums_role_resources_relation` VALUES (1839, '7538eeced3234212b79ce2073cbc5635', 'f80584b3d4604bb5ab1ca7f440e75f51');
INSERT INTO `ums_role_resources_relation` VALUES (1840, '58c0ac3a3ac642368609086ed07d12e2', 'f80584b3d4604bb5ab1ca7f440e75f51');
INSERT INTO `ums_role_resources_relation` VALUES (1841, 'c34db3cb33524a4a9dd3e93050eba236', 'f80584b3d4604bb5ab1ca7f440e75f51');
INSERT INTO `ums_role_resources_relation` VALUES (1842, 'cc2c749beba34cff94895b7c176fc41c', 'f80584b3d4604bb5ab1ca7f440e75f51');
INSERT INTO `ums_role_resources_relation` VALUES (1843, '1018caa66d354d9ab248991fbf9c27b4', 'f80584b3d4604bb5ab1ca7f440e75f51');
INSERT INTO `ums_role_resources_relation` VALUES (1844, '2c9a6c486a1745e8b5488f4879430986', 'f80584b3d4604bb5ab1ca7f440e75f51');
INSERT INTO `ums_role_resources_relation` VALUES (1845, '6b24836d27ac4a43aa86fbf421d9328b', 'f80584b3d4604bb5ab1ca7f440e75f51');
INSERT INTO `ums_role_resources_relation` VALUES (1846, '24f6a9ada02845689a0f688020ff1049', 'f80584b3d4604bb5ab1ca7f440e75f51');
INSERT INTO `ums_role_resources_relation` VALUES (1847, '90350a28e7c7408c836e9a3fe98b5077', 'f80584b3d4604bb5ab1ca7f440e75f51');
INSERT INTO `ums_role_resources_relation` VALUES (1848, '67795410c2db498788afdf0c071519f8', 'f80584b3d4604bb5ab1ca7f440e75f51');
INSERT INTO `ums_role_resources_relation` VALUES (1849, 'b786bc8688814eec90e591a25d8af6cd', 'f80584b3d4604bb5ab1ca7f440e75f51');
INSERT INTO `ums_role_resources_relation` VALUES (1850, 'c08b371804d443e1af46dbcf6284e857', 'f80584b3d4604bb5ab1ca7f440e75f51');
INSERT INTO `ums_role_resources_relation` VALUES (1851, 'f78b6ef08d764fc89049ca8b19a3a5a8', 'f80584b3d4604bb5ab1ca7f440e75f51');
INSERT INTO `ums_role_resources_relation` VALUES (1852, '8099d25860d7473fb4791c7293e5b512', 'f80584b3d4604bb5ab1ca7f440e75f51');
INSERT INTO `ums_role_resources_relation` VALUES (1853, '881559b2d3fd41b2a79ed18d5316a5e3', 'f80584b3d4604bb5ab1ca7f440e75f51');
INSERT INTO `ums_role_resources_relation` VALUES (1922, '983cda203db447c4a9c26dcc5a90c70a', 'f77df8b313b44803bb4c7c3531b5a202');
INSERT INTO `ums_role_resources_relation` VALUES (1923, 'ea67342089124ebba95cd6bdaf3e0279', 'f77df8b313b44803bb4c7c3531b5a202');
INSERT INTO `ums_role_resources_relation` VALUES (1924, '2fbe15dbb1054679b1ad5be991c5926a', 'f77df8b313b44803bb4c7c3531b5a202');
INSERT INTO `ums_role_resources_relation` VALUES (1925, 'f81aaf91c96a45109eb469a7beaaa30e', 'f77df8b313b44803bb4c7c3531b5a202');
INSERT INTO `ums_role_resources_relation` VALUES (1926, '0a455fa409594ffb8e53470945ff9a6c', 'f77df8b313b44803bb4c7c3531b5a202');
INSERT INTO `ums_role_resources_relation` VALUES (1927, '1a467fb9dab0421a86b730bf8b709cbc', 'f77df8b313b44803bb4c7c3531b5a202');
INSERT INTO `ums_role_resources_relation` VALUES (1928, 'cf12dac3fd404bd1b70f6fd78b0dabad', 'f77df8b313b44803bb4c7c3531b5a202');
INSERT INTO `ums_role_resources_relation` VALUES (1929, '69fdb40c12ab486f9df81597978dcac3', 'f77df8b313b44803bb4c7c3531b5a202');
INSERT INTO `ums_role_resources_relation` VALUES (1930, 'a143af1beef1406e926836444ced2954', 'f77df8b313b44803bb4c7c3531b5a202');
INSERT INTO `ums_role_resources_relation` VALUES (1931, 'b1dea26e8f724eada54a26a3d3370ad7', 'f77df8b313b44803bb4c7c3531b5a202');
INSERT INTO `ums_role_resources_relation` VALUES (1932, '01545cdd07fe47fd8a4db5d8bf744028', 'f77df8b313b44803bb4c7c3531b5a202');
INSERT INTO `ums_role_resources_relation` VALUES (1933, '93415e4b0203422d8cbf846cdae7ae46', 'f77df8b313b44803bb4c7c3531b5a202');
INSERT INTO `ums_role_resources_relation` VALUES (1934, 'b8bcd324b931478181730c352b1fa5a8', 'f77df8b313b44803bb4c7c3531b5a202');
INSERT INTO `ums_role_resources_relation` VALUES (1935, '4593620cb39f46e691094b4798e207f3', 'f77df8b313b44803bb4c7c3531b5a202');
INSERT INTO `ums_role_resources_relation` VALUES (1936, '91aac39588fc44f2ad7eb7a370a19f56', 'f77df8b313b44803bb4c7c3531b5a202');
INSERT INTO `ums_role_resources_relation` VALUES (1937, '589ab412e33e40588edaa00e3239fa23', 'f77df8b313b44803bb4c7c3531b5a202');
INSERT INTO `ums_role_resources_relation` VALUES (1938, '1b62526e044d43959ed96ae3a86d97b0', 'f77df8b313b44803bb4c7c3531b5a202');
INSERT INTO `ums_role_resources_relation` VALUES (1939, '1a58c18e9f034ad5b3cc96907d8e5e81', 'f77df8b313b44803bb4c7c3531b5a202');
INSERT INTO `ums_role_resources_relation` VALUES (1940, 'd42472adedc14124a94ff3cf487bd6fc', 'f77df8b313b44803bb4c7c3531b5a202');
INSERT INTO `ums_role_resources_relation` VALUES (1941, '79831df90eb344749ec514abf0300e8c', 'f77df8b313b44803bb4c7c3531b5a202');
INSERT INTO `ums_role_resources_relation` VALUES (1942, '7538eeced3234212b79ce2073cbc5635', 'f77df8b313b44803bb4c7c3531b5a202');
INSERT INTO `ums_role_resources_relation` VALUES (1943, '58c0ac3a3ac642368609086ed07d12e2', 'f77df8b313b44803bb4c7c3531b5a202');
INSERT INTO `ums_role_resources_relation` VALUES (1944, 'c34db3cb33524a4a9dd3e93050eba236', 'f77df8b313b44803bb4c7c3531b5a202');
INSERT INTO `ums_role_resources_relation` VALUES (1945, 'cc2c749beba34cff94895b7c176fc41c', 'f77df8b313b44803bb4c7c3531b5a202');
INSERT INTO `ums_role_resources_relation` VALUES (1946, '1018caa66d354d9ab248991fbf9c27b4', 'f77df8b313b44803bb4c7c3531b5a202');
INSERT INTO `ums_role_resources_relation` VALUES (1947, '2c9a6c486a1745e8b5488f4879430986', 'f77df8b313b44803bb4c7c3531b5a202');
INSERT INTO `ums_role_resources_relation` VALUES (1948, '6b24836d27ac4a43aa86fbf421d9328b', 'f77df8b313b44803bb4c7c3531b5a202');
INSERT INTO `ums_role_resources_relation` VALUES (1949, '24f6a9ada02845689a0f688020ff1049', 'f77df8b313b44803bb4c7c3531b5a202');
INSERT INTO `ums_role_resources_relation` VALUES (1950, '90350a28e7c7408c836e9a3fe98b5077', 'f77df8b313b44803bb4c7c3531b5a202');
INSERT INTO `ums_role_resources_relation` VALUES (1951, '67795410c2db498788afdf0c071519f8', 'f77df8b313b44803bb4c7c3531b5a202');
INSERT INTO `ums_role_resources_relation` VALUES (1952, 'b786bc8688814eec90e591a25d8af6cd', 'f77df8b313b44803bb4c7c3531b5a202');
INSERT INTO `ums_role_resources_relation` VALUES (1953, 'c08b371804d443e1af46dbcf6284e857', 'f77df8b313b44803bb4c7c3531b5a202');
INSERT INTO `ums_role_resources_relation` VALUES (1954, '8099d25860d7473fb4791c7293e5b512', 'f77df8b313b44803bb4c7c3531b5a202');
INSERT INTO `ums_role_resources_relation` VALUES (1955, '881559b2d3fd41b2a79ed18d5316a5e3', 'f77df8b313b44803bb4c7c3531b5a202');

SET FOREIGN_KEY_CHECKS = 1;
