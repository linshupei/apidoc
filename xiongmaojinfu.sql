/*
Navicat MySQL Data Transfer

Source Server         : 本地SQL-master
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : xiongmaojinfu

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2018-12-14 15:26:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin_user`
-- ----------------------------
DROP TABLE IF EXISTS `admin_user`;
CREATE TABLE `admin_user` (
  `id` varchar(32) NOT NULL,
  `account` varchar(32) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `role_id` varchar(32) DEFAULT NULL,
  `head_image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理平台账号';

-- ----------------------------
-- Records of admin_user
-- ----------------------------
INSERT INTO `admin_user` VALUES ('1', 'admin', '21218CCA77804D2BA1922C33E0151105', '管理员', '1', '../larryms/images/user1.jpg');

-- ----------------------------
-- Table structure for `app_user_call_record`
-- ----------------------------
DROP TABLE IF EXISTS `app_user_call_record`;
CREATE TABLE `app_user_call_record` (
  `id` varchar(32) NOT NULL,
  `call_name` varchar(32) DEFAULT NULL COMMENT '呼叫名字',
  `call_phone` varchar(20) DEFAULT NULL COMMENT '发送方',
  `called_phone` varchar(20) DEFAULT NULL COMMENT '接收方',
  `call_times` varchar(10) DEFAULT NULL COMMENT '呼叫时长',
  `call_time` varchar(32) DEFAULT NULL COMMENT '呼叫时间（毫秒数）',
  `call_time_str` varchar(20) DEFAULT NULL COMMENT '呼叫时间（yyyy-MM-dd HH:mm:ss）',
  `type` varchar(1) DEFAULT NULL COMMENT '1：呼入 2：呼出 3：未接',
  `app_user_id` varchar(32) DEFAULT NULL COMMENT '通话记录',
  `user_account` varchar(32) DEFAULT NULL COMMENT 'APP用户账号',
  PRIMARY KEY (`id`),
  KEY `FKmy46hcasvasmf7lxedj7qpy5x` (`app_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户APP手机通话记录';

-- ----------------------------
-- Records of app_user_call_record
-- ----------------------------
INSERT INTO `app_user_call_record` VALUES ('1', '联享家门禁', '', '02038609888', '0分0秒', '1519436457880', '2018-02-24 09:40:57', '2', '154450453541a6aefebebc6e4a9d8454', '18608171331');
INSERT INTO `app_user_call_record` VALUES ('1544593986970bd558daf3b74ba1aa7c', null, '', '13580328843', '0分7秒', '1519436498088', '2018-02-24 09:41:38', '2', '1544593971546ec9d6f4b21f4a378bdc', '18122159999');
INSERT INTO `app_user_call_record` VALUES ('15445939869785d170d720ef4df280f0', '联享家门禁', '', '02038609888', '0分0秒', '1519436457880', '2018-02-24 09:40:57', '2', '1544593971546ec9d6f4b21f4a378bdc', '18122159999');
INSERT INTO `app_user_call_record` VALUES ('2', '联享家门禁', null, '02038609888', '0分0秒', '1519436457880', '2018-02-24 09:40:57', '2', '154450453541a6aefebebc6e4a9d8454', '18608171331');

-- ----------------------------
-- Table structure for `app_user_contact_info`
-- ----------------------------
DROP TABLE IF EXISTS `app_user_contact_info`;
CREATE TABLE `app_user_contact_info` (
  `id` varchar(32) NOT NULL,
  `mobile` varchar(32) DEFAULT NULL COMMENT '手机号码',
  `name` varchar(32) DEFAULT NULL COMMENT '备注名称',
  `time` varchar(32) DEFAULT NULL COMMENT '呼叫时间（毫秒数）',
  `time_str` varchar(20) DEFAULT NULL COMMENT '呼叫时间（yyyy-MM-dd HH:mm:ss）',
  `user_account` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `app_user_id` varchar(32) DEFAULT NULL COMMENT 'app账号id',
  PRIMARY KEY (`id`),
  KEY `FKfqr2bg3dw36jax14ki2v1vhiy` (`app_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='通讯录';

-- ----------------------------
-- Records of app_user_contact_info
-- ----------------------------
INSERT INTO `app_user_contact_info` VALUES ('1', '13926429792', '二手', '1519436457880', '2018-12-12 11:11:11', '18608171331', '154450453541a6aefebebc6e4a9d8454');

-- ----------------------------
-- Table structure for `app_user_info`
-- ----------------------------
DROP TABLE IF EXISTS `app_user_info`;
CREATE TABLE `app_user_info` (
  `id` varchar(32) NOT NULL,
  `user_name` varchar(32) DEFAULT NULL COMMENT '用户名',
  `user_account` varchar(32) DEFAULT NULL COMMENT '用户账号',
  `login_password` varchar(32) DEFAULT NULL COMMENT '登录密码',
  `role_id` varchar(32) DEFAULT NULL COMMENT '所属角色',
  `registed_time` varchar(32) DEFAULT NULL COMMENT '注册时间',
  `loan_num` varchar(32) DEFAULT '0' COMMENT '贷款次数',
  `sms_upload_time` varchar(20) DEFAULT NULL COMMENT '短信记录上传最后一次时间（戳毫秒数）',
  `call_upload_time` varchar(20) DEFAULT NULL COMMENT '呼叫记录最新上传时间（时间戳）',
  `contact_upload_time` varchar(20) DEFAULT NULL COMMENT '联系人最新上传时间（时间戳）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_user_info
-- ----------------------------
INSERT INTO `app_user_info` VALUES ('1544492626819f56a2a28a384d2486ae', '18122158888', '18122158888', 'E10ADC3949BA59ABBE56E057F20F883E', null, '2018-12-11 09:43:46', '0', '0', '0', '0');
INSERT INTO `app_user_info` VALUES ('154450453541a6aefebebc6e4a9d8454', '18608171331', '18608171331', 'E8AEEB2B8EB66DDF9104DC6DDAAFE61B', null, '2018-12-11 13:02:15', '0', '0', '0', '0');
INSERT INTO `app_user_info` VALUES ('154451463188ce1cec1cceef4f338a72', '13800138000', '13800138000', '00B7691D86D96AEBD21DD9E138F90840', null, '2018-12-11 15:50:31', '0', '0', '0', '0');
INSERT INTO `app_user_info` VALUES ('1544514682431241956543ec486fad76', '18924281950', '18924281950', '64C126A71D8428EA6355AC1C91CDBBF1', null, '2018-12-11 15:51:22', '0', '0', '0', '0');
INSERT INTO `app_user_info` VALUES ('1544593971546ec9d6f4b21f4a378bdc', '18122159999', '18122159999', 'E10ADC3949BA59ABBE56E057F20F883E', null, '2018-12-12 13:52:51', '0', '0', '1544593986961', '0');

-- ----------------------------
-- Table structure for `app_user_sms_record`
-- ----------------------------
DROP TABLE IF EXISTS `app_user_sms_record`;
CREATE TABLE `app_user_sms_record` (
  `id` varchar(32) NOT NULL,
  `name` varchar(32) DEFAULT NULL COMMENT '发送人/接收人',
  `type` varchar(1) DEFAULT NULL COMMENT '1：收到 2：发送',
  `sms_content` varchar(255) DEFAULT NULL,
  `send_phone` varchar(32) DEFAULT NULL COMMENT '发送端号码',
  `send_time` varchar(20) DEFAULT NULL COMMENT '发送时间（毫秒数）',
  `send_time_format` varchar(32) DEFAULT NULL COMMENT '发送时间（yyyy-MM-dd HH:mm:ss格式）',
  `user_account` varchar(32) DEFAULT NULL COMMENT 'APP用户账号',
  `app_user_id` varchar(32) DEFAULT NULL COMMENT 'app用户信息索引id',
  PRIMARY KEY (`id`),
  KEY `FKf9hti8ixb1s08i6iv68rm599g` (`app_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户短信记录';

-- ----------------------------
-- Records of app_user_sms_record
-- ----------------------------
INSERT INTO `app_user_sms_record` VALUES ('1', '备注', '1', '您已欠费', '13926429792', '1519436457880', '2018-12-12 11:11:11', '18608171331', '154450453541a6aefebebc6e4a9d8454');
INSERT INTO `app_user_sms_record` VALUES ('11', '备注', '1', '您已欠费', '13926429792', '1519436457880', '2018-12-12 11:11:11', '18608171331', '154450453541a6aefebebc6e4a9d8454');
INSERT INTO `app_user_sms_record` VALUES ('111', '备注', '1', '您已欠费', '13926429792', '1519436457880', '2018-12-12 11:11:11', '18608171331', '154450453541a6aefebebc6e4a9d8454');
INSERT INTO `app_user_sms_record` VALUES ('112321', '备注', '1', '您已欠费', '13926429792', '1519436457880', '2018-12-12 11:11:11', '18608171331', '154450453541a6aefebebc6e4a9d8454');
INSERT INTO `app_user_sms_record` VALUES ('113211', '备注', '1', '您已欠费', '13926429792', '1519436457880', '2018-12-12 11:11:11', '18608171331', '154450453541a6aefebebc6e4a9d8454');
INSERT INTO `app_user_sms_record` VALUES ('2', '备注', '1', '您已欠费', '13926429792', '1519436457880', '2018-12-12 11:11:11', '18608171331', '154450453541a6aefebebc6e4a9d8454');
INSERT INTO `app_user_sms_record` VALUES ('222', '备注', '1', '您已欠费', '13926429792', '1519436457880', '2018-12-12 11:11:11', '18608171331', '154450453541a6aefebebc6e4a9d8454');
INSERT INTO `app_user_sms_record` VALUES ('222212', '备注', '1', '您已欠费', '13926429792', '1519436457880', '2018-12-12 11:11:11', '18608171331', '154450453541a6aefebebc6e4a9d8454');
INSERT INTO `app_user_sms_record` VALUES ('3333', '备注', '1', '您已欠费', '13926429792', '1519436457880', '2018-12-12 11:11:11', '18608171331', '154450453541a6aefebebc6e4a9d8454');
INSERT INTO `app_user_sms_record` VALUES ('556', '备注', '1', '您已欠费', '13926429792', '1519436457880', '2018-12-12 11:11:11', '18608171331', '154450453541a6aefebebc6e4a9d8454');
INSERT INTO `app_user_sms_record` VALUES ('sd', '备注', '1', '您已欠费', '13926429792', '1519436457880', '2018-12-12 11:11:11', '18608171331', '154450453541a6aefebebc6e4a9d8454');
INSERT INTO `app_user_sms_record` VALUES ('vbvb', '备注', '1', '您已欠费', '13926429792', '1519436457880', '2018-12-12 11:11:11', '18608171331', '154450453541a6aefebebc6e4a9d8454');

-- ----------------------------
-- Table structure for `liabilities_platform_info`
-- ----------------------------
DROP TABLE IF EXISTS `liabilities_platform_info`;
CREATE TABLE `liabilities_platform_info` (
  `id` varchar(32) NOT NULL,
  `liabilities_platform_name` varchar(32) DEFAULT NULL COMMENT '负债平台',
  `liabilities_platform` varchar(32) DEFAULT NULL COMMENT '负债平台',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_es3iw44xyt5eh5kxwwx08l33a` (`liabilities_platform`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='负债平台信息表';

-- ----------------------------
-- Records of liabilities_platform_info
-- ----------------------------
INSERT INTO `liabilities_platform_info` VALUES ('1', '米房', 'miFang');
INSERT INTO `liabilities_platform_info` VALUES ('2', '借贷宝', 'jieDaiBao');
INSERT INTO `liabilities_platform_info` VALUES ('3', '有凭证', 'voucher');

-- ----------------------------
-- Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` varchar(32) NOT NULL COMMENT '菜单初始展开状态还与 spread: true 有关，true展开，false折叠 ',
  `pid` varchar(32) DEFAULT NULL COMMENT '父菜单id',
  `title` varchar(32) DEFAULT NULL COMMENT '菜单名称',
  `font` varchar(32) DEFAULT NULL COMMENT '字体',
  `icon` varchar(32) DEFAULT NULL COMMENT '图片名称',
  `url` varchar(255) DEFAULT NULL COMMENT '菜单url',
  `spread` varchar(32) DEFAULT NULL COMMENT '是否扩展',
  `param` varchar(255) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL COMMENT '0：隐藏 1：显示',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('010', null, '贷款信息', 'larry-icon', 'larry-changyongshili', null, 'false', null, '1');
INSERT INTO `menu` VALUES ('01001', '010', '用户贷款信息', 'larry-icon', 'larry-shouye2', '/html/admin/userInfo/userInfo.html', 'false', null, '0');
INSERT INTO `menu` VALUES ('01002', '010', '贷款消息中心', 'larry-icon', 'larry-xiaoxi', 'admin/panel/message.html', 'false', null, '1');
INSERT INTO `menu` VALUES ('01003', '010', '申请客户资料', 'larry-icon', 'larry-shouye2', '/html/admin/userInfo/userLoanInfoPart.html?status=0', 'false', null, '1');
INSERT INTO `menu` VALUES ('01004', '010', '申请客户（完整资料）', 'larry-icon', 'larry-shouye2', '/html/admin/userInfo/userLoanInfoPart.html?status=0', 'false', null, '0');
INSERT INTO `menu` VALUES ('01005', '010', '已放款客户', 'larry-icon', 'larry-shouye2', '/html/admin/userInfo/userLoanInfoPart.html?status=2,4', 'false', null, '1');
INSERT INTO `menu` VALUES ('01006', '010', '已拒绝客户', 'larry-icon', 'larry-shouye2', '/html/admin/userInfo/userLoanInfoPart.html?status=1', 'false', null, '1');
INSERT INTO `menu` VALUES ('020', null, 'APP用户信息', 'larry-icon', 'larry-changyongshili', null, 'false', null, '1');
INSERT INTO `menu` VALUES ('02001', '020', 'APP用户信息查询', 'larry-icon', 'larry-shouye2', '/html/admin/appUserInfo/appUserInfo.html', 'false', null, '1');
INSERT INTO `menu` VALUES ('02002', '020', 'APP用户通讯录查询', 'larry-icon', 'larry-shouye2', '/html/admin/appUserInfo/appUserContactInfo.html', 'false', null, '1');
INSERT INTO `menu` VALUES ('02003', '020', 'APP用户短信记录查询', 'larry-icon', 'larry-shouye2', '/html/admin/appUserInfo/appUserSmsRecordInfo.html', 'false', null, '1');
INSERT INTO `menu` VALUES ('02004', '020', 'APP用户通话记录查询', 'larry-icon', 'larry-shouye2', '/html/admin/appUserInfo/appUserCallRecordInfo.html', 'false', null, '1');

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `role_id` varchar(32) NOT NULL COMMENT '角色id',
  `role_name` varchar(32) DEFAULT NULL COMMENT '角色名称',
  `pid` varchar(32) DEFAULT NULL COMMENT '父角色',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------

-- ----------------------------
-- Table structure for `system_msg_info`
-- ----------------------------
DROP TABLE IF EXISTS `system_msg_info`;
CREATE TABLE `system_msg_info` (
  `id` varchar(32) NOT NULL,
  `msg_content` varchar(255) DEFAULT NULL COMMENT '消息内容',
  `msg_type` varchar(1) DEFAULT NULL COMMENT '消息类型（1：申请贷款消息 2：贷款逾期未还消息 3：输入验证码消息 4：用户还款消息）',
  `msg_time` varchar(20) DEFAULT NULL COMMENT '消息发生时间（yyyy-MM-dd HH:mm:ss）格式',
  `read_status` varchar(1) DEFAULT NULL COMMENT '状态（0：未读  1：已读）',
  `tip_status` varchar(1) DEFAULT NULL COMMENT '提醒状态（0：未提醒 1：已提醒）',
  `loan_info_id` varchar(32) DEFAULT NULL COMMENT '对应的贷款主键',
  PRIMARY KEY (`id`),
  KEY `FKo1qnrimteai9ooovy48y9ge6g` (`loan_info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统消息';

-- ----------------------------
-- Records of system_msg_info
-- ----------------------------
INSERT INTO `system_msg_info` VALUES ('1544504768828d46ef42f00e4f869b6c', '您有一笔贷款申请需要处理，申请人：马聪', '1', '2018-12-11 13:06:08', '0', '1', '154450476879d4de88afa7324c0cb3a8');
INSERT INTO `system_msg_info` VALUES ('154450476910213ffc10ab854ba393f6', '您有申请贷款的验证码需要处理，申请人：马聪 手机号：18608171331 验证码：123456', '3', '2018-12-11 13:06:09', '0', '1', '154450476879d4de88afa7324c0cb3a8');
INSERT INTO `system_msg_info` VALUES ('1544594488653dc300896af045598ca1', '您有一笔贷款申请需要处理，申请人：1', '1', '2018-12-12 14:01:28', '0', '0', '1544594488542251108ba7e24020965c');
INSERT INTO `system_msg_info` VALUES ('1544594489705ee292232638493f9fab', '您有申请贷款的验证码需要处理，申请人：1 手机号：18122159999 验证码：123456', '3', '2018-12-12 14:01:29', '0', '0', '1544594488542251108ba7e24020965c');
INSERT INTO `system_msg_info` VALUES ('1544594671948d2d62f519ad45f7bbc6', '您有一笔贷款申请需要处理，申请人：1', '1', '2018-12-12 14:04:31', '0', '0', '15445946718182d69f6fc71a42dbb7e5');
INSERT INTO `system_msg_info` VALUES ('154459467277fc5bacfd06c94c4b8b37', '您有申请贷款的验证码需要处理，申请人：1 手机号：18122159999 验证码：123456', '3', '2018-12-12 14:04:32', '0', '0', '15445946718182d69f6fc71a42dbb7e5');
INSERT INTO `system_msg_info` VALUES ('1544594731068e5c964dba774145a69f', '您有一笔贷款申请需要处理，申请人：1', '1', '2018-12-12 14:05:31', '0', '0', '154459473100ac2476da39b74defa0f0');
INSERT INTO `system_msg_info` VALUES ('154459473184c4fa68e402204684879a', '您有申请贷款的验证码需要处理，申请人：1 手机号：18122159999 验证码：123456', '3', '2018-12-12 14:05:31', '0', '0', '154459473100ac2476da39b74defa0f0');

-- ----------------------------
-- Table structure for `user_emergency_contact`
-- ----------------------------
DROP TABLE IF EXISTS `user_emergency_contact`;
CREATE TABLE `user_emergency_contact` (
  `id` varchar(32) NOT NULL,
  `mobile` varchar(32) DEFAULT NULL COMMENT '联系方式',
  `name` varchar(32) DEFAULT NULL COMMENT '联系人名称',
  `user_id` varchar(32) DEFAULT NULL COMMENT '用户账号',
  `user_account` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKc5ihjynutxerfqyikg2w661nr` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='紧急联系人信息表';

-- ----------------------------
-- Records of user_emergency_contact
-- ----------------------------
INSERT INTO `user_emergency_contact` VALUES ('1544504768844e7806babd3740438b89', '18989197912', '马林', '154450476877ae805f0265944a09a581', '18608171331');
INSERT INTO `user_emergency_contact` VALUES ('154450476885dda1657a9863433197af', '13330775030', '王剑秋', '154450476877ae805f0265944a09a581', '18608171331');
INSERT INTO `user_emergency_contact` VALUES ('154450476886781945929ea64f9b8fe7', '15808170880', '马哥', '154450476877ae805f0265944a09a581', '18608171331');
INSERT INTO `user_emergency_contact` VALUES ('154450476887be054e45167644c0ad7d', '18280821669', '罗霜', '154450476877ae805f0265944a09a581', '18608171331');
INSERT INTO `user_emergency_contact` VALUES ('1544594488751cf67c186a934321897b', '1', '1', '154459448839ff16bac74f6041d98ea9', '18122159999');
INSERT INTO `user_emergency_contact` VALUES ('154459448887a8b1c939b1cf47628496', '1', '1', '154459448839ff16bac74f6041d98ea9', '18122159999');
INSERT INTO `user_emergency_contact` VALUES ('15445944889498cb3b40db9743fd9b89', '1', '1', '154459448839ff16bac74f6041d98ea9', '18122159999');
INSERT INTO `user_emergency_contact` VALUES ('154459448904e52db09b23dc48d59a27', '1', '1', '154459448839ff16bac74f6041d98ea9', '18122159999');
INSERT INTO `user_emergency_contact` VALUES ('154459467202528ef779328144eca6f0', '1', '1', '1544594671690ef51ea36456460db498', '18122159999');
INSERT INTO `user_emergency_contact` VALUES ('15445946720970cc2136a6af4db58f4b', '1', '1', '1544594671690ef51ea36456460db498', '18122159999');
INSERT INTO `user_emergency_contact` VALUES ('154459467217701408472e984a96b886', '1', '1', '1544594671690ef51ea36456460db498', '18122159999');
INSERT INTO `user_emergency_contact` VALUES ('154459467227c443a6b0e7584ce8971c', '1', '1', '1544594671690ef51ea36456460db498', '18122159999');
INSERT INTO `user_emergency_contact` VALUES ('15445947311390c9299f3ffc42d7aa58', '1', '1', '154459473092e53ce129ce994baf9b23', '18122159999');
INSERT INTO `user_emergency_contact` VALUES ('154459473120f1e4213dd3fe49b09bbf', '1', '1', '154459473092e53ce129ce994baf9b23', '18122159999');
INSERT INTO `user_emergency_contact` VALUES ('1544594731273f919b90194549e689db', '1', '1', '154459473092e53ce129ce994baf9b23', '18122159999');
INSERT INTO `user_emergency_contact` VALUES ('154459473139a4b55ac6b8a046e9b137', '1', '1', '154459473092e53ce129ce994baf9b23', '18122159999');

-- ----------------------------
-- Table structure for `user_info`
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` varchar(32) NOT NULL,
  `app_user_id` varchar(32) DEFAULT NULL COMMENT 'app用户信息表索引',
  `user_account` varchar(32) DEFAULT NULL COMMENT '用户账号',
  `name` varchar(32) DEFAULT NULL COMMENT '姓名',
  `mobile` varchar(32) DEFAULT NULL COMMENT '联系电话',
  `mobile_service_password` varchar(32) DEFAULT NULL COMMENT '手机服务密码',
  `mobile_real_name_time` varchar(32) DEFAULT NULL COMMENT '手机实名登记时间',
  `alipay_account` varchar(32) DEFAULT NULL COMMENT '支付宝账号',
  `sex` varchar(32) DEFAULT NULL,
  `id_card` varchar(32) DEFAULT NULL COMMENT '身份证',
  `id_card_positive` varchar(255) DEFAULT NULL COMMENT '身份证正面照片',
  `id_card_other_size` varchar(255) DEFAULT NULL COMMENT '身份证反面照',
  `id_card_hand` varchar(255) DEFAULT NULL COMMENT '身份证手持照片',
  `birthday` varchar(32) DEFAULT NULL COMMENT '出生日期',
  `zhi_ma_fen` varchar(32) DEFAULT NULL COMMENT '芝麻分',
  `zhi_ma_fen_image` varchar(255) DEFAULT NULL COMMENT '芝麻分截图',
  `hua_bei` varchar(32) DEFAULT NULL COMMENT '花呗额度',
  `hua_bei_image` varchar(255) DEFAULT NULL,
  `bank_card` varchar(64) DEFAULT NULL COMMENT '收款银行卡账户',
  `bank_card_image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKsatxnntaessj8tibw7hmsbfso` (`app_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('154450476877ae805f0265944a09a581', '154450453541a6aefebebc6e4a9d8454', '18608171331', '马聪', '18608171331', '170707', '6年', '18608171331', null, '', 'http://47.92.124.36:8080/upload/image/1544504766210.jpg', 'http://47.92.124.36:8080/upload/image/1544504765368.jpg', 'http://47.92.124.36:8080/upload/image/1544504768372.jpg', null, '695', 'http://47.92.124.36:8080/upload/image/1544504763701.jpg', '1900', 'http://47.92.124.36:8080/upload/image/1544504763701.jpg', '', 'http://47.92.124.36:8080/upload/image/1544504763701.jpg');
INSERT INTO `user_info` VALUES ('154459448839ff16bac74f6041d98ea9', '1544593971546ec9d6f4b21f4a378bdc', '18122159999', '1', '18122159999', '1', '1', '1', null, '', 'http://47.92.124.36:8080/upload/image/1544594487897.jpg', 'http://47.92.124.36:8080/upload/image/1544594487897.jpg', 'http://47.92.124.36:8080/upload/image/1544594487897.jpg', null, '1', 'http://47.92.124.36:8080/upload/image/1544594487897.jpg', '1', 'http://47.92.124.36:8080/upload/image/1544594487897.jpg', '', 'http://47.92.124.36:8080/upload/image/1544594487897.jpg');
INSERT INTO `user_info` VALUES ('1544594671690ef51ea36456460db498', '1544593971546ec9d6f4b21f4a378bdc', '18122159999', '1', '18122159999', '1', '1', '1', null, '', 'http://47.92.124.36:8080/upload/image/1544594671394.jpg', 'http://47.92.124.36:8080/upload/image/1544594671394.jpg', 'http://47.92.124.36:8080/upload/image/1544594671394.jpg', null, '1', 'http://47.92.124.36:8080/upload/image/1544594671394.jpg', '1', 'http://47.92.124.36:8080/upload/image/1544594671394.jpg', '', 'http://47.92.124.36:8080/upload/image/1544594671394.jpg');
INSERT INTO `user_info` VALUES ('154459473092e53ce129ce994baf9b23', '1544593971546ec9d6f4b21f4a378bdc', '18122159999', '1', '18122159999', '1', '1', '1', null, '', 'http://47.92.124.36:8080/upload/image/1544594730681.jpg', 'http://47.92.124.36:8080/upload/image/1544594730681.jpg', 'http://47.92.124.36:8080/upload/image/1544594730681.jpg', null, '1', 'http://47.92.124.36:8080/upload/image/1544594730681.jpg', '1', 'http://47.92.124.36:8080/upload/image/1544594730681.jpg', '', 'http://47.92.124.36:8080/upload/image/1544594730681.jpg');

-- ----------------------------
-- Table structure for `user_liabilities_info`
-- ----------------------------
DROP TABLE IF EXISTS `user_liabilities_info`;
CREATE TABLE `user_liabilities_info` (
  `id` varchar(32) NOT NULL,
  `liabilities_amount` varchar(32) DEFAULT NULL COMMENT '负债金额',
  `liabilities_platform` varchar(32) DEFAULT NULL COMMENT '负债平台',
  `user_id` varchar(32) DEFAULT NULL COMMENT '用户账号',
  `user_account` varchar(32) DEFAULT NULL COMMENT 'APP的用户账号',
  PRIMARY KEY (`id`),
  KEY `FK4m2uqyw30mf2vmgn8ppcpt84o` (`liabilities_platform`),
  KEY `FK973inwn8lktc6w3qju9s0ke6m` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='负债信息表';

-- ----------------------------
-- Records of user_liabilities_info
-- ----------------------------
INSERT INTO `user_liabilities_info` VALUES ('15445047688926aaa4a4262b449cb7ba', '0', 'voucher', '154450476877ae805f0265944a09a581', '18608171331');
INSERT INTO `user_liabilities_info` VALUES ('1544504768895238082ebee047bc92b7', '3000', 'jieDaiBao', '154450476877ae805f0265944a09a581', '18608171331');
INSERT INTO `user_liabilities_info` VALUES ('154450476889aa9daa1fd7f94a4294b8', '0', 'miFang', '154450476877ae805f0265944a09a581', '18608171331');
INSERT INTO `user_liabilities_info` VALUES ('1544594489171260f5f265cb48e4af98', '1', 'miFang', '154459448839ff16bac74f6041d98ea9', '18122159999');
INSERT INTO `user_liabilities_info` VALUES ('1544594489175a85e2e4f8504b82a8d2', '1', 'jieDaiBao', '154459448839ff16bac74f6041d98ea9', '18122159999');
INSERT INTO `user_liabilities_info` VALUES ('154459448917c610981532d0452cb913', '1', 'voucher', '154459448839ff16bac74f6041d98ea9', '18122159999');
INSERT INTO `user_liabilities_info` VALUES ('1544594672387fec48c7814c49a195d9', '1', 'jieDaiBao', '1544594671690ef51ea36456460db498', '18122159999');
INSERT INTO `user_liabilities_info` VALUES ('154459467238ac351e11838540769d08', '1', 'voucher', '1544594671690ef51ea36456460db498', '18122159999');
INSERT INTO `user_liabilities_info` VALUES ('154459467238e6456f63710342ffa235', '1', 'miFang', '1544594671690ef51ea36456460db498', '18122159999');
INSERT INTO `user_liabilities_info` VALUES ('15445947314649b52f2726804ad09c80', '1', 'miFang', '154459473092e53ce129ce994baf9b23', '18122159999');
INSERT INTO `user_liabilities_info` VALUES ('15445947314695dfe433434f497fa6cd', '1', 'jieDaiBao', '154459473092e53ce129ce994baf9b23', '18122159999');
INSERT INTO `user_liabilities_info` VALUES ('154459473146feb7404e62b645408552', '1', 'voucher', '154459473092e53ce129ce994baf9b23', '18122159999');

-- ----------------------------
-- Table structure for `user_loan_info`
-- ----------------------------
DROP TABLE IF EXISTS `user_loan_info`;
CREATE TABLE `user_loan_info` (
  `id` varchar(32) NOT NULL,
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_info的索引id',
  `loan_limit` varchar(32) DEFAULT NULL COMMENT '贷款总额度',
  `make_loans_limit` varchar(32) DEFAULT NULL COMMENT '放款金额',
  `all_instalment` varchar(32) DEFAULT NULL COMMENT '总分期数',
  `status` varchar(1) DEFAULT NULL COMMENT '0：申请中  1：审核不通过  2：已放款 3：逾期未还 4：已还款  5：申请还款',
  `pay_date` varchar(32) DEFAULT NULL COMMENT '还款日期（yyyy-MM-dd HH:mm:ss）',
  `apply_time` varchar(32) DEFAULT NULL COMMENT '申请时间（yyyy-MM-dd HH:mm:ss）',
  `user_account` varchar(32) DEFAULT NULL COMMENT 'app的用户账号',
  PRIMARY KEY (`id`),
  KEY `FKadwmr0sbyeyfgwviv72s7n0ke` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户贷款信息';

-- ----------------------------
-- Records of user_loan_info
-- ----------------------------
INSERT INTO `user_loan_info` VALUES ('154450476879d4de88afa7324c0cb3a8', '154450476877ae805f0265944a09a581', '0', '0', '1', '0', '', '2018-12-11 13:06:08', '18608171331');
INSERT INTO `user_loan_info` VALUES ('1544594488542251108ba7e24020965c', '154459448839ff16bac74f6041d98ea9', '0', '0', '1', '1', '', '2018-12-12 14:01:28', '18122159999');
INSERT INTO `user_loan_info` VALUES ('15445946718182d69f6fc71a42dbb7e5', '1544594671690ef51ea36456460db498', '0', '0', '1', '1', '', '2018-12-12 14:04:31', '18122159999');
INSERT INTO `user_loan_info` VALUES ('154459473100ac2476da39b74defa0f0', '154459473092e53ce129ce994baf9b23', '0', '0', '1', '1', '', '2018-12-12 14:05:30', '18122159999');

-- ----------------------------
-- Table structure for `user_work_unit_info`
-- ----------------------------
DROP TABLE IF EXISTS `user_work_unit_info`;
CREATE TABLE `user_work_unit_info` (
  `id` varchar(32) NOT NULL,
  `work_unit_name` varchar(32) DEFAULT NULL COMMENT '公司名称',
  `work_unit_address` varchar(32) DEFAULT NULL COMMENT '公司地址',
  `work_unit_phone` varchar(32) DEFAULT NULL COMMENT '公司联系电话',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_info索引id',
  `user_accoount` varchar(32) DEFAULT NULL COMMENT '所属APP的账号',
  `user_account` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKhn08mgpmnftbmxdm07rtrp3hs` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户工作单位信息表';

-- ----------------------------
-- Records of user_work_unit_info
-- ----------------------------
INSERT INTO `user_work_unit_info` VALUES ('154450476891f2a1d2b301ba4c73bdfc', null, '南充吉祥商贸', '08172348164', '154450476877ae805f0265944a09a581', null, '18608171331');
INSERT INTO `user_work_unit_info` VALUES ('154459448929670e2adde0b34c08a05a', null, '1', '1', '154459448839ff16bac74f6041d98ea9', null, '18122159999');
INSERT INTO `user_work_unit_info` VALUES ('154459467249ef4b81067b394c18b2bf', null, '1', '1', '1544594671690ef51ea36456460db498', null, '18122159999');
INSERT INTO `user_work_unit_info` VALUES ('1544594731595afdbd92569540f38b25', null, '1', '1', '154459473092e53ce129ce994baf9b23', null, '18122159999');
