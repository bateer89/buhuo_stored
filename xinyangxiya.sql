/*
Navicat MySQL Data Transfer

Source Server         : 192.168.6.168
Source Server Version : 50726
Source Host           : 192.168.6.168:3306
Source Database       : xinyangxiya

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2021-01-29 12:46:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cuxiaobiao
-- ----------------------------
DROP TABLE IF EXISTS `cuxiaobiao`;
CREATE TABLE `cuxiaobiao` (
  `Id` varchar(20) NOT NULL,
  `plantype` varchar(14) NOT NULL,
  `Startdate` date NOT NULL,
  `Enddate` date NOT NULL,
  `organ` longtext,
  `code` varchar(18) NOT NULL,
  `specprice` decimal(30,8) DEFAULT NULL,
  `flag` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for datetable
-- ----------------------------
DROP TABLE IF EXISTS `datetable`;
CREATE TABLE `datetable` (
  `sdate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for demo
-- ----------------------------
DROP TABLE IF EXISTS `demo`;
CREATE TABLE `demo` (
  `id` varchar(50) NOT NULL COMMENT '主键ID',
  `name` varchar(30) DEFAULT NULL COMMENT '姓名',
  `key_word` varchar(255) DEFAULT NULL COMMENT '关键词',
  `punch_time` datetime DEFAULT NULL COMMENT '打卡时间',
  `salary_money` decimal(10,3) DEFAULT NULL COMMENT '工资',
  `bonus_money` double(10,2) DEFAULT NULL COMMENT '奖金',
  `sex` varchar(2) DEFAULT NULL COMMENT '性别 {男:1,女:2}',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `content` varchar(1000) DEFAULT NULL COMMENT '个人简介',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门编码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for demo_field_def_val_main
-- ----------------------------
DROP TABLE IF EXISTS `demo_field_def_val_main`;
CREATE TABLE `demo_field_def_val_main` (
  `id` varchar(36) NOT NULL,
  `code` varchar(200) DEFAULT NULL COMMENT '编码',
  `name` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sex` varchar(200) DEFAULT NULL COMMENT '性别',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `address_param` varchar(32) DEFAULT NULL COMMENT '地址（传参）',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for demo_field_def_val_sub
-- ----------------------------
DROP TABLE IF EXISTS `demo_field_def_val_sub`;
CREATE TABLE `demo_field_def_val_sub` (
  `id` varchar(36) NOT NULL,
  `code` varchar(200) DEFAULT NULL COMMENT '编码',
  `name` varchar(200) DEFAULT NULL COMMENT '名称',
  `date` varchar(200) DEFAULT NULL COMMENT '日期',
  `main_id` varchar(200) DEFAULT NULL COMMENT '主表ID',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for dms_minorder
-- ----------------------------
DROP TABLE IF EXISTS `dms_minorder`;
CREATE TABLE `dms_minorder` (
  `shopid` varchar(8) DEFAULT NULL,
  `goodsid` varchar(32) DEFAULT NULL,
  `qty` decimal(16,3) DEFAULT NULL,
  `salevalue` decimal(16,2) DEFAULT NULL,
  `dms_minorder` decimal(16,3) DEFAULT NULL,
  `consum_baifen` decimal(16,8) DEFAULT NULL,
  `classtype` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for dms_minorder2
-- ----------------------------
DROP TABLE IF EXISTS `dms_minorder2`;
CREATE TABLE `dms_minorder2` (
  `shopid` varchar(8) DEFAULT NULL,
  `cgid` varchar(8) DEFAULT NULL,
  `goodsid` varchar(32) DEFAULT NULL,
  `qty` decimal(16,3) DEFAULT NULL,
  `salevalue` decimal(16,2) DEFAULT NULL,
  `dms_minorder2` decimal(16,3) DEFAULT NULL,
  `consum_baifen` decimal(16,8) DEFAULT NULL,
  `classtype` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for dms_minorder_copy
-- ----------------------------
DROP TABLE IF EXISTS `dms_minorder_copy`;
CREATE TABLE `dms_minorder_copy` (
  `shopid` varchar(8) DEFAULT NULL,
  `goodsid` varchar(32) DEFAULT NULL,
  `qty` decimal(16,3) DEFAULT NULL,
  `salevalue` decimal(16,2) DEFAULT NULL,
  `dms_minorder` decimal(16,3) DEFAULT NULL,
  `consum_baifen` decimal(16,8) DEFAULT NULL,
  `classtype` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for dms_minorder_days
-- ----------------------------
DROP TABLE IF EXISTS `dms_minorder_days`;
CREATE TABLE `dms_minorder_days` (
  `shopid` varchar(8) DEFAULT NULL,
  `cgid` varchar(8) DEFAULT NULL,
  `goodsid` varchar(32) DEFAULT NULL,
  `qty` decimal(16,3) DEFAULT NULL,
  `salevalue` decimal(16,2) DEFAULT NULL,
  `dms_minorder2` decimal(16,3) DEFAULT NULL,
  `consum_baifen` decimal(16,8) DEFAULT NULL,
  `classtype` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `goodsid` varchar(18) DEFAULT NULL,
  `barcodeid` varchar(18) DEFAULT NULL,
  `deptid` varchar(10) DEFAULT NULL,
  `xlname` varchar(64) DEFAULT NULL,
  `name` varchar(60) DEFAULT NULL,
  `flag` int(1) NOT NULL DEFAULT '0',
  `status` varchar(2) NOT NULL DEFAULT '',
  `brand` varchar(8) DEFAULT NULL,
  `spec` varchar(40) DEFAULT NULL,
  `indate` varchar(27) DEFAULT NULL,
  `deleted` varchar(1) DEFAULT NULL,
  `minorderqty` double DEFAULT NULL,
  `oneoff` int(11) DEFAULT NULL,
  `begindate` varchar(225) DEFAULT NULL,
  `enddate` varchar(225) DEFAULT NULL,
  `conversion` double DEFAULT NULL,
  UNIQUE KEY `index_1` (`goodsid`),
  KEY `index_2` (`deptid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for goods_class
-- ----------------------------
DROP TABLE IF EXISTS `goods_class`;
CREATE TABLE `goods_class` (
  `shopid` varchar(16) DEFAULT NULL,
  `goodsid` varchar(32) DEFAULT NULL,
  `classtype` varchar(2) DEFAULT NULL,
  `ndms` decimal(16,3) DEFAULT NULL,
  UNIQUE KEY `aa` (`shopid`,`goodsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for han
-- ----------------------------
DROP TABLE IF EXISTS `han`;
CREATE TABLE `han` (
  `shopid` varchar(4) DEFAULT NULL,
  `cgid` varchar(10) DEFAULT NULL,
  `cg` varchar(40) DEFAULT NULL,
  `dlid` varchar(10) DEFAULT NULL,
  `dl` varchar(40) DEFAULT NULL,
  `zlid` varchar(10) DEFAULT NULL,
  `zl` varchar(40) DEFAULT NULL,
  `xlid` varchar(10) DEFAULT NULL,
  `xl` varchar(40) DEFAULT NULL,
  `goodsid` varchar(18) DEFAULT NULL,
  `name` varchar(60) DEFAULT NULL,
  `spec` varchar(40) DEFAULT NULL,
  `conversion` double DEFAULT NULL,
  `minorderqty` int(11) DEFAULT NULL,
  `minstockqty` int(11) DEFAULT NULL,
  UNIQUE KEY `han_idx1` (`goodsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for han1180
-- ----------------------------
DROP TABLE IF EXISTS `han1180`;
CREATE TABLE `han1180` (
  `zhou` int(11) DEFAULT NULL,
  `shopid` varchar(8) DEFAULT NULL,
  `goodsid` varchar(32) DEFAULT NULL,
  `normalprice` decimal(16,2) DEFAULT NULL,
  `zlprice` decimal(16,2) DEFAULT NULL,
  `qty` decimal(38,3) DEFAULT NULL,
  `salevalue` decimal(38,2) DEFAULT NULL,
  `discvalue` decimal(38,2) DEFAULT NULL,
  `ts_sale` bigint(21) NOT NULL DEFAULT '0',
  `dms` decimal(16,3) DEFAULT NULL,
  `deptid` varchar(16) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `begindate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `flag` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for jeecg_monthly_growth_analysis
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_monthly_growth_analysis`;
CREATE TABLE `jeecg_monthly_growth_analysis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year` varchar(50) DEFAULT NULL,
  `month` varchar(50) DEFAULT NULL COMMENT '月份',
  `main_income` decimal(18,2) DEFAULT '0.00' COMMENT '佣金/主营收入',
  `other_income` decimal(18,2) DEFAULT '0.00' COMMENT '其他收入',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for jeecg_order_customer
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_order_customer`;
CREATE TABLE `jeecg_order_customer` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '客户名',
  `sex` varchar(4) DEFAULT NULL COMMENT '性别',
  `idcard` varchar(18) DEFAULT NULL COMMENT '身份证号码',
  `idcard_pic` varchar(500) DEFAULT NULL COMMENT '身份证扫描件',
  `telphone` varchar(32) DEFAULT NULL COMMENT '电话1',
  `order_id` varchar(32) NOT NULL COMMENT '外键',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for jeecg_order_main
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_order_main`;
CREATE TABLE `jeecg_order_main` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `order_code` varchar(50) DEFAULT NULL COMMENT '订单号',
  `ctype` varchar(500) DEFAULT NULL COMMENT '订单类型',
  `order_date` datetime DEFAULT NULL COMMENT '订单日期',
  `order_money` double(10,3) DEFAULT NULL COMMENT '订单金额',
  `content` varchar(500) DEFAULT NULL COMMENT '订单备注',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for jeecg_order_ticket
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_order_ticket`;
CREATE TABLE `jeecg_order_ticket` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `ticket_code` varchar(100) NOT NULL COMMENT '航班号',
  `tickect_date` datetime DEFAULT NULL COMMENT '航班时间',
  `order_id` varchar(32) NOT NULL COMMENT '外键',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for jeecg_project_nature_income
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_project_nature_income`;
CREATE TABLE `jeecg_project_nature_income` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nature` varchar(50) NOT NULL COMMENT '项目性质',
  `insurance_fee` decimal(18,2) DEFAULT '0.00' COMMENT '保险经纪佣金费',
  `risk_consulting_fee` decimal(18,2) DEFAULT '0.00' COMMENT '风险咨询费',
  `evaluation_fee` decimal(18,2) DEFAULT '0.00' COMMENT '承保公估评估费',
  `insurance_evaluation_fee` decimal(18,2) DEFAULT '0.00' COMMENT '保险公估费',
  `bidding_consulting_fee` decimal(18,2) DEFAULT '0.00' COMMENT '投标咨询费',
  `interol_consulting_fee` decimal(18,2) DEFAULT '0.00' COMMENT '内控咨询费',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for joa_demo
-- ----------------------------
DROP TABLE IF EXISTS `joa_demo`;
CREATE TABLE `joa_demo` (
  `id` varchar(32) DEFAULT NULL COMMENT 'ID',
  `name` varchar(100) DEFAULT NULL COMMENT '请假人',
  `days` int(11) DEFAULT NULL COMMENT '请假天数',
  `begin_date` datetime DEFAULT NULL COMMENT '开始时间',
  `end_date` datetime DEFAULT NULL COMMENT '请假结束时间',
  `reason` varchar(500) DEFAULT NULL COMMENT '请假原因',
  `bpm_status` varchar(50) DEFAULT '1' COMMENT '流程状态',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改人id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='流程测试';

-- ----------------------------
-- Table structure for minorder
-- ----------------------------
DROP TABLE IF EXISTS `minorder`;
CREATE TABLE `minorder` (
  `shopid` varchar(4) DEFAULT NULL,
  `goodsid` varchar(18) DEFAULT NULL,
  `minorderqty` double DEFAULT NULL,
  `minstockqty` decimal(16,3) DEFAULT NULL,
  UNIQUE KEY `index_1` (`shopid`,`goodsid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for monitor_log
-- ----------------------------
DROP TABLE IF EXISTS `monitor_log`;
CREATE TABLE `monitor_log` (
  `id` varchar(36) NOT NULL,
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
  `is_success_imp` varchar(32) DEFAULT NULL COMMENT '是否成功导入',
  `imp_record_num` int(11) DEFAULT NULL COMMENT '导入的记录数',
  `this_imp_time` decimal(64,3) DEFAULT NULL COMMENT '本次导入耗时',
  `imp_complete_date` datetime DEFAULT NULL COMMENT '导入完成日期',
  `date` datetime DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for onl_auth_data
-- ----------------------------
DROP TABLE IF EXISTS `onl_auth_data`;
CREATE TABLE `onl_auth_data` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `cgform_id` varchar(32) DEFAULT NULL COMMENT 'online表ID',
  `rule_name` varchar(50) DEFAULT NULL COMMENT '规则名',
  `rule_column` varchar(50) DEFAULT NULL COMMENT '规则列',
  `rule_operator` varchar(50) DEFAULT NULL COMMENT '规则条件 大于小于like',
  `rule_value` varchar(255) DEFAULT NULL COMMENT '规则值',
  `status` int(1) DEFAULT NULL COMMENT '1有效 0无效',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '创建人',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for onl_auth_page
-- ----------------------------
DROP TABLE IF EXISTS `onl_auth_page`;
CREATE TABLE `onl_auth_page` (
  `id` varchar(32) NOT NULL COMMENT ' 主键',
  `cgform_id` varchar(32) DEFAULT NULL COMMENT 'online表id',
  `code` varchar(255) DEFAULT NULL COMMENT '字段名/按钮编码',
  `type` int(1) DEFAULT NULL COMMENT '1字段 2按钮',
  `control` int(1) DEFAULT NULL COMMENT '3可编辑 5可见(仅支持两种状态值3,5)',
  `page` int(1) DEFAULT NULL COMMENT '3列表 5表单(仅支持两种状态值3,5)',
  `status` int(1) DEFAULT NULL COMMENT '1有效 0无效',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '创建人',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for onl_auth_relation
-- ----------------------------
DROP TABLE IF EXISTS `onl_auth_relation`;
CREATE TABLE `onl_auth_relation` (
  `id` varchar(32) NOT NULL,
  `role_id` varchar(32) DEFAULT NULL COMMENT '角色id',
  `auth_id` varchar(32) DEFAULT NULL COMMENT '权限id',
  `type` int(1) DEFAULT NULL COMMENT '1字段 2按钮 3数据权限',
  `cgform_id` varchar(32) DEFAULT NULL COMMENT 'online表单ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for onl_cgform_button
-- ----------------------------
DROP TABLE IF EXISTS `onl_cgform_button`;
CREATE TABLE `onl_cgform_button` (
  `ID` varchar(32) NOT NULL COMMENT '主键ID',
  `BUTTON_CODE` varchar(50) DEFAULT NULL COMMENT '按钮编码',
  `BUTTON_ICON` varchar(20) DEFAULT NULL COMMENT '按钮图标',
  `BUTTON_NAME` varchar(50) DEFAULT NULL COMMENT '按钮名称',
  `BUTTON_STATUS` varchar(2) DEFAULT NULL COMMENT '按钮状态',
  `BUTTON_STYLE` varchar(20) DEFAULT NULL COMMENT '按钮样式',
  `EXP` varchar(255) DEFAULT NULL COMMENT '表达式',
  `CGFORM_HEAD_ID` varchar(32) DEFAULT NULL COMMENT '表单ID',
  `OPT_TYPE` varchar(20) DEFAULT NULL COMMENT '按钮类型',
  `ORDER_NUM` int(11) DEFAULT NULL COMMENT '排序',
  `OPT_POSITION` varchar(3) DEFAULT NULL COMMENT '按钮位置1侧面 2底部',
  PRIMARY KEY (`ID`) USING BTREE,
  KEY `index_formid` (`CGFORM_HEAD_ID`) USING BTREE,
  KEY `index_button_code` (`BUTTON_CODE`) USING BTREE,
  KEY `index_button_status` (`BUTTON_STATUS`) USING BTREE,
  KEY `index_button_order` (`ORDER_NUM`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Online表单自定义按钮';

-- ----------------------------
-- Table structure for onl_cgform_enhance_java
-- ----------------------------
DROP TABLE IF EXISTS `onl_cgform_enhance_java`;
CREATE TABLE `onl_cgform_enhance_java` (
  `ID` varchar(36) NOT NULL,
  `BUTTON_CODE` varchar(32) DEFAULT NULL COMMENT '按钮编码',
  `CG_JAVA_TYPE` varchar(32) NOT NULL COMMENT '类型',
  `CG_JAVA_VALUE` varchar(200) NOT NULL COMMENT '数值',
  `CGFORM_HEAD_ID` varchar(32) NOT NULL COMMENT '表单ID',
  `ACTIVE_STATUS` varchar(2) DEFAULT '1' COMMENT '生效状态',
  `EVENT` varchar(10) NOT NULL DEFAULT 'end' COMMENT '事件状态(end:结束，start:开始)',
  PRIMARY KEY (`ID`) USING BTREE,
  KEY `index_fmid` (`CGFORM_HEAD_ID`) USING BTREE,
  KEY `index_buttoncode` (`BUTTON_CODE`) USING BTREE,
  KEY `index_status` (`ACTIVE_STATUS`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for onl_cgform_enhance_js
-- ----------------------------
DROP TABLE IF EXISTS `onl_cgform_enhance_js`;
CREATE TABLE `onl_cgform_enhance_js` (
  `ID` varchar(32) NOT NULL COMMENT '主键ID',
  `CG_JS` longtext COMMENT 'JS增强内容',
  `CG_JS_TYPE` varchar(20) DEFAULT NULL COMMENT '类型',
  `CONTENT` varchar(1000) DEFAULT NULL COMMENT '备注',
  `CGFORM_HEAD_ID` varchar(32) DEFAULT NULL COMMENT '表单ID',
  PRIMARY KEY (`ID`) USING BTREE,
  KEY `index_fmid` (`CGFORM_HEAD_ID`) USING BTREE,
  KEY `index_jstype` (`CG_JS_TYPE`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for onl_cgform_enhance_sql
-- ----------------------------
DROP TABLE IF EXISTS `onl_cgform_enhance_sql`;
CREATE TABLE `onl_cgform_enhance_sql` (
  `ID` varchar(32) NOT NULL COMMENT '主键ID',
  `BUTTON_CODE` varchar(50) DEFAULT NULL COMMENT '按钮编码',
  `CGB_SQL` longtext COMMENT 'SQL内容',
  `CGB_SQL_NAME` varchar(50) DEFAULT NULL COMMENT 'Sql名称',
  `CONTENT` varchar(1000) DEFAULT NULL COMMENT '备注',
  `CGFORM_HEAD_ID` varchar(32) DEFAULT NULL COMMENT '表单ID',
  PRIMARY KEY (`ID`) USING BTREE,
  KEY `index_formid` (`CGFORM_HEAD_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for onl_cgform_field
-- ----------------------------
DROP TABLE IF EXISTS `onl_cgform_field`;
CREATE TABLE `onl_cgform_field` (
  `id` varchar(32) NOT NULL COMMENT '主键ID',
  `cgform_head_id` varchar(32) NOT NULL COMMENT '表ID',
  `db_field_name` varchar(32) NOT NULL COMMENT '字段名字',
  `db_field_txt` varchar(200) DEFAULT NULL COMMENT '字段备注',
  `db_field_name_old` varchar(32) DEFAULT NULL COMMENT '原字段名',
  `db_is_key` tinyint(1) DEFAULT NULL COMMENT '是否主键 0否 1是',
  `db_is_null` tinyint(1) DEFAULT NULL COMMENT '是否允许为空0否 1是',
  `db_type` varchar(32) NOT NULL COMMENT '数据库字段类型',
  `db_length` int(11) NOT NULL COMMENT '数据库字段长度',
  `db_point_length` int(11) DEFAULT NULL COMMENT '小数点',
  `db_default_val` varchar(20) DEFAULT NULL COMMENT '表字段默认值',
  `dict_field` varchar(100) DEFAULT NULL COMMENT '字典code',
  `dict_table` varchar(255) DEFAULT NULL COMMENT '字典表',
  `dict_text` varchar(100) DEFAULT NULL COMMENT '字典Text',
  `field_show_type` varchar(10) DEFAULT NULL COMMENT '表单控件类型',
  `field_href` varchar(200) DEFAULT NULL COMMENT '跳转URL',
  `field_length` int(11) DEFAULT NULL COMMENT '表单控件长度',
  `field_valid_type` varchar(300) DEFAULT NULL COMMENT '表单字段校验规则',
  `field_must_input` varchar(2) DEFAULT NULL COMMENT '字段是否必填',
  `field_extend_json` varchar(500) DEFAULT NULL COMMENT '扩展参数JSON',
  `field_default_value` varchar(100) DEFAULT NULL COMMENT '控件默认值，不同的表达式展示不同的结果。\r\n1. 纯字符串直接赋给默认值；\r\n2. #{普通变量}；\r\n3. {{ 动态JS表达式 }}；\r\n4. ${填值规则编码}；\r\n填值规则表达式只允许存在一个，且不能和其他规则混用。',
  `is_query` tinyint(1) DEFAULT NULL COMMENT '是否查询条件0否 1是',
  `is_show_form` tinyint(1) DEFAULT NULL COMMENT '表单是否显示0否 1是',
  `is_show_list` tinyint(1) DEFAULT NULL COMMENT '列表是否显示0否 1是',
  `is_read_only` tinyint(1) DEFAULT '0' COMMENT '是否是只读（1是 0否）',
  `query_mode` varchar(10) DEFAULT NULL COMMENT '查询模式',
  `main_table` varchar(100) DEFAULT NULL COMMENT '外键主表名',
  `main_field` varchar(100) DEFAULT NULL COMMENT '外键主键字段',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建人',
  `converter` varchar(255) DEFAULT NULL COMMENT '自定义值转换器',
  `query_def_val` varchar(50) DEFAULT NULL COMMENT '查询默认值',
  `query_dict_text` varchar(100) DEFAULT NULL COMMENT '查询配置字典text',
  `query_dict_field` varchar(100) DEFAULT NULL COMMENT '查询配置字典code',
  `query_dict_table` varchar(500) DEFAULT NULL COMMENT '查询配置字典table',
  `query_show_type` varchar(50) DEFAULT NULL COMMENT '查询显示控件',
  `query_config_flag` varchar(3) DEFAULT NULL COMMENT '是否启用查询配置1是0否',
  `query_valid_type` varchar(50) DEFAULT NULL COMMENT '查询字段校验类型',
  `query_must_input` varchar(3) DEFAULT NULL COMMENT '查询字段是否必填1是0否',
  `sort_flag` varchar(3) DEFAULT NULL COMMENT '是否支持排序1是0否',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `inex_table_id` (`cgform_head_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for onl_cgform_head
-- ----------------------------
DROP TABLE IF EXISTS `onl_cgform_head`;
CREATE TABLE `onl_cgform_head` (
  `id` varchar(32) NOT NULL COMMENT '主键ID',
  `table_name` varchar(50) NOT NULL COMMENT '表名',
  `table_type` int(11) NOT NULL COMMENT '表类型: 0单表、1主表、2附表',
  `table_version` int(11) DEFAULT '1' COMMENT '表版本',
  `table_txt` varchar(200) NOT NULL COMMENT '表说明',
  `is_checkbox` varchar(5) NOT NULL COMMENT '是否带checkbox',
  `is_db_synch` varchar(20) NOT NULL DEFAULT 'N' COMMENT '同步数据库状态',
  `is_page` varchar(5) NOT NULL COMMENT '是否分页',
  `is_tree` varchar(5) NOT NULL COMMENT '是否是树',
  `id_sequence` varchar(200) DEFAULT NULL COMMENT '主键生成序列',
  `id_type` varchar(100) DEFAULT NULL COMMENT '主键类型',
  `query_mode` varchar(10) NOT NULL COMMENT '查询模式',
  `relation_type` int(11) DEFAULT NULL COMMENT '映射关系 0一对多  1一对一',
  `sub_table_str` varchar(1000) DEFAULT NULL COMMENT '子表',
  `tab_order_num` int(11) DEFAULT NULL COMMENT '附表排序序号',
  `tree_parent_id_field` varchar(50) DEFAULT NULL COMMENT '树形表单父id',
  `tree_id_field` varchar(50) DEFAULT NULL COMMENT '树表主键字段',
  `tree_fieldname` varchar(50) DEFAULT NULL COMMENT '树开表单列字段',
  `form_category` varchar(50) NOT NULL DEFAULT 'bdfl_ptbd' COMMENT '表单分类',
  `form_template` varchar(50) DEFAULT NULL COMMENT 'PC表单模板',
  `form_template_mobile` varchar(50) DEFAULT NULL COMMENT '表单模板样式(移动端)',
  `scroll` int(3) DEFAULT '0' COMMENT '是否有横向滚动条',
  `copy_version` int(11) DEFAULT NULL COMMENT '复制版本号',
  `copy_type` int(3) DEFAULT '0' COMMENT '复制表类型1为复制表 0为原始表',
  `physic_id` varchar(32) DEFAULT NULL COMMENT '原始表ID',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `theme_template` varchar(50) DEFAULT NULL COMMENT '主题模板',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `index_onlineform_table_name` (`table_name`) USING BTREE,
  KEY `index_form_templdate` (`form_template`) USING BTREE,
  KEY `index_templdate_mobile` (`form_template_mobile`) USING BTREE,
  KEY `index_onlineform_table_version` (`table_version`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for onl_cgform_index
-- ----------------------------
DROP TABLE IF EXISTS `onl_cgform_index`;
CREATE TABLE `onl_cgform_index` (
  `id` varchar(36) NOT NULL COMMENT '主键',
  `cgform_head_id` varchar(32) DEFAULT NULL COMMENT '主表id',
  `index_name` varchar(100) DEFAULT NULL COMMENT '索引名称',
  `index_field` varchar(500) DEFAULT NULL COMMENT '索引栏位',
  `index_type` varchar(32) DEFAULT NULL COMMENT '索引类型',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `is_db_synch` varchar(2) DEFAULT 'N' COMMENT '是否同步数据库 N未同步 Y已同步',
  `del_flag` int(1) DEFAULT '0' COMMENT '是否删除 0未删除 1删除',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_table_id` (`cgform_head_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for onl_cgreport_head
-- ----------------------------
DROP TABLE IF EXISTS `onl_cgreport_head`;
CREATE TABLE `onl_cgreport_head` (
  `id` varchar(36) NOT NULL,
  `code` varchar(100) NOT NULL COMMENT '报表编码',
  `name` varchar(100) NOT NULL COMMENT '报表名字',
  `cgr_sql` varchar(1000) NOT NULL COMMENT '报表SQL',
  `return_val_field` varchar(100) DEFAULT NULL COMMENT '返回值字段',
  `return_txt_field` varchar(100) DEFAULT NULL COMMENT '返回文本字段',
  `return_type` varchar(2) DEFAULT '1' COMMENT '返回类型，单选或多选',
  `db_source` varchar(100) DEFAULT NULL COMMENT '动态数据源',
  `content` varchar(1000) DEFAULT NULL COMMENT '描述',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改人id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人id',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `index_onlinereport_code` (`code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for onl_cgreport_item
-- ----------------------------
DROP TABLE IF EXISTS `onl_cgreport_item`;
CREATE TABLE `onl_cgreport_item` (
  `id` varchar(36) NOT NULL,
  `cgrhead_id` varchar(36) NOT NULL COMMENT '报表ID',
  `field_name` varchar(36) NOT NULL COMMENT '字段名字',
  `field_txt` varchar(300) DEFAULT NULL COMMENT '字段文本',
  `field_width` int(3) DEFAULT NULL,
  `field_type` varchar(10) DEFAULT NULL COMMENT '字段类型',
  `search_mode` varchar(10) DEFAULT NULL COMMENT '查询模式',
  `is_order` int(2) DEFAULT '0' COMMENT '是否排序  0否,1是',
  `is_search` int(2) DEFAULT '0' COMMENT '是否查询  0否,1是',
  `dict_code` varchar(500) DEFAULT NULL COMMENT '字典CODE',
  `field_href` varchar(120) DEFAULT NULL COMMENT '字段跳转URL',
  `is_show` int(2) DEFAULT '1' COMMENT '是否显示  0否,1显示',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `replace_val` varchar(200) DEFAULT NULL COMMENT '取值表达式',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_CGRHEAD_ID` (`cgrhead_id`) USING BTREE,
  KEY `index_isshow` (`is_show`) USING BTREE,
  KEY `index_order_num` (`order_num`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for onl_cgreport_param
-- ----------------------------
DROP TABLE IF EXISTS `onl_cgreport_param`;
CREATE TABLE `onl_cgreport_param` (
  `id` varchar(36) NOT NULL,
  `cgrhead_id` varchar(36) NOT NULL COMMENT '动态报表ID',
  `param_name` varchar(32) NOT NULL COMMENT '参数字段',
  `param_txt` varchar(32) DEFAULT NULL COMMENT '参数文本',
  `param_value` varchar(32) DEFAULT NULL COMMENT '参数默认值',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_cgrheadid` (`cgrhead_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for oss_file
-- ----------------------------
DROP TABLE IF EXISTS `oss_file`;
CREATE TABLE `oss_file` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `file_name` varchar(255) DEFAULT NULL COMMENT '文件名称',
  `url` varchar(255) DEFAULT NULL COMMENT '文件地址',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Oss File';

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='InnoDB free: 504832 kB; (`SCHED_NAME` `TRIGGER_NAME` `TRIGGE';

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(200) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='InnoDB free: 504832 kB; (`SCHED_NAME` `TRIGGER_NAME` `TRIGGE';

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` varchar(1) NOT NULL,
  `IS_NONCONCURRENT` varchar(1) NOT NULL,
  `IS_UPDATE_DATA` varchar(1) NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='InnoDB free: 504832 kB; (`SCHED_NAME` `TRIGGER_NAME` `TRIGGE';

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='InnoDB free: 504832 kB; (`SCHED_NAME` `TRIGGER_NAME` `TRIGGE';

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) USING BTREE,
  KEY `SCHED_NAME` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='InnoDB free: 504832 kB; (`SCHED_NAME` `JOB_NAME` `JOB_GROUP`';

-- ----------------------------
-- Table structure for shop_classify
-- ----------------------------
DROP TABLE IF EXISTS `shop_classify`;
CREATE TABLE `shop_classify` (
  `shopid` varchar(8) DEFAULT NULL,
  `goodsid` varchar(32) DEFAULT NULL,
  `dms_minorder` decimal(16,3) DEFAULT NULL,
  `classtype` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for shop_classify_copy
-- ----------------------------
DROP TABLE IF EXISTS `shop_classify_copy`;
CREATE TABLE `shop_classify_copy` (
  `shopid` varchar(8) DEFAULT NULL,
  `goodsid` varchar(32) DEFAULT NULL,
  `dms_minorder` decimal(16,3) DEFAULT NULL,
  `classtype` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for shop_classify_spr
-- ----------------------------
DROP TABLE IF EXISTS `shop_classify_spr`;
CREATE TABLE `shop_classify_spr` (
  `shopid` varchar(8) DEFAULT NULL,
  `goodsid` varchar(32) DEFAULT NULL,
  `dms_minorder` decimal(16,3) DEFAULT NULL,
  `classtype` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for shop_classify_wjy
-- ----------------------------
DROP TABLE IF EXISTS `shop_classify_wjy`;
CREATE TABLE `shop_classify_wjy` (
  `shopid` varchar(8) DEFAULT NULL,
  `goodsid` varchar(32) DEFAULT NULL,
  `dms_minorder` decimal(16,3) DEFAULT NULL,
  `classtype` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sqldatetable
-- ----------------------------
DROP TABLE IF EXISTS `sqldatetable`;
CREATE TABLE `sqldatetable` (
  `syear` int(4) DEFAULT NULL,
  `sweek` bigint(13) DEFAULT NULL,
  `begindate` varchar(10) DEFAULT NULL,
  `enddate` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for stock_test
-- ----------------------------
DROP TABLE IF EXISTS `stock_test`;
CREATE TABLE `stock_test` (
  `sdate` date DEFAULT NULL COMMENT ',',
  `shopid` varchar(16) DEFAULT NULL,
  `xlid` varchar(32) DEFAULT NULL,
  `goodsid` varchar(32) DEFAULT NULL,
  `goodsname` varchar(64) DEFAULT NULL,
  `classtype` varchar(2) DEFAULT NULL,
  `inqty_real` decimal(16,3) DEFAULT NULL,
  `qty_real` decimal(16,3) DEFAULT NULL,
  `inqty_ll` decimal(16,3) DEFAULT '0.000',
  `qty_ll` decimal(16,3) DEFAULT '0.000',
  `flag` int(2) DEFAULT NULL,
  `saleqty` decimal(16,3) DEFAULT NULL,
  `minorder` decimal(16,3) DEFAULT NULL,
  `seasontype` int(2) DEFAULT NULL,
  `trueprice` decimal(16,3) DEFAULT NULL,
  `salevalue` decimal(16,2) DEFAULT NULL,
  `discvalue` decimal(16,2) DEFAULT NULL,
  `disc` int(16) DEFAULT NULL,
  KEY `sdate` (`sdate`),
  KEY `shop+goods` (`shopid`,`goodsid`),
  KEY `sdate+shopid` (`sdate`,`shopid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sum_zdms
-- ----------------------------
DROP TABLE IF EXISTS `sum_zdms`;
CREATE TABLE `sum_zdms` (
  `shopid` varchar(8) DEFAULT NULL,
  `shopname` varchar(40) DEFAULT NULL,
  `classtype` char(1) DEFAULT NULL,
  `minorderdays` int(8) DEFAULT NULL,
  `consum_baifen` varchar(16) DEFAULT NULL,
  `sku_baifen` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sys_announcement
-- ----------------------------
DROP TABLE IF EXISTS `sys_announcement`;
CREATE TABLE `sys_announcement` (
  `id` varchar(32) NOT NULL,
  `titile` varchar(100) DEFAULT NULL COMMENT '标题',
  `msg_content` text COMMENT '内容',
  `start_time` datetime DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `sender` varchar(100) DEFAULT NULL COMMENT '发布人',
  `priority` varchar(255) DEFAULT NULL COMMENT '优先级（L低，M中，H高）',
  `msg_category` varchar(10) NOT NULL DEFAULT '2' COMMENT '消息类型1:通知公告2:系统消息',
  `msg_type` varchar(10) DEFAULT NULL COMMENT '通告对象类型（USER:指定用户，ALL:全体用户）',
  `send_status` varchar(10) DEFAULT NULL COMMENT '发布状态（0未发布，1已发布，2已撤销）',
  `send_time` datetime DEFAULT NULL COMMENT '发布时间',
  `cancel_time` datetime DEFAULT NULL COMMENT '撤销时间',
  `del_flag` varchar(1) DEFAULT NULL COMMENT '删除状态（0，正常，1已删除）',
  `bus_type` varchar(20) DEFAULT NULL COMMENT '业务类型(email:邮件 bpm:流程)',
  `bus_id` varchar(50) DEFAULT NULL COMMENT '业务id',
  `open_type` varchar(20) DEFAULT NULL COMMENT '打开方式(组件：component 路由：url)',
  `open_page` varchar(255) DEFAULT NULL COMMENT '组件/路由 地址',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `user_ids` text COMMENT '指定用户',
  `msg_abstract` text COMMENT '摘要',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统通告表';

-- ----------------------------
-- Table structure for sys_announcement_send
-- ----------------------------
DROP TABLE IF EXISTS `sys_announcement_send`;
CREATE TABLE `sys_announcement_send` (
  `id` varchar(32) DEFAULT NULL,
  `annt_id` varchar(32) DEFAULT NULL COMMENT '通告ID',
  `user_id` varchar(32) DEFAULT NULL COMMENT '用户id',
  `read_flag` varchar(10) DEFAULT NULL COMMENT '阅读状态（0未读，1已读）',
  `read_time` datetime DEFAULT NULL COMMENT '阅读时间',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户通告阅读标记表';

-- ----------------------------
-- Table structure for sys_category
-- ----------------------------
DROP TABLE IF EXISTS `sys_category`;
CREATE TABLE `sys_category` (
  `id` varchar(36) NOT NULL,
  `pid` varchar(36) DEFAULT NULL COMMENT '父级节点',
  `name` varchar(100) DEFAULT NULL COMMENT '类型名称',
  `code` varchar(100) DEFAULT NULL COMMENT '类型编码',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
  `has_child` varchar(3) DEFAULT NULL COMMENT '是否有子节点',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `index_code` (`code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for sys_check_rule
-- ----------------------------
DROP TABLE IF EXISTS `sys_check_rule`;
CREATE TABLE `sys_check_rule` (
  `id` varchar(32) CHARACTER SET utf8 NOT NULL COMMENT '主键id',
  `rule_name` varchar(100) DEFAULT NULL COMMENT '规则名称',
  `rule_code` varchar(100) DEFAULT NULL COMMENT '规则Code',
  `rule_json` varchar(1024) DEFAULT NULL COMMENT '规则JSON',
  `rule_description` varchar(200) DEFAULT NULL COMMENT '规则描述',
  `update_by` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `create_by` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uni_sys_check_rule_code` (`rule_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for sys_data_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_data_log`;
CREATE TABLE `sys_data_log` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `data_table` varchar(32) DEFAULT NULL COMMENT '表名',
  `data_id` varchar(32) DEFAULT NULL COMMENT '数据ID',
  `data_content` text COMMENT '数据内容',
  `data_version` int(11) DEFAULT NULL COMMENT '版本号',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `sindex` (`data_table`,`data_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for sys_data_source
-- ----------------------------
DROP TABLE IF EXISTS `sys_data_source`;
CREATE TABLE `sys_data_source` (
  `id` varchar(36) NOT NULL,
  `code` varchar(100) DEFAULT NULL COMMENT '数据源编码',
  `name` varchar(100) DEFAULT NULL COMMENT '数据源名称',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `db_type` varchar(10) DEFAULT NULL COMMENT '数据库类型',
  `db_driver` varchar(100) DEFAULT NULL COMMENT '驱动类',
  `db_url` varchar(500) DEFAULT NULL COMMENT '数据源地址',
  `db_name` varchar(100) DEFAULT NULL COMMENT '数据库名称',
  `db_username` varchar(100) DEFAULT NULL COMMENT '用户名',
  `db_password` varchar(100) DEFAULT NULL COMMENT '密码',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `sys_data_source_code_uni` (`code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for sys_depart
-- ----------------------------
DROP TABLE IF EXISTS `sys_depart`;
CREATE TABLE `sys_depart` (
  `id` varchar(32) NOT NULL COMMENT 'ID',
  `parent_id` varchar(32) DEFAULT NULL COMMENT '父机构ID',
  `depart_name` varchar(100) NOT NULL COMMENT '机构/部门名称',
  `depart_name_en` varchar(500) DEFAULT NULL COMMENT '英文名',
  `depart_name_abbr` varchar(500) DEFAULT NULL COMMENT '缩写',
  `depart_order` int(11) DEFAULT '0' COMMENT '排序',
  `description` varchar(500) DEFAULT NULL COMMENT '描述',
  `org_category` varchar(10) NOT NULL DEFAULT '1' COMMENT '机构类别 1组织机构，2岗位',
  `org_type` varchar(10) DEFAULT NULL COMMENT '机构类型 1一级部门 2子部门',
  `org_code` varchar(64) NOT NULL COMMENT '机构编码',
  `cs_code` varchar(32) DEFAULT NULL COMMENT '超市机构编码',
  `mobile` varchar(32) DEFAULT NULL COMMENT '手机号',
  `fax` varchar(32) DEFAULT NULL COMMENT '传真',
  `address` varchar(100) DEFAULT NULL COMMENT '地址',
  `memo` varchar(500) DEFAULT NULL COMMENT '备注',
  `status` varchar(1) DEFAULT NULL COMMENT '状态（1启用，0不启用）',
  `del_flag` varchar(1) DEFAULT NULL COMMENT '删除状态（0，正常，1已删除）',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uniq_depart_org_code` (`org_code`) USING BTREE,
  KEY `index_depart_parent_id` (`parent_id`) USING BTREE,
  KEY `index_depart_depart_order` (`depart_order`) USING BTREE,
  KEY `index_depart_org_code` (`org_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='组织机构表';

-- ----------------------------
-- Table structure for sys_depart_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_depart_permission`;
CREATE TABLE `sys_depart_permission` (
  `id` varchar(32) NOT NULL,
  `depart_id` varchar(32) DEFAULT NULL COMMENT '部门id',
  `permission_id` varchar(32) DEFAULT NULL COMMENT '权限id',
  `data_rule_ids` varchar(1000) DEFAULT NULL COMMENT '数据规则id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='部门权限表';

-- ----------------------------
-- Table structure for sys_depart_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_depart_role`;
CREATE TABLE `sys_depart_role` (
  `id` varchar(32) NOT NULL,
  `depart_id` varchar(32) DEFAULT NULL COMMENT '部门id',
  `role_name` varchar(200) DEFAULT NULL COMMENT '部门角色名称',
  `role_code` varchar(100) DEFAULT NULL COMMENT '部门角色编码',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='部门角色表';

-- ----------------------------
-- Table structure for sys_depart_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_depart_role_permission`;
CREATE TABLE `sys_depart_role_permission` (
  `id` varchar(32) NOT NULL,
  `depart_id` varchar(32) DEFAULT NULL COMMENT '部门id',
  `role_id` varchar(32) DEFAULT NULL COMMENT '角色id',
  `permission_id` varchar(32) DEFAULT NULL COMMENT '权限id',
  `data_rule_ids` varchar(1000) DEFAULT NULL COMMENT '数据权限ids',
  `operate_date` datetime DEFAULT NULL COMMENT '操作时间',
  `operate_ip` varchar(20) DEFAULT NULL COMMENT '操作ip',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_group_role_per_id` (`role_id`,`permission_id`) USING BTREE,
  KEY `index_group_role_id` (`role_id`) USING BTREE,
  KEY `index_group_per_id` (`permission_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='部门角色权限表';

-- ----------------------------
-- Table structure for sys_depart_role_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_depart_role_user`;
CREATE TABLE `sys_depart_role_user` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `user_id` varchar(32) DEFAULT NULL COMMENT '用户id',
  `drole_id` varchar(32) DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='部门角色用户表';

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `id` varchar(32) NOT NULL,
  `dict_name` varchar(100) NOT NULL COMMENT '字典名称',
  `dict_code` varchar(100) NOT NULL COMMENT '字典编码',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `del_flag` int(1) DEFAULT NULL COMMENT '删除状态',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `type` int(1) unsigned zerofill DEFAULT '0' COMMENT '字典类型0为string,1为number',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `indextable_dict_code` (`dict_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for sys_dict_item
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_item`;
CREATE TABLE `sys_dict_item` (
  `id` varchar(32) NOT NULL,
  `dict_id` varchar(32) DEFAULT NULL COMMENT '字典id',
  `item_text` varchar(100) NOT NULL COMMENT '字典项文本',
  `item_value` varchar(100) NOT NULL COMMENT '字典项值',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `sort_order` int(10) DEFAULT NULL COMMENT '排序',
  `status` int(11) DEFAULT NULL COMMENT '状态（1启用 0不启用）',
  `create_by` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_table_dict_id` (`dict_id`) USING BTREE,
  KEY `index_table_sort_order` (`sort_order`) USING BTREE,
  KEY `index_table_dict_status` (`status`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for sys_fill_rule
-- ----------------------------
DROP TABLE IF EXISTS `sys_fill_rule`;
CREATE TABLE `sys_fill_rule` (
  `id` varchar(32) CHARACTER SET utf8 NOT NULL COMMENT '主键ID',
  `rule_name` varchar(100) DEFAULT NULL COMMENT '规则名称',
  `rule_code` varchar(100) DEFAULT NULL COMMENT '规则Code',
  `rule_class` varchar(100) DEFAULT NULL COMMENT '规则实现类',
  `rule_params` varchar(200) DEFAULT NULL COMMENT '规则参数',
  `update_by` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `create_by` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uni_sys_fill_rule_code` (`rule_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for sys_gateway_route
-- ----------------------------
DROP TABLE IF EXISTS `sys_gateway_route`;
CREATE TABLE `sys_gateway_route` (
  `id` varchar(36) NOT NULL,
  `name` varchar(32) DEFAULT NULL COMMENT '服务名',
  `uri` varchar(32) DEFAULT NULL COMMENT '服务地址',
  `predicates` text COMMENT '断言',
  `filters` text COMMENT '过滤器',
  `retryable` int(3) DEFAULT NULL COMMENT '是否重试:0-否 1-是',
  `strip_prefix` int(3) DEFAULT NULL COMMENT '是否忽略前缀0-否 1-是',
  `persist` int(3) DEFAULT NULL COMMENT '是否为保留数据:0-否 1-是',
  `show_api` int(3) DEFAULT NULL COMMENT '是否在接口文档中展示:0-否 1-是',
  `status` int(3) DEFAULT NULL COMMENT '状态:0-无效 1-有效',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` varchar(32) NOT NULL,
  `log_type` int(2) DEFAULT NULL COMMENT '日志类型（1登录日志，2操作日志）',
  `log_content` varchar(1000) DEFAULT NULL COMMENT '日志内容',
  `operate_type` int(2) DEFAULT NULL COMMENT '操作类型',
  `userid` varchar(32) DEFAULT NULL COMMENT '操作用户账号',
  `username` varchar(100) DEFAULT NULL COMMENT '操作用户名称',
  `ip` varchar(100) DEFAULT NULL COMMENT 'IP',
  `method` varchar(500) DEFAULT NULL COMMENT '请求java方法',
  `request_url` varchar(255) DEFAULT NULL COMMENT '请求路径',
  `request_param` longtext COMMENT '请求参数',
  `request_type` varchar(10) DEFAULT NULL COMMENT '请求类型',
  `cost_time` bigint(20) DEFAULT NULL COMMENT '耗时',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_table_userid` (`userid`) USING BTREE,
  KEY `index_logt_ype` (`log_type`) USING BTREE,
  KEY `index_operate_type` (`operate_type`) USING BTREE,
  KEY `index_log_type` (`log_type`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统日志表';

-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `parent_id` varchar(32) DEFAULT NULL COMMENT '父id',
  `name` varchar(100) DEFAULT NULL COMMENT '菜单标题',
  `url` varchar(255) DEFAULT NULL COMMENT '路径',
  `component` varchar(255) DEFAULT NULL COMMENT '组件',
  `component_name` varchar(100) DEFAULT NULL COMMENT '组件名字',
  `redirect` varchar(255) DEFAULT NULL COMMENT '一级菜单跳转地址',
  `menu_type` int(11) DEFAULT NULL COMMENT '菜单类型(0:一级菜单; 1:子菜单:2:按钮权限)',
  `perms` varchar(255) DEFAULT NULL COMMENT '菜单权限编码',
  `perms_type` varchar(10) DEFAULT '0' COMMENT '权限策略1显示2禁用',
  `sort_no` double(8,2) DEFAULT NULL COMMENT '菜单排序',
  `always_show` tinyint(1) DEFAULT NULL COMMENT '聚合子路由: 1是0否',
  `icon` varchar(100) DEFAULT NULL COMMENT '菜单图标',
  `is_route` tinyint(1) DEFAULT '1' COMMENT '是否路由菜单: 0:不是  1:是（默认值1）',
  `is_leaf` tinyint(1) DEFAULT NULL COMMENT '是否叶子节点:    1:是   0:不是',
  `keep_alive` tinyint(1) DEFAULT NULL COMMENT '是否缓存该页面:    1:是   0:不是',
  `hidden` int(2) DEFAULT '0' COMMENT '是否隐藏路由: 0否,1是',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` int(1) DEFAULT '0' COMMENT '删除状态 0正常 1已删除',
  `rule_flag` int(3) DEFAULT '0' COMMENT '是否添加数据权限1是0否',
  `status` varchar(2) DEFAULT NULL COMMENT '按钮权限状态(0无效1有效)',
  `internal_or_external` tinyint(1) DEFAULT NULL COMMENT '外链菜单打开方式 0/内部打开 1/外部打开',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_prem_pid` (`parent_id`) USING BTREE,
  KEY `index_prem_is_route` (`is_route`) USING BTREE,
  KEY `index_prem_is_leaf` (`is_leaf`) USING BTREE,
  KEY `index_prem_sort_no` (`sort_no`) USING BTREE,
  KEY `index_prem_del_flag` (`del_flag`) USING BTREE,
  KEY `index_menu_type` (`menu_type`) USING BTREE,
  KEY `index_menu_hidden` (`hidden`) USING BTREE,
  KEY `index_menu_status` (`status`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='菜单权限表';

-- ----------------------------
-- Table structure for sys_permission_data_rule
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission_data_rule`;
CREATE TABLE `sys_permission_data_rule` (
  `id` varchar(32) NOT NULL COMMENT 'ID',
  `permission_id` varchar(32) DEFAULT NULL COMMENT '菜单ID',
  `rule_name` varchar(50) DEFAULT NULL COMMENT '规则名称',
  `rule_column` varchar(50) DEFAULT NULL COMMENT '字段',
  `rule_conditions` varchar(50) DEFAULT NULL COMMENT '条件',
  `rule_value` varchar(300) DEFAULT NULL COMMENT '规则值',
  `status` varchar(3) DEFAULT NULL COMMENT '权限有效状态1有0否',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_fucntionid` (`permission_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for sys_position
-- ----------------------------
DROP TABLE IF EXISTS `sys_position`;
CREATE TABLE `sys_position` (
  `id` varchar(32) NOT NULL,
  `code` varchar(100) DEFAULT NULL COMMENT '职务编码',
  `name` varchar(100) DEFAULT NULL COMMENT '职务名称',
  `post_rank` varchar(2) DEFAULT NULL COMMENT '职级',
  `company_id` varchar(255) DEFAULT NULL COMMENT '公司id',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(50) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `sys_org_code` varchar(50) DEFAULT NULL COMMENT '组织机构编码',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uniq_code` (`code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for sys_quartz_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_quartz_job`;
CREATE TABLE `sys_quartz_job` (
  `id` varchar(32) NOT NULL,
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `del_flag` int(1) DEFAULT NULL COMMENT '删除状态',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `job_class_name` varchar(255) DEFAULT NULL COMMENT '任务类名',
  `cron_expression` varchar(255) DEFAULT NULL COMMENT 'cron表达式',
  `parameter` varchar(255) DEFAULT NULL COMMENT '参数',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `status` int(1) DEFAULT NULL COMMENT '状态 0正常 -1停止',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uniq_job_class_name` (`job_class_name`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `role_name` varchar(200) DEFAULT NULL COMMENT '角色名称',
  `role_code` varchar(100) NOT NULL COMMENT '角色编码',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uniq_sys_role_role_code` (`role_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='角色表';

-- ----------------------------
-- Table structure for sys_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission` (
  `id` varchar(32) NOT NULL,
  `role_id` varchar(32) DEFAULT NULL COMMENT '角色id',
  `permission_id` varchar(32) DEFAULT NULL COMMENT '权限id',
  `data_rule_ids` varchar(1000) DEFAULT NULL COMMENT '数据权限ids',
  `operate_date` datetime DEFAULT NULL COMMENT '操作时间',
  `operate_ip` varchar(20) DEFAULT NULL COMMENT '操作ip',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_group_role_per_id` (`role_id`,`permission_id`) USING BTREE,
  KEY `index_group_role_id` (`role_id`) USING BTREE,
  KEY `index_group_per_id` (`permission_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='角色权限表';

-- ----------------------------
-- Table structure for sys_sms
-- ----------------------------
DROP TABLE IF EXISTS `sys_sms`;
CREATE TABLE `sys_sms` (
  `id` varchar(32) NOT NULL COMMENT 'ID',
  `es_title` varchar(100) DEFAULT NULL COMMENT '消息标题',
  `es_type` varchar(1) DEFAULT NULL COMMENT '发送方式：1短信 2邮件 3微信',
  `es_receiver` varchar(50) DEFAULT NULL COMMENT '接收人',
  `es_param` varchar(1000) DEFAULT NULL COMMENT '发送所需参数Json格式',
  `es_content` longtext COMMENT '推送内容',
  `es_send_time` datetime DEFAULT NULL COMMENT '推送时间',
  `es_send_status` varchar(1) DEFAULT NULL COMMENT '推送状态 0未推送 1推送成功 2推送失败 -1失败不再发送',
  `es_send_num` int(11) DEFAULT NULL COMMENT '发送次数 超过5次不再发送',
  `es_result` varchar(255) DEFAULT NULL COMMENT '推送失败原因',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_type` (`es_type`) USING BTREE,
  KEY `index_receiver` (`es_receiver`) USING BTREE,
  KEY `index_sendtime` (`es_send_time`) USING BTREE,
  KEY `index_status` (`es_send_status`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for sys_sms_template
-- ----------------------------
DROP TABLE IF EXISTS `sys_sms_template`;
CREATE TABLE `sys_sms_template` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `template_name` varchar(50) DEFAULT NULL COMMENT '模板标题',
  `template_code` varchar(32) NOT NULL COMMENT '模板CODE',
  `template_type` varchar(1) NOT NULL COMMENT '模板类型：1短信 2邮件 3微信',
  `template_content` varchar(1000) NOT NULL COMMENT '模板内容',
  `template_test_json` varchar(1000) DEFAULT NULL COMMENT '模板测试json',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人登录名称',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人登录名称',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uniq_templatecode` (`template_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for sys_tenant
-- ----------------------------
DROP TABLE IF EXISTS `sys_tenant`;
CREATE TABLE `sys_tenant` (
  `id` int(5) NOT NULL COMMENT '租户编码',
  `name` varchar(100) DEFAULT NULL COMMENT '租户名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `begin_date` datetime DEFAULT NULL COMMENT '开始时间',
  `end_date` datetime DEFAULT NULL COMMENT '结束时间',
  `status` int(1) DEFAULT NULL COMMENT '状态 1正常 0冻结',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='多租户信息表';

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `username` varchar(100) DEFAULT NULL COMMENT '登录账号',
  `realname` varchar(100) DEFAULT NULL COMMENT '真实姓名',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `salt` varchar(45) DEFAULT NULL COMMENT 'md5密码盐',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  `birthday` datetime DEFAULT NULL COMMENT '生日',
  `sex` tinyint(1) DEFAULT NULL COMMENT '性别(0-默认未知,1-男,2-女)',
  `email` varchar(45) DEFAULT NULL COMMENT '电子邮件',
  `phone` varchar(45) DEFAULT NULL COMMENT '电话',
  `org_code` varchar(64) DEFAULT NULL COMMENT '机构编码',
  `status` tinyint(1) DEFAULT NULL COMMENT '性别(1-正常,2-冻结)',
  `del_flag` tinyint(1) DEFAULT NULL COMMENT '删除状态(0-正常,1-已删除)',
  `third_id` varchar(100) DEFAULT NULL COMMENT '第三方登录的唯一标识',
  `third_type` varchar(100) DEFAULT NULL COMMENT '第三方类型',
  `activiti_sync` tinyint(1) DEFAULT NULL COMMENT '同步工作流引擎(1-同步,0-不同步)',
  `work_no` varchar(100) DEFAULT NULL COMMENT '工号，唯一键',
  `post` varchar(100) DEFAULT NULL COMMENT '职务，关联职务表',
  `telephone` varchar(45) DEFAULT NULL COMMENT '座机号',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `user_identity` tinyint(1) DEFAULT NULL COMMENT '身份（1普通成员 2上级）',
  `depart_ids` longtext COMMENT '负责部门',
  `rel_tenant_ids` varchar(100) DEFAULT NULL COMMENT '多租户标识',
  `client_id` varchar(64) DEFAULT NULL COMMENT '设备ID',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `index_user_name` (`username`) USING BTREE,
  UNIQUE KEY `uniq_sys_user_work_no` (`work_no`) USING BTREE,
  UNIQUE KEY `uniq_sys_user_username` (`username`) USING BTREE,
  UNIQUE KEY `uniq_sys_user_phone` (`phone`) USING BTREE,
  UNIQUE KEY `uniq_sys_user_email` (`email`) USING BTREE,
  KEY `index_user_status` (`status`) USING BTREE,
  KEY `index_user_del_flag` (`del_flag`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

-- ----------------------------
-- Table structure for sys_user_agent
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_agent`;
CREATE TABLE `sys_user_agent` (
  `id` varchar(32) NOT NULL COMMENT '序号',
  `user_name` varchar(100) DEFAULT NULL COMMENT '用户名',
  `agent_user_name` varchar(100) DEFAULT NULL COMMENT '代理人用户名',
  `start_time` datetime DEFAULT NULL COMMENT '代理开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '代理结束时间',
  `status` varchar(2) DEFAULT NULL COMMENT '状态0无效1有效',
  `create_name` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(50) DEFAULT NULL COMMENT '所属部门',
  `sys_company_code` varchar(50) DEFAULT NULL COMMENT '所属公司',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uniq_username` (`user_name`) USING BTREE,
  KEY `statux_index` (`status`) USING BTREE,
  KEY `begintime_index` (`start_time`) USING BTREE,
  KEY `endtime_index` (`end_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户代理人设置';

-- ----------------------------
-- Table structure for sys_user_depart
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_depart`;
CREATE TABLE `sys_user_depart` (
  `ID` varchar(32) NOT NULL COMMENT 'id',
  `user_id` varchar(32) DEFAULT NULL COMMENT '用户id',
  `dep_id` varchar(32) DEFAULT NULL COMMENT '部门id',
  PRIMARY KEY (`ID`) USING BTREE,
  KEY `index_depart_groupk_userid` (`user_id`) USING BTREE,
  KEY `index_depart_groupkorgid` (`dep_id`) USING BTREE,
  KEY `index_depart_groupk_uidanddid` (`user_id`,`dep_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `user_id` varchar(32) DEFAULT NULL COMMENT '用户id',
  `role_id` varchar(32) DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index2_groupuu_user_id` (`user_id`) USING BTREE,
  KEY `index2_groupuu_ole_id` (`role_id`) USING BTREE,
  KEY `index2_groupuu_useridandroleid` (`user_id`,`role_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户角色表';

-- ----------------------------
-- Table structure for tb_code_list
-- ----------------------------
DROP TABLE IF EXISTS `tb_code_list`;
CREATE TABLE `tb_code_list` (
  `class` varchar(2) DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `option1` double DEFAULT NULL,
  `option2` double DEFAULT NULL,
  `matter` varchar(60) DEFAULT NULL,
  `deleted` varchar(1) DEFAULT NULL,
  `moditime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_commodity
-- ----------------------------
DROP TABLE IF EXISTS `tb_commodity`;
CREATE TABLE `tb_commodity` (
  `code` varchar(18) DEFAULT NULL,
  `name` varchar(60) DEFAULT NULL,
  `spec` varchar(40) DEFAULT NULL,
  `unit` varchar(10) DEFAULT NULL,
  `conversion` double DEFAULT NULL,
  `sort` varchar(10) DEFAULT NULL,
  `class` varchar(2) DEFAULT NULL,
  `producer` varchar(20) DEFAULT NULL,
  `keepday` int(11) DEFAULT NULL,
  `nature` varchar(10) DEFAULT NULL,
  `append_ntu` varchar(10) DEFAULT NULL,
  `spell` varchar(10) DEFAULT NULL,
  `length` double DEFAULT NULL,
  `width` double DEFAULT NULL,
  `high` double DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `startdate` varchar(225) DEFAULT NULL,
  `enddate` varchar(225) DEFAULT NULL,
  `season` varchar(4) DEFAULT NULL,
  `one_off` int(11) DEFAULT NULL,
  `mark` varchar(10) DEFAULT NULL,
  `jjfs` tinyint(4) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `recdate` varchar(27) DEFAULT NULL,
  `deleted` varchar(1) DEFAULT NULL,
  `moditime` varchar(27) DEFAULT NULL,
  `remark` varchar(60) DEFAULT NULL,
  `itemno` varchar(18) DEFAULT NULL,
  `tax` int(11) DEFAULT NULL,
  `Sort_son1` varchar(20) DEFAULT NULL,
  `Sort_son2` varchar(20) DEFAULT NULL,
  `order_unit` double DEFAULT NULL,
  `send_unit` double DEFAULT NULL,
  `ifkeepday` int(11) DEFAULT NULL,
  `iftaxfree` int(11) DEFAULT NULL,
  UNIQUE KEY `index1` (`code`) USING BTREE,
  KEY `index2` (`sort`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_comm_shop
-- ----------------------------
DROP TABLE IF EXISTS `tb_comm_shop`;
CREATE TABLE `tb_comm_shop` (
  `organ` varchar(4) DEFAULT NULL,
  `class` varchar(2) DEFAULT NULL,
  `code` varchar(18) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `memprice` double DEFAULT NULL,
  `provider` varchar(10) DEFAULT NULL,
  `nature` varchar(10) DEFAULT NULL,
  `ifsale` tinyint(4) DEFAULT NULL,
  `ifstock` tinyint(4) DEFAULT NULL,
  `ifplu` tinyint(4) DEFAULT NULL,
  `iseveruse` tinyint(4) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `indate` varchar(27) DEFAULT NULL,
  `deleted` varchar(1) DEFAULT NULL,
  UNIQUE KEY `index_1` (`organ`,`code`),
  KEY `index_2` (`organ`,`code`,`provider`,`state`,`ifstock`,`price`,`indate`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_comm_sort
-- ----------------------------
DROP TABLE IF EXISTS `tb_comm_sort`;
CREATE TABLE `tb_comm_sort` (
  `code` varchar(10) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `nature` int(11) DEFAULT NULL,
  `append_nature` int(11) DEFAULT NULL,
  `tax` int(11) DEFAULT NULL,
  `sale_test` int(11) DEFAULT NULL,
  `mlv` double DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `deleted` varchar(1) DEFAULT NULL,
  `moditime` varchar(27) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  `price_cust` varchar(6) DEFAULT NULL,
  `sort_type` int(11) DEFAULT NULL,
  `remark` varchar(60) DEFAULT NULL,
  `Son1_info` varchar(20) DEFAULT NULL,
  `Son2_info` varchar(20) DEFAULT NULL,
  UNIQUE KEY `index_1` (`code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_cur_stock
-- ----------------------------
DROP TABLE IF EXISTS `tb_cur_stock`;
CREATE TABLE `tb_cur_stock` (
  `organ` varchar(4) DEFAULT NULL,
  `class` varchar(2) DEFAULT NULL,
  `code` varchar(18) DEFAULT NULL,
  `acceptid` varchar(20) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `sum_cost` double DEFAULT NULL,
  `amou_preout` double DEFAULT NULL,
  `provider` varchar(10) DEFAULT NULL,
  `cost_statu` tinyint(4) DEFAULT NULL,
  `busdate` date DEFAULT NULL,
  `losedate` date DEFAULT NULL,
  `dmno` varchar(20) DEFAULT NULL,
  `organ_out` varchar(4) DEFAULT NULL,
  `moditime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `store` varchar(6) DEFAULT NULL,
  `provider1` varchar(10) DEFAULT NULL,
  `sum_cost1` double DEFAULT NULL,
  `Acctype` varchar(1) DEFAULT NULL,
  `Notaxcost` double DEFAULT NULL,
  `tax` int(11) DEFAULT NULL,
  `warn_date` date DEFAULT NULL,
  KEY `index_1` (`organ`,`code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_mark
-- ----------------------------
DROP TABLE IF EXISTS `tb_mark`;
CREATE TABLE `tb_mark` (
  `code` varchar(10) DEFAULT NULL,
  `class` varchar(2) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `factory` varchar(10) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `deleted` varchar(1) DEFAULT NULL,
  `moditime` varchar(27) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `grade_code` varchar(2) DEFAULT NULL,
  `mark_local` varchar(60) DEFAULT NULL,
  `mark_style` varchar(60) DEFAULT NULL,
  `mark_story` longtext,
  `price_min` double DEFAULT NULL,
  `price_max` double DEFAULT NULL,
  `sort` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_minorder
-- ----------------------------
DROP TABLE IF EXISTS `tb_minorder`;
CREATE TABLE `tb_minorder` (
  `klid` varchar(16) DEFAULT NULL,
  `dlid` varchar(16) DEFAULT NULL,
  `zlid` varchar(16) DEFAULT NULL,
  `xlid` varchar(32) DEFAULT NULL,
  `goodsid` varchar(32) DEFAULT NULL,
  `goodsname` varchar(64) DEFAULT NULL,
  `spec` varchar(32) DEFAULT NULL,
  `unit` varchar(8) DEFAULT NULL,
  `spec_u` varchar(16) DEFAULT NULL,
  `qty` varchar(16) DEFAULT NULL,
  `salevalue` varchar(16) DEFAULT NULL,
  `gain` varchar(16) DEFAULT NULL,
  `dms` varchar(32) DEFAULT NULL,
  `saleableday` varchar(32) DEFAULT NULL,
  `minorder` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_minstock
-- ----------------------------
DROP TABLE IF EXISTS `tb_minstock`;
CREATE TABLE `tb_minstock` (
  `kl` varchar(16) DEFAULT NULL,
  `dl` varchar(16) DEFAULT NULL,
  `zl` varchar(16) DEFAULT NULL,
  `xl` varchar(32) DEFAULT NULL,
  `goodsid` varchar(32) DEFAULT NULL,
  `goodsname` varchar(64) DEFAULT NULL,
  `spec` varchar(32) DEFAULT NULL,
  `unit` varchar(16) DEFAULT NULL,
  `spec_u` varchar(16) DEFAULT NULL,
  `qty` varchar(16) DEFAULT NULL,
  `salevalue` varchar(16) DEFAULT NULL,
  `gain` varchar(16) DEFAULT NULL,
  `dms` varchar(32) DEFAULT NULL,
  `saleableday` varchar(32) DEFAULT NULL,
  `minstock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_organ
-- ----------------------------
DROP TABLE IF EXISTS `tb_organ`;
CREATE TABLE `tb_organ` (
  `organ` varchar(4) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `centerid` varchar(4) DEFAULT NULL,
  `nature` int(11) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `postcode` varchar(6) DEFAULT NULL,
  `sellers` int(11) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `style` varchar(60) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `shopkeeper` varchar(10) DEFAULT NULL,
  `tel1` varchar(20) DEFAULT NULL,
  `server` varchar(20) DEFAULT NULL,
  `serverip` varchar(23) DEFAULT NULL,
  `srvport` int(11) DEFAULT NULL,
  `lockip` varchar(23) DEFAULT NULL,
  `manager` varchar(10) DEFAULT NULL,
  `tel2` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `setuptime` varchar(27) DEFAULT NULL,
  `acceptdate` varchar(10) DEFAULT NULL,
  `runtime` varchar(27) DEFAULT NULL,
  `opentime` varchar(27) DEFAULT NULL,
  `pc_amou` int(11) DEFAULT NULL,
  `pos_amou` int(11) DEFAULT NULL,
  `bank` varchar(60) DEFAULT NULL,
  `account` varchar(30) DEFAULT NULL,
  `taxnum` varchar(30) DEFAULT NULL,
  `finance` varchar(4) DEFAULT NULL,
  `client` varchar(10) DEFAULT NULL,
  `provider` varchar(10) DEFAULT NULL,
  `plumode` int(11) DEFAULT NULL,
  `sysmode` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `deleted` varchar(1) DEFAULT NULL,
  `moditime` varchar(27) DEFAULT NULL,
  `shop_type` varchar(4) DEFAULT NULL,
  `comms_inshop` int(11) DEFAULT NULL,
  `psi_bl` double DEFAULT NULL,
  `procemode` int(11) DEFAULT NULL,
  `acreage` double DEFAULT NULL,
  `ps_type` int(11) DEFAULT NULL,
  `area` varchar(10) DEFAULT NULL,
  `eb_state` int(11) DEFAULT NULL,
  UNIQUE KEY `index_1` (`organ`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_popinfo
-- ----------------------------
DROP TABLE IF EXISTS `tb_popinfo`;
CREATE TABLE `tb_popinfo` (
  `id` varchar(64) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `organ` varchar(500) DEFAULT NULL,
  `remark` varchar(64) DEFAULT NULL,
  `code` varchar(64) DEFAULT NULL,
  `specprice` decimal(16,2) DEFAULT NULL,
  `expression` int(11) DEFAULT NULL,
  KEY `index_1` (`id`,`name`,`organ`,`code`,`startdate`,`enddate`,`specprice`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_popinfo_his
-- ----------------------------
DROP TABLE IF EXISTS `tb_popinfo_his`;
CREATE TABLE `tb_popinfo_his` (
  `id` varchar(64) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `organ` varchar(16) DEFAULT NULL,
  `remark` varchar(64) DEFAULT NULL,
  `code` varchar(64) DEFAULT NULL,
  `specprice` decimal(16,2) DEFAULT NULL,
  `expression` int(11) DEFAULT NULL,
  KEY `index_1` (`id`,`name`,`organ`,`code`,`startdate`,`enddate`,`specprice`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_promhis
-- ----------------------------
DROP TABLE IF EXISTS `tb_promhis`;
CREATE TABLE `tb_promhis` (
  `id` varchar(64) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `organ` varchar(500) DEFAULT NULL,
  `remark` varchar(64) DEFAULT '',
  `code` varchar(64) DEFAULT NULL,
  `specprice` decimal(16,2) DEFAULT NULL,
  `expression` int(11) DEFAULT '0',
  `sdate` datetime DEFAULT NULL,
  UNIQUE KEY `index_1` (`id`,`name`,`startdate`,`enddate`,`organ`,`remark`,`code`,`specprice`,`expression`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_provider
-- ----------------------------
DROP TABLE IF EXISTS `tb_provider`;
CREATE TABLE `tb_provider` (
  `code` varchar(10) DEFAULT NULL,
  `jyfs` varchar(4) DEFAULT NULL,
  `name` varchar(60) DEFAULT NULL,
  `cashstock` tinyint(4) DEFAULT NULL,
  `send_type` int(11) DEFAULT NULL,
  `corporation` varchar(10) DEFAULT NULL,
  `linkman` varchar(10) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `handset` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `area` varchar(60) DEFAULT NULL,
  `address` varchar(60) DEFAULT NULL,
  `acctype` varchar(1) DEFAULT NULL,
  `tax` int(11) DEFAULT NULL,
  `bank` varchar(60) DEFAULT NULL,
  `account` varchar(30) DEFAULT NULL,
  `taxnum` varchar(30) DEFAULT NULL,
  `remark` varchar(60) DEFAULT NULL,
  `statu` int(11) DEFAULT NULL,
  `deleted` varchar(1) DEFAULT NULL,
  `moditime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isstop` int(11) DEFAULT NULL,
  `provider_type` int(11) DEFAULT NULL,
  `organ` varchar(4) DEFAULT NULL,
  `provider_fath` varchar(10) DEFAULT NULL,
  `sort_type` int(11) DEFAULT NULL,
  `spell` varchar(30) DEFAULT NULL,
  `wumis_code` varchar(10) DEFAULT NULL,
  `ent_type` varchar(4) DEFAULT NULL,
  `website` varchar(60) DEFAULT NULL,
  `web_user` varchar(40) DEFAULT NULL,
  `fin_linkman` varchar(10) DEFAULT NULL,
  `fin_phone` varchar(20) DEFAULT NULL,
  `fin_busisness` varchar(20) DEFAULT NULL,
  UNIQUE KEY `index_1` (`code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_provider_orderplan
-- ----------------------------
DROP TABLE IF EXISTS `tb_provider_orderplan`;
CREATE TABLE `tb_provider_orderplan` (
  `provider` varchar(10) DEFAULT NULL,
  `organ` varchar(4) DEFAULT NULL,
  `class` varchar(2) DEFAULT NULL,
  `send_in` int(11) DEFAULT NULL,
  `week1` tinyint(4) DEFAULT NULL,
  `week2` tinyint(4) DEFAULT NULL,
  `week3` tinyint(4) DEFAULT NULL,
  `week4` tinyint(4) DEFAULT NULL,
  `week5` tinyint(4) DEFAULT NULL,
  `week6` tinyint(4) DEFAULT NULL,
  `week7` tinyint(4) DEFAULT NULL,
  `deleted` varchar(1) DEFAULT NULL,
  `moditime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Contract_organ` varchar(4) DEFAULT NULL,
  `Period` int(11) DEFAULT NULL,
  `Send_type` double DEFAULT NULL,
  `Order_shop` int(11) DEFAULT NULL,
  `Balance_shop` int(11) DEFAULT NULL,
  `Linkman` varchar(10) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Fax` varchar(20) DEFAULT NULL,
  `Delivery` varchar(60) DEFAULT NULL,
  `min_orderamou` double DEFAULT NULL,
  `min_ordersum` double DEFAULT NULL,
  `max_orderamou` double DEFAULT NULL,
  `max_ordersum` double DEFAULT NULL,
  UNIQUE KEY `index_1` (`organ`,`class`,`provider`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_sell_waste_all
-- ----------------------------
DROP TABLE IF EXISTS `tb_sell_waste_all`;
CREATE TABLE `tb_sell_waste_all` (
  `organ` varchar(4) DEFAULT NULL,
  `selldate` varchar(10) DEFAULT NULL,
  `selltime` varchar(8) DEFAULT NULL,
  `class` varchar(2) DEFAULT NULL,
  `posid` varchar(10) DEFAULT NULL,
  `receid` varchar(10) DEFAULT NULL,
  `receipt` varchar(20) DEFAULT NULL,
  `code` varchar(18) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `sum_sell` double DEFAULT NULL,
  `sum_disc` double DEFAULT NULL,
  `agio` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `payment` varchar(10) DEFAULT NULL,
  `region` varchar(10) DEFAULT NULL,
  `cardid` varchar(16) DEFAULT NULL,
  `barcode` varchar(18) DEFAULT NULL,
  `selltype` int(11) DEFAULT NULL,
  `billtype` int(11) DEFAULT NULL,
  `guest_type` varchar(2) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `nd` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_sell_waste_all201804
-- ----------------------------
DROP TABLE IF EXISTS `tb_sell_waste_all201804`;
CREATE TABLE `tb_sell_waste_all201804` (
  `organ` varchar(4) DEFAULT NULL,
  `selldate` varchar(10) DEFAULT NULL,
  `selltime` varchar(8) DEFAULT NULL,
  `class` varchar(2) DEFAULT NULL,
  `posid` varchar(10) DEFAULT NULL,
  `receid` varchar(10) DEFAULT NULL,
  `receipt` varchar(20) DEFAULT NULL,
  `code` varchar(18) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `sum_sell` double DEFAULT NULL,
  `sum_disc` double DEFAULT NULL,
  `agio` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `payment` varchar(10) DEFAULT NULL,
  `region` varchar(10) DEFAULT NULL,
  `cardid` varchar(16) DEFAULT NULL,
  `barcode` varchar(18) DEFAULT NULL,
  `selltype` int(11) DEFAULT NULL,
  `billtype` int(11) DEFAULT NULL,
  `guest_type` varchar(2) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `nd` varchar(36) DEFAULT NULL,
  KEY `index_1` (`selldate`,`organ`,`receid`,`posid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_sell_waste_all201805
-- ----------------------------
DROP TABLE IF EXISTS `tb_sell_waste_all201805`;
CREATE TABLE `tb_sell_waste_all201805` (
  `organ` varchar(4) DEFAULT NULL,
  `selldate` varchar(10) DEFAULT NULL,
  `selltime` varchar(8) DEFAULT NULL,
  `class` varchar(2) DEFAULT NULL,
  `posid` varchar(10) DEFAULT NULL,
  `receid` varchar(10) DEFAULT NULL,
  `receipt` varchar(20) DEFAULT NULL,
  `code` varchar(18) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `sum_sell` double DEFAULT NULL,
  `sum_disc` double DEFAULT NULL,
  `agio` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `payment` varchar(10) DEFAULT NULL,
  `region` varchar(10) DEFAULT NULL,
  `cardid` varchar(16) DEFAULT NULL,
  `barcode` varchar(18) DEFAULT NULL,
  `selltype` int(11) DEFAULT NULL,
  `billtype` int(11) DEFAULT NULL,
  `guest_type` varchar(2) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `nd` varchar(36) DEFAULT NULL,
  KEY `index_1` (`selldate`,`organ`,`receid`,`posid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_sell_waste_all201806
-- ----------------------------
DROP TABLE IF EXISTS `tb_sell_waste_all201806`;
CREATE TABLE `tb_sell_waste_all201806` (
  `organ` varchar(4) DEFAULT NULL,
  `selldate` date DEFAULT NULL,
  `selltime` time DEFAULT NULL,
  `class` varchar(2) DEFAULT NULL,
  `posid` varchar(10) DEFAULT NULL,
  `receid` varchar(10) DEFAULT NULL,
  `receipt` varchar(20) DEFAULT NULL,
  `code` varchar(18) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `sum_sell` double DEFAULT NULL,
  `sum_disc` double DEFAULT NULL,
  `agio` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `payment` varchar(10) DEFAULT NULL,
  `region` varchar(10) DEFAULT NULL,
  `cardid` varchar(16) DEFAULT NULL,
  `barcode` varchar(18) DEFAULT NULL,
  `selltype` int(11) DEFAULT NULL,
  `billtype` int(11) DEFAULT NULL,
  `guest_type` varchar(2) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `nd` varchar(36) DEFAULT NULL,
  KEY `index_1` (`selldate`,`organ`,`receid`,`posid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_sell_waste_all201807
-- ----------------------------
DROP TABLE IF EXISTS `tb_sell_waste_all201807`;
CREATE TABLE `tb_sell_waste_all201807` (
  `organ` varchar(4) DEFAULT NULL,
  `selldate` date DEFAULT NULL,
  `selltime` time DEFAULT NULL,
  `class` varchar(2) DEFAULT NULL,
  `posid` varchar(10) DEFAULT NULL,
  `receid` varchar(10) DEFAULT NULL,
  `receipt` varchar(20) DEFAULT NULL,
  `code` varchar(18) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `sum_sell` double DEFAULT NULL,
  `sum_disc` double DEFAULT NULL,
  `agio` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `payment` varchar(10) DEFAULT NULL,
  `region` varchar(10) DEFAULT NULL,
  `cardid` varchar(16) DEFAULT NULL,
  `barcode` varchar(18) DEFAULT NULL,
  `selltype` int(11) DEFAULT NULL,
  `billtype` int(11) DEFAULT NULL,
  `guest_type` varchar(2) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `nd` varchar(36) DEFAULT NULL,
  KEY `index_1` (`selldate`,`organ`,`receid`,`posid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_sell_waste_all201808
-- ----------------------------
DROP TABLE IF EXISTS `tb_sell_waste_all201808`;
CREATE TABLE `tb_sell_waste_all201808` (
  `organ` varchar(4) DEFAULT NULL,
  `selldate` date DEFAULT NULL,
  `selltime` time DEFAULT NULL,
  `class` varchar(2) DEFAULT NULL,
  `posid` varchar(10) DEFAULT NULL,
  `receid` varchar(10) DEFAULT NULL,
  `receipt` varchar(20) DEFAULT NULL,
  `code` varchar(18) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `sum_sell` double DEFAULT NULL,
  `sum_disc` double DEFAULT NULL,
  `agio` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `payment` varchar(10) DEFAULT NULL,
  `region` varchar(10) DEFAULT NULL,
  `cardid` varchar(16) DEFAULT NULL,
  `barcode` varchar(18) DEFAULT NULL,
  `selltype` int(11) DEFAULT NULL,
  `billtype` int(11) DEFAULT NULL,
  `guest_type` varchar(2) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `nd` varchar(36) DEFAULT NULL,
  KEY `index_1` (`selldate`,`organ`,`receid`,`posid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_sell_waste_all201809
-- ----------------------------
DROP TABLE IF EXISTS `tb_sell_waste_all201809`;
CREATE TABLE `tb_sell_waste_all201809` (
  `organ` varchar(4) DEFAULT NULL,
  `selldate` date DEFAULT NULL,
  `selltime` time DEFAULT NULL,
  `class` varchar(2) DEFAULT NULL,
  `posid` varchar(10) DEFAULT NULL,
  `receid` varchar(10) DEFAULT NULL,
  `receipt` varchar(20) DEFAULT NULL,
  `code` varchar(18) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `sum_sell` double DEFAULT NULL,
  `sum_disc` double DEFAULT NULL,
  `agio` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `payment` varchar(10) DEFAULT NULL,
  `region` varchar(10) DEFAULT NULL,
  `cardid` varchar(16) DEFAULT NULL,
  `barcode` varchar(18) DEFAULT NULL,
  `selltype` int(11) DEFAULT NULL,
  `billtype` int(11) DEFAULT NULL,
  `guest_type` varchar(2) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `nd` varchar(36) DEFAULT NULL,
  KEY `index_1` (`selldate`,`organ`,`receid`,`posid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_sell_waste_all201810
-- ----------------------------
DROP TABLE IF EXISTS `tb_sell_waste_all201810`;
CREATE TABLE `tb_sell_waste_all201810` (
  `organ` varchar(4) DEFAULT NULL,
  `selldate` date DEFAULT NULL,
  `selltime` time DEFAULT NULL,
  `class` varchar(2) DEFAULT NULL,
  `posid` varchar(10) DEFAULT NULL,
  `receid` varchar(10) DEFAULT NULL,
  `receipt` varchar(20) DEFAULT NULL,
  `code` varchar(18) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `sum_sell` double DEFAULT NULL,
  `sum_disc` double DEFAULT NULL,
  `agio` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `payment` varchar(10) DEFAULT NULL,
  `region` varchar(10) DEFAULT NULL,
  `cardid` varchar(16) DEFAULT NULL,
  `barcode` varchar(18) DEFAULT NULL,
  `selltype` int(11) DEFAULT NULL,
  `billtype` int(11) DEFAULT NULL,
  `guest_type` varchar(2) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `nd` varchar(36) DEFAULT NULL,
  KEY `index_1` (`selldate`,`organ`,`receid`,`posid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_sell_waste_all201811
-- ----------------------------
DROP TABLE IF EXISTS `tb_sell_waste_all201811`;
CREATE TABLE `tb_sell_waste_all201811` (
  `organ` varchar(4) DEFAULT NULL,
  `selldate` date DEFAULT NULL,
  `selltime` time DEFAULT NULL,
  `class` varchar(2) DEFAULT NULL,
  `posid` varchar(10) DEFAULT NULL,
  `receid` varchar(10) DEFAULT NULL,
  `receipt` varchar(20) DEFAULT NULL,
  `code` varchar(18) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `sum_sell` double DEFAULT NULL,
  `sum_disc` double DEFAULT NULL,
  `agio` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `payment` varchar(10) DEFAULT NULL,
  `region` varchar(10) DEFAULT NULL,
  `cardid` varchar(16) DEFAULT NULL,
  `barcode` varchar(18) DEFAULT NULL,
  `selltype` int(11) DEFAULT NULL,
  `billtype` int(11) DEFAULT NULL,
  `guest_type` varchar(2) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `nd` varchar(36) DEFAULT NULL,
  KEY `index_1` (`selldate`,`organ`,`receid`,`posid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_sell_waste_all201812
-- ----------------------------
DROP TABLE IF EXISTS `tb_sell_waste_all201812`;
CREATE TABLE `tb_sell_waste_all201812` (
  `organ` varchar(4) DEFAULT NULL,
  `selldate` date DEFAULT NULL,
  `selltime` time DEFAULT NULL,
  `class` varchar(2) DEFAULT NULL,
  `posid` varchar(10) DEFAULT NULL,
  `receid` varchar(10) DEFAULT NULL,
  `receipt` varchar(20) DEFAULT NULL,
  `code` varchar(18) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `sum_sell` double DEFAULT NULL,
  `sum_disc` double DEFAULT NULL,
  `agio` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `payment` varchar(10) DEFAULT NULL,
  `region` varchar(10) DEFAULT NULL,
  `cardid` varchar(16) DEFAULT NULL,
  `barcode` varchar(18) DEFAULT NULL,
  `selltype` int(11) DEFAULT NULL,
  `billtype` int(11) DEFAULT NULL,
  `guest_type` varchar(2) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `nd` varchar(36) DEFAULT NULL,
  KEY `index_1` (`selldate`,`organ`,`receid`,`posid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_sell_waste_all201901
-- ----------------------------
DROP TABLE IF EXISTS `tb_sell_waste_all201901`;
CREATE TABLE `tb_sell_waste_all201901` (
  `organ` varchar(4) DEFAULT NULL,
  `selldate` date DEFAULT NULL,
  `selltime` time DEFAULT NULL,
  `class` varchar(2) DEFAULT NULL,
  `posid` varchar(10) DEFAULT NULL,
  `receid` varchar(10) DEFAULT NULL,
  `receipt` varchar(20) DEFAULT NULL,
  `code` varchar(18) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `sum_sell` double DEFAULT NULL,
  `sum_disc` double DEFAULT NULL,
  `agio` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `payment` varchar(10) DEFAULT NULL,
  `region` varchar(10) DEFAULT NULL,
  `cardid` varchar(16) DEFAULT NULL,
  `barcode` varchar(18) DEFAULT NULL,
  `selltype` int(11) DEFAULT NULL,
  `billtype` int(11) DEFAULT NULL,
  `guest_type` varchar(2) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `nd` varchar(36) DEFAULT NULL,
  KEY `index1` (`organ`,`selldate`,`selltime`,`class`,`posid`,`receipt`,`code`,`price`),
  KEY `index_1` (`selldate`,`organ`,`receid`,`posid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_sell_waste_all201902
-- ----------------------------
DROP TABLE IF EXISTS `tb_sell_waste_all201902`;
CREATE TABLE `tb_sell_waste_all201902` (
  `organ` varchar(4) DEFAULT NULL,
  `selldate` date DEFAULT NULL,
  `selltime` time DEFAULT NULL,
  `class` varchar(2) DEFAULT NULL,
  `posid` varchar(10) DEFAULT NULL,
  `receid` varchar(10) DEFAULT NULL,
  `receipt` varchar(20) DEFAULT NULL,
  `code` varchar(18) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `sum_sell` double DEFAULT NULL,
  `sum_disc` double DEFAULT NULL,
  `agio` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `payment` varchar(10) DEFAULT NULL,
  `region` varchar(10) DEFAULT NULL,
  `cardid` varchar(16) DEFAULT NULL,
  `barcode` varchar(18) DEFAULT NULL,
  `selltype` int(11) DEFAULT NULL,
  `billtype` int(11) DEFAULT NULL,
  `guest_type` varchar(2) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `nd` varchar(36) DEFAULT NULL,
  KEY `index_1` (`selldate`,`organ`,`receid`,`posid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_sell_waste_all201903
-- ----------------------------
DROP TABLE IF EXISTS `tb_sell_waste_all201903`;
CREATE TABLE `tb_sell_waste_all201903` (
  `organ` varchar(4) DEFAULT NULL,
  `selldate` date DEFAULT NULL,
  `selltime` time DEFAULT NULL,
  `class` varchar(2) DEFAULT NULL,
  `posid` varchar(10) DEFAULT NULL,
  `receid` varchar(10) DEFAULT NULL,
  `receipt` varchar(20) DEFAULT NULL,
  `code` varchar(18) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `sum_sell` double DEFAULT NULL,
  `sum_disc` double DEFAULT NULL,
  `agio` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `payment` varchar(10) DEFAULT NULL,
  `region` varchar(10) DEFAULT NULL,
  `cardid` varchar(16) DEFAULT NULL,
  `barcode` varchar(18) DEFAULT NULL,
  `selltype` int(11) DEFAULT NULL,
  `billtype` int(11) DEFAULT NULL,
  `guest_type` varchar(2) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `nd` varchar(36) DEFAULT NULL,
  KEY `index_1` (`selldate`,`organ`,`receid`,`posid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_sell_waste_all201904
-- ----------------------------
DROP TABLE IF EXISTS `tb_sell_waste_all201904`;
CREATE TABLE `tb_sell_waste_all201904` (
  `organ` varchar(4) DEFAULT NULL,
  `selldate` date DEFAULT NULL,
  `selltime` time DEFAULT NULL,
  `class` varchar(2) DEFAULT NULL,
  `posid` varchar(10) DEFAULT NULL,
  `receid` varchar(10) DEFAULT NULL,
  `receipt` varchar(20) DEFAULT NULL,
  `code` varchar(18) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `sum_sell` double DEFAULT NULL,
  `sum_disc` double DEFAULT NULL,
  `agio` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `payment` varchar(10) DEFAULT NULL,
  `region` varchar(10) DEFAULT NULL,
  `cardid` varchar(16) DEFAULT NULL,
  `barcode` varchar(18) DEFAULT NULL,
  `selltype` int(11) DEFAULT NULL,
  `billtype` int(11) DEFAULT NULL,
  `guest_type` varchar(2) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `nd` varchar(36) DEFAULT NULL,
  KEY `index_1` (`selldate`,`organ`,`receid`,`posid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_sell_waste_all201905
-- ----------------------------
DROP TABLE IF EXISTS `tb_sell_waste_all201905`;
CREATE TABLE `tb_sell_waste_all201905` (
  `organ` varchar(4) DEFAULT NULL,
  `selldate` date DEFAULT NULL,
  `selltime` time DEFAULT NULL,
  `class` varchar(2) DEFAULT NULL,
  `posid` varchar(10) DEFAULT NULL,
  `receid` varchar(10) DEFAULT NULL,
  `receipt` varchar(20) DEFAULT NULL,
  `code` varchar(18) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `sum_sell` double DEFAULT NULL,
  `sum_disc` double DEFAULT NULL,
  `agio` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `payment` varchar(10) DEFAULT NULL,
  `region` varchar(10) DEFAULT NULL,
  `cardid` varchar(16) DEFAULT NULL,
  `barcode` varchar(18) DEFAULT NULL,
  `selltype` int(11) DEFAULT NULL,
  `billtype` int(11) DEFAULT NULL,
  `guest_type` varchar(2) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `nd` varchar(36) DEFAULT NULL,
  KEY `index_1` (`selldate`,`organ`,`receid`,`posid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_sell_waste_all201906
-- ----------------------------
DROP TABLE IF EXISTS `tb_sell_waste_all201906`;
CREATE TABLE `tb_sell_waste_all201906` (
  `organ` varchar(4) DEFAULT NULL,
  `selldate` date DEFAULT NULL,
  `selltime` time DEFAULT NULL,
  `class` varchar(2) DEFAULT NULL,
  `posid` varchar(10) DEFAULT NULL,
  `receid` varchar(10) DEFAULT NULL,
  `receipt` varchar(20) DEFAULT NULL,
  `code` varchar(18) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `sum_sell` double DEFAULT NULL,
  `sum_disc` double DEFAULT NULL,
  `agio` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `payment` varchar(10) DEFAULT NULL,
  `region` varchar(10) DEFAULT NULL,
  `cardid` varchar(16) DEFAULT NULL,
  `barcode` varchar(18) DEFAULT NULL,
  `selltype` int(11) DEFAULT NULL,
  `billtype` int(11) DEFAULT NULL,
  `guest_type` varchar(2) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `nd` varchar(36) DEFAULT NULL,
  KEY `index_1` (`selldate`,`organ`,`receid`,`posid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_sell_waste_all201907
-- ----------------------------
DROP TABLE IF EXISTS `tb_sell_waste_all201907`;
CREATE TABLE `tb_sell_waste_all201907` (
  `organ` varchar(4) DEFAULT NULL,
  `selldate` date DEFAULT NULL,
  `selltime` time DEFAULT NULL,
  `class` varchar(2) DEFAULT NULL,
  `posid` varchar(10) DEFAULT NULL,
  `receid` varchar(10) DEFAULT NULL,
  `receipt` varchar(20) DEFAULT NULL,
  `code` varchar(18) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `sum_sell` double DEFAULT NULL,
  `sum_disc` double DEFAULT NULL,
  `agio` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `payment` varchar(10) DEFAULT NULL,
  `region` varchar(10) DEFAULT NULL,
  `cardid` varchar(16) DEFAULT NULL,
  `barcode` varchar(18) DEFAULT NULL,
  `selltype` int(11) DEFAULT NULL,
  `billtype` int(11) DEFAULT NULL,
  `guest_type` varchar(2) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `nd` varchar(36) DEFAULT NULL,
  KEY `index_1` (`selldate`,`organ`,`receid`,`posid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_sell_waste_all201908
-- ----------------------------
DROP TABLE IF EXISTS `tb_sell_waste_all201908`;
CREATE TABLE `tb_sell_waste_all201908` (
  `organ` varchar(4) DEFAULT NULL,
  `selldate` date DEFAULT NULL,
  `selltime` time DEFAULT NULL,
  `class` varchar(2) DEFAULT NULL,
  `posid` varchar(10) DEFAULT NULL,
  `receid` varchar(10) DEFAULT NULL,
  `receipt` varchar(20) DEFAULT NULL,
  `code` varchar(18) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `sum_sell` double DEFAULT NULL,
  `sum_disc` double DEFAULT NULL,
  `agio` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `payment` varchar(10) DEFAULT NULL,
  `region` varchar(10) DEFAULT NULL,
  `cardid` varchar(16) DEFAULT NULL,
  `barcode` varchar(18) DEFAULT NULL,
  `selltype` int(11) DEFAULT NULL,
  `billtype` int(11) DEFAULT NULL,
  `guest_type` varchar(2) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `nd` varchar(36) DEFAULT NULL,
  KEY `index_1` (`selldate`,`organ`,`receid`,`posid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_sell_waste_all201909
-- ----------------------------
DROP TABLE IF EXISTS `tb_sell_waste_all201909`;
CREATE TABLE `tb_sell_waste_all201909` (
  `organ` varchar(4) DEFAULT NULL,
  `selldate` varchar(10) DEFAULT NULL,
  `selltime` varchar(8) DEFAULT NULL,
  `class` varchar(2) DEFAULT NULL,
  `posid` varchar(10) DEFAULT NULL,
  `receid` varchar(10) DEFAULT NULL,
  `receipt` varchar(20) DEFAULT NULL,
  `code` varchar(18) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `sum_sell` double DEFAULT NULL,
  `sum_disc` double DEFAULT NULL,
  `agio` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `payment` varchar(10) DEFAULT NULL,
  `region` varchar(10) DEFAULT NULL,
  `cardid` varchar(16) DEFAULT NULL,
  `barcode` varchar(18) DEFAULT NULL,
  `selltype` int(11) DEFAULT NULL,
  `billtype` int(11) DEFAULT NULL,
  `guest_type` varchar(2) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `nd` varchar(36) DEFAULT NULL,
  KEY `index_1` (`selldate`,`organ`,`receid`,`posid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_sell_waste_all201910
-- ----------------------------
DROP TABLE IF EXISTS `tb_sell_waste_all201910`;
CREATE TABLE `tb_sell_waste_all201910` (
  `organ` varchar(4) DEFAULT NULL,
  `selldate` varchar(10) DEFAULT NULL,
  `selltime` varchar(8) DEFAULT NULL,
  `class` varchar(2) DEFAULT NULL,
  `posid` varchar(10) DEFAULT NULL,
  `receid` varchar(10) DEFAULT NULL,
  `receipt` varchar(20) DEFAULT NULL,
  `code` varchar(18) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `sum_sell` double DEFAULT NULL,
  `sum_disc` double DEFAULT NULL,
  `agio` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `payment` varchar(10) DEFAULT NULL,
  `region` varchar(10) DEFAULT NULL,
  `cardid` varchar(16) DEFAULT NULL,
  `barcode` varchar(18) DEFAULT NULL,
  `selltype` int(11) DEFAULT NULL,
  `billtype` int(11) DEFAULT NULL,
  `guest_type` varchar(2) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `nd` varchar(36) DEFAULT NULL,
  KEY `index_1` (`selldate`,`organ`,`receid`,`posid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_sell_waste_all201911
-- ----------------------------
DROP TABLE IF EXISTS `tb_sell_waste_all201911`;
CREATE TABLE `tb_sell_waste_all201911` (
  `organ` varchar(4) DEFAULT NULL,
  `selldate` varchar(10) DEFAULT NULL,
  `selltime` varchar(8) DEFAULT NULL,
  `class` varchar(2) DEFAULT NULL,
  `posid` varchar(10) DEFAULT NULL,
  `receid` varchar(10) DEFAULT NULL,
  `receipt` varchar(20) DEFAULT NULL,
  `code` varchar(18) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `sum_sell` double DEFAULT NULL,
  `sum_disc` double DEFAULT NULL,
  `agio` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `payment` varchar(10) DEFAULT NULL,
  `region` varchar(10) DEFAULT NULL,
  `cardid` varchar(16) DEFAULT NULL,
  `barcode` varchar(18) DEFAULT NULL,
  `selltype` int(11) DEFAULT NULL,
  `billtype` int(11) DEFAULT NULL,
  `guest_type` varchar(2) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `nd` varchar(36) DEFAULT NULL,
  KEY `index_1` (`selldate`,`organ`,`receid`,`posid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_sell_waste_all201912
-- ----------------------------
DROP TABLE IF EXISTS `tb_sell_waste_all201912`;
CREATE TABLE `tb_sell_waste_all201912` (
  `organ` varchar(4) DEFAULT NULL,
  `selldate` varchar(10) DEFAULT NULL,
  `selltime` varchar(8) DEFAULT NULL,
  `class` varchar(2) DEFAULT NULL,
  `posid` varchar(10) DEFAULT NULL,
  `receid` varchar(10) DEFAULT NULL,
  `receipt` varchar(20) DEFAULT NULL,
  `code` varchar(18) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `sum_sell` double DEFAULT NULL,
  `sum_disc` double DEFAULT NULL,
  `agio` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `payment` varchar(10) DEFAULT NULL,
  `region` varchar(10) DEFAULT NULL,
  `cardid` varchar(16) DEFAULT NULL,
  `barcode` varchar(18) DEFAULT NULL,
  `selltype` int(11) DEFAULT NULL,
  `billtype` int(11) DEFAULT NULL,
  `guest_type` varchar(2) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `nd` varchar(36) DEFAULT NULL,
  KEY `index_1` (`selldate`,`organ`,`receid`,`posid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_sell_waste_all202001
-- ----------------------------
DROP TABLE IF EXISTS `tb_sell_waste_all202001`;
CREATE TABLE `tb_sell_waste_all202001` (
  `organ` varchar(4) DEFAULT NULL,
  `selldate` varchar(10) DEFAULT NULL,
  `selltime` varchar(8) DEFAULT NULL,
  `class` varchar(2) DEFAULT NULL,
  `posid` varchar(10) DEFAULT NULL,
  `receid` varchar(10) DEFAULT NULL,
  `receipt` varchar(20) DEFAULT NULL,
  `code` varchar(18) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `sum_sell` double DEFAULT NULL,
  `sum_disc` double DEFAULT NULL,
  `agio` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `payment` varchar(10) DEFAULT NULL,
  `region` varchar(10) DEFAULT NULL,
  `cardid` varchar(16) DEFAULT NULL,
  `barcode` varchar(18) DEFAULT NULL,
  `selltype` int(11) DEFAULT NULL,
  `billtype` int(11) DEFAULT NULL,
  `guest_type` varchar(2) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `nd` varchar(36) DEFAULT NULL,
  KEY `index_1` (`selldate`,`organ`,`receid`,`posid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_sell_waste_all202002
-- ----------------------------
DROP TABLE IF EXISTS `tb_sell_waste_all202002`;
CREATE TABLE `tb_sell_waste_all202002` (
  `organ` varchar(4) DEFAULT NULL,
  `selldate` varchar(10) DEFAULT NULL,
  `selltime` varchar(8) DEFAULT NULL,
  `class` varchar(2) DEFAULT NULL,
  `posid` varchar(10) DEFAULT NULL,
  `receid` varchar(10) DEFAULT NULL,
  `receipt` varchar(20) DEFAULT NULL,
  `code` varchar(18) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `sum_sell` double DEFAULT NULL,
  `sum_disc` double DEFAULT NULL,
  `agio` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `payment` varchar(10) DEFAULT NULL,
  `region` varchar(10) DEFAULT NULL,
  `cardid` varchar(16) DEFAULT NULL,
  `barcode` varchar(18) DEFAULT NULL,
  `selltype` int(11) DEFAULT NULL,
  `billtype` int(11) DEFAULT NULL,
  `guest_type` varchar(2) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `nd` varchar(36) DEFAULT NULL,
  KEY `index_1` (`selldate`,`organ`,`receid`,`posid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_sell_waste_all202003
-- ----------------------------
DROP TABLE IF EXISTS `tb_sell_waste_all202003`;
CREATE TABLE `tb_sell_waste_all202003` (
  `organ` varchar(4) DEFAULT NULL,
  `selldate` varchar(10) DEFAULT NULL,
  `selltime` varchar(8) DEFAULT NULL,
  `class` varchar(2) DEFAULT NULL,
  `posid` varchar(10) DEFAULT NULL,
  `receid` varchar(10) DEFAULT NULL,
  `receipt` varchar(20) DEFAULT NULL,
  `code` varchar(18) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `sum_sell` double DEFAULT NULL,
  `sum_disc` double DEFAULT NULL,
  `agio` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `payment` varchar(10) DEFAULT NULL,
  `region` varchar(10) DEFAULT NULL,
  `cardid` varchar(16) DEFAULT NULL,
  `barcode` varchar(18) DEFAULT NULL,
  `selltype` int(11) DEFAULT NULL,
  `billtype` int(11) DEFAULT NULL,
  `guest_type` varchar(2) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `nd` varchar(36) DEFAULT NULL,
  KEY `index_1` (`selldate`,`organ`,`receid`,`posid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_sell_waste_all202004
-- ----------------------------
DROP TABLE IF EXISTS `tb_sell_waste_all202004`;
CREATE TABLE `tb_sell_waste_all202004` (
  `organ` varchar(4) DEFAULT NULL,
  `selldate` varchar(10) DEFAULT NULL,
  `selltime` varchar(8) DEFAULT NULL,
  `class` varchar(2) DEFAULT NULL,
  `posid` varchar(10) DEFAULT NULL,
  `receid` varchar(10) DEFAULT NULL,
  `receipt` varchar(20) DEFAULT NULL,
  `code` varchar(18) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `sum_sell` double DEFAULT NULL,
  `sum_disc` double DEFAULT NULL,
  `agio` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `payment` varchar(10) DEFAULT NULL,
  `region` varchar(10) DEFAULT NULL,
  `cardid` varchar(16) DEFAULT NULL,
  `barcode` varchar(18) DEFAULT NULL,
  `selltype` int(11) DEFAULT NULL,
  `billtype` int(11) DEFAULT NULL,
  `guest_type` varchar(2) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `nd` varchar(36) DEFAULT NULL,
  KEY `index_1` (`selldate`,`organ`,`receid`,`posid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_sell_waste_all202005
-- ----------------------------
DROP TABLE IF EXISTS `tb_sell_waste_all202005`;
CREATE TABLE `tb_sell_waste_all202005` (
  `organ` varchar(4) DEFAULT NULL,
  `selldate` varchar(10) DEFAULT NULL,
  `selltime` varchar(8) DEFAULT NULL,
  `class` varchar(2) DEFAULT NULL,
  `posid` varchar(10) DEFAULT NULL,
  `receid` varchar(10) DEFAULT NULL,
  `receipt` varchar(20) DEFAULT NULL,
  `code` varchar(18) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `sum_sell` double DEFAULT NULL,
  `sum_disc` double DEFAULT NULL,
  `agio` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `payment` varchar(10) DEFAULT NULL,
  `region` varchar(10) DEFAULT NULL,
  `cardid` varchar(16) DEFAULT NULL,
  `barcode` varchar(18) DEFAULT NULL,
  `selltype` int(11) DEFAULT NULL,
  `billtype` int(11) DEFAULT NULL,
  `guest_type` varchar(2) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `nd` varchar(36) DEFAULT NULL,
  KEY `index_1` (`selldate`,`organ`,`receid`,`posid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_sell_waste_all202006
-- ----------------------------
DROP TABLE IF EXISTS `tb_sell_waste_all202006`;
CREATE TABLE `tb_sell_waste_all202006` (
  `organ` varchar(4) DEFAULT NULL,
  `selldate` varchar(10) DEFAULT NULL,
  `selltime` varchar(8) DEFAULT NULL,
  `class` varchar(2) DEFAULT NULL,
  `posid` varchar(10) DEFAULT NULL,
  `receid` varchar(10) DEFAULT NULL,
  `receipt` varchar(20) DEFAULT NULL,
  `code` varchar(18) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `sum_sell` double DEFAULT NULL,
  `sum_disc` double DEFAULT NULL,
  `agio` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `payment` varchar(10) DEFAULT NULL,
  `region` varchar(10) DEFAULT NULL,
  `cardid` varchar(16) DEFAULT NULL,
  `barcode` varchar(18) DEFAULT NULL,
  `selltype` int(11) DEFAULT NULL,
  `billtype` int(11) DEFAULT NULL,
  `guest_type` varchar(2) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `nd` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_sell_waste_all202007
-- ----------------------------
DROP TABLE IF EXISTS `tb_sell_waste_all202007`;
CREATE TABLE `tb_sell_waste_all202007` (
  `organ` varchar(4) DEFAULT NULL,
  `selldate` varchar(10) DEFAULT NULL,
  `selltime` varchar(8) DEFAULT NULL,
  `class` varchar(2) DEFAULT NULL,
  `posid` varchar(10) DEFAULT NULL,
  `receid` varchar(10) DEFAULT NULL,
  `receipt` varchar(20) DEFAULT NULL,
  `code` varchar(18) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `sum_sell` double DEFAULT NULL,
  `sum_disc` double DEFAULT NULL,
  `agio` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `payment` varchar(10) DEFAULT NULL,
  `region` varchar(10) DEFAULT NULL,
  `cardid` varchar(16) DEFAULT NULL,
  `barcode` varchar(18) DEFAULT NULL,
  `selltype` int(11) DEFAULT NULL,
  `billtype` int(11) DEFAULT NULL,
  `guest_type` varchar(2) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `nd` varchar(36) DEFAULT NULL,
  KEY `index1` (`organ`,`selldate`,`selltime`,`class`,`posid`,`receipt`,`code`,`price`) USING BTREE,
  KEY `index2` (`selldate`,`organ`,`code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_sell_waste_all202008
-- ----------------------------
DROP TABLE IF EXISTS `tb_sell_waste_all202008`;
CREATE TABLE `tb_sell_waste_all202008` (
  `organ` varchar(4) DEFAULT NULL,
  `selldate` varchar(10) DEFAULT NULL,
  `selltime` varchar(8) DEFAULT NULL,
  `class` varchar(2) DEFAULT NULL,
  `posid` varchar(10) DEFAULT NULL,
  `receid` varchar(10) DEFAULT NULL,
  `receipt` varchar(20) DEFAULT NULL,
  `code` varchar(18) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `sum_sell` double DEFAULT NULL,
  `sum_disc` double DEFAULT NULL,
  `agio` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `payment` varchar(10) DEFAULT NULL,
  `region` varchar(10) DEFAULT NULL,
  `cardid` varchar(16) DEFAULT NULL,
  `barcode` varchar(18) DEFAULT NULL,
  `selltype` int(11) DEFAULT NULL,
  `billtype` int(11) DEFAULT NULL,
  `guest_type` varchar(2) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `nd` varchar(36) DEFAULT NULL,
  KEY `index1` (`organ`,`selldate`,`selltime`,`class`,`posid`,`receipt`,`code`,`price`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_sell_waste_all202009
-- ----------------------------
DROP TABLE IF EXISTS `tb_sell_waste_all202009`;
CREATE TABLE `tb_sell_waste_all202009` (
  `organ` varchar(4) DEFAULT NULL,
  `selldate` varchar(10) DEFAULT NULL,
  `selltime` varchar(8) DEFAULT NULL,
  `class` varchar(2) DEFAULT NULL,
  `posid` varchar(10) DEFAULT NULL,
  `receid` varchar(10) DEFAULT NULL,
  `receipt` varchar(20) DEFAULT NULL,
  `code` varchar(18) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `sum_sell` double DEFAULT NULL,
  `sum_disc` double DEFAULT NULL,
  `agio` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `payment` varchar(10) DEFAULT NULL,
  `region` varchar(10) DEFAULT NULL,
  `cardid` varchar(16) DEFAULT NULL,
  `barcode` varchar(18) DEFAULT NULL,
  `selltype` int(11) DEFAULT NULL,
  `billtype` int(11) DEFAULT NULL,
  `guest_type` varchar(2) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `nd` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_sell_waste_all202010
-- ----------------------------
DROP TABLE IF EXISTS `tb_sell_waste_all202010`;
CREATE TABLE `tb_sell_waste_all202010` (
  `organ` varchar(4) DEFAULT NULL,
  `selldate` varchar(10) DEFAULT NULL,
  `selltime` varchar(8) DEFAULT NULL,
  `class` varchar(2) DEFAULT NULL,
  `posid` varchar(10) DEFAULT NULL,
  `receid` varchar(10) DEFAULT NULL,
  `receipt` varchar(20) DEFAULT NULL,
  `code` varchar(18) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `sum_sell` double DEFAULT NULL,
  `sum_disc` double DEFAULT NULL,
  `agio` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `payment` varchar(10) DEFAULT NULL,
  `region` varchar(10) DEFAULT NULL,
  `cardid` varchar(16) DEFAULT NULL,
  `barcode` varchar(18) DEFAULT NULL,
  `selltype` int(11) DEFAULT NULL,
  `billtype` int(11) DEFAULT NULL,
  `guest_type` varchar(2) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `nd` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_sell_waste_all202011
-- ----------------------------
DROP TABLE IF EXISTS `tb_sell_waste_all202011`;
CREATE TABLE `tb_sell_waste_all202011` (
  `organ` varchar(4) DEFAULT NULL,
  `selldate` varchar(10) DEFAULT NULL,
  `selltime` varchar(8) DEFAULT NULL,
  `class` varchar(2) DEFAULT NULL,
  `posid` varchar(10) DEFAULT NULL,
  `receid` varchar(10) DEFAULT NULL,
  `receipt` varchar(20) DEFAULT NULL,
  `code` varchar(18) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `sum_sell` double DEFAULT NULL,
  `sum_disc` double DEFAULT NULL,
  `agio` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `payment` varchar(10) DEFAULT NULL,
  `region` varchar(10) DEFAULT NULL,
  `cardid` varchar(16) DEFAULT NULL,
  `barcode` varchar(18) DEFAULT NULL,
  `selltype` int(11) DEFAULT NULL,
  `billtype` int(11) DEFAULT NULL,
  `guest_type` varchar(2) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `nd` varchar(36) DEFAULT NULL,
  KEY `index_1` (`selldate`,`organ`,`receid`,`posid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_sell_waste_all202012
-- ----------------------------
DROP TABLE IF EXISTS `tb_sell_waste_all202012`;
CREATE TABLE `tb_sell_waste_all202012` (
  `organ` varchar(4) DEFAULT NULL,
  `selldate` varchar(225) DEFAULT NULL,
  `selltime` varchar(225) DEFAULT NULL,
  `class` varchar(2) DEFAULT NULL,
  `posid` varchar(10) DEFAULT NULL,
  `receid` varchar(10) DEFAULT NULL,
  `receipt` varchar(20) DEFAULT NULL,
  `code` varchar(18) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `sum_sell` double DEFAULT NULL,
  `sum_disc` double DEFAULT NULL,
  `agio` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `payment` varchar(10) DEFAULT NULL,
  `region` varchar(10) DEFAULT NULL,
  `cardid` varchar(16) DEFAULT NULL,
  `barcode` varchar(18) DEFAULT NULL,
  `selltype` int(11) DEFAULT NULL,
  `billtype` int(11) DEFAULT NULL,
  `guest_type` varchar(2) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `nd` varchar(36) DEFAULT NULL,
  KEY `index_1` (`selldate`,`organ`,`receipt`,`posid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_sell_waste_all202101
-- ----------------------------
DROP TABLE IF EXISTS `tb_sell_waste_all202101`;
CREATE TABLE `tb_sell_waste_all202101` (
  `organ` varchar(4) DEFAULT NULL,
  `selldate` date DEFAULT NULL,
  `selltime` time DEFAULT NULL,
  `class` varchar(2) DEFAULT NULL,
  `posid` varchar(10) DEFAULT NULL,
  `receid` varchar(10) DEFAULT NULL,
  `receipt` varchar(20) DEFAULT NULL,
  `code` varchar(18) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `sum_sell` double DEFAULT NULL,
  `sum_disc` double DEFAULT NULL,
  `agio` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `payment` varchar(10) DEFAULT NULL,
  `region` varchar(10) DEFAULT NULL,
  `cardid` varchar(16) DEFAULT NULL,
  `barcode` varchar(18) DEFAULT NULL,
  `selltype` int(11) DEFAULT NULL,
  `billtype` int(11) DEFAULT NULL,
  `guest_type` varchar(2) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `nd` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_stock_history
-- ----------------------------
DROP TABLE IF EXISTS `tb_stock_history`;
CREATE TABLE `tb_stock_history` (
  `organ` varchar(4) DEFAULT NULL,
  `class` varchar(2) DEFAULT NULL,
  `code` varchar(18) DEFAULT NULL,
  `acceptid` varchar(20) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `sum_cost` double DEFAULT NULL,
  `amou_preout` double DEFAULT NULL,
  `provider` varchar(10) DEFAULT NULL,
  `cost_statu` tinyint(4) DEFAULT NULL,
  `busdate` date DEFAULT NULL,
  `losedate` date DEFAULT NULL,
  `dmno` varchar(20) DEFAULT NULL,
  `organ_out` varchar(4) DEFAULT NULL,
  `moditime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `store` varchar(6) DEFAULT NULL,
  `provider1` varchar(10) DEFAULT NULL,
  `sum_cost1` double DEFAULT NULL,
  `Acctype` varchar(1) DEFAULT NULL,
  `Notaxcost` double DEFAULT NULL,
  `tax` int(11) DEFAULT NULL,
  `warn_date` date DEFAULT NULL,
  `sdate` datetime NOT NULL,
  KEY `sdate` (`sdate`) USING HASH,
  KEY `goodsid+shopid` (`organ`,`code`,`sdate`),
  KEY `sdate+shop` (`organ`,`sdate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for temp1
-- ----------------------------
DROP TABLE IF EXISTS `temp1`;
CREATE TABLE `temp1` (
  `sdate` date DEFAULT NULL,
  `shopid` varchar(8) DEFAULT NULL,
  `shopname` varchar(64) DEFAULT NULL,
  `goodsid` varchar(32) DEFAULT NULL,
  `goodsname` varchar(64) DEFAULT NULL,
  `salevalue` decimal(16,2) DEFAULT NULL,
  `discvalue` decimal(16,2) DEFAULT NULL,
  `qty` decimal(16,3) DEFAULT NULL,
  `disc` int(16) DEFAULT NULL,
  `zlprice` decimal(16,2) DEFAULT NULL,
  `normalprice` decimal(16,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for test_demo
-- ----------------------------
DROP TABLE IF EXISTS `test_demo`;
CREATE TABLE `test_demo` (
  `id` varchar(36) NOT NULL COMMENT '主键',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `name` varchar(200) DEFAULT NULL COMMENT '用户名',
  `sex` varchar(32) DEFAULT NULL COMMENT '性别',
  `age` int(32) DEFAULT NULL COMMENT '年龄',
  `descc` varchar(500) DEFAULT NULL COMMENT '描述',
  `birthday` datetime DEFAULT NULL COMMENT '生日',
  `user_code` varchar(32) DEFAULT NULL COMMENT '用户编码',
  `file_kk` varchar(500) DEFAULT NULL COMMENT '附件',
  `top_pic` varchar(500) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for test_enhance_select
-- ----------------------------
DROP TABLE IF EXISTS `test_enhance_select`;
CREATE TABLE `test_enhance_select` (
  `id` varchar(36) NOT NULL,
  `province` varchar(100) DEFAULT NULL COMMENT '省份',
  `city` varchar(100) DEFAULT NULL COMMENT '市',
  `area` varchar(100) DEFAULT NULL COMMENT '区',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for test_note
-- ----------------------------
DROP TABLE IF EXISTS `test_note`;
CREATE TABLE `test_note` (
  `id` varchar(36) NOT NULL,
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
  `name` varchar(32) DEFAULT NULL COMMENT '用户名',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `sex` varchar(32) DEFAULT NULL COMMENT '性别',
  `birthday` datetime DEFAULT NULL COMMENT '生日',
  `contents` varchar(500) DEFAULT NULL COMMENT '请假原因',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for test_order_main
-- ----------------------------
DROP TABLE IF EXISTS `test_order_main`;
CREATE TABLE `test_order_main` (
  `id` varchar(36) NOT NULL,
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `order_code` varchar(32) DEFAULT NULL COMMENT '订单编码',
  `order_date` datetime DEFAULT NULL COMMENT '下单时间',
  `descc` varchar(100) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for test_order_product
-- ----------------------------
DROP TABLE IF EXISTS `test_order_product`;
CREATE TABLE `test_order_product` (
  `id` varchar(36) NOT NULL COMMENT '主键',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `product_name` varchar(32) DEFAULT NULL COMMENT '产品名字',
  `price` double(32,0) DEFAULT NULL COMMENT '价格',
  `num` int(32) DEFAULT NULL COMMENT '数量',
  `descc` varchar(32) DEFAULT NULL COMMENT '描述',
  `order_fk_id` varchar(32) NOT NULL COMMENT '订单外键ID',
  `pro_type` varchar(32) DEFAULT NULL COMMENT '产品类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for test_person
-- ----------------------------
DROP TABLE IF EXISTS `test_person`;
CREATE TABLE `test_person` (
  `id` varchar(36) NOT NULL,
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sex` varchar(32) DEFAULT NULL COMMENT '性别',
  `name` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext COMMENT '请假原因',
  `be_date` datetime DEFAULT NULL COMMENT '请假时间',
  `qj_days` int(11) DEFAULT NULL COMMENT '请假天数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for test_shoptype_tree
-- ----------------------------
DROP TABLE IF EXISTS `test_shoptype_tree`;
CREATE TABLE `test_shoptype_tree` (
  `id` varchar(36) NOT NULL COMMENT '主键',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
  `type_name` varchar(32) DEFAULT NULL COMMENT '商品分类',
  `pic` varchar(500) DEFAULT NULL COMMENT '分类图片',
  `pid` varchar(32) DEFAULT NULL COMMENT '父级节点',
  `has_child` varchar(3) DEFAULT NULL COMMENT '是否有子节点',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for test_zn_goods
-- ----------------------------
DROP TABLE IF EXISTS `test_zn_goods`;
CREATE TABLE `test_zn_goods` (
  `id` bigint(36) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
  `shopid` varchar(8) DEFAULT NULL COMMENT '门店编码',
  `blid` varchar(32) DEFAULT NULL COMMENT '部类编码',
  `klid` varchar(32) DEFAULT NULL COMMENT '课类编码',
  `xlid` varchar(32) DEFAULT NULL COMMENT '小类编码',
  `xlname` varchar(64) DEFAULT NULL COMMENT '小类名称',
  `goodsid` varchar(32) DEFAULT NULL COMMENT '商品编码',
  `goodsname` varchar(64) DEFAULT NULL COMMENT '商品名称',
  `classtype` varchar(1) DEFAULT NULL COMMENT '补货类型',
  `normalprice` decimal(16,2) DEFAULT NULL COMMENT '定价',
  `minstock` decimal(16,2) DEFAULT NULL COMMENT '最小库存数量',
  `minorder` decimal(16,2) DEFAULT NULL COMMENT '最小起订量',
  `closeqty` decimal(16,3) DEFAULT NULL COMMENT '昨日日终库存数量',
  `qty` decimal(16,3) DEFAULT NULL COMMENT '计算生成的补货数量',
  `manual_qty` decimal(16,3) DEFAULT '0.000' COMMENT '手动输入的补货数量',
  `flag` varchar(1) DEFAULT NULL COMMENT '补货标识',
  `sdate` datetime DEFAULT NULL COMMENT '更新日期时间',
  `holiday_begindate` datetime DEFAULT NULL COMMENT '节日开始日期',
  `seasontype` varchar(1) DEFAULT NULL COMMENT '季节属性',
  `rate1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period1，日均销量的折扣比例',
  `rate2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period2，日均销量的折扣比例',
  `period1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例1',
  `period2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例2',
  `holidaytype` varchar(1) DEFAULT NULL COMMENT '节日属性',
  `holiday_enddate` datetime DEFAULT NULL COMMENT '节日结束日期',
  `rate` varchar(32) DEFAULT NULL COMMENT '季节下降点之后日均销量的折扣比例',
  `aweek` int(10) DEFAULT NULL COMMENT '季节下降点',
  `arrdate` char(5) DEFAULT NULL COMMENT '季节性商品起季是首次到货日期',
  `zs` decimal(16,2) DEFAULT NULL COMMENT '春节指数',
  `ho_rate` decimal(16,2) DEFAULT NULL COMMENT '节日安全系数',
  `ywq_organ` varchar(64) DEFAULT NULL COMMENT '业务区机构编码',
  `shop_organ` varchar(64) DEFAULT NULL COMMENT '门店机构编码',
  `bl_organ` varchar(64) DEFAULT NULL COMMENT '部类机构编码',
  `kl_organ` varchar(64) DEFAULT NULL COMMENT '课类机构编码',
  `bl_organ_all` varchar(64) DEFAULT NULL COMMENT '部类全部机构编码',
  `kl_organ_all` varchar(64) DEFAULT NULL COMMENT '课类全部机构编码',
  `auto_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_1` (`shopid`,`goodsid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for tgoods
-- ----------------------------
DROP TABLE IF EXISTS `tgoods`;
CREATE TABLE `tgoods` (
  `goodsid` varchar(18) DEFAULT NULL,
  UNIQUE KEY `index_1` (`goodsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tmp_blid
-- ----------------------------
DROP TABLE IF EXISTS `tmp_blid`;
CREATE TABLE `tmp_blid` (
  `blcode` varchar(32) CHARACTER SET utf8 NOT NULL COMMENT 'ID',
  `shopcode` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '父机构ID',
  `blname` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '机构/部门名称',
  `depart_order` int(11) DEFAULT '0' COMMENT '排序',
  `org_category` varchar(10) CHARACTER SET utf8 NOT NULL DEFAULT '1' COMMENT '机构类别 1组织机构，2岗位',
  `org_type` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '机构类型 1一级部门 2子部门',
  `org_code` varchar(64) CHARACTER SET utf8 NOT NULL COMMENT '机构编码',
  `cs_code` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '超市机构编码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for tmp_daily_tmp
-- ----------------------------
DROP TABLE IF EXISTS `tmp_daily_tmp`;
CREATE TABLE `tmp_daily_tmp` (
  `xlid` varchar(64) DEFAULT NULL,
  `goodsid` varchar(32) DEFAULT NULL COMMENT '商品编码',
  `shopid` varchar(8) DEFAULT NULL COMMENT '门店编码',
  `normalprice` decimal(16,2) DEFAULT NULL COMMENT '定价',
  `classtype` varchar(1) DEFAULT NULL COMMENT '补货类型',
  `minorder` decimal(16,2) DEFAULT NULL COMMENT '最小起订量',
  `minstock` decimal(16,2) DEFAULT NULL COMMENT '最小库存数量',
  `closeqty` decimal(16,3) DEFAULT NULL COMMENT '昨日日终库存数量',
  `holiday_begindate` datetime DEFAULT NULL COMMENT '节日开始日期',
  `holiday_enddate` datetime DEFAULT NULL COMMENT '节日结束日期',
  `holidaytype` varchar(1) DEFAULT NULL COMMENT '节日属性',
  `zs` decimal(16,2) DEFAULT NULL COMMENT '春节指数',
  `ho_rate` decimal(16,2) DEFAULT NULL COMMENT '节日安全系数',
  `seasontype` varchar(1) DEFAULT NULL COMMENT '季节属性',
  `rate1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period1，日均销量的折扣比例',
  `rate2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period2，日均销量的折扣比例',
  `period1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例1',
  `period2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例2',
  `weekflag` char(1) CHARACTER SET utf8 DEFAULT NULL,
  `startweek` int(1) DEFAULT '0',
  `orderdate` char(8) CHARACTER SET utf8 DEFAULT NULL,
  `safedays` int(11) DEFAULT NULL COMMENT '(zn_config表参数)',
  `arrivaldays` int(11) DEFAULT NULL COMMENT '(zn_config表参数)',
  `sdate` datetime DEFAULT NULL COMMENT '更新日期时间',
  `actual_qty` decimal(16,2) DEFAULT NULL,
  `price` decimal(16,2) DEFAULT NULL,
  `flag` char(1) DEFAULT '0',
  `dms` decimal(16,3) DEFAULT '0.000' COMMENT '实际售价对应的日均销量',
  `prom_dms` decimal(16,3) DEFAULT '0.000' COMMENT '实际售价对应的日均销量',
  `weekflag_days` int(11) DEFAULT '0' COMMENT 'buhuozhouqi',
  `trueprice` decimal(16,2) DEFAULT NULL COMMENT '实际售价',
  `display_flag` varchar(1) DEFAULT '0' COMMENT '0—默认值，1—场外  2—堆头  3—端头',
  `prom_begindate` date DEFAULT NULL,
  `prom_enddate` date DEFAULT NULL,
  `prom_days` int(11) DEFAULT NULL COMMENT '促销天数',
  `prom_alldays` int(11) DEFAULT NULL COMMENT 'orderdays+ Arrivaldays+ safedays',
  `prom_arriavedate` date DEFAULT NULL COMMENT '到货日',
  `orderdays` int(11) DEFAULT NULL COMMENT 'datediff(下一个补货日,当前日期)',
  `now_date` date DEFAULT NULL COMMENT '产生补货的日期',
  `received_date` date DEFAULT NULL COMMENT 'dateadd(now_date,arrivaldays-1)',
  `prom_day1` int(11) DEFAULT '0' COMMENT 'max(min(datediff(enddate, received_date),alldays),0)',
  `prom_day2` int(11) DEFAULT NULL COMMENT 'max(（alldays-促销DMS补货天数)，0）',
  `prom_flag` int(11) DEFAULT NULL COMMENT '促销补货标志位',
  `round_rule` char(1) DEFAULT '0',
  UNIQUE KEY `index_1` (`shopid`,`goodsid`) USING BTREE,
  KEY `index_2` (`goodsid`) USING BTREE,
  KEY `index_3` (`shopid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for tmp_daily_tmp_2
-- ----------------------------
DROP TABLE IF EXISTS `tmp_daily_tmp_2`;
CREATE TABLE `tmp_daily_tmp_2` (
  `planid` varchar(32) DEFAULT NULL COMMENT '促销计划编号',
  `planname` varchar(64) DEFAULT NULL COMMENT '促销计划名称',
  `begindate` datetime DEFAULT NULL COMMENT '促销开始日期时间',
  `enddate` datetime DEFAULT NULL COMMENT '促销结束日期时间',
  `shopid` varchar(8) DEFAULT NULL COMMENT '门店编码',
  `xlid` varchar(32) DEFAULT NULL COMMENT '小类编码',
  `goodsid` varchar(32) DEFAULT NULL COMMENT '商品编码',
  `goodsname` varchar(64) DEFAULT NULL COMMENT '商品名称',
  `price` decimal(16,2) DEFAULT NULL COMMENT '促销售价',
  `planqty` decimal(16,3) DEFAULT NULL COMMENT '采购分货数量',
  `manual_flag` char(1) DEFAULT '0',
  `flag` varchar(1) DEFAULT NULL COMMENT '补货标识',
  `shop_organ` varchar(64) DEFAULT NULL COMMENT '门店机构编码',
  `auto_id` bigint(20) DEFAULT NULL,
  `sdate` date DEFAULT NULL,
  KEY `index_1` (`shopid`,`goodsid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for tmp_daily_tmp_spr
-- ----------------------------
DROP TABLE IF EXISTS `tmp_daily_tmp_spr`;
CREATE TABLE `tmp_daily_tmp_spr` (
  `xlid` varchar(64) DEFAULT NULL,
  `goodsid` varchar(32) DEFAULT NULL COMMENT '商品编码',
  `shopid` varchar(8) DEFAULT NULL COMMENT '门店编码',
  `normalprice` decimal(16,2) DEFAULT NULL COMMENT '定价',
  `classtype` varchar(1) DEFAULT NULL COMMENT '补货类型',
  `minorder` decimal(16,2) DEFAULT NULL COMMENT '最小起订量',
  `minstock` decimal(16,2) DEFAULT NULL COMMENT '最小库存数量',
  `closeqty` decimal(16,3) DEFAULT NULL COMMENT '昨日日终库存数量',
  `holiday_begindate` datetime DEFAULT NULL COMMENT '节日开始日期',
  `holiday_enddate` datetime DEFAULT NULL COMMENT '节日结束日期',
  `holidaytype` varchar(1) DEFAULT NULL COMMENT '节日属性',
  `zs` decimal(16,2) DEFAULT NULL COMMENT '春节指数',
  `ho_rate` decimal(16,2) DEFAULT NULL COMMENT '节日安全系数',
  `seasontype` varchar(1) DEFAULT NULL COMMENT '季节属性',
  `rate1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period1，日均销量的折扣比例',
  `rate2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period2，日均销量的折扣比例',
  `period1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例1',
  `period2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例2',
  `weekflag` char(1) CHARACTER SET utf8 DEFAULT NULL,
  `startweek` int(1) DEFAULT '0',
  `orderdate` char(8) CHARACTER SET utf8 DEFAULT NULL,
  `safedays` int(11) DEFAULT NULL,
  `arrivaldays` int(11) DEFAULT NULL,
  `sdate` datetime DEFAULT NULL COMMENT '更新日期时间',
  `theoritical_qty` decimal(16,2) DEFAULT NULL,
  `actual_qty` decimal(16,2) DEFAULT NULL,
  `price` decimal(16,2) DEFAULT NULL,
  `planqty` decimal(16,3) DEFAULT NULL,
  `flag` char(1) DEFAULT '0',
  `manual_flag` char(1) DEFAULT '0',
  `dms` decimal(16,3) DEFAULT NULL COMMENT '实际售价对应的日均销量',
  `leftsalingDays` int(11) DEFAULT NULL COMMENT '当前剩余可销天数',
  `need_replenishment` int(11) DEFAULT NULL COMMENT '需要补货',
  `weekflag_days` int(11) DEFAULT '0' COMMENT 'buhuozhouqi',
  `trueprice` decimal(16,2) DEFAULT NULL COMMENT '实际售价',
  UNIQUE KEY `index_1` (`goodsid`,`shopid`) USING BTREE,
  KEY `index_2` (`goodsid`) USING BTREE,
  KEY `index_3` (`shopid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for tmp_daily_tmp_spr_2020-01-07_1020
-- ----------------------------
DROP TABLE IF EXISTS `tmp_daily_tmp_spr_2020-01-07_1020`;
CREATE TABLE `tmp_daily_tmp_spr_2020-01-07_1020` (
  `xlid` varchar(64) DEFAULT NULL,
  `goodsid` varchar(32) DEFAULT NULL COMMENT '商品编码',
  `shopid` varchar(8) DEFAULT NULL COMMENT '门店编码',
  `normalprice` decimal(16,2) DEFAULT NULL COMMENT '定价',
  `classtype` varchar(1) DEFAULT NULL COMMENT '补货类型',
  `minorder` decimal(16,2) DEFAULT NULL COMMENT '最小起订量',
  `minstock` decimal(16,2) DEFAULT NULL COMMENT '最小库存数量',
  `closeqty` decimal(16,3) DEFAULT NULL COMMENT '昨日日终库存数量',
  `holiday_begindate` datetime DEFAULT NULL COMMENT '节日开始日期',
  `holiday_enddate` datetime DEFAULT NULL COMMENT '节日结束日期',
  `holidaytype` varchar(1) DEFAULT NULL COMMENT '节日属性',
  `zs` decimal(16,2) DEFAULT NULL COMMENT '春节指数',
  `ho_rate` decimal(16,2) DEFAULT NULL COMMENT '节日安全系数',
  `seasontype` varchar(1) DEFAULT NULL COMMENT '季节属性',
  `rate1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period1，日均销量的折扣比例',
  `rate2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period2，日均销量的折扣比例',
  `period1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例1',
  `period2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例2',
  `weekflag` char(1) CHARACTER SET utf8 DEFAULT NULL,
  `startweek` int(1) DEFAULT '0',
  `orderdate` char(8) CHARACTER SET utf8 DEFAULT NULL,
  `safedays` int(11) DEFAULT NULL,
  `arrivaldays` int(11) DEFAULT NULL,
  `sdate` datetime DEFAULT NULL COMMENT '更新日期时间',
  `theoritical_qty` decimal(16,2) DEFAULT NULL,
  `actual_qty` decimal(16,2) DEFAULT NULL,
  `price` decimal(16,2) DEFAULT NULL,
  `planqty` decimal(16,3) DEFAULT NULL,
  `flag` char(1) DEFAULT '0',
  `manual_flag` char(1) DEFAULT '0',
  `dms` decimal(16,3) DEFAULT NULL COMMENT '实际售价对应的日均销量',
  `leftsalingDays` int(11) DEFAULT NULL COMMENT '当前剩余可销天数',
  `need_replenishment` int(11) DEFAULT NULL COMMENT '需要补货',
  `weekflag_days` int(11) DEFAULT '0' COMMENT 'buhuozhouqi',
  `trueprice` decimal(16,2) DEFAULT NULL COMMENT '实际售价',
  UNIQUE KEY `index_1` (`goodsid`,`shopid`) USING BTREE,
  KEY `index_2` (`goodsid`) USING BTREE,
  KEY `index_3` (`shopid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for tmp_daily_tmp_spr_2020-01-11_1020
-- ----------------------------
DROP TABLE IF EXISTS `tmp_daily_tmp_spr_2020-01-11_1020`;
CREATE TABLE `tmp_daily_tmp_spr_2020-01-11_1020` (
  `xlid` varchar(64) DEFAULT NULL,
  `goodsid` varchar(32) DEFAULT NULL COMMENT '商品编码',
  `shopid` varchar(8) DEFAULT NULL COMMENT '门店编码',
  `normalprice` decimal(16,2) DEFAULT NULL COMMENT '定价',
  `classtype` varchar(1) DEFAULT NULL COMMENT '补货类型',
  `minorder` decimal(16,2) DEFAULT NULL COMMENT '最小起订量',
  `minstock` decimal(16,2) DEFAULT NULL COMMENT '最小库存数量',
  `closeqty` decimal(16,3) DEFAULT NULL COMMENT '昨日日终库存数量',
  `holiday_begindate` datetime DEFAULT NULL COMMENT '节日开始日期',
  `holiday_enddate` datetime DEFAULT NULL COMMENT '节日结束日期',
  `holidaytype` varchar(1) DEFAULT NULL COMMENT '节日属性',
  `zs` decimal(16,2) DEFAULT NULL COMMENT '春节指数',
  `ho_rate` decimal(16,2) DEFAULT NULL COMMENT '节日安全系数',
  `seasontype` varchar(1) DEFAULT NULL COMMENT '季节属性',
  `rate1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period1，日均销量的折扣比例',
  `rate2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period2，日均销量的折扣比例',
  `period1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例1',
  `period2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例2',
  `weekflag` char(1) CHARACTER SET utf8 DEFAULT NULL,
  `startweek` int(1) DEFAULT '0',
  `orderdate` char(8) CHARACTER SET utf8 DEFAULT NULL,
  `safedays` int(11) DEFAULT NULL,
  `arrivaldays` int(11) DEFAULT NULL,
  `sdate` datetime DEFAULT NULL COMMENT '更新日期时间',
  `theoritical_qty` decimal(16,2) DEFAULT NULL,
  `actual_qty` decimal(16,2) DEFAULT NULL,
  `price` decimal(16,2) DEFAULT NULL,
  `planqty` decimal(16,3) DEFAULT NULL,
  `flag` char(1) DEFAULT '0',
  `manual_flag` char(1) DEFAULT '0',
  `dms` decimal(16,3) DEFAULT NULL COMMENT '实际售价对应的日均销量',
  `leftsalingDays` int(11) DEFAULT NULL COMMENT '当前剩余可销天数',
  `need_replenishment` int(11) DEFAULT NULL COMMENT '需要补货',
  `weekflag_days` int(11) DEFAULT '0' COMMENT 'buhuozhouqi',
  `trueprice` decimal(16,2) DEFAULT NULL COMMENT '实际售价',
  UNIQUE KEY `index_1` (`goodsid`,`shopid`) USING BTREE,
  KEY `index_2` (`goodsid`) USING BTREE,
  KEY `index_3` (`shopid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for tmp_daily_tmp_spr_2020-01-14_1020
-- ----------------------------
DROP TABLE IF EXISTS `tmp_daily_tmp_spr_2020-01-14_1020`;
CREATE TABLE `tmp_daily_tmp_spr_2020-01-14_1020` (
  `xlid` varchar(64) DEFAULT NULL,
  `goodsid` varchar(32) DEFAULT NULL COMMENT '商品编码',
  `shopid` varchar(8) DEFAULT NULL COMMENT '门店编码',
  `normalprice` decimal(16,2) DEFAULT NULL COMMENT '定价',
  `classtype` varchar(1) DEFAULT NULL COMMENT '补货类型',
  `minorder` decimal(16,2) DEFAULT NULL COMMENT '最小起订量',
  `minstock` decimal(16,2) DEFAULT NULL COMMENT '最小库存数量',
  `closeqty` decimal(16,3) DEFAULT NULL COMMENT '昨日日终库存数量',
  `holiday_begindate` datetime DEFAULT NULL COMMENT '节日开始日期',
  `holiday_enddate` datetime DEFAULT NULL COMMENT '节日结束日期',
  `holidaytype` varchar(1) DEFAULT NULL COMMENT '节日属性',
  `zs` decimal(16,2) DEFAULT NULL COMMENT '春节指数',
  `ho_rate` decimal(16,2) DEFAULT NULL COMMENT '节日安全系数',
  `seasontype` varchar(1) DEFAULT NULL COMMENT '季节属性',
  `rate1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period1，日均销量的折扣比例',
  `rate2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period2，日均销量的折扣比例',
  `period1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例1',
  `period2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例2',
  `weekflag` char(1) CHARACTER SET utf8 DEFAULT NULL,
  `startweek` int(1) DEFAULT '0',
  `orderdate` char(8) CHARACTER SET utf8 DEFAULT NULL,
  `safedays` int(11) DEFAULT NULL,
  `arrivaldays` int(11) DEFAULT NULL,
  `sdate` datetime DEFAULT NULL COMMENT '更新日期时间',
  `theoritical_qty` decimal(16,2) DEFAULT NULL,
  `actual_qty` decimal(16,2) DEFAULT NULL,
  `price` decimal(16,2) DEFAULT NULL,
  `planqty` decimal(16,3) DEFAULT NULL,
  `flag` char(1) DEFAULT '0',
  `manual_flag` char(1) DEFAULT '0',
  `dms` decimal(16,3) DEFAULT NULL COMMENT '实际售价对应的日均销量',
  `leftsalingDays` int(11) DEFAULT NULL COMMENT '当前剩余可销天数',
  `need_replenishment` int(11) DEFAULT NULL COMMENT '需要补货',
  `weekflag_days` int(11) DEFAULT '0' COMMENT 'buhuozhouqi',
  `trueprice` decimal(16,2) DEFAULT NULL COMMENT '实际售价',
  UNIQUE KEY `index_1` (`goodsid`,`shopid`) USING BTREE,
  KEY `index_2` (`goodsid`) USING BTREE,
  KEY `index_3` (`shopid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for tmp_daily_tmp_spr_2020-01-18_1020
-- ----------------------------
DROP TABLE IF EXISTS `tmp_daily_tmp_spr_2020-01-18_1020`;
CREATE TABLE `tmp_daily_tmp_spr_2020-01-18_1020` (
  `xlid` varchar(64) DEFAULT NULL,
  `goodsid` varchar(32) DEFAULT NULL COMMENT '商品编码',
  `shopid` varchar(8) DEFAULT NULL COMMENT '门店编码',
  `normalprice` decimal(16,2) DEFAULT NULL COMMENT '定价',
  `classtype` varchar(1) DEFAULT NULL COMMENT '补货类型',
  `minorder` decimal(16,2) DEFAULT NULL COMMENT '最小起订量',
  `minstock` decimal(16,2) DEFAULT NULL COMMENT '最小库存数量',
  `closeqty` decimal(16,3) DEFAULT NULL COMMENT '昨日日终库存数量',
  `holiday_begindate` datetime DEFAULT NULL COMMENT '节日开始日期',
  `holiday_enddate` datetime DEFAULT NULL COMMENT '节日结束日期',
  `holidaytype` varchar(1) DEFAULT NULL COMMENT '节日属性',
  `zs` decimal(16,2) DEFAULT NULL COMMENT '春节指数',
  `ho_rate` decimal(16,2) DEFAULT NULL COMMENT '节日安全系数',
  `seasontype` varchar(1) DEFAULT NULL COMMENT '季节属性',
  `rate1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period1，日均销量的折扣比例',
  `rate2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period2，日均销量的折扣比例',
  `period1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例1',
  `period2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例2',
  `weekflag` char(1) CHARACTER SET utf8 DEFAULT NULL,
  `startweek` int(1) DEFAULT '0',
  `orderdate` char(8) CHARACTER SET utf8 DEFAULT NULL,
  `safedays` int(11) DEFAULT NULL,
  `arrivaldays` int(11) DEFAULT NULL,
  `sdate` datetime DEFAULT NULL COMMENT '更新日期时间',
  `theoritical_qty` decimal(16,2) DEFAULT NULL,
  `actual_qty` decimal(16,2) DEFAULT NULL,
  `price` decimal(16,2) DEFAULT NULL,
  `planqty` decimal(16,3) DEFAULT NULL,
  `flag` char(1) DEFAULT '0',
  `manual_flag` char(1) DEFAULT '0',
  `dms` decimal(16,3) DEFAULT NULL COMMENT '实际售价对应的日均销量',
  `leftsalingDays` int(11) DEFAULT NULL COMMENT '当前剩余可销天数',
  `need_replenishment` int(11) DEFAULT NULL COMMENT '需要补货',
  `weekflag_days` int(11) DEFAULT '0' COMMENT 'buhuozhouqi',
  `trueprice` decimal(16,2) DEFAULT NULL COMMENT '实际售价',
  UNIQUE KEY `index_1` (`goodsid`,`shopid`) USING BTREE,
  KEY `index_2` (`goodsid`) USING BTREE,
  KEY `index_3` (`shopid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for tmp_daily_tmp_spr_2020-01-21_1020
-- ----------------------------
DROP TABLE IF EXISTS `tmp_daily_tmp_spr_2020-01-21_1020`;
CREATE TABLE `tmp_daily_tmp_spr_2020-01-21_1020` (
  `xlid` varchar(64) DEFAULT NULL,
  `goodsid` varchar(32) DEFAULT NULL COMMENT '商品编码',
  `shopid` varchar(8) DEFAULT NULL COMMENT '门店编码',
  `normalprice` decimal(16,2) DEFAULT NULL COMMENT '定价',
  `classtype` varchar(1) DEFAULT NULL COMMENT '补货类型',
  `minorder` decimal(16,2) DEFAULT NULL COMMENT '最小起订量',
  `minstock` decimal(16,2) DEFAULT NULL COMMENT '最小库存数量',
  `closeqty` decimal(16,3) DEFAULT NULL COMMENT '昨日日终库存数量',
  `holiday_begindate` datetime DEFAULT NULL COMMENT '节日开始日期',
  `holiday_enddate` datetime DEFAULT NULL COMMENT '节日结束日期',
  `holidaytype` varchar(1) DEFAULT NULL COMMENT '节日属性',
  `zs` decimal(16,2) DEFAULT NULL COMMENT '春节指数',
  `ho_rate` decimal(16,2) DEFAULT NULL COMMENT '节日安全系数',
  `seasontype` varchar(1) DEFAULT NULL COMMENT '季节属性',
  `rate1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period1，日均销量的折扣比例',
  `rate2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period2，日均销量的折扣比例',
  `period1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例1',
  `period2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例2',
  `weekflag` char(1) CHARACTER SET utf8 DEFAULT NULL,
  `startweek` int(1) DEFAULT '0',
  `orderdate` char(8) CHARACTER SET utf8 DEFAULT NULL,
  `safedays` int(11) DEFAULT NULL,
  `arrivaldays` int(11) DEFAULT NULL,
  `sdate` datetime DEFAULT NULL COMMENT '更新日期时间',
  `theoritical_qty` decimal(16,2) DEFAULT NULL,
  `actual_qty` decimal(16,2) DEFAULT NULL,
  `price` decimal(16,2) DEFAULT NULL,
  `planqty` decimal(16,3) DEFAULT NULL,
  `flag` char(1) DEFAULT '0',
  `manual_flag` char(1) DEFAULT '0',
  `dms` decimal(16,3) DEFAULT NULL COMMENT '实际售价对应的日均销量',
  `leftsalingDays` int(11) DEFAULT NULL COMMENT '当前剩余可销天数',
  `need_replenishment` int(11) DEFAULT NULL COMMENT '需要补货',
  `weekflag_days` int(11) DEFAULT '0' COMMENT 'buhuozhouqi',
  `trueprice` decimal(16,2) DEFAULT NULL COMMENT '实际售价',
  UNIQUE KEY `index_1` (`goodsid`,`shopid`) USING BTREE,
  KEY `index_2` (`goodsid`) USING BTREE,
  KEY `index_3` (`shopid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for tmp_daily_tmp_spr_2020-01-25_1020
-- ----------------------------
DROP TABLE IF EXISTS `tmp_daily_tmp_spr_2020-01-25_1020`;
CREATE TABLE `tmp_daily_tmp_spr_2020-01-25_1020` (
  `xlid` varchar(64) DEFAULT NULL,
  `goodsid` varchar(32) DEFAULT NULL COMMENT '商品编码',
  `shopid` varchar(8) DEFAULT NULL COMMENT '门店编码',
  `normalprice` decimal(16,2) DEFAULT NULL COMMENT '定价',
  `classtype` varchar(1) DEFAULT NULL COMMENT '补货类型',
  `minorder` decimal(16,2) DEFAULT NULL COMMENT '最小起订量',
  `minstock` decimal(16,2) DEFAULT NULL COMMENT '最小库存数量',
  `closeqty` decimal(16,3) DEFAULT NULL COMMENT '昨日日终库存数量',
  `holiday_begindate` datetime DEFAULT NULL COMMENT '节日开始日期',
  `holiday_enddate` datetime DEFAULT NULL COMMENT '节日结束日期',
  `holidaytype` varchar(1) DEFAULT NULL COMMENT '节日属性',
  `zs` decimal(16,2) DEFAULT NULL COMMENT '春节指数',
  `ho_rate` decimal(16,2) DEFAULT NULL COMMENT '节日安全系数',
  `seasontype` varchar(1) DEFAULT NULL COMMENT '季节属性',
  `rate1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period1，日均销量的折扣比例',
  `rate2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period2，日均销量的折扣比例',
  `period1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例1',
  `period2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例2',
  `weekflag` char(1) CHARACTER SET utf8 DEFAULT NULL,
  `startweek` int(1) DEFAULT '0',
  `orderdate` char(8) CHARACTER SET utf8 DEFAULT NULL,
  `safedays` int(11) DEFAULT NULL,
  `arrivaldays` int(11) DEFAULT NULL,
  `sdate` datetime DEFAULT NULL COMMENT '更新日期时间',
  `theoritical_qty` decimal(16,2) DEFAULT NULL,
  `actual_qty` decimal(16,2) DEFAULT NULL,
  `price` decimal(16,2) DEFAULT NULL,
  `planqty` decimal(16,3) DEFAULT NULL,
  `flag` char(1) DEFAULT '0',
  `manual_flag` char(1) DEFAULT '0',
  `dms` decimal(16,3) DEFAULT NULL COMMENT '实际售价对应的日均销量',
  `leftsalingDays` int(11) DEFAULT NULL COMMENT '当前剩余可销天数',
  `need_replenishment` int(11) DEFAULT NULL COMMENT '需要补货',
  `weekflag_days` int(11) DEFAULT '0' COMMENT 'buhuozhouqi',
  `trueprice` decimal(16,2) DEFAULT NULL COMMENT '实际售价',
  UNIQUE KEY `index_1` (`goodsid`,`shopid`) USING BTREE,
  KEY `index_2` (`goodsid`) USING BTREE,
  KEY `index_3` (`shopid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for tmp_daily_tmp_spr_2020-01-28_1020
-- ----------------------------
DROP TABLE IF EXISTS `tmp_daily_tmp_spr_2020-01-28_1020`;
CREATE TABLE `tmp_daily_tmp_spr_2020-01-28_1020` (
  `xlid` varchar(64) DEFAULT NULL,
  `goodsid` varchar(32) DEFAULT NULL COMMENT '商品编码',
  `shopid` varchar(8) DEFAULT NULL COMMENT '门店编码',
  `normalprice` decimal(16,2) DEFAULT NULL COMMENT '定价',
  `classtype` varchar(1) DEFAULT NULL COMMENT '补货类型',
  `minorder` decimal(16,2) DEFAULT NULL COMMENT '最小起订量',
  `minstock` decimal(16,2) DEFAULT NULL COMMENT '最小库存数量',
  `closeqty` decimal(16,3) DEFAULT NULL COMMENT '昨日日终库存数量',
  `holiday_begindate` datetime DEFAULT NULL COMMENT '节日开始日期',
  `holiday_enddate` datetime DEFAULT NULL COMMENT '节日结束日期',
  `holidaytype` varchar(1) DEFAULT NULL COMMENT '节日属性',
  `zs` decimal(16,2) DEFAULT NULL COMMENT '春节指数',
  `ho_rate` decimal(16,2) DEFAULT NULL COMMENT '节日安全系数',
  `seasontype` varchar(1) DEFAULT NULL COMMENT '季节属性',
  `rate1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period1，日均销量的折扣比例',
  `rate2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period2，日均销量的折扣比例',
  `period1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例1',
  `period2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例2',
  `weekflag` char(1) CHARACTER SET utf8 DEFAULT NULL,
  `startweek` int(1) DEFAULT '0',
  `orderdate` char(8) CHARACTER SET utf8 DEFAULT NULL,
  `safedays` int(11) DEFAULT NULL,
  `arrivaldays` int(11) DEFAULT NULL,
  `sdate` datetime DEFAULT NULL COMMENT '更新日期时间',
  `theoritical_qty` decimal(16,2) DEFAULT NULL,
  `actual_qty` decimal(16,2) DEFAULT NULL,
  `price` decimal(16,2) DEFAULT NULL,
  `planqty` decimal(16,3) DEFAULT NULL,
  `flag` char(1) DEFAULT '0',
  `manual_flag` char(1) DEFAULT '0',
  `dms` decimal(16,3) DEFAULT NULL COMMENT '实际售价对应的日均销量',
  `leftsalingDays` int(11) DEFAULT NULL COMMENT '当前剩余可销天数',
  `need_replenishment` int(11) DEFAULT NULL COMMENT '需要补货',
  `weekflag_days` int(11) DEFAULT '0' COMMENT 'buhuozhouqi',
  `trueprice` decimal(16,2) DEFAULT NULL COMMENT '实际售价',
  UNIQUE KEY `index_1` (`goodsid`,`shopid`) USING BTREE,
  KEY `index_2` (`goodsid`) USING BTREE,
  KEY `index_3` (`shopid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for tmp_daily_tmp_spr_2020-02-01_1020
-- ----------------------------
DROP TABLE IF EXISTS `tmp_daily_tmp_spr_2020-02-01_1020`;
CREATE TABLE `tmp_daily_tmp_spr_2020-02-01_1020` (
  `xlid` varchar(64) DEFAULT NULL,
  `goodsid` varchar(32) DEFAULT NULL COMMENT '商品编码',
  `shopid` varchar(8) DEFAULT NULL COMMENT '门店编码',
  `normalprice` decimal(16,2) DEFAULT NULL COMMENT '定价',
  `classtype` varchar(1) DEFAULT NULL COMMENT '补货类型',
  `minorder` decimal(16,2) DEFAULT NULL COMMENT '最小起订量',
  `minstock` decimal(16,2) DEFAULT NULL COMMENT '最小库存数量',
  `closeqty` decimal(16,3) DEFAULT NULL COMMENT '昨日日终库存数量',
  `holiday_begindate` datetime DEFAULT NULL COMMENT '节日开始日期',
  `holiday_enddate` datetime DEFAULT NULL COMMENT '节日结束日期',
  `holidaytype` varchar(1) DEFAULT NULL COMMENT '节日属性',
  `zs` decimal(16,2) DEFAULT NULL COMMENT '春节指数',
  `ho_rate` decimal(16,2) DEFAULT NULL COMMENT '节日安全系数',
  `seasontype` varchar(1) DEFAULT NULL COMMENT '季节属性',
  `rate1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period1，日均销量的折扣比例',
  `rate2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period2，日均销量的折扣比例',
  `period1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例1',
  `period2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例2',
  `weekflag` char(1) CHARACTER SET utf8 DEFAULT NULL,
  `startweek` int(1) DEFAULT '0',
  `orderdate` char(8) CHARACTER SET utf8 DEFAULT NULL,
  `safedays` int(11) DEFAULT NULL,
  `arrivaldays` int(11) DEFAULT NULL,
  `sdate` datetime DEFAULT NULL COMMENT '更新日期时间',
  `theoritical_qty` decimal(16,2) DEFAULT NULL,
  `actual_qty` decimal(16,2) DEFAULT NULL,
  `price` decimal(16,2) DEFAULT NULL,
  `planqty` decimal(16,3) DEFAULT NULL,
  `flag` char(1) DEFAULT '0',
  `manual_flag` char(1) DEFAULT '0',
  `dms` decimal(16,3) DEFAULT NULL COMMENT '实际售价对应的日均销量',
  `leftsalingDays` int(11) DEFAULT NULL COMMENT '当前剩余可销天数',
  `need_replenishment` int(11) DEFAULT NULL COMMENT '需要补货',
  `weekflag_days` int(11) DEFAULT '0' COMMENT 'buhuozhouqi',
  `trueprice` decimal(16,2) DEFAULT NULL COMMENT '实际售价',
  UNIQUE KEY `index_1` (`goodsid`,`shopid`) USING BTREE,
  KEY `index_2` (`goodsid`) USING BTREE,
  KEY `index_3` (`shopid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for tmp_everyday_dms_0
-- ----------------------------
DROP TABLE IF EXISTS `tmp_everyday_dms_0`;
CREATE TABLE `tmp_everyday_dms_0` (
  `shopid` varchar(8) DEFAULT NULL,
  `shopname` varchar(64) DEFAULT NULL,
  `goodsid` varchar(32) DEFAULT NULL,
  `goodsname` varchar(64) DEFAULT NULL,
  `salevalue` decimal(16,2) DEFAULT NULL,
  `discvalue` decimal(16,2) DEFAULT NULL,
  `disc` int(16) DEFAULT NULL,
  `zlprice` decimal(16,2) DEFAULT NULL,
  `normalprice` decimal(16,2) DEFAULT NULL,
  `qty` decimal(16,3) DEFAULT NULL,
  `sdate` date DEFAULT NULL,
  `zkb` decimal(16,2) DEFAULT NULL,
  `stock` decimal(16,3) DEFAULT '0.000',
  `weeknum` int(11) DEFAULT NULL,
  `mindate` date DEFAULT NULL,
  KEY `index_1` (`shopid`,`goodsid`,`zkb`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for tmp_everyday_dms_00
-- ----------------------------
DROP TABLE IF EXISTS `tmp_everyday_dms_00`;
CREATE TABLE `tmp_everyday_dms_00` (
  `shopid` varchar(8) DEFAULT NULL,
  `goodsid` varchar(32) DEFAULT NULL,
  `zlprice` decimal(16,2) DEFAULT NULL,
  `qty` decimal(16,3) DEFAULT NULL,
  `zkb` decimal(16,2) DEFAULT NULL,
  KEY `index_1` (`shopid`,`goodsid`,`zkb`) USING BTREE,
  KEY `index_2` (`shopid`,`goodsid`,`zkb`,`zlprice`,`qty`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for tmp_everyday_dms_000
-- ----------------------------
DROP TABLE IF EXISTS `tmp_everyday_dms_000`;
CREATE TABLE `tmp_everyday_dms_000` (
  `shopid` varchar(8) DEFAULT NULL,
  `goodsid` varchar(32) DEFAULT NULL,
  `zlprice` decimal(16,2) DEFAULT NULL,
  `qty` decimal(16,3) DEFAULT NULL,
  `zkb` decimal(16,2) DEFAULT NULL,
  KEY `index_1` (`shopid`,`goodsid`,`zkb`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for tmp_everyday_dms_1
-- ----------------------------
DROP TABLE IF EXISTS `tmp_everyday_dms_1`;
CREATE TABLE `tmp_everyday_dms_1` (
  `shopid` varchar(8) DEFAULT NULL,
  `goodsid` varchar(32) DEFAULT NULL,
  `dms` decimal(42,7) DEFAULT NULL,
  `trueprice` decimal(45,6) DEFAULT NULL,
  `normalprice` decimal(16,2) DEFAULT NULL,
  `zlprice` decimal(16,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tmp_everyday_dms_2
-- ----------------------------
DROP TABLE IF EXISTS `tmp_everyday_dms_2`;
CREATE TABLE `tmp_everyday_dms_2` (
  `shopid` varchar(8) DEFAULT NULL,
  `goodsid` varchar(32) DEFAULT NULL,
  `normalprice` decimal(16,2) DEFAULT NULL,
  UNIQUE KEY `index_1` (`shopid`,`goodsid`,`normalprice`),
  UNIQUE KEY `index_2` (`shopid`,`goodsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tmp_everyday_dms_3
-- ----------------------------
DROP TABLE IF EXISTS `tmp_everyday_dms_3`;
CREATE TABLE `tmp_everyday_dms_3` (
  `shopid` varchar(8) DEFAULT NULL COMMENT '门店编码',
  `shopname` varchar(64) DEFAULT NULL COMMENT '门店名称',
  `xlid` varchar(32) DEFAULT NULL COMMENT '商品类别（小类）',
  `xlname` varchar(64) DEFAULT NULL COMMENT '小类名称',
  `goodsid` varchar(32) DEFAULT NULL COMMENT '商品编码',
  `goodsname` varchar(64) DEFAULT NULL COMMENT '商品名称',
  `normalprice` decimal(16,2) DEFAULT NULL COMMENT '定价',
  `band1` int(16) DEFAULT NULL COMMENT '价格段下限',
  `band2` int(16) DEFAULT NULL COMMENT '价格段上限',
  `disc1` int(11) DEFAULT NULL COMMENT '折扣下限',
  `disc2` int(11) DEFAULT NULL COMMENT '折扣上限',
  `trueprice` decimal(16,2) DEFAULT NULL COMMENT '实际售价',
  `dms` decimal(16,3) DEFAULT NULL COMMENT '实际售价对应的日均销量',
  `sdate` datetime DEFAULT NULL COMMENT '更新或新增日期',
  `display_flag` varchar(1) DEFAULT '0' COMMENT '0—默认值，1—场外  2—堆头  3—端头',
  UNIQUE KEY `index_2` (`shopid`,`goodsid`,`band1`,`display_flag`) USING BTREE,
  KEY `index_1` (`goodsid`) USING BTREE,
  KEY `index_key` (`shopid`,`goodsid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for tmp_everyday_holiday1
-- ----------------------------
DROP TABLE IF EXISTS `tmp_everyday_holiday1`;
CREATE TABLE `tmp_everyday_holiday1` (
  `goodsid` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '商品编码',
  `xlid` varchar(16) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '小类编码',
  KEY `index_1` (`goodsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tmp_everyday_tmp_1
-- ----------------------------
DROP TABLE IF EXISTS `tmp_everyday_tmp_1`;
CREATE TABLE `tmp_everyday_tmp_1` (
  `shopid` varchar(8) DEFAULT NULL,
  `shopname` varchar(64) DEFAULT NULL,
  `goodsid` varchar(32) DEFAULT NULL,
  `goodsname` varchar(64) DEFAULT NULL,
  `salevalue` decimal(16,2) DEFAULT NULL,
  `discvalue` decimal(16,2) DEFAULT NULL,
  `disc` decimal(16,2) DEFAULT NULL,
  `zlprice` decimal(16,2) DEFAULT NULL,
  `normalprice` decimal(16,2) DEFAULT NULL,
  `qty` decimal(16,3) DEFAULT NULL,
  `sdate` date DEFAULT NULL,
  `zkb` decimal(16,2) DEFAULT NULL,
  `dayNumber` int(11) DEFAULT '0',
  `discDayNumber` int(11) DEFAULT '0',
  KEY `index_1` (`shopid`,`goodsid`,`zkb`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for tmp_everyday_tmp_2
-- ----------------------------
DROP TABLE IF EXISTS `tmp_everyday_tmp_2`;
CREATE TABLE `tmp_everyday_tmp_2` (
  `shopid` varchar(8) DEFAULT NULL,
  `shopname` varchar(64) DEFAULT NULL,
  `goodsid` varchar(32) DEFAULT NULL,
  `goodsname` varchar(64) DEFAULT NULL,
  `xlid` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '商品类别（小类）',
  `xlname` varchar(64) DEFAULT NULL COMMENT '小类名称',
  `salevalue` decimal(16,2) DEFAULT NULL,
  `discvalue` decimal(16,2) DEFAULT NULL,
  `disc` decimal(16,2) DEFAULT NULL,
  `normalprice` decimal(16,2) DEFAULT NULL,
  `zlprice` decimal(16,2) DEFAULT NULL,
  `qty` decimal(16,3) DEFAULT NULL,
  `zkb` decimal(16,2) DEFAULT NULL,
  `allDayNumber` int(11) DEFAULT NULL,
  `discDayNumber` int(11) DEFAULT NULL,
  `isnotprom` int(11) DEFAULT '0',
  KEY `index_1` (`shopid`,`goodsid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for tmp_everyday_tmp_2_1
-- ----------------------------
DROP TABLE IF EXISTS `tmp_everyday_tmp_2_1`;
CREATE TABLE `tmp_everyday_tmp_2_1` (
  `shopid` varchar(8) DEFAULT NULL,
  `goodsid` varchar(32) DEFAULT NULL,
  `dayNumberSum` int(11) DEFAULT NULL,
  KEY `index_1` (`shopid`,`goodsid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for tmp_everyday_tmp_3
-- ----------------------------
DROP TABLE IF EXISTS `tmp_everyday_tmp_3`;
CREATE TABLE `tmp_everyday_tmp_3` (
  `planid` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '促销计划编号',
  `planname` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '促销计划名称',
  `enddate` datetime DEFAULT NULL COMMENT '促销结束日期时间',
  `shopid` varchar(8) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '门店编码',
  `shopname` varchar(64) DEFAULT NULL,
  `goodsid` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '商品编码',
  `goodsname` varchar(64) DEFAULT NULL,
  `xlid` varchar(10) DEFAULT NULL,
  `xlname` varchar(30) DEFAULT NULL,
  `price` decimal(16,2) DEFAULT NULL COMMENT '促销售价',
  `planqty` decimal(16,3) DEFAULT NULL COMMENT '采购分货数量',
  `flag` varchar(1) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '补货标识',
  `begindate` datetime DEFAULT NULL COMMENT '促销开始日期时间',
  `sdate` datetime DEFAULT NULL COMMENT '备份日期',
  `totalQty` decimal(16,2) unsigned DEFAULT '0.00' COMMENT '销售数量累计',
  `totalDays` int(11) unsigned DEFAULT '0' COMMENT '销售天数累计',
  `normalprice` double DEFAULT NULL,
  `zkb` decimal(16,2) DEFAULT NULL,
  `display_flag` varchar(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for tmp_everyday_tmp_tmp_1
-- ----------------------------
DROP TABLE IF EXISTS `tmp_everyday_tmp_tmp_1`;
CREATE TABLE `tmp_everyday_tmp_tmp_1` (
  `shopid` varchar(8) DEFAULT NULL,
  `goodsid` varchar(32) DEFAULT NULL,
  `zlprice` decimal(16,2) DEFAULT NULL,
  `normalprice` decimal(16,2) DEFAULT NULL,
  `qty` decimal(16,3) DEFAULT NULL,
  `sdate` date DEFAULT NULL,
  `zkb` decimal(16,2) DEFAULT NULL,
  `dayNumber` int(11) DEFAULT '0',
  `discDayNumber` int(11) DEFAULT '0',
  `isnotprom` int(11) DEFAULT '0',
  KEY `index_1` (`shopid`,`goodsid`,`zkb`) USING BTREE,
  KEY `index_2` (`shopid`,`goodsid`,`zlprice`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for tmp_everyday_tmp_tmp_2
-- ----------------------------
DROP TABLE IF EXISTS `tmp_everyday_tmp_tmp_2`;
CREATE TABLE `tmp_everyday_tmp_tmp_2` (
  `shopid` varchar(8) DEFAULT NULL,
  `goodsid` varchar(32) DEFAULT NULL,
  `zlprice` decimal(16,2) DEFAULT NULL,
  `dayNumber` int(11) NOT NULL DEFAULT '0',
  `qty` decimal(16,3) DEFAULT '0.000',
  KEY `index_1` (`shopid`,`goodsid`,`zlprice`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for tmp_klid
-- ----------------------------
DROP TABLE IF EXISTS `tmp_klid`;
CREATE TABLE `tmp_klid` (
  `klcode` varchar(32) CHARACTER SET utf8 NOT NULL COMMENT 'ID',
  `blcode` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '父机构ID',
  `klname` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '机构/部门名称',
  `depart_order` int(11) DEFAULT '0' COMMENT '排序',
  `org_category` varchar(10) CHARACTER SET utf8 NOT NULL DEFAULT '1' COMMENT '机构类别 1组织机构，2岗位',
  `org_type` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '机构类型 1一级部门 2子部门',
  `org_code` varchar(64) CHARACTER SET utf8 NOT NULL COMMENT '机构编码',
  `cs_code` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '超市机构编码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for tmp_mday
-- ----------------------------
DROP TABLE IF EXISTS `tmp_mday`;
CREATE TABLE `tmp_mday` (
  `shopid` varchar(8) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '门店编码',
  `goodsid` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '商品编码',
  `mday` int(11) unsigned DEFAULT NULL COMMENT '销售天数累计',
  KEY `index_1` (`shopid`,`goodsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tmp_onetime_init
-- ----------------------------
DROP TABLE IF EXISTS `tmp_onetime_init`;
CREATE TABLE `tmp_onetime_init` (
  `shopid` varchar(4) DEFAULT NULL,
  `sdate` varchar(10) DEFAULT NULL,
  `cgid` varchar(2) DEFAULT NULL,
  `posid` varchar(10) DEFAULT NULL,
  `listno` varchar(20) DEFAULT NULL,
  `goodsid` varchar(18) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `salevalue` double DEFAULT NULL,
  `discvalue` double DEFAULT NULL,
  `x` bigint(20) NOT NULL DEFAULT '0',
  `price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tmp_onetime_tmp_1
-- ----------------------------
DROP TABLE IF EXISTS `tmp_onetime_tmp_1`;
CREATE TABLE `tmp_onetime_tmp_1` (
  `shopid` varchar(8) DEFAULT NULL,
  `shopname` varchar(64) DEFAULT NULL,
  `goodsid` varchar(32) DEFAULT NULL,
  `goodsname` varchar(64) DEFAULT NULL,
  `salevalue` decimal(38,2) DEFAULT NULL,
  `discvalue` decimal(38,2) DEFAULT NULL,
  `disc` decimal(44,6) DEFAULT NULL,
  `zlprice` decimal(16,2) DEFAULT NULL,
  `normalprice` decimal(16,2) DEFAULT NULL,
  `qty` decimal(38,3) DEFAULT NULL,
  `sdate` date DEFAULT NULL,
  `zkb` decimal(16,2) DEFAULT NULL,
  `dayNumber` int(11) DEFAULT '0',
  `discDayNumber` int(11) DEFAULT '0',
  KEY `index_1` (`shopid`,`goodsid`,`zkb`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for tmp_onetime_tmp_2
-- ----------------------------
DROP TABLE IF EXISTS `tmp_onetime_tmp_2`;
CREATE TABLE `tmp_onetime_tmp_2` (
  `shopid` varchar(8) DEFAULT NULL,
  `shopname` varchar(64) DEFAULT NULL,
  `goodsid` varchar(32) DEFAULT NULL,
  `goodsname` varchar(64) DEFAULT NULL,
  `salevalue` decimal(60,2) DEFAULT NULL,
  `discvalue` decimal(60,2) DEFAULT NULL,
  `disc` decimal(65,6) DEFAULT NULL,
  `normalprice` decimal(16,2) DEFAULT NULL,
  `zlprice` decimal(16,2) DEFAULT NULL,
  `qty` decimal(60,3) DEFAULT NULL,
  `zkb` decimal(16,2) DEFAULT NULL,
  `allDayNumber` int(11) DEFAULT NULL,
  `discDayNumber` int(11) DEFAULT NULL,
  KEY `index_1` (`shopid`,`goodsid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for tmp_onetime_tmp_2_1
-- ----------------------------
DROP TABLE IF EXISTS `tmp_onetime_tmp_2_1`;
CREATE TABLE `tmp_onetime_tmp_2_1` (
  `shopid` varchar(8) DEFAULT NULL,
  `goodsid` varchar(32) DEFAULT NULL,
  `dayNumberSum` bigint(21) DEFAULT NULL,
  KEY `index_1` (`shopid`,`goodsid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for tmp_prom_tmp
-- ----------------------------
DROP TABLE IF EXISTS `tmp_prom_tmp`;
CREATE TABLE `tmp_prom_tmp` (
  `goodsid` varchar(32) DEFAULT NULL COMMENT '商品编码',
  `shopid` varchar(8) DEFAULT NULL COMMENT '门店编码',
  `normalprice` decimal(16,2) DEFAULT NULL COMMENT '定价',
  `classtype` varchar(1) DEFAULT NULL COMMENT '补货类型',
  `minorder` decimal(16,2) DEFAULT NULL COMMENT '最小起订量',
  `minstock` decimal(16,2) DEFAULT NULL COMMENT '最小库存数量',
  `closeqty` decimal(16,3) DEFAULT NULL COMMENT '昨日日终库存数量',
  `holiday_begindate` datetime DEFAULT NULL COMMENT '节日开始日期',
  `holiday_enddate` datetime DEFAULT NULL COMMENT '节日结束日期',
  `holidaytype` varchar(1) DEFAULT NULL COMMENT '节日属性',
  `zs` decimal(16,2) DEFAULT NULL COMMENT '春节指数',
  `xlid` varchar(32) DEFAULT NULL,
  `ho_rate` decimal(16,2) DEFAULT NULL COMMENT '节日安全系数',
  `seasontype` varchar(1) DEFAULT NULL COMMENT '季节属性',
  `rate1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period1，日均销量的折扣比例',
  `rate2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period2，日均销量的折扣比例',
  `period1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例1',
  `period2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例2',
  `startweek` int(1) DEFAULT '0',
  `weekflag` char(1) CHARACTER SET utf8 DEFAULT NULL,
  `safedays` int(11) DEFAULT NULL,
  `arrivaldays` int(11) DEFAULT NULL,
  `sdate` datetime DEFAULT NULL COMMENT '更新日期时间',
  `actual_qty` decimal(16,2) DEFAULT NULL,
  `price` decimal(16,2) DEFAULT NULL,
  `flag` char(1) DEFAULT '0',
  `dms` decimal(16,3) DEFAULT '0.000' COMMENT '实际售价对应的日均销量',
  `prom_dms` decimal(16,3) DEFAULT '0.000' COMMENT '实际售价对应的日均销量',
  `weekflag_days` int(11) DEFAULT '0' COMMENT 'buhuozhouqi',
  `prom_id` int(11) DEFAULT NULL,
  `display_flag` varchar(1) DEFAULT '0' COMMENT '0—默认值，1—场外  2—堆头  3—端头',
  `prom_begindate` date DEFAULT NULL,
  `prom_enddate` date DEFAULT NULL,
  `prom_days` int(11) DEFAULT NULL COMMENT '促销天数',
  `prom_alldays` int(11) DEFAULT NULL COMMENT 'orderdays+ Arrivaldays+ safedays',
  `prom_arriavedate` date DEFAULT NULL COMMENT '到货日',
  `orderdays` int(11) DEFAULT NULL COMMENT 'datediff(下一个补货日,当前日期)',
  `now_date` date DEFAULT NULL COMMENT '产生补货的日期',
  `received_date` date DEFAULT NULL COMMENT 'dateadd(now_date,arrivaldays-1)',
  `prom_day1` int(11) DEFAULT '0' COMMENT 'max(min(datediff(enddate, received_date),alldays),0)',
  `prom_day2` int(11) DEFAULT NULL COMMENT 'max(（alldays-促销DMS补货天数)，0）',
  `prom_flag` int(11) DEFAULT NULL COMMENT '促销补货标志位',
  `orderdate` varchar(10) DEFAULT NULL,
  `config_flag` char(1) DEFAULT '0',
  `round_rule` char(1) CHARACTER SET utf8 DEFAULT '0',
  KEY `index_1` (`shopid`,`goodsid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for tmp_season_tmp
-- ----------------------------
DROP TABLE IF EXISTS `tmp_season_tmp`;
CREATE TABLE `tmp_season_tmp` (
  `goodsid` varchar(32) DEFAULT NULL COMMENT '商品编码',
  `shopid` varchar(8) DEFAULT NULL COMMENT '门店编码',
  `classtype` varchar(1) DEFAULT NULL COMMENT '补货类型',
  `minorder` decimal(16,2) DEFAULT NULL COMMENT '最小起订量',
  `minstock` decimal(16,2) DEFAULT NULL COMMENT '最小库存数量',
  `closeqty` decimal(16,3) DEFAULT NULL COMMENT '昨日日终库存数量',
  `venderid` varchar(16) DEFAULT NULL COMMENT '供货商id',
  `weekflag` char(1) CHARACTER SET utf8 DEFAULT NULL,
  `safedays` int(11) DEFAULT NULL,
  `arrivaldays` int(11) DEFAULT NULL,
  `sdate` datetime DEFAULT NULL COMMENT '更新日期时间',
  `theoritical_qty` decimal(16,2) DEFAULT NULL,
  `actual_qty` decimal(16,2) DEFAULT NULL,
  `avg_qty_day` decimal(16,2) DEFAULT NULL,
  `config_flag` char(1) DEFAULT '0',
  KEY `index_1` (`goodsid`,`shopid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for tmp_shopid
-- ----------------------------
DROP TABLE IF EXISTS `tmp_shopid`;
CREATE TABLE `tmp_shopid` (
  `shopcode` varchar(32) CHARACTER SET utf8 NOT NULL COMMENT 'ID',
  `ywqcode` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '父机构ID',
  `shopname` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '机构/部门名称',
  `depart_order` int(11) DEFAULT '0' COMMENT '排序',
  `org_category` varchar(10) CHARACTER SET utf8 NOT NULL DEFAULT '1' COMMENT '机构类别 1组织机构，2岗位',
  `org_type` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '机构类型 1一级部门 2子部门',
  `org_code` varchar(64) CHARACTER SET utf8 NOT NULL COMMENT '机构编码',
  `cs_code` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '超市机构编码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for tmp_shop_bl_klid
-- ----------------------------
DROP TABLE IF EXISTS `tmp_shop_bl_klid`;
CREATE TABLE `tmp_shop_bl_klid` (
  `klname` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '机构/部门名称',
  `kl_organ` varchar(64) CHARACTER SET utf8 NOT NULL COMMENT '机构编码',
  `klid` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '超市机构编码',
  `blname` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '机构/部门名称',
  `bl_organ` varchar(64) CHARACTER SET utf8 NOT NULL COMMENT '机构编码',
  `blid` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '超市机构编码',
  `shopname` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '机构/部门名称',
  `shop_organ` varchar(64) CHARACTER SET utf8 NOT NULL COMMENT '机构编码',
  `shopid` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '超市机构编码',
  `bl_organ_all` varchar(64) DEFAULT NULL COMMENT '部类全部机构编码',
  `kl_organ_all` varchar(64) DEFAULT NULL COMMENT '课类全部机构编码',
  KEY `index_0` (`shopid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for tmp_shop_sum
-- ----------------------------
DROP TABLE IF EXISTS `tmp_shop_sum`;
CREATE TABLE `tmp_shop_sum` (
  `id` bigint(36) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
  `shopid` varchar(8) DEFAULT NULL COMMENT '门店',
  `sum_number` decimal(16,2) DEFAULT NULL COMMENT '总数量',
  `sum_price` decimal(16,2) DEFAULT NULL COMMENT '总金额',
  `begindate` date DEFAULT NULL COMMENT '起始时间',
  `enddate` date DEFAULT NULL COMMENT '结束时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tmp_shop_xlid_goodsid_sum
-- ----------------------------
DROP TABLE IF EXISTS `tmp_shop_xlid_goodsid_sum`;
CREATE TABLE `tmp_shop_xlid_goodsid_sum` (
  `id` bigint(36) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
  `shopid` varchar(8) DEFAULT NULL COMMENT '门店',
  `xlid` varchar(32) DEFAULT NULL COMMENT '小类',
  `goodsid` varchar(32) DEFAULT NULL COMMENT '商品',
  `sum_number` decimal(16,2) DEFAULT NULL COMMENT '总数量',
  `sum_price` decimal(16,2) DEFAULT NULL COMMENT '总金额',
  `begindate` varchar(10) DEFAULT NULL COMMENT '起始时间',
  `enddate` varchar(10) DEFAULT NULL COMMENT '结束时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tmp_shop_xlid_sum
-- ----------------------------
DROP TABLE IF EXISTS `tmp_shop_xlid_sum`;
CREATE TABLE `tmp_shop_xlid_sum` (
  `id` bigint(36) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
  `shopid` varchar(8) DEFAULT NULL COMMENT '门店',
  `xlid` varchar(32) DEFAULT NULL COMMENT '小类编码',
  `xlname` varchar(64) DEFAULT NULL COMMENT '小类名称',
  `sum_number` decimal(16,2) DEFAULT NULL COMMENT '总数量',
  `sum_price` decimal(16,2) DEFAULT NULL COMMENT '总金额',
  `begindate` date DEFAULT NULL COMMENT '起始时间',
  `enddate` date DEFAULT NULL COMMENT '结束时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1024 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tmp_test_dms1
-- ----------------------------
DROP TABLE IF EXISTS `tmp_test_dms1`;
CREATE TABLE `tmp_test_dms1` (
  `planid` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '促销计划编号',
  `planname` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '促销计划名称',
  `enddate` datetime DEFAULT NULL COMMENT '促销结束日期时间',
  `shopid` varchar(8) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '门店编码',
  `goodsid` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '商品编码',
  `price` decimal(16,2) DEFAULT NULL COMMENT '促销售价',
  `planqty` decimal(16,3) DEFAULT NULL COMMENT '采购分货数量',
  `flag` varchar(1) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '补货标识',
  `begindate` datetime DEFAULT NULL COMMENT '促销开始日期时间',
  `sdate` datetime DEFAULT NULL COMMENT '备份日期',
  `totalQty` decimal(16,3) unsigned DEFAULT '0.000' COMMENT '销售数量累计',
  `totalDays` int(11) unsigned DEFAULT '0' COMMENT '销售天数累计',
  `display_flag` varchar(1) CHARACTER SET utf8mb4 DEFAULT '0' COMMENT '0—默认值，1—场外  2—堆头  3—端头'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tmp_test_dms2
-- ----------------------------
DROP TABLE IF EXISTS `tmp_test_dms2`;
CREATE TABLE `tmp_test_dms2` (
  `planid` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '促销计划编号',
  `planname` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '促销计划名称',
  `enddate` datetime DEFAULT NULL COMMENT '促销结束日期时间',
  `shopid` varchar(8) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '门店编码',
  `goodsid` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '商品编码',
  `price` decimal(16,2) DEFAULT NULL COMMENT '促销售价',
  `planqty` decimal(16,3) DEFAULT NULL COMMENT '采购分货数量',
  `flag` varchar(1) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '补货标识',
  `begindate` datetime DEFAULT NULL COMMENT '促销开始日期时间',
  `sdate` datetime DEFAULT NULL COMMENT '备份日期',
  `totalQty` decimal(16,3) unsigned DEFAULT '0.000' COMMENT '销售数量累计',
  `totalDays` int(11) unsigned DEFAULT '0' COMMENT '销售天数累计',
  `display_flag` varchar(1) CHARACTER SET utf8mb4 DEFAULT '0' COMMENT '0—默认值，1—场外  2—堆头  3—端头'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tmp_test_dms3
-- ----------------------------
DROP TABLE IF EXISTS `tmp_test_dms3`;
CREATE TABLE `tmp_test_dms3` (
  `planid` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '促销计划编号',
  `planname` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '促销计划名称',
  `enddate` datetime DEFAULT NULL COMMENT '促销结束日期时间',
  `shopid` varchar(8) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '门店编码',
  `goodsid` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '商品编码',
  `price` decimal(16,2) DEFAULT NULL COMMENT '促销售价',
  `planqty` decimal(16,3) DEFAULT NULL COMMENT '采购分货数量',
  `flag` varchar(1) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '补货标识',
  `begindate` datetime DEFAULT NULL COMMENT '促销开始日期时间',
  `sdate` datetime DEFAULT NULL COMMENT '备份日期',
  `totalQty` decimal(16,3) unsigned DEFAULT '0.000' COMMENT '销售数量累计',
  `totalDays` int(11) unsigned DEFAULT '0' COMMENT '销售天数累计',
  `display_flag` varchar(1) CHARACTER SET utf8mb4 DEFAULT '0' COMMENT '0—默认值，1—场外  2—堆头  3—端头'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tmp_test_dms4
-- ----------------------------
DROP TABLE IF EXISTS `tmp_test_dms4`;
CREATE TABLE `tmp_test_dms4` (
  `planid` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '促销计划编号',
  `planname` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '促销计划名称',
  `enddate` datetime DEFAULT NULL COMMENT '促销结束日期时间',
  `shopid` varchar(8) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '门店编码',
  `goodsid` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '商品编码',
  `price` decimal(16,2) DEFAULT NULL COMMENT '促销售价',
  `planqty` decimal(16,3) DEFAULT NULL COMMENT '采购分货数量',
  `flag` varchar(1) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '补货标识',
  `begindate` datetime DEFAULT NULL COMMENT '促销开始日期时间',
  `sdate` datetime DEFAULT NULL COMMENT '备份日期',
  `totalQty` decimal(16,3) unsigned DEFAULT '0.000' COMMENT '销售数量累计',
  `totalDays` int(11) unsigned DEFAULT '0' COMMENT '销售天数累计',
  `display_flag` varchar(1) CHARACTER SET utf8mb4 DEFAULT '0' COMMENT '0—默认值，1—场外  2—堆头  3—端头'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tmp_t_tmp
-- ----------------------------
DROP TABLE IF EXISTS `tmp_t_tmp`;
CREATE TABLE `tmp_t_tmp` (
  `cgid` varchar(16) DEFAULT NULL,
  `xlid` varchar(64) DEFAULT NULL,
  `goodsid` varchar(32) DEFAULT NULL COMMENT '商品编码',
  `goodsname` varchar(64) DEFAULT NULL,
  `shopid` varchar(8) DEFAULT NULL COMMENT '门店编码',
  `normalprice` decimal(16,2) DEFAULT NULL COMMENT '定价',
  `classtype` varchar(1) DEFAULT NULL COMMENT '补货类型',
  `minorder` decimal(16,2) DEFAULT NULL COMMENT '最小起订量',
  `minstock` decimal(16,2) DEFAULT NULL COMMENT '最小库存数量',
  `closeqty` decimal(16,3) DEFAULT '0.000' COMMENT '昨日日终库存数量',
  `holiday_begindate` datetime DEFAULT NULL COMMENT '节日开始日期',
  `holiday_enddate` datetime DEFAULT NULL COMMENT '节日结束日期',
  `holidaytype` varchar(1) DEFAULT NULL COMMENT '节日属性',
  `zs` decimal(16,2) DEFAULT NULL COMMENT '春节指数',
  `ho_rate` decimal(16,2) DEFAULT NULL COMMENT '节日安全系数',
  `seasontype` varchar(1) DEFAULT NULL COMMENT '季节属性',
  `rate1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period1，日均销量的折扣比例',
  `rate2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period2，日均销量的折扣比例',
  `period1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例1',
  `period2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例2',
  `weekflag` char(1) CHARACTER SET utf8 DEFAULT NULL,
  `startweek` int(1) DEFAULT '0',
  `orderdate` char(8) CHARACTER SET utf8 DEFAULT NULL,
  `safedays` int(11) DEFAULT NULL,
  `arrivaldays` int(11) DEFAULT NULL,
  `sdate` datetime DEFAULT NULL COMMENT '更新日期时间',
  `theoritical_qty` decimal(16,2) DEFAULT NULL,
  `actual_qty` decimal(16,2) DEFAULT '0.00',
  `price` decimal(16,2) DEFAULT NULL,
  `planqty` decimal(16,3) DEFAULT NULL,
  `flag` char(1) DEFAULT '0',
  `manual_flag` char(1) DEFAULT '0',
  `dms` decimal(16,3) DEFAULT NULL COMMENT '实际售价对应的日均销量',
  `leftsalingDays` int(11) DEFAULT NULL COMMENT '当前剩余可销天数',
  `need_replenishment` int(11) DEFAULT NULL COMMENT '需要补货',
  `weekflag_days` int(11) DEFAULT '0' COMMENT 'buhuozhouqi',
  `trueprice` decimal(16,2) DEFAULT NULL COMMENT '实际售价',
  `round_rule` char(1) DEFAULT '0',
  `qty1` decimal(16,3) DEFAULT NULL,
  UNIQUE KEY `index_1` (`goodsid`,`shopid`) USING BTREE,
  KEY `index_2` (`goodsid`) USING BTREE,
  KEY `index_3` (`shopid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for tmp_ywqid
-- ----------------------------
DROP TABLE IF EXISTS `tmp_ywqid`;
CREATE TABLE `tmp_ywqid` (
  `ywqcode` varchar(32) CHARACTER SET utf8 NOT NULL COMMENT 'ID',
  `admincode` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '父机构ID',
  `ywqname` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '机构/部门名称',
  `depart_order` int(11) DEFAULT '0' COMMENT '排序',
  `org_category` varchar(10) CHARACTER SET utf8 NOT NULL DEFAULT '1' COMMENT '机构类别 1组织机构，2岗位',
  `org_type` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '机构类型 1一级部门 2子部门',
  `org_code` varchar(64) CHARACTER SET utf8 NOT NULL COMMENT '机构编码',
  `cs_code` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '超市机构编码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for tuangou_data
-- ----------------------------
DROP TABLE IF EXISTS `tuangou_data`;
CREATE TABLE `tuangou_data` (
  `sdate` date DEFAULT NULL,
  `poslist` varchar(225) DEFAULT NULL,
  `shopid` varchar(64) DEFAULT NULL,
  `goodsid` varchar(64) DEFAULT NULL,
  `qty` decimal(16,3) DEFAULT NULL,
  `salevalue` decimal(16,2) DEFAULT NULL,
  `trueprice` decimal(16,2) DEFAULT NULL,
  KEY `index_1` (`sdate`,`shopid`,`goodsid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for v_cg_dl_zl_xl
-- ----------------------------
DROP TABLE IF EXISTS `v_cg_dl_zl_xl`;
CREATE TABLE `v_cg_dl_zl_xl` (
  `cgid` varchar(10) DEFAULT NULL,
  `cgname` varchar(30) DEFAULT NULL,
  `cg` varchar(40) DEFAULT NULL,
  `dlid` varchar(10) DEFAULT NULL,
  `dlname` varchar(30) DEFAULT NULL,
  `dl` varchar(40) DEFAULT NULL,
  `zlid` varchar(10) DEFAULT NULL,
  `zlname` varchar(30) DEFAULT NULL,
  `zl` varchar(40) DEFAULT NULL,
  `xlid` varchar(10) DEFAULT NULL,
  `xlname` varchar(30) DEFAULT NULL,
  `xl` varchar(40) DEFAULT NULL,
  `pdtjflag` int(1) NOT NULL DEFAULT '0',
  `qdhtj` int(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `index_1` (`xlid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for v_demand
-- ----------------------------
DROP TABLE IF EXISTS `v_demand`;
CREATE TABLE `v_demand` (
  `shopid` varchar(16) DEFAULT NULL,
  `goodsid` varchar(32) DEFAULT NULL,
  `classtype` varchar(2) DEFAULT NULL,
  `ndms` decimal(42,7) DEFAULT NULL,
  UNIQUE KEY `1` (`shopid`,`goodsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for v_demand3
-- ----------------------------
DROP TABLE IF EXISTS `v_demand3`;
CREATE TABLE `v_demand3` (
  `shopid` varchar(8) DEFAULT NULL,
  `goodsid` varchar(32) DEFAULT NULL,
  `ndms` decimal(16,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for v_goodsshop
-- ----------------------------
DROP TABLE IF EXISTS `v_goodsshop`;
CREATE TABLE `v_goodsshop` (
  `shopid` varchar(4) DEFAULT NULL,
  `shopname` varchar(64) DEFAULT NULL,
  `goodsid` varchar(18) DEFAULT NULL,
  `goodsname` varchar(64) DEFAULT NULL,
  `venderid` varchar(10) DEFAULT NULL,
  `flag` int(1) DEFAULT NULL,
  `status` varchar(7) DEFAULT NULL,
  `stocktype` int(1) DEFAULT NULL,
  `stocktypename` varchar(4) DEFAULT NULL,
  `logistics` binary(0) DEFAULT NULL,
  `normalprice` double DEFAULT NULL,
  `goodsdate` varchar(27) DEFAULT NULL,
  `Deleted` varchar(1) DEFAULT NULL,
  `isjpg` int(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `index_1` (`shopid`,`goodsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for v_init
-- ----------------------------
DROP TABLE IF EXISTS `v_init`;
CREATE TABLE `v_init` (
  `shopid` varchar(4) DEFAULT NULL,
  `sdate` varchar(10) DEFAULT NULL,
  `cgid` varchar(2) DEFAULT NULL,
  `posid` varchar(10) DEFAULT NULL,
  `listno` varchar(20) DEFAULT NULL,
  `goodsid` varchar(18) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `salevalue` double DEFAULT NULL,
  `discvalue` double DEFAULT NULL,
  `x` bigint(20) NOT NULL DEFAULT '0',
  `price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for v_sale_j_d
-- ----------------------------
DROP TABLE IF EXISTS `v_sale_j_d`;
CREATE TABLE `v_sale_j_d` (
  `shopid` varchar(4) DEFAULT NULL,
  `sdate` varchar(10) DEFAULT NULL,
  `cgid` varchar(2) DEFAULT NULL,
  `posid` varchar(10) DEFAULT NULL,
  `listno` varchar(20) DEFAULT NULL,
  `goodsid` varchar(18) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `salevalue` double DEFAULT NULL,
  `discvalue` double DEFAULT NULL,
  `x` bigint(20) NOT NULL DEFAULT '0',
  `price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for v_sale_j_d_test
-- ----------------------------
DROP TABLE IF EXISTS `v_sale_j_d_test`;
CREATE TABLE `v_sale_j_d_test` (
  `shopid` varchar(4) DEFAULT NULL,
  `sdate` varchar(10) DEFAULT NULL,
  `cgid` varchar(2) DEFAULT NULL,
  `posid` varchar(10) DEFAULT NULL,
  `listno` varchar(20) DEFAULT NULL,
  `goodsid` varchar(18) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `salevalue` double DEFAULT NULL,
  `discvalue` double DEFAULT NULL,
  `x` bigint(20) NOT NULL DEFAULT '0',
  `price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for v_sale_j_m
-- ----------------------------
DROP TABLE IF EXISTS `v_sale_j_m`;
CREATE TABLE `v_sale_j_m` (
  `shopid` varchar(4) DEFAULT NULL,
  `sdate` varchar(10) DEFAULT NULL,
  `cgid` varchar(2) DEFAULT NULL,
  `posid` varchar(10) DEFAULT NULL,
  `listno` varchar(20) DEFAULT NULL,
  `goodsid` varchar(18) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `salevalue` double DEFAULT NULL,
  `discvalue` double DEFAULT NULL,
  `x` bigint(20) NOT NULL DEFAULT '0',
  `price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for v_shopsstock_d
-- ----------------------------
DROP TABLE IF EXISTS `v_shopsstock_d`;
CREATE TABLE `v_shopsstock_d` (
  `shopid` varchar(4) DEFAULT NULL,
  `goodsid` varchar(18) DEFAULT NULL,
  `qty` decimal(16,3) DEFAULT NULL,
  `costvalue` decimal(16,2) DEFAULT NULL,
  KEY `index_1` (`shopid`,`goodsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for v_shopsstock_ll
-- ----------------------------
DROP TABLE IF EXISTS `v_shopsstock_ll`;
CREATE TABLE `v_shopsstock_ll` (
  `shopid` varchar(16) DEFAULT NULL,
  `goodsid` varchar(32) DEFAULT NULL,
  `qty` decimal(16,3) DEFAULT '0.000',
  KEY `index_name` (`shopid`,`goodsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for v_shop_qty
-- ----------------------------
DROP TABLE IF EXISTS `v_shop_qty`;
CREATE TABLE `v_shop_qty` (
  `shopid` varchar(8) DEFAULT NULL,
  `cgid` varchar(8) DEFAULT NULL,
  `goodsid` varchar(32) DEFAULT NULL,
  `qty` decimal(16,3) DEFAULT NULL,
  `salevalue` decimal(16,2) DEFAULT NULL,
  `baifen` decimal(16,8) DEFAULT NULL,
  KEY `idx2` (`shopid`,`goodsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for v_store
-- ----------------------------
DROP TABLE IF EXISTS `v_store`;
CREATE TABLE `v_store` (
  `shopid` varchar(4) DEFAULT NULL,
  `cgid` varchar(2) DEFAULT NULL,
  `venderid` varchar(10) DEFAULT NULL,
  UNIQUE KEY `index_1` (`shopid`,`cgid`,`venderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for v_storeqty
-- ----------------------------
DROP TABLE IF EXISTS `v_storeqty`;
CREATE TABLE `v_storeqty` (
  `goodsid` varchar(18) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  UNIQUE KEY `index_1` (`goodsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for wjy202121
-- ----------------------------
DROP TABLE IF EXISTS `wjy202121`;
CREATE TABLE `wjy202121` (
  `ds` date DEFAULT NULL,
  `y` decimal(16,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for xlhj
-- ----------------------------
DROP TABLE IF EXISTS `xlhj`;
CREATE TABLE `xlhj` (
  `syear` int(11) DEFAULT NULL,
  `sweek` int(11) DEFAULT NULL,
  `deptid` varchar(16) DEFAULT NULL,
  `salevalue` decimal(38,2) DEFAULT NULL,
  `gain` decimal(38,2) DEFAULT NULL,
  `qty` decimal(38,2) DEFAULT NULL,
  `rank_xl` bigint(20) DEFAULT NULL,
  `rank_zl` int(11) DEFAULT NULL,
  `ywqid` varchar(16) DEFAULT NULL,
  `shopnum` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for yc12001
-- ----------------------------
DROP TABLE IF EXISTS `yc12001`;
CREATE TABLE `yc12001` (
  `goodsid` varchar(32) DEFAULT NULL,
  `qty_ll` decimal(16,3) DEFAULT '0.000',
  `classtype` varchar(1) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '补货类型',
  `sdate` date DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zn_calendar
-- ----------------------------
DROP TABLE IF EXISTS `zn_calendar`;
CREATE TABLE `zn_calendar` (
  `id` bigint(36) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
  `sundate` date DEFAULT NULL COMMENT '日期',
  `moondate` varchar(32) DEFAULT NULL COMMENT '阴历日期',
  `week_day` varchar(32) DEFAULT NULL COMMENT '星期',
  `holidayid` varchar(8) DEFAULT NULL COMMENT '节日代码',
  `holidayname` varchar(32) DEFAULT NULL COMMENT '节日名称',
  `startdate` datetime DEFAULT NULL COMMENT '节日启动时间点',
  `enddate` datetime DEFAULT NULL COMMENT '节日结束时间点',
  `auto_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1336139956791308109 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for zn_config
-- ----------------------------
DROP TABLE IF EXISTS `zn_config`;
CREATE TABLE `zn_config` (
  `Shopid` varchar(8) DEFAULT NULL,
  `Classtype` char(1) DEFAULT NULL,
  `Orderdate` char(8) DEFAULT NULL,
  `Weekflag` char(1) DEFAULT NULL,
  `Safedays` int(11) DEFAULT NULL,
  `Arrivaldays` int(11) DEFAULT NULL,
  `Startweek` int(1) DEFAULT '0',
  `round_rule` char(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zn_config1
-- ----------------------------
DROP TABLE IF EXISTS `zn_config1`;
CREATE TABLE `zn_config1` (
  `Shopid` varchar(8) DEFAULT NULL,
  `Classtype` char(1) DEFAULT NULL,
  `Orderdate` char(8) DEFAULT NULL,
  `Weekflag` char(1) DEFAULT NULL,
  `Safedays` int(11) DEFAULT NULL,
  `Arrivaldays` int(11) DEFAULT NULL,
  `Minorderdays` int(8) DEFAULT NULL,
  `Startweek` int(1) DEFAULT '0',
  `cgid` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zn_config_d
-- ----------------------------
DROP TABLE IF EXISTS `zn_config_d`;
CREATE TABLE `zn_config_d` (
  `classtype` char(1) DEFAULT NULL,
  `cgid` varchar(16) DEFAULT NULL,
  `orderdate` varchar(32) DEFAULT NULL,
  `safedays` int(11) DEFAULT NULL,
  `arrivaldays` int(11) DEFAULT NULL,
  `repldays` int(11) DEFAULT NULL,
  `round_rule` char(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zn_config_v
-- ----------------------------
DROP TABLE IF EXISTS `zn_config_v`;
CREATE TABLE `zn_config_v` (
  `Shopid` varchar(8) DEFAULT NULL,
  `venderid` varchar(16) DEFAULT NULL,
  `Classtype` char(1) DEFAULT NULL,
  `Orderdate` char(8) DEFAULT NULL,
  `Weekflag` char(1) DEFAULT NULL,
  `Safedays` int(11) DEFAULT NULL,
  `Arrivaldays` int(11) DEFAULT NULL,
  `Startweek` int(1) DEFAULT '0',
  `round_rule` char(1) DEFAULT '0',
  UNIQUE KEY `index_key` (`Shopid`,`venderid`,`Classtype`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zn_dayly_sales
-- ----------------------------
DROP TABLE IF EXISTS `zn_dayly_sales`;
CREATE TABLE `zn_dayly_sales` (
  `sdate` date DEFAULT NULL,
  `shopid` varchar(8) DEFAULT NULL,
  `shopname` varchar(64) DEFAULT NULL,
  `goodsid` varchar(32) DEFAULT NULL,
  `goodsname` varchar(64) DEFAULT NULL,
  `salevalue` decimal(16,2) DEFAULT NULL,
  `discvalue` decimal(16,2) DEFAULT NULL,
  `qty` decimal(16,3) DEFAULT NULL,
  `disc` int(16) DEFAULT NULL,
  `zlprice` decimal(16,2) DEFAULT NULL,
  `normalprice` decimal(16,2) DEFAULT NULL,
  `stock` decimal(16,3) DEFAULT '0.000',
  KEY `index_1` (`sdate`,`shopid`,`goodsid`) USING BTREE,
  KEY `index_2` (`shopid`,`goodsid`,`zlprice`) USING BTREE,
  KEY `sdate+shopid+stock` (`sdate`,`shopid`,`stock`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zn_dayly_sales_1180
-- ----------------------------
DROP TABLE IF EXISTS `zn_dayly_sales_1180`;
CREATE TABLE `zn_dayly_sales_1180` (
  `sdate` date DEFAULT NULL,
  `shopid` varchar(8) DEFAULT NULL,
  `shopname` varchar(64) DEFAULT NULL,
  `goodsid` varchar(32) DEFAULT NULL,
  `goodsname` varchar(64) DEFAULT NULL,
  `salevalue` decimal(16,2) DEFAULT NULL,
  `discvalue` decimal(16,2) DEFAULT NULL,
  `qty` decimal(16,3) DEFAULT NULL,
  `disc` int(16) DEFAULT NULL,
  `zlprice` decimal(16,2) DEFAULT NULL,
  `normalprice` decimal(16,2) DEFAULT NULL,
  `stock` decimal(16,3) DEFAULT '0.000',
  KEY `index_1` (`sdate`,`shopid`,`goodsid`) USING BTREE,
  KEY `index_2` (`shopid`,`goodsid`,`zlprice`) USING BTREE,
  KEY `sdate+shopid+stock` (`sdate`,`shopid`,`stock`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zn_dayly_sales_by
-- ----------------------------
DROP TABLE IF EXISTS `zn_dayly_sales_by`;
CREATE TABLE `zn_dayly_sales_by` (
  `sdate` date DEFAULT NULL,
  `shopid` varchar(8) DEFAULT NULL,
  `shopname` varchar(64) DEFAULT NULL,
  `goodsid` varchar(32) DEFAULT NULL,
  `goodsname` varchar(64) DEFAULT NULL,
  `salevalue` decimal(16,2) DEFAULT NULL,
  `discvalue` decimal(16,2) DEFAULT NULL,
  `qty` decimal(16,3) DEFAULT NULL,
  `disc` decimal(16,2) DEFAULT NULL,
  `zlprice` decimal(16,2) DEFAULT NULL,
  `normalprice` decimal(16,2) DEFAULT NULL,
  KEY `index_1` (`sdate`,`shopid`,`goodsid`) USING BTREE,
  KEY `index_2` (`shopid`,`goodsid`,`zlprice`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zn_dayly_sales_sx
-- ----------------------------
DROP TABLE IF EXISTS `zn_dayly_sales_sx`;
CREATE TABLE `zn_dayly_sales_sx` (
  `sdate` date DEFAULT NULL,
  `shopid` varchar(8) DEFAULT NULL,
  `shopname` varchar(64) DEFAULT NULL,
  `goodsid` varchar(32) DEFAULT NULL,
  `goodsname` varchar(64) DEFAULT NULL,
  `salevalue` decimal(16,2) DEFAULT NULL,
  `discvalue` decimal(16,2) DEFAULT NULL,
  `qty` decimal(16,3) DEFAULT NULL,
  `disc` decimal(16,2) DEFAULT NULL,
  `zlprice` decimal(16,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zn_disc_line
-- ----------------------------
DROP TABLE IF EXISTS `zn_disc_line`;
CREATE TABLE `zn_disc_line` (
  `level` varchar(1) DEFAULT NULL COMMENT '商品分类的级别',
  `lbid` varchar(16) DEFAULT NULL COMMENT '部类或采购线id',
  `disc_line` decimal(16,2) DEFAULT NULL COMMENT '折扣线'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for zn_dms_week
-- ----------------------------
DROP TABLE IF EXISTS `zn_dms_week`;
CREATE TABLE `zn_dms_week` (
  `cgid` varchar(10) DEFAULT NULL,
  `weeknum` int(11) DEFAULT NULL,
  UNIQUE KEY `index_1` (`cgid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zn_goods
-- ----------------------------
DROP TABLE IF EXISTS `zn_goods`;
CREATE TABLE `zn_goods` (
  `id` bigint(36) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
  `shopid` varchar(8) DEFAULT NULL COMMENT '门店编码',
  `shopname` varchar(64) DEFAULT NULL,
  `blid` varchar(32) DEFAULT NULL COMMENT '部类编码',
  `cgid` varchar(32) DEFAULT NULL,
  `xlid` varchar(32) DEFAULT NULL COMMENT '小类编码',
  `xlname` varchar(64) DEFAULT NULL COMMENT '小类名称',
  `goodsid` varchar(32) DEFAULT NULL COMMENT '商品编码',
  `goodsname` varchar(64) DEFAULT NULL COMMENT '商品名称',
  `venderid` varchar(16) DEFAULT NULL,
  `vendername` varchar(64) DEFAULT NULL,
  `send_type` int(11) DEFAULT NULL,
  `classtype` varchar(1) DEFAULT NULL COMMENT '补货类型',
  `normalprice` decimal(16,2) DEFAULT NULL COMMENT '定价',
  `spec` varchar(40) DEFAULT NULL,
  `minstock` decimal(16,2) DEFAULT '0.00' COMMENT '最小库存数量',
  `minorder` decimal(16,2) DEFAULT '1.00' COMMENT '最小起订量',
  `closeqty` decimal(16,3) DEFAULT '0.000' COMMENT '昨日日终库存数量',
  `qty` decimal(16,3) DEFAULT '0.000' COMMENT '计算生成的补货数量',
  `manual_qty` decimal(16,3) DEFAULT '0.000' COMMENT '手动输入的补货数量',
  `flag` varchar(8) DEFAULT NULL COMMENT '补货标识',
  `sdate` datetime DEFAULT NULL COMMENT '更新日期时间',
  `holiday_begindate` datetime DEFAULT NULL COMMENT '节日开始日期',
  `seasontype` varchar(1) DEFAULT NULL COMMENT '季节属性',
  `rate1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period1，日均销量的折扣比例',
  `rate2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period2，日均销量的折扣比例',
  `period1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例1',
  `period2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例2',
  `holidaytype` varchar(1) DEFAULT NULL COMMENT '节日属性',
  `holiday_enddate` datetime DEFAULT NULL COMMENT '节日结束日期',
  `rate` varchar(32) DEFAULT NULL COMMENT '季节下降点之后日均销量的折扣比例',
  `zs` decimal(16,2) DEFAULT '1.00' COMMENT '春节指数',
  `ho_rate` decimal(16,2) DEFAULT '1.00' COMMENT '节日安全系数',
  `ywq_organ` varchar(64) DEFAULT NULL COMMENT '业务区机构编码',
  `shop_organ` varchar(64) DEFAULT NULL COMMENT '门店机构编码',
  `bl_organ` varchar(64) DEFAULT NULL COMMENT '部类机构编码',
  `kl_organ` varchar(64) DEFAULT NULL COMMENT '课类机构编码',
  `bl_organ_all` varchar(64) DEFAULT NULL COMMENT '部类全部机构编码',
  `kl_organ_all` varchar(64) DEFAULT NULL COMMENT '课类全部机构编码',
  `auto_id` bigint(20) DEFAULT NULL,
  `trueprice` decimal(16,2) DEFAULT NULL,
  `display_flag` varchar(1) DEFAULT '0' COMMENT '0—默认值，1—场外  2—堆头  3—端头',
  `storeqty` decimal(16,3) DEFAULT NULL,
  `config_flag` char(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_1` (`shopid`,`goodsid`) USING BTREE,
  KEY `sdate` (`sdate`),
  KEY `index_2` (`xlid`) USING BTREE,
  KEY `index_3` (`venderid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=32768 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for zn_goods_copy
-- ----------------------------
DROP TABLE IF EXISTS `zn_goods_copy`;
CREATE TABLE `zn_goods_copy` (
  `id` bigint(36) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
  `shopid` varchar(8) DEFAULT NULL COMMENT '门店编码',
  `shopname` varchar(64) DEFAULT NULL,
  `blid` varchar(32) DEFAULT NULL COMMENT '部类编码',
  `cgid` varchar(32) DEFAULT NULL,
  `xlid` varchar(32) DEFAULT NULL COMMENT '小类编码',
  `xlname` varchar(64) DEFAULT NULL COMMENT '小类名称',
  `goodsid` varchar(32) DEFAULT NULL COMMENT '商品编码',
  `goodsname` varchar(64) DEFAULT NULL COMMENT '商品名称',
  `venderid` varchar(16) DEFAULT NULL,
  `vendername` varchar(64) DEFAULT NULL,
  `send_type` int(11) DEFAULT NULL,
  `classtype` varchar(1) DEFAULT NULL COMMENT '补货类型',
  `normalprice` decimal(16,2) DEFAULT NULL COMMENT '定价',
  `spec` varchar(40) DEFAULT NULL,
  `minstock` decimal(16,2) DEFAULT '0.00' COMMENT '最小库存数量',
  `minorder` decimal(16,2) DEFAULT '1.00' COMMENT '最小起订量',
  `closeqty` decimal(16,3) DEFAULT '0.000' COMMENT '昨日日终库存数量',
  `qty` decimal(16,3) DEFAULT '0.000' COMMENT '计算生成的补货数量',
  `manual_qty` decimal(16,3) DEFAULT '0.000' COMMENT '手动输入的补货数量',
  `flag` varchar(8) DEFAULT NULL COMMENT '补货标识',
  `sdate` datetime DEFAULT NULL COMMENT '更新日期时间',
  `holiday_begindate` datetime DEFAULT NULL COMMENT '节日开始日期',
  `seasontype` varchar(1) DEFAULT NULL COMMENT '季节属性',
  `rate1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period1，日均销量的折扣比例',
  `rate2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period2，日均销量的折扣比例',
  `period1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例1',
  `period2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例2',
  `holidaytype` varchar(1) DEFAULT NULL COMMENT '节日属性',
  `holiday_enddate` datetime DEFAULT NULL COMMENT '节日结束日期',
  `rate` varchar(32) DEFAULT NULL COMMENT '季节下降点之后日均销量的折扣比例',
  `zs` decimal(16,2) DEFAULT NULL COMMENT '春节指数',
  `ho_rate` decimal(16,2) DEFAULT NULL COMMENT '节日安全系数',
  `ywq_organ` varchar(64) DEFAULT NULL COMMENT '业务区机构编码',
  `shop_organ` varchar(64) DEFAULT NULL COMMENT '门店机构编码',
  `bl_organ` varchar(64) DEFAULT NULL COMMENT '部类机构编码',
  `kl_organ` varchar(64) DEFAULT NULL COMMENT '课类机构编码',
  `bl_organ_all` varchar(64) DEFAULT NULL COMMENT '部类全部机构编码',
  `kl_organ_all` varchar(64) DEFAULT NULL COMMENT '课类全部机构编码',
  `auto_id` bigint(20) DEFAULT NULL,
  `trueprice` decimal(16,2) DEFAULT NULL,
  `display_flag` varchar(1) DEFAULT '0' COMMENT '0—默认值，1—场外  2—堆头  3—端头',
  `storeqty` decimal(16,3) DEFAULT NULL,
  `config_flag` char(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_1` (`shopid`,`goodsid`) USING BTREE,
  KEY `sdate` (`sdate`),
  KEY `index_2` (`xlid`) USING BTREE,
  KEY `index_3` (`venderid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=98302 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for zn_goods_copy_2021-1-13
-- ----------------------------
DROP TABLE IF EXISTS `zn_goods_copy_2021-1-13`;
CREATE TABLE `zn_goods_copy_2021-1-13` (
  `id` bigint(36) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
  `shopid` varchar(8) DEFAULT NULL COMMENT '门店编码',
  `shopname` varchar(64) DEFAULT NULL,
  `blid` varchar(32) DEFAULT NULL COMMENT '部类编码',
  `cgid` varchar(32) DEFAULT NULL,
  `xlid` varchar(32) DEFAULT NULL COMMENT '小类编码',
  `xlname` varchar(64) DEFAULT NULL COMMENT '小类名称',
  `goodsid` varchar(32) DEFAULT NULL COMMENT '商品编码',
  `goodsname` varchar(64) DEFAULT NULL COMMENT '商品名称',
  `venderid` varchar(16) DEFAULT NULL,
  `vendername` varchar(64) DEFAULT NULL,
  `send_type` int(11) DEFAULT NULL,
  `classtype` varchar(1) DEFAULT NULL COMMENT '补货类型',
  `normalprice` decimal(16,2) DEFAULT NULL COMMENT '定价',
  `spec` varchar(40) DEFAULT NULL,
  `minstock` decimal(16,2) DEFAULT NULL COMMENT '最小库存数量',
  `minorder` decimal(16,2) DEFAULT NULL COMMENT '最小起订量',
  `closeqty` decimal(16,3) DEFAULT '0.000' COMMENT '昨日日终库存数量',
  `qty` decimal(16,3) DEFAULT '0.000' COMMENT '计算生成的补货数量',
  `manual_qty` decimal(16,3) DEFAULT '0.000' COMMENT '手动输入的补货数量',
  `flag` varchar(8) DEFAULT NULL COMMENT '补货标识',
  `sdate` datetime DEFAULT NULL COMMENT '更新日期时间',
  `holiday_begindate` datetime DEFAULT NULL COMMENT '节日开始日期',
  `seasontype` varchar(1) DEFAULT NULL COMMENT '季节属性',
  `rate1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period1，日均销量的折扣比例',
  `rate2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period2，日均销量的折扣比例',
  `period1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例1',
  `period2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例2',
  `holidaytype` varchar(1) DEFAULT NULL COMMENT '节日属性',
  `holiday_enddate` datetime DEFAULT NULL COMMENT '节日结束日期',
  `rate` varchar(32) DEFAULT NULL COMMENT '季节下降点之后日均销量的折扣比例',
  `zs` decimal(16,2) DEFAULT NULL COMMENT '春节指数',
  `ho_rate` decimal(16,2) DEFAULT NULL COMMENT '节日安全系数',
  `ywq_organ` varchar(64) DEFAULT NULL COMMENT '业务区机构编码',
  `shop_organ` varchar(64) DEFAULT NULL COMMENT '门店机构编码',
  `bl_organ` varchar(64) DEFAULT NULL COMMENT '部类机构编码',
  `kl_organ` varchar(64) DEFAULT NULL COMMENT '课类机构编码',
  `bl_organ_all` varchar(64) DEFAULT NULL COMMENT '部类全部机构编码',
  `kl_organ_all` varchar(64) DEFAULT NULL COMMENT '课类全部机构编码',
  `auto_id` bigint(20) DEFAULT NULL,
  `trueprice` decimal(16,2) DEFAULT NULL,
  `display_flag` varchar(1) DEFAULT '0' COMMENT '0—默认值，1—场外  2—堆头  3—端头',
  PRIMARY KEY (`id`),
  KEY `index_1` (`shopid`,`goodsid`) USING BTREE,
  KEY `sdate` (`sdate`),
  KEY `index_2` (`xlid`) USING BTREE,
  KEY `index_3` (`venderid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=81918 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for zn_goods_copy_2021-1-14
-- ----------------------------
DROP TABLE IF EXISTS `zn_goods_copy_2021-1-14`;
CREATE TABLE `zn_goods_copy_2021-1-14` (
  `id` bigint(36) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
  `shopid` varchar(8) DEFAULT NULL COMMENT '门店编码',
  `shopname` varchar(64) DEFAULT NULL,
  `blid` varchar(32) DEFAULT NULL COMMENT '部类编码',
  `cgid` varchar(32) DEFAULT NULL,
  `xlid` varchar(32) DEFAULT NULL COMMENT '小类编码',
  `xlname` varchar(64) DEFAULT NULL COMMENT '小类名称',
  `goodsid` varchar(32) DEFAULT NULL COMMENT '商品编码',
  `goodsname` varchar(64) DEFAULT NULL COMMENT '商品名称',
  `venderid` varchar(16) DEFAULT NULL,
  `vendername` varchar(64) DEFAULT NULL,
  `send_type` int(11) DEFAULT NULL,
  `classtype` varchar(1) DEFAULT NULL COMMENT '补货类型',
  `normalprice` decimal(16,2) DEFAULT NULL COMMENT '定价',
  `spec` varchar(40) DEFAULT NULL,
  `minstock` decimal(16,2) DEFAULT NULL COMMENT '最小库存数量',
  `minorder` decimal(16,2) DEFAULT NULL COMMENT '最小起订量',
  `closeqty` decimal(16,3) DEFAULT '0.000' COMMENT '昨日日终库存数量',
  `qty` decimal(16,3) DEFAULT '0.000' COMMENT '计算生成的补货数量',
  `manual_qty` decimal(16,3) DEFAULT '0.000' COMMENT '手动输入的补货数量',
  `flag` varchar(8) DEFAULT NULL COMMENT '补货标识',
  `sdate` datetime DEFAULT NULL COMMENT '更新日期时间',
  `holiday_begindate` datetime DEFAULT NULL COMMENT '节日开始日期',
  `seasontype` varchar(1) DEFAULT NULL COMMENT '季节属性',
  `rate1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period1，日均销量的折扣比例',
  `rate2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period2，日均销量的折扣比例',
  `period1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例1',
  `period2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例2',
  `holidaytype` varchar(1) DEFAULT NULL COMMENT '节日属性',
  `holiday_enddate` datetime DEFAULT NULL COMMENT '节日结束日期',
  `rate` varchar(32) DEFAULT NULL COMMENT '季节下降点之后日均销量的折扣比例',
  `zs` decimal(16,2) DEFAULT NULL COMMENT '春节指数',
  `ho_rate` decimal(16,2) DEFAULT NULL COMMENT '节日安全系数',
  `ywq_organ` varchar(64) DEFAULT NULL COMMENT '业务区机构编码',
  `shop_organ` varchar(64) DEFAULT NULL COMMENT '门店机构编码',
  `bl_organ` varchar(64) DEFAULT NULL COMMENT '部类机构编码',
  `kl_organ` varchar(64) DEFAULT NULL COMMENT '课类机构编码',
  `bl_organ_all` varchar(64) DEFAULT NULL COMMENT '部类全部机构编码',
  `kl_organ_all` varchar(64) DEFAULT NULL COMMENT '课类全部机构编码',
  `auto_id` bigint(20) DEFAULT NULL,
  `trueprice` decimal(16,2) DEFAULT NULL,
  `display_flag` varchar(1) DEFAULT '0' COMMENT '0—默认值，1—场外  2—堆头  3—端头',
  PRIMARY KEY (`id`),
  KEY `index_1` (`shopid`,`goodsid`) USING BTREE,
  KEY `sdate` (`sdate`),
  KEY `index_2` (`xlid`) USING BTREE,
  KEY `index_3` (`venderid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=65535 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for zn_goods_his
-- ----------------------------
DROP TABLE IF EXISTS `zn_goods_his`;
CREATE TABLE `zn_goods_his` (
  `shopid` varchar(8) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '门店编码',
  `blid` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '部类编码',
  `cgid` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '课类编码',
  `xlid` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '小类编码',
  `goodsid` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '商品编码',
  `goodsname` varchar(64) DEFAULT NULL,
  `venderid` varchar(16) DEFAULT NULL,
  `vendername` varchar(64) DEFAULT NULL,
  `send_type` int(11) DEFAULT NULL,
  `classtype` varchar(1) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '补货类型',
  `normalprice` decimal(16,2) DEFAULT NULL COMMENT '定价',
  `spec` varchar(40) DEFAULT NULL,
  `minstock` decimal(16,2) DEFAULT NULL COMMENT '最小库存数量',
  `minorder` decimal(16,2) DEFAULT NULL COMMENT '最小起订量',
  `closeqty` decimal(16,3) DEFAULT NULL COMMENT '昨日日终库存数量',
  `qty` decimal(16,3) DEFAULT NULL COMMENT '计算生成的补货数量',
  `flag` varchar(8) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '补货标识',
  `ywq_organ` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '业务区机构编码',
  `shop_organ` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '门店机构编码',
  `bl_organ` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '部类机构编码',
  `kl_organ` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '课类机构编码',
  `bl_organ_all` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '部类全部机构编码',
  `kl_organ_all` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '课类全部机构编码',
  `sdate` datetime DEFAULT NULL COMMENT '更新日期时间',
  `holiday_begindate` datetime DEFAULT NULL COMMENT '节日开始日期',
  `seasontype` varchar(1) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '季节属性',
  `holidaytype` varchar(1) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '节日属性',
  `holiday_enddate` datetime DEFAULT NULL COMMENT '节日结束日期',
  `rate` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '季节下降点之后日均销量的折扣比例',
  `zs` decimal(16,2) DEFAULT NULL COMMENT '春节指数',
  `ho_rate` decimal(16,2) DEFAULT NULL COMMENT '节日安全系数',
  `manual_qty` decimal(16,3) DEFAULT '0.000' COMMENT '手动输入的补货数量',
  `trueprice` decimal(16,2) DEFAULT NULL,
  `display_flag` varchar(1) CHARACTER SET utf8mb4 DEFAULT '0' COMMENT '0—默认值，1—场外  2—堆头  3—端头',
  `storeqty` decimal(16,3) DEFAULT NULL,
  KEY `index_1` (`sdate`) USING BTREE,
  KEY `index_2` (`shopid`) USING BTREE,
  KEY `index_3` (`xlid`) USING BTREE,
  KEY `goodsid` (`goodsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zn_goods_his_copy
-- ----------------------------
DROP TABLE IF EXISTS `zn_goods_his_copy`;
CREATE TABLE `zn_goods_his_copy` (
  `shopid` varchar(8) DEFAULT NULL COMMENT '门店编码',
  `blid` varchar(32) DEFAULT NULL COMMENT '部类编码',
  `cgid` varchar(32) DEFAULT NULL COMMENT '课类编码',
  `xlid` varchar(32) DEFAULT NULL COMMENT '小类编码',
  `goodsid` varchar(32) DEFAULT NULL COMMENT '商品编码',
  `classtype` varchar(1) DEFAULT NULL COMMENT '补货类型',
  `normalprice` decimal(16,2) DEFAULT NULL COMMENT '定价',
  `minstock` decimal(16,2) DEFAULT NULL COMMENT '最小库存数量',
  `minorder` decimal(16,2) DEFAULT NULL COMMENT '最小起订量',
  `closeqty` decimal(16,3) DEFAULT NULL COMMENT '昨日日终库存数量',
  `qty` decimal(16,3) DEFAULT NULL COMMENT '计算生成的补货数量',
  `flag` varchar(8) DEFAULT NULL COMMENT '补货标识',
  `ywq_organ` varchar(64) DEFAULT NULL COMMENT '业务区机构编码',
  `shop_organ` varchar(64) DEFAULT NULL COMMENT '门店机构编码',
  `bl_organ` varchar(64) DEFAULT NULL COMMENT '部类机构编码',
  `kl_organ` varchar(64) DEFAULT NULL COMMENT '课类机构编码',
  `bl_organ_all` varchar(64) DEFAULT NULL COMMENT '部类全部机构编码',
  `kl_organ_all` varchar(64) DEFAULT NULL COMMENT '课类全部机构编码',
  `sdate` datetime DEFAULT NULL COMMENT '更新日期时间',
  `holiday_begindate` datetime DEFAULT NULL COMMENT '节日开始日期',
  `seasontype` varchar(1) DEFAULT NULL COMMENT '季节属性',
  `holidaytype` varchar(1) DEFAULT NULL COMMENT '节日属性',
  `holiday_enddate` datetime DEFAULT NULL COMMENT '节日结束日期',
  `rate` varchar(32) DEFAULT NULL COMMENT '季节下降点之后日均销量的折扣比例',
  `aweek` int(10) DEFAULT NULL COMMENT '季节下降点',
  `arrdate` char(5) DEFAULT NULL COMMENT '季节性商品起季是首次到货日期',
  `zs` decimal(16,2) DEFAULT NULL COMMENT '春节指数',
  `ho_rate` decimal(16,2) DEFAULT NULL COMMENT '节日安全系数',
  `manual_qty` decimal(16,3) DEFAULT '0.000' COMMENT '手动输入的补货数量',
  `trueprice` decimal(16,2) DEFAULT NULL,
  KEY `index_1` (`sdate`) USING BTREE,
  KEY `index_3` (`shopid`),
  KEY `index_4` (`xlid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for zn_goods_his_man
-- ----------------------------
DROP TABLE IF EXISTS `zn_goods_his_man`;
CREATE TABLE `zn_goods_his_man` (
  `shopid` varchar(8) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '门店编码',
  `blid` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '部类编码',
  `cgid` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '课类编码',
  `xlid` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '小类编码',
  `goodsid` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '商品编码',
  `goodsname` varchar(64) DEFAULT NULL,
  `venderid` varchar(16) DEFAULT NULL,
  `vendername` varchar(64) DEFAULT NULL,
  `send_type` int(11) DEFAULT NULL,
  `classtype` varchar(1) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '补货类型',
  `normalprice` decimal(16,2) DEFAULT NULL COMMENT '定价',
  `spec` varchar(40) DEFAULT NULL,
  `minstock` decimal(16,2) DEFAULT NULL COMMENT '最小库存数量',
  `minorder` decimal(16,2) DEFAULT NULL COMMENT '最小起订量',
  `closeqty` decimal(16,3) DEFAULT NULL COMMENT '昨日日终库存数量',
  `qty` decimal(16,3) DEFAULT NULL COMMENT '计算生成的补货数量',
  `flag` varchar(8) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '补货标识',
  `ywq_organ` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '业务区机构编码',
  `shop_organ` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '门店机构编码',
  `bl_organ` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '部类机构编码',
  `kl_organ` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '课类机构编码',
  `bl_organ_all` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '部类全部机构编码',
  `kl_organ_all` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '课类全部机构编码',
  `sdate` datetime DEFAULT NULL COMMENT '更新日期时间',
  `holiday_begindate` datetime DEFAULT NULL COMMENT '节日开始日期',
  `seasontype` varchar(1) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '季节属性',
  `holidaytype` varchar(1) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '节日属性',
  `holiday_enddate` datetime DEFAULT NULL COMMENT '节日结束日期',
  `rate` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '季节下降点之后日均销量的折扣比例',
  `zs` decimal(16,2) DEFAULT NULL COMMENT '春节指数',
  `ho_rate` decimal(16,2) DEFAULT NULL COMMENT '节日安全系数',
  `manual_qty` decimal(16,3) DEFAULT '0.000' COMMENT '手动输入的补货数量',
  `trueprice` decimal(16,2) DEFAULT NULL,
  `display_flag` varchar(1) DEFAULT '0',
  `storeqty` decimal(16,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zn_goods_his_spr
-- ----------------------------
DROP TABLE IF EXISTS `zn_goods_his_spr`;
CREATE TABLE `zn_goods_his_spr` (
  `shopid` varchar(8) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '门店编码',
  `blid` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '部类编码',
  `cgid` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '课类编码',
  `xlid` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '小类编码',
  `goodsid` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '商品编码',
  `classtype` varchar(1) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '补货类型',
  `normalprice` decimal(16,2) DEFAULT NULL COMMENT '定价',
  `minstock` decimal(16,2) DEFAULT NULL COMMENT '最小库存数量',
  `minorder` decimal(16,2) DEFAULT NULL COMMENT '最小起订量',
  `closeqty` decimal(16,3) DEFAULT NULL COMMENT '昨日日终库存数量',
  `qty` decimal(16,3) DEFAULT NULL COMMENT '计算生成的补货数量',
  `flag` varchar(8) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '补货标识',
  `ywq_organ` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '业务区机构编码',
  `shop_organ` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '门店机构编码',
  `bl_organ` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '部类机构编码',
  `kl_organ` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '课类机构编码',
  `bl_organ_all` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '部类全部机构编码',
  `kl_organ_all` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '课类全部机构编码',
  `sdate` datetime DEFAULT NULL COMMENT '更新日期时间',
  `holiday_begindate` datetime DEFAULT NULL COMMENT '节日开始日期',
  `seasontype` varchar(1) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '季节属性',
  `holidaytype` varchar(1) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '节日属性',
  `holiday_enddate` datetime DEFAULT NULL COMMENT '节日结束日期',
  `rate` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '季节下降点之后日均销量的折扣比例',
  `aweek` int(10) DEFAULT NULL COMMENT '季节下降点',
  `arrdate` char(5) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '季节性商品起季是首次到货日期',
  `zs` decimal(16,2) DEFAULT NULL COMMENT '春节指数',
  `ho_rate` decimal(16,2) DEFAULT NULL COMMENT '节日安全系数',
  `manual_qty` decimal(16,3) DEFAULT '0.000' COMMENT '手动输入的补货数量',
  `trueprice` decimal(16,2) DEFAULT NULL,
  KEY `index_1` (`sdate`) USING BTREE,
  KEY `index_2` (`shopid`) USING BTREE,
  KEY `index_3` (`xlid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for zn_goods_spr
-- ----------------------------
DROP TABLE IF EXISTS `zn_goods_spr`;
CREATE TABLE `zn_goods_spr` (
  `id` bigint(36) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
  `shopid` varchar(8) DEFAULT NULL COMMENT '门店编码',
  `blid` varchar(32) DEFAULT NULL COMMENT '部类编码',
  `cgid` varchar(32) DEFAULT NULL,
  `xlid` varchar(32) DEFAULT NULL COMMENT '小类编码',
  `xlname` varchar(64) DEFAULT NULL COMMENT '小类名称',
  `goodsid` varchar(32) DEFAULT NULL COMMENT '商品编码',
  `goodsname` varchar(64) DEFAULT NULL COMMENT '商品名称',
  `classtype` varchar(1) DEFAULT NULL COMMENT '补货类型',
  `normalprice` decimal(16,2) DEFAULT NULL COMMENT '定价',
  `minstock` decimal(16,2) DEFAULT NULL COMMENT '最小库存数量',
  `minorder` decimal(16,2) DEFAULT NULL COMMENT '最小起订量',
  `closeqty` decimal(16,3) DEFAULT '0.000' COMMENT '昨日日终库存数量',
  `qty` decimal(16,3) DEFAULT '0.000' COMMENT '计算生成的补货数量',
  `manual_qty` decimal(16,3) DEFAULT '0.000' COMMENT '手动输入的补货数量',
  `flag` varchar(8) DEFAULT NULL COMMENT '补货标识',
  `sdate` datetime DEFAULT NULL COMMENT '更新日期时间',
  `holiday_begindate` datetime DEFAULT NULL COMMENT '节日开始日期',
  `seasontype` varchar(1) DEFAULT NULL COMMENT '季节属性',
  `rate1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period1，日均销量的折扣比例',
  `rate2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period2，日均销量的折扣比例',
  `period1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例1',
  `period2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例2',
  `holidaytype` varchar(1) DEFAULT NULL COMMENT '节日属性',
  `holiday_enddate` datetime DEFAULT NULL COMMENT '节日结束日期',
  `rate` varchar(32) DEFAULT NULL COMMENT '季节下降点之后日均销量的折扣比例',
  `aweek` int(10) DEFAULT NULL COMMENT '季节下降点',
  `arrdate` char(5) DEFAULT NULL COMMENT '季节性商品起季是首次到货日期',
  `zs` decimal(16,2) DEFAULT NULL COMMENT '春节指数',
  `ho_rate` decimal(16,2) DEFAULT NULL COMMENT '节日安全系数',
  `ywq_organ` varchar(64) DEFAULT NULL COMMENT '业务区机构编码',
  `shop_organ` varchar(64) DEFAULT NULL COMMENT '门店机构编码',
  `bl_organ` varchar(64) DEFAULT NULL COMMENT '部类机构编码',
  `kl_organ` varchar(64) DEFAULT NULL COMMENT '课类机构编码',
  `bl_organ_all` varchar(64) DEFAULT NULL COMMENT '部类全部机构编码',
  `kl_organ_all` varchar(64) DEFAULT NULL COMMENT '课类全部机构编码',
  `auto_id` bigint(20) DEFAULT NULL,
  `trueprice` decimal(16,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_1` (`shopid`,`goodsid`) USING BTREE,
  KEY `sdate` (`sdate`) USING BTREE,
  KEY `index_2` (`xlid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=32768 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for zn_goods_spr_2020-01-07_1020
-- ----------------------------
DROP TABLE IF EXISTS `zn_goods_spr_2020-01-07_1020`;
CREATE TABLE `zn_goods_spr_2020-01-07_1020` (
  `id` bigint(36) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
  `shopid` varchar(8) DEFAULT NULL COMMENT '门店编码',
  `blid` varchar(32) DEFAULT NULL COMMENT '部类编码',
  `cgid` varchar(32) DEFAULT NULL,
  `xlid` varchar(32) DEFAULT NULL COMMENT '小类编码',
  `xlname` varchar(64) DEFAULT NULL COMMENT '小类名称',
  `goodsid` varchar(32) DEFAULT NULL COMMENT '商品编码',
  `goodsname` varchar(64) DEFAULT NULL COMMENT '商品名称',
  `classtype` varchar(1) DEFAULT NULL COMMENT '补货类型',
  `normalprice` decimal(16,2) DEFAULT NULL COMMENT '定价',
  `minstock` decimal(16,2) DEFAULT NULL COMMENT '最小库存数量',
  `minorder` decimal(16,2) DEFAULT NULL COMMENT '最小起订量',
  `closeqty` decimal(16,3) DEFAULT '0.000' COMMENT '昨日日终库存数量',
  `qty` decimal(16,3) DEFAULT '0.000' COMMENT '计算生成的补货数量',
  `manual_qty` decimal(16,3) DEFAULT '0.000' COMMENT '手动输入的补货数量',
  `flag` varchar(8) DEFAULT NULL COMMENT '补货标识',
  `sdate` datetime DEFAULT NULL COMMENT '更新日期时间',
  `holiday_begindate` datetime DEFAULT NULL COMMENT '节日开始日期',
  `seasontype` varchar(1) DEFAULT NULL COMMENT '季节属性',
  `rate1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period1，日均销量的折扣比例',
  `rate2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period2，日均销量的折扣比例',
  `period1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例1',
  `period2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例2',
  `holidaytype` varchar(1) DEFAULT NULL COMMENT '节日属性',
  `holiday_enddate` datetime DEFAULT NULL COMMENT '节日结束日期',
  `rate` varchar(32) DEFAULT NULL COMMENT '季节下降点之后日均销量的折扣比例',
  `aweek` int(10) DEFAULT NULL COMMENT '季节下降点',
  `arrdate` char(5) DEFAULT NULL COMMENT '季节性商品起季是首次到货日期',
  `zs` decimal(16,2) DEFAULT NULL COMMENT '春节指数',
  `ho_rate` decimal(16,2) DEFAULT NULL COMMENT '节日安全系数',
  `ywq_organ` varchar(64) DEFAULT NULL COMMENT '业务区机构编码',
  `shop_organ` varchar(64) DEFAULT NULL COMMENT '门店机构编码',
  `bl_organ` varchar(64) DEFAULT NULL COMMENT '部类机构编码',
  `kl_organ` varchar(64) DEFAULT NULL COMMENT '课类机构编码',
  `bl_organ_all` varchar(64) DEFAULT NULL COMMENT '部类全部机构编码',
  `kl_organ_all` varchar(64) DEFAULT NULL COMMENT '课类全部机构编码',
  `auto_id` bigint(20) DEFAULT NULL,
  `trueprice` decimal(16,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_1` (`shopid`,`goodsid`) USING BTREE,
  KEY `sdate` (`sdate`) USING BTREE,
  KEY `index_2` (`xlid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=42713 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for zn_goods_spr_2020-01-11_1020
-- ----------------------------
DROP TABLE IF EXISTS `zn_goods_spr_2020-01-11_1020`;
CREATE TABLE `zn_goods_spr_2020-01-11_1020` (
  `id` bigint(36) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
  `shopid` varchar(8) DEFAULT NULL COMMENT '门店编码',
  `blid` varchar(32) DEFAULT NULL COMMENT '部类编码',
  `cgid` varchar(32) DEFAULT NULL,
  `xlid` varchar(32) DEFAULT NULL COMMENT '小类编码',
  `xlname` varchar(64) DEFAULT NULL COMMENT '小类名称',
  `goodsid` varchar(32) DEFAULT NULL COMMENT '商品编码',
  `goodsname` varchar(64) DEFAULT NULL COMMENT '商品名称',
  `classtype` varchar(1) DEFAULT NULL COMMENT '补货类型',
  `normalprice` decimal(16,2) DEFAULT NULL COMMENT '定价',
  `minstock` decimal(16,2) DEFAULT NULL COMMENT '最小库存数量',
  `minorder` decimal(16,2) DEFAULT NULL COMMENT '最小起订量',
  `closeqty` decimal(16,3) DEFAULT '0.000' COMMENT '昨日日终库存数量',
  `qty` decimal(16,3) DEFAULT '0.000' COMMENT '计算生成的补货数量',
  `manual_qty` decimal(16,3) DEFAULT '0.000' COMMENT '手动输入的补货数量',
  `flag` varchar(8) DEFAULT NULL COMMENT '补货标识',
  `sdate` datetime DEFAULT NULL COMMENT '更新日期时间',
  `holiday_begindate` datetime DEFAULT NULL COMMENT '节日开始日期',
  `seasontype` varchar(1) DEFAULT NULL COMMENT '季节属性',
  `rate1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period1，日均销量的折扣比例',
  `rate2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period2，日均销量的折扣比例',
  `period1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例1',
  `period2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例2',
  `holidaytype` varchar(1) DEFAULT NULL COMMENT '节日属性',
  `holiday_enddate` datetime DEFAULT NULL COMMENT '节日结束日期',
  `rate` varchar(32) DEFAULT NULL COMMENT '季节下降点之后日均销量的折扣比例',
  `aweek` int(10) DEFAULT NULL COMMENT '季节下降点',
  `arrdate` char(5) DEFAULT NULL COMMENT '季节性商品起季是首次到货日期',
  `zs` decimal(16,2) DEFAULT NULL COMMENT '春节指数',
  `ho_rate` decimal(16,2) DEFAULT NULL COMMENT '节日安全系数',
  `ywq_organ` varchar(64) DEFAULT NULL COMMENT '业务区机构编码',
  `shop_organ` varchar(64) DEFAULT NULL COMMENT '门店机构编码',
  `bl_organ` varchar(64) DEFAULT NULL COMMENT '部类机构编码',
  `kl_organ` varchar(64) DEFAULT NULL COMMENT '课类机构编码',
  `bl_organ_all` varchar(64) DEFAULT NULL COMMENT '部类全部机构编码',
  `kl_organ_all` varchar(64) DEFAULT NULL COMMENT '课类全部机构编码',
  `auto_id` bigint(20) DEFAULT NULL,
  `trueprice` decimal(16,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_1` (`shopid`,`goodsid`) USING BTREE,
  KEY `sdate` (`sdate`) USING BTREE,
  KEY `index_2` (`xlid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=26330 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for zn_goods_spr_2020-01-14_1020
-- ----------------------------
DROP TABLE IF EXISTS `zn_goods_spr_2020-01-14_1020`;
CREATE TABLE `zn_goods_spr_2020-01-14_1020` (
  `id` bigint(36) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
  `shopid` varchar(8) DEFAULT NULL COMMENT '门店编码',
  `blid` varchar(32) DEFAULT NULL COMMENT '部类编码',
  `cgid` varchar(32) DEFAULT NULL,
  `xlid` varchar(32) DEFAULT NULL COMMENT '小类编码',
  `xlname` varchar(64) DEFAULT NULL COMMENT '小类名称',
  `goodsid` varchar(32) DEFAULT NULL COMMENT '商品编码',
  `goodsname` varchar(64) DEFAULT NULL COMMENT '商品名称',
  `classtype` varchar(1) DEFAULT NULL COMMENT '补货类型',
  `normalprice` decimal(16,2) DEFAULT NULL COMMENT '定价',
  `minstock` decimal(16,2) DEFAULT NULL COMMENT '最小库存数量',
  `minorder` decimal(16,2) DEFAULT NULL COMMENT '最小起订量',
  `closeqty` decimal(16,3) DEFAULT '0.000' COMMENT '昨日日终库存数量',
  `qty` decimal(16,3) DEFAULT '0.000' COMMENT '计算生成的补货数量',
  `manual_qty` decimal(16,3) DEFAULT '0.000' COMMENT '手动输入的补货数量',
  `flag` varchar(8) DEFAULT NULL COMMENT '补货标识',
  `sdate` datetime DEFAULT NULL COMMENT '更新日期时间',
  `holiday_begindate` datetime DEFAULT NULL COMMENT '节日开始日期',
  `seasontype` varchar(1) DEFAULT NULL COMMENT '季节属性',
  `rate1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period1，日均销量的折扣比例',
  `rate2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period2，日均销量的折扣比例',
  `period1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例1',
  `period2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例2',
  `holidaytype` varchar(1) DEFAULT NULL COMMENT '节日属性',
  `holiday_enddate` datetime DEFAULT NULL COMMENT '节日结束日期',
  `rate` varchar(32) DEFAULT NULL COMMENT '季节下降点之后日均销量的折扣比例',
  `aweek` int(10) DEFAULT NULL COMMENT '季节下降点',
  `arrdate` char(5) DEFAULT NULL COMMENT '季节性商品起季是首次到货日期',
  `zs` decimal(16,2) DEFAULT NULL COMMENT '春节指数',
  `ho_rate` decimal(16,2) DEFAULT NULL COMMENT '节日安全系数',
  `ywq_organ` varchar(64) DEFAULT NULL COMMENT '业务区机构编码',
  `shop_organ` varchar(64) DEFAULT NULL COMMENT '门店机构编码',
  `bl_organ` varchar(64) DEFAULT NULL COMMENT '部类机构编码',
  `kl_organ` varchar(64) DEFAULT NULL COMMENT '课类机构编码',
  `bl_organ_all` varchar(64) DEFAULT NULL COMMENT '部类全部机构编码',
  `kl_organ_all` varchar(64) DEFAULT NULL COMMENT '课类全部机构编码',
  `auto_id` bigint(20) DEFAULT NULL,
  `trueprice` decimal(16,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_1` (`shopid`,`goodsid`) USING BTREE,
  KEY `sdate` (`sdate`) USING BTREE,
  KEY `index_2` (`xlid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=26330 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for zn_goods_spr_2020-01-18_1020
-- ----------------------------
DROP TABLE IF EXISTS `zn_goods_spr_2020-01-18_1020`;
CREATE TABLE `zn_goods_spr_2020-01-18_1020` (
  `id` bigint(36) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
  `shopid` varchar(8) DEFAULT NULL COMMENT '门店编码',
  `blid` varchar(32) DEFAULT NULL COMMENT '部类编码',
  `cgid` varchar(32) DEFAULT NULL,
  `xlid` varchar(32) DEFAULT NULL COMMENT '小类编码',
  `xlname` varchar(64) DEFAULT NULL COMMENT '小类名称',
  `goodsid` varchar(32) DEFAULT NULL COMMENT '商品编码',
  `goodsname` varchar(64) DEFAULT NULL COMMENT '商品名称',
  `classtype` varchar(1) DEFAULT NULL COMMENT '补货类型',
  `normalprice` decimal(16,2) DEFAULT NULL COMMENT '定价',
  `minstock` decimal(16,2) DEFAULT NULL COMMENT '最小库存数量',
  `minorder` decimal(16,2) DEFAULT NULL COMMENT '最小起订量',
  `closeqty` decimal(16,3) DEFAULT '0.000' COMMENT '昨日日终库存数量',
  `qty` decimal(16,3) DEFAULT '0.000' COMMENT '计算生成的补货数量',
  `manual_qty` decimal(16,3) DEFAULT '0.000' COMMENT '手动输入的补货数量',
  `flag` varchar(8) DEFAULT NULL COMMENT '补货标识',
  `sdate` datetime DEFAULT NULL COMMENT '更新日期时间',
  `holiday_begindate` datetime DEFAULT NULL COMMENT '节日开始日期',
  `seasontype` varchar(1) DEFAULT NULL COMMENT '季节属性',
  `rate1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period1，日均销量的折扣比例',
  `rate2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period2，日均销量的折扣比例',
  `period1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例1',
  `period2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例2',
  `holidaytype` varchar(1) DEFAULT NULL COMMENT '节日属性',
  `holiday_enddate` datetime DEFAULT NULL COMMENT '节日结束日期',
  `rate` varchar(32) DEFAULT NULL COMMENT '季节下降点之后日均销量的折扣比例',
  `aweek` int(10) DEFAULT NULL COMMENT '季节下降点',
  `arrdate` char(5) DEFAULT NULL COMMENT '季节性商品起季是首次到货日期',
  `zs` decimal(16,2) DEFAULT NULL COMMENT '春节指数',
  `ho_rate` decimal(16,2) DEFAULT NULL COMMENT '节日安全系数',
  `ywq_organ` varchar(64) DEFAULT NULL COMMENT '业务区机构编码',
  `shop_organ` varchar(64) DEFAULT NULL COMMENT '门店机构编码',
  `bl_organ` varchar(64) DEFAULT NULL COMMENT '部类机构编码',
  `kl_organ` varchar(64) DEFAULT NULL COMMENT '课类机构编码',
  `bl_organ_all` varchar(64) DEFAULT NULL COMMENT '部类全部机构编码',
  `kl_organ_all` varchar(64) DEFAULT NULL COMMENT '课类全部机构编码',
  `auto_id` bigint(20) DEFAULT NULL,
  `trueprice` decimal(16,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_1` (`shopid`,`goodsid`) USING BTREE,
  KEY `sdate` (`sdate`) USING BTREE,
  KEY `index_2` (`xlid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=26330 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for zn_goods_spr_2020-01-21_1020
-- ----------------------------
DROP TABLE IF EXISTS `zn_goods_spr_2020-01-21_1020`;
CREATE TABLE `zn_goods_spr_2020-01-21_1020` (
  `id` bigint(36) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
  `shopid` varchar(8) DEFAULT NULL COMMENT '门店编码',
  `blid` varchar(32) DEFAULT NULL COMMENT '部类编码',
  `cgid` varchar(32) DEFAULT NULL,
  `xlid` varchar(32) DEFAULT NULL COMMENT '小类编码',
  `xlname` varchar(64) DEFAULT NULL COMMENT '小类名称',
  `goodsid` varchar(32) DEFAULT NULL COMMENT '商品编码',
  `goodsname` varchar(64) DEFAULT NULL COMMENT '商品名称',
  `classtype` varchar(1) DEFAULT NULL COMMENT '补货类型',
  `normalprice` decimal(16,2) DEFAULT NULL COMMENT '定价',
  `minstock` decimal(16,2) DEFAULT NULL COMMENT '最小库存数量',
  `minorder` decimal(16,2) DEFAULT NULL COMMENT '最小起订量',
  `closeqty` decimal(16,3) DEFAULT '0.000' COMMENT '昨日日终库存数量',
  `qty` decimal(16,3) DEFAULT '0.000' COMMENT '计算生成的补货数量',
  `manual_qty` decimal(16,3) DEFAULT '0.000' COMMENT '手动输入的补货数量',
  `flag` varchar(8) DEFAULT NULL COMMENT '补货标识',
  `sdate` datetime DEFAULT NULL COMMENT '更新日期时间',
  `holiday_begindate` datetime DEFAULT NULL COMMENT '节日开始日期',
  `seasontype` varchar(1) DEFAULT NULL COMMENT '季节属性',
  `rate1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period1，日均销量的折扣比例',
  `rate2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period2，日均销量的折扣比例',
  `period1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例1',
  `period2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例2',
  `holidaytype` varchar(1) DEFAULT NULL COMMENT '节日属性',
  `holiday_enddate` datetime DEFAULT NULL COMMENT '节日结束日期',
  `rate` varchar(32) DEFAULT NULL COMMENT '季节下降点之后日均销量的折扣比例',
  `aweek` int(10) DEFAULT NULL COMMENT '季节下降点',
  `arrdate` char(5) DEFAULT NULL COMMENT '季节性商品起季是首次到货日期',
  `zs` decimal(16,2) DEFAULT NULL COMMENT '春节指数',
  `ho_rate` decimal(16,2) DEFAULT NULL COMMENT '节日安全系数',
  `ywq_organ` varchar(64) DEFAULT NULL COMMENT '业务区机构编码',
  `shop_organ` varchar(64) DEFAULT NULL COMMENT '门店机构编码',
  `bl_organ` varchar(64) DEFAULT NULL COMMENT '部类机构编码',
  `kl_organ` varchar(64) DEFAULT NULL COMMENT '课类机构编码',
  `bl_organ_all` varchar(64) DEFAULT NULL COMMENT '部类全部机构编码',
  `kl_organ_all` varchar(64) DEFAULT NULL COMMENT '课类全部机构编码',
  `auto_id` bigint(20) DEFAULT NULL,
  `trueprice` decimal(16,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_1` (`shopid`,`goodsid`) USING BTREE,
  KEY `sdate` (`sdate`) USING BTREE,
  KEY `index_2` (`xlid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=26330 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for zn_goods_spr_2020-01-25_1020
-- ----------------------------
DROP TABLE IF EXISTS `zn_goods_spr_2020-01-25_1020`;
CREATE TABLE `zn_goods_spr_2020-01-25_1020` (
  `id` bigint(36) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
  `shopid` varchar(8) DEFAULT NULL COMMENT '门店编码',
  `blid` varchar(32) DEFAULT NULL COMMENT '部类编码',
  `cgid` varchar(32) DEFAULT NULL,
  `xlid` varchar(32) DEFAULT NULL COMMENT '小类编码',
  `xlname` varchar(64) DEFAULT NULL COMMENT '小类名称',
  `goodsid` varchar(32) DEFAULT NULL COMMENT '商品编码',
  `goodsname` varchar(64) DEFAULT NULL COMMENT '商品名称',
  `classtype` varchar(1) DEFAULT NULL COMMENT '补货类型',
  `normalprice` decimal(16,2) DEFAULT NULL COMMENT '定价',
  `minstock` decimal(16,2) DEFAULT NULL COMMENT '最小库存数量',
  `minorder` decimal(16,2) DEFAULT NULL COMMENT '最小起订量',
  `closeqty` decimal(16,3) DEFAULT '0.000' COMMENT '昨日日终库存数量',
  `qty` decimal(16,3) DEFAULT '0.000' COMMENT '计算生成的补货数量',
  `manual_qty` decimal(16,3) DEFAULT '0.000' COMMENT '手动输入的补货数量',
  `flag` varchar(8) DEFAULT NULL COMMENT '补货标识',
  `sdate` datetime DEFAULT NULL COMMENT '更新日期时间',
  `holiday_begindate` datetime DEFAULT NULL COMMENT '节日开始日期',
  `seasontype` varchar(1) DEFAULT NULL COMMENT '季节属性',
  `rate1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period1，日均销量的折扣比例',
  `rate2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period2，日均销量的折扣比例',
  `period1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例1',
  `period2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例2',
  `holidaytype` varchar(1) DEFAULT NULL COMMENT '节日属性',
  `holiday_enddate` datetime DEFAULT NULL COMMENT '节日结束日期',
  `rate` varchar(32) DEFAULT NULL COMMENT '季节下降点之后日均销量的折扣比例',
  `aweek` int(10) DEFAULT NULL COMMENT '季节下降点',
  `arrdate` char(5) DEFAULT NULL COMMENT '季节性商品起季是首次到货日期',
  `zs` decimal(16,2) DEFAULT NULL COMMENT '春节指数',
  `ho_rate` decimal(16,2) DEFAULT NULL COMMENT '节日安全系数',
  `ywq_organ` varchar(64) DEFAULT NULL COMMENT '业务区机构编码',
  `shop_organ` varchar(64) DEFAULT NULL COMMENT '门店机构编码',
  `bl_organ` varchar(64) DEFAULT NULL COMMENT '部类机构编码',
  `kl_organ` varchar(64) DEFAULT NULL COMMENT '课类机构编码',
  `bl_organ_all` varchar(64) DEFAULT NULL COMMENT '部类全部机构编码',
  `kl_organ_all` varchar(64) DEFAULT NULL COMMENT '课类全部机构编码',
  `auto_id` bigint(20) DEFAULT NULL,
  `trueprice` decimal(16,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_1` (`shopid`,`goodsid`) USING BTREE,
  KEY `sdate` (`sdate`) USING BTREE,
  KEY `index_2` (`xlid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=26330 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for zn_goods_spr_2020-01-28_1020
-- ----------------------------
DROP TABLE IF EXISTS `zn_goods_spr_2020-01-28_1020`;
CREATE TABLE `zn_goods_spr_2020-01-28_1020` (
  `id` bigint(36) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
  `shopid` varchar(8) DEFAULT NULL COMMENT '门店编码',
  `blid` varchar(32) DEFAULT NULL COMMENT '部类编码',
  `cgid` varchar(32) DEFAULT NULL,
  `xlid` varchar(32) DEFAULT NULL COMMENT '小类编码',
  `xlname` varchar(64) DEFAULT NULL COMMENT '小类名称',
  `goodsid` varchar(32) DEFAULT NULL COMMENT '商品编码',
  `goodsname` varchar(64) DEFAULT NULL COMMENT '商品名称',
  `classtype` varchar(1) DEFAULT NULL COMMENT '补货类型',
  `normalprice` decimal(16,2) DEFAULT NULL COMMENT '定价',
  `minstock` decimal(16,2) DEFAULT NULL COMMENT '最小库存数量',
  `minorder` decimal(16,2) DEFAULT NULL COMMENT '最小起订量',
  `closeqty` decimal(16,3) DEFAULT '0.000' COMMENT '昨日日终库存数量',
  `qty` decimal(16,3) DEFAULT '0.000' COMMENT '计算生成的补货数量',
  `manual_qty` decimal(16,3) DEFAULT '0.000' COMMENT '手动输入的补货数量',
  `flag` varchar(8) DEFAULT NULL COMMENT '补货标识',
  `sdate` datetime DEFAULT NULL COMMENT '更新日期时间',
  `holiday_begindate` datetime DEFAULT NULL COMMENT '节日开始日期',
  `seasontype` varchar(1) DEFAULT NULL COMMENT '季节属性',
  `rate1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period1，日均销量的折扣比例',
  `rate2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period2，日均销量的折扣比例',
  `period1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例1',
  `period2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例2',
  `holidaytype` varchar(1) DEFAULT NULL COMMENT '节日属性',
  `holiday_enddate` datetime DEFAULT NULL COMMENT '节日结束日期',
  `rate` varchar(32) DEFAULT NULL COMMENT '季节下降点之后日均销量的折扣比例',
  `aweek` int(10) DEFAULT NULL COMMENT '季节下降点',
  `arrdate` char(5) DEFAULT NULL COMMENT '季节性商品起季是首次到货日期',
  `zs` decimal(16,2) DEFAULT NULL COMMENT '春节指数',
  `ho_rate` decimal(16,2) DEFAULT NULL COMMENT '节日安全系数',
  `ywq_organ` varchar(64) DEFAULT NULL COMMENT '业务区机构编码',
  `shop_organ` varchar(64) DEFAULT NULL COMMENT '门店机构编码',
  `bl_organ` varchar(64) DEFAULT NULL COMMENT '部类机构编码',
  `kl_organ` varchar(64) DEFAULT NULL COMMENT '课类机构编码',
  `bl_organ_all` varchar(64) DEFAULT NULL COMMENT '部类全部机构编码',
  `kl_organ_all` varchar(64) DEFAULT NULL COMMENT '课类全部机构编码',
  `auto_id` bigint(20) DEFAULT NULL,
  `trueprice` decimal(16,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_1` (`shopid`,`goodsid`) USING BTREE,
  KEY `sdate` (`sdate`) USING BTREE,
  KEY `index_2` (`xlid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=26339 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for zn_goods_spr_2020-02-01_1020
-- ----------------------------
DROP TABLE IF EXISTS `zn_goods_spr_2020-02-01_1020`;
CREATE TABLE `zn_goods_spr_2020-02-01_1020` (
  `id` bigint(36) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
  `shopid` varchar(8) DEFAULT NULL COMMENT '门店编码',
  `blid` varchar(32) DEFAULT NULL COMMENT '部类编码',
  `cgid` varchar(32) DEFAULT NULL,
  `xlid` varchar(32) DEFAULT NULL COMMENT '小类编码',
  `xlname` varchar(64) DEFAULT NULL COMMENT '小类名称',
  `goodsid` varchar(32) DEFAULT NULL COMMENT '商品编码',
  `goodsname` varchar(64) DEFAULT NULL COMMENT '商品名称',
  `classtype` varchar(1) DEFAULT NULL COMMENT '补货类型',
  `normalprice` decimal(16,2) DEFAULT NULL COMMENT '定价',
  `minstock` decimal(16,2) DEFAULT NULL COMMENT '最小库存数量',
  `minorder` decimal(16,2) DEFAULT NULL COMMENT '最小起订量',
  `closeqty` decimal(16,3) DEFAULT '0.000' COMMENT '昨日日终库存数量',
  `qty` decimal(16,3) DEFAULT '0.000' COMMENT '计算生成的补货数量',
  `manual_qty` decimal(16,3) DEFAULT '0.000' COMMENT '手动输入的补货数量',
  `flag` varchar(8) DEFAULT NULL COMMENT '补货标识',
  `sdate` datetime DEFAULT NULL COMMENT '更新日期时间',
  `holiday_begindate` datetime DEFAULT NULL COMMENT '节日开始日期',
  `seasontype` varchar(1) DEFAULT NULL COMMENT '季节属性',
  `rate1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period1，日均销量的折扣比例',
  `rate2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period2，日均销量的折扣比例',
  `period1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例1',
  `period2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例2',
  `holidaytype` varchar(1) DEFAULT NULL COMMENT '节日属性',
  `holiday_enddate` datetime DEFAULT NULL COMMENT '节日结束日期',
  `rate` varchar(32) DEFAULT NULL COMMENT '季节下降点之后日均销量的折扣比例',
  `aweek` int(10) DEFAULT NULL COMMENT '季节下降点',
  `arrdate` char(5) DEFAULT NULL COMMENT '季节性商品起季是首次到货日期',
  `zs` decimal(16,2) DEFAULT NULL COMMENT '春节指数',
  `ho_rate` decimal(16,2) DEFAULT NULL COMMENT '节日安全系数',
  `ywq_organ` varchar(64) DEFAULT NULL COMMENT '业务区机构编码',
  `shop_organ` varchar(64) DEFAULT NULL COMMENT '门店机构编码',
  `bl_organ` varchar(64) DEFAULT NULL COMMENT '部类机构编码',
  `kl_organ` varchar(64) DEFAULT NULL COMMENT '课类机构编码',
  `bl_organ_all` varchar(64) DEFAULT NULL COMMENT '部类全部机构编码',
  `kl_organ_all` varchar(64) DEFAULT NULL COMMENT '课类全部机构编码',
  `auto_id` bigint(20) DEFAULT NULL,
  `trueprice` decimal(16,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_1` (`shopid`,`goodsid`) USING BTREE,
  KEY `sdate` (`sdate`) USING BTREE,
  KEY `index_2` (`xlid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=26350 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for zn_his_normalprice
-- ----------------------------
DROP TABLE IF EXISTS `zn_his_normalprice`;
CREATE TABLE `zn_his_normalprice` (
  `shopid` varchar(8) DEFAULT NULL,
  `goodsid` varchar(32) DEFAULT NULL,
  `normalprice` decimal(16,2) DEFAULT NULL,
  `sdate` date DEFAULT NULL,
  KEY `index_1` (`shopid`,`goodsid`,`sdate`) USING BTREE,
  KEY `index_2` (`shopid`,`goodsid`,`normalprice`,`sdate`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for zn_his_stock
-- ----------------------------
DROP TABLE IF EXISTS `zn_his_stock`;
CREATE TABLE `zn_his_stock` (
  `sdate` datetime DEFAULT NULL COMMENT '前一天的日期',
  `shopid` varchar(8) DEFAULT NULL COMMENT '门店编码',
  `shopname` varchar(64) DEFAULT NULL COMMENT '门店名称',
  `goodsid` varchar(32) DEFAULT NULL COMMENT '商品编码',
  `goodsname` varchar(64) DEFAULT NULL COMMENT '商品名称',
  `closeqty` decimal(16,3) DEFAULT NULL COMMENT '日终库存'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for zn_holidayid_name
-- ----------------------------
DROP TABLE IF EXISTS `zn_holidayid_name`;
CREATE TABLE `zn_holidayid_name` (
  `id` int(19) NOT NULL COMMENT '主键',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
  `holidayid` varchar(8) DEFAULT NULL COMMENT '节日编码',
  `holidayname` varchar(32) DEFAULT NULL COMMENT '节日名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for zn_holiday_across
-- ----------------------------
DROP TABLE IF EXISTS `zn_holiday_across`;
CREATE TABLE `zn_holiday_across` (
  `id` int(36) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
  `shopid` varchar(8) DEFAULT NULL COMMENT '商店编码',
  `shopname` varchar(64) DEFAULT NULL COMMENT '门店名称',
  `goodsid` varchar(32) DEFAULT NULL COMMENT '商品编码',
  `goodsname` varchar(64) DEFAULT NULL COMMENT '商品名称',
  `firstdate` datetime DEFAULT NULL COMMENT '首次补货日期',
  `nextdate` datetime DEFAULT NULL COMMENT '下次补货日期',
  `sdate` datetime DEFAULT NULL COMMENT '更新日期时间',
  `auto_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_1` (`shopid`,`goodsid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=65533 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for zn_holiday_by
-- ----------------------------
DROP TABLE IF EXISTS `zn_holiday_by`;
CREATE TABLE `zn_holiday_by` (
  `ywqid` varchar(8) DEFAULT NULL,
  `holidayid` varchar(8) DEFAULT NULL,
  `xlid` varchar(16) DEFAULT NULL,
  `saleall` decimal(16,2) DEFAULT NULL,
  `saleholiday` decimal(16,2) DEFAULT NULL,
  `zs` decimal(21,6) DEFAULT NULL,
  `rate` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zn_holiday_goods
-- ----------------------------
DROP TABLE IF EXISTS `zn_holiday_goods`;
CREATE TABLE `zn_holiday_goods` (
  `id` bigint(36) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
  `ywqid` varchar(8) DEFAULT NULL COMMENT '业务区',
  `ywqname` varchar(64) DEFAULT NULL,
  `holidayid` varchar(8) DEFAULT NULL COMMENT '节日代码',
  `holidayname` varchar(64) DEFAULT NULL COMMENT '业务区名称',
  `begindate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `xlid` varchar(16) DEFAULT NULL COMMENT '小类编码',
  `xlname` varchar(64) DEFAULT NULL COMMENT '小类名称',
  `goodsid` varchar(32) DEFAULT NULL COMMENT '商品编码',
  `goodsname` varchar(64) DEFAULT NULL COMMENT '商品名称',
  `sdate` datetime DEFAULT NULL COMMENT '更新日期',
  `auto_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=677 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for zn_holiday_goods_spr
-- ----------------------------
DROP TABLE IF EXISTS `zn_holiday_goods_spr`;
CREATE TABLE `zn_holiday_goods_spr` (
  `id` bigint(36) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
  `ywqid` varchar(8) DEFAULT NULL COMMENT '业务区',
  `ywqname` varchar(64) DEFAULT NULL,
  `holidayid` varchar(8) DEFAULT NULL COMMENT '节日代码',
  `holidayname` varchar(64) DEFAULT NULL COMMENT '业务区名称',
  `begindate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `xlid` varchar(16) DEFAULT NULL COMMENT '小类编码',
  `xlname` varchar(64) DEFAULT NULL COMMENT '小类名称',
  `goodsid` varchar(32) DEFAULT NULL COMMENT '商品编码',
  `goodsname` varchar(64) DEFAULT NULL COMMENT '商品名称',
  `sdate` datetime DEFAULT NULL COMMENT '更新日期',
  `auto_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=662 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for zn_holiday_xl
-- ----------------------------
DROP TABLE IF EXISTS `zn_holiday_xl`;
CREATE TABLE `zn_holiday_xl` (
  `id` bigint(36) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
  `ywqid` varchar(8) DEFAULT NULL COMMENT '业务区标识',
  `holidayid` varchar(8) DEFAULT NULL COMMENT '节日代码',
  `holidayname` varchar(32) DEFAULT NULL COMMENT '小类名称',
  `xlid` varchar(16) DEFAULT NULL COMMENT '小类编码',
  `xlname` varchar(64) DEFAULT NULL COMMENT '小类名称',
  `saleall` decimal(16,2) DEFAULT NULL COMMENT '去年小类销售额',
  `saleholiday` decimal(16,2) DEFAULT NULL,
  `zs` decimal(16,2) DEFAULT NULL COMMENT '春节指数',
  `rate` decimal(16,2) DEFAULT NULL COMMENT '节日安全系数',
  `bl_organ_all` varchar(64) DEFAULT NULL COMMENT '部类全部机构编码',
  `kl_organ_all` varchar(64) DEFAULT NULL COMMENT '课类全部机构编码',
  `auto_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `唯一值` (`ywqid`,`holidayid`,`xlid`),
  KEY `index_2` (`xlid`,`holidayid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1341633712501387267 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for zn_inqty
-- ----------------------------
DROP TABLE IF EXISTS `zn_inqty`;
CREATE TABLE `zn_inqty` (
  `shopid` varchar(4) NOT NULL,
  `sdate` date NOT NULL,
  `cgid` varchar(16) DEFAULT NULL,
  `xlid` varchar(32) DEFAULT NULL,
  `resume` varchar(20) NOT NULL,
  `goodsid` varchar(18) NOT NULL,
  `goodsname` varchar(64) DEFAULT NULL,
  `classtype` varchar(4) DEFAULT NULL,
  `inqty` decimal(11,3) NOT NULL,
  `sum_cost` decimal(12,2) NOT NULL,
  `state` int(11) NOT NULL,
  `provider` varchar(10) DEFAULT NULL,
  `jyfs` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zn_interface_dms_fale_date
-- ----------------------------
DROP TABLE IF EXISTS `zn_interface_dms_fale_date`;
CREATE TABLE `zn_interface_dms_fale_date` (
  `no_dms_date` date NOT NULL,
  `update_datetime` datetime DEFAULT NULL,
  `update_reason` varchar(255) DEFAULT NULL,
  UNIQUE KEY `index_1` (`no_dms_date`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zn_log
-- ----------------------------
DROP TABLE IF EXISTS `zn_log`;
CREATE TABLE `zn_log` (
  `sundate` date DEFAULT NULL COMMENT '阳历日期',
  `shopid` varchar(8) DEFAULT NULL COMMENT '门店编码',
  `flag` varchar(1) DEFAULT NULL COMMENT '处理标识',
  `enddatedate` datetime DEFAULT NULL COMMENT '每次更新本表记录时的时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for zn_param
-- ----------------------------
DROP TABLE IF EXISTS `zn_param`;
CREATE TABLE `zn_param` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `value` varchar(64) DEFAULT NULL,
  `comment` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zn_price_dms
-- ----------------------------
DROP TABLE IF EXISTS `zn_price_dms`;
CREATE TABLE `zn_price_dms` (
  `shopid` varchar(8) DEFAULT NULL COMMENT '门店编码',
  `shopname` varchar(64) DEFAULT NULL COMMENT '门店名称',
  `xlid` varchar(32) DEFAULT NULL COMMENT '商品类别（小类）',
  `xlname` varchar(64) DEFAULT NULL COMMENT '小类名称',
  `goodsid` varchar(32) DEFAULT NULL COMMENT '商品编码',
  `goodsname` varchar(64) DEFAULT NULL COMMENT '商品名称',
  `normalprice` decimal(16,2) DEFAULT NULL COMMENT '定价',
  `band1` int(16) DEFAULT NULL COMMENT '价格段下限',
  `band2` int(16) DEFAULT NULL COMMENT '价格段上限',
  `disc1` int(11) DEFAULT NULL COMMENT '折扣下限',
  `disc2` int(11) DEFAULT NULL COMMENT '折扣上限',
  `trueprice` decimal(16,2) DEFAULT NULL COMMENT '实际售价',
  `dms` decimal(16,3) DEFAULT NULL COMMENT '实际售价对应的日均销量',
  `sdate` datetime DEFAULT NULL COMMENT '更新或新增日期',
  `display_flag` varchar(1) DEFAULT '0' COMMENT '0—默认值，1—场外  2—堆头  3—端头',
  UNIQUE KEY `index_2` (`shopid`,`goodsid`,`band1`,`display_flag`) USING BTREE,
  KEY `index_1` (`goodsid`) USING BTREE,
  KEY `index_key` (`shopid`,`goodsid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for zn_price_dms_all
-- ----------------------------
DROP TABLE IF EXISTS `zn_price_dms_all`;
CREATE TABLE `zn_price_dms_all` (
  `shopid` varchar(8) DEFAULT NULL COMMENT '门店编码',
  `shopname` varchar(64) DEFAULT NULL COMMENT '门店名称',
  `xlid` varchar(32) DEFAULT NULL COMMENT '商品类别（小类）',
  `xlname` varchar(64) DEFAULT NULL COMMENT '小类名称',
  `goodsid` varchar(32) DEFAULT NULL COMMENT '商品编码',
  `goodsname` varchar(64) DEFAULT NULL COMMENT '商品名称',
  `normalprice` decimal(16,2) DEFAULT NULL COMMENT '定价',
  `band1` int(16) DEFAULT NULL COMMENT '价格段下限',
  `band2` int(16) DEFAULT NULL COMMENT '价格段上限',
  `disc1` int(11) DEFAULT NULL COMMENT '折扣下限',
  `disc2` int(11) DEFAULT NULL COMMENT '折扣上限',
  `trueprice` decimal(16,2) DEFAULT NULL COMMENT '实际售价',
  `dms` decimal(16,3) DEFAULT NULL COMMENT '实际售价对应的日均销量',
  `sdate` datetime DEFAULT NULL COMMENT '更新或新增日期',
  UNIQUE KEY `index_2` (`shopid`,`goodsid`,`band1`) USING BTREE,
  KEY `index_1` (`goodsid`) USING BTREE,
  KEY `index_key` (`shopid`,`goodsid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for zn_price_dms_copy
-- ----------------------------
DROP TABLE IF EXISTS `zn_price_dms_copy`;
CREATE TABLE `zn_price_dms_copy` (
  `shopid` varchar(8) DEFAULT NULL COMMENT '门店编码',
  `shopname` varchar(64) DEFAULT NULL COMMENT '门店名称',
  `xlid` varchar(32) DEFAULT NULL COMMENT '商品类别（小类）',
  `xlname` varchar(64) DEFAULT NULL COMMENT '小类名称',
  `goodsid` varchar(32) DEFAULT NULL COMMENT '商品编码',
  `goodsname` varchar(64) DEFAULT NULL COMMENT '商品名称',
  `normalprice` decimal(16,2) DEFAULT NULL COMMENT '定价',
  `band1` int(16) DEFAULT NULL COMMENT '价格段下限',
  `band2` int(16) DEFAULT NULL COMMENT '价格段上限',
  `disc1` int(11) DEFAULT NULL COMMENT '折扣下限',
  `disc2` int(11) DEFAULT NULL COMMENT '折扣上限',
  `trueprice` decimal(16,2) DEFAULT NULL COMMENT '实际售价',
  `dms` decimal(16,3) DEFAULT NULL COMMENT '实际售价对应的日均销量',
  `sdate` datetime DEFAULT NULL COMMENT '更新或新增日期',
  UNIQUE KEY `index_2` (`shopid`,`goodsid`,`band1`) USING BTREE,
  KEY `index_1` (`goodsid`) USING BTREE,
  KEY `index_key` (`shopid`,`goodsid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for zn_price_dms_spr
-- ----------------------------
DROP TABLE IF EXISTS `zn_price_dms_spr`;
CREATE TABLE `zn_price_dms_spr` (
  `shopid` varchar(8) DEFAULT NULL COMMENT '门店编码',
  `shopname` varchar(64) DEFAULT NULL COMMENT '门店名称',
  `xlid` varchar(32) DEFAULT NULL COMMENT '商品类别（小类）',
  `xlname` varchar(64) DEFAULT NULL COMMENT '小类名称',
  `goodsid` varchar(32) DEFAULT NULL COMMENT '商品编码',
  `goodsname` varchar(64) DEFAULT NULL COMMENT '商品名称',
  `normalprice` decimal(16,2) DEFAULT NULL COMMENT '定价',
  `band1` int(16) DEFAULT NULL COMMENT '价格段下限',
  `band2` int(16) DEFAULT NULL COMMENT '价格段上限',
  `disc1` int(11) DEFAULT NULL COMMENT '折扣下限',
  `disc2` int(11) DEFAULT NULL COMMENT '折扣上限',
  `trueprice` decimal(16,2) DEFAULT NULL COMMENT '实际售价',
  `dms` decimal(16,3) DEFAULT NULL COMMENT '实际售价对应的日均销量',
  `sdate` datetime DEFAULT NULL COMMENT '更新或新增日期',
  `display_flag` varchar(1) DEFAULT '0' COMMENT '0—默认值，1—场外  2—堆头  3—端头',
  UNIQUE KEY `index_2` (`shopid`,`goodsid`,`band1`,`display_flag`) USING BTREE,
  KEY `index_1` (`goodsid`) USING BTREE,
  KEY `index_key` (`shopid`,`goodsid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for zn_prom_detail
-- ----------------------------
DROP TABLE IF EXISTS `zn_prom_detail`;
CREATE TABLE `zn_prom_detail` (
  `id` bigint(36) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
  `planid` varchar(32) DEFAULT NULL COMMENT '促销计划编号',
  `prom_type` varchar(32) DEFAULT NULL,
  `planname` varchar(64) DEFAULT NULL COMMENT '促销计划名称',
  `begindate` datetime DEFAULT NULL COMMENT '促销开始日期时间',
  `enddate` datetime DEFAULT NULL COMMENT '促销结束日期时间',
  `shopid` varchar(8) DEFAULT NULL COMMENT '门店编码',
  `xlid` varchar(32) DEFAULT NULL COMMENT '小类编码',
  `cgid` varchar(32) DEFAULT NULL COMMENT '课类编码',
  `blid` varchar(32) DEFAULT NULL COMMENT '部类编码',
  `goodsid` varchar(32) DEFAULT NULL COMMENT '商品编码',
  `goodsname` varchar(64) DEFAULT NULL COMMENT '商品名称',
  `price` decimal(16,2) DEFAULT NULL COMMENT '促销售价',
  `planqty` decimal(16,3) DEFAULT NULL COMMENT '采购分货数量',
  `manual_flag` char(1) DEFAULT '0',
  `flag` varchar(1) DEFAULT '0' COMMENT '补货标识',
  `shop_organ` varchar(64) DEFAULT NULL COMMENT '门店机构编码',
  `bl_organ_all` varchar(64) DEFAULT NULL COMMENT '部类全部机构编码',
  `kl_organ_all` varchar(64) DEFAULT NULL COMMENT '课类全部机构编码',
  `bl_organ` varchar(64) DEFAULT NULL COMMENT '部类机构编码',
  `kl_organ` varchar(64) DEFAULT NULL COMMENT '课类机构编码',
  `auto_id` bigint(20) DEFAULT NULL,
  `sdate` datetime DEFAULT NULL,
  `id_goods` varchar(36) DEFAULT NULL,
  `display_flag` varchar(1) DEFAULT '0' COMMENT '0—默认值，1—场外  2—堆头  3—端头',
  PRIMARY KEY (`id`),
  KEY `index_1` (`shopid`,`goodsid`) USING BTREE,
  KEY `index_2` (`shopid`,`goodsid`,`prom_type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10452 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for zn_prom_detail_bak
-- ----------------------------
DROP TABLE IF EXISTS `zn_prom_detail_bak`;
CREATE TABLE `zn_prom_detail_bak` (
  `id` bigint(36) NOT NULL DEFAULT '0' COMMENT '主键',
  `create_by` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '所属部门',
  `planid` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '促销计划编号',
  `prom_type` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL,
  `planname` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '促销计划名称',
  `begindate` datetime DEFAULT NULL COMMENT '促销开始日期时间',
  `enddate` datetime DEFAULT NULL COMMENT '促销结束日期时间',
  `shopid` varchar(8) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '门店编码',
  `xlid` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '小类编码',
  `cgid` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '课类编码',
  `blid` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '部类编码',
  `goodsid` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '商品编码',
  `goodsname` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '商品名称',
  `price` decimal(16,2) DEFAULT NULL COMMENT '促销售价',
  `planqty` decimal(16,3) DEFAULT NULL COMMENT '采购分货数量',
  `manual_flag` char(1) CHARACTER SET utf8mb4 DEFAULT '0',
  `flag` varchar(1) CHARACTER SET utf8mb4 DEFAULT '0' COMMENT '补货标识',
  `shop_organ` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '门店机构编码',
  `bl_organ_all` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '部类全部机构编码',
  `kl_organ_all` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '课类全部机构编码',
  `bl_organ` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '部类机构编码',
  `kl_organ` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '课类机构编码',
  `auto_id` bigint(20) DEFAULT NULL,
  `sdate` datetime DEFAULT NULL,
  `id_goods` varchar(36) CHARACTER SET utf8mb4 DEFAULT NULL,
  `display_flag` varchar(1) CHARACTER SET utf8mb4 DEFAULT '0' COMMENT '0—默认值，1—场外  2—堆头  3—端头'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zn_prom_detail_his
-- ----------------------------
DROP TABLE IF EXISTS `zn_prom_detail_his`;
CREATE TABLE `zn_prom_detail_his` (
  `planid` varchar(32) DEFAULT NULL COMMENT '促销计划编号',
  `planname` varchar(64) DEFAULT NULL COMMENT '促销计划名称',
  `shopid` varchar(8) DEFAULT NULL COMMENT '门店编码',
  `shopname` varchar(64) DEFAULT NULL COMMENT '门店名称',
  `goodsid` varchar(32) DEFAULT NULL COMMENT '商品编码',
  `goodsname` varchar(64) DEFAULT NULL COMMENT '商品名称',
  `price` decimal(16,2) DEFAULT NULL COMMENT '促销售价',
  `planqty` decimal(16,3) DEFAULT NULL COMMENT '采购分货数量',
  `flag` varchar(1) DEFAULT NULL COMMENT '补货标识',
  `begindate` datetime DEFAULT NULL COMMENT '促销开始日期时间',
  `enddate` datetime DEFAULT NULL COMMENT '促销结束日期时间',
  `totalqty` decimal(16,3) DEFAULT NULL,
  `totaldays` int(11) DEFAULT NULL,
  `sdate` datetime DEFAULT NULL COMMENT '备份日期',
  `display_flag` varchar(1) DEFAULT '0' COMMENT '0—默认值，1—场外  2—堆头  3—端头'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for zn_prom_detail_his_spr
-- ----------------------------
DROP TABLE IF EXISTS `zn_prom_detail_his_spr`;
CREATE TABLE `zn_prom_detail_his_spr` (
  `planid` varchar(32) DEFAULT NULL COMMENT '促销计划编号',
  `planname` varchar(64) DEFAULT NULL COMMENT '促销计划名称',
  `shopid` varchar(8) DEFAULT NULL COMMENT '门店编码',
  `shopname` varchar(64) DEFAULT NULL COMMENT '门店名称',
  `goodsid` varchar(32) DEFAULT NULL COMMENT '商品编码',
  `goodsname` varchar(64) DEFAULT NULL COMMENT '商品名称',
  `price` decimal(16,2) DEFAULT NULL COMMENT '促销售价',
  `planqty` decimal(16,3) DEFAULT NULL COMMENT '采购分货数量',
  `flag` varchar(1) DEFAULT NULL COMMENT '补货标识',
  `begindate` datetime DEFAULT NULL COMMENT '促销开始日期时间',
  `enddate` datetime DEFAULT NULL COMMENT '促销结束日期时间',
  `totalqty` decimal(16,2) DEFAULT NULL,
  `totaldays` int(11) DEFAULT NULL,
  `sdate` datetime DEFAULT NULL COMMENT '备份日期',
  `display_flag` varchar(1) DEFAULT '0' COMMENT '0—默认值，1—场外  2—堆头  3—端头'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for zn_prom_detail_spr
-- ----------------------------
DROP TABLE IF EXISTS `zn_prom_detail_spr`;
CREATE TABLE `zn_prom_detail_spr` (
  `id` bigint(36) NOT NULL COMMENT '主键',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
  `planid` varchar(32) DEFAULT NULL COMMENT '促销计划编号',
  `prom_type` varchar(32) DEFAULT NULL,
  `planname` varchar(64) DEFAULT NULL COMMENT '促销计划名称',
  `begindate` datetime DEFAULT NULL COMMENT '促销开始日期时间',
  `enddate` datetime DEFAULT NULL COMMENT '促销结束日期时间',
  `shopid` varchar(8) DEFAULT NULL COMMENT '门店编码',
  `xlid` varchar(32) DEFAULT NULL COMMENT '小类编码',
  `cgid` varchar(32) DEFAULT NULL COMMENT '课类编码',
  `blid` varchar(32) DEFAULT NULL COMMENT '部类编码',
  `goodsid` varchar(32) DEFAULT NULL COMMENT '商品编码',
  `goodsname` varchar(64) DEFAULT NULL COMMENT '商品名称',
  `price` decimal(16,2) DEFAULT NULL COMMENT '促销售价',
  `planqty` decimal(16,3) DEFAULT NULL COMMENT '采购分货数量',
  `manual_flag` char(1) DEFAULT '0',
  `flag` varchar(1) DEFAULT '0' COMMENT '补货标识',
  `shop_organ` varchar(64) DEFAULT NULL COMMENT '门店机构编码',
  `bl_organ_all` varchar(64) DEFAULT NULL COMMENT '部类全部机构编码',
  `kl_organ_all` varchar(64) DEFAULT NULL COMMENT '课类全部机构编码',
  `bl_organ` varchar(64) DEFAULT NULL COMMENT '部类机构编码',
  `kl_organ` varchar(64) DEFAULT NULL COMMENT '课类机构编码',
  `auto_id` bigint(20) DEFAULT NULL,
  `sdate` datetime DEFAULT NULL,
  `id_goods` varchar(36) DEFAULT NULL,
  `display_flag` varchar(1) DEFAULT '0' COMMENT '0—默认值，1—场外  2—堆头  3—端头',
  KEY `index_1` (`shopid`,`goodsid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for zn_prom_detail_tmp
-- ----------------------------
DROP TABLE IF EXISTS `zn_prom_detail_tmp`;
CREATE TABLE `zn_prom_detail_tmp` (
  `planid` varchar(32) DEFAULT NULL COMMENT '促销计划编号',
  `planname` varchar(64) DEFAULT NULL COMMENT '促销计划名称',
  `shopid` varchar(8) DEFAULT NULL COMMENT '门店编码',
  `goodsid` varchar(32) DEFAULT NULL COMMENT '商品编码',
  `price` decimal(16,2) DEFAULT NULL COMMENT '促销售价',
  `planqty` decimal(16,3) DEFAULT NULL COMMENT '采购分货数量',
  `flag` varchar(1) DEFAULT NULL COMMENT '补货标识',
  `begindate` date DEFAULT NULL COMMENT '促销开始日期时间',
  `enddate` date DEFAULT NULL COMMENT '促销结束日期时间',
  `sdate` datetime DEFAULT NULL COMMENT '备份日期',
  `totalQty` decimal(16,2) unsigned DEFAULT '0.00' COMMENT '销售数量累计',
  `totalDays` int(11) unsigned DEFAULT '0' COMMENT '销售天数累计',
  `display_flag` char(1) DEFAULT '0',
  `normalprice` decimal(16,2) DEFAULT '0.00',
  UNIQUE KEY `index_key` (`shopid`,`goodsid`,`begindate`,`enddate`) USING BTREE,
  KEY `index_1` (`goodsid`,`shopid`) USING BTREE,
  KEY `index_2` (`goodsid`,`shopid`,`enddate`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for zn_prom_detail_tmp_backup_1_19
-- ----------------------------
DROP TABLE IF EXISTS `zn_prom_detail_tmp_backup_1_19`;
CREATE TABLE `zn_prom_detail_tmp_backup_1_19` (
  `planid` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '促销计划编号',
  `planname` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '促销计划名称',
  `enddate` datetime DEFAULT NULL COMMENT '促销结束日期时间',
  `shopid` varchar(8) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '门店编码',
  `goodsid` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '商品编码',
  `price` decimal(16,2) DEFAULT NULL COMMENT '促销售价',
  `planqty` decimal(16,3) DEFAULT NULL COMMENT '采购分货数量',
  `flag` varchar(1) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '补货标识',
  `begindate` datetime DEFAULT NULL COMMENT '促销开始日期时间',
  `sdate` datetime DEFAULT NULL COMMENT '备份日期',
  `totalQty` decimal(16,3) unsigned DEFAULT '0.000' COMMENT '销售数量累计',
  `totalDays` int(11) unsigned DEFAULT '0' COMMENT '销售天数累计',
  `display_flag` varchar(1) CHARACTER SET utf8mb4 DEFAULT '0' COMMENT '0—默认值，1—场外  2—堆头  3—端头'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zn_prom_detail_tmp_copy1
-- ----------------------------
DROP TABLE IF EXISTS `zn_prom_detail_tmp_copy1`;
CREATE TABLE `zn_prom_detail_tmp_copy1` (
  `planid` varchar(32) DEFAULT NULL COMMENT '促销计划编号',
  `planname` varchar(64) DEFAULT NULL COMMENT '促销计划名称',
  `shopid` varchar(8) DEFAULT NULL COMMENT '门店编码',
  `goodsid` varchar(32) DEFAULT NULL COMMENT '商品编码',
  `price` decimal(16,2) DEFAULT NULL COMMENT '促销售价',
  `planqty` decimal(16,3) DEFAULT NULL COMMENT '采购分货数量',
  `flag` varchar(1) DEFAULT NULL COMMENT '补货标识',
  `begindate` datetime DEFAULT NULL COMMENT '促销开始日期时间',
  `enddate` datetime DEFAULT NULL COMMENT '促销结束日期时间',
  `sdate` datetime DEFAULT NULL COMMENT '备份日期',
  `totalQty` decimal(16,3) unsigned DEFAULT '0.000' COMMENT '销售数量累计',
  `totalDays` int(11) unsigned DEFAULT '0' COMMENT '销售天数累计',
  `display_flag` varchar(1) DEFAULT '0' COMMENT '0—默认值，1—场外  2—堆头  3—端头',
  UNIQUE KEY `index_key` (`shopid`,`goodsid`,`begindate`,`enddate`) USING BTREE,
  KEY `index_1` (`goodsid`,`shopid`) USING BTREE,
  KEY `index_2` (`goodsid`,`shopid`,`enddate`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for zn_prom_detail_tmp_spr
-- ----------------------------
DROP TABLE IF EXISTS `zn_prom_detail_tmp_spr`;
CREATE TABLE `zn_prom_detail_tmp_spr` (
  `planid` varchar(32) DEFAULT NULL COMMENT '促销计划编号',
  `planname` varchar(64) DEFAULT NULL COMMENT '促销计划名称',
  `shopid` varchar(8) DEFAULT NULL COMMENT '门店编码',
  `goodsid` varchar(32) DEFAULT NULL COMMENT '商品编码',
  `price` decimal(16,2) DEFAULT NULL COMMENT '促销售价',
  `planqty` decimal(16,3) DEFAULT NULL COMMENT '采购分货数量',
  `flag` varchar(1) DEFAULT NULL COMMENT '补货标识',
  `begindate` date DEFAULT NULL COMMENT '促销开始日期时间',
  `enddate` date DEFAULT NULL COMMENT '促销结束日期时间',
  `sdate` datetime DEFAULT NULL COMMENT '备份日期',
  `totalQty` decimal(16,2) unsigned DEFAULT '0.00' COMMENT '销售数量累计',
  `totalDays` int(11) unsigned DEFAULT '0' COMMENT '销售天数累计',
  `display_flag` char(1) DEFAULT '0',
  UNIQUE KEY `index_key` (`shopid`,`goodsid`,`begindate`,`enddate`) USING BTREE,
  KEY `index_1` (`goodsid`,`shopid`) USING BTREE,
  KEY `index_2` (`goodsid`,`shopid`,`enddate`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for zn_prom_goods
-- ----------------------------
DROP TABLE IF EXISTS `zn_prom_goods`;
CREATE TABLE `zn_prom_goods` (
  `id` varchar(36) NOT NULL,
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
  `serialid` varchar(36) DEFAULT NULL COMMENT '序号',
  `planid` varchar(32) DEFAULT NULL COMMENT '促销计划编号',
  `planname` varchar(64) DEFAULT NULL COMMENT '促销计划名称',
  `begindate` datetime DEFAULT NULL COMMENT '促销开始日期时间',
  `enddate` datetime DEFAULT NULL COMMENT '促销结束日期时间',
  `flag` varchar(1) DEFAULT NULL COMMENT '补货标识',
  `cgid` varchar(32) DEFAULT NULL COMMENT '课类编码',
  `blid` varchar(32) DEFAULT NULL COMMENT '部类编码',
  `xlid` varchar(32) DEFAULT NULL COMMENT '小类编码',
  `goodsid` varchar(32) NOT NULL COMMENT '商品编码',
  `goodsname` varchar(64) DEFAULT NULL COMMENT '商品名称',
  `price` decimal(16,2) DEFAULT NULL COMMENT '促销售价',
  `manual_flag` varchar(1) DEFAULT '0' COMMENT '采购分货标识',
  `shop_organ` varchar(64) DEFAULT NULL COMMENT '门店机构编码',
  `bl_organ_all` varchar(64) DEFAULT NULL COMMENT '部类全部机构编码',
  `kl_organ_all` varchar(64) DEFAULT NULL COMMENT '课类全部机构编码',
  `bl_organ` varchar(64) DEFAULT NULL COMMENT '部类机构编码',
  `kl_organ` varchar(64) DEFAULT NULL COMMENT '课类机构编码',
  `auto_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_1` (`serialid`,`goodsid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for zn_prom_plan
-- ----------------------------
DROP TABLE IF EXISTS `zn_prom_plan`;
CREATE TABLE `zn_prom_plan` (
  `id` varchar(36) NOT NULL COMMENT 'id',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
  `planid` varchar(32) DEFAULT NULL COMMENT '促销计划编号',
  `planname` varchar(64) DEFAULT NULL COMMENT '促销计划名称',
  `begindate` datetime DEFAULT NULL COMMENT '促销开始日期',
  `enddate` datetime DEFAULT NULL COMMENT '促销开始日期',
  `status` varchar(1) DEFAULT '1' COMMENT '状态',
  `auto_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `planid` (`planid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for zn_prom_shop
-- ----------------------------
DROP TABLE IF EXISTS `zn_prom_shop`;
CREATE TABLE `zn_prom_shop` (
  `id` varchar(36) NOT NULL COMMENT '主键',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
  `serialid` varchar(36) DEFAULT NULL COMMENT '序号',
  `shopid` varchar(8) NOT NULL COMMENT '门店编码',
  `shopname` varchar(64) DEFAULT NULL COMMENT '备注',
  `beizhu` varchar(8) DEFAULT NULL,
  `auto_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_1` (`shopid`,`serialid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for zn_refshop
-- ----------------------------
DROP TABLE IF EXISTS `zn_refshop`;
CREATE TABLE `zn_refshop` (
  `id` varchar(36) NOT NULL,
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
  `shopid` varchar(64) DEFAULT NULL COMMENT '门店编码',
  `refshop` varchar(64) DEFAULT NULL COMMENT '参照门店编码',
  `auto_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for zn_season_across
-- ----------------------------
DROP TABLE IF EXISTS `zn_season_across`;
CREATE TABLE `zn_season_across` (
  `id` int(36) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
  `shopid` varchar(8) DEFAULT NULL COMMENT '商店编码',
  `shopname` varchar(64) DEFAULT NULL COMMENT '门店名称',
  `goodsid` varchar(32) DEFAULT NULL COMMENT '商品编码',
  `goodsname` varchar(64) DEFAULT NULL COMMENT '商品名称',
  `firstdate` datetime DEFAULT NULL COMMENT '首次补货日期',
  `nextdate` datetime DEFAULT NULL COMMENT '下次补货日期',
  `begindate` varchar(64) DEFAULT NULL COMMENT '季节开始日期',
  `sdate` datetime DEFAULT NULL COMMENT '更新日期时间',
  `auto_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_1` (`shopid`,`goodsid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for zn_season_by
-- ----------------------------
DROP TABLE IF EXISTS `zn_season_by`;
CREATE TABLE `zn_season_by` (
  `ywqid` varchar(8) DEFAULT NULL,
  `xlid` varchar(16) DEFAULT NULL,
  `begindate` char(5) DEFAULT NULL,
  `enddate` char(5) DEFAULT NULL,
  `sale1` decimal(32,3) DEFAULT NULL,
  `sale2` decimal(32,3) DEFAULT NULL,
  `arrdate` varchar(5) DEFAULT NULL,
  `zs` decimal(21,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zn_season_goods
-- ----------------------------
DROP TABLE IF EXISTS `zn_season_goods`;
CREATE TABLE `zn_season_goods` (
  `id` bigint(36) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
  `shopid` varchar(8) DEFAULT NULL COMMENT '门店编码',
  `shopname` varchar(64) DEFAULT NULL COMMENT '门店名称',
  `goodsid` varchar(32) DEFAULT NULL COMMENT '商品编码',
  `goodsname` varchar(64) DEFAULT NULL COMMENT '商品名称',
  `begindate` char(5) DEFAULT NULL COMMENT '季节开始日期',
  `enddate` char(5) DEFAULT NULL COMMENT '季节结束日期',
  `avg_qty_day` decimal(16,3) DEFAULT NULL COMMENT '每个门店每只单品在季节内的周销量的平均值',
  `sdate` datetime DEFAULT NULL COMMENT '数据更新日期',
  `auto_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_1` (`goodsid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1329281610932374033 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for zn_season_xl
-- ----------------------------
DROP TABLE IF EXISTS `zn_season_xl`;
CREATE TABLE `zn_season_xl` (
  `id` bigint(36) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
  `ywqid` varchar(8) DEFAULT NULL COMMENT '业务区标识',
  `xlid` varchar(16) DEFAULT NULL COMMENT '小类编码',
  `xlname` varchar(64) DEFAULT NULL COMMENT '小类名称',
  `begindate` char(5) DEFAULT NULL COMMENT '季节开始日期',
  `enddate` char(5) DEFAULT NULL COMMENT '季节结束日期',
  `arrdate` char(5) DEFAULT NULL COMMENT '季节性商品起季是首次到货日期',
  `rate1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period1，日均销量的折扣比例',
  `period1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例1',
  `rate2` decimal(16,2) DEFAULT NULL,
  `period2` decimal(16,2) DEFAULT NULL,
  `sdate` datetime DEFAULT NULL COMMENT '数据更新日期',
  `bl_organ_all` varchar(64) DEFAULT NULL COMMENT '部类全部机构编码',
  `kl_organ_all` varchar(64) DEFAULT NULL COMMENT '课类全部机构编码',
  `auto_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `唯一值` (`ywqid`,`xlid`),
  KEY `index_1` (`xlid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1335851466715336853 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for zn_spring_xl
-- ----------------------------
DROP TABLE IF EXISTS `zn_spring_xl`;
CREATE TABLE `zn_spring_xl` (
  `ywqid` varchar(8) DEFAULT NULL,
  `ywqname` varchar(64) DEFAULT NULL,
  `holidayid` varchar(8) DEFAULT NULL,
  `holidayname` varchar(64) DEFAULT NULL,
  `xlid` varchar(16) DEFAULT NULL,
  `xlname` varchar(64) DEFAULT NULL,
  `saleall` decimal(16,2) DEFAULT NULL,
  `saleholiday` decimal(16,2) DEFAULT NULL,
  `zs` decimal(21,6) DEFAULT NULL,
  `rate` int(1) NOT NULL DEFAULT '0',
  KEY `index_1` (`xlid`,`holidayid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zn_table_status
-- ----------------------------
DROP TABLE IF EXISTS `zn_table_status`;
CREATE TABLE `zn_table_status` (
  `tableid` varchar(32) DEFAULT NULL COMMENT '表',
  `tablename` varchar(64) DEFAULT NULL COMMENT '表名称',
  `status_name` varchar(32) DEFAULT NULL COMMENT '字段状态',
  `status_value` varchar(8) DEFAULT NULL,
  `status_value_name` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for zn_trash
-- ----------------------------
DROP TABLE IF EXISTS `zn_trash`;
CREATE TABLE `zn_trash` (
  `shopid` varchar(4) DEFAULT NULL,
  `goodsid` varchar(18) DEFAULT NULL,
  KEY `index_1` (`shopid`,`goodsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zn_xl_dms
-- ----------------------------
DROP TABLE IF EXISTS `zn_xl_dms`;
CREATE TABLE `zn_xl_dms` (
  `shopid` varchar(8) DEFAULT NULL COMMENT '门店编码',
  `shopname` varchar(64) DEFAULT NULL COMMENT '门店名称',
  `xlid` varchar(32) DEFAULT NULL COMMENT '小类编码',
  `xlname` varchar(64) DEFAULT NULL COMMENT '小类名称',
  `disc1` int(11) DEFAULT NULL COMMENT '折扣比例下限',
  `disc2` int(11) DEFAULT NULL COMMENT '折扣比例上限',
  `dms_disc` decimal(16,3) DEFAULT NULL COMMENT '小类在disc1—disc2 折扣范围内的单品的日均销量',
  `dms_ori` decimal(16,3) DEFAULT NULL COMMENT '小类在原价销售时单品的日均销量',
  `sdate` datetime DEFAULT NULL COMMENT '本条记录更新或新增日期',
  `display_flag` varchar(1) DEFAULT '0' COMMENT '0—默认值，1—场外  2—堆头  3—端头',
  UNIQUE KEY `index_3` (`shopid`,`xlid`,`disc1`,`display_flag`) USING BTREE,
  KEY `index_1` (`xlid`) USING BTREE,
  KEY `index_2` (`xlid`,`shopid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for zn_xl_dms_copy
-- ----------------------------
DROP TABLE IF EXISTS `zn_xl_dms_copy`;
CREATE TABLE `zn_xl_dms_copy` (
  `shopid` varchar(8) DEFAULT NULL COMMENT '门店编码',
  `shopname` varchar(64) DEFAULT NULL COMMENT '门店名称',
  `xlid` varchar(32) DEFAULT NULL COMMENT '小类编码',
  `xlname` varchar(64) DEFAULT NULL COMMENT '小类名称',
  `disc1` int(11) DEFAULT NULL COMMENT '折扣比例下限',
  `disc2` int(11) DEFAULT NULL COMMENT '折扣比例上限',
  `dms_disc` decimal(16,3) DEFAULT NULL COMMENT '小类在disc1—disc2 折扣范围内的单品的日均销量',
  `dms_ori` decimal(16,3) DEFAULT NULL COMMENT '小类在原价销售时单品的日均销量',
  `sdate` datetime DEFAULT NULL COMMENT '本条记录更新或新增日期',
  UNIQUE KEY `index_3` (`shopid`,`xlid`,`disc1`) USING BTREE,
  KEY `index_1` (`xlid`) USING BTREE,
  KEY `index_2` (`xlid`,`shopid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for zn_xl_dms_spr
-- ----------------------------
DROP TABLE IF EXISTS `zn_xl_dms_spr`;
CREATE TABLE `zn_xl_dms_spr` (
  `shopid` varchar(8) DEFAULT NULL COMMENT '门店编码',
  `shopname` varchar(64) DEFAULT NULL COMMENT '门店名称',
  `xlid` varchar(32) DEFAULT NULL COMMENT '小类编码',
  `xlname` varchar(64) DEFAULT NULL COMMENT '小类名称',
  `disc1` int(11) DEFAULT NULL COMMENT '折扣比例下限',
  `disc2` int(11) DEFAULT NULL COMMENT '折扣比例上限',
  `dms_disc` decimal(16,3) DEFAULT NULL COMMENT '小类在disc1—disc2 折扣范围内的单品的日均销量',
  `dms_ori` decimal(16,3) DEFAULT NULL COMMENT '小类在原价销售时单品的日均销量',
  `sdate` datetime DEFAULT NULL COMMENT '本条记录更新或新增日期',
  `display_flag` varchar(1) DEFAULT '0' COMMENT '0—默认值，1—场外  2—堆头  3—端头',
  UNIQUE KEY `index_3` (`shopid`,`xlid`,`disc1`,`display_flag`) USING BTREE,
  KEY `index_1` (`xlid`) USING BTREE,
  KEY `index_2` (`xlid`,`shopid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for zyy_prom_detail
-- ----------------------------
DROP TABLE IF EXISTS `zyy_prom_detail`;
CREATE TABLE `zyy_prom_detail` (
  `id` bigint(36) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_by` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '所属部门',
  `planid` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '促销计划编号',
  `planname` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '促销计划名称',
  `begindate` datetime DEFAULT NULL COMMENT '促销开始日期时间',
  `enddate` datetime DEFAULT NULL COMMENT '促销结束日期时间',
  `shopid` varchar(8) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '门店编码',
  `xlid` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '小类编码',
  `cgid` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '课类编码',
  `blid` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '部类编码',
  `goodsid` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '商品编码',
  `goodsname` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '商品名称',
  `price` decimal(16,2) DEFAULT NULL COMMENT '促销售价',
  `planqty` decimal(16,3) DEFAULT NULL COMMENT '采购分货数量',
  `manual_flag` char(1) CHARACTER SET utf8mb4 DEFAULT '0',
  `flag` varchar(1) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '补货标识',
  `shop_organ` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '门店机构编码',
  `bl_organ_all` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '部类全部机构编码',
  `kl_organ_all` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '课类全部机构编码',
  `bl_organ` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '部类机构编码',
  `kl_organ` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '课类机构编码',
  `auto_id` bigint(20) DEFAULT NULL,
  `sdate` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `goodsid` (`goodsid`)
) ENGINE=InnoDB AUTO_INCREMENT=1873 DEFAULT CHARSET=utf8;

-- ----------------------------
-- View structure for blcode_name
-- ----------------------------
DROP VIEW IF EXISTS `blcode_name`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `blcode_name` AS select `a`.`blname` AS `blname`,`a`.`bl_organ_all` AS `bl_organ_all`,`b`.`blid` AS `blid` from (((select distinct `xinyangxiya`.`tmp_shop_bl_klid`.`blname` AS `blname`,substr(`xinyangxiya`.`tmp_shop_bl_klid`.`bl_organ`,10,3) AS `bl_organ_all` from `xinyangxiya`.`tmp_shop_bl_klid`)) `a` join (select distinct `v_zn_cgx_kl_bl`.`blid` AS `blid`,`v_zn_cgx_kl_bl`.`blname` AS `blname` from `xinyangxiya`.`v_zn_cgx_kl_bl` order by `v_zn_cgx_kl_bl`.`blid`) `b` on((`a`.`blname` = `b`.`blname`))) ;

-- ----------------------------
-- View structure for klcode_name
-- ----------------------------
DROP VIEW IF EXISTS `klcode_name`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `klcode_name` AS select `a`.`klname` AS `klname`,`a`.`kl_organ_all` AS `kl_organ_all`,`b`.`klid` AS `klid` from (((select distinct `xinyangxiya`.`tmp_shop_bl_klid`.`klname` AS `klname`,substr(`xinyangxiya`.`tmp_shop_bl_klid`.`kl_organ`,10,6) AS `kl_organ_all` from `xinyangxiya`.`tmp_shop_bl_klid`)) `a` join (select distinct `v_zn_cgx_kl_bl`.`klid` AS `klid`,`v_zn_cgx_kl_bl`.`klname` AS `klname` from `xinyangxiya`.`v_zn_cgx_kl_bl` order by `v_zn_cgx_kl_bl`.`klid`) `b` on((`a`.`klname` = `b`.`klname`))) ;

-- ----------------------------
-- View structure for test_new_view
-- ----------------------------
DROP VIEW IF EXISTS `test_new_view`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `test_new_view` AS select `x`.`shopid` AS `shopid`,`x`.`shopname` AS `shopname`,`x`.`goodsid` AS `goodsid`,`x`.`goodsname` AS `goodsname`,`x`.`salevalue` AS `salevalue`,`x`.`discvalue` AS `discvalue`,`x`.`disc` AS `disc`,`x`.`zlprice` AS `zlprice`,`x`.`normalprice` AS `normalprice`,`x`.`qty` AS `qty`,`x`.`sdate` AS `sdate`,`x`.`zkb` AS `zkb` from `tmp_everyday_dms_0` `x` ;

-- ----------------------------
-- View structure for tv_cgx_kl_bl
-- ----------------------------
DROP VIEW IF EXISTS `tv_cgx_kl_bl`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `tv_cgx_kl_bl` AS select `c`.`code` AS `blid`,`c`.`name` AS `blname`,`a`.`code` AS `klid`,`a`.`name` AS `klname`,`a`.`code` AS `cgid`,`a`.`name` AS `cgname`,concat(cast(`a`.`code` as char(2) charset utf8),`a`.`name`) AS `cg`,`a`.`code` AS `cgid_hb`,concat(cast(`c`.`code` as char(1) charset utf8),`c`.`name`) AS `dept1`,concat(cast(`c`.`code` as char(1) charset utf8),`c`.`name`) AS `dept2` from (`tb_comm_sort` `a` join `tb_comm_sort` `c`) where ((`a`.`nature` = 1) and (`c`.`nature` = 0) and (floor((`a`.`code` / 10)) = `c`.`code`)) ;

-- ----------------------------
-- View structure for v_goods
-- ----------------------------
DROP VIEW IF EXISTS `v_goods`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `v_goods` AS select `goods`.`goodsid` AS `goodsid`,`goods`.`barcodeid` AS `barcodeid`,`goods`.`deptid` AS `deptid`,`goods`.`xlname` AS `xlname`,`goods`.`name` AS `name`,`goods`.`flag` AS `flag`,`goods`.`status` AS `status`,`goods`.`brand` AS `brand`,`goods`.`spec` AS `spec`,`goods`.`indate` AS `indate`,`goods`.`deleted` AS `deleted`,`goods`.`minorderqty` AS `minorderqty`,`goods`.`oneoff` AS `oneoff`,`goods`.`begindate` AS `begindate`,`goods`.`enddate` AS `enddate`,`goods`.`conversion` AS `conversion` from `goods` ;

-- ----------------------------
-- View structure for v_goodsname
-- ----------------------------
DROP VIEW IF EXISTS `v_goodsname`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `v_goodsname` AS select `a`.`code` AS `goodsid`,`a`.`name` AS `name` from `tb_commodity` `a` where (left(`a`.`sort`,1) <> 2) ;

-- ----------------------------
-- View structure for v_isstore
-- ----------------------------
DROP VIEW IF EXISTS `v_isstore`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `v_isstore` AS select `v_store`.`shopid` AS `shopid`,`v_store`.`cgid` AS `cgid`,`v_store`.`venderid` AS `venderid` from `v_store` ;

-- ----------------------------
-- View structure for v_minorder
-- ----------------------------
DROP VIEW IF EXISTS `v_minorder`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `v_minorder` AS select `minorder`.`shopid` AS `shopid`,`minorder`.`goodsid` AS `goodsid`,`minorder`.`minorderqty` AS `minorderqty`,`minorder`.`minstockqty` AS `minstockqty` from `minorder` ;

-- ----------------------------
-- View structure for v_shopname
-- ----------------------------
DROP VIEW IF EXISTS `v_shopname`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `v_shopname` AS select `tb_organ`.`organ` AS `shopid`,`tb_organ`.`name` AS `shopname` from `tb_organ` where ((`tb_organ`.`nature` <> 0) and (abs(`tb_organ`.`state`) = 0) and (`tb_organ`.`nature` <> 2) and (`tb_organ`.`organ` <> '0092')) ;

-- ----------------------------
-- View structure for v_shopsstock
-- ----------------------------
DROP VIEW IF EXISTS `v_shopsstock`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `v_shopsstock` AS select `v_shopsstock_d`.`shopid` AS `shopid`,`v_shopsstock_d`.`goodsid` AS `goodsid`,`v_shopsstock_d`.`qty` AS `qty`,`v_shopsstock_d`.`costvalue` AS `costvalue` from `v_shopsstock_d` ;

-- ----------------------------
-- View structure for v_stock_store
-- ----------------------------
DROP VIEW IF EXISTS `v_stock_store`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `v_stock_store` AS select `v_storeqty`.`goodsid` AS `goodsid`,`v_storeqty`.`qty` AS `qty` from `v_storeqty` ;

-- ----------------------------
-- View structure for v_tgoods
-- ----------------------------
DROP VIEW IF EXISTS `v_tgoods`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `v_tgoods` AS select `tgoods`.`goodsid` AS `goodsid` from `tgoods` ;

-- ----------------------------
-- View structure for v_vender
-- ----------------------------
DROP VIEW IF EXISTS `v_vender`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `v_vender` AS select `tb_provider`.`code` AS `venderid`,`tb_provider`.`name` AS `vendername`,`tb_provider`.`send_type` AS `send_type`,(case `tb_provider`.`send_type` when 1 then '配送' when 2 then '直配' when 3 then '店采' end) AS `send_typename` from `tb_provider` ;

-- ----------------------------
-- View structure for v_zn_cgx_kl_bl
-- ----------------------------
DROP VIEW IF EXISTS `v_zn_cgx_kl_bl`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `v_zn_cgx_kl_bl` AS select `a`.`blid` AS `blid`,`a`.`blname` AS `blname`,`a`.`klid` AS `klid`,`a`.`klname` AS `klname`,`a`.`cgid` AS `cgid`,`a`.`cgname` AS `cgname`,`a`.`cg` AS `cg`,`a`.`cgid_hb` AS `cgid_hb`,`a`.`dept1` AS `dept1`,`a`.`dept2` AS `dept2`,concat(cast(`a`.`cgid_hb` as char(3) charset utf8),`b`.`name`) AS `cg_hb`,(case when (`a`.`blid` = 1) then 30 when (`a`.`blid` > 2) then 45 else 0 end) AS `saleabledays`,(case when (`a`.`blid` = 1) then 30 when (`a`.`blid` > 2) then 60 else 0 end) AS `nosaledays` from (`tv_cgx_kl_bl` `a` join `tb_comm_sort` `b`) where ((`a`.`cgid_hb` = `b`.`code`) and (`a`.`blid` <> 2)) ;

-- ----------------------------
-- View structure for v_zn_cg_dl_zl_xl
-- ----------------------------
DROP VIEW IF EXISTS `v_zn_cg_dl_zl_xl`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `v_zn_cg_dl_zl_xl` AS select `v_cg_dl_zl_xl`.`cgid` AS `cgid`,`v_cg_dl_zl_xl`.`cgname` AS `cgname`,`v_cg_dl_zl_xl`.`cg` AS `cg`,`v_cg_dl_zl_xl`.`dlid` AS `dlid`,`v_cg_dl_zl_xl`.`dlname` AS `dlname`,`v_cg_dl_zl_xl`.`dl` AS `dl`,`v_cg_dl_zl_xl`.`zlid` AS `zlid`,`v_cg_dl_zl_xl`.`zlname` AS `zlname`,`v_cg_dl_zl_xl`.`zl` AS `zl`,`v_cg_dl_zl_xl`.`xlid` AS `xlid`,`v_cg_dl_zl_xl`.`xlname` AS `xlname`,`v_cg_dl_zl_xl`.`xl` AS `xl`,`v_cg_dl_zl_xl`.`pdtjflag` AS `pdtjflag`,`v_cg_dl_zl_xl`.`qdhtj` AS `qdhtj` from `v_cg_dl_zl_xl` ;

-- ----------------------------
-- View structure for v_zn_goodsshop
-- ----------------------------
DROP VIEW IF EXISTS `v_zn_goodsshop`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `v_zn_goodsshop` AS select `v_goodsshop`.`shopid` AS `shopid`,`v_goodsshop`.`shopname` AS `shopname`,`v_goodsshop`.`goodsid` AS `goodsid`,`v_goodsshop`.`goodsname` AS `goodsname`,`v_goodsshop`.`venderid` AS `venderid`,`v_goodsshop`.`flag` AS `flag`,`v_goodsshop`.`status` AS `status`,`v_goodsshop`.`stocktype` AS `stocktype`,`v_goodsshop`.`stocktypename` AS `stocktypename`,`v_goodsshop`.`logistics` AS `logistics`,`v_goodsshop`.`normalprice` AS `normalprice`,`v_goodsshop`.`goodsdate` AS `goodsdate`,`v_goodsshop`.`Deleted` AS `Deleted`,`v_goodsshop`.`isjpg` AS `isjpg` from `v_goodsshop` ;

-- ----------------------------
-- View structure for v_zn_md_yt_ywq
-- ----------------------------
DROP VIEW IF EXISTS `v_zn_md_yt_ywq`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `v_zn_md_yt_ywq` AS select 8001 AS `ywqid`,'信阳西亚' AS `ywqname`,`b`.`organ` AS `shopid`,`b`.`name` AS `shopname`,concat(`b`.`organ`,`b`.`name`) AS `shop`,`b`.`nature` AS `ytid`,(case `b`.`nature` when 2 then 21 else 11 end) AS `shoptype`,(case `b`.`state` when -(1) then 0 else 1 end) AS `zt`,(case `b`.`nature` when 4 then '大卖场' when 5 then '标超' when 1 then '配送中心' end) AS `ytname`,(case `b`.`nature` when 4 then '1大卖场' when 5 then '2标超' when 1 then '3配送中心' end) AS `yt`,(case `b`.`centerid` when 0 then `b`.`organ` else `b`.`centerid` end) AS `shopid_hb`,(case `b`.`centerid` when 0 then concat(`b`.`organ`,`b`.`name`,'a') else concat(`c`.`organ`,`c`.`name`,'a') end) AS `shop_hb` from (`tb_organ` `b` join `tb_organ` `c`) where ((`b`.`nature` <> 0) and (abs(`b`.`state`) = 0) and (`b`.`centerid` = `c`.`organ`) and (`b`.`nature` <> 2) and (`b`.`organ` <> '0092')) ;

-- ----------------------------
-- Procedure structure for bateer_test_before_loop1
-- ----------------------------
DROP PROCEDURE IF EXISTS `bateer_test_before_loop1`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `bateer_test_before_loop1`(IN `this_day` date)
BEGIN

	##ABC分类需要销售数据的时长
  declare  week_num int;
  
	select value into week_num from zn_param where id=1;
	
  ##ABC分类
	CALL proc_dms1 (this_day,week_num);
	
	
  #旧数据导入历史表，清理zn_goods
	delete from zn_goods_his_man where date_format(sdate,'%Y-%m-%d')=date_add(this_day,INTERVAL -1 day);
	INSERT INTO zn_goods_his_man( shopid, xlid, goodsid,goodsname, venderid,vendername,send_type,classtype, normalprice,spec, minstock , minorder , closeqty , qty ,manual_qty, flag , sdate, holiday_begindate , seasontype , holidaytype , holiday_enddate , rate , zs ,ho_rate,trueprice,display_flag,storeqty)
	SELECT  x.shopid            AS shopid
				,x.xlid              AS xlid
				,x.goodsid           AS goodsid
				,x.goodsname         as goodsname
        ,x.venderid          as venderid
				,x.vendername        as vendername
				,x.send_type         as send_type
				,x.classtype         AS classtype
       ,x.normalprice       AS normalprice
       ,x.spec              as spec
       ,x.minstock          AS minstock
       ,x.minorder          AS minorder
       ,x.closeqty          AS closeqty
       ,x.qty               AS qty
       ,x.manual_qty        AS manual_qty
       ,x.flag              AS flag
       ,now()            AS sdate
       ,x.holiday_begindate AS holiday_begindate
       ,x.seasontype        AS seasontype
       ,x.holidaytype       AS holidaytype
       ,x.holiday_enddate   AS holiday_enddate
       ,x.rate              AS rate
       ,x.zs                AS zs
       ,x.ho_rate           AS ho_rate
			,x.trueprice as trueprice
			,x.display_flag as display_flag
			,x.storeqty as storeqty
FROM zn_goods x; 

	TRUNCATE TABLE zn_goods;
 
	#处理每日将上一日的促销保存到zn_prom_tmp
CALL everyday_before_dms(this_day);
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for bateer_test_main
-- ----------------------------
DROP PROCEDURE IF EXISTS `bateer_test_main`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `bateer_test_main`(IN `this_day` date)
BEGIN
	#Routine body goes here...
	call bateer_test_before_loop1(this_day);
	call loop1(this_day);
	call bateer_test_after_loop1(this_day);
	call bateer_test_before_loop2(this_day);
		call loop1(this_day);
	call bateer_test_after_loop2(this_day);

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for catchname
-- ----------------------------
DROP PROCEDURE IF EXISTS `catchname`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `catchname`(in begindate date,in enddate date,in tablename varchar(64),out tables varchar(1024))
label:begin
  declare Err int;
  declare BreakPoint int;
  declare Msg varchar(255);
  declare strTableName char(32);
  declare str1 char(4);
  declare str2 char(2);

  if enddate<begindate 
  then
    set Msg='取表名时出错！@enddate<@begindate',BreakPoint=359550;
    leave label;
  end if;

  set tables=ltrim(rtrim(tablename));
  set str1=Year(begindate);
  set str2=Month(begindate);
  if length(str2)=1 then 
    set str2=CONCAT('0',str2);
  end if;
  set strTableName=concat(ltrim(rtrim(tablename)),str1,str2);
  if exists (select * from information_schema.tables where table_schema='xinyangxiya' and table_name=strTableName) then  
    set tables=concat(ltrim(rtrim(tables)),',',ltrim(rtrim(strtablename)));
  end if;
   
  while not ((Year(begindate)=Year(enddate)) and (Month(begindate)=Month(enddate))) do
    set begindate=date_add(begindate,INTERVAL 1 month);
    set str1=Year(begindate);
    set str2=Month(begindate);
    if length(str2)=1 then 
      set str2=concat('0',str2);
    end if;
    set strTableName=concat(ltrim(rtrim(tablename)),str1,str2);
    if exists (select * from information_schema.tables where table_schema='xinyangxiya' and table_name=strTableName) then
      set tables=concat(ltrim(rtrim(tables)),',',ltrim(rtrim(strtablename)));
    end if;
  end while;
  set Err=99,Msg='取表名时出错！',BreakPoint=359551;
  if (Err is null) or (Err!=0)  then 
    leave label;
  end if;
  leave label;
  
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for CreateDateTable
-- ----------------------------
DROP PROCEDURE IF EXISTS `CreateDateTable`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `CreateDateTable`(IN `p_startTime` datetime,IN `p_endTime` datetime)
BEGIN
	#Routine body goes here...
  declare etKdd int;
  declare etKmmStr varchar(64);
  declare etKddStr varchar(64);
  declare etKwwStr varchar(64);
  declare etKqqStr varchar(64);
  declare start_Time datetime;
  declare end_Time datetime;
  declare type_Time int;
  declare mdbh varchar(50);

	create TEMPORARY table if not exists etTime_TempTable(
   ID int auto_increment PRIMARY KEY,
   日期列 datetime,
   门店编号列 varchar(50)
  );
  DELETE FROM etTime_TempTable;

  set start_Time=p_startTime;/*设置起始时间*/
  set end_Time=p_endTime;/*设置终止时间*/

	set type_Time=1;   /*生成类型 1为天 2为周 3为月 4为季度 5为年*/
	set mdbh='zlwy4000480006';
loop1:	WHILE start_Time<=end_Time /**/
	do
	  set etKdd=DATE_FORMAT(start_Time,'%d');
	  set etKddStr=cast(etKdd as char(64));

    set etKdd=DATE_FORMAT(start_Time,'%m');
	  set etKmmStr=cast(etKdd as char(64));

	  set etKdd=DATE_FORMAT(start_Time,'%V');
	  set etKwwStr=cast(etKdd as char(64));

		set etKdd=quarter(start_Time);
	  set etKqqStr=cast(etKdd as char(64));

	  if type_Time=1 
		then
			INSERT INTO etTime_TempTable (日期列,门店编号列) VALUES (CONCAT(cast(DATE_FORMAT(start_Time,'%Y')as char(64)),'-',etKmmStr,'-',etKddStr),mdbh);
	    SET start_Time=DATE_ADD(start_Time,INTERVAL 1 DAY);
		End if;

		if type_Time=2
		THEN
			INSERT INTO etTime_TempTable (日期列,门店编号列) VALUES (CONCAT(cast(DATE_FORMAT(start_Time,'%Y')as char(64)),'-',etKwwStr),mdbh);
			SET start_Time=DATE_ADD(start_Time,INTERVAL 1 WEEK);
		End IF;

		if type_Time=3
		THEN
			INSERT INTO etTime_TempTable (日期列,门店编号列) VALUES (CONCAT(cast(DATE_FORMAT(start_Time,'%Y')as char(64)),'-',etKmmStr),mdbh);
			SET start_Time=DATE_ADD(start_Time,INTERVAL 1 MONTH);
		End IF;

		if type_Time=4
		THEN
			INSERT INTO etTime_TempTable (日期列,门店编号列) VALUES (CONCAT(cast(DATE_FORMAT(start_Time,'%Y')as char(64)),'-',etKqqStr),mdbh);
			SET start_Time=DATE_ADD(start_Time,INTERVAL 1 QUARTER);
		End IF;

		if type_Time=5
    THEN
			INSERT INTO etTime_TempTable (日期列,门店编号列) VALUES (cast(DATE_FORMAT(start_Time,'%Y')as char(64)),mdbh);
			SET start_Time=DATE_ADD(start_Time,INTERVAL 1 YEAR); /*循环开始时间加1 直到等于设置的终止时间*/
		End IF;

    ITERATE loop1;
	End WHILE;

	/*查询临时表*/
	drop table if exists datetable;
  create table datetable (
	select 日期列 as sdate from  etTime_TempTable);

	/*删除临时表*/
	Drop temporary Table etTime_TempTable;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for createindex
-- ----------------------------
DROP PROCEDURE IF EXISTS `createindex`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `createindex`()
BEGIN
declare tn varchar(128);
declare d date;

set d='2020-05-01';
set tn=concat('tb_sell_waste_all',left(DATE_FORMAT(d,'%Y%m%d'),6));
while d>='2018-04-01' 
DO
	set @sql=concat('create index index_1 on ',tn,' (selldate, organ, receid, posid)');
	PREPARE stmt from @sql;
  execute stmt;
  deallocate prepare stmt;
set d=date_add(d,interval -1 month);
set tn=concat('tb_sell_waste_all',left(DATE_FORMAT(d,'%Y%m%d'),6));
end while;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for daily_dms
-- ----------------------------
DROP PROCEDURE IF EXISTS `daily_dms`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `daily_dms`(IN `shopid` varchar(64),IN `thisday` date)
BEGIN

DECLARE springFesitvalBegin date;
DECLARE springFestivalEnd date;
DECLARE beginOfYear date;
DECLARE endOfYear date;

SET beginOfYear=str_to_date(CONCAT(date_format(now(),'%Y'),'-01-01'),'%Y-%m-%d');
SET endOfYear=str_to_date(CONCAT(date_format(now(),'%Y'),'-12-31'),'%Y-%m-%d');
SET springFesitvalBegin=(SELECT zn_calendar.startdate FROM zn_calendar WHERE zn_calendar.holidayid+0=1 AND 
		zn_calendar.sundate>beginOfYear AND zn_calendar.sundate<endOfYear LIMIT 1);
SET springFestivalEnd=(SELECT zn_calendar.enddate FROM zn_calendar WHERE zn_calendar.holidayid+0=1 AND 
		zn_calendar.sundate>beginOfYear AND zn_calendar.sundate<endOfYear LIMIT 1);


#a0.判断zn_price_dms正常售价+是否变化：zn_goods中的normal是最新的正常售价。
#如果正常售价变化要更新，价格段也要随之进行调整。

#a1 春节期间所有商品在节日期间停止更新dms
IF NOT(thisDay<=date_add(springFestivalEnd,interval 8 day) AND thisDay>=springFesitvalBegin) 
THEN 
	CALL daily_dms_sub(shopId,thisDay);
else 
	call dms_test(shopId,thisDay);
END IF;



END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for daily_dms_spr
-- ----------------------------
DROP PROCEDURE IF EXISTS `daily_dms_spr`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `daily_dms_spr`(IN `shopid` varchar(64),IN `thisday` date)
BEGIN

DECLARE springFesitvalBegin date;
DECLARE springFestivalEnd date;
DECLARE beginOfYear date;
DECLARE endOfYear date;

SET beginOfYear=str_to_date(CONCAT(date_format(now(),'%Y'),'-01-01'),'%Y-%m-%d');
SET endOfYear=str_to_date(CONCAT(date_format(now(),'%Y'),'-12-31'),'%Y-%m-%d');
SET springFesitvalBegin=(SELECT zn_calendar.startdate FROM zn_calendar WHERE zn_calendar.holidayid+0=1 AND 
		zn_calendar.sundate>beginOfYear AND zn_calendar.sundate<endOfYear LIMIT 1);
SET springFestivalEnd=(SELECT zn_calendar.enddate FROM zn_calendar WHERE zn_calendar.holidayid+0=1 AND 
		zn_calendar.sundate>beginOfYear AND zn_calendar.sundate<endOfYear LIMIT 1);


#a0.判断zn_price_dms正常售价+是否变化：zn_goods中的normal是最新的正常售价。
#如果正常售价变化要更新，价格段也要随之进行调整。

#a1 春节期间所有商品在节日期间停止更新dms
IF NOT(thisDay<=springFestivalEnd AND thisDay>=springFesitvalBegin) THEN CALL daily_dms_sub(shopId,thisDay);
END IF;



END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for daily_dms_spr_test
-- ----------------------------
DROP PROCEDURE IF EXISTS `daily_dms_spr_test`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `daily_dms_spr_test`(IN `shopid` varchar(64),IN `thisday` date)
BEGIN

DECLARE springFesitvalBegin date;
DECLARE springFestivalEnd date;
DECLARE beginOfYear date;
DECLARE endOfYear date;

SET beginOfYear=str_to_date(CONCAT(date_format(now(),'%Y'),'-01-01'),'%Y-%m-%d');
SET endOfYear=str_to_date(CONCAT(date_format(now(),'%Y'),'-12-31'),'%Y-%m-%d');
SET springFesitvalBegin=(SELECT zn_calendar.startdate FROM zn_calendar WHERE zn_calendar.holidayid=01 AND 
		zn_calendar.sundate>beginOfYear AND zn_calendar.sundate<endOfYear LIMIT 1);
SET springFestivalEnd=(SELECT zn_calendar.enddate FROM zn_calendar WHERE zn_calendar.holidayid=01 AND 
		zn_calendar.sundate>beginOfYear AND zn_calendar.sundate<endOfYear LIMIT 1);


#a0.判断zn_price_dms正常售价+是否变化：zn_goods中的normal是最新的正常售价。
#如果正常售价变化要更新，价格段也要随之进行调整。

SELECT thisDay,springFesitvalBegin;
#a1 春节期间所有商品在节日期间停止更新dms
IF NOT(thisDay<=springFestivalEnd AND thisDay>=springFesitvalBegin) THEN CALL daily_dms_sub_spr(shopId,thisDay);
END IF;



END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for daily_dms_sub
-- ----------------------------
DROP PROCEDURE IF EXISTS `daily_dms_sub`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `daily_dms_sub`(IN `shopid` varchar(64),IN `thisday` date)
BEGIN
DECLARE today date;
declare springed date;
SELECT  version()
       ,@@sql_mode;

SET sql_mode=(
SELECT  REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY','')); ##CALL classify_new();
SET today=thisDay;
#CALL proc_tmpdayly(DATE_SUB(thisDay,INTERVAL 2 DAY),thisDay);
select enddate into springed from zn_calendar where holidayid='01' and year(sundate)=year(today);

drop temporary table if exists tmp_dms1;
create temporary table tmp_dms1(
  select b.goodsid,d.weeknum from  v_goods b  
join v_cg_dl_zl_xl c on b.deptid=c.xlid 
join zn_dms_week d on c.cgid=d.cgid 
);
create unique index index_1 on tmp_dms1(goodsid);
#a. 用zn_daly_sales近2周数据计算正常售价（ zlprice /normalprice>=0.95）的日均销量=2周正常售价销售数量/（14-促销有销售周天数）。
#更新zn_price_dms中正常售价对应的dms

#计算价格段(全部数据，未groupby)
DROP TABLE IF EXISTS tmp_everyday_dms_0;
CREATE TABLE `tmp_everyday_dms_0` (
`shopid`  varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`shopname`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`goodsid`  varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`goodsname`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`salevalue`  decimal(16,2) NULL DEFAULT NULL ,
`discvalue`  decimal(16,2) NULL DEFAULT NULL ,
`disc`  int(16) NULL DEFAULT NULL ,
`zlprice`  decimal(16,2) NULL DEFAULT NULL ,
`normalprice`  decimal(16,2) NULL DEFAULT NULL ,
`qty`  decimal(16,3) NULL DEFAULT NULL ,
`sdate`  date NULL DEFAULT NULL ,
`zkb`  decimal(16,2) NULL DEFAULT NULL ,
INDEX `index_1` (`shopid`, `goodsid`, `zkb`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
ROW_FORMAT=DYNAMIC;

INSERT INTO `tmp_everyday_dms_0`
(`shopid`,
`shopname`,
`goodsid`,
`goodsname`,
`salevalue`,
`discvalue`,
`disc`,
`zlprice`,
`normalprice`,
`qty`,
`sdate`,
`zkb`)
SELECT  x.shopid                                                                   AS shopid
       ,x.shopname                                                                 AS shopname
       ,x.goodsid                                                                  AS goodsid
       ,x.goodsname                                                                AS goodsname
       ,x.salevalue  			                                                         AS salevalue
       ,x.discvalue			                                                           AS discvalue
       ,x.zlprice/x.normalprice											                               AS disc
       ,x.zlprice                                                                  AS zlprice
       ,x.normalprice                                                              AS normalprice
       ,x.qty			                                                                 AS qty
       ,x.sdate                                                                    AS sdate
       ,getZKB(x.zlprice,x.normalprice)                                            AS zkb
FROM zn_dayly_sales x join tmp_dms1 d on x.goodsid=d.goodsid
WHERE  x.sdate<today and x.sdate>=DATE_SUB(today,INTERVAL if(datediff(today,springed)<d.weeknum*7 and datediff(today,springed)>0,floor(datediff(today,springed)/7)*7,d.weeknum*7) DAY) 
AND x.shopid=shopId;

##节日专属商品节日期间停止更新dms
/*delete a from tmp_everyday_dms_0 a join v_zn_md_yt_ywq b on a.shopid=b.shopid join zn_holiday_goods c on b.ywqid=c.ywqid and a.goodsid=c.goodsid and c.holidayid!='01'
join zn_calendar d on c.holidayid=d.holidayid and year(d.sundate)=year(today)
where d.begindate<=today and d.enddate>=today;*/

#每个价格段汇总，取主力售价对应的销售最多的
DROP TABLE IF EXISTS tmp_everyday_dms_00;
CREATE TABLE `tmp_everyday_dms_00` (
`shopid`  varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`goodsid`  varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`zlprice`  decimal(16,2) NULL DEFAULT NULL ,
`qty`  decimal(16,3) NULL DEFAULT NULL ,
`zkb`  decimal(16,2) NULL DEFAULT NULL ,
INDEX `index_1` (`shopid`, `goodsid`, `zkb`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
ROW_FORMAT=DYNAMIC;

INSERT INTO `tmp_everyday_dms_00`
(`shopid`,
`goodsid`,
`zlprice`,
`qty`,
`zkb`)
SELECT 
				x.shopid																																	 AS shopid
#       ,x.shopname                                                                 AS shopname
       ,x.goodsid                                                                  AS goodsid
#       ,x.goodsname                                                                AS goodsname
#       ,SUM(x.salevalue)  			                                                   AS salevalue
#       ,SUM(x.discvalue)		                                                       AS discvalue
#       ,0																						                               AS disc
       ,x.zlprice		               		                                             AS zlprice
#       ,x.normalprice                                                              AS normalprice
       ,SUM(x.qty)	                                                               AS qty
#       ,x.sdate                                                                    AS sdate
       ,x.zkb													                                             AS zkb
FROM tmp_everyday_dms_0 x 
GROUP BY x.shopid
         ,x.goodsid
         ,x.zkb
				 ,x.zlprice;
create index index_2 on tmp_everyday_dms_00(shopid,goodsid,zkb,zlprice,qty);

drop temporary table if exists tmp_1;
create temporary table tmp_1(
	select shopid,goodsid,zkb,zlprice,max(qty) as mqty from tmp_everyday_dms_00 group by shopid,goodsid,zlprice,zkb
);
create unique index index_k on tmp_1(shopid,goodsid,zkb,zlprice,mqty);

DROP TABLE IF EXISTS tmp_everyday_dms_000;
CREATE TABLE `tmp_everyday_dms_000` (
`shopid`  varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`goodsid`  varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`zlprice`  decimal(16,2) NULL DEFAULT NULL ,
`qty`  decimal(16,3) NULL DEFAULT NULL ,
`zkb`  decimal(16,2) NULL DEFAULT NULL ,
INDEX `index_1` (`shopid`, `goodsid`, `zkb`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
ROW_FORMAT=DYNAMIC;

INSERT INTO `tmp_everyday_dms_000`
(`shopid`,
`goodsid`,
`zlprice`,
`qty`,
`zkb`)
SELECT 
				x.shopid																																	 AS shopid
#       ,x.shopname                                                                 AS shopname
       ,x.goodsid                                                                  AS goodsid
#       ,x.goodsname                                                                AS goodsname
#       ,SUM(x.salevalue)  			                                                   AS salevalue
#       ,SUM(x.discvalue)		                                                       AS discvalue
#       ,0																						                               AS disc
       ,x.zlprice		               		                                             AS zlprice
#       ,x.normalprice                                                              AS normalprice
       ,x.qty	                                                               AS qty
#       ,x.sdate                                                                    AS sdate
       ,x.zkb													                                             AS zkb
FROM tmp_everyday_dms_00 x join tmp_1 y on x.shopid=y.shopid and x.goodsid=y.goodsid and x.zkb=y.zkb and x.zlprice=y.zlprice and x.qty=y.mqty;



#汇总

DROP TABLE IF EXISTS tmp_everyday_tmp_1;
CREATE TABLE tmp_everyday_tmp_1 (
shopid  varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
shopname  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
goodsid  varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
goodsname  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
salevalue  decimal(16,2) NULL DEFAULT NULL ,
discvalue  decimal(16,2) NULL DEFAULT NULL ,
disc  decimal(16,2) NULL DEFAULT NULL ,
zlprice  decimal(16,2) NULL DEFAULT NULL ,
normalprice  decimal(16,2) NULL DEFAULT NULL ,
qty  decimal(16,3) NULL DEFAULT NULL ,
sdate  date NULL DEFAULT NULL ,
zkb  decimal(16,2) NULL DEFAULT NULL ,
dayNumber  int DEFAULT 0 ,
discDayNumber  int DEFAULT 0 ,
INDEX index_1 (shopid, goodsid, zkb) USING BTREE 
)
ENGINE=InnoDB 
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci 
ROW_FORMAT=DYNAMIC;


#主力价格回插
UPDATE tmp_everyday_dms_0 x LEFT JOIN tmp_everyday_dms_000 y ON x.shopid=shopid AND y.shopid=shopid 
AND x.goodsid=y.goodsid AND x.zkb=y.zkb 
SET x.zlprice=y.zlprice;


INSERT INTO tmp_everyday_tmp_1(shopid, shopname, goodsid, goodsname, salevalue, 
discvalue, disc, zlprice, normalprice, qty, sdate, zkb, dayNumber, discDayNumber)
SELECT  x.shopid                                                                   AS shopid
       ,x.shopname                                                                 AS shopname
       ,x.goodsid                                                                  AS goodsid
       ,x.goodsname                                                                AS goodsname
       ,SUM(x.salevalue)                                                           AS salevalue
       ,SUM(x.discvalue)                                                           AS discvalue
       ,0																						                               AS disc
       ,x.zlprice                                                                  AS zlprice
       ,x.normalprice                                                              AS normalprice
       ,SUM(x.qty)                                                                 AS qty
       ,x.sdate                                                                    AS sdate
       ,zkb														                                             AS zkb
       ,COUNT(x.zlprice)                                                           AS dayNumber
       ,COUNT(IF((x.zlprice<(getZKB(x.zlprice,x.normalprice)*x.normalprice)),1,0)) AS discDayNumber
FROM tmp_everyday_dms_0 x 
where x.qty!=0 or x.zlprice!=0
GROUP BY  x.shopid
         ,x.goodsid
         ,x.zlprice;


DROP TABLE IF EXISTS tmp_everyday_tmp_2;
CREATE TABLE tmp_everyday_tmp_2 (
shopid  varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
shopname  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
goodsid  varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
goodsname  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
xlid  varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品类别（小类）' ,
xlname varchar(64) DEFAULT NULL COMMENT '小类名称',
salevalue  decimal(16,2) NULL DEFAULT NULL ,
discvalue  decimal(16,2) NULL DEFAULT NULL ,
disc  decimal(16,2) NULL DEFAULT NULL ,
normalprice  decimal(16,2) NULL DEFAULT NULL ,
zlprice  decimal(16,2) NULL DEFAULT NULL ,
qty  decimal(16,3) NULL DEFAULT NULL ,
zkb  decimal(16,2) NULL DEFAULT NULL ,
allDayNumber  int,
discDayNumber  int,
isnotprom int DEFAULT 0,
INDEX index_1 (shopid, goodsid) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
ROW_FORMAT=DYNAMIC;


INSERT INTO tmp_everyday_tmp_2(shopid, shopname, goodsid, goodsname, 
salevalue, discvalue, disc, normalprice,zlprice, qty, zkb, allDayNumber, discDayNumber)
SELECT  y.shopid                                      AS shopid
       ,y.shopname                                    AS shopname
       ,y.goodsid                                     AS goodsid
       ,y.goodsname                                   AS goodsname
       ,SUM(y.salevalue)                              AS salevalue
       ,SUM(y.discvalue)                              AS discvalue
       ,SUM(y.salevalue)/SUM(y.salevalue+y.discvalue) AS disc
       ,y.normalprice                                 AS normalprice
       ,y.zlprice                                		  AS zlprice
       ,SUM(y.qty)                                    AS qty
       ,y.zkb                                         AS zkb
       ,SUM(y.dayNumber)                          		AS allDayNumber
       ,SUM(y.discDayNumber)                          AS discDayNumber
FROM tmp_everyday_tmp_1 y
GROUP BY  y.shopid
         ,y.goodsid
         ,y.zkb;


# 销售数量求和
DROP TABLE IF EXISTS tmp_everyday_tmp_2_1;
CREATE TABLE tmp_everyday_tmp_2_1 (
shopid  varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
goodsid  varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
dayNumberSum  INT DEFAULT NULL ,
INDEX index_1 (shopid, goodsid) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
ROW_FORMAT=DYNAMIC;


INSERT INTO tmp_everyday_tmp_2_1 (shopid,goodsid,dayNumberSum)
SELECT  z.shopid
       ,z.goodsid
       ,SUM(z.allDayNumber) AS dayNumberSum
FROM tmp_everyday_tmp_2 z
WHERE z.zkb<0.95 
GROUP BY  z.shopid
         ,z.goodsid;


UPDATE tmp_everyday_tmp_2 a join tmp_dms1 b on a.goodsid=b.goodsid
SET a.allDayNumber=b.weeknum*7 WHERE a.zkb=0.95;


UPDATE tmp_everyday_tmp_2 a join tmp_everyday_tmp_2_1 b on a.shopid=b.shopid AND a.goodsid=b.goodsid
SET a.allDayNumber=(a.allDayNumber-b.dayNumberSum),a.isnotprom=1
WHERE a.zkb=0.95;

DELETE a FROM tmp_everyday_tmp_2 a WHERE a.allDayNumber<7 AND a.isnotprom=1;

INSERT INTO zn_price_dms (shopid,goodsid,normalprice,disc1,disc2,band1,band2,trueprice,dms,sdate,display_flag)
SELECT 
a.shopid AS shopid,
a.goodsid AS goodsid,
a.normalprice AS normalprice,
a.zkb*100 AS disc1,
CASE WHEN (a.zkb<0.95) THEN (a.zkb+0.05)*100
            ELSE 5000 END AS disc2,
a.zkb*20 AS band1,
CASE WHEN (a.zkb*20<19) THEN a.zkb*20+1
												ELSE 1000 END AS band2,
a.zlprice AS trueprice,
a.qty/a.allDayNumber AS dms,  #销售数量
now() as sdate,
0 as display_flag
FROM tmp_everyday_tmp_2 a WHERE a.zkb=0.95 AND (a.qty/a.allDayNumber)<>0.0
ON DUPLICATE KEY UPDATE
zn_price_dms.shopid=VALUES(shopid),
zn_price_dms.goodsid=VALUES(goodsid),
zn_price_dms.normalprice=VALUES(normalprice),
zn_price_dms.disc1=VALUES(disc1),
zn_price_dms.disc2=VALUES(disc2),
zn_price_dms.band1=VALUES(band1),
zn_price_dms.band2=VALUES(band2),
zn_price_dms.trueprice=a.zlprice,
zn_price_dms.dms=VALUES(dms),
zn_price_dms.sdate=now(),
zn_price_dms.display_flag=VALUES(display_flag);

##节日专属商品停止累计促销数量和天数
/*drop temporary table if exists tmp_hg;
create temporary table tmp_hg(
	select a.*
	from zn_prom_detail_tmp a join v_zn_md_yt_ywq b on a.shopid=b.shopid join zn_holiday_goods c on b.ywqid=c.ywqid and a.goodsid=c.goodsid and c.holidayid!='01'
			join zn_calendar d on c.holidayid=d.holidayid and year(d.sundate)=year(today)
);*/
#b0.更新上一日销售数据到zn_prom_detail_tmp中
UPDATE zn_prom_detail_tmp x 
SET x.totalDays=CASE WHEN ISNULL(x.totalDays) THEN 1 
										ELSE x.totalDays+1 END 
WHERE x.shopid=shopid AND x.begindate<today AND DATE_ADD(DATE(x.enddate),INTERVAL 1 DAY)>=today;

UPDATE zn_prom_detail_tmp x,zn_dayly_sales y 
SET x.totalQty=CASE WHEN ISNULL(x.totalQty) THEN 0+y.qty 
										ELSE x.totalQty+y.qty END
WHERE x.shopid=shopid AND y.shopid=shopid AND 
			x.goodsid=y.goodsid AND x.begindate<today and DATE_ADD(DATE(x.enddate),INTERVAL 1 DAY)>=today and y.sdate=DATE_ADD(today,INTERVAL -1 day);

/*update zn_prom_detail_tmp a join tmp_hg b on a.shopid=b.shopid and a.goodsid=b.goodsid and a.begindate=b.begindate and a.enddate=b.enddate
set a.totalDays=b.totaldays,a.totalQty=b.totalqty;*/

#b. 用zn_daly_sales n周（与促销周期一致）数据计算zn_prom_detail_tmp表中的促销刚刚结束的促销品的日均销量=促销周期内销售数量/促销周期。更新或新增zn_price_dms中促销售价对应的dms
DROP TABLE IF EXISTS tmp_everyday_tmp_3;
CREATE TABLE tmp_everyday_tmp_3 (
`planid`  varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '促销计划编号' ,
`planname`  varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '促销计划名称' ,
`enddate`  datetime NULL DEFAULT NULL COMMENT '促销结束日期时间' ,
`shopid`  varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '门店编码' ,
`shopname`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`goodsid`  varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品编码' ,
`goodsname`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`xlid`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`xlname`  varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`price`  decimal(16,2) NULL DEFAULT NULL COMMENT '促销售价' ,
`planqty`  decimal(16,3) NULL DEFAULT NULL COMMENT '采购分货数量' ,
`flag`  varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '补货标识' ,
`begindate`  datetime NULL DEFAULT NULL COMMENT '促销开始日期时间' ,
`sdate`  datetime NULL DEFAULT NULL COMMENT '备份日期' ,
`totalQty`  decimal(16,2) UNSIGNED NULL DEFAULT 0.00 COMMENT '销售数量累计' ,
`totalDays`  int(11) UNSIGNED NULL DEFAULT 0 COMMENT '销售天数累计' ,
`normalprice`  double NULL DEFAULT NULL ,
`zkb`  decimal(16,2) NULL DEFAULT NULL ,
display_flag varchar(1) default '0'
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
ROW_FORMAT=DYNAMIC
;


INSERT INTO tmp_everyday_tmp_3 (planid,planname,enddate,shopid,shopname,goodsid,
goodsname,xlid,xlname,price,planqty,flag,begindate,sdate,totalQty,totalDays,normalprice,zkb,display_flag)
SELECT 
        x.planid AS planid,
        x.planname AS planname,
        x.enddate AS enddate,
        x.shopid AS shopid,
				w.shopname AS shopname,
        x.goodsid AS goodsid,
				z.`name` AS goodsname,
				z.deptid AS xlid,
				a.xlname AS xlname,
        x.price AS price,
        x.planqty AS planqty,
        x.flag AS flag,
        x.begindate AS begindate,
        x.sdate AS sdate,
        x.totalQty AS totalQty,
        x.totalDays AS totalDays,
				y.normalprice AS normalprice,
				getZKB(x.price,y.normalprice) AS zkb,
				x.display_flag as display_flag
FROM
        zn_prom_detail_tmp x,v_zn_goodsshop y,v_goods z,v_shopname w,v_zn_cg_dl_zl_xl a
WHERE x.shopid=shopid AND DATE_ADD(CAST(x.enddate AS date),INTERVAL 1 DAY)<=today AND y.shopid=shopid AND 
z.goodsid=x.goodsid AND y.goodsid=x.goodsid AND a.xlid=z.deptid and w.shopid=shopId and z.deptid=a.xlid and x.totalqty!=0;

##节日专属商品若totaldays>促销周期时长的50% 或 totaldays>7时则更新促销的dms，否则不更新dms。
##delete a from tmp_everyday_tmp_3 a join tmp_hg b on a.shopid=b.shopid and a.goodsid=b.goodsid and a.begindate=b.begindate and a.enddate=b.enddate
##where a.totalDays<7 and a.totalDays<datediff(a.enddate,a.begindate)*0.5;

INSERT INTO zn_price_dms (shopid,shopname,goodsid,goodsname,xlid,xlname,normalprice,disc1,disc2,band1,band2,trueprice,dms,sdate,display_flag)
SELECT 
a.shopid AS shopid,
a.shopname AS shopname,
a.goodsid AS goodsid,
a.goodsname AS goodsname,
a.xlid AS xlid,
a.xlname AS xlname,
a.normalprice AS normalprice,
a.zkb*100 AS disc1,
CASE WHEN (a.zkb<0.95) THEN (a.zkb+0.05)*100
            ELSE 5000 END AS disc2,
a.zkb*20 AS band1,
CASE WHEN (a.zkb*20<19) THEN a.zkb*20+1
												ELSE 1000 END AS band2,
a.price AS trueprice,
a.totalQty/a.totalDays AS dms,  #销售数量
now() as sdate,
a.display_flag as display_flag
FROM tmp_everyday_tmp_3 a
ON DUPLICATE KEY UPDATE
zn_price_dms.shopid=VALUES(shopid),
zn_price_dms.shopname=VALUES(shopname),
zn_price_dms.goodsid=VALUES(goodsid),
zn_price_dms.goodsname=VALUES(goodsname),
zn_price_dms.xlid=VALUES(xlid),
zn_price_dms.xlname=VALUES(xlname),
zn_price_dms.normalprice=VALUES(normalprice),
zn_price_dms.disc1=VALUES(disc1),
zn_price_dms.disc2=VALUES(disc2),
zn_price_dms.band1=VALUES(band1),
zn_price_dms.band2=VALUES(band2),
zn_price_dms.trueprice=a.price,
zn_price_dms.dms=VALUES(dms),
zn_price_dms.sdate=VALUES(sdate),
zn_price_dms.display_flag=values(display_flag);




#c.根据zn_price_dms表更新zn_xl_dms
INSERT INTO zn_xl_dms (shopid,shopname,xlid,xlname,disc1,disc2,
        dms_disc,dms_ori,sdate,display_flag)
    SELECT 
        x.shopid AS shopid,
        x.shopname AS shopname,
        x.xlid AS xlid,
        x.xlname AS xlname,
        x.disc1 AS disc1,
        x.disc2 AS disc2,
        SUM(x.dms)/COUNT(x.dms) AS dms_disc,
        0.0 AS dms_ori,
        NOW() AS sdate,
        x.display_flag as display_flag
    FROM
        zn_price_dms x WHERE x.shopid=shopid
		GROUP BY x.shopid,x.xlid,x.disc1
ON DUPLICATE KEY UPDATE
		zn_xl_dms.shopid=VALUES(shopid),
		zn_xl_dms.shopname=VALUES(shopname),
		zn_xl_dms.xlid=VALUES(xlid),
		zn_xl_dms.xlname=VALUES(xlname),
		zn_xl_dms.disc1=VALUES(disc1),
		zn_xl_dms.disc2=VALUES(disc2),
		zn_xl_dms.dms_disc=VALUES(dms_disc),
		zn_xl_dms.dms_ori=VALUES(dms_ori),
		zn_xl_dms.sdate=VALUES(sdate),
    zn_xl_dms.display_flag=values(display_flag);

update (SELECT * FROM zn_xl_dms WHERE zn_xl_dms.disc1=95) a RIGHT JOIN zn_xl_dms b 
on a.xlid=b.xlid AND a.shopid=b.shopid
SET b.dms_ori=a.dms_disc
WHERE b.disc1<>95 AND b.shopid=shopid;



#d.促销明细中间表zn_prom_detail_tmp表插入促销明细历史表zn_prom_detail_his后将中间表删除。
		INSERT INTO zn_prom_detail_his(planid,planname,enddate,shopid,goodsid,price,planqty,flag,begindate,totalqty,totaldays,sdate,display_flag)
    SELECT 
        `zn_prom_detail_tmp`.`planid` AS `planid`,
        `zn_prom_detail_tmp`.`planname` AS `planname`,
        `zn_prom_detail_tmp`.`enddate` AS `enddate`,
        `zn_prom_detail_tmp`.`shopid` AS `shopid`,
        `zn_prom_detail_tmp`.`goodsid` AS `goodsid`,
        `zn_prom_detail_tmp`.`price` AS `price`,
        `zn_prom_detail_tmp`.`planqty` AS `planqty`,
        `zn_prom_detail_tmp`.`flag` AS `flag`,
        `zn_prom_detail_tmp`.`begindate` AS `begindate`,
        zn_prom_detail_tmp.totalQty as totalqty,
        zn_prom_detail_tmp.totaldays as totaldays,
        now() AS `sdate`,
        zn_prom_detail_tmp.display_flag as display_flag
    FROM
        zn_prom_detail_tmp WHERE zn_prom_detail_tmp.shopid=shopid AND 
		DATE_ADD(CAST(zn_prom_detail_tmp.enddate AS date),INTERVAL 1 DAY)<=today;

		DELETE FROM zn_prom_detail_tmp WHERE zn_prom_detail_tmp.shopid=shopid AND 
		DATE_ADD(CAST(zn_prom_detail_tmp.enddate AS date),INTERVAL 1 DAY)<=today;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for daily_dms_sub_spr
-- ----------------------------
DROP PROCEDURE IF EXISTS `daily_dms_sub_spr`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `daily_dms_sub_spr`(IN `shopid` varchar(64),IN `thisday` date)
BEGIN
DECLARE 2WeeksBefore date;
DECLARE today date;

SELECT  version()
       ,@@sql_mode;

SET sql_mode=(
SELECT  REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY','')); ##CALL classify_new();
SET today=thisDay;
SET 2WeeksBefore=DATE_SUB(today,INTERVAL 14 DAY);

#CALL proc_tmpdayly(DATE_SUB(thisDay,INTERVAL 2 DAY),thisDay);

DROP TABLE IF EXISTS tmp_everyday_tmp_1;
CREATE TABLE tmp_everyday_tmp_1 (
shopid  varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
shopname  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
goodsid  varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
goodsname  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
salevalue  decimal(38,2) NULL DEFAULT NULL ,
discvalue  decimal(38,2) NULL DEFAULT NULL ,
disc  decimal(44,6) NULL DEFAULT NULL ,
zlprice  decimal(16,2) NULL DEFAULT NULL ,
normalprice  decimal(16,2) NULL DEFAULT NULL ,
qty  decimal(38,3) NULL DEFAULT NULL ,
sdate  date NULL DEFAULT NULL ,
zkb  decimal(16,2) NULL DEFAULT NULL ,
dayNumber  int DEFAULT 0 ,
discDayNumber  int DEFAULT 0 ,
INDEX index_1 (shopid, goodsid, zkb) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
ROW_FORMAT=DYNAMIC;



#a. 用zn_daly_sales近2周数据计算正常售价（ zlprice /normalprice>=0.95）的日均销量=2周正常售价销售数量/（14-促销有销售周天数）。
#更新zn_price_dms中正常售价对应的dms


INSERT INTO tmp_everyday_tmp_1(shopid, shopname, goodsid, goodsname, salevalue, 
discvalue, disc, zlprice, normalprice, qty, sdate, zkb, dayNumber, discDayNumber)
SELECT  x.shopid                                                                   AS shopid
       ,x.shopname                                                                 AS shopname
       ,x.goodsid                                                                  AS goodsid
       ,x.goodsname                                                                AS goodsname
       ,SUM(x.salevalue)                                                           AS salevalue
       ,SUM(x.discvalue)                                                           AS discvalue
       ,SUM(x.salevalue)/SUM(x.salevalue+x.discvalue)                              AS disc
       ,x.zlprice                                                                  AS zlprice
       ,x.normalprice                                                              AS normalprice
       ,SUM(x.qty)                                                                 AS qty
       ,x.sdate                                                                    AS sdate
       ,getZKB(x.zlprice,x.normalprice)                                            AS zkb
       ,COUNT(x.zlprice)                                                           AS dayNumber
       ,COUNT(IF((x.zlprice<(getZKB(x.zlprice,x.normalprice)*x.normalprice)),1,0)) AS discDayNumber
FROM zn_dayly_sales x
WHERE x.shopid=shopId AND x.sdate<today AND x.sdate>=2WeeksBefore 
GROUP BY  x.shopid
         ,x.goodsid
         ,x.zlprice;





DROP TABLE IF EXISTS tmp_everyday_tmp_2;
CREATE TABLE tmp_everyday_tmp_2 (
shopid  varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
shopname  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
goodsid  varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
goodsname  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
xlid  varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品类别（小类）' ,
xlname varchar(64) DEFAULT NULL COMMENT '小类名称',
salevalue  decimal(60,2) NULL DEFAULT NULL ,
discvalue  decimal(60,2) NULL DEFAULT NULL ,
disc  decimal(65,6) NULL DEFAULT NULL ,
normalprice  decimal(16,2) NULL DEFAULT NULL ,
qty  decimal(60,3) NULL DEFAULT NULL ,
zkb  decimal(16,2) NULL DEFAULT NULL ,
allDayNumber  int,
discDayNumber  int,
INDEX index_1 (shopid, goodsid) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
ROW_FORMAT=DYNAMIC;


INSERT INTO tmp_everyday_tmp_2(shopid, shopname, goodsid, goodsname, 
salevalue, discvalue, disc, normalprice, qty, zkb, allDayNumber, discDayNumber)
SELECT  y.shopid                                      AS shopid
       ,y.shopname                                    AS shopname
       ,y.goodsid                                     AS goodsid
       ,y.goodsname                                   AS goodsname
       ,SUM(y.salevalue)                              AS salevalue
       ,SUM(y.discvalue)                              AS discvalue
       ,SUM(y.salevalue)/SUM(y.salevalue+y.discvalue) AS disc
       ,y.normalprice                                 AS normalprice
       ,SUM(y.qty)                                    AS qty
       ,y.zkb                                         AS zkb
       ,SUM(y.dayNumber)                          		AS allDayNumber
       ,SUM(y.discDayNumber)                          AS discDayNumber
FROM tmp_everyday_tmp_1 y
GROUP BY  y.shopid
         ,y.goodsid
         ,y.zkb;


# 销售数量求和
DROP TABLE IF EXISTS tmp_everyday_tmp_2_1;
CREATE TABLE tmp_everyday_tmp_2_1 (
shopid  varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
goodsid  varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
dayNumberSum  bigint(21) DEFAULT NULL ,
INDEX index_1 (shopid, goodsid) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
ROW_FORMAT=DYNAMIC;


INSERT INTO tmp_everyday_tmp_2_1 (shopid,goodsid,dayNumberSum)
SELECT  z.shopid
       ,z.goodsid
       ,SUM(z.allDayNumber) AS dayNumberSum
FROM tmp_everyday_tmp_2 z
WHERE z.zkb<0.95 
GROUP BY  z.shopid
         ,z.goodsid;


UPDATE tmp_everyday_tmp_2 a
SET a.allDayNumber=14 WHERE a.zkb=0.95;


UPDATE tmp_everyday_tmp_2 a join tmp_everyday_tmp_2_1 b on a.shopid=b.shopid AND a.goodsid=b.goodsid
SET a.allDayNumber=(14-b.dayNumberSum)
WHERE a.zkb=0.95;


INSERT INTO zn_price_dms (shopid,goodsid,normalprice,disc1,disc2,band1,band2,trueprice,dms,sdate)
SELECT 
a.shopid AS shopid,
a.goodsid AS goodsid,
a.normalprice AS normalprice,
a.zkb*100 AS disc1,
CASE WHEN (a.zkb<0.95) THEN (a.zkb+0.05)*100
            ELSE 5000 END AS disc2,
a.zkb*20 AS band1,
CASE WHEN (a.zkb*20<19) THEN a.zkb*20+1
												ELSE 1000 END AS band2,
(a.salevalue/a.qty) AS trueprice,
a.qty/a.allDayNumber AS dms,  #销售数量
today as sdate
FROM tmp_everyday_tmp_2 a WHERE a.zkb=0.95
ON DUPLICATE KEY UPDATE
zn_price_dms.shopid=VALUES(shopid),
zn_price_dms.goodsid=VALUES(goodsid),
zn_price_dms.normalprice=VALUES(normalprice),
zn_price_dms.disc1=VALUES(disc1),
zn_price_dms.disc2=VALUES(disc2),
zn_price_dms.band1=VALUES(band1),
zn_price_dms.band2=VALUES(band2),
zn_price_dms.trueprice=VALUES(trueprice),
zn_price_dms.dms=VALUES(dms),
zn_price_dms.sdate=VALUES(sdate);


#b0.更新上一日销售数据到zn_prom_detail_tmp中
UPDATE zn_prom_detail_tmp 
SET zn_prom_detail_tmp.totalDays=CASE WHEN ISNULL(zn_prom_detail_tmp.totalDays) THEN 1 
										ELSE zn_prom_detail_tmp.totalDays+1 END 
WHERE shopid=shopid AND DATE_ADD(CAST(zn_prom_detail_tmp.enddate AS date),INTERVAL 1 DAY)>today;

UPDATE zn_prom_detail_tmp x,zn_dayly_sales y 
SET x.totalQty=CASE WHEN ISNULL(x.totalQty) THEN 0+y.qty 
										ELSE x.totalQty+y.qty END
WHERE x.shopid=shopid AND y.shopid=shopid AND 
			x.goodsid=y.goodsid AND DATE_ADD(CAST(x.enddate AS date),INTERVAL 1 DAY)>today and y.sdate=DATE_ADD(today,INTERVAL -1 day);


#b. 用zn_daly_sales n周（与促销周期一致）数据计算zn_prom_detail_tmp表中的促销刚刚结束的促销品的日均销量=促销周期内销售数量/促销周期。更新或新增zn_price_dms中促销售价对应的dms
DROP TABLE IF EXISTS tmp_everyday_tmp_3;
CREATE TABLE tmp_everyday_tmp_3
SELECT 
        x.planid AS planid,
        x.planname AS planname,
        x.enddate AS enddate,
        x.shopid AS shopid,
				w.shopname AS shopname,
        x.goodsid AS goodsid,
				z.`name` AS goodsname,
				z.deptid AS xlid,
				a.xlname AS xlname,
        x.price AS price,
        x.planqty AS planqty,
        x.flag AS flag,
        x.begindate AS begindate,
        x.sdate AS sdate,
        x.totalQty AS totalQty,
        x.totalDays AS totalDays,
				y.normalprice AS normalprice,
				getZKB(x.price,y.normalprice) AS zkb
FROM
        zn_prom_detail_tmp x,v_zn_goodsshop y,v_goods z,v_shopname w,v_zn_cg_dl_zl_xl a
WHERE x.shopid=shopid AND DATE_ADD(CAST(x.enddate AS date),INTERVAL 1 DAY)=today AND y.shopid=shopid AND 
z.goodsid=x.goodsid AND y.goodsid=x.goodsid AND a.xlid=z.deptid and w.shopid=shopId and z.deptid=a.xlid;

INSERT INTO zn_price_dms (shopid,shopname,goodsid,goodsname,xlid,xlname,normalprice,disc1,disc2,band1,band2,trueprice,dms,sdate)
SELECT 
a.shopid AS shopid,
a.shopname AS shopname,
a.goodsid AS goodsid,
a.goodsname AS goodsname,
a.xlid AS xlid,
a.xlname AS xlname,
a.normalprice AS normalprice,
a.zkb*100 AS disc1,
CASE WHEN (a.zkb<0.95) THEN (a.zkb+0.05)*100
            ELSE 5000 END AS disc2,
a.zkb*20 AS band1,
CASE WHEN (a.zkb*20<19) THEN a.zkb*20+1
												ELSE 1000 END AS band2,
a.price AS trueprice,
a.totalQty/a.totalDays AS dms,  #销售数量
now() as sdate
FROM tmp_everyday_tmp_3 a
ON DUPLICATE KEY UPDATE
zn_price_dms.shopid=VALUES(shopid),
zn_price_dms.shopname=VALUES(shopname),
zn_price_dms.goodsid=VALUES(goodsid),
zn_price_dms.goodsname=VALUES(goodsname),
zn_price_dms.xlid=VALUES(xlid),
zn_price_dms.xlname=VALUES(xlname),
zn_price_dms.normalprice=VALUES(normalprice),
zn_price_dms.disc1=VALUES(disc1),
zn_price_dms.disc2=VALUES(disc2),
zn_price_dms.band1=VALUES(band1),
zn_price_dms.band2=VALUES(band2),
zn_price_dms.trueprice=VALUES(trueprice),
zn_price_dms.dms=VALUES(dms),
zn_price_dms.sdate=now();




#c.根据zn_price_dms表更新zn_xl_dms
INSERT INTO zn_xl_dms (shopid,shopname,xlid,xlname,disc1,disc2,
        dms_disc,dms_ori,sdate)
    SELECT 
        x.shopid AS shopid,
        x.shopname AS shopname,
        x.xlid AS xlid,
        x.xlname AS xlname,
        x.disc1 AS disc1,
        x.disc2 AS disc2,
        SUM(x.dms)/COUNT(x.dms) AS dms_disc,
        0.0 AS dms_ori,
        NOW() AS sdate
    FROM
        zn_price_dms x WHERE x.shopid=shopid
		GROUP BY x.shopid,x.xlid,x.disc1
ON DUPLICATE KEY UPDATE
		zn_xl_dms.shopid=VALUES(shopid),
		zn_xl_dms.shopname=VALUES(shopname),
		zn_xl_dms.xlid=VALUES(xlid),
		zn_xl_dms.xlname=VALUES(xlname),
		zn_xl_dms.disc1=VALUES(disc1),
		zn_xl_dms.disc2=VALUES(disc2),
		zn_xl_dms.dms_disc=VALUES(dms_disc),
		zn_xl_dms.dms_ori=VALUES(dms_ori),
		zn_xl_dms.sdate=VALUES(sdate);

update (SELECT * FROM zn_xl_dms WHERE zn_xl_dms.disc1=95) a RIGHT JOIN zn_xl_dms b 
on a.xlid=b.xlid AND a.shopid=b.shopid
SET b.dms_ori=a.dms_disc
WHERE b.disc1<>95 AND b.shopid=shopid;



#d.促销明细中间表zn_prom_detail_tmp表插入促销明细历史表zn_prom_detail_his后将中间表删除。
		INSERT INTO zn_prom_detail_his(planid,planname,enddate,shopid,goodsid,price,planqty,flag,begindate,sdate)
    SELECT 
        `zn_prom_detail_tmp`.`planid` AS `planid`,
        `zn_prom_detail_tmp`.`planname` AS `planname`,
        `zn_prom_detail_tmp`.`enddate` AS `enddate`,
        `zn_prom_detail_tmp`.`shopid` AS `shopid`,
        `zn_prom_detail_tmp`.`goodsid` AS `goodsid`,
        `zn_prom_detail_tmp`.`price` AS `price`,
        `zn_prom_detail_tmp`.`planqty` AS `planqty`,
        `zn_prom_detail_tmp`.`flag` AS `flag`,
        `zn_prom_detail_tmp`.`begindate` AS `begindate`,
        `zn_prom_detail_tmp`.`sdate` AS `sdate`
    FROM
        zn_prom_detail_tmp WHERE zn_prom_detail_tmp.shopid=shopid AND 
		DATE_ADD(CAST(zn_prom_detail_tmp.enddate AS date),INTERVAL 1 DAY)=today;

		DELETE FROM zn_prom_detail_tmp WHERE zn_prom_detail_tmp.shopid=shopid AND 
		DATE_ADD(CAST(zn_prom_detail_tmp.enddate AS date),INTERVAL 1 DAY)=today;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for daily_dms_sub_test
-- ----------------------------
DROP PROCEDURE IF EXISTS `daily_dms_sub_test`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `daily_dms_sub_test`(IN `shopid` varchar(64),IN `thisday` date)
BEGIN
DECLARE today date;
declare springed date;
DECLARE changeday date;
SELECT  version()
       ,@@sql_mode;

SET sql_mode=(
SELECT  REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY','')); ##CALL classify_new();
SET today=thisDay;
SET changeday='2021-1-18';
#CALL proc_tmpdayly(DATE_SUB(thisDay,INTERVAL 2 DAY),thisDay);
select enddate into springed from zn_calendar where holidayid='01' and year(sundate)=year(today);

drop temporary table if exists tmp_dms1;
create temporary table tmp_dms1(
  select b.goodsid,d.weeknum from  v_goods b  
join v_cg_dl_zl_xl c on b.deptid=c.xlid 
join zn_dms_week d on c.cgid=d.cgid 
);
create unique index index_1 on tmp_dms1(goodsid);
#a. 用zn_daly_sales近2周数据计算正常售价（ zlprice /normalprice>=0.95）的日均销量=2周正常售价销售数量/（14-促销有销售周天数）。
#更新zn_price_dms_spr中正常售价对应的dms

#计算价格段(全部数据，未groupby)
DROP TABLE IF EXISTS tmp_everyday_dms_0;
CREATE TABLE `tmp_everyday_dms_0` (
`shopid`  varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`shopname`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`goodsid`  varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`goodsname`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`salevalue`  decimal(16,2) NULL DEFAULT NULL ,
`discvalue`  decimal(16,2) NULL DEFAULT NULL ,
`disc`  int(16) NULL DEFAULT NULL ,
`zlprice`  decimal(16,2) NULL DEFAULT NULL ,
`normalprice`  decimal(16,2) NULL DEFAULT NULL ,
`qty`  decimal(16,3) NULL DEFAULT NULL ,
`sdate`  date NULL DEFAULT NULL ,
`zkb`  decimal(16,2) NULL DEFAULT NULL ,
`stock`  decimal(16,3) NULL DEFAULT 0.000 ,
INDEX `index_1` (`shopid`, `goodsid`, `zkb`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
ROW_FORMAT=DYNAMIC;

INSERT INTO `tmp_everyday_dms_0`
(`shopid`,
`shopname`,
`goodsid`,
`goodsname`,
`salevalue`,
`discvalue`,
`disc`,
`zlprice`,
`normalprice`,
`qty`,
`sdate`,
`zkb`,`stock`)
SELECT  x.shopid                                                                   AS shopid
       ,x.shopname                                                                 AS shopname
       ,x.goodsid                                                                  AS goodsid
       ,x.goodsname                                                                AS goodsname
       ,x.salevalue  			                                                         AS salevalue
       ,x.discvalue			                                                           AS discvalue
       ,x.zlprice/x.normalprice											                               AS disc
       ,x.zlprice                                                                  AS zlprice
       ,x.normalprice                                                              AS normalprice
       ,x.qty			                                                                 AS qty
       ,x.sdate                                                                    AS sdate
       ,getZKB(x.zlprice,x.normalprice)                                            AS zkb
       ,x.`stock`                                            AS `stock`
FROM zn_dayly_sales x join tmp_dms1 d on x.goodsid=d.goodsid
WHERE  x.sdate<today and x.sdate>=DATE_SUB(today,INTERVAL if(datediff(today,springed)<d.weeknum*7 and datediff(today,springed)>0,floor(datediff(today,springed)/7)*7,d.weeknum*7) DAY) 
AND x.shopid=shopId;

##节日专属商品节日期间停止更新dms
/*delete a from tmp_everyday_dms_0 a join v_zn_md_yt_ywq b on a.shopid=b.shopid join zn_holiday_goods c on b.ywqid=c.ywqid and a.goodsid=c.goodsid and c.holidayid!='01'
join zn_calendar d on c.holidayid=d.holidayid and year(d.sundate)=year(today)
where d.begindate<=today and d.enddate>=today;*/

#每个价格段汇总，取主力售价对应的销售最多的
DROP TABLE IF EXISTS tmp_everyday_dms_00;
CREATE TABLE `tmp_everyday_dms_00` (
`shopid`  varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`goodsid`  varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`zlprice`  decimal(16,2) NULL DEFAULT NULL ,
`qty`  decimal(16,3) NULL DEFAULT NULL ,
`zkb`  decimal(16,2) NULL DEFAULT NULL ,
INDEX `index_1` (`shopid`, `goodsid`, `zkb`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
ROW_FORMAT=DYNAMIC;

INSERT INTO `tmp_everyday_dms_00`
(`shopid`,
`goodsid`,
`zlprice`,
`qty`,
`zkb`)
SELECT 
				x.shopid																																	 AS shopid
#       ,x.shopname                                                                 AS shopname
       ,x.goodsid                                                                  AS goodsid
#       ,x.goodsname                                                                AS goodsname
#       ,SUM(x.salevalue)  			                                                   AS salevalue
#       ,SUM(x.discvalue)		                                                       AS discvalue
#       ,0																						                               AS disc
       ,x.zlprice		               		                                             AS zlprice
#       ,x.normalprice                                                              AS normalprice
       ,SUM(x.qty)	                                                               AS qty
#       ,x.sdate                                                                    AS sdate
       ,x.zkb													                                             AS zkb
FROM tmp_everyday_dms_0 x 
GROUP BY x.shopid
         ,x.goodsid
         ,x.zkb
				 ,x.zlprice;
create index index_2 on tmp_everyday_dms_00(shopid,goodsid,zkb,zlprice,qty);

drop temporary table if exists tmp_1;
create temporary table tmp_1(
	select shopid,goodsid,zkb,zlprice,max(qty) as mqty from tmp_everyday_dms_00 group by shopid,goodsid,zlprice,zkb
);
create unique index index_k on tmp_1(shopid,goodsid,zkb,zlprice,mqty);

DROP TABLE IF EXISTS tmp_everyday_dms_000;
CREATE TABLE `tmp_everyday_dms_000` (
`shopid`  varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`goodsid`  varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`zlprice`  decimal(16,2) NULL DEFAULT NULL ,
`qty`  decimal(16,3) NULL DEFAULT NULL ,
`zkb`  decimal(16,2) NULL DEFAULT NULL ,
INDEX `index_1` (`shopid`, `goodsid`, `zkb`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
ROW_FORMAT=DYNAMIC;

INSERT INTO `tmp_everyday_dms_000`
(`shopid`,
`goodsid`,
`zlprice`,
`qty`,
`zkb`)
SELECT 
				x.shopid																																	 AS shopid
#       ,x.shopname                                                                 AS shopname
       ,x.goodsid                                                                  AS goodsid
#       ,x.goodsname                                                                AS goodsname
#       ,SUM(x.salevalue)  			                                                   AS salevalue
#       ,SUM(x.discvalue)		                                                       AS discvalue
#       ,0																						                               AS disc
       ,x.zlprice		               		                                             AS zlprice
#       ,x.normalprice                                                              AS normalprice
       ,x.qty	                                                               AS qty
#       ,x.sdate                                                                    AS sdate
       ,x.zkb													                                             AS zkb
FROM tmp_everyday_dms_00 x join tmp_1 y on x.shopid=y.shopid and x.goodsid=y.goodsid and x.zkb=y.zkb and x.zlprice=y.zlprice and x.qty=y.mqty;



#主力价格回插
UPDATE tmp_everyday_dms_0 x LEFT JOIN tmp_everyday_dms_000 y ON x.shopid=shopid AND y.shopid=shopid 
AND x.goodsid=y.goodsid AND x.zkb=y.zkb 
SET x.zlprice=y.zlprice;


#汇总

####new
DROP TABLE IF EXISTS tmp_everyday_tmp_tmp_1;
CREATE TABLE tmp_everyday_tmp_tmp_1 (
shopid  varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
shopname  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
goodsid  varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
goodsname  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
salevalue  decimal(16,2) NULL DEFAULT NULL ,
discvalue  decimal(16,2) NULL DEFAULT NULL ,
disc  decimal(16,2) NULL DEFAULT NULL ,
zlprice  decimal(16,2) NULL DEFAULT NULL ,
normalprice  decimal(16,2) NULL DEFAULT NULL ,
qty  decimal(16,3) NULL DEFAULT NULL ,
sdate  date NULL DEFAULT NULL ,
zkb  decimal(16,2) NULL DEFAULT NULL ,
dayNumber  int DEFAULT 0 ,
discDayNumber  int DEFAULT 0 ,
INDEX index_1 (shopid, goodsid, zkb) USING BTREE ,
INDEX `index_2` (`shopid`, `goodsid`, `zlprice`) USING BTREE  
)
ENGINE=InnoDB 
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci 
ROW_FORMAT=DYNAMIC;
INSERT INTO tmp_everyday_tmp_tmp_1(shopid, shopname, goodsid, goodsname, salevalue, 
discvalue, disc, zlprice, normalprice, qty, sdate, zkb, dayNumber, discDayNumber)
SELECT  x.shopid                                                                   AS shopid
       ,x.shopname                                                                 AS shopname
       ,x.goodsid                                                                  AS goodsid
       ,x.goodsname                                                                AS goodsname
       ,SUM(x.salevalue)                                                           AS salevalue
       ,SUM(x.discvalue)                                                           AS discvalue
       ,0																						                               AS disc
       ,x.zlprice                                                                  AS zlprice
       ,x.normalprice                                                              AS normalprice
       ,SUM(x.qty)                                                                 AS qty
       ,x.sdate                                                                    AS sdate
       ,zkb														                                             AS zkb
       ,COUNT(IF(x.zkb>=0.95,1,0))                                                 AS dayNumber
       ,COUNT(1) 													 		 AS discDayNumber
FROM tmp_everyday_dms_0 x,tmp_dms1 y 
WHERE x.goodsid=y.goodsid AND 
x.sdate>=changeday AND DATE(NOW())<DATE_ADD(changeday,INTERVAL 7*y.weeknum DAY) AND (x.zlprice>0.0 AND x.qty>0.0) 
GROUP BY  x.shopid 
         ,x.goodsid 
         ,x.zlprice;

DROP TABLE IF EXISTS tmp_everyday_tmp_tmp_2;
CREATE TABLE `tmp_everyday_tmp_tmp_2` (
`shopid`  varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`goodsid`  varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`zlprice`  decimal(16,2) NULL DEFAULT NULL ,
`dayNumber`  int(11) NOT NULL DEFAULT 0,
qty  decimal(16,3) NULL DEFAULT 0.000 ,
INDEX `index_1` (`shopid`, `goodsid`, `zlprice`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
ROW_FORMAT=DYNAMIC;
SELECT x.shopid,x.goodsid,x.zlprice,COUNT(1),x.qty AS dayNumber
FROM tmp_everyday_dms_0 x,tmp_dms1 y 
WHERE x.goodsid=y.goodsid AND 
x.sdate>=changeday AND DATE(NOW())<DATE_ADD(changeday,INTERVAL 7*y.weeknum DAY) AND x.zlprice=0.0 AND x.qty=0.0
GROUP BY  x.shopid
         ,x.goodsid
         ,x.zlprice;

UPDATE tmp_everyday_tmp_tmp_1 a,tmp_everyday_tmp_tmp_2 b 
SET a.dayNumber=a.dayNumber+b.dayNumber,
		a.qty=a.qty+b.qty
WHERE a.shopid=b.shopid AND a.goodsid=b.goodsid AND a.zlprice=b.zlprice;

####



DROP TABLE IF EXISTS tmp_everyday_tmp_1;
CREATE TABLE tmp_everyday_tmp_1 (
shopid  varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
shopname  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
goodsid  varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
goodsname  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
salevalue  decimal(16,2) NULL DEFAULT NULL ,
discvalue  decimal(16,2) NULL DEFAULT NULL ,
disc  decimal(16,2) NULL DEFAULT NULL ,
zlprice  decimal(16,2) NULL DEFAULT NULL ,
normalprice  decimal(16,2) NULL DEFAULT NULL ,
qty  decimal(16,3) NULL DEFAULT NULL ,
sdate  date NULL DEFAULT NULL ,
zkb  decimal(16,2) NULL DEFAULT NULL ,
dayNumber  int DEFAULT 0 ,
discDayNumber  int DEFAULT 0 ,
INDEX index_1 (shopid, goodsid, zkb) USING BTREE ,
INDEX `index_2` (`goodsid`, `qty`, `zlprice`, `sdate`) USING BTREE 
)
ENGINE=InnoDB 
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci 
ROW_FORMAT=DYNAMIC;


INSERT INTO tmp_everyday_tmp_1(shopid, shopname, goodsid, goodsname, salevalue, 
discvalue, disc, zlprice, normalprice, qty, sdate, zkb, dayNumber, discDayNumber)
SELECT  x.shopid                                                                   AS shopid
       ,x.shopname                                                                 AS shopname
       ,x.goodsid                                                                  AS goodsid
       ,x.goodsname                                                                AS goodsname
       ,SUM(x.salevalue)                                                           AS salevalue
       ,SUM(x.discvalue)                                                           AS discvalue
       ,0																						                               AS disc
       ,x.zlprice                                                                  AS zlprice
       ,x.normalprice                                                              AS normalprice
       ,SUM(x.qty)                                                                 AS qty
       ,x.sdate                                                                    AS sdate
       ,zkb														                                             AS zkb
       ,COUNT(x.zlprice)                                                           AS dayNumber
       ,COUNT(IF((x.zlprice<(getZKB(x.zlprice,x.normalprice)*x.normalprice)),1,0)) AS discDayNumber
FROM tmp_everyday_dms_0 x,tmp_dms1 y 
where x.goodsid=y.goodsid AND (x.qty!=0 or x.zlprice!=0) AND 
x.sdate>=DATE_SUB(date(NOW()),INTERVAL 7*y.weeknum DAY) AND x.sdate<changeday 
GROUP BY  x.shopid
         ,x.goodsid
         ,x.zlprice;


DROP TABLE IF EXISTS tmp_everyday_tmp_2;
CREATE TABLE tmp_everyday_tmp_2 (
shopid  varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
shopname  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
goodsid  varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
goodsname  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
xlid  varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品类别（小类）' ,
xlname varchar(64) DEFAULT NULL COMMENT '小类名称',
salevalue  decimal(16,2) NULL DEFAULT NULL ,
discvalue  decimal(16,2) NULL DEFAULT NULL ,
disc  decimal(16,2) NULL DEFAULT NULL ,
normalprice  decimal(16,2) NULL DEFAULT NULL ,
zlprice  decimal(16,2) NULL DEFAULT NULL ,
qty  decimal(16,3) NULL DEFAULT NULL ,
zkb  decimal(16,2) NULL DEFAULT NULL ,
allDayNumber  int DEFAULT 0,
discDayNumber  int DEFAULT 0,
isnotprom int DEFAULT 0,
INDEX index_1 (shopid, goodsid) USING BTREE ,
INDEX index_2 (shopid, goodsid, zkb) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
ROW_FORMAT=DYNAMIC;


INSERT INTO tmp_everyday_tmp_2(shopid, shopname, goodsid, goodsname, 
salevalue, discvalue, disc, normalprice,zlprice, qty, zkb, allDayNumber, discDayNumber)
SELECT  y.shopid                                      AS shopid
       ,y.shopname                                    AS shopname
       ,y.goodsid                                     AS goodsid
       ,y.goodsname                                   AS goodsname
       ,SUM(y.salevalue)                              AS salevalue
       ,SUM(y.discvalue)                              AS discvalue
       ,SUM(y.salevalue)/SUM(y.salevalue+y.discvalue) AS disc
       ,y.normalprice                                 AS normalprice
       ,y.zlprice                                		  AS zlprice
       ,SUM(y.qty)                                    AS qty
       ,y.zkb                                         AS zkb
       ,SUM(y.dayNumber)                          		AS allDayNumber
       ,SUM(y.discDayNumber)                          AS discDayNumber
FROM tmp_everyday_tmp_1 y
GROUP BY  y.shopid
         ,y.goodsid
         ,y.zkb;


# 销售数量求和
DROP TABLE IF EXISTS tmp_everyday_tmp_2_1;
CREATE TABLE tmp_everyday_tmp_2_1 (
shopid  varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
goodsid  varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
dayNumberSum  INT DEFAULT NULL ,
INDEX index_1 (shopid, goodsid) USING BTREE 
)
ENGINE=InnoDB 
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci 
ROW_FORMAT=DYNAMIC;


INSERT INTO tmp_everyday_tmp_2_1 (shopid,goodsid,dayNumberSum) 
SELECT  z.shopid 
       ,z.goodsid 
       ,SUM(z.allDayNumber) AS dayNumberSum 
FROM tmp_everyday_tmp_2 z 
WHERE z.zkb<0.95 
GROUP BY  z.shopid 
         ,z.goodsid;


####
UPDATE tmp_everyday_tmp_2 a join tmp_dms1 b on a.goodsid=b.goodsid
SET a.allDayNumber=b.weeknum*7-DATEDIFF(thisDay,changeday) WHERE a.zkb=0.95;
####


UPDATE tmp_everyday_tmp_2 a join tmp_everyday_tmp_2_1 b on a.shopid=b.shopid AND a.goodsid=b.goodsid
SET a.allDayNumber=(a.allDayNumber-b.dayNumberSum),a.isnotprom=1
WHERE a.zkb=0.95;


####new
UPDATE tmp_everyday_tmp_2 a,tmp_everyday_tmp_tmp_1 b
SET a.allDayNumber=a.allDayNumber+b.dayNumber,
		a.qty=a.qty+b.qty
WHERE a.shopid=b.shopid AND a.goodsid=b.goodsid AND a.zkb=b.zkb;
####

DELETE a FROM tmp_everyday_tmp_2 a WHERE a.allDayNumber<7 AND a.isnotprom=1;


INSERT INTO zn_price_dms_spr (shopid,goodsid,normalprice,disc1,disc2,band1,band2,trueprice,dms,sdate,display_flag)
SELECT 
a.shopid AS shopid,
a.goodsid AS goodsid,
a.normalprice AS normalprice,
a.zkb*100 AS disc1,
CASE WHEN (a.zkb<0.95) THEN (a.zkb+0.05)*100
            ELSE 5000 END AS disc2,
a.zkb*20 AS band1,
CASE WHEN (a.zkb*20<19) THEN a.zkb*20+1
												ELSE 1000 END AS band2,
a.zlprice AS trueprice,
a.qty/a.allDayNumber AS dms,  #销售数量
now() as sdate,
0 as display_flag
FROM tmp_everyday_tmp_2 a WHERE a.zkb=0.95 AND (a.qty/a.allDayNumber)<>0.0
ON DUPLICATE KEY UPDATE
zn_price_dms_spr.shopid=VALUES(shopid),
zn_price_dms_spr.goodsid=VALUES(goodsid),
zn_price_dms_spr.normalprice=VALUES(normalprice),
zn_price_dms_spr.disc1=VALUES(disc1),
zn_price_dms_spr.disc2=VALUES(disc2),
zn_price_dms_spr.band1=VALUES(band1),
zn_price_dms_spr.band2=VALUES(band2),
zn_price_dms_spr.trueprice=a.zlprice,
zn_price_dms_spr.dms=VALUES(dms),
zn_price_dms_spr.sdate=now(),
zn_price_dms_spr.display_flag=VALUES(display_flag);


##节日专属商品停止累计促销数量和天数
/*drop temporary table if exists tmp_hg;
create temporary table tmp_hg(
	select a.*
	from zn_prom_detail_tmp_spr a join v_zn_md_yt_ywq b on a.shopid=b.shopid join zn_holiday_goods c on b.ywqid=c.ywqid and a.goodsid=c.goodsid and c.holidayid!='01'
			join zn_calendar d on c.holidayid=d.holidayid and year(d.sundate)=year(today)
);
#b0.更新上一日销售数据到zn_prom_detail_tmp_spr中
UPDATE zn_prom_detail_tmp_spr x 
SET x.totalDays=CASE WHEN ISNULL(x.totalDays) THEN 1 
										ELSE x.totalDays+1 END 
WHERE x.shopid=shopid AND x.begindate<today AND DATE_ADD(DATE(x.enddate),INTERVAL 1 DAY)>=today;

UPDATE zn_prom_detail_tmp_spr x,zn_dayly_sales y 
SET x.totalQty=CASE WHEN ISNULL(x.totalQty) THEN 0+y.qty 
										ELSE x.totalQty+y.qty END 
WHERE x.shopid=shopid AND y.shopid=shopid AND 
			x.goodsid=y.goodsid AND x.begindate<today and DATE_ADD(DATE(x.enddate),INTERVAL 1 DAY)>=today and y.sdate=DATE_ADD(today,INTERVAL -1 day);



#b. 用zn_daly_sales n周（与促销周期一致）数据计算zn_prom_detail_tmp_spr表中的促销刚刚结束的促销品的日均销量=促销周期内销售数量/促销周期。更新或新增zn_price_dms_spr中促销售价对应的dms
DROP TABLE IF EXISTS tmp_everyday_tmp_3;
CREATE TABLE tmp_everyday_tmp_3 (
`planid`  varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '促销计划编号' ,
`planname`  varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '促销计划名称' ,
`enddate`  datetime NULL DEFAULT NULL COMMENT '促销结束日期时间' ,
`shopid`  varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '门店编码' ,
`shopname`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`goodsid`  varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品编码' ,
`goodsname`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`xlid`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`xlname`  varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`price`  decimal(16,2) NULL DEFAULT NULL COMMENT '促销售价' ,
`planqty`  decimal(16,3) NULL DEFAULT NULL COMMENT '采购分货数量' ,
`flag`  varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '补货标识' ,
`begindate`  datetime NULL DEFAULT NULL COMMENT '促销开始日期时间' ,
`sdate`  datetime NULL DEFAULT NULL COMMENT '备份日期' ,
`totalQty`  decimal(16,2) UNSIGNED NULL DEFAULT 0.00 COMMENT '销售数量累计' ,
`totalDays`  int(11) UNSIGNED NULL DEFAULT 0 COMMENT '销售天数累计' ,
`normalprice`  double NULL DEFAULT NULL ,
`zkb`  decimal(16,2) NULL DEFAULT NULL ,
display_flag varchar(1) default '0'
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
ROW_FORMAT=DYNAMIC
;


INSERT INTO tmp_everyday_tmp_3 (planid,planname,enddate,shopid,shopname,goodsid,
goodsname,xlid,xlname,price,planqty,flag,begindate,sdate,totalQty,totalDays,normalprice,zkb,display_flag)
SELECT 
        x.planid AS planid,
        x.planname AS planname,
        x.enddate AS enddate,
        x.shopid AS shopid,
				w.shopname AS shopname,
        x.goodsid AS goodsid,
				z.`name` AS goodsname,
				z.deptid AS xlid,
				a.xlname AS xlname,
        x.price AS price,
        x.planqty AS planqty,
        x.flag AS flag,
        x.begindate AS begindate,
        x.sdate AS sdate,
        x.totalQty AS totalQty,
        x.totalDays AS totalDays,
				y.normalprice AS normalprice,
				getZKB(x.price,y.normalprice) AS zkb,
				x.display_flag as display_flag
FROM
        zn_prom_detail_tmp_spr x,v_zn_goodsshop y,v_goods z,v_shopname w,v_zn_cg_dl_zl_xl a
WHERE x.shopid=shopid AND DATE_ADD(CAST(x.enddate AS date),INTERVAL 1 DAY)<=today AND y.shopid=shopid AND 
z.goodsid=x.goodsid AND y.goodsid=x.goodsid AND a.xlid=z.deptid and w.shopid=shopId and z.deptid=a.xlid and x.totalqty!=0;

##节日专属商品若totaldays>促销周期时长的50% 或 totaldays>7时则更新促销的dms，否则不更新dms。
##delete a from tmp_everyday_tmp_3 a join tmp_hg b on a.shopid=b.shopid and a.goodsid=b.goodsid and a.begindate=b.begindate and a.enddate=b.enddate
##where a.totalDays<7 and a.totalDays<datediff(a.enddate,a.begindate)*0.5;

INSERT INTO zn_price_dms_spr (shopid,shopname,goodsid,goodsname,xlid,xlname,normalprice,disc1,disc2,band1,band2,trueprice,dms,sdate,display_flag)
SELECT 
a.shopid AS shopid,
a.shopname AS shopname,
a.goodsid AS goodsid,
a.goodsname AS goodsname,
a.xlid AS xlid,
a.xlname AS xlname,
a.normalprice AS normalprice,
a.zkb*100 AS disc1,
CASE WHEN (a.zkb<0.95) THEN (a.zkb+0.05)*100
            ELSE 5000 END AS disc2,
a.zkb*20 AS band1,
CASE WHEN (a.zkb*20<19) THEN a.zkb*20+1
												ELSE 1000 END AS band2,
a.price AS trueprice,
a.totalQty/a.totalDays AS dms,  #销售数量
now() as sdate,
a.display_flag as display_flag
FROM tmp_everyday_tmp_3 a
ON DUPLICATE KEY UPDATE
zn_price_dms_spr.shopid=VALUES(shopid),
zn_price_dms_spr.shopname=VALUES(shopname),
zn_price_dms_spr.goodsid=VALUES(goodsid),
zn_price_dms_spr.goodsname=VALUES(goodsname),
zn_price_dms_spr.xlid=VALUES(xlid),
zn_price_dms_spr.xlname=VALUES(xlname),
zn_price_dms_spr.normalprice=VALUES(normalprice),
zn_price_dms_spr.disc1=VALUES(disc1),
zn_price_dms_spr.disc2=VALUES(disc2),
zn_price_dms_spr.band1=VALUES(band1),
zn_price_dms_spr.band2=VALUES(band2),
zn_price_dms_spr.trueprice=a.price,
zn_price_dms_spr.dms=VALUES(dms),
zn_price_dms_spr.sdate=VALUES(sdate),
zn_price_dms_spr.display_flag=values(display_flag);




#c.根据zn_price_dms_spr表更新zn_xl_dms_spr
INSERT INTO zn_xl_dms_spr (shopid,shopname,xlid,xlname,disc1,disc2,
        dms_disc,dms_ori,sdate,display_flag)
    SELECT 
        x.shopid AS shopid,
        x.shopname AS shopname,
        x.xlid AS xlid,
        x.xlname AS xlname,
        x.disc1 AS disc1,
        x.disc2 AS disc2,
        SUM(x.dms)/COUNT(x.dms) AS dms_disc,
        0.0 AS dms_ori,
        NOW() AS sdate,
        x.display_flag as display_flag
    FROM
        zn_price_dms_spr x WHERE x.shopid=shopid
		GROUP BY x.shopid,x.xlid,x.disc1
ON DUPLICATE KEY UPDATE
		zn_xl_dms_spr.shopid=VALUES(shopid),
		zn_xl_dms_spr.shopname=VALUES(shopname),
		zn_xl_dms_spr.xlid=VALUES(xlid),
		zn_xl_dms_spr.xlname=VALUES(xlname),
		zn_xl_dms_spr.disc1=VALUES(disc1),
		zn_xl_dms_spr.disc2=VALUES(disc2),
		zn_xl_dms_spr.dms_disc=VALUES(dms_disc),
		zn_xl_dms_spr.dms_ori=VALUES(dms_ori),
		zn_xl_dms_spr.sdate=VALUES(sdate),
    zn_xl_dms_spr.display_flag=values(display_flag);

update (SELECT * FROM zn_xl_dms_spr WHERE zn_xl_dms_spr.disc1=95) a RIGHT JOIN zn_xl_dms_spr b 
on a.xlid=b.xlid AND a.shopid=b.shopid
SET b.dms_ori=a.dms_disc
WHERE b.disc1<>95 AND b.shopid=shopid;



#d.促销明细中间表zn_prom_detail_tmp_spr表插入促销明细历史表zn_prom_detail_his_spr后将中间表删除。
		INSERT INTO zn_prom_detail_his_spr(planid,planname,enddate,shopid,goodsid,price,planqty,flag,begindate,totalqty,totaldays,sdate,display_flag)
    SELECT 
        `zn_prom_detail_tmp_spr`.`planid` AS `planid`,
        `zn_prom_detail_tmp_spr`.`planname` AS `planname`,
        `zn_prom_detail_tmp_spr`.`enddate` AS `enddate`,
        `zn_prom_detail_tmp_spr`.`shopid` AS `shopid`,
        `zn_prom_detail_tmp_spr`.`goodsid` AS `goodsid`,
        `zn_prom_detail_tmp_spr`.`price` AS `price`,
        `zn_prom_detail_tmp_spr`.`planqty` AS `planqty`,
        `zn_prom_detail_tmp_spr`.`flag` AS `flag`,
        `zn_prom_detail_tmp_spr`.`begindate` AS `begindate`,
        zn_prom_detail_tmp_spr.totalQty as totalqty,
        zn_prom_detail_tmp_spr.totaldays as totaldays,
        now() AS `sdate`,
        zn_prom_detail_tmp_spr.display_flag as display_flag
    FROM
        zn_prom_detail_tmp_spr WHERE zn_prom_detail_tmp_spr.shopid=shopid AND 
		DATE_ADD(CAST(zn_prom_detail_tmp_spr.enddate AS date),INTERVAL 1 DAY)<=today;

		DELETE FROM zn_prom_detail_tmp_spr WHERE zn_prom_detail_tmp_spr.shopid=shopid AND 
		DATE_ADD(CAST(zn_prom_detail_tmp_spr.enddate AS date),INTERVAL 1 DAY)<=today;
*/
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for daily_dms_sub_test_new
-- ----------------------------
DROP PROCEDURE IF EXISTS `daily_dms_sub_test_new`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `daily_dms_sub_test_new`(IN `shopid` varchar(64),IN `thisday` date)
BEGIN
#数据预处理
CALL daily_dms_sub_test_step1(shopid,thisday);
#更新zn_price_dms价格变动
CALL daily_dms_sub_test_step2(shopid,thisday);
#普通价格dms，插入zn_price_dms
CALL daily_dms_sub_test_step3(shopid,thisday);
#促销价格dms，插入zn_price_dms
CALL daily_dms_sub_test_step4(shopid,thisday);
#更新zn_xl_dms  /  插入zn_prom_detail_his
CALL daily_dms_sub_test_step5(shopid,thisday);
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for daily_dms_sub_test_step1
-- ----------------------------
DROP PROCEDURE IF EXISTS `daily_dms_sub_test_step1`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `daily_dms_sub_test_step1`(IN `shopid` varchar(64),IN `thisday` date)
BEGIN
DECLARE today date;
declare springed date;
DECLARE changeday date;


SET today=thisDay;
SET changeday='2021-1-18';
select enddate into springed from zn_calendar where holidayid='01' and year(sundate)=year(today);


drop temporary table if exists tmp_dms1;
create temporary table tmp_dms1(
  select b.goodsid,d.weeknum from  v_goods b  
join v_cg_dl_zl_xl c on b.deptid=c.xlid 
join zn_dms_week d on c.cgid=d.cgid 
);
create unique index index_1 on tmp_dms1(goodsid);
#a. 用zn_daly_sales近2周数据计算正常售价（ zlprice /normalprice>=0.95）的日均销量=2周正常售价销售数量/（14-促销有销售周天数）。
#更新zn_price_dms_spr中正常售价对应的dms

#计算价格段(全部数据，未groupby)
DROP TABLE IF EXISTS tmp_everyday_dms_0;
CREATE TABLE `tmp_everyday_dms_0` (
`shopid`  varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`shopname`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`goodsid`  varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`goodsname`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`salevalue`  decimal(16,2) NULL DEFAULT NULL ,
`discvalue`  decimal(16,2) NULL DEFAULT NULL ,
`disc`  int(16) NULL DEFAULT NULL ,
`zlprice`  decimal(16,2) NULL DEFAULT NULL ,
`normalprice`  decimal(16,2) NULL DEFAULT NULL ,
`qty`  decimal(16,3) NULL DEFAULT NULL ,
`sdate`  date NULL DEFAULT NULL ,
`zkb`  decimal(16,2) NULL DEFAULT NULL ,
`stock`  decimal(16,3) NULL DEFAULT 0.000 ,
`weeknum`  int(11) NULL DEFAULT NULL ,
`mindate`  date NULL DEFAULT NULL ,
INDEX `index_1` (`shopid`, `goodsid`, `zkb`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
ROW_FORMAT=DYNAMIC;

INSERT INTO `tmp_everyday_dms_0`
(`shopid`,
`shopname`,
`goodsid`,
`goodsname`,
`salevalue`,
`discvalue`,
`disc`,
`zlprice`,
`normalprice`,
`qty`,
`sdate`,
`zkb`,`stock`,`mindate`)
SELECT  x.shopid                                                                   AS shopid
       ,x.shopname                                                                 AS shopname
       ,x.goodsid                                                                  AS goodsid
       ,x.goodsname                                                                AS goodsname
       ,x.salevalue  			                                                         AS salevalue
       ,x.discvalue			                                                           AS discvalue
       ,x.zlprice/x.normalprice											                               AS disc
       ,x.zlprice                                                                  AS zlprice
       ,x.normalprice                                                              AS normalprice
       ,x.qty			                                                                 AS qty
       ,x.sdate                                                                    AS sdate
       ,getZKB(x.zlprice,x.normalprice)                                            AS zkb
       ,x.`stock`                                                                  AS `stock`
       ,DATE_SUB(today,INTERVAL weeknum*7 DAY)																     AS `mindate`
FROM zn_dayly_sales_1180 x join tmp_dms1 d on x.goodsid=d.goodsid
WHERE  x.sdate<today and x.sdate>=DATE_SUB(today,INTERVAL if(datediff(today,springed)<d.weeknum*7 and datediff(today,springed)>0,
floor(datediff(today,springed)/7)*7,d.weeknum*7) DAY) 
AND x.shopid=shopId;


#每个价格段汇总，取主力售价对应的销售最多的
DROP TABLE IF EXISTS tmp_everyday_dms_00;
CREATE TABLE `tmp_everyday_dms_00` (
`shopid`  varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`goodsid`  varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`zlprice`  decimal(16,2) NULL DEFAULT NULL ,
`qty`  decimal(16,3) NULL DEFAULT NULL ,
`zkb`  decimal(16,2) NULL DEFAULT NULL ,
INDEX `index_1` (`shopid`, `goodsid`, `zkb`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
ROW_FORMAT=DYNAMIC;

INSERT INTO `tmp_everyday_dms_00`
(`shopid`,
`goodsid`,
`zlprice`,
`qty`,
`zkb`)
SELECT 
				x.shopid																																	 AS shopid
#       ,x.shopname                                                                 AS shopname
       ,x.goodsid                                                                  AS goodsid
#       ,x.goodsname                                                                AS goodsname
#       ,SUM(x.salevalue)  			                                                   AS salevalue
#       ,SUM(x.discvalue)		                                                       AS discvalue
#       ,0																						                               AS disc
       ,x.zlprice		               		                                             AS zlprice
#       ,x.normalprice                                                              AS normalprice
       ,SUM(x.qty)	                                                               AS qty
#       ,x.sdate                                                                    AS sdate
       ,x.zkb													                                             AS zkb
FROM tmp_everyday_dms_0 x 
GROUP BY x.shopid
         ,x.goodsid
         ,x.zkb
				 ,x.zlprice;
create index index_2 on tmp_everyday_dms_00(shopid,goodsid,zkb,zlprice,qty);

drop temporary table if exists tmp_1;
create temporary table tmp_1(
	select shopid,goodsid,zkb,zlprice,max(qty) as mqty from tmp_everyday_dms_00 group by shopid,goodsid,zlprice,zkb
);
create unique index index_k on tmp_1(shopid,goodsid,zkb,zlprice,mqty);

DROP TABLE IF EXISTS tmp_everyday_dms_000;
CREATE TABLE `tmp_everyday_dms_000` (
`shopid`  varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`goodsid`  varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`zlprice`  decimal(16,2) NULL DEFAULT NULL ,
`qty`  decimal(16,3) NULL DEFAULT NULL ,
`zkb`  decimal(16,2) NULL DEFAULT NULL ,
INDEX `index_1` (`shopid`, `goodsid`, `zkb`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
ROW_FORMAT=DYNAMIC;

INSERT INTO `tmp_everyday_dms_000`
(`shopid`,
`goodsid`,
`zlprice`,
`qty`,
`zkb`)
SELECT 
				x.shopid																																	 AS shopid
#       ,x.shopname                                                                 AS shopname
       ,x.goodsid                                                                  AS goodsid
#       ,x.goodsname                                                                AS goodsname
#       ,SUM(x.salevalue)  			                                                   AS salevalue
#       ,SUM(x.discvalue)		                                                       AS discvalue
#       ,0																						                               AS disc
       ,x.zlprice		               		                                             AS zlprice
#       ,x.normalprice                                                              AS normalprice
       ,x.qty	                                                               			 AS qty
#       ,x.sdate                                                                    AS sdate
       ,x.zkb													                                             AS zkb
FROM tmp_everyday_dms_00 x join tmp_1 y on x.shopid=y.shopid and x.goodsid=y.goodsid and x.zkb=y.zkb and x.zlprice=y.zlprice and x.qty=y.mqty;



#主力价格回插
UPDATE tmp_everyday_dms_0 x LEFT JOIN tmp_everyday_dms_000 y ON x.shopid=shopid AND y.shopid=shopid 
AND x.goodsid=y.goodsid AND x.zkb=y.zkb 
SET x.zlprice=y.zlprice;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for daily_dms_sub_test_step2
-- ----------------------------
DROP PROCEDURE IF EXISTS `daily_dms_sub_test_step2`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `daily_dms_sub_test_step2`(IN `shopid` varchar(64),IN `thisday` date)
BEGIN
DECLARE today date;

SET today=thisDay;


INSERT INTO `zn_his_normalprice`
(`shopid`,
`goodsid`,
`normalprice`,
`sdate`)
SELECT x.shopid,x.goodsid,x.normalprice,today AS sdate FROM v_zn_goodsshop x 
WHERE x.shopid=shopid;

DROP TABLE IF EXISTS tmp_everyday_dms_2;
CREATE TABLE `tmp_everyday_dms_2` (
`shopid`  varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`goodsid`  varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`normalprice`  decimal(16,2) NULL DEFAULT NULL ,
UNIQUE INDEX `index_1` (`shopid`, `goodsid`, `normalprice`) USING BTREE ,
UNIQUE INDEX `index_2` (`shopid`, `goodsid`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
ROW_FORMAT=DYNAMIC;

INSERT INTO `tmp_everyday_dms_2`
(`shopid`,
`goodsid`,
`normalprice`)
SELECT b.shopid,b.goodsid,b.normalprice 
FROM zn_his_normalprice a,zn_his_normalprice b 
WHERE a.sdate=DATE_SUB(today,INTERVAL 1 DAY) AND b.sdate=today 
AND a.shopid=shopid AND b.shopid = shopid AND a.goodsid=b.goodsid AND a.normalprice<>b.normalprice;


DROP TABLE IF EXISTS tmp_everyday_dms_3;
CREATE TABLE `tmp_everyday_dms_3` (
`shopid`  varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '门店编码' ,
`shopname`  varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '门店名称' ,
`xlid`  varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品类别（小类）' ,
`xlname`  varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '小类名称' ,
`goodsid`  varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品编码' ,
`goodsname`  varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品名称' ,
`normalprice`  decimal(16,2) NULL DEFAULT NULL COMMENT '定价' ,
`band1`  int(16) NULL DEFAULT NULL COMMENT '价格段下限' ,
`band2`  int(16) NULL DEFAULT NULL COMMENT '价格段上限' ,
`disc1`  int(11) NULL DEFAULT NULL COMMENT '折扣下限' ,
`disc2`  int(11) NULL DEFAULT NULL COMMENT '折扣上限' ,
`trueprice`  decimal(16,2) NULL DEFAULT NULL COMMENT '实际售价' ,
`dms`  decimal(16,3) NULL DEFAULT NULL COMMENT '实际售价对应的日均销量' ,
`sdate`  datetime NULL DEFAULT NULL COMMENT '更新或新增日期' ,
`display_flag`  varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '0—默认值，1—场外  2—堆头  3—端头' ,
UNIQUE INDEX `index_2` (`shopid`, `goodsid`, `band1`, `display_flag`) USING BTREE ,
INDEX `index_1` (`goodsid`) USING BTREE ,
INDEX `index_key` (`shopid`, `goodsid`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8mb4 COLLATE=utf8mb4_general_ci
ROW_FORMAT=DYNAMIC;


INSERT INTO `tmp_everyday_dms_3`
(`shopid`,
`shopname`,
`xlid`,
`xlname`,
`goodsid`,
`goodsname`,
`normalprice`,
`band1`,
`band2`,
`disc1`,
`disc2`,
`trueprice`,
`dms`,
`sdate`,
`display_flag`)
SELECT 
a.shopid, 
a.shopname, 
a.xlid, 
a.xlname, 
a.goodsid, 
a.goodsname, 
b.normalprice, 
20*getZKB(a.trueprice,b.normalprice) as band1, 
20*getZKB(a.trueprice,b.normalprice)+1 as band2, 
100*getZKB(a.trueprice,b.normalprice) as disc1, 
100*getZKB(a.trueprice,b.normalprice)+5 as disc2, 
a.trueprice, 
a.dms, 
NOW(), 
a.display_flag 
FROM zn_price_dms_spr a,tmp_everyday_dms_2 b 
WHERE a.shopid=b.shopid AND a.goodsid=b.goodsid;

## 新计算的disc1>95的记录直接删除，但是要注意原第19段别删
DELETE a FROM tmp_everyday_dms_3 a WHERE a.disc1=95;


DELETE a FROM zn_price_dms_spr a,tmp_everyday_dms_2 b  
WHERE a.shopid=b.shopid AND a.goodsid=b.goodsid AND a.disc1<>95;

INSERT INTO `zn_price_dms_spr`
SELECT * FROM tmp_everyday_dms_3;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for daily_dms_sub_test_step3
-- ----------------------------
DROP PROCEDURE IF EXISTS `daily_dms_sub_test_step3`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `daily_dms_sub_test_step3`(IN `shopid` varchar(64),IN `thisday` date)
BEGIN
DECLARE today date;
declare springed date;
DECLARE changeday date;
DECLARE allDaysBeforeChangeDay int;


SET today=thisDay;
SET changeday='2021-1-18';
select enddate into springed from zn_calendar where holidayid='01' and year(sundate)=year(today);


drop temporary table if exists tmp_dms1;
create temporary table tmp_dms1(
  select b.goodsid,d.weeknum from  v_goods b  
join v_cg_dl_zl_xl c on b.deptid=c.xlid 
join zn_dms_week d on c.cgid=d.cgid 
);
create unique index index_1 on tmp_dms1(goodsid);

#汇总

####new
DROP TABLE IF EXISTS tmp_everyday_tmp_tmp_1;
CREATE TABLE tmp_everyday_tmp_tmp_1 (
shopid  varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
#shopname  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
goodsid  varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
#goodsname  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
#salevalue  decimal(16,2) NULL DEFAULT NULL ,
#discvalue  decimal(16,2) NULL DEFAULT NULL ,
#disc  decimal(16,2) NULL DEFAULT NULL ,
zlprice  decimal(16,2) NULL DEFAULT NULL ,
normalprice  decimal(16,2) NULL DEFAULT NULL ,
qty  decimal(16,3) NULL DEFAULT NULL ,
sdate  date NULL DEFAULT NULL ,
zkb  decimal(16,2) NULL DEFAULT NULL ,
dayNumber  int DEFAULT 0 ,
discDayNumber  int DEFAULT 0 ,
isnotprom int DEFAULT 0,
INDEX index_1 (shopid, goodsid, zkb) USING BTREE ,
INDEX `index_2` (`shopid`, `goodsid`, `zlprice`) USING BTREE  
)
ENGINE=InnoDB 
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci 
ROW_FORMAT=DYNAMIC;
INSERT INTO tmp_everyday_tmp_tmp_1(shopid, goodsid, zlprice, normalprice, qty, sdate, zkb, dayNumber, discDayNumber)
SELECT  x.shopid                                                                   AS shopid
       ,x.goodsid                                                                  AS goodsid
       ,x.zlprice                                                                  AS zlprice
       ,x.normalprice                                                              AS normalprice
       ,SUM(x.qty)                                                                 AS qty
       ,x.sdate                                                                    AS sdate
       ,zkb														                                             AS zkb
       ,COUNT(IF(x.zkb>=0.95,1,0))                                                 AS dayNumber
       ,COUNT(IF(x.zkb<0.95,1,0)) 													 		 									 AS discDayNumber
FROM tmp_everyday_dms_0 x,tmp_dms1 y 
WHERE x.goodsid=y.goodsid AND 
x.sdate>=changeday AND DATE(NOW())<DATE_ADD(changeday,INTERVAL 7*y.weeknum DAY) AND 
((x.zlprice>0.0 AND x.qty>0.0) OR (x.zlprice=0.0 AND x.qty=0.0)) 
GROUP BY  x.shopid 
         ,x.goodsid 
         ,x.zlprice;

####



DROP TABLE IF EXISTS tmp_everyday_tmp_1;
CREATE TABLE tmp_everyday_tmp_1 (
shopid  varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
goodsid  varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
zlprice  decimal(16,2) NULL DEFAULT NULL ,
qty  decimal(16,3) NULL DEFAULT NULL ,
sdate  date NULL DEFAULT NULL ,
zkb  decimal(16,2) NULL DEFAULT NULL ,
dayNumber  int DEFAULT 0 ,
discDayNumber  int DEFAULT 0 ,
allDayNumber  int DEFAULT 0 ,
`mindate`  date NULL DEFAULT NULL ,
INDEX index_1 (shopid, goodsid, zkb) USING BTREE ,
INDEX `index_2` (`goodsid`, `qty`, `zlprice`, `sdate`) USING BTREE 
)
ENGINE=InnoDB 
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci 
ROW_FORMAT=DYNAMIC;


INSERT INTO tmp_everyday_tmp_1(shopid, goodsid, zlprice, qty, sdate, zkb, dayNumber, discDayNumber,allDayNumber, mindate)
SELECT  x.shopid                                                                   AS shopid
       ,x.goodsid                                                                  AS goodsid
       ,x.zlprice                                                                  AS zlprice
       ,SUM(x.qty)                                                                 AS qty
       ,x.sdate                                                                    AS sdate
       ,zkb														                                             AS zkb
       ,COUNT(IF(x.zkb>=0.95,1,0))             				                             AS dayNumber
       ,COUNT(IF(x.zkb<0.95,1,0))             				                             AS discDayNumber
       ,0				            													                             AS allDayNumber
       ,x.mindate            													                             AS mindate
FROM tmp_everyday_dms_0 x
where (x.qty!=0 or x.zlprice!=0) AND x.sdate<changeday 
GROUP BY  x.shopid
         ,x.goodsid
         ,x.zlprice;


#加上zlprice==0的量
UPDATE tmp_everyday_tmp_tmp_1 x,tmp_everyday_tmp_tmp_1 y 
SET x.qty=x.qty+y.qty,
		x.dayNumber=x.dayNumber+y.dayNumber
WHERE x.goodsid=y.goodsid AND x.shopid=y.shopid AND x.zkb=0.95 AND y.qty=0 AND y.zlprice=0;


#计算剩余天数
UPDATE tmp_everyday_tmp_1 x SET x.allDayNumber=DATEDIFF(changeday,x.mindate);
DELETE x FROM tmp_everyday_tmp_1 x WHERE x.allDayNumber<=0;

#DELETE x FROM tmp_everyday_tmp_1 x WHERE x.allDayNumber<0;

# 销售天数求和
DROP TABLE IF EXISTS tmp_everyday_tmp_2;
CREATE TABLE tmp_everyday_tmp_2 (
shopid  varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
goodsid  varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
discDayNumberSum  INT DEFAULT NULL ,
INDEX index_1 (shopid, goodsid) USING BTREE 
)
ENGINE=InnoDB 
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci 
ROW_FORMAT=DYNAMIC;


INSERT INTO tmp_everyday_tmp_2 (shopid,goodsid,discDayNumberSum) 
SELECT  z.shopid 
       ,z.goodsid 
       ,SUM(z.discDayNumber) AS discDayNumberSum 
FROM tmp_everyday_tmp_1 z 
WHERE z.zkb<0.95 
GROUP BY  z.shopid 
         ,z.goodsid;


UPDATE tmp_everyday_tmp_1 a join tmp_everyday_tmp_2 b on a.shopid=b.shopid AND a.goodsid=b.goodsid
SET a.allDayNumber=(a.allDayNumber-b.discDayNumberSum)
WHERE a.zkb=0.95;


####new
UPDATE tmp_everyday_tmp_1 b,tmp_everyday_tmp_tmp_1 a 
SET a.dayNumber=a.dayNumber+b.allDayNumber,
		a.qty=a.qty+b.qty 
WHERE a.shopid=b.shopid AND a.goodsid=b.goodsid AND a.zkb=b.zkb;
####

DELETE a FROM tmp_everyday_tmp_tmp_1 a WHERE (a.dayNumber<7);


INSERT INTO zn_price_dms_spr (shopid,goodsid,normalprice,disc1,disc2,band1,band2,trueprice,dms,sdate,display_flag)
SELECT 
a.shopid AS shopid,
a.goodsid AS goodsid,
a.normalprice AS normalprice,
a.zkb*100 AS disc1,
CASE WHEN (a.zkb<0.95) THEN (a.zkb+0.05)*100
            ELSE 5000 END AS disc2,
a.zkb*20 AS band1,
CASE WHEN (a.zkb*20<19) THEN a.zkb*20+1
												ELSE 1000 END AS band2,
a.zlprice AS trueprice,
a.qty/a.dayNumber AS dms,  #销售数量
now() as sdate,
0 as display_flag 
FROM tmp_everyday_tmp_tmp_1 a WHERE a.zkb=0.95 AND (a.qty/a.dayNumber)<>0.0 
ON DUPLICATE KEY UPDATE 
zn_price_dms_spr.shopid=VALUES(shopid),
zn_price_dms_spr.goodsid=VALUES(goodsid),
zn_price_dms_spr.normalprice=VALUES(normalprice),
zn_price_dms_spr.disc1=VALUES(disc1),
zn_price_dms_spr.disc2=VALUES(disc2),
zn_price_dms_spr.band1=VALUES(band1),
zn_price_dms_spr.band2=VALUES(band2),
zn_price_dms_spr.trueprice=a.zlprice,
zn_price_dms_spr.dms=VALUES(dms),
zn_price_dms_spr.sdate=now(),
zn_price_dms_spr.display_flag=VALUES(display_flag);

##节日专属商品停止累计促销数量和天数
/*drop temporary table if exists tmp_hg;
create temporary table tmp_hg( 
	select a.* 
	from zn_prom_detail_tmp_spr a join v_zn_md_yt_ywq b on a.shopid=b.shopid join zn_holiday_goods c on b.ywqid=c.ywqid and a.goodsid=c.goodsid and c.holidayid!='01'
			join zn_calendar d on c.holidayid=d.holidayid and year(d.sundate)=year(today) 
);
#b0.更新上一日销售数据到zn_prom_detail_tmp_spr中 
UPDATE zn_prom_detail_tmp_spr x 
SET x.totalDays=CASE WHEN ISNULL(x.totalDays) THEN 1 
										ELSE x.totalDays+1 END 
WHERE x.shopid=shopid AND x.begindate<today AND DATE_ADD(DATE(x.enddate),INTERVAL 1 DAY)>=today;

UPDATE zn_prom_detail_tmp_spr x,zn_dayly_sales y 
SET x.totalQty=CASE WHEN ISNULL(x.totalQty) THEN 0+y.qty 
										ELSE x.totalQty+y.qty END 
WHERE x.shopid=shopid AND y.shopid=shopid AND 
			x.goodsid=y.goodsid AND x.begindate<today and DATE_ADD(DATE(x.enddate),INTERVAL 1 DAY)>=today and y.sdate=DATE_ADD(today,INTERVAL -1 day);



#b. 用zn_daly_sales n周（与促销周期一致）数据计算zn_prom_detail_tmp_spr表中的促销刚刚结束的促销品的日均销量=促销周期内销售数量/促销周期。更新或新增zn_price_dms_spr中促销售价对应的dms
DROP TABLE IF EXISTS tmp_everyday_tmp_3;
CREATE TABLE tmp_everyday_tmp_3 (
`planid`  varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '促销计划编号' ,
`planname`  varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '促销计划名称' ,
`enddate`  datetime NULL DEFAULT NULL COMMENT '促销结束日期时间' ,
`shopid`  varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '门店编码' ,
`shopname`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`goodsid`  varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品编码' ,
`goodsname`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`xlid`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`xlname`  varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`price`  decimal(16,2) NULL DEFAULT NULL COMMENT '促销售价' ,
`planqty`  decimal(16,3) NULL DEFAULT NULL COMMENT '采购分货数量' ,
`flag`  varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '补货标识' ,
`begindate`  datetime NULL DEFAULT NULL COMMENT '促销开始日期时间' ,
`sdate`  datetime NULL DEFAULT NULL COMMENT '备份日期' ,
`totalQty`  decimal(16,2) UNSIGNED NULL DEFAULT 0.00 COMMENT '销售数量累计' ,
`totalDays`  int(11) UNSIGNED NULL DEFAULT 0 COMMENT '销售天数累计' ,
`normalprice`  double NULL DEFAULT NULL ,
`zkb`  decimal(16,2) NULL DEFAULT NULL ,
display_flag varchar(1) default '0'
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
ROW_FORMAT=DYNAMIC
;


INSERT INTO tmp_everyday_tmp_3 (planid,planname,enddate,shopid,shopname,goodsid,
goodsname,xlid,xlname,price,planqty,flag,begindate,sdate,totalQty,totalDays,normalprice,zkb,display_flag)
SELECT 
        x.planid AS planid,
        x.planname AS planname,
        x.enddate AS enddate,
        x.shopid AS shopid,
				w.shopname AS shopname,
        x.goodsid AS goodsid,
				z.`name` AS goodsname,
				z.deptid AS xlid,
				a.xlname AS xlname,
        x.price AS price,
        x.planqty AS planqty,
        x.flag AS flag,
        x.begindate AS begindate,
        x.sdate AS sdate,
        x.totalQty AS totalQty,
        x.totalDays AS totalDays,
				y.normalprice AS normalprice,
				getZKB(x.price,y.normalprice) AS zkb,
				x.display_flag as display_flag
FROM
        zn_prom_detail_tmp_spr x,v_zn_goodsshop y,v_goods z,v_shopname w,v_zn_cg_dl_zl_xl a
WHERE x.shopid=shopid AND DATE_ADD(CAST(x.enddate AS date),INTERVAL 1 DAY)<=today AND y.shopid=shopid AND 
z.goodsid=x.goodsid AND y.goodsid=x.goodsid AND a.xlid=z.deptid and w.shopid=shopId and z.deptid=a.xlid and x.totalqty!=0;

##节日专属商品若totaldays>促销周期时长的50% 或 totaldays>7时则更新促销的dms，否则不更新dms。
##delete a from tmp_everyday_tmp_3 a join tmp_hg b on a.shopid=b.shopid and a.goodsid=b.goodsid and a.begindate=b.begindate and a.enddate=b.enddate
##where a.totalDays<7 and a.totalDays<datediff(a.enddate,a.begindate)*0.5;

INSERT INTO zn_price_dms_spr (shopid,shopname,goodsid,goodsname,xlid,xlname,normalprice,disc1,disc2,band1,band2,trueprice,dms,sdate,display_flag)
SELECT 
a.shopid AS shopid,
a.shopname AS shopname,
a.goodsid AS goodsid,
a.goodsname AS goodsname,
a.xlid AS xlid,
a.xlname AS xlname,
a.normalprice AS normalprice,
a.zkb*100 AS disc1,
CASE WHEN (a.zkb<0.95) THEN (a.zkb+0.05)*100
            ELSE 5000 END AS disc2,
a.zkb*20 AS band1,
CASE WHEN (a.zkb*20<19) THEN a.zkb*20+1
												ELSE 1000 END AS band2,
a.price AS trueprice,
a.totalQty/a.totalDays AS dms,  #销售数量
now() as sdate,
a.display_flag as display_flag
FROM tmp_everyday_tmp_3 a
ON DUPLICATE KEY UPDATE
zn_price_dms_spr.shopid=VALUES(shopid),
zn_price_dms_spr.shopname=VALUES(shopname),
zn_price_dms_spr.goodsid=VALUES(goodsid),
zn_price_dms_spr.goodsname=VALUES(goodsname),
zn_price_dms_spr.xlid=VALUES(xlid),
zn_price_dms_spr.xlname=VALUES(xlname),
zn_price_dms_spr.normalprice=VALUES(normalprice),
zn_price_dms_spr.disc1=VALUES(disc1),
zn_price_dms_spr.disc2=VALUES(disc2),
zn_price_dms_spr.band1=VALUES(band1),
zn_price_dms_spr.band2=VALUES(band2),
zn_price_dms_spr.trueprice=a.price,
zn_price_dms_spr.dms=VALUES(dms),
zn_price_dms_spr.sdate=VALUES(sdate),
zn_price_dms_spr.display_flag=values(display_flag);




#c.根据zn_price_dms_spr表更新zn_xl_dms_spr
INSERT INTO zn_xl_dms_spr (shopid,shopname,xlid,xlname,disc1,disc2,
        dms_disc,dms_ori,sdate,display_flag)
    SELECT 
        x.shopid AS shopid,
        x.shopname AS shopname,
        x.xlid AS xlid,
        x.xlname AS xlname,
        x.disc1 AS disc1,
        x.disc2 AS disc2,
        SUM(x.dms)/COUNT(x.dms) AS dms_disc,
        0.0 AS dms_ori,
        NOW() AS sdate,
        x.display_flag as display_flag
    FROM
        zn_price_dms_spr x WHERE x.shopid=shopid
		GROUP BY x.shopid,x.xlid,x.disc1
ON DUPLICATE KEY UPDATE
		zn_xl_dms_spr.shopid=VALUES(shopid),
		zn_xl_dms_spr.shopname=VALUES(shopname),
		zn_xl_dms_spr.xlid=VALUES(xlid),
		zn_xl_dms_spr.xlname=VALUES(xlname),
		zn_xl_dms_spr.disc1=VALUES(disc1),
		zn_xl_dms_spr.disc2=VALUES(disc2),
		zn_xl_dms_spr.dms_disc=VALUES(dms_disc),
		zn_xl_dms_spr.dms_ori=VALUES(dms_ori),
		zn_xl_dms_spr.sdate=VALUES(sdate),
    zn_xl_dms_spr.display_flag=values(display_flag);

update (SELECT * FROM zn_xl_dms_spr WHERE zn_xl_dms_spr.disc1=95) a RIGHT JOIN zn_xl_dms_spr b 
on a.xlid=b.xlid AND a.shopid=b.shopid
SET b.dms_ori=a.dms_disc
WHERE b.disc1<>95 AND b.shopid=shopid;



#d.促销明细中间表zn_prom_detail_tmp_spr表插入促销明细历史表zn_prom_detail_his_spr后将中间表删除。
		INSERT INTO zn_prom_detail_his_spr(planid,planname,enddate,shopid,goodsid,price,planqty,flag,begindate,totalqty,totaldays,sdate,display_flag)
    SELECT 
        `zn_prom_detail_tmp_spr`.`planid` AS `planid`,
        `zn_prom_detail_tmp_spr`.`planname` AS `planname`,
        `zn_prom_detail_tmp_spr`.`enddate` AS `enddate`,
        `zn_prom_detail_tmp_spr`.`shopid` AS `shopid`,
        `zn_prom_detail_tmp_spr`.`goodsid` AS `goodsid`,
        `zn_prom_detail_tmp_spr`.`price` AS `price`,
        `zn_prom_detail_tmp_spr`.`planqty` AS `planqty`,
        `zn_prom_detail_tmp_spr`.`flag` AS `flag`,
        `zn_prom_detail_tmp_spr`.`begindate` AS `begindate`,
        zn_prom_detail_tmp_spr.totalQty as totalqty,
        zn_prom_detail_tmp_spr.totaldays as totaldays,
        now() AS `sdate`,
        zn_prom_detail_tmp_spr.display_flag as display_flag
    FROM
        zn_prom_detail_tmp_spr WHERE zn_prom_detail_tmp_spr.shopid=shopid AND 
		DATE_ADD(CAST(zn_prom_detail_tmp_spr.enddate AS date),INTERVAL 1 DAY)<=today;

		DELETE FROM zn_prom_detail_tmp_spr WHERE zn_prom_detail_tmp_spr.shopid=shopid AND 
		DATE_ADD(CAST(zn_prom_detail_tmp_spr.enddate AS date),INTERVAL 1 DAY)<=today;
*/
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for daily_dms_sub_test_step3_test
-- ----------------------------
DROP PROCEDURE IF EXISTS `daily_dms_sub_test_step3_test`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `daily_dms_sub_test_step3_test`(IN `shopid` varchar(64),IN `thisday` date)
BEGIN
DECLARE today date;
declare springed date;
DECLARE changeday date;

DECLARE total_qty DECIMAL(16,3) DEFAULT 0.000;
DECLARE total_sale_days INT DEFAULT 0;

DECLARE this_goodsid VARCHAR(32);
DECLARE qty DECIMAL(16,3) DEFAULT 0.000;
DECLARE sale_days INT DEFAULT 0;
-- 游标结束的标志
    declare done int default 0;
    -- 声明游标
    declare cur cursor for select goodsid from tmp_everyday_dms_0;
    -- 指定游标循环结束时的返回值 
    declare continue handler for not found set done = 1;
    -- 打开游标
    open cur;

		REPEAT 
				FETCH cur INTO this_goodsid;
				SELECT * 
					FROM tmp_everyday_dms_0 x 
					WHERE x.goodsid=this_goodsid AND x.shopid=shopid  
					GROUP BY x.zlprice;
				UNTIL done=1 
		END REPEAT;









SELECT  version()
       ,@@sql_mode;

SET sql_mode=(
SELECT  REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY','')); ##CALL classify_new();
SET today=thisDay;
SET changeday='2021-1-18';
#CALL proc_tmpdayly(DATE_SUB(thisDay,INTERVAL 2 DAY),thisDay);
select enddate into springed from zn_calendar where holidayid='01' and year(sundate)=year(today);

drop temporary table if exists tmp_dms1;
create temporary table tmp_dms1(
  select b.goodsid,d.weeknum from  v_goods b  
join v_cg_dl_zl_xl c on b.deptid=c.xlid 
join zn_dms_week d on c.cgid=d.cgid 
);
create unique index index_1 on tmp_dms1(goodsid);
#a. 用zn_daly_sales近2周数据计算正常售价（ zlprice /normalprice>=0.95）的日均销量=2周正常售价销售数量/（14-促销有销售周天数）。
#更新zn_price_dms_spr中正常售价对应的dms

#计算价格段(全部数据，未groupby)
DROP TABLE IF EXISTS tmp_everyday_dms_0;
CREATE TABLE `tmp_everyday_dms_0` (
`shopid`  varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`shopname`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`goodsid`  varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`goodsname`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`salevalue`  decimal(16,2) NULL DEFAULT NULL ,
`discvalue`  decimal(16,2) NULL DEFAULT NULL ,
`disc`  int(16) NULL DEFAULT NULL ,
`zlprice`  decimal(16,2) NULL DEFAULT NULL ,
`normalprice`  decimal(16,2) NULL DEFAULT NULL ,
`qty`  decimal(16,3) NULL DEFAULT NULL ,
`sdate`  date NULL DEFAULT NULL ,
`zkb`  decimal(16,2) NULL DEFAULT NULL ,
`stock`  decimal(16,3) NULL DEFAULT 0.000 ,
INDEX `index_1` (`shopid`, `goodsid`, `zkb`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
ROW_FORMAT=DYNAMIC;

INSERT INTO `tmp_everyday_dms_0`
(`shopid`,
`shopname`,
`goodsid`,
`goodsname`,
`salevalue`,
`discvalue`,
`disc`,
`zlprice`,
`normalprice`,
`qty`,
`sdate`,
`zkb`,`stock`)
SELECT  x.shopid                                                                   AS shopid
       ,x.shopname                                                                 AS shopname
       ,x.goodsid                                                                  AS goodsid
       ,x.goodsname                                                                AS goodsname
       ,x.salevalue  			                                                         AS salevalue
       ,x.discvalue			                                                           AS discvalue
       ,x.zlprice/x.normalprice											                               AS disc
       ,x.zlprice                                                                  AS zlprice
       ,x.normalprice                                                              AS normalprice
       ,x.qty			                                                                 AS qty
       ,x.sdate                                                                    AS sdate
       ,getZKB(x.zlprice,x.normalprice)                                            AS zkb
       ,x.`stock`                                            AS `stock`
FROM zn_dayly_sales x join tmp_dms1 d on x.goodsid=d.goodsid
WHERE  x.sdate<today and x.sdate>=DATE_SUB(today,INTERVAL if(datediff(today,springed)<d.weeknum*7 and datediff(today,springed)>0,floor(datediff(today,springed)/7)*7,d.weeknum*7) DAY) 
AND x.shopid=shopId;

##节日专属商品节日期间停止更新dms
/*delete a from tmp_everyday_dms_0 a join v_zn_md_yt_ywq b on a.shopid=b.shopid join zn_holiday_goods c on b.ywqid=c.ywqid and a.goodsid=c.goodsid and c.holidayid!='01'
join zn_calendar d on c.holidayid=d.holidayid and year(d.sundate)=year(today)
where d.begindate<=today and d.enddate>=today;*/

#每个价格段汇总，取主力售价对应的销售最多的
DROP TABLE IF EXISTS tmp_everyday_dms_00;
CREATE TABLE `tmp_everyday_dms_00` (
`shopid`  varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`goodsid`  varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`zlprice`  decimal(16,2) NULL DEFAULT NULL ,
`qty`  decimal(16,3) NULL DEFAULT NULL ,
`zkb`  decimal(16,2) NULL DEFAULT NULL ,
INDEX `index_1` (`shopid`, `goodsid`, `zkb`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
ROW_FORMAT=DYNAMIC;

INSERT INTO `tmp_everyday_dms_00`
(`shopid`,
`goodsid`,
`zlprice`,
`qty`,
`zkb`)
SELECT 
				x.shopid																																	 AS shopid
#       ,x.shopname                                                                 AS shopname
       ,x.goodsid                                                                  AS goodsid
#       ,x.goodsname                                                                AS goodsname
#       ,SUM(x.salevalue)  			                                                   AS salevalue
#       ,SUM(x.discvalue)		                                                       AS discvalue
#       ,0																						                               AS disc
       ,x.zlprice		               		                                             AS zlprice
#       ,x.normalprice                                                              AS normalprice
       ,SUM(x.qty)	                                                               AS qty
#       ,x.sdate                                                                    AS sdate
       ,x.zkb													                                             AS zkb
FROM tmp_everyday_dms_0 x 
GROUP BY x.shopid
         ,x.goodsid
         ,x.zkb
				 ,x.zlprice;
create index index_2 on tmp_everyday_dms_00(shopid,goodsid,zkb,zlprice,qty);

drop temporary table if exists tmp_1;
create temporary table tmp_1(
	select shopid,goodsid,zkb,zlprice,max(qty) as mqty from tmp_everyday_dms_00 group by shopid,goodsid,zlprice,zkb
);
create unique index index_k on tmp_1(shopid,goodsid,zkb,zlprice,mqty);

DROP TABLE IF EXISTS tmp_everyday_dms_000;
CREATE TABLE `tmp_everyday_dms_000` (
`shopid`  varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`goodsid`  varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`zlprice`  decimal(16,2) NULL DEFAULT NULL ,
`qty`  decimal(16,3) NULL DEFAULT NULL ,
`zkb`  decimal(16,2) NULL DEFAULT NULL ,
INDEX `index_1` (`shopid`, `goodsid`, `zkb`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
ROW_FORMAT=DYNAMIC;

INSERT INTO `tmp_everyday_dms_000`
(`shopid`,
`goodsid`,
`zlprice`,
`qty`,
`zkb`)
SELECT 
				x.shopid																																	 AS shopid
#       ,x.shopname                                                                 AS shopname
       ,x.goodsid                                                                  AS goodsid
#       ,x.goodsname                                                                AS goodsname
#       ,SUM(x.salevalue)  			                                                   AS salevalue
#       ,SUM(x.discvalue)		                                                       AS discvalue
#       ,0																						                               AS disc
       ,x.zlprice		               		                                             AS zlprice
#       ,x.normalprice                                                              AS normalprice
       ,x.qty	                                                               AS qty
#       ,x.sdate                                                                    AS sdate
       ,x.zkb													                                             AS zkb
FROM tmp_everyday_dms_00 x join tmp_1 y on x.shopid=y.shopid and x.goodsid=y.goodsid and x.zkb=y.zkb and x.zlprice=y.zlprice and x.qty=y.mqty;



#主力价格回插
UPDATE tmp_everyday_dms_0 x LEFT JOIN tmp_everyday_dms_000 y ON x.shopid=shopid AND y.shopid=shopid 
AND x.goodsid=y.goodsid AND x.zkb=y.zkb 
SET x.zlprice=y.zlprice;


#汇总

####new
DROP TABLE IF EXISTS tmp_everyday_tmp_tmp_1;
CREATE TABLE tmp_everyday_tmp_tmp_1 (
shopid  varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
shopname  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
goodsid  varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
goodsname  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
salevalue  decimal(16,2) NULL DEFAULT NULL ,
discvalue  decimal(16,2) NULL DEFAULT NULL ,
disc  decimal(16,2) NULL DEFAULT NULL ,
zlprice  decimal(16,2) NULL DEFAULT NULL ,
normalprice  decimal(16,2) NULL DEFAULT NULL ,
qty  decimal(16,3) NULL DEFAULT NULL ,
sdate  date NULL DEFAULT NULL ,
zkb  decimal(16,2) NULL DEFAULT NULL ,
dayNumber  int DEFAULT 0 ,
discDayNumber  int DEFAULT 0 ,
INDEX index_1 (shopid, goodsid, zkb) USING BTREE ,
INDEX `index_2` (`shopid`, `goodsid`, `zlprice`) USING BTREE  
)
ENGINE=InnoDB 
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci 
ROW_FORMAT=DYNAMIC;
INSERT INTO tmp_everyday_tmp_tmp_1(shopid, shopname, goodsid, goodsname, salevalue, 
discvalue, disc, zlprice, normalprice, qty, sdate, zkb, dayNumber, discDayNumber)
SELECT  x.shopid                                                                   AS shopid
       ,x.shopname                                                                 AS shopname
       ,x.goodsid                                                                  AS goodsid
       ,x.goodsname                                                                AS goodsname
       ,SUM(x.salevalue)                                                           AS salevalue
       ,SUM(x.discvalue)                                                           AS discvalue
       ,0																						                               AS disc
       ,x.zlprice                                                                  AS zlprice
       ,x.normalprice                                                              AS normalprice
       ,SUM(x.qty)                                                                 AS qty
       ,x.sdate                                                                    AS sdate
       ,zkb														                                             AS zkb
       ,COUNT(IF(x.zkb>=0.95,1,0))                                                 AS dayNumber
       ,COUNT(1) 													 		 AS discDayNumber
FROM tmp_everyday_dms_0 x,tmp_dms1 y 
WHERE x.goodsid=y.goodsid AND 
x.sdate>=changeday AND DATE(NOW())<DATE_ADD(changeday,INTERVAL 7*y.weeknum DAY) AND (x.zlprice>0.0 AND x.qty>0.0) 
GROUP BY  x.shopid 
         ,x.goodsid 
         ,x.zlprice;

DROP TABLE IF EXISTS tmp_everyday_tmp_tmp_2;
CREATE TABLE `tmp_everyday_tmp_tmp_2` (
`shopid`  varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`goodsid`  varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`zlprice`  decimal(16,2) NULL DEFAULT NULL ,
`dayNumber`  int(11) NOT NULL DEFAULT 0,
qty  decimal(16,3) NULL DEFAULT 0.000 ,
INDEX `index_1` (`shopid`, `goodsid`, `zlprice`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
ROW_FORMAT=DYNAMIC;
SELECT x.shopid,x.goodsid,x.zlprice,COUNT(1),x.qty AS dayNumber
FROM tmp_everyday_dms_0 x,tmp_dms1 y 
WHERE x.goodsid=y.goodsid AND 
x.sdate>=changeday AND DATE(NOW())<DATE_ADD(changeday,INTERVAL 7*y.weeknum DAY) AND x.zlprice=0.0 AND x.qty=0.0
GROUP BY  x.shopid
         ,x.goodsid
         ,x.zlprice;

UPDATE tmp_everyday_tmp_tmp_1 a,tmp_everyday_tmp_tmp_2 b 
SET a.dayNumber=a.dayNumber+b.dayNumber,
		a.qty=a.qty+b.qty
WHERE a.shopid=b.shopid AND a.goodsid=b.goodsid AND a.zlprice=b.zlprice;

####



DROP TABLE IF EXISTS tmp_everyday_tmp_1;
CREATE TABLE tmp_everyday_tmp_1 (
shopid  varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
shopname  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
goodsid  varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
goodsname  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
salevalue  decimal(16,2) NULL DEFAULT NULL ,
discvalue  decimal(16,2) NULL DEFAULT NULL ,
disc  decimal(16,2) NULL DEFAULT NULL ,
zlprice  decimal(16,2) NULL DEFAULT NULL ,
normalprice  decimal(16,2) NULL DEFAULT NULL ,
qty  decimal(16,3) NULL DEFAULT NULL ,
sdate  date NULL DEFAULT NULL ,
zkb  decimal(16,2) NULL DEFAULT NULL ,
dayNumber  int DEFAULT 0 ,
discDayNumber  int DEFAULT 0 ,
INDEX index_1 (shopid, goodsid, zkb) USING BTREE ,
INDEX `index_2` (`goodsid`, `qty`, `zlprice`, `sdate`) USING BTREE 
)
ENGINE=InnoDB 
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci 
ROW_FORMAT=DYNAMIC;


INSERT INTO tmp_everyday_tmp_1(shopid, shopname, goodsid, goodsname, salevalue, 
discvalue, disc, zlprice, normalprice, qty, sdate, zkb, dayNumber, discDayNumber)
SELECT  x.shopid                                                                   AS shopid
       ,x.shopname                                                                 AS shopname
       ,x.goodsid                                                                  AS goodsid
       ,x.goodsname                                                                AS goodsname
       ,SUM(x.salevalue)                                                           AS salevalue
       ,SUM(x.discvalue)                                                           AS discvalue
       ,0																						                               AS disc
       ,x.zlprice                                                                  AS zlprice
       ,x.normalprice                                                              AS normalprice
       ,SUM(x.qty)                                                                 AS qty
       ,x.sdate                                                                    AS sdate
       ,zkb														                                             AS zkb
       ,COUNT(x.zlprice)                                                           AS dayNumber
       ,COUNT(IF((x.zlprice<(getZKB(x.zlprice,x.normalprice)*x.normalprice)),1,0)) AS discDayNumber
FROM tmp_everyday_dms_0 x,tmp_dms1 y 
where x.goodsid=y.goodsid AND (x.qty!=0 or x.zlprice!=0) AND 
x.sdate>=DATE_SUB(date(NOW()),INTERVAL 7*y.weeknum DAY) AND x.sdate<changeday 
GROUP BY  x.shopid
         ,x.goodsid
         ,x.zlprice;


DROP TABLE IF EXISTS tmp_everyday_tmp_2;
CREATE TABLE tmp_everyday_tmp_2 (
shopid  varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
shopname  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
goodsid  varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
goodsname  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
xlid  varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品类别（小类）' ,
xlname varchar(64) DEFAULT NULL COMMENT '小类名称',
salevalue  decimal(16,2) NULL DEFAULT NULL ,
discvalue  decimal(16,2) NULL DEFAULT NULL ,
disc  decimal(16,2) NULL DEFAULT NULL ,
normalprice  decimal(16,2) NULL DEFAULT NULL ,
zlprice  decimal(16,2) NULL DEFAULT NULL ,
qty  decimal(16,3) NULL DEFAULT NULL ,
zkb  decimal(16,2) NULL DEFAULT NULL ,
allDayNumber  int DEFAULT 0,
discDayNumber  int DEFAULT 0,
isnotprom int DEFAULT 0,
INDEX index_1 (shopid, goodsid) USING BTREE ,
INDEX index_2 (shopid, goodsid, zkb) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
ROW_FORMAT=DYNAMIC;


INSERT INTO tmp_everyday_tmp_2(shopid, shopname, goodsid, goodsname, 
salevalue, discvalue, disc, normalprice,zlprice, qty, zkb, allDayNumber, discDayNumber)
SELECT  y.shopid                                      AS shopid
       ,y.shopname                                    AS shopname
       ,y.goodsid                                     AS goodsid
       ,y.goodsname                                   AS goodsname
       ,SUM(y.salevalue)                              AS salevalue
       ,SUM(y.discvalue)                              AS discvalue
       ,SUM(y.salevalue)/SUM(y.salevalue+y.discvalue) AS disc
       ,y.normalprice                                 AS normalprice
       ,y.zlprice                                		  AS zlprice
       ,SUM(y.qty)                                    AS qty
       ,y.zkb                                         AS zkb
       ,SUM(y.dayNumber)                          		AS allDayNumber
       ,SUM(y.discDayNumber)                          AS discDayNumber
FROM tmp_everyday_tmp_1 y
GROUP BY  y.shopid
         ,y.goodsid
         ,y.zkb;


# 销售数量求和
DROP TABLE IF EXISTS tmp_everyday_tmp_2_1;
CREATE TABLE tmp_everyday_tmp_2_1 (
shopid  varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
goodsid  varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
dayNumberSum  INT DEFAULT NULL ,
INDEX index_1 (shopid, goodsid) USING BTREE 
)
ENGINE=InnoDB 
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci 
ROW_FORMAT=DYNAMIC;


INSERT INTO tmp_everyday_tmp_2_1 (shopid,goodsid,dayNumberSum) 
SELECT  z.shopid 
       ,z.goodsid 
       ,SUM(z.allDayNumber) AS dayNumberSum 
FROM tmp_everyday_tmp_2 z 
WHERE z.zkb<0.95 
GROUP BY  z.shopid 
         ,z.goodsid;


####
UPDATE tmp_everyday_tmp_2 a join tmp_dms1 b on a.goodsid=b.goodsid
SET a.allDayNumber=b.weeknum*7-DATEDIFF(thisDay,changeday) WHERE a.zkb=0.95;
####


UPDATE tmp_everyday_tmp_2 a join tmp_everyday_tmp_2_1 b on a.shopid=b.shopid AND a.goodsid=b.goodsid
SET a.allDayNumber=(a.allDayNumber-b.dayNumberSum),a.isnotprom=1
WHERE a.zkb=0.95;


####new
UPDATE tmp_everyday_tmp_2 a,tmp_everyday_tmp_tmp_1 b
SET a.allDayNumber=a.allDayNumber+b.dayNumber,
		a.qty=a.qty+b.qty
WHERE a.shopid=b.shopid AND a.goodsid=b.goodsid AND a.zkb=b.zkb;
####

DELETE a FROM tmp_everyday_tmp_2 a WHERE a.allDayNumber<7 AND a.isnotprom=1;


INSERT INTO zn_price_dms_spr (shopid,goodsid,normalprice,disc1,disc2,band1,band2,trueprice,dms,sdate,display_flag)
SELECT 
a.shopid AS shopid,
a.goodsid AS goodsid,
a.normalprice AS normalprice,
a.zkb*100 AS disc1,
CASE WHEN (a.zkb<0.95) THEN (a.zkb+0.05)*100
            ELSE 5000 END AS disc2,
a.zkb*20 AS band1,
CASE WHEN (a.zkb*20<19) THEN a.zkb*20+1
												ELSE 1000 END AS band2,
a.zlprice AS trueprice,
a.qty/a.allDayNumber AS dms,  #销售数量
now() as sdate,
0 as display_flag
FROM tmp_everyday_tmp_2 a WHERE a.zkb=0.95 AND (a.qty/a.allDayNumber)<>0.0
ON DUPLICATE KEY UPDATE
zn_price_dms_spr.shopid=VALUES(shopid),
zn_price_dms_spr.goodsid=VALUES(goodsid),
zn_price_dms_spr.normalprice=VALUES(normalprice),
zn_price_dms_spr.disc1=VALUES(disc1),
zn_price_dms_spr.disc2=VALUES(disc2),
zn_price_dms_spr.band1=VALUES(band1),
zn_price_dms_spr.band2=VALUES(band2),
zn_price_dms_spr.trueprice=a.zlprice,
zn_price_dms_spr.dms=VALUES(dms),
zn_price_dms_spr.sdate=now(),
zn_price_dms_spr.display_flag=VALUES(display_flag);

##节日专属商品停止累计促销数量和天数
/*drop temporary table if exists tmp_hg;
create temporary table tmp_hg(
	select a.*
	from zn_prom_detail_tmp_spr a join v_zn_md_yt_ywq b on a.shopid=b.shopid join zn_holiday_goods c on b.ywqid=c.ywqid and a.goodsid=c.goodsid and c.holidayid!='01'
			join zn_calendar d on c.holidayid=d.holidayid and year(d.sundate)=year(today)
);
#b0.更新上一日销售数据到zn_prom_detail_tmp_spr中
UPDATE zn_prom_detail_tmp_spr x 
SET x.totalDays=CASE WHEN ISNULL(x.totalDays) THEN 1 
										ELSE x.totalDays+1 END 
WHERE x.shopid=shopid AND x.begindate<today AND DATE_ADD(DATE(x.enddate),INTERVAL 1 DAY)>=today;

UPDATE zn_prom_detail_tmp_spr x,zn_dayly_sales y 
SET x.totalQty=CASE WHEN ISNULL(x.totalQty) THEN 0+y.qty 
										ELSE x.totalQty+y.qty END 
WHERE x.shopid=shopid AND y.shopid=shopid AND 
			x.goodsid=y.goodsid AND x.begindate<today and DATE_ADD(DATE(x.enddate),INTERVAL 1 DAY)>=today and y.sdate=DATE_ADD(today,INTERVAL -1 day);



#b. 用zn_daly_sales n周（与促销周期一致）数据计算zn_prom_detail_tmp_spr表中的促销刚刚结束的促销品的日均销量=促销周期内销售数量/促销周期。更新或新增zn_price_dms_spr中促销售价对应的dms
DROP TABLE IF EXISTS tmp_everyday_tmp_3;
CREATE TABLE tmp_everyday_tmp_3 (
`planid`  varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '促销计划编号' ,
`planname`  varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '促销计划名称' ,
`enddate`  datetime NULL DEFAULT NULL COMMENT '促销结束日期时间' ,
`shopid`  varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '门店编码' ,
`shopname`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`goodsid`  varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品编码' ,
`goodsname`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`xlid`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`xlname`  varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`price`  decimal(16,2) NULL DEFAULT NULL COMMENT '促销售价' ,
`planqty`  decimal(16,3) NULL DEFAULT NULL COMMENT '采购分货数量' ,
`flag`  varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '补货标识' ,
`begindate`  datetime NULL DEFAULT NULL COMMENT '促销开始日期时间' ,
`sdate`  datetime NULL DEFAULT NULL COMMENT '备份日期' ,
`totalQty`  decimal(16,2) UNSIGNED NULL DEFAULT 0.00 COMMENT '销售数量累计' ,
`totalDays`  int(11) UNSIGNED NULL DEFAULT 0 COMMENT '销售天数累计' ,
`normalprice`  double NULL DEFAULT NULL ,
`zkb`  decimal(16,2) NULL DEFAULT NULL ,
display_flag varchar(1) default '0'
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
ROW_FORMAT=DYNAMIC
;


INSERT INTO tmp_everyday_tmp_3 (planid,planname,enddate,shopid,shopname,goodsid,
goodsname,xlid,xlname,price,planqty,flag,begindate,sdate,totalQty,totalDays,normalprice,zkb,display_flag)
SELECT 
        x.planid AS planid,
        x.planname AS planname,
        x.enddate AS enddate,
        x.shopid AS shopid,
				w.shopname AS shopname,
        x.goodsid AS goodsid,
				z.`name` AS goodsname,
				z.deptid AS xlid,
				a.xlname AS xlname,
        x.price AS price,
        x.planqty AS planqty,
        x.flag AS flag,
        x.begindate AS begindate,
        x.sdate AS sdate,
        x.totalQty AS totalQty,
        x.totalDays AS totalDays,
				y.normalprice AS normalprice,
				getZKB(x.price,y.normalprice) AS zkb,
				x.display_flag as display_flag
FROM
        zn_prom_detail_tmp_spr x,v_zn_goodsshop y,v_goods z,v_shopname w,v_zn_cg_dl_zl_xl a
WHERE x.shopid=shopid AND DATE_ADD(CAST(x.enddate AS date),INTERVAL 1 DAY)<=today AND y.shopid=shopid AND 
z.goodsid=x.goodsid AND y.goodsid=x.goodsid AND a.xlid=z.deptid and w.shopid=shopId and z.deptid=a.xlid and x.totalqty!=0;

##节日专属商品若totaldays>促销周期时长的50% 或 totaldays>7时则更新促销的dms，否则不更新dms。
##delete a from tmp_everyday_tmp_3 a join tmp_hg b on a.shopid=b.shopid and a.goodsid=b.goodsid and a.begindate=b.begindate and a.enddate=b.enddate
##where a.totalDays<7 and a.totalDays<datediff(a.enddate,a.begindate)*0.5;

INSERT INTO zn_price_dms_spr (shopid,shopname,goodsid,goodsname,xlid,xlname,normalprice,disc1,disc2,band1,band2,trueprice,dms,sdate,display_flag)
SELECT 
a.shopid AS shopid,
a.shopname AS shopname,
a.goodsid AS goodsid,
a.goodsname AS goodsname,
a.xlid AS xlid,
a.xlname AS xlname,
a.normalprice AS normalprice,
a.zkb*100 AS disc1,
CASE WHEN (a.zkb<0.95) THEN (a.zkb+0.05)*100
            ELSE 5000 END AS disc2,
a.zkb*20 AS band1,
CASE WHEN (a.zkb*20<19) THEN a.zkb*20+1
												ELSE 1000 END AS band2,
a.price AS trueprice,
a.totalQty/a.totalDays AS dms,  #销售数量
now() as sdate,
a.display_flag as display_flag
FROM tmp_everyday_tmp_3 a
ON DUPLICATE KEY UPDATE
zn_price_dms_spr.shopid=VALUES(shopid),
zn_price_dms_spr.shopname=VALUES(shopname),
zn_price_dms_spr.goodsid=VALUES(goodsid),
zn_price_dms_spr.goodsname=VALUES(goodsname),
zn_price_dms_spr.xlid=VALUES(xlid),
zn_price_dms_spr.xlname=VALUES(xlname),
zn_price_dms_spr.normalprice=VALUES(normalprice),
zn_price_dms_spr.disc1=VALUES(disc1),
zn_price_dms_spr.disc2=VALUES(disc2),
zn_price_dms_spr.band1=VALUES(band1),
zn_price_dms_spr.band2=VALUES(band2),
zn_price_dms_spr.trueprice=a.price,
zn_price_dms_spr.dms=VALUES(dms),
zn_price_dms_spr.sdate=VALUES(sdate),
zn_price_dms_spr.display_flag=values(display_flag);




#c.根据zn_price_dms_spr表更新zn_xl_dms_spr
INSERT INTO zn_xl_dms_spr (shopid,shopname,xlid,xlname,disc1,disc2,
        dms_disc,dms_ori,sdate,display_flag)
    SELECT 
        x.shopid AS shopid,
        x.shopname AS shopname,
        x.xlid AS xlid,
        x.xlname AS xlname,
        x.disc1 AS disc1,
        x.disc2 AS disc2,
        SUM(x.dms)/COUNT(x.dms) AS dms_disc,
        0.0 AS dms_ori,
        NOW() AS sdate,
        x.display_flag as display_flag
    FROM
        zn_price_dms_spr x WHERE x.shopid=shopid
		GROUP BY x.shopid,x.xlid,x.disc1
ON DUPLICATE KEY UPDATE
		zn_xl_dms_spr.shopid=VALUES(shopid),
		zn_xl_dms_spr.shopname=VALUES(shopname),
		zn_xl_dms_spr.xlid=VALUES(xlid),
		zn_xl_dms_spr.xlname=VALUES(xlname),
		zn_xl_dms_spr.disc1=VALUES(disc1),
		zn_xl_dms_spr.disc2=VALUES(disc2),
		zn_xl_dms_spr.dms_disc=VALUES(dms_disc),
		zn_xl_dms_spr.dms_ori=VALUES(dms_ori),
		zn_xl_dms_spr.sdate=VALUES(sdate),
    zn_xl_dms_spr.display_flag=values(display_flag);

update (SELECT * FROM zn_xl_dms_spr WHERE zn_xl_dms_spr.disc1=95) a RIGHT JOIN zn_xl_dms_spr b 
on a.xlid=b.xlid AND a.shopid=b.shopid
SET b.dms_ori=a.dms_disc
WHERE b.disc1<>95 AND b.shopid=shopid;



#d.促销明细中间表zn_prom_detail_tmp_spr表插入促销明细历史表zn_prom_detail_his_spr后将中间表删除。
		INSERT INTO zn_prom_detail_his_spr(planid,planname,enddate,shopid,goodsid,price,planqty,flag,begindate,totalqty,totaldays,sdate,display_flag)
    SELECT 
        `zn_prom_detail_tmp_spr`.`planid` AS `planid`,
        `zn_prom_detail_tmp_spr`.`planname` AS `planname`,
        `zn_prom_detail_tmp_spr`.`enddate` AS `enddate`,
        `zn_prom_detail_tmp_spr`.`shopid` AS `shopid`,
        `zn_prom_detail_tmp_spr`.`goodsid` AS `goodsid`,
        `zn_prom_detail_tmp_spr`.`price` AS `price`,
        `zn_prom_detail_tmp_spr`.`planqty` AS `planqty`,
        `zn_prom_detail_tmp_spr`.`flag` AS `flag`,
        `zn_prom_detail_tmp_spr`.`begindate` AS `begindate`,
        zn_prom_detail_tmp_spr.totalQty as totalqty,
        zn_prom_detail_tmp_spr.totaldays as totaldays,
        now() AS `sdate`,
        zn_prom_detail_tmp_spr.display_flag as display_flag
    FROM
        zn_prom_detail_tmp_spr WHERE zn_prom_detail_tmp_spr.shopid=shopid AND 
		DATE_ADD(CAST(zn_prom_detail_tmp_spr.enddate AS date),INTERVAL 1 DAY)<=today;

		DELETE FROM zn_prom_detail_tmp_spr WHERE zn_prom_detail_tmp_spr.shopid=shopid AND 
		DATE_ADD(CAST(zn_prom_detail_tmp_spr.enddate AS date),INTERVAL 1 DAY)<=today;
*/
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for daily_dms_sub_test_step4
-- ----------------------------
DROP PROCEDURE IF EXISTS `daily_dms_sub_test_step4`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `daily_dms_sub_test_step4`(IN `shopid` varchar(64),IN `thisday` date)
BEGIN
DECLARE today date;
declare springed date;
DECLARE changeday date;
DECLARE allDaysBeforeChangeDay int;


SET today=thisDay;
SET changeday='2021-1-18';
select enddate into springed from zn_calendar where holidayid='01' and year(sundate)=year(today);


UPDATE zn_prom_detail_tmp_spr x 
SET x.totalDays=CASE WHEN ISNULL(x.totalDays) THEN 1 
										ELSE x.totalDays+1 END 
WHERE x.shopid=shopid AND x.begindate<today AND DATE_ADD(DATE(x.enddate),INTERVAL 1 DAY)>=today;

UPDATE zn_prom_detail_tmp_spr x,zn_dayly_sales y 
SET x.totalQty=CASE WHEN ISNULL(x.totalQty) THEN 0+y.qty 
										ELSE x.totalQty+y.qty END
WHERE x.shopid=shopid AND y.shopid=shopid AND 
			x.goodsid=y.goodsid AND x.begindate<today and DATE_ADD(DATE(x.enddate),INTERVAL 1 DAY)>=today and y.sdate=DATE_ADD(today,INTERVAL -1 day);

/*update zn_prom_detail_tmp_spr a join tmp_hg b on a.shopid=b.shopid and a.goodsid=b.goodsid and a.begindate=b.begindate and a.enddate=b.enddate
set a.totalDays=b.totaldays,a.totalQty=b.totalqty;*/

#b. 用zn_daly_sales n周（与促销周期一致）数据计算zn_prom_detail_tmp_spr表中的促销刚刚结束的促销品的日均销量=促销周期内销售数量/促销周期。更新或新增zn_price_dms_spr中促销售价对应的dms
DROP TABLE IF EXISTS tmp_everyday_tmp_3;
CREATE TABLE tmp_everyday_tmp_3 (
`planid`  varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '促销计划编号' ,
`planname`  varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '促销计划名称' ,
`enddate`  datetime NULL DEFAULT NULL COMMENT '促销结束日期时间' ,
`shopid`  varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '门店编码' ,
`shopname`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`goodsid`  varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品编码' ,
`goodsname`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`xlid`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`xlname`  varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`price`  decimal(16,2) NULL DEFAULT NULL COMMENT '促销售价' ,
`planqty`  decimal(16,3) NULL DEFAULT NULL COMMENT '采购分货数量' ,
`flag`  varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '补货标识' ,
`begindate`  datetime NULL DEFAULT NULL COMMENT '促销开始日期时间' ,
`sdate`  datetime NULL DEFAULT NULL COMMENT '备份日期' ,
`totalQty`  decimal(16,2) UNSIGNED NULL DEFAULT 0.00 COMMENT '销售数量累计' ,
`totalDays`  int(11) UNSIGNED NULL DEFAULT 0 COMMENT '销售天数累计' ,
`normalprice`  double NULL DEFAULT NULL ,
`zkb`  decimal(16,2) NULL DEFAULT NULL ,
display_flag varchar(1) default '0'
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
ROW_FORMAT=DYNAMIC
;


INSERT INTO tmp_everyday_tmp_3 (planid,planname,enddate,shopid,shopname,goodsid,goodsname,xlid,xlname,price,
planqty,flag,begindate,sdate,totalQty,totalDays,normalprice,zkb,display_flag)
SELECT 
        x.planid AS planid,
        x.planname AS planname,
        x.enddate AS enddate,
        x.shopid AS shopid,
				w.shopname AS shopname,
        x.goodsid AS goodsid,
				z.`name` AS goodsname,
				z.deptid AS xlid,
				a.xlname AS xlname,
        x.price AS price,
        x.planqty AS planqty,
        x.flag AS flag,
        x.begindate AS begindate,
        x.sdate AS sdate,
        x.totalQty AS totalQty,
        x.totalDays AS totalDays,
				y.normalprice AS normalprice,
				getZKB(x.price,y.normalprice) AS zkb,
				x.display_flag as display_flag
FROM
        zn_prom_detail_tmp_spr x,v_zn_goodsshop y,v_goods z,v_shopname w,v_zn_cg_dl_zl_xl a
WHERE x.shopid=shopid AND DATE_ADD(CAST(x.enddate AS date),INTERVAL 1 DAY)<=today AND y.shopid=shopid AND 
z.goodsid=x.goodsid AND y.goodsid=x.goodsid AND a.xlid=z.deptid and w.shopid=shopId and z.deptid=a.xlid and x.totalqty!=0;

##节日专属商品若totaldays>促销周期时长的50% 或 totaldays>7时则更新促销的dms，否则不更新dms。
##delete a from tmp_everyday_tmp_3 a join tmp_hg b on a.shopid=b.shopid and a.goodsid=b.goodsid and a.begindate=b.begindate and a.enddate=b.enddate
##where a.totalDays<7 and a.totalDays<datediff(a.enddate,a.begindate)*0.5;
DROP TABLE IF EXISTS tmp_dms2;
CREATE TEMPORARY TABLE tmp_dms2 AS
SELECT a.shopid,a.goodsid,b.normalprice FROM zn_prom_detail_tmp_spr a,v_zn_goodsshop b
WHERE a.sdate=DATE_SUB(today,INTERVAL 1 DAY) AND a.shopid=shopid AND b.shopid=shopid AND 
a.goodsid=b.goodsid AND a.normalprice<>b.normalprice;
create unique index index_1 on tmp_dms2(shopid,goodsid);


DROP TABLE IF EXISTS tmp_dms3;
CREATE TEMPORARY TABLE tmp_dms3 AS
SELECT  a.shopid,
				a.shopname,
				a.xlid,
				a.xlname,
				a.goodsid,
				a.goodsname,
				b.normalprice,
				a.band1,
				a.band2,
				a.disc1,
				a.disc2,
				a.trueprice,
				a.dms,
				a.sdate,
				a.display_flag
FROM zn_price_dms_spr a, tmp_dms2 b 
WHERE a.goodsid=b.goodsid AND a.shopid=shopid AND b.shopid=shopid;


#UPDATE zn_price_dms_spr a, zn_price_dms_spr b, tmp_dms2 c  


INSERT INTO zn_price_dms_spr (shopid,shopname,goodsid,goodsname,xlid,xlname,normalprice,disc1,disc2,band1,band2,trueprice,dms,sdate,display_flag)
SELECT 
a.shopid AS shopid,
a.shopname AS shopname,
a.goodsid AS goodsid,
a.goodsname AS goodsname,
a.xlid AS xlid,
a.xlname AS xlname,
a.normalprice AS normalprice,
a.zkb*100 AS disc1,
CASE WHEN (a.zkb<0.95) THEN (a.zkb+0.05)*100 
            ELSE 5000 END AS disc2,
a.zkb*20 AS band1,
CASE WHEN (a.zkb*20<19) THEN a.zkb*20+1 
												ELSE 1000 END AS band2,
a.price AS trueprice,
a.totalQty/a.totalDays AS dms,  #销售数量
now() as sdate,
a.display_flag as display_flag
FROM tmp_everyday_tmp_3 a
ON DUPLICATE KEY UPDATE
zn_price_dms_spr.shopid=VALUES(shopid),
zn_price_dms_spr.shopname=VALUES(shopname),
zn_price_dms_spr.goodsid=VALUES(goodsid),
zn_price_dms_spr.goodsname=VALUES(goodsname),
zn_price_dms_spr.xlid=VALUES(xlid),
zn_price_dms_spr.xlname=VALUES(xlname),
zn_price_dms_spr.normalprice=VALUES(normalprice),
zn_price_dms_spr.disc1=VALUES(disc1),
zn_price_dms_spr.disc2=VALUES(disc2),
zn_price_dms_spr.band1=VALUES(band1),
zn_price_dms_spr.band2=VALUES(band2),
zn_price_dms_spr.trueprice=a.price,
zn_price_dms_spr.dms=VALUES(dms),
zn_price_dms_spr.sdate=VALUES(sdate),
zn_price_dms_spr.display_flag=values(display_flag);

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for daily_dms_sub_test_step5
-- ----------------------------
DROP PROCEDURE IF EXISTS `daily_dms_sub_test_step5`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `daily_dms_sub_test_step5`(IN `shopid` varchar(64),IN `thisday` date)
BEGIN
DECLARE today date;
declare springed date;
DECLARE changeday date;
DECLARE allDaysBeforeChangeDay int;


SET today=thisDay;
SET changeday='2021-1-18';
select enddate into springed from zn_calendar where holidayid='01' and year(sundate)=year(today);


#c.根据zn_price_dms表更新zn_xl_dms
INSERT INTO zn_xl_dms (shopid,shopname,xlid,xlname,disc1,disc2,
        dms_disc,dms_ori,sdate,display_flag)
    SELECT 
        x.shopid AS shopid,
        x.shopname AS shopname,
        x.xlid AS xlid,
        x.xlname AS xlname,
        x.disc1 AS disc1,
        x.disc2 AS disc2,
        SUM(x.dms)/COUNT(x.dms) AS dms_disc,
        0.0 AS dms_ori,
        NOW() AS sdate,
        x.display_flag as display_flag
    FROM
        zn_price_dms x WHERE x.shopid=shopid
		GROUP BY x.shopid,x.xlid,x.disc1
ON DUPLICATE KEY UPDATE
		zn_xl_dms.shopid=VALUES(shopid),
		zn_xl_dms.shopname=VALUES(shopname),
		zn_xl_dms.xlid=VALUES(xlid),
		zn_xl_dms.xlname=VALUES(xlname),
		zn_xl_dms.disc1=VALUES(disc1),
		zn_xl_dms.disc2=VALUES(disc2),
		zn_xl_dms.dms_disc=VALUES(dms_disc),
		zn_xl_dms.dms_ori=VALUES(dms_ori),
		zn_xl_dms.sdate=VALUES(sdate),
    zn_xl_dms.display_flag=values(display_flag);

update (SELECT * FROM zn_xl_dms WHERE zn_xl_dms.disc1=95) a RIGHT JOIN zn_xl_dms b 
on a.xlid=b.xlid AND a.shopid=b.shopid
SET b.dms_ori=a.dms_disc
WHERE b.disc1<>95 AND b.shopid=shopid;



#d.促销明细中间表zn_prom_detail_tmp表插入促销明细历史表zn_prom_detail_his后将中间表删除。
		INSERT INTO zn_prom_detail_his(planid,planname,enddate,shopid,goodsid,price,planqty,flag,begindate,totalqty,totaldays,sdate,display_flag)
    SELECT 
        `zn_prom_detail_tmp`.`planid` AS `planid`,
        `zn_prom_detail_tmp`.`planname` AS `planname`,
        `zn_prom_detail_tmp`.`enddate` AS `enddate`,
        `zn_prom_detail_tmp`.`shopid` AS `shopid`,
        `zn_prom_detail_tmp`.`goodsid` AS `goodsid`,
        `zn_prom_detail_tmp`.`price` AS `price`,
        `zn_prom_detail_tmp`.`planqty` AS `planqty`,
        `zn_prom_detail_tmp`.`flag` AS `flag`,
        `zn_prom_detail_tmp`.`begindate` AS `begindate`,
        `zn_prom_detail_tmp`.`totalQty` as `totalqty`,
        `zn_prom_detail_tmp`.`totaldays` as `totaldays`,
        now() AS `sdate`,
        zn_prom_detail_tmp.display_flag as display_flag
    FROM
        zn_prom_detail_tmp WHERE zn_prom_detail_tmp.shopid=shopid AND 
		DATE_ADD(CAST(zn_prom_detail_tmp.enddate AS date),INTERVAL 1 DAY)<=today;

		DELETE FROM zn_prom_detail_tmp WHERE zn_prom_detail_tmp.shopid=shopid AND 
		DATE_ADD(CAST(zn_prom_detail_tmp.enddate AS date),INTERVAL 1 DAY)<=today;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for daily_goods
-- ----------------------------
DROP PROCEDURE IF EXISTS `daily_goods`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `daily_goods`(IN `shopId` varchar(64),IN `thisDay` date)
BEGIN
# 定义当前时间
DECLARE today date;
#春节开始结束日期
DECLARE springfestivalbegin date;
DECLARE springfestivalend date;
DECLARE sanshi date;
DECLARE season_condition varchar(255);
DECLARE this_shopid varchar(8);
DECLARE this_holidayid varchar(8);
##春节补货开始时间
declare springday int;

select value into springday from zn_param where id=12;
SET this_shopid=shopId;
SET this_holidayid='01';
SET today=thisDay;
SET springfestivalbegin=DATE_SUB(
(SELECT zn_calendar.startdate FROM zn_calendar WHERE zn_calendar.holidayid=this_holidayid AND DATE_FORMAT(zn_calendar.enddate,'%Y')=YEAR(today) LIMIT 1),
INTERVAL springday DAY);
SET springfestivalend=
(SELECT zn_calendar.enddate FROM zn_calendar WHERE zn_calendar.holidayid=this_holidayid AND DATE_FORMAT(zn_calendar.enddate,'%Y')=YEAR(today) LIMIT 1);
SET sanshi=springfestivalend;

#将v_goods和v_zn_goodsshop 转成表
#DROP TABLE IF EXISTS tmp_everyday_v_goods;
#CREATE TABLE tmp_everyday_v_goods
#SELECT * FROM v_goods;
#DROP TABLE IF EXISTS tmp_everyday_v_zn_goodsshop;
#CREATE TABLE tmp_everyday_v_zn_goodsshop
#SELECT * FROM v_zn_goodsshop;



# b 生成zn_goods基础数据：shopid、Xlid、Goodsid、Normalprice：
# 源表有v_goodsshop、v_goods。v_goodsshop中flag=0（状态正常）
# 并且stocktype=0(管库存)的商品进入此表并对T类商品进行标注
# （classtype=’T’），除T类外默认为C类。
#TRUNCATE zn_goods;
INSERT INTO zn_goods (shopid,shopname,xlid,goodsid,goodsname,venderid,classtype,normalprice,spec,flag,sdate,trueprice)
SELECT
`v_zn_goodsshop`.`shopid` AS `shopid`,
`v_zn_goodsshop`.`shopname` AS `shopname`,
`v_goods`.`deptid` AS `xlid`,
`v_zn_goodsshop`.`goodsid` AS `goodsid`,
`v_zn_goodsshop`.`goodsname`,
v_zn_goodsshop.venderid,
'C' AS `classtype`,
`v_zn_goodsshop`.`normalprice` AS  `normalprice`,
v_goods.spec as spec,
'0' AS `flag`,
now() AS `sdate`,
`v_zn_goodsshop`.`normalprice` AS  `trueprice`
FROM 
v_zn_goodsshop,v_goods
WHERE
v_zn_goodsshop.shopid=this_shopid AND v_zn_goodsshop.stocktype=0 AND v_zn_goodsshop.flag in (0,8,9) AND 
v_zn_goodsshop.goodsid = v_goods.goodsid AND v_goods.flag=0;

##更新供应商编码和配送状态
update zn_goods a join v_vender b on a.venderid=b.venderid set a.vendername=b.vendername,a.send_type=b.send_type;

##更新采购线id
update zn_goods a join v_zn_cg_dl_zl_xl b on a.xlid=b.xlid set a.cgid=b.cgid,a.xlname=b.xlname;

##对T类商品进行标注(v_tgoods),并删除T类商品
UPDATE zn_goods a,v_tgoods b 
SET a.classtype='T' 
WHERE a.shopid=this_shopid AND a.goodsid=b.goodsid;

delete from zn_goods where classtype='T';

##
##update zn_goods a join zn_config_v b
##on a.shopid=b.shopid and a.venderid=b.venderid and a.classtype=b.classtype
##set a.orderdate=b.Orderdate,a.weekflag=b.Weekflag,a.safedays=b.Safedays,a.startweek=b.Startweek,a.round_rule=b.round_rule

##############10min#############
#c 更新zn_goods表Minstock、minorder字段
UPDATE zn_goods,v_minorder 
SET `zn_goods`.`minorder`=v_minorder.minorderqty,
`zn_goods`.`minstock`=v_minorder.minstockqty 
WHERE 
v_minorder.shopid=this_shopid AND zn_goods.shopid=this_shopid AND 
v_minorder.goodsid=zn_goods.goodsid;

#d 用v_pos_2w数据更新ABC分类并更新zn_goods表的classtype,更新sdate
UPDATE zn_goods a,shop_classify b set a.classtype=b.classtype  
WHERE a.shopid=this_shopid AND b.shopid=this_shopid AND a.goodsid=b.goodsid;


#	e	更新zn_goods表的季节属性相关字段：只有在季节的时间段内需要
#更新季节属性，
#源表zn_season_xl
##############10min#############
##!!时间段外为普通商品!!

UPDATE zn_goods a,zn_season_xl b 
SET 
a.seasontype=1,
a.rate1=b.rate1,
a.rate2=b.rate2,
a.period1=b.period1,
a.period2=b.period2
WHERE a.shopid=this_shopid AND a.xlid=b.xlid;


#e.更新zn_goods表的节日属性：源表zn_calerdar和zn_holiday_goods
#---F1:zn_holiday_goods表中的商品在手工补货起止时间范围内时zn_goods中直接更新flag=2  (节日商品人工补货)

DROP TABLE IF EXISTS tmp_everyday_holiday1;
CREATE TABLE tmp_everyday_holiday1 AS
SELECT goodsid AS goodsid,xlid AS xlid 
FROM zn_holiday_goods WHERE begindate<=today AND enddate>today;   ##控制zn_calendar的年份
ALTER TABLE tmp_everyday_holiday1 ADD INDEX index_1(goodsid);

UPDATE zn_goods JOIN tmp_everyday_holiday1 x
ON zn_goods.shopid=this_shopid AND zn_goods.goodsid=x.goodsid
SET zn_goods.flag=2,
		zn_goods.holidaytype=1;

#---F2:当前日期>=(春节开始时间-6天)至初一（sundate）之间并且商品不属于zn_holiday_goods表中春节专属商品时, 更新节日属性=2及起止时间，这期间陆续用春节指数补货。
IF (today>=springfestivalbegin AND today<=sanshi)THEN 
#删除春节特殊商品
		/*DELETE c FROM zn_goods c,(SELECT a.* FROM 
	 (SELECT zn_goods.goodsid FROM zn_goods WHERE zn_goods.shopid=this_shopid) a,
	 (SELECT zn_holiday_goods.goodsid FROM zn_holiday_goods WHERE zn_holiday_goods.holidayid=this_holidayid) b 
		WHERE a.goodsid=b.goodsid) d 
		WHERE c.shopid=this_shopid and c.goodsid=d.goodsid;*/
		

		UPDATE zn_goods c
			SET c.holidaytype=2,
					c.holiday_begindate=springfestivalbegin,
					c.holiday_enddate=sanshi
			WHERE c.shopid=this_shopid and flag!=2;
		
		
		UPDATE zn_goods c,zn_spring_xl sx 
		SET c.zs=sx.zs,
				c.ho_rate=sx.rate
		WHERE c.shopid=this_shopid AND sx.xlid=c.xlid AND sx.holidayid=this_holidayid;
		
END IF;



# g.季节性商品首次补货后在到货之前暂不进行补货：
#在zn_season_across表中并且当前日期<此表中的nextdate
#(这个条件避免季节性商品首次补货后没有到货时重复订货的问题) 
#,更新zn_goods表flag=8

UPDATE zn_goods,zn_season_across 
SET flag=8 
WHERE zn_goods.shopid=this_shopid AND zn_season_across.shopid=this_shopid AND 
zn_season_across.goodsid=zn_goods.goodsid AND 
today<zn_season_across.nextdate;

#h.处理zn_season_across表数据：当前日期大于表中季节开始日期的记录可删除
DELETE FROM zn_season_across WHERE concat(year(today),'-',zn_season_across.begindate)<today;


#closeqty 赋值
UPDATE zn_goods a, v_shopsstock b 
SET a.closeqty=b.qty,
		a.flag=CASE WHEN b.qty<0 THEN 7 
								ELSE a.flag END 
WHERE a.shopid=shopId AND b.shopid=shopId AND a.goodsid=b.goodsid;

update zn_goods a join v_isstore b on a.shopid=b.shopid and a.cgid=b.cgid and a.venderid=b.venderid
set a.storeqty=0;
update zn_goods a join v_stock_store b on a.goodsid=b.goodsid set a.storeqty=b.qty where a.storeqty=0;


END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for daily_goods_spr
-- ----------------------------
DROP PROCEDURE IF EXISTS `daily_goods_spr`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `daily_goods_spr`(IN `shopId` varchar(64),IN `thisDay` date)
BEGIN
# 定义当前时间
DECLARE today date;
#春节开始结束日期
DECLARE springfestivalbegin date;
DECLARE springfestivalend date;
DECLARE sanshi date;
DECLARE season_condition varchar(255);
DECLARE this_shopid varchar(8);
DECLARE this_holidayid varchar(8);

SET this_shopid=shopId;
SET this_holidayid='01';
SET today=thisDay;
SET springfestivalbegin=DATE_SUB(
(SELECT zn_calendar.startdate FROM zn_calendar WHERE zn_calendar.holidayid=this_holidayid AND DATE_FORMAT(zn_calendar.enddate,'%Y')=YEAR(today) LIMIT 1),
INTERVAL 6 DAY);
SET springfestivalend=
(SELECT zn_calendar.enddate FROM zn_calendar WHERE zn_calendar.holidayid=this_holidayid AND DATE_FORMAT(zn_calendar.enddate,'%Y')=YEAR(today) LIMIT 1);
SET sanshi=springfestivalend;

#将v_goods和v_zn_goodsshop 转成表
#DROP TABLE IF EXISTS tmp_everyday_v_goods;
#CREATE TABLE tmp_everyday_v_goods
#SELECT * FROM v_goods;
#DROP TABLE IF EXISTS tmp_everyday_v_zn_goodsshop;
#CREATE TABLE tmp_everyday_v_zn_goodsshop
#SELECT * FROM v_zn_goodsshop;



# b 生成zn_goods基础数据：shopid、Xlid、Goodsid、Normalprice：
# 源表有v_goodsshop、v_goods。v_goodsshop中flag=0（状态正常）
# 并且stocktype=0(管库存)的商品进入此表并对T类商品进行标注
# （classtype=’T’），除T类外默认为C类。
TRUNCATE zn_goods_spr;
INSERT INTO zn_goods_spr (shopid,xlid,goodsid,classtype,normalprice,flag,sdate,trueprice)
SELECT
`v_zn_goodsshop`.`shopid` AS `shopid`,
`v_goods`.`deptid` AS `xlid`,
`v_zn_goodsshop`.`goodsid` AS `goodsid`,
'C' AS `classtype`,
`v_zn_goodsshop`.`normalprice` AS  `normalprice`,
'0' AS `flag`,
today AS `sdate`,
`v_zn_goodsshop`.`normalprice` AS  `trueprice`
FROM 
v_zn_goodsshop,v_goods
WHERE
v_zn_goodsshop.shopid=this_shopid AND v_zn_goodsshop.stocktype=0 AND v_zn_goodsshop.flag in (0,8,9) AND 
v_zn_goodsshop.goodsid = v_goods.goodsid AND v_goods.flag=0;

##对T类商品进行标注(v_tgoods)

UPDATE zn_goods_spr a,v_tgoods b 
SET a.classtype='T' 
WHERE a.shopid=this_shopid AND a.goodsid=b.goodsid;


##############10min#############
#c 更新zn_goods表Minstock、minorder字段
UPDATE zn_goods_spr,v_minorder 
SET `zn_goods_spr`.`minorder`=v_minorder.minorderqty,
`zn_goods_spr`.`minstock`=v_minorder.minstockqty 
WHERE 
v_minorder.shopid=this_shopid AND zn_goods_spr.shopid=this_shopid AND 
v_minorder.goodsid=zn_goods_spr.goodsid;

#d 用v_pos_2w数据更新ABC分类并更新zn_goods表的classtype,更新sdate
UPDATE zn_goods_spr a,shop_classify_spr b set a.classtype=b.classtype  
WHERE a.shopid=this_shopid AND b.shopid=this_shopid AND a.goodsid=b.goodsid;


#	e	更新zn_goods表的季节属性相关字段：只有在季节的时间段内需要
#更新季节属性，
#源表zn_season_xl
##############10min#############
##!!时间段外为普通商品!!

UPDATE zn_goods_spr a,zn_season_xl b 
SET 
a.seasontype=1,
a.arrdate=b.arrdate,
a.rate1=b.rate1,
a.rate2=b.rate2,
a.period1=b.period1,
a.period2=b.period2
WHERE a.shopid=this_shopid AND a.xlid=b.xlid;


#e.更新zn_goods表的节日属性：源表zn_calerdar和zn_holiday_goods
#---F1:zn_holiday_goods表中的商品在手工补货起止时间范围内时zn_goods中直接更新flag=2  (节日商品人工补货)

DROP TABLE IF EXISTS tmp_everyday_holiday1;
CREATE TABLE tmp_everyday_holiday1 AS
SELECT 
zn_holiday_goods.goodsid AS goodsid,
zn_holiday_goods.xlid AS xlid
FROM zn_calendar,zn_holiday_goods WHERE (zn_holiday_goods.holidayid+0)=(zn_calendar.holidayid+0) AND 
zn_calendar.startdate<=today AND zn_calendar.enddate>today AND 
YEAR(zn_calendar.sundate)=YEAR(thisday);   ##控制zn_calendar的年份
ALTER TABLE tmp_everyday_holiday1 ADD INDEX index_1(goodsid);

UPDATE zn_goods_spr JOIN tmp_everyday_holiday1 x
ON zn_goods_spr.shopid=this_shopid AND zn_goods_spr.goodsid=x.goodsid
SET zn_goods_spr.flag=2,
		zn_goods_spr.holidaytype=1;

#---F2:当前日期>=(春节开始时间-6天)至初一（sundate）之间并且商品不属于zn_holiday_goods表中春节专属商品时, 更新节日属性=2及起止时间，这期间陆续用春节指数补货。
IF (today>=springfestivalbegin AND today<=sanshi)THEN 
#删除春节特殊商品
		DELETE c FROM zn_goods_spr c,(SELECT a.* FROM 
	 (SELECT zn_goods_spr.goodsid FROM zn_goods_spr WHERE zn_goods_spr.shopid=this_shopid) a,
	 (SELECT zn_holiday_goods.goodsid FROM zn_holiday_goods WHERE zn_holiday_goods.holidayid=this_holidayid) b 
		WHERE a.goodsid=b.goodsid) d 
		WHERE c.shopid=this_shopid and c.goodsid=d.goodsid;


		UPDATE zn_goods_spr c
			SET c.holidaytype=2,
					c.holiday_begindate=springfestivalbegin,
					c.holiday_enddate=sanshi
			WHERE c.shopid=this_shopid ;
		
		
		UPDATE zn_goods_spr c,zn_spring_xl sx 
		SET c.zs=sx.zs,
				c.ho_rate=sx.rate
		WHERE c.shopid=this_shopid AND sx.xlid=c.xlid AND sx.holidayid=this_holidayid;
		
END IF;



# g.季节性商品首次补货后在到货之前暂不进行补货：
#在zn_season_across表中并且当前日期<此表中的nextdate
#(这个条件避免季节性商品首次补货后没有到货时重复订货的问题) 
#,更新zn_goods表flag=8

UPDATE zn_goods_spr,zn_season_across 
SET flag=8 
WHERE zn_goods_spr.shopid=this_shopid AND zn_season_across.shopid=this_shopid AND 
zn_season_across.goodsid=zn_goods_spr.goodsid AND 
today<zn_season_across.nextdate;

#h.处理zn_season_across表数据：当前日期大于表中季节开始日期的记录可删除
DELETE FROM zn_season_across WHERE concat(year(today),'-',zn_season_across.begindate)<today;


#closeqty 赋值
UPDATE zn_goods_spr a, v_shopsstock b
SET a.closeqty=b.qty,
		a.flag=CASE WHEN b.qty<0 THEN 7 
								ELSE a.flag END
WHERE a.shopid=this_shopid AND b.shopid=this_shopid AND a.goodsid=b.goodsid;


END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for daily_goods_test
-- ----------------------------
DROP PROCEDURE IF EXISTS `daily_goods_test`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `daily_goods_test`(IN `shopId` varchar(64),IN `thisDay` date)
BEGIN
# 定义当前时间
DECLARE today date;
#春节开始结束日期
DECLARE springfestivalbegin date;
DECLARE springfestivalend date;
DECLARE sanshi date;
DECLARE season_condition varchar(255);
DECLARE this_shopid varchar(8);
DECLARE this_holidayid varchar(8);

SET this_shopid=shopId;
SET this_holidayid='01';
SET today=thisDay;
SET springfestivalbegin=DATE_SUB(
(SELECT zn_calendar.startdate FROM zn_calendar WHERE zn_calendar.holidayid=this_holidayid AND DATE_FORMAT(zn_calendar.enddate,'%Y')=YEAR(today) LIMIT 1),
INTERVAL 6 DAY);
SET springfestivalend=
(SELECT zn_calendar.enddate FROM zn_calendar WHERE zn_calendar.holidayid=this_holidayid AND DATE_FORMAT(zn_calendar.enddate,'%Y')=YEAR(today) LIMIT 1);
SET sanshi=springfestivalend;

#将v_goods和v_zn_goodsshop 转成表
#DROP TABLE IF EXISTS tmp_everyday_v_goods;
#CREATE TABLE tmp_everyday_v_goods
#SELECT * FROM v_goods;
#DROP TABLE IF EXISTS tmp_everyday_v_zn_goodsshop;
#CREATE TABLE tmp_everyday_v_zn_goodsshop
#SELECT * FROM v_zn_goodsshop;



# b 生成zn_goods基础数据：shopid、Xlid、Goodsid、Normalprice：
# 源表有v_goodsshop、v_goods。v_goodsshop中flag=0（状态正常）
# 并且stocktype=0(管库存)的商品进入此表并对T类商品进行标注
# （classtype=’T’），除T类外默认为C类。
#TRUNCATE zn_goods;
INSERT INTO zn_goods (shopid,shopname,xlid,goodsid,goodsname,venderid,classtype,normalprice,spec,flag,sdate,trueprice)
SELECT
`v_zn_goodsshop`.`shopid` AS `shopid`,
`v_goods`.`deptid` AS `xlid`,
`v_zn_goodsshop`.`goodsid` AS `goodsid`,
`v_zn_goodsshop`.`goodsname`,
v_zn_goodsshop.venderid,
'C' AS `classtype`,
`v_zn_goodsshop`.`normalprice` AS  `normalprice`,
v_goods.spec as spec,
'0' AS `flag`,
now() AS `sdate`,
`v_zn_goodsshop`.`normalprice` AS  `trueprice`
FROM 
v_zn_goodsshop,v_goods
WHERE
v_zn_goodsshop.shopid=this_shopid AND v_zn_goodsshop.stocktype=0 AND v_zn_goodsshop.flag in (0,8,9) AND 
v_zn_goodsshop.goodsid = v_goods.goodsid AND v_goods.flag=0;

##更新供应商编码和配送状态
update zn_goods a join v_vender b on a.venderid=b.venderid set a.vendername=b.vendername,a.send_type=b.send_type;

##更新采购线id
update zn_goods a join v_zn_cg_dl_zl_xl b on a.xlid=b.xlid set a.cgid=b.cgid,a.xlname=b.xlname;

##对T类商品进行标注(v_tgoods),并删除T类商品
UPDATE zn_goods a,v_tgoods b 
SET a.classtype='T' 
WHERE a.shopid=this_shopid AND a.goodsid=b.goodsid;

delete from zn_goods where classtype='T';

##
##update zn_goods a join zn_config_v b
##on a.shopid=b.shopid and a.venderid=b.venderid and a.classtype=b.classtype
##set a.orderdate=b.Orderdate,a.weekflag=b.Weekflag,a.safedays=b.Safedays,a.startweek=b.Startweek,a.round_rule=b.round_rule

##############10min#############
#c 更新zn_goods表Minstock、minorder字段
UPDATE zn_goods,v_minorder 
SET `zn_goods`.`minorder`=v_minorder.minorderqty,
`zn_goods`.`minstock`=v_minorder.minstockqty 
WHERE 
v_minorder.shopid=this_shopid AND zn_goods.shopid=this_shopid AND 
v_minorder.goodsid=zn_goods.goodsid;

#d 用v_pos_2w数据更新ABC分类并更新zn_goods表的classtype,更新sdate
UPDATE zn_goods a,shop_classify b set a.classtype=b.classtype  
WHERE a.shopid=this_shopid AND b.shopid=this_shopid AND a.goodsid=b.goodsid;


#	e	更新zn_goods表的季节属性相关字段：只有在季节的时间段内需要
#更新季节属性，
#源表zn_season_xl
##############10min#############
##!!时间段外为普通商品!!

UPDATE zn_goods a,zn_season_xl b 
SET 
a.seasontype=1,
a.rate1=b.rate1,
a.rate2=b.rate2,
a.period1=b.period1,
a.period2=b.period2
WHERE a.shopid=this_shopid AND a.xlid=b.xlid;


#e.更新zn_goods表的节日属性：源表zn_calerdar和zn_holiday_goods
#---F1:zn_holiday_goods表中的商品在手工补货起止时间范围内时zn_goods中直接更新flag=2  (节日商品人工补货)

DROP TABLE IF EXISTS tmp_everyday_holiday1;
CREATE TABLE tmp_everyday_holiday1 AS
SELECT goodsid AS goodsid,xlid AS xlid 
FROM zn_holiday_goods WHERE begindate<=today AND enddate>today;   ##控制zn_calendar的年份
ALTER TABLE tmp_everyday_holiday1 ADD INDEX index_1(goodsid);

UPDATE zn_goods JOIN tmp_everyday_holiday1 x
ON zn_goods.shopid=this_shopid AND zn_goods.goodsid=x.goodsid
SET zn_goods.flag=2,
		zn_goods.holidaytype=1;

#---F2:当前日期>=(春节开始时间-6天)至初一（sundate）之间并且商品不属于zn_holiday_goods表中春节专属商品时, 更新节日属性=2及起止时间，这期间陆续用春节指数补货。
IF (today>=springfestivalbegin AND today<=sanshi)THEN 
#删除春节特殊商品
		DELETE c FROM zn_goods c,(SELECT a.* FROM 
	 (SELECT zn_goods.goodsid FROM zn_goods WHERE zn_goods.shopid=this_shopid) a,
	 (SELECT zn_holiday_goods.goodsid FROM zn_holiday_goods WHERE zn_holiday_goods.holidayid=this_holidayid) b 
		WHERE a.goodsid=b.goodsid) d 
		WHERE c.shopid=this_shopid and c.goodsid=d.goodsid;


		UPDATE zn_goods c
			SET c.holidaytype=2,
					c.holiday_begindate=springfestivalbegin,
					c.holiday_enddate=sanshi
			WHERE c.shopid=this_shopid ;
		
		
		UPDATE zn_goods c,zn_spring_xl sx 
		SET c.zs=sx.zs,
				c.ho_rate=sx.rate
		WHERE c.shopid=this_shopid AND sx.xlid=c.xlid AND sx.holidayid=this_holidayid;
		
END IF;



# g.季节性商品首次补货后在到货之前暂不进行补货：
#在zn_season_across表中并且当前日期<此表中的nextdate
#(这个条件避免季节性商品首次补货后没有到货时重复订货的问题) 
#,更新zn_goods表flag=8

UPDATE zn_goods,zn_season_across 
SET flag=8 
WHERE zn_goods.shopid=this_shopid AND zn_season_across.shopid=this_shopid AND 
zn_season_across.goodsid=zn_goods.goodsid AND 
today<zn_season_across.nextdate;

#h.处理zn_season_across表数据：当前日期大于表中季节开始日期的记录可删除
DELETE FROM zn_season_across WHERE concat(year(today),'-',zn_season_across.begindate)<today;


#closeqty 赋值
UPDATE zn_goods a, v_shopsstock b 
SET a.closeqty=b.qty,
		a.flag=CASE WHEN b.qty<0 THEN 7 
								ELSE a.flag END 
WHERE a.shopid=shopId AND b.shopid=shopId AND a.goodsid=b.goodsid;

update zn_goods a join v_isstore b on a.shopid=b.shopid and a.cgid=b.cgid and a.venderid=b.venderid
set a.storeqty=0;
update zn_goods a join v_stock_store b on a.goodsid=b.goodsid set a.storeqty=b.qty where a.storeqty=0;


END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for daily_procedure_daily
-- ----------------------------
DROP PROCEDURE IF EXISTS `daily_procedure_daily`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `daily_procedure_daily`(IN `shopid` varchar(64),IN `thisday` date)
BEGIN

DECLARE today date;
DECLARE springfestivalbegin date;
DECLARE springfestivalend date;
##春节补货开始时间
declare springday int;

select value into springday from zn_param where id=12;

SET springfestivalbegin=(SELECT x.startdate FROM zn_calendar x WHERE x.holidayid+0=1+0 AND YEAR(x.sundate)=YEAR(NOW()) LIMIT 1);
SET springfestivalend=(SELECT x.enddate FROM zn_calendar x WHERE x.holidayid+0=1+0 AND YEAR(x.sundate)=YEAR(NOW()) LIMIT 1);

SET today=thisDay;


# 补货日补货
drop table if exists tmp_daily_tmp;
CREATE TABLE `tmp_daily_tmp` (
  `xlid` varchar(64),
  `goodsid` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '商品编码',
  `shopid` varchar(8) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '门店编码',
  `normalprice` decimal(16,2) DEFAULT NULL COMMENT '定价',
  `classtype` varchar(1) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '补货类型',
  `minorder` decimal(16,2) DEFAULT NULL COMMENT '最小起订量',
  `minstock` decimal(16,2) DEFAULT NULL COMMENT '最小库存数量',
  `closeqty` decimal(16,3) DEFAULT NULL COMMENT '昨日日终库存数量',
  `holiday_begindate` datetime DEFAULT NULL COMMENT '节日开始日期',
  `holiday_enddate` datetime DEFAULT NULL COMMENT '节日结束日期',
  `holidaytype` varchar(1) DEFAULT NULL COMMENT '节日属性',
  `zs` decimal(16,2) DEFAULT NULL COMMENT '春节指数',
  `ho_rate` decimal(16,2) DEFAULT NULL COMMENT '节日安全系数',
  `seasontype` varchar(1) DEFAULT NULL COMMENT '季节属性',
  `rate1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period1，日均销量的折扣比例',
  `rate2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period2，日均销量的折扣比例',
  `period1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例1',
  `period2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例2',
  `weekflag` char(1) CHARACTER SET utf8 DEFAULT NULL,
	`startweek`  int(1) NULL DEFAULT 0, 
  `orderdate` char(8) CHARACTER SET utf8 DEFAULT NULL,
  `safedays` int(11) DEFAULT NULL COMMENT '(zn_config表参数)',
  `arrivaldays` int(11) DEFAULT NULL COMMENT '(zn_config表参数)',
  `sdate` datetime DEFAULT NULL COMMENT '更新日期时间',
  `actual_qty` decimal(16,2) DEFAULT NULL,
  `price` decimal(16,2) DEFAULT NULL,
  `flag` char(1) DEFAULT '0',
  `dms` decimal(16,3) DEFAULT 0 COMMENT '实际售价对应的日均销量',
  `prom_dms` decimal(16,3) DEFAULT 0 COMMENT '实际售价对应的日均销量',
  `weekflag_days` int(11) DEFAULT 0 COMMENT 'buhuozhouqi',
	`trueprice` decimal(16,2) DEFAULT NULL COMMENT '实际售价',
	`display_flag`  varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '0—默认值，1—场外  2—堆头  3—端头' ,
	prom_begindate date,
	prom_enddate date,
	prom_days int(11) COMMENT '促销天数',
	prom_alldays int(11) COMMENT 'orderdays+ Arrivaldays+ safedays',
	prom_arriavedate date COMMENT '到货日',
	orderdays int(11) COMMENT 'datediff(下一个补货日,当前日期)',
	now_date date COMMENT '产生补货的日期',
	received_date date COMMENT 'dateadd(now_date,arrivaldays-1)',
	prom_day1 int(11) default 0 COMMENT 'max(min(datediff(enddate, received_date),alldays),0)',
	prom_day2 int(11) COMMENT 'max(（alldays-促销DMS补货天数)，0）',
	prom_flag int(11) COMMENT '促销补货标志位',
	round_rule char(1) default 0,
  UNIQUE KEY `index_1` (`shopid`,`goodsid`) USING BTREE,
  KEY `index_2` (`goodsid`) USING BTREE,
  KEY `index_3` (`shopid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


##设置促销商品的补货类型为A类商品
update zn_goods a join zn_prom_detail b on a.shopid=b.shopid and a.goodsid=b.goodsid set a.classtype='A'
where b.flag=2;

IF NOT (DATE_SUB(springfestivalbegin,INTERVAL springday DAY)<=today AND springfestivalend>=today) THEN
#j. 判断商品是否为订货日，如果是并且zn_goods表中商品flag=0（这一判断确保每个商品一天只进行一次补货）则触发这些商品补货 。
INSERT INTO tmp_daily_tmp (xlid,goodsid,shopid,normalprice,classtype,minorder,minstock,closeqty,holiday_begindate,holiday_enddate,
holidaytype,zs,ho_rate,seasontype,rate1,rate2,period1,period2,startweek,orderdate,weekflag,safedays,arrivaldays,sdate,weekflag_days,prom_day2,round_rule)
SELECT 
zn_goods.xlid as xlid,
zn_goods.goodsid AS goodsid,
zn_goods.shopid AS shopid,
zn_goods.normalprice AS normalprice,
zn_goods.classtype AS classtype,
zn_goods.minorder AS minorder,
zn_goods.minstock AS minstock,
zn_goods.closeqty AS closeqty,
zn_goods.holiday_begindate AS holiday_begindate,
zn_goods.holiday_enddate AS holiday_enddate,
zn_goods.holidaytype AS holidaytype,
zn_goods.zs AS zs,
zn_goods.ho_rate AS ho_rate,

zn_goods.seasontype AS seasontype,
zn_goods.rate1 AS rate1,
zn_goods.rate2 AS rate2,
zn_goods.period1 AS period1,
zn_goods.period2 AS period2,
zn_config.Startweek AS startweek,
zn_config.orderdate AS orderdate,
zn_config.weekflag AS weekflag,#补货周期
zn_config.safedays AS safedays,#安全库存天数
zn_config.arrivaldays AS arrivaldays,#到货周期
zn_goods.sdate AS sdate,
DATEDIFF(get_next_buhuo_date(zn_config.weekflag,zn_config.Orderdate,zn_config.Startweek,today),today) AS weekflag_days,
DATEDIFF(get_next_buhuo_date(zn_config.weekflag,zn_config.Orderdate,zn_config.Startweek,today),today)+zn_config.arrivaldays+zn_config.safedays as prom_day2,
zn_config.round_rule as round_rule
FROM zn_goods,zn_config 
WHERE zn_goods.shopid=shopId AND zn_goods.flag=0 AND zn_config.shopid=shopId AND 
zn_goods.classtype=zn_config.Classtype AND 
SUBSTR(zn_config.Orderdate,(dayofweek(thisday)+5)mod 7+1,1)='1' AND 
IF(zn_config.Weekflag=2,zn_config.Startweek mod 2=WEEKOFYEAR(today)mod 2,1);

ELSE CALL everyday_procedure_springfestival(shopId, thisDay);
end IF ;

#春节
#F4:B、C类商品退出A类商品的规则补货：春节结束后第一个补货日仍然按照A类的补货日进行补货，但是补货周期转成B或C类。
IF (springfestivalend<today AND today<DATE_ADD(springfestivalend,INTERVAL 15 DAY)) THEN 
TRUNCATE tmp_daily_tmp;
INSERT INTO tmp_daily_tmp (xlid,goodsid,shopid,normalprice,classtype,minorder,minstock,closeqty,holiday_begindate,holiday_enddate,
holidaytype,zs,ho_rate,seasontype,rate1,rate2,period1,period2,orderdate,weekflag,safedays,arrivaldays,sdate,weekflag_days) 
SELECT 
a.xlid as xlid,
a.goodsid AS goodsid,
a.shopid AS shopid,
a.normalprice AS normalprice,
a.classtype AS classtype,
a.minorder AS minorder,
a.minstock AS minstock,
a.closeqty AS closeqty,
a.holiday_begindate AS holiday_begindate,
a.holiday_enddate AS holiday_enddate,
a.holidaytype AS holidaytype,
a.zs AS zs,
a.ho_rate AS ho_rate,
a.seasontype AS seasontype,
a.rate1 AS rate1,
a.rate2 AS rate2,
a.period1 AS period1,
a.period2 AS period2,
c.orderdate AS orderdate,
b.weekflag AS weekflag,#补货周期
b.safedays AS safedays,#安全库存天数
b.arrivaldays AS arrivaldays,#到货周期
a.sdate AS sdate,
DATEDIFF(get_next_buhuo_date(weekflag,zn_config.Orderdate,zn_config.Startweek,today),today) AS weekflag_days 
FROM zn_goods a,zn_config b,zn_config c
WHERE a.shopid=shopId AND b.shopid=shopId AND c.shopid=shopId AND a.flag=0 
AND b.Classtype=a.classtype AND c.classtype='A' AND a.holidaytype=2 AND
SUBSTR(c.Orderdate,(dayofweek(thisday)+5)mod 7+1,1)='1' AND
	IF(b.Weekflag=2,b.Startweek mod 2=WEEKOFYEAR(today)mod 2,1) AND
get_next_buhuo_date(b.Weekflag,c.Orderdate,b.Startweek,DATE_ADD(holiday_enddate,INTERVAL 1 DAY))=thisday
ON DUPLICATE KEY UPDATE
tmp_daily_tmp.xlid=VALUES(xlid),
tmp_daily_tmp.goodsid=VALUES(goodsid),
tmp_daily_tmp.shopid=VALUES(shopid),
tmp_daily_tmp.normalprice=VALUES(normalprice),
tmp_daily_tmp.classtype=VALUES(classtype),
tmp_daily_tmp.minorder=VALUES(minorder),
tmp_daily_tmp.minstock=VALUES(minstock),
tmp_daily_tmp.closeqty=VALUES(closeqty),
tmp_daily_tmp.holiday_begindate=VALUES(holiday_begindate),
tmp_daily_tmp.holiday_enddate=VALUES(holiday_enddate),
tmp_daily_tmp.holidaytype=VALUES(holidaytype),
tmp_daily_tmp.zs=VALUES(zs),
tmp_daily_tmp.ho_rate=VALUES(ho_rate),
tmp_daily_tmp.seasontype=VALUES(seasontype),
tmp_daily_tmp.rate1=VALUES(rate1),
tmp_daily_tmp.rate2=VALUES(rate2),
tmp_daily_tmp.period1=VALUES(period1),
tmp_daily_tmp.period2=VALUES(period2),
tmp_daily_tmp.orderdate=VALUES(orderdate),
tmp_daily_tmp.weekflag=VALUES(weekflag),
tmp_daily_tmp.safedays=VALUES(safedays),
tmp_daily_tmp.arrivaldays=VALUES(arrivaldays),
tmp_daily_tmp.sdate=VALUES(sdate),
tmp_daily_tmp.weekflag_days=VALUES(weekflag_days);
END IF;


/*节日越期*/
DELETE FROM zn_holiday_across WHERE zn_holiday_across.shopid=shopId AND 
DATE(zn_holiday_across.nextdate)<thisday;

DELETE d FROM tmp_daily_tmp d, zn_holiday_across a 
WHERE d.shopid=shopId AND a.shopid=shopId AND d.goodsid=a.goodsid AND DATE(a.nextdate)=thisDay;



#k.取出商品在到货时的售价：到《补货系统促销明细》zn_prom_detail中
#找到flag=“2可以补货”的商品并取出促销售价；
UPDATE tmp_daily_tmp x,zn_prom_detail y
SET x.trueprice=y.price,
		x.display_flag=y.display_flag,
    x.prom_begindate=y.begindate,
		x.prom_enddate=y.enddate,
		x.prom_days=DATEDIFF(y.enddate,y.begindate)+1,
		x.orderdays=DATEDIFF(get_next_buhuo_date(x.weekflag,x.Orderdate,x.Startweek,today),today),
		x.prom_alldays=DATEDIFF(get_next_buhuo_date(x.weekflag,x.Orderdate,x.Startweek,today),today)+x.arrivaldays+x.safedays,
		x.now_date=thisday,
		x.prom_arriavedate=DATE_ADD(thisday,INTERVAL x.arrivaldays DAY),
		x.received_date=DATE_ADD(thisday,INTERVAL x.arrivaldays-1 DAY),
		x.prom_day1=0,
		x.prom_day2=DATEDIFF(get_next_buhuo_date(x.weekflag,x.Orderdate,x.Startweek,today),today)+x.arrivaldays+x.safedays,
		x.prom_flag=y.flag
WHERE x.shopid=shopId AND y.shopid=shopId AND x.goodsid=y.goodsid AND y.flag=2;

#如果未找到则用zn_goods表中的正常售价normalprice.
UPDATE tmp_daily_tmp x 
SET x.trueprice=x.normalprice 
WHERE ISNULL(x.trueprice) OR x.trueprice>x.normalprice;


#7-7.采购不分货：《补货系统促销明细》中manual_flag=0的商品:取出补货类别：到zn_goods中取classtype、minorder、minstock、closeqty等，根据补货类别可以取出补货周期、安全库存天数、到货周期。
#注意补货周期、到货周期的计算：
#（1）今天与下一个补货日之间的天数<到货周期（这个参数变了，不是4了，意思就是在补货日补货不应该产生越期），下一个补货日不再补货，否则补货；
#（2）春节初一至初三可以补货、但是不送货 
#分段计算补货天数：促销品补货要根据促销时长采用促销DMS和正常价DMS分段补货，彻底解决短期促销无法补货和促销临近结束时补货量偏大的问题：
#  促销开始日期：Beninate          
#促销结束日期：enddate
#  促销天数：promdays=datediff(enddate,begindate)+1
#  补货周期: orderdays=datediff(下一个补货日,当前日期)
#  到货周期： Arrivaldays (zn_config表参数)
#  安全库存天数：safedays  (zn_config表参数)
#  补货天数：alldays= orderdays+ Arrivaldays+ safedays
#  当前日期：产生补货的日期now_date
#  到货日期：received_date=dateadd(now_date,arrivaldays-1)
#默认值：促销DMS补货天数day1=0，非促销DMS补货天数day2=alldays,
#####################################################        当前售价=normalprice,
#   当前售价>= normalprice时则当前售价=normalprice
#1、	促销天数>=补货周期+到货周期
#促销DMS补货天数day1=max(min(datediff(enddate, received_date),alldays),0)
#非促销补货天数day2=max(（alldays-促销DMS补货天数)，0）
#2、	促销天数<补货周期+到货周期  
#If 到货时促销未开始 and zn_prom_detail.flag=0  
#促销DMS补货天数day1= promdays+safedays
#zn_prom_detail.flag=6(短期促销一次性补货)
#Else  
#促销DMS补货天数day1=0
#End
#非促销补货天数day2=alldays-促销DMS补货天数day1
UPDATE tmp_daily_tmp x 
SET x.prom_day1=GREATEST(LEAST(DATEDIFF(x.prom_enddate,x.received_date),x.prom_alldays),0)
WHERE x.shopid=shopid AND (x.prom_days>(x.arrivaldays+x.safedays)) AND NOT ISNULL(x.prom_begindate);

UPDATE tmp_daily_tmp x 
SET x.prom_day2=GREATEST((x.prom_alldays-x.prom_day1),0)
WHERE x.shopid=shopid AND (x.prom_days>=(x.arrivaldays+x.safedays)) AND NOT ISNULL(x.prom_begindate);

			#2、	促销天数<补货周期+到货周期 
UPDATE tmp_daily_tmp x,zn_prom_detail p 
SET x.prom_day1=CASE WHEN ((x.prom_begindate>x.prom_arriavedate)AND(p.flag=0))
													THEN x.prom_days+x.safedays
											ELSE 0 END,
		p.flag=CASE WHEN ((x.prom_begindate>x.prom_arriavedate)AND(p.flag=0))
													THEN 6
											ELSE 0 END
WHERE x.shopid=shopid AND p.shopid=shopid AND x.goodsid=p.goodsid AND (x.prom_days<(x.arrivaldays+x.safedays)) AND NOT ISNULL(x.prom_begindate);

UPDATE tmp_daily_tmp x,zn_prom_detail p 
SET x.prom_day2=x.prom_alldays-x.prom_day1
WHERE x.shopid=shopid AND p.shopid=shopid AND x.goodsid=p.goodsid AND (x.prom_days<(x.arrivaldays+x.safedays)) AND NOT ISNULL(x.prom_begindate);


#7-8. 取出日均销量：
#--促销非首次补货时（zn_prom_detail.flag<>0），首先从zn_prom_detail_tmp表中查找到对应的记录，如果totaldays>=7 则促销dms=totalqty/totaldays,否则到zn_price_dms中取出DMS
UPDATE tmp_daily_tmp x,zn_prom_detail_tmp pt 
SET x.prom_dms=case pt.totalQty when 0 then -1.0 else pt.totalQty/totalDays end
WHERE x.shopid=shopid AND pt.shopid=shopid AND x.goodsid=pt.goodsid and pt.totalDays>=7;
#--根据定价到zn_price_dms取出这些商品对应的正常DMS。
UPDATE tmp_daily_tmp x,zn_price_dms pd 
SET x.dms=pd.dms
WHERE x.shopid=shopid AND pd.shopid=shopid AND x.goodsid=pd.goodsid and pd.disc1=95;

UPDATE tmp_daily_tmp x,zn_price_dms pd,zn_prom_detail y
SET x.prom_dms=CASE WHEN x.prom_dms=0.0 THEN pd.dms else x.prom_dms END
WHERE x.shopid=shopid AND pd.shopid=shopid AND x.goodsid=pd.goodsid and (x.trueprice/x.normalprice)*100>=pd.disc1 AND 
(x.trueprice/x.normalprice)*100<pd.disc2 and x.display_flag=pd.display_flag and y.shopid=shopid and x.goodsid=y.goodsid and y.flag in(1,2);

##当找不到促销折扣段时找上下紧邻的折扣段
##1.取出促销dms=0且day1>0的数据
drop temporary table if exists tmp_nearcx;
create temporary table tmp_nearcx(
	select shopid,goodsid,normalprice,trueprice,prom_dms,cast(0 as decimal(16,3)) as dms1,cast(0 as decimal(16,2)) as price1,cast(0 as decimal(16,2)) as dms2,
					cast(0 as decimal(16,2)) as price2,display_flag
	from tmp_daily_tmp 
	where (ISNULL(prom_dms)OR(prom_dms=0.0)) and prom_day1>0
);
create index index_1 on tmp_nearcx(shopid,goodsid);
##2.取出相邻折扣的dms
UPDATE tmp_nearcx x,zn_price_dms pd
SET x.dms1=if(pd.dms is null,0,pd.dms),x.price1=pd.trueprice
WHERE x.shopid=shopid AND pd.shopid=shopid AND x.goodsid=pd.goodsid and (x.trueprice/x.normalprice)*100-5>=pd.disc1 AND 
(x.trueprice/x.normalprice)*100-5<pd.disc2 and x.display_flag=pd.display_flag;
UPDATE tmp_nearcx x,zn_price_dms pd
SET x.dms2=if(pd.dms is null,0,pd.dms),x.price2=pd.trueprice
WHERE x.shopid=shopid AND pd.shopid=shopid AND x.goodsid=pd.goodsid and (x.trueprice/x.normalprice)*100+5>=pd.disc1 AND 
(x.trueprice/x.normalprice)*100+5<pd.disc2 and x.display_flag=pd.display_flag;
##3.将相邻折扣dms作为促销dms，若存在两个相邻折扣的dms则判断trueprice与哪个接近
update tmp_nearcx set prom_dms=case when dms1=0 and dms2!=0 then dms2
																	  when dms1!=0 and dms2=0 then dms1
																		when dms1!=0 and dms2!=0 then if(abs(price1-trueprice)>abs(price2-trueprice),dms2,dms1) else 0 end;
##4.将取好的dms更新回表
update tmp_daily_tmp a join tmp_nearcx b on a.shopid=b.shopid and a.goodsid=b.goodsid set a.prom_dms=b.prom_dms;

#--day1>0 并且未找到当前售价对应的dms或dms=0 : zn_goods表Flag=4 (没有促销销售记录), 转7-12
UPDATE zn_goods x,tmp_daily_tmp y
SET x.flag=4,x.trueprice=y.trueprice WHERE x.shopid=shopid and y.shopid=shopid and x.goodsid=y.goodsid and (ISNULL(y.prom_dms)OR(y.prom_dms=0.0)) and y.prom_day1>0 ;
delete from tmp_daily_tmp where (ISNULL(prom_dms)OR(prom_dms=0.0)) and prom_day1>0;
#--day2>0 并且未找到normalprice对应的dms或dms=0:说明是新品或者没有正常价销售过，zn_goods表Flag=5 (没有正常定价销售记录),转7-12
UPDATE zn_goods z,tmp_daily_tmp x 
SET z.flag=5,z.trueprice=x.trueprice 
WHERE z.shopid=shopid AND x.shopid=shopid AND z.goodsid=x.goodsid AND (ISNULL(x.dms)OR x.dms=0.0) AND x.prom_day2>0 and x.prom_day1=0;
delete from tmp_daily_tmp where (ISNULL(dms)OR dms=0.0) AND prom_day2>0 and prom_day1=0;

update tmp_daily_tmp set prom_dms=0 where prom_dms=-1;


#7-9根据节日属性和季节属性调整日均销量
#--holidaytype=2春节其它商品, 当前日期>=begindate-6进入春节补货模式 
#--holidaytype=2春节其它商品, 当前日期>=enddate结束春节补货模式
#春节期间日均销量==m取到的2个日均销量*zs*rate  转o
UPDATE tmp_daily_tmp x 
SET x.dms=x.dms*x.zs*x.ho_rate, 
		x.prom_dms=x.prom_dms*x.zs*x.ho_rate 
WHERE x.holidaytype=2 AND x.holiday_begindate<=today AND 
x.holiday_enddate>=today;
#--seasontype=1季节性商品 并且 当前日期在period1—period2对应的日期之内时修订日均销量，日均销量=m取到的2个日均销量*rate1，在period2—enddate对应的日期之内时日均销量=m取到的2个日均销量*rate2转7-10
UPDATE tmp_daily_tmp x join zn_season_goods y on x.shopid=y.shopid and x.goodsid=y.goodsid
SET x.dms=CASE WHEN DATE_ADD(getSeasonbd(y.begindate,y.enddate),INTERVAL (DATEDIFF(getSeasoned(y.begindate,y.enddate),getSeasonbd(y.begindate,y.enddate))*x.period1/100) DAY)<=today 
										and today<DATE_ADD(getSeasonbd(y.begindate,y.enddate),INTERVAL (DATEDIFF(getSeasoned(y.begindate,y.enddate),getSeasonbd(y.begindate,y.enddate))*x.period2/100) DAY)
										THEN x.dms*x.rate1/100.0 
							 WHEN DATE_ADD(getSeasonbd(y.begindate,y.enddate),INTERVAL (DATEDIFF(getSeasoned(y.begindate,y.enddate),getSeasonbd(y.begindate,y.enddate))*x.period2/100) DAY)<=today 
										and today<getSeasoned(y.begindate,y.enddate) THEN x.dms*x.rate2/100.0 
else x.dms END,
x.prom_dms=CASE WHEN DATE_ADD(getSeasonbd(y.begindate,y.enddate),INTERVAL (DATEDIFF(getSeasoned(y.begindate,y.enddate),getSeasonbd(y.begindate,y.enddate))*x.period1/100) DAY)<=today 
										and today<DATE_ADD(getSeasonbd(y.begindate,y.enddate),INTERVAL (DATEDIFF(getSeasoned(y.begindate,y.enddate),getSeasonbd(y.begindate,y.enddate))*x.period2/100) DAY)
										THEN x.prom_dms*x.rate1/100.0 
							 WHEN DATE_ADD(getSeasonbd(y.begindate,y.enddate),INTERVAL (DATEDIFF(getSeasoned(y.begindate,y.enddate),getSeasonbd(y.begindate,y.enddate))*x.period2/100) DAY)<=today 
										and today<getSeasoned(y.begindate,y.enddate) THEN x.prom_dms*x.rate2/100.0 
else x.prom_dms END
WHERE x.seasontype=1;

##判断4，5状态商品是否满足最小库存补货
update zn_goods set qty=ceil((minstock-closeqty)/minorder)*minorder,flag=1,sdate=now()
where shopid=shopId and flag in (4,5) and minstock>closeqty;

#7-10．确定补货量：
#理论补货量1=促销DMS补货天数day1*促销dms+非促销补货天数day2*非促销dms  - 当前库存
#理论补货量2=系统设定的最小库存-当前库存
#If  理论补货量2<0  and理论补货量1 < 最小订货量 then不需要补货
#Else  需要补货。
#理论补货量3=max(理论补货量2, 最小订货量)
#理论补货量 =max(理论补货量1, 理论补货量3)
#实际补货数量=（（理论补货量/最小订货量）向上取整）*最小订货量。
#end
UPDATE tmp_daily_tmp x 
SET x.actual_qty=CASE WHEN ((case x.round_rule when 0 then (x.prom_day1*x.prom_dms+x.prom_day2*x.dms-x.closeqty)/x.minorder<=0 
														                   when 1 then (x.prom_day1*x.prom_dms+x.prom_day2*x.dms-x.closeqty)/x.minorder<0.5
																							 when 2 then (x.prom_day1*x.prom_dms+x.prom_day2*x.dms-x.closeqty)/x.minorder<1 end) AND (x.minstock<=x.closeqty))
														THEN 0.0
														ELSE (case x.round_rule when 0 then CEILING(GREATEST(x.prom_day1*x.prom_dms+x.prom_day2*x.dms-x.closeqty,x.minstock-x.closeqty,x.minorder)/x.minorder)*x.minorder 
																										when 1 then round(GREATEST(x.prom_day1*x.prom_dms+x.prom_day2*x.dms-x.closeqty,x.minstock-x.closeqty,x.minorder)/x.minorder)*x.minorder
																										when 2 then floor(GREATEST(x.prom_day1*x.prom_dms+x.prom_day2*x.dms-x.closeqty,x.minstock-x.closeqty,x.minorder)/x.minorder)*x.minorder end)
END; 


#s.更新zn_goods表qty、flag、sdate字段;
UPDATE zn_goods x,tmp_daily_tmp y 
SET x.flag=1, 
x.qty=y.actual_qty, 
x.trueprice=y.trueprice, 
x.sdate=now() 
 WHERE x.shopid=shopId AND y.shopid=shopId AND 
x.goodsid=y.goodsid and x.flag=0;


#r.更新zn_prom_detail商品状态：zn_goods表中flag=0并且今天是补货日商品但是在《补货系统促销明细》zn_prom_detail中flag=“1越期促销补货”的商品改为flag=‘2可以补货’并更新日期 ;更新zn_goods表flag=10(促销首次补货后本次越期补货)
UPDATE zn_prom_detail x, zn_goods y,zn_config z 
SET x.flag=2, 
		x.sdate=today, 
		y.flag=10 
WHERE x.shopid=shopId AND y.shopid=shopId 
AND x.goodsid=y.goodsid AND 
x.flag=1 AND z.shopid=shopId and z.Classtype=y.classtype and 
SUBSTR(z.orderdate,(dayofweek(thisday)+5)mod 7+1,1)='1' AND 
IF(z.Weekflag=2,z.Startweek mod 2=WEEKOFYEAR(today)mod 2,1) and y.flag!=9;  

##无配送库存
update zn_goods set flag=13 where storeqty=0;
##负库存的促销补货置为2
update zn_prom_detail a join zn_goods b on a.shopid=b.shopid and a.goodsid=b.goodsid
set a.flag=2 
where a.flag=0 and b.flag=7;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for daily_procedure_daily_spr
-- ----------------------------
DROP PROCEDURE IF EXISTS `daily_procedure_daily_spr`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `daily_procedure_daily_spr`(IN `shopid` varchar(64),IN `thisday` date)
BEGIN

DECLARE today date;
DECLARE 3MonthEarlier date;
DECLARE beginOfthisSeason date;
DECLARE beginOfthisSeasonvachar VARCHAR(255);
DECLARE endOfthisSeason date;
DECLARE endOfthisSeasonvachar VARCHAR(255);
DECLARE springfestivalbegin date;
DECLARE springfestivalend date;
#开始结束日期年份
DECLARE yearOfthisSeasonbegin VARCHAR(255);
DECLARE yearOfthisSeasonend VARCHAR(255);


SET springfestivalbegin=(SELECT x.startdate FROM zn_calendar x WHERE x.holidayid+0=1+0 AND YEAR(x.sundate)=YEAR(NOW()) LIMIT 1);
SET springfestivalend=(SELECT x.enddate FROM zn_calendar x WHERE x.holidayid+0=1+0 AND YEAR(x.sundate)=YEAR(NOW()) LIMIT 1);

SET today=thisDay;
SET 3MonthEarlier=DATE_SUB(today,INTERVAL 90 DAY);
SET yearOfthisSeasonbegin=DATE_FORMAT(today,'%Y');
SET yearOfthisSeasonend=CAST(CAST(yearOfthisSeasonbegin AS SIGNED)+1 AS CHAR(255));
SET beginOfthisSeasonvachar=CASE WHEN 
				ISNULL((SELECT zn_season_goods.begindate FROM zn_season_goods WHERE zn_season_goods.begindate<=DATE_FORMAT(today,'%m-%d') AND 
				zn_season_goods.enddate>DATE_FORMAT(today,'%m-%d') LIMIT 1))=1
		THEN CONCAT(yearOfthisSeasonbegin,'-',(SELECT zn_season_goods.begindate FROM zn_season_goods ORDER BY zn_season_goods.begindate DESC LIMIT 1))
		ELSE CONCAT(yearOfthisSeasonbegin,'-',(SELECT zn_season_goods.begindate FROM zn_season_goods WHERE zn_season_goods.begindate<=DATE_FORMAT(today,'%m-%d') AND 
				zn_season_goods.enddate>DATE_FORMAT(today,'%m-%d') LIMIT 1))
		END;
SET endOfthisSeasonvachar=CASE WHEN 
				ISNULL((SELECT zn_season_goods.begindate FROM zn_season_goods WHERE zn_season_goods.begindate<=DATE_FORMAT(today,'%m-%d') AND 
				zn_season_goods.enddate>=DATE_FORMAT(today,'%m-%d') LIMIT 1))=1
		THEN CONCAT(yearOfthisSeasonend,'-',(SELECT zn_season_goods.begindate FROM zn_season_goods ORDER BY zn_season_goods.begindate ASC LIMIT 1))
		ELSE CONCAT(yearOfthisSeasonbegin,'-',(SELECT zn_season_goods.enddate FROM zn_season_goods WHERE zn_season_goods.begindate<=DATE_FORMAT(today,'%m-%d') AND 
				zn_season_goods.enddate>=DATE_FORMAT(today,'%m-%d') LIMIT 1))
		END;
SET beginOfthisSeason=str_to_date(beginOfthisSeasonvachar,'%Y-%m-%d');
SET endOfthisSeason=str_to_date(endOfthisSeasonvachar,'%Y-%m-%d');





# 补货日补货
drop table if exists tmp_daily_tmp_spr;
CREATE TABLE IF NOT EXISTS `tmp_daily_tmp_spr` (
   xlid varchar(64),
  `goodsid` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '商品编码',
  `shopid` varchar(8) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '门店编码',
  `normalprice` decimal(16,2) DEFAULT NULL COMMENT '定价',
  `classtype` varchar(1) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '补货类型',
  `minorder` decimal(16,2) DEFAULT NULL COMMENT '最小起订量',
  `minstock` decimal(16,2) DEFAULT NULL COMMENT '最小库存数量',
  `closeqty` decimal(16,3) DEFAULT NULL COMMENT '昨日日终库存数量',

  `holiday_begindate` datetime DEFAULT NULL COMMENT '节日开始日期',
  `holiday_enddate` datetime DEFAULT NULL COMMENT '节日结束日期',
  `holidaytype` varchar(1) DEFAULT NULL COMMENT '节日属性',
  `zs` decimal(16,2) DEFAULT NULL COMMENT '春节指数',
  `ho_rate` decimal(16,2) DEFAULT NULL COMMENT '节日安全系数',

  `seasontype` varchar(1) DEFAULT NULL COMMENT '季节属性',
  `rate1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period1，日均销量的折扣比例',
  `rate2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period2，日均销量的折扣比例',
  `period1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例1',
  `period2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例2',

  `weekflag` char(1) CHARACTER SET utf8 DEFAULT NULL,
	`startweek`  int(1) NULL DEFAULT 0, 
  `orderdate` char(8) CHARACTER SET utf8 DEFAULT NULL,
  `safedays` int(11) DEFAULT NULL,
  `arrivaldays` int(11) DEFAULT NULL,
  `sdate` datetime DEFAULT NULL COMMENT '更新日期时间',
  `theoritical_qty` decimal(16,2) DEFAULT NULL,
  `actual_qty` decimal(16,2) DEFAULT NULL,
  `price` decimal(16,2) DEFAULT NULL,
  `planqty` decimal(16,3) DEFAULT NULL,
  `flag` char(1) DEFAULT '0',
  `manual_flag` char(1) DEFAULT '0',
  `dms` decimal(16,3) DEFAULT NULL COMMENT '实际售价对应的日均销量',
  `leftsalingDays` int(11) DEFAULT NULL COMMENT '当前剩余可销天数',
  `need_replenishment` int(11) DEFAULT NULL COMMENT '需要补货',
  `weekflag_days` int(11) DEFAULT 0 COMMENT 'buhuozhouqi',
	`trueprice` decimal(16,2) DEFAULT NULL COMMENT '实际售价',
  UNIQUE KEY `index_1` (`goodsid`,`shopid`) USING BTREE,
  KEY `index_2` (`goodsid`) USING BTREE,
  KEY `index_3` (`shopid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

TRUNCATE TABLE tmp_daily_tmp_spr;

IF NOT (DATE_SUB(springfestivalbegin,INTERVAL 6 DAY)<=today AND springfestivalend>=today) THEN

#j. 判断商品是否为订货日，如果是并且zn_goods表中商品flag=0（这一判断确保每个商品一天只进行一次补货）则触发这些商品补货 。
INSERT INTO tmp_daily_tmp_spr (xlid,goodsid,shopid,normalprice,classtype,minorder,minstock,closeqty,holiday_begindate,holiday_enddate,
holidaytype,zs,ho_rate,seasontype,rate1,rate2,period1,period2,startweek,orderdate,weekflag,safedays,arrivaldays,sdate,weekflag_days)
SELECT 
zn_goods_spr.xlid as xlid,
zn_goods_spr.goodsid AS goodsid,
zn_goods_spr.shopid AS shopid,
zn_goods_spr.normalprice AS normalprice,
zn_goods_spr.classtype AS classtype,
zn_goods_spr.minorder AS minorder,
zn_goods_spr.minstock AS minstock,
zn_goods_spr.closeqty AS closeqty,
zn_goods_spr.holiday_begindate AS holiday_begindate,
zn_goods_spr.holiday_enddate AS holiday_enddate,
zn_goods_spr.holidaytype AS holidaytype,
zn_goods_spr.zs AS zs,
zn_goods_spr.ho_rate AS ho_rate,

zn_goods_spr.seasontype AS seasontype,
zn_goods_spr.rate1 AS rate1,
zn_goods_spr.rate2 AS rate2,
zn_goods_spr.period1 AS period1,
zn_goods_spr.period2 AS period2,
zn_config.Startweek AS startweek,
zn_config.orderdate AS orderdate,
zn_config.weekflag AS weekflag,#补货周期
zn_config.safedays AS safedays,#安全库存天数
zn_config.arrivaldays AS arrivaldays,#到货周期
zn_goods_spr.sdate AS sdate,
CASE WHEN (zn_config.Weekflag=1 AND zn_config.Classtype='A') THEN get_next_buhuo_days(zn_config.Orderdate,today) 
							WHEN (zn_config.Weekflag=1 AND zn_config.Classtype='B') THEN 7
							WHEN zn_config.Weekflag=2 THEN 14 ELSE 0 END AS weekflag_days
FROM zn_goods_spr,zn_config
WHERE zn_goods_spr.shopid=shopId AND zn_goods_spr.flag=0 AND zn_config.shopid=shopId AND 
zn_goods_spr.classtype=zn_config.Classtype AND 
SUBSTR(zn_config.Orderdate,(dayofweek(thisday)+5)mod 7+1,1)='1' AND 
IF(zn_config.Weekflag=2,zn_config.Startweek mod 2=WEEKOFYEAR(today)mod 2,1);
SELECT 'no CALL everyday_procedure_springfestival_spr';
ELSE CALL everyday_procedure_springfestival_spr(shopId, thisDay);
end IF ;

#春节
#F4:B、C类商品退出A类商品的规则补货：春节结束后第一个补货日仍然按照A类的补货日进行补货，但是补货周期转成B或C类。
IF (springfestivalend<today AND today<DATE_ADD(springfestivalend,INTERVAL 15 DAY)) THEN 
TRUNCATE tmp_daily_tmp_spr;
INSERT INTO tmp_daily_tmp_spr (xlid,goodsid,shopid,normalprice,classtype,minorder,minstock,closeqty,holiday_begindate,holiday_enddate,
holidaytype,zs,ho_rate,seasontype,rate1,rate2,period1,period2,orderdate,weekflag,safedays,arrivaldays,sdate,weekflag_days) 
SELECT 
a.xlid as xlid,
a.goodsid AS goodsid,
a.shopid AS shopid,
a.normalprice AS normalprice,
a.classtype AS classtype,
a.minorder AS minorder,
a.minstock AS minstock,
a.closeqty AS closeqty,
a.holiday_begindate AS holiday_begindate,
a.holiday_enddate AS holiday_enddate,
a.holidaytype AS holidaytype,
a.zs AS zs,
a.ho_rate AS ho_rate,
a.seasontype AS seasontype,
a.rate1 AS rate1,
a.rate2 AS rate2,
a.period1 AS period1,
a.period2 AS period2,
c.orderdate AS orderdate,
b.weekflag AS weekflag,#补货周期
b.safedays AS safedays,#安全库存天数
b.arrivaldays AS arrivaldays,#到货周期
a.sdate AS sdate,
CASE WHEN (c.Weekflag=1 AND c.Classtype='A') THEN get_next_buhuo_days(c.Orderdate,today) 
							WHEN (c.Weekflag=1 AND c.Classtype='B') THEN 7
							WHEN c.Weekflag=2 THEN 14 ELSE 0 END AS weekflag_days
FROM zn_goods_spr a,zn_config b,zn_config c
WHERE a.shopid=shopId AND b.shopid=shopId AND c.shopid=shopId AND a.flag=0 
AND b.Classtype=a.classtype AND c.classtype='A' AND a.holidaytype=2 AND
SUBSTR(c.Orderdate,(dayofweek(thisday)+5)mod 7+1,1)='1' AND
	IF(b.Weekflag=2,b.Startweek mod 2=WEEKOFYEAR(today)mod 2,1) AND
get_next_buhuo_date(b.Weekflag,c.Orderdate,b.Startweek,DATE_ADD(holiday_enddate,INTERVAL 1 DAY))=thisday
ON DUPLICATE KEY UPDATE
tmp_daily_tmp_spr.xlid=VALUES(xlid),
tmp_daily_tmp_spr.goodsid=VALUES(goodsid),
tmp_daily_tmp_spr.shopid=VALUES(shopid),
tmp_daily_tmp_spr.normalprice=VALUES(normalprice),
tmp_daily_tmp_spr.classtype=VALUES(classtype),
tmp_daily_tmp_spr.minorder=VALUES(minorder),
tmp_daily_tmp_spr.minstock=VALUES(minstock),
tmp_daily_tmp_spr.closeqty=VALUES(closeqty),
tmp_daily_tmp_spr.holiday_begindate=VALUES(holiday_begindate),
tmp_daily_tmp_spr.holiday_enddate=VALUES(holiday_enddate),
tmp_daily_tmp_spr.holidaytype=VALUES(holidaytype),
tmp_daily_tmp_spr.zs=VALUES(zs),
tmp_daily_tmp_spr.ho_rate=VALUES(ho_rate),
tmp_daily_tmp_spr.seasontype=VALUES(seasontype),
tmp_daily_tmp_spr.rate1=VALUES(rate1),
tmp_daily_tmp_spr.rate2=VALUES(rate2),
tmp_daily_tmp_spr.period1=VALUES(period1),
tmp_daily_tmp_spr.period2=VALUES(period2),
tmp_daily_tmp_spr.orderdate=VALUES(orderdate),
tmp_daily_tmp_spr.weekflag=VALUES(weekflag),
tmp_daily_tmp_spr.safedays=VALUES(safedays),
tmp_daily_tmp_spr.arrivaldays=VALUES(arrivaldays),
tmp_daily_tmp_spr.sdate=VALUES(sdate),
tmp_daily_tmp_spr.weekflag_days=VALUES(weekflag_days);
END IF;


/*节日越期*/
DELETE FROM zn_holiday_across WHERE zn_holiday_across.shopid=shopId AND 
DATE(zn_holiday_across.nextdate)<thisday;

DELETE d FROM tmp_daily_tmp_spr d, zn_holiday_across a 
WHERE d.shopid=shopId AND a.shopid=shopId AND d.goodsid=a.goodsid AND DATE(a.nextdate)=thisDay;



#k.取出商品在到货时的售价：到《补货系统促销明细》zn_prom_detail中
#找到flag=“2可以补货”的商品并取出促销售价，当前日期+到货周期>促销结束日期时应该取商品的正常售价；
UPDATE tmp_daily_tmp_spr x,zn_prom_detail y 
SET x.trueprice=y.price 
WHERE x.shopid=shopId AND y.shopid=shopId AND x.goodsid=y.goodsid AND 
DATE_ADD(today,INTERVAL x.arrivaldays DAY)<y.enddate AND y.flag=2;

#如果未找到则用zn_goods表中的正常售价normalprice.
UPDATE tmp_daily_tmp_spr x 
SET x.trueprice=x.normalprice 
WHERE ISNULL(x.trueprice);

SELECT "ook2";
SELECT * FROM tmp_daily_tmp_spr;

# m. 取出日均销量：
#--根据促销价格到zn_price_dms取出这些促销品对应的dms, 转n
UPDATE tmp_daily_tmp_spr x,zn_price_dms y 
SET x.dms=y.dms,
x.trueprice=y.trueprice 
WHERE x.shopid=shopId AND y.shopid=shopId AND 
x.goodsid=y.goodsid AND (x.trueprice/x.normalprice)*100>=y.disc1 AND 
(x.trueprice/x.normalprice)*100<y.disc2;

#--当前售价=normalprice，未找到对应的dms或dms=0:说明是新品或者没有正常价销售过，zn_goods表flag=2,转s
UPDATE zn_goods_spr a,tmp_daily_tmp_spr x 
SET a.flag=5,a.trueprice=x.trueprice WHERE a.shopid=shopId AND x.shopid=shopId AND 
a.goodsid=x.goodsid AND (ISNULL(x.dms) OR x.dms=0.0) AND 
x.trueprice=x.normalprice;
delete from tmp_daily_tmp_spr where (ISNULL(dms) OR dms=0.0) and normalprice=trueprice;
#--当前售价<>normalprice,未找到对应的dms:则根据这只单品的定价和取到的促销售价算出促销价所处的折扣段,再到《小类折扣与销量》zn_xl_dms表找到这只单品所属小分类对应的折扣段，对应的dms_disc/dms_ori就是该小分类下在这个折扣段的dms增长率。日均销量=这个dms增长率*这只单品的定价DMS(或者小分类的dms_ori) , 转n

UPDATE tmp_daily_tmp_spr x,zn_xl_dms y 
SET x.dms=y.dms_ori*(y.dms_disc/y.dms_ori) 
WHERE x.shopid=shopId AND y.shopid=shopId AND 
ISNULL(x.dms) AND y.xlid=x.xlid AND 
x.trueprice<>x.normalprice AND 
(x.trueprice/x.normalprice)*100<y.disc2 AND 
 (x.trueprice/x.normalprice)*100>=y.disc1;

#--如果在zn_xl_dms中仍然未找到DMS，zn_goods表flag=2 ,转h
UPDATE zn_goods_spr x,tmp_daily_tmp_spr y 
SET x.flag=4,x.trueprice=y.trueprice WHERE x.shopid=shopId AND y.shopid=shopId AND 
x.goodsid=y.goodsid AND ISNULL(y.dms) ;
delete from tmp_daily_tmp_spr where dms is null;


SELECT "ook3";
SELECT * FROM tmp_daily_tmp_spr;

#n.根据节日属性和季节属性调整日均销量

#--holidaytype=2春节其它商品, 当前日期>=begindate-6进入春节补货模式
#--holidaytype=2春节其它商品, 当前日期>=enddate结束春节补货模式
#春节期间日均销量==b取到的日均销量*zs*rate
UPDATE tmp_daily_tmp_spr x 
SET x.dms=x.dms*x.zs*x.ho_rate 
WHERE x.holidaytype=2 AND x.holiday_begindate<=today AND 
x.holiday_enddate>today;

#--seasontype=1季节性商品 并且 当前日期在period1—period2对应的日期之内时修订日均销量，日均销量=b取到的日均销量*rate1，在period2—enddate对应的日期之内时日均销量=b取到的日均销量*rate2转e
UPDATE tmp_daily_tmp_spr x
SET x.dms=CASE WHEN DATE_ADD(beginOfthisSeason,INTERVAL 
(DATEDIFF(beginOfthisSeason,endOfthisSeason)*x.period1) 
DAY)<today THEN x.dms*x.rate1/100.0 
							 WHEN DATE_ADD(beginOfthisSeason,INTERVAL 
(DATEDIFF(beginOfthisSeason,endOfthisSeason)*x.period2) 
DAY)<today THEN x.dms*x.rate2/100.0 END
WHERE x.seasontype=1;


# o计算当前可销天数：当前可销天数=当前库存数量/日均销量
UPDATE tmp_daily_tmp_spr x
SET x.leftsalingDays=FLOOR(x.closeqty/x.dms);


#p判断是否需要补货：符合以下两个条件之一时需要补货。
#（1）当前可销天数<(补货周期+安全库存天数+到货周期)
#（2）当前库存小于系统设定的最小库存数。
UPDATE tmp_daily_tmp_spr x 
SET x.need_replenishment=CASE WHEN (x.leftsalingDays<x.arrivaldays+x.safedays+x.weekflag_days) THEN 1
															WHEN (x.closeqty<x.minstock) THEN 1 END;

#下面为春节其它商品在春节期间需要调整补货周期、到货周期的规则：
#F2 :一般春节初一至初三不送货（参数控制），因此春节期间最后一个补货日会涉及越期订货问题：到货日期在begindate至enddate之间的最大到货日期对应的补货应该为越期补货
#F3:B、C类商品按照A类商品的规则补货：当前日期>=begindate-6 按照A类订货周期订货
#F4:B、C类商品退出A类商品的规则补货：春节结束后第一个补货日仍然按照A类的补货日进行补货，但是补货周期转成B或C类。
#---T类商品：这个特殊并且量不大，应该按照BC类处理或者按照正常方式补货都行。
#注意补货周期、到货周期的计算：
#（1）今天与下一个补货日之间的天数<4，下一个补货日不再补货，否则补货；
#（2）春节初一至初三可以补货、但是不送货。
#需要补货转g,不需要补货转h
#CALL everyday_procedure_springfestival(shopId,thisDay);

#q．确定补货量：
#理论补货量1=（补货周期+安全库存天数+到货周期）*日均销量 - 当前库存
#理论补货量2=系统设定的最小库存-当前库存
#理论补货量3=max(理论补货量2, 最小订货量)
#理论补货量=max(理论补货量1, 理论补货量3)
#理论补货量<最小订货量时不需要补货，否则需要补货。
#实际补货数量=（（理论补货量/最小起订量）向上取整）*最小起订量。
UPDATE tmp_daily_tmp_spr x 
SET x.actual_qty=CASE WHEN 
((x.arrivaldays+x.safedays+x.weekflag_days)*x.dms-x.closeqty-x.minorder)>=(x.minstock-x.closeqty-x.minorder) 
AND ((x.arrivaldays+x.safedays+x.weekflag_days)*x.dms-x.closeqty-x.minorder)>0 
													THEN CEILING(((x.arrivaldays+x.safedays+x.weekflag_days)*x.dms-x.closeqty)/x.minorder)*x.minorder 
											WHEN 
((x.arrivaldays+x.safedays+x.weekflag_days)*x.dms-x.closeqty-x.minorder)<(x.minstock-x.closeqty-x.minorder) 
AND (x.minstock-x.closeqty-x.minorder)>0 
													THEN CEILING((x.minstock-x.closeqty)/x.minorder)*x.minorder 
ELSE 0 END; 

#s.更新zn_goods表qty、flag、sdate字段;
UPDATE zn_goods_spr x,tmp_daily_tmp_spr y 
SET x.flag=1, 
x.qty=y.actual_qty, 
x.trueprice=y.trueprice, 
x.sdate=today 
 WHERE x.shopid=shopId AND y.shopid=shopId AND 
x.goodsid=y.goodsid and x.flag=0;

#r.更新zn_prom_detail商品状态：zn_goods表中flag=0并且今天是补货日商品但是在《补货系统促销明细》zn_prom_detail中flag=“1越期促销补货”的商品改为flag=‘2可以补货’并更新日期

UPDATE zn_prom_detail x, zn_goods_spr y,zn_config z 
SET x.flag=2, 
		x.sdate=today, 
		y.flag=10 
WHERE x.shopid=shopId AND y.shopid=shopId 
AND x.goodsid=y.goodsid AND 
x.flag=1 AND z.shopid=shopId and z.Classtype=y.classtype and 
SUBSTR(z.orderdate,(dayofweek(thisday)+5)mod 7+1,1)='1' AND 
IF(z.Weekflag=2,z.Startweek mod 2=WEEKOFYEAR(today)mod 2,1);  


END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for daily_procedure_holiday
-- ----------------------------
DROP PROCEDURE IF EXISTS `daily_procedure_holiday`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `daily_procedure_holiday`(IN `shopid` varchar(64),IN `thisday` date)
BEGIN

DECLARE today date;

##促销计划最晚录入时间
declare plan_day int;
##是否有首次补货
declare isholiday int;
select value into isholiday from zn_param where id=6;
select value into plan_day from zn_param where id=4;

SET today=thisDay;


# 首次发现促销品补货

# a0.《补货系统促销明细》中manual_flag=1的商品:补货数量=采购分货数量 
#--如果 采购分货数量=0则  《补货系统促销明细》 flag=0  保持不变并更新日期。
#--如果采购分货数量>0 则 在《补货系统促销明细》中为该商品打标“1越期促销补货” 并更新日期.
#a1.更新zn_goods表qty、flag、sdate字段
if isholiday=1
then
	UPDATE zn_goods a,zn_prom_detail b
	SET a.qty=b.planqty,
	a.flag=6,
	a.sdate=today
	WHERE a.shopid=shopId AND b.shopid=shopId AND
	a.goodsid=b.goodsid AND b.manual_flag=1 AND b.flag=0 and b.planqty>0;

	UPDATE zn_prom_detail a
	SET a.flag=CASE WHEN (a.planqty=0.0) THEN 0 
									WHEN (a.planqty>0.0) THEN 3 end,
			a.sdate=today
	where a.manual_flag=1 and a.flag=0 and a.shopid=shopId;
ELSE
	UPDATE zn_goods a,zn_prom_detail b,zn_config c 
	SET a.qty=b.planqty,
	a.flag=6,
	a.sdate=today
	WHERE a.shopid=shopId AND b.shopid=shopId AND c.shopid=shopId and c.Classtype='A' and SUBSTR(c.Orderdate,(dayofweek(thisday)+5)mod 7+1,1)='1' and
	a.goodsid=b.goodsid AND b.manual_flag=1 AND b.flag=0 and b.planqty>0;

	UPDATE zn_prom_detail a,zn_config b
	SET a.flag=CASE WHEN (a.planqty=0.0) THEN 0 
									WHEN (a.planqty>0.0) THEN 3 end,
			a.sdate=today
	where a.manual_flag=1 and a.flag=0 and a.shopid=shopId and b.shopid=shopId and b.classtype='A' and SUBSTR(b.Orderdate,(dayofweek(thisday)+5)mod 7+1,1)='1';
end if;


#a. 《补货系统促销明细》中manual_flag=0的商品:取出补货类别：到zn_goods中取classtype、minorder、minstock、closeqty等，根据补货类别可以取出补货周期、安全库存天数、到货周期。
DROP TABLE IF EXISTS `tmp_prom_tmp`;
CREATE TABLE IF NOT EXISTS `tmp_prom_tmp` (
  `goodsid` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '商品编码',
  `shopid` varchar(8) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '门店编码',
  `normalprice` decimal(16,2) DEFAULT NULL COMMENT '定价',
  `classtype` varchar(1) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '补货类型',
  `minorder` decimal(16,2) DEFAULT NULL COMMENT '最小起订量',
  `minstock` decimal(16,2) DEFAULT NULL COMMENT '最小库存数量',
  `closeqty` decimal(16,3) DEFAULT NULL COMMENT '昨日日终库存数量',
  `holiday_begindate` datetime DEFAULT NULL COMMENT '节日开始日期',
  `holiday_enddate` datetime DEFAULT NULL COMMENT '节日结束日期',
  `holidaytype` varchar(1) DEFAULT NULL COMMENT '节日属性',
  `zs` decimal(16,2) DEFAULT NULL COMMENT '春节指数',
   xlid varchar(32),
  `ho_rate` decimal(16,2) DEFAULT NULL COMMENT '节日安全系数',
  `seasontype` varchar(1) DEFAULT NULL COMMENT '季节属性',
  `rate1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period1，日均销量的折扣比例',
  `rate2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period2，日均销量的折扣比例',
  `period1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例1',
  `period2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例2',
	`startweek`  int(1) NULL DEFAULT 0, 
  `weekflag` char(1) CHARACTER SET utf8 DEFAULT NULL,
  `safedays` int(11) DEFAULT NULL,
  `arrivaldays` int(11) DEFAULT NULL,
  `sdate` datetime DEFAULT NULL COMMENT '更新日期时间',
  `actual_qty` decimal(16,2) DEFAULT NULL,
  `price` decimal(16,2) DEFAULT NULL,
  `flag` char(1) DEFAULT '0',
  `dms` decimal(16,3) DEFAULT 0 COMMENT '实际售价对应的日均销量',
  `prom_dms` decimal(16,3) DEFAULT 0 COMMENT '实际售价对应的日均销量',
  `weekflag_days` int(11) DEFAULT 0 COMMENT 'buhuozhouqi',
   prom_id int(11),
	`display_flag`  varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '0—默认值，1—场外  2—堆头  3—端头' ,
	prom_begindate date,
	prom_enddate date,
	prom_days int(11) COMMENT '促销天数',
	prom_alldays int(11) COMMENT 'orderdays+ Arrivaldays+ safedays',
	prom_arriavedate date COMMENT '到货日',
	orderdays int(11) COMMENT 'datediff(下一个补货日,当前日期)',
	now_date date COMMENT '产生补货的日期',
	received_date date COMMENT 'dateadd(now_date,arrivaldays-1)',
	prom_day1 int(11) default 0 COMMENT 'max(min(datediff(enddate, received_date),alldays),0)',
	prom_day2 int(11) COMMENT 'max(（alldays-促销DMS补货天数)，0）',
	prom_flag int(11) COMMENT '促销补货标志位',
  orderdate varchar(10),
##	`venderid`  varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '供货商id',
	`config_flag`  char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' ,
	`round_rule`  char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' ,
	prom_type varchar(64),
  KEY `index_1` (`shopid`,`goodsid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO tmp_prom_tmp (goodsid,shopid,normalprice,classtype,minorder,minstock,closeqty,
holiday_begindate,holiday_enddate,holidaytype,ho_rate,zs,xlid,seasontype,
rate1,rate2,period1,period2,startweek,weekflag,safedays,arrivaldays,sdate,price,
flag,weekflag_days,prom_begindate,prom_enddate,prom_id,display_flag,orderdate,prom_day2,round_rule,
##venderid,
config_flag,prom_type)
SELECT 
zn_goods.goodsid AS goodsid,
zn_goods.shopid AS shopid,
zn_goods.normalprice AS normalprice,
zn_goods.classtype AS classtype,
zn_goods.minorder AS minorder,
zn_goods.minstock AS minstock,
zn_goods.closeqty AS closeqty,
zn_goods.`holiday_begindate`,
zn_goods.`holiday_enddate`,
zn_goods.`holidaytype`,
zn_goods.`ho_rate`,
zn_goods.`zs`,
zn_goods.`xlid`,
zn_goods.`seasontype`,
zn_goods.`rate1`,
zn_goods.`rate2`,
zn_goods.`period1`,
zn_goods.`period2`,
zn_config.Startweek AS startweek,
zn_config.weekflag AS weekflag,#补货周期
zn_config.safedays AS safedays,#安全库存天数
zn_config.arrivaldays AS arrivaldays,#到货周期
zn_goods.sdate AS sdate,
case when zn_prom_detail.price>zn_goods.normalprice then zn_goods.normalprice else zn_prom_detail.price end AS price,
zn_goods.flag AS flag,
DATEDIFF(get_next_buhuo_date(weekflag,zn_config.Orderdate,zn_config.Startweek,today),today) AS weekflag_days,
zn_prom_detail.begindate as prom_begindate,
zn_prom_detail.enddate as prom_enddate,
zn_prom_detail.id as prom_id,
zn_prom_detail.display_flag as display_flag,
zn_config.Orderdate as orderdate,
DATEDIFF(get_next_buhuo_date(weekflag,zn_config.Orderdate,zn_config.Startweek,today),today)+zn_config.arrivaldays+zn_config.safedays as prom_day2,
zn_config.round_rule,
##zn_goods.venderid,
zn_goods.config_flag,
zn_prom_detail.prom_type
FROM zn_goods,zn_config,zn_prom_detail
WHERE zn_goods.shopid=shopId AND zn_config.shopid=shopId AND 
zn_prom_detail.shopid=shopId AND zn_goods.goodsid=zn_prom_detail.goodsid AND 
zn_prom_detail.manual_flag=0 AND zn_prom_detail.flag=0 and
zn_goods.classtype=zn_config.Classtype
 AND datediff(zn_prom_detail.begindate,today)<=plan_day
;

create index index_2 on tmp_prom_tmp(shopid,goodsid,prom_type);
#7-1 首先对新发现的促销品进行优化处理：到《补货系统促销明细》检查该门店是否有新的促销商品，首次发现促销商品（flag=0 and (促销开始日期-当前日期<7)）时首先处理同一个商品存在多条优惠的问题，即多条促销按照最新促销的补货: 根据zn_prom_detail.id判断先后顺序先后。检查促销表里是否还有这个门店这个单品的促销，若有则之前的促销结束日期改为min(新的促销开始日前一天与enddate) ，zn_prom_detail flag=4(被新的促销覆盖)表示以后不会按照这个价格去补货，但是在促销过期后要更新dms.

##多条促销按照最新促销的补货: 
##同种促销根据zn_prom_detail.id判断先后
drop temporary table if exists tmp_prom1;
create temporary table tmp_prom1(
	select shopid,goodsid,prom_type,max(prom_id) as prom_id
	from tmp_prom_tmp
	group by shopid,goodsid,prom_type having count(*)>1
);
create index index_1 on tmp_prom1(shopid,goodsid,prom_type);

delete a from tmp_prom_tmp a join tmp_prom1 b on a.shopid=b.shopid and a.goodsid=b.goodsid and a.prom_type=b.prom_type
where a.prom_id!=b.prom_id;

delete a from zn_prom_detail a join tmp_prom1 b on a.shopid=b.shopid and a.goodsid=b.goodsid and a.prom_type=b.prom_type
where a.id!=b.prom_id and a.flag=0;
##不同种促销执行低价的
drop temporary table if exists tmp_prom2;
create temporary table tmp_prom2(
	select shopid,goodsid,min(price) as price
	from tmp_prom_tmp
	group by shopid,goodsid having count(*)>1
);
create index index_1 on tmp_prom2(shopid,goodsid);

delete a from tmp_prom_tmp a join tmp_prom2 b on a.shopid=b.shopid and a.goodsid=b.goodsid
where a.price!=b.price;

delete a from zn_prom_detail a join tmp_prom2 b on a.shopid=b.shopid and a.goodsid=b.goodsid
where a.price!=b.price and a.flag=0;
##查找正在进行的促销数据与首次补货促销数据重复部分
drop temporary table if exists tmp_prom;
create temporary table tmp_prom(
	select b.*
	from zn_prom_detail a join tmp_prom_tmp b on a.shopid=b.shopid and a.goodsid=b.goodsid
	where a.flag in (1,2)
);
create index index_1 on tmp_prom(shopid,goodsid);
drop temporary table if exists tmp_tprom;
create temporary table tmp_tprom(
	select b.*
	from zn_prom_detail_tmp a join tmp_prom_tmp b on a.shopid=b.shopid and a.goodsid=b.goodsid
);
create index index_1 on tmp_tprom(shopid,goodsid);
##正在进行的促销数据更新结束日期和状态4
update zn_prom_detail a join tmp_prom b on a.shopid=b.shopid and a.goodsid=b.goodsid
set a.enddate=if(a.enddate<date_add(b.prom_begindate,interval -1 day),a.enddate,if(date_add(b.prom_begindate,interval -1 day)<today,today,date_add(b.prom_begindate,interval -1 day))),a.flag=4,a.sdate=now()
where a.flag in(1,2);
##找totaldays最小值
drop temporary table if exists tmp_mday;
create temporary table tmp_mday(
	select a.shopid,a.goodsid,min(totaldays) as mday
	from zn_prom_detail_tmp a join tmp_tprom b on a.shopid=b.shopid and a.goodsid=b.goodsid
	group by a.shopid,a.goodsid
);
create index index_1 on tmp_mday(shopid,goodsid);

update zn_prom_detail_tmp a join tmp_tprom b on a.shopid=b.shopid and a.goodsid=b.goodsid join tmp_mday c on a.shopid=c.shopid and a.goodsid=c.goodsid
set a.enddate=if(a.enddate<date_add(b.prom_begindate,interval -1 day),a.enddate,if(date_add(b.prom_begindate,interval -1 day)<today,today,date_add(b.prom_begindate,interval -1 day)))
where a.totaldays!=c.mday;

delete from tmp_prom_tmp where flag!=0;
#7-3、发现促销品则将促销品的补货类型设为A（补货类型为A代表最短的补货周期）：更新zn_goods中促销品的classtype=’A’
##根据参数判断是否需要首次补货
if isholiday=0
THEN
  delete a from tmp_prom_tmp a join zn_config b on a.shopid=b.shopid
  where b.classtype='A' and SUBSTR(b.Orderdate,(dayofweek(thisday)+5)mod 7+1,1)!='1';

	update tmp_prom_tmp a join zn_config b on a.shopid=b.shopid set a.classtype='A',a.startweek=b.startweek,
					a.weekflag=b.weekflag,a.safedays=b.safedays,a.arrivaldays=b.arrivaldays,a.orderdate=b.Orderdate
	where b.classtype='A';

	/*#更新供货商信息
	UPDATE tmp_prom_tmp x,zn_config_v v 
	SET 
			x.weekflag=v.Weekflag,
			x.safedays=v.Safedays,
			x.arrivaldays=v.Arrivaldays,
			x.startweek=v.Startweek,
			x.orderdate=v.Orderdate,
			x.config_flag=v.config_flag,
			x.round_rule=v.round_rule
	WHERE v.Shopid=shopid AND v.venderid=x.venderid AND v.Classtype=x.classtype AND x.config_flag='v' AND v.classtype=x.classtype;*/


	update tmp_prom_tmp set weekflag_days=DATEDIFF(get_next_buhuo_date(weekflag,Orderdate,Startweek,today),today);

	update zn_goods a join tmp_prom_tmp b on a.shopid=b.shopid and a.goodsid=b.goodsid set a.classtype='A'
	where b.classtype='A';
else 
	##更新越期商品的补货周期天数
	update tmp_prom_tmp a join zn_config b on a.shopid=shopid and b.shopid=shopid and a.classtype=b.Classtype
	set weekflag_days=datediff(get_next_buhuo_date(b.Weekflag,b.Orderdate,b.Startweek,date_add(today,interval weekflag_days+1 day)),today)
	where DATEDIFF(get_next_buhuo_date(b.Weekflag,b.Orderdate,b.Startweek,today),today)<a.arrivaldays;
end if;


UPDATE tmp_prom_tmp x,zn_prom_detail p 
SET x.prom_begindate=p.begindate,
		x.prom_enddate=p.enddate,
		x.prom_days=DATEDIFF(p.enddate,p.begindate)+1,
		x.orderdays=DATEDIFF(get_next_buhuo_date(weekflag,Orderdate,Startweek,today),today),
		x.prom_alldays=DATEDIFF(get_next_buhuo_date(weekflag,Orderdate,Startweek,today),today)+x.arrivaldays+x.safedays,
		x.now_date=thisday,
		x.prom_arriavedate=DATE_ADD(thisday,INTERVAL arrivaldays DAY),
		x.received_date=DATE_ADD(thisday,INTERVAL x.arrivaldays-1 DAY),
		x.prom_day1=0,
		x.prom_day2=DATEDIFF(get_next_buhuo_date(weekflag,Orderdate,Startweek,today),today)+x.arrivaldays+x.safedays,
		x.prom_flag=p.flag
WHERE x.shopid=shopid AND p.shopid=shopid AND x.goodsid=p.goodsid ANd p.flag=0;

#7-7.采购不分货：《补货系统促销明细》中manual_flag=0的商品:取出补货类别：到zn_goods中取classtype、minorder、minstock、closeqty等，根据补货类别可以取出补货周期、安全库存天数、到货周期。
#注意补货周期、到货周期的计算：
#（1）今天与下一个补货日之间的天数<到货周期（这个参数变了，不是4了，意思就是在补货日补货不应该产生越期），下一个补货日不再补货，否则补货；
#（2）春节初一至初三可以补货、但是不送货 
UPDATE tmp_prom_tmp x 
SET x.prom_day1=GREATEST(LEAST(DATEDIFF(x.prom_enddate,x.received_date),x.prom_alldays),0)
WHERE x.shopid=shopid AND (x.prom_days>(x.arrivaldays+x.safedays)) AND NOT ISNULL(x.prom_begindate);

UPDATE tmp_prom_tmp x 
SET x.prom_day2=GREATEST((x.prom_alldays-x.prom_day1),0)
WHERE x.shopid=shopid AND (x.prom_days>=(x.arrivaldays+x.safedays)) AND NOT ISNULL(x.prom_begindate);

			#2、	促销天数<补货周期+到货周期 
UPDATE tmp_prom_tmp x,zn_prom_detail p 
SET x.prom_day1=CASE WHEN ((x.prom_begindate>x.prom_arriavedate)AND(p.flag=0))
													THEN x.prom_days+x.safedays
											ELSE 0 END,
		p.flag=CASE WHEN ((x.prom_begindate>x.prom_arriavedate)AND(p.flag=0))
													THEN 6
											ELSE 0 END
WHERE x.shopid=shopid AND p.shopid=shopid AND x.goodsid=p.goodsid AND (x.prom_days<(x.arrivaldays+x.safedays)) AND NOT ISNULL(x.prom_begindate);

UPDATE tmp_prom_tmp x,zn_prom_detail p 
SET x.prom_day2=x.prom_alldays-x.prom_day1
WHERE x.shopid=shopid AND p.shopid=shopid AND x.goodsid=p.goodsid AND (x.prom_days<(x.arrivaldays+x.safedays)) AND NOT ISNULL(x.prom_begindate);


#取出普通售价时的日均销量：
UPDATE tmp_prom_tmp x,zn_price_dms pd 
SET x.dms=pd.dms
WHERE x.shopid=shopid AND pd.shopid=shopid AND x.goodsid=pd.goodsid and pd.disc1=95;
#--促销首次补货（zn_prom_detail.flag=0）时，促销DMS从zn_price_dms中取，
UPDATE tmp_prom_tmp x,zn_price_dms pd 
SET x.prom_dms=pd.dms
WHERE x.shopid=shopid AND pd.shopid=shopid AND x.goodsid=pd.goodsid and (x.price/x.normalprice)*100>=pd.disc1 AND 
(x.price/x.normalprice)*100<pd.disc2 and x.display_flag=pd.display_flag;

##当找不到促销折扣段时找上下紧邻的折扣段
##1.取出促销dms=0且day1>0的数据
drop temporary table if exists tmp_nearcx;
create temporary table tmp_nearcx(
	select shopid,goodsid,normalprice,price,prom_dms,cast(0 as decimal(16,3)) as dms1,cast(0 as decimal(16,2)) as price1,cast(0 as decimal(16,2)) as dms2,
					cast(0 as decimal(16,2)) as price2,display_flag
	from tmp_prom_tmp 
	where (ISNULL(prom_dms)OR(prom_dms=0.0)) and prom_day1>0
);
create index index_1 on tmp_nearcx(shopid,goodsid);
##2.取出相邻折扣的dms
UPDATE tmp_nearcx x,zn_price_dms pd
SET x.dms1=if(pd.dms is null,0,pd.dms),x.price1=pd.trueprice
WHERE x.shopid=shopid AND pd.shopid=shopid AND x.goodsid=pd.goodsid and (x.price/x.normalprice)*100-5>=pd.disc1 AND 
(x.price/x.normalprice)*100-5<pd.disc2 and x.display_flag=pd.display_flag;
UPDATE tmp_nearcx x,zn_price_dms pd
SET x.dms2=if(pd.dms is null,0,pd.dms),x.price2=pd.trueprice
WHERE x.shopid=shopid AND pd.shopid=shopid AND x.goodsid=pd.goodsid and (x.price/x.normalprice)*100+5>=pd.disc1 AND 
(x.price/x.normalprice)*100+5<pd.disc2 and x.display_flag=pd.display_flag;
##3.将相邻折扣dms作为促销dms，若存在两个相邻折扣的dms则判断trueprice与哪个接近
update tmp_nearcx set prom_dms=case when dms1=0 and dms2!=0 then dms2
																	  when dms1!=0 and dms2=0 then dms1
																		when dms1!=0 and dms2!=0 then if(abs(price1-price)>abs(price2-price),dms2,dms1) else 0 end;
##4.将取好的dms更新回表
update tmp_prom_tmp a join tmp_nearcx b on a.shopid=b.shopid and a.goodsid=b.goodsid set a.prom_dms=b.prom_dms;

#--day1>0 并且未找到当前售价对应的dms或dms=0 : zn_goods表Flag=4 (没有促销销售记录), 转7-12
UPDATE zn_goods x,tmp_prom_tmp y
SET x.flag=4,x.trueprice=y.price WHERE x.shopid=shopid and y.shopid=shopid and x.goodsid=y.goodsid and y.prom_day1>0 and (ISNULL(y.prom_dms)OR(y.prom_dms=0.0)) ;
UPDATE zn_prom_detail x,tmp_prom_tmp y
SET x.flag=2 WHERE x.shopid=shopid and y.shopid=shopid and x.goodsid=y.goodsid and (ISNULL(y.prom_dms)OR(y.prom_dms=0.0)) and x.flag=0 and y.prom_day1>0;
delete from tmp_prom_tmp where (ISNULL(prom_dms)OR(prom_dms=0.0)) and prom_day1>0;
#--day2>0 并且未找到normalprice对应的dms或dms=0:说明是新品或者没有正常价销售过，zn_goods表Flag=5 (没有正常定价销售记录),转7-12
UPDATE zn_goods z,tmp_prom_tmp x 
SET z.flag=5,z.trueprice=x.price
WHERE z.shopid=shopid AND x.shopid=shopid AND z.goodsid=x.goodsid AND (ISNULL(x.dms)OR x.dms=0.0) AND x.prom_day2>0 and x.prom_day1=0;
UPDATE zn_prom_detail z,tmp_prom_tmp x 
SET z.flag=2
WHERE z.shopid=shopid AND x.shopid=shopid AND z.goodsid=x.goodsid AND (ISNULL(x.dms)OR x.dms=0.0) AND x.prom_day2>0 and z.flag=0 and x.prom_day1=0;
delete from tmp_prom_tmp where (ISNULL(dms)OR(dms=0.0)) AND prom_day2>0 and prom_day1=0;



#7-9根据节日属性和季节属性调整日均销量
#--holidaytype=2春节其它商品, 当前日期>=begindate-6进入春节补货模式 
#--holidaytype=2春节其它商品, 当前日期>=enddate结束春节补货模式
#春节期间日均销量==m取到的2个日均销量*zs*rate  转o
UPDATE tmp_prom_tmp x 
SET x.dms=x.dms*x.zs*x.ho_rate, 
		x.prom_dms=x.prom_dms*x.zs*x.ho_rate 
WHERE x.holidaytype=2 AND x.holiday_begindate<=today AND 
x.holiday_enddate>=today;
#--seasontype=1季节性商品 并且 当前日期在period1—period2对应的日期之内时修订日均销量，日均销量=m取到的2个日均销量*rate1，在period2—enddate对应的日期之内时日均销量=m取到的2个日均销量*rate2转7-10
UPDATE tmp_prom_tmp x join zn_season_goods y on x.shopid=y.shopid and x.goodsid=y.goodsid
SET x.dms=CASE WHEN DATE_ADD(getSeasonbd(y.begindate,y.enddate),INTERVAL (DATEDIFF(getSeasoned(y.begindate,y.enddate),getSeasonbd(y.begindate,y.enddate))*x.period1/100) DAY)<=today 
										and today<DATE_ADD(getSeasonbd(y.begindate,y.enddate),INTERVAL (DATEDIFF(getSeasoned(y.begindate,y.enddate),getSeasonbd(y.begindate,y.enddate))*x.period2/100) DAY)
										THEN x.dms*x.rate1/100.0 
							 WHEN DATE_ADD(getSeasonbd(y.begindate,y.enddate),INTERVAL (DATEDIFF(getSeasoned(y.begindate,y.enddate),getSeasonbd(y.begindate,y.enddate))*x.period2/100) DAY)<=today 
										and today<getSeasoned(y.begindate,y.enddate) THEN x.dms*x.rate2/100.0 
else x.dms END,
x.prom_dms=CASE WHEN DATE_ADD(getSeasonbd(y.begindate,y.enddate),INTERVAL (DATEDIFF(getSeasoned(y.begindate,y.enddate),getSeasonbd(y.begindate,y.enddate))*x.period1/100) DAY)<=today 
										and today<DATE_ADD(getSeasonbd(y.begindate,y.enddate),INTERVAL (DATEDIFF(getSeasoned(y.begindate,y.enddate),getSeasonbd(y.begindate,y.enddate))*x.period2/100) DAY)
										THEN x.prom_dms*x.rate1/100.0 
							 WHEN DATE_ADD(getSeasonbd(y.begindate,y.enddate),INTERVAL (DATEDIFF(getSeasoned(y.begindate,y.enddate),getSeasonbd(y.begindate,y.enddate))*x.period2/100) DAY)<=today 
										and today<getSeasoned(y.begindate,y.enddate) THEN x.prom_dms*x.rate2/100.0 
else x.prom_dms END
WHERE x.seasontype=1;

##判断4，5状态商品是否满足最小库存补货
update zn_goods set qty=ceil((minstock-closeqty)/minorder)*minorder,flag=1,sdate=now()
where shopid=shopId and flag in (4,5) and minstock>closeqty;

#7-10．确定补货量：
#理论补货量1=促销DMS补货天数day1*促销dms+非促销补货天数day2*非促销dms  - 当前库存
#理论补货量2=系统设定的最小库存-当前库存
#If  理论补货量2<0  and理论补货量1 < 最小订货量 then不需要补货
#Else  需要补货。
#理论补货量3=max(理论补货量2, 最小订货量)
#理论补货量 =max(理论补货量1, 理论补货量3)
#实际补货数量=（（理论补货量/最小订货量）向上取整）*最小订货量。
#end
UPDATE tmp_prom_tmp x 
SET x.actual_qty=CASE WHEN ((case x.round_rule when 0 then (x.prom_day1*x.prom_dms+x.prom_day2*x.dms-x.closeqty)/x.minorder<=0 
														                   when 1 then (x.prom_day1*x.prom_dms+x.prom_day2*x.dms-x.closeqty)/x.minorder<0.5
																							 when 2 then (x.prom_day1*x.prom_dms+x.prom_day2*x.dms-x.closeqty)/x.minorder<1 end) AND (x.minstock<=x.closeqty))
														THEN 0.0
														ELSE (case x.round_rule when 0 then CEILING(GREATEST(x.prom_day1*x.prom_dms+x.prom_day2*x.dms-x.closeqty,x.minstock-x.closeqty,x.minorder)/x.minorder)*x.minorder 
																		               when 1 then round(GREATEST(x.prom_day1*x.prom_dms+x.prom_day2*x.dms-x.closeqty,x.minstock-x.closeqty,x.minorder)/x.minorder)*x.minorder 
																									 when 2 then floor(GREATEST(x.prom_day1*x.prom_dms+x.prom_day2*x.dms-x.closeqty,x.minstock-x.closeqty,x.minorder)/x.minorder)*x.minorder end)  END; 

#7-11更新zn_goods表qty、flag=9（促销首次补货）
UPDATE zn_goods x,tmp_prom_tmp y
SET x.flag=9,
x.qty=y.actual_qty,
x.trueprice=y.price,
x.sdate=now()
 WHERE x.shopid=shopId AND y.shopid=shopId AND
x.goodsid=y.goodsid;


#7-12更新zn_goods表sdate字段;在《补货系统促销明细》中为该商品打标“1越期促销补货”或“2可以补货”并更新日期sdate字段
UPDATE zn_prom_detail a,tmp_prom_tmp y
SET a.flag=2,
		a.sdate=now()
WHERE a.shopid=shopId AND y.shopid=shopId AND a.begindate=y.prom_begindate and a.enddate=y.prom_enddate and
a.goodsid=y.goodsid;


if isholiday=1
then
	UPDATE zn_prom_detail a,tmp_prom_tmp y,zn_config z
	SET a.flag=1,
			a.sdate=now()
	WHERE a.shopid=shopId AND y.shopid=shopId AND a.begindate=y.prom_begindate and a.enddate=y.prom_enddate and
	a.goodsid=y.goodsid and z.shopid=shopId and y.classtype=z.Classtype and DATEDIFF(get_next_buhuo_date(z.weekflag,z.Orderdate,z.Startweek,today),today)<y.arrivaldays
	;
end if;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for daily_procedure_holiday_spr
-- ----------------------------
DROP PROCEDURE IF EXISTS `daily_procedure_holiday_spr`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `daily_procedure_holiday_spr`(IN `shopid` varchar(64),IN `thisday` date)
BEGIN

DECLARE today date;
DECLARE 3MonthEarlier date;
DECLARE beginOfthisSeason date;
DECLARE beginOfthisSeasonvachar VARCHAR(255);
DECLARE endOfthisSeason date;
DECLARE endOfthisSeasonvachar VARCHAR(255);
#开始结束日期年份
DECLARE yearOfthisSeasonbegin VARCHAR(255);
DECLARE yearOfthisSeasonend VARCHAR(255);

SET today=thisDay;
SET 3MonthEarlier=DATE_SUB(today,INTERVAL 90 DAY);
SET yearOfthisSeasonbegin=DATE_FORMAT(today,'%Y');
SET yearOfthisSeasonend=CAST(CAST(yearOfthisSeasonbegin AS SIGNED)+1 AS CHAR(255));
SET beginOfthisSeasonvachar=CASE WHEN 
				ISNULL((SELECT zn_season_goods.begindate FROM zn_season_goods WHERE zn_season_goods.begindate<=DATE_FORMAT(today,'%m-%d') AND 
				zn_season_goods.enddate>DATE_FORMAT(today,'%m-%d') LIMIT 1))=1
		THEN CONCAT(yearOfthisSeasonbegin,'-',(SELECT zn_season_goods.begindate FROM zn_season_goods ORDER BY zn_season_goods.begindate DESC LIMIT 1))
		ELSE CONCAT(yearOfthisSeasonbegin,'-',(SELECT zn_season_goods.begindate FROM zn_season_goods WHERE zn_season_goods.begindate<=DATE_FORMAT(today,'%m-%d') AND 
				zn_season_goods.enddate>DATE_FORMAT(today,'%m-%d') LIMIT 1))
		END;
SET endOfthisSeasonvachar=CASE WHEN 
				ISNULL((SELECT zn_season_goods.begindate FROM zn_season_goods WHERE zn_season_goods.begindate<=DATE_FORMAT(today,'%m-%d') AND 
				zn_season_goods.enddate>=DATE_FORMAT(today,'%m-%d') LIMIT 1))=1
		THEN CONCAT(yearOfthisSeasonend,'-',(SELECT zn_season_goods.begindate FROM zn_season_goods ORDER BY zn_season_goods.begindate ASC LIMIT 1))
		ELSE CONCAT(yearOfthisSeasonbegin,'-',(SELECT zn_season_goods.enddate FROM zn_season_goods WHERE zn_season_goods.begindate<=DATE_FORMAT(today,'%m-%d') AND 
				zn_season_goods.enddate>=DATE_FORMAT(today,'%m-%d') LIMIT 1))
		END;
SET beginOfthisSeason=str_to_date(beginOfthisSeasonvachar,'%Y-%m-%d');
SET endOfthisSeason=str_to_date(endOfthisSeasonvachar,'%Y-%m-%d');

#更新zn_season_across表字段



# 首次发现促销品补货
#开始促销商品补货：到《补货系统促销明细》检查该门店是否有新的促销商品，首次发现促销商品（flag=0）马上触发促销商品的补货：

# a0.《补货系统促销明细》中manual_flag=1的商品:补货数量=采购分货数量 
#--如果 采购分货数量=0则  《补货系统促销明细》 flag=0  保持不变并更新日期。
#--如果采购分货数量>0 则 在《补货系统促销明细》中为该商品打标“1越期促销补货” 并更新日期.
#a1.更新zn_goods表qty、flag、sdate字段
UPDATE zn_goods_spr a,zn_prom_detail b
SET a.qty=b.planqty,
a.flag=6,
a.sdate=today
WHERE a.shopid=shopId AND b.shopid=shopId AND
a.goodsid=b.goodsid AND b.manual_flag=1 AND b.flag=0 and b.planqty>0;

UPDATE zn_prom_detail a
SET a.flag=CASE WHEN (a.planqty=0.0) THEN 0 
								WHEN (a.planqty>0.0) THEN 3 end,
		a.sdate=today
where a.manual_flag=1 and a.flag=0;

#a. 《补货系统促销明细》中manual_flag=0的商品:取出补货类别：到zn_goods中取classtype、minorder、minstock、closeqty等，根据补货类别可以取出补货周期、安全库存天数、到货周期。
CREATE TABLE IF NOT EXISTS `tmp_prom_tmp` (
  `goodsid` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '商品编码',
  `shopid` varchar(8) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '门店编码',
  `normalprice` decimal(16,2) DEFAULT NULL COMMENT '定价',
  `classtype` varchar(1) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '补货类型',
  `minorder` decimal(16,2) DEFAULT NULL COMMENT '最小起订量',
  `minstock` decimal(16,2) DEFAULT NULL COMMENT '最小库存数量',
  `closeqty` decimal(16,3) DEFAULT NULL COMMENT '昨日日终库存数量',

  `holiday_begindate` datetime DEFAULT NULL COMMENT '节日开始日期',
  `holiday_enddate` datetime DEFAULT NULL COMMENT '节日结束日期',
  `holidaytype` varchar(1) DEFAULT NULL COMMENT '节日属性',
  `zs` decimal(16,2) DEFAULT NULL COMMENT '春节指数',
   xlid varchar(32),
  `ho_rate` decimal(16,2) DEFAULT NULL COMMENT '节日安全系数',

  `seasontype` varchar(1) DEFAULT NULL COMMENT '季节属性',
  `rate1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period1，日均销量的折扣比例',
  `rate2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period2，日均销量的折扣比例',
  `period1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例1',
  `period2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例2',

	`startweek`  int(1) NULL DEFAULT 0, 
  `weekflag` char(1) CHARACTER SET utf8 DEFAULT NULL,
  `safedays` int(11) DEFAULT NULL,
  `arrivaldays` int(11) DEFAULT NULL,
  `sdate` datetime DEFAULT NULL COMMENT '更新日期时间',
  `theoritical_qty` decimal(16,2) DEFAULT NULL,
  `actual_qty` decimal(16,2) DEFAULT NULL,
  `price` decimal(16,2) DEFAULT NULL,
  `planqty` decimal(16,3) DEFAULT NULL,
  `flag` char(1) DEFAULT '0',
  `manual_flag` char(1) DEFAULT '0',
  `dms` decimal(16,3) DEFAULT NULL COMMENT '实际售价对应的日均销量',
  `leftsalingDays` int(11) DEFAULT NULL COMMENT '当前剩余可销天数',
  `need_replenishment` int(11) DEFAULT NULL COMMENT '需要补货',
  `weekflag_days` int(11) DEFAULT 0 COMMENT 'buhuozhouqi',
  KEY `index_1` (`goodsid`,`shopid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

TRUNCATE TABLE tmp_prom_tmp;

INSERT INTO tmp_prom_tmp (goodsid,shopid,normalprice,classtype,minorder,minstock,closeqty,
holiday_begindate,holiday_enddate,holidaytype,ho_rate,zs,xlid,seasontype,
rate1,rate2,period1,period2,startweek,weekflag,safedays,arrivaldays,sdate,price,planqty,
flag,manual_flag,weekflag_days)
SELECT 
zn_goods_spr.goodsid AS goodsid,
zn_goods_spr.shopid AS shopid,
zn_goods_spr.normalprice AS normalprice,
zn_goods_spr.classtype AS classtype,
zn_goods_spr.minorder AS minorder,
zn_goods_spr.minstock AS minstock,
zn_goods_spr.closeqty AS closeqty,
zn_goods_spr.`holiday_begindate`,
zn_goods_spr.`holiday_enddate`,
zn_goods_spr.`holidaytype`,
zn_goods_spr.`ho_rate`,
zn_goods_spr.`zs`,
zn_goods_spr.`xlid`,
zn_goods_spr.`seasontype`,
zn_goods_spr.`rate1`,
zn_goods_spr.`rate2`,
zn_goods_spr.`period1`,
zn_goods_spr.`period2`,
zn_config.Startweek AS startweek,
zn_config.weekflag AS weekflag,#补货周期
zn_config.safedays AS safedays,#安全库存天数
zn_config.arrivaldays AS arrivaldays,#到货周期
zn_goods_spr.sdate AS sdate,
zn_prom_detail.price AS price,
zn_prom_detail.planqty AS planqty,
zn_prom_detail.flag AS flag,
zn_prom_detail.manual_flag AS manual_flag,
DATEDIFF(get_next_buhuo_date(weekflag,zn_config.Orderdate,zn_config.Startweek,today),today) AS weekflag_days
FROM zn_goods_spr,zn_config,zn_prom_detail
WHERE zn_goods_spr.shopid=shopId AND zn_config.shopid=shopId AND 
zn_prom_detail.shopid=shopId AND zn_goods_spr.goodsid=zn_prom_detail.goodsid AND 
zn_prom_detail.manual_flag=0 AND zn_prom_detail.flag=0 AND
zn_goods_spr.classtype=zn_config.Classtype
;


##更新越期商品的补货周期天数
update tmp_prom_tmp a join zn_config b on a.shopid=shopid and b.shopid=shopid and a.classtype=b.Classtype
set weekflag_days=datediff(get_next_buhuo_date(b.Weekflag,b.Orderdate,b.Startweek,date_add(today,interval weekflag_days+1 day)),today)
where DATEDIFF(get_next_buhuo_date(b.Weekflag,b.Orderdate,b.Startweek,today),today)<4;

# b. 取出日均销量：
#--根据促销价格到zn_price_dms取出这些促销品对应的dms, 转c
UPDATE tmp_prom_tmp x,zn_price_dms y
SET x.dms=y.dms
WHERE x.shopid=shopId AND y.shopid=shopId AND
x.goodsid=y.goodsid AND (x.price/x.normalprice)*100>=y.disc1 AND 
(x.price/x.normalprice)*100<y.disc2;

#--如果在zn_price_dms中未找到对应的dms则根据这只单品的定价和取到的促销售价算出促销价所处的折扣段,
#再到《小类折扣与销量》zn_xl_dms表找到这只单品所属小分类对应的折扣段，对应的dms_disc/dms_ori就是该小分类下在这个折扣段的dms增长率。
#日均销量=这个dms增长率*这只单品的定价DMS(或者小分类的dms_ori) , 转c



UPDATE tmp_prom_tmp x,zn_xl_dms y
SET x.dms=y.dms_ori*(y.dms_disc/y.dms_ori)
WHERE x.shopid=shopId AND y.shopid=shopId AND
ISNULL(x.dms) AND x.xlid=y.xlid AND 
(x.price/x.normalprice)*100<y.disc2 AND
 (x.price/x.normalprice)*100>=y.disc1;

#--如果在zn_xl_dms中仍然未找到DMS，zn_goods表flag=2 ,转h
UPDATE zn_goods_spr x,tmp_prom_tmp y
SET x.flag=4,x.trueprice=y.price WHERE x.shopid=shopid and y.shopid=shopid and x.goodsid=y.goodsid and ISNULL(y.dms) ;
UPDATE zn_prom_detail a,tmp_prom_tmp y 
SET a.flag=2,
		a.sdate=today 
WHERE a.shopid=shopId AND y.shopid=shopId AND a.goodsid=y.goodsid and ISNULL(y.dms);
delete from tmp_prom_tmp where dms is null;


##  Todo:更新首次补货记录?

#c.根据节日属性和季节属性调整日均销量

#--holidaytype=2春节其它商品, 当前日期>=begindate-6进入春节补货模式
#--holidaytype=2春节其它商品, 当前日期>=enddate结束春节补货模式
#春节期间日均销量==b取到的日均销量*zs*rate
UPDATE tmp_prom_tmp x 
SET x.dms=x.dms*x.zs*x.ho_rate 
WHERE x.holidaytype=2 AND date_add(x.holiday_begindate,interval -6 day)<=today AND 
x.holiday_enddate>today;

#--seasontype=1季节性商品 并且 当前日期在period1—period2对应的日期之内时修订日均销量，日均销量=b取到的日均销量*rate1，
#在period2—enddate对应的日期之内时日均销量=b取到的日均销量*rate2转e
UPDATE tmp_prom_tmp x
SET x.dms=CASE WHEN DATE_ADD(beginOfthisSeason,INTERVAL 
(DATEDIFF(beginOfthisSeason,endOfthisSeason)*x.period1) 
DAY)<today THEN x.dms*x.rate1/100.0 
							 WHEN DATE_ADD(beginOfthisSeason,INTERVAL 
(DATEDIFF(beginOfthisSeason,endOfthisSeason)*x.period2) 
DAY)<today THEN x.dms*x.rate2/100.0 END
WHERE x.seasontype=1;


#e计算当前可销天数：当前可销天数=当前库存数量/日均销量
UPDATE tmp_prom_tmp x
SET x.leftsalingDays=FLOOR(x.closeqty/x.dms);


#f判断是否需要补货：符合以下两个条件之一时需要补货。
#（1）当前可销天数<(补货周期+安全库存天数+到货周期)
#（2）当前库存小于系统设定的最小库存数。
UPDATE tmp_prom_tmp x 
SET x.need_replenishment=CASE WHEN (x.leftsalingDays<x.arrivaldays+x.safedays+x.weekflag_days) THEN 1
															WHEN (x.closeqty<x.minstock) THEN 1 END;

#下面为春节其它商品在春节期间需要调整补货周期、到货周期的规则：
#F2 :一般春节初一至初三不送货（参数控制），因此春节期间最后一个补货日会涉及越期订货问题：到货日期在begindate至enddate之间的最大到货日期对应的补货应该为越期补货
#F3:B、C类商品按照A类商品的规则补货：当前日期>=begindate-6 按照A类订货周期订货
#F4:B、C类商品退出A类商品的规则补货：春节结束后第一个补货日仍然按照A类的补货日进行补货，但是补货周期转成B或C类。
#---T类商品：这个特殊并且量不大，应该按照BC类处理或者按照正常方式补货都行。
#注意补货周期、到货周期的计算：
#（1）今天与下一个补货日之间的天数<4，下一个补货日不再补货，否则补货；
#（2）春节初一至初三可以补货、但是不送货。
#需要补货转g,不需要补货转h
##CALL everyday_procedure_springfestival(shopId,thisDay);

#g．确定补货量：
#理论补货量1=（补货周期+安全库存天数+到货周期）*日均销量 - 当前库存
#理论补货量2=系统设定的最小库存-当前库存
#理论补货量3=max(理论补货量2, 最小订货量)
#理论补货量=max(理论补货量1, 理论补货量3)
#理论补货量<最小订货量时不需要补货，否则需要补货。
#实际补货数量=（（理论补货量/最小起订量）向上取整）*最小起订量。
UPDATE tmp_prom_tmp x 
SET x.actual_qty=CASE WHEN 
((x.arrivaldays+x.safedays+x.weekflag_days)*x.dms-x.closeqty-x.minorder)>=(x.minstock-x.closeqty-x.minorder)
AND ((x.arrivaldays+x.safedays+x.weekflag_days)*x.dms-x.closeqty-x.minorder)>0
													THEN CEILING(((x.arrivaldays+x.safedays+x.weekflag_days)*x.dms-x.closeqty)/x.minorder)*x.minorder
											WHEN
((x.arrivaldays+x.safedays+x.weekflag_days)*x.dms-x.closeqty-x.minorder)<(x.minstock-x.closeqty-x.minorder)
AND (x.minstock-x.closeqty-x.minorder)>0
													THEN CEILING((x.minstock-x.closeqty)/x.minorder)*x.minorder
ELSE 0 END;


#h.更新zn_goods表qty、flag、sdate字段;
#h.更新zn_goods表qty、flag、sdate字段;
UPDATE zn_goods_spr x,tmp_prom_tmp y
SET x.flag=9,
x.qty=y.actual_qty,
x.trueprice=y.price,
x.sdate=today
 WHERE x.shopid=shopId AND y.shopid=shopId AND
x.goodsid=y.goodsid;

#在《补货系统促销明细》中为该商品打标“1越期促销补货”或“2可以补货”并更新日期.
UPDATE zn_prom_detail a,tmp_prom_tmp y
SET a.flag=2,
		a.sdate=today
WHERE a.shopid=shopId AND y.shopid=shopId AND
a.goodsid=y.goodsid;
UPDATE zn_prom_detail a,tmp_prom_tmp y,zn_config z
SET a.flag=1,
		a.sdate=today
WHERE a.shopid=shopId AND y.shopid=shopId AND
a.goodsid=y.goodsid and z.shopid=shopId and y.classtype=z.Classtype and DATEDIFF(get_next_buhuo_date(z.weekflag,z.Orderdate,z.Startweek,today),today)<4
;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for daily_procedure_season
-- ----------------------------
DROP PROCEDURE IF EXISTS `daily_procedure_season`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `daily_procedure_season`(IN `shopid` varchar(64),IN `thisday` date)
BEGIN
#######---------------------Step3-------------------
DECLARE today date;
DECLARE beginOfthisSeason date;
DECLARE beginOfthisSeasonvachar VARCHAR(255);
DECLARE endOfthisSeason date;
DECLARE endOfthisSeasonvachar VARCHAR(255);
#开始结束日期年份
DECLARE yearOfthisSeasonbegin VARCHAR(255);
DECLARE yearOfthisSeasonend VARCHAR(255);
##季节性商品首次补货条件
declare beforeseason int;
##季节性商品首次补货时长
declare season_week int;

declare isholiday int;
select value into isholiday from zn_param where id=6;
#######---------------------Step3-------------------
select value into beforeseason from zn_param where id=2;
select value into season_week from zn_param where id=3;

SET today=thisDay;
SET yearOfthisSeasonbegin=DATE_FORMAT(today,'%Y');
SET yearOfthisSeasonend=CAST(CAST(yearOfthisSeasonbegin AS SIGNED)+1 AS CHAR(255));
SET beginOfthisSeasonvachar=CASE WHEN 
				ISNULL((SELECT zn_season_goods.begindate FROM zn_season_goods WHERE zn_season_goods.begindate<=DATE_FORMAT(today,'%m-%d') AND 
				zn_season_goods.enddate>DATE_FORMAT(today,'%m-%d') LIMIT 1))=1
		THEN CONCAT(yearOfthisSeasonbegin,'-',(SELECT zn_season_goods.begindate FROM zn_season_goods ORDER BY zn_season_goods.begindate DESC LIMIT 1))
		ELSE CONCAT(yearOfthisSeasonbegin,'-',(SELECT zn_season_goods.begindate FROM zn_season_goods WHERE zn_season_goods.begindate<=DATE_FORMAT(today,'%m-%d') AND 
				zn_season_goods.enddate>DATE_FORMAT(today,'%m-%d') LIMIT 1))
		END;
SET endOfthisSeasonvachar=CASE WHEN 
				ISNULL((SELECT zn_season_goods.begindate FROM zn_season_goods WHERE zn_season_goods.begindate<=DATE_FORMAT(today,'%m-%d') AND 
				zn_season_goods.enddate>=DATE_FORMAT(today,'%m-%d') LIMIT 1))=1
		THEN CONCAT(yearOfthisSeasonend,'-',(SELECT zn_season_goods.begindate FROM zn_season_goods ORDER BY zn_season_goods.begindate ASC LIMIT 1))
		ELSE CONCAT(yearOfthisSeasonbegin,'-',(SELECT zn_season_goods.enddate FROM zn_season_goods WHERE zn_season_goods.begindate<=DATE_FORMAT(today,'%m-%d') AND 
				zn_season_goods.enddate>=DATE_FORMAT(today,'%m-%d') LIMIT 1))
		END;
SET beginOfthisSeason=str_to_date(beginOfthisSeasonvachar,'%Y-%m-%d');
SET endOfthisSeason=str_to_date(endOfthisSeasonvachar,'%Y-%m-%d');
#######---------------------Step3-------------------



#-------------------------------开始补货计算-------------------------



# -----季节性商品首次补货-----
# 	Step1 取出zn_goods表中seasontype=1的商品及classtype、minorder、
# minstock、closeqty、arrdate等，根据补货类别可以取出补货周期、
#	安全库存天数、到货周期。
drop table if exists tmp_season_tmp;
CREATE TABLE IF NOT EXISTS `tmp_season_tmp` (
  `goodsid` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '商品编码',
  `shopid` varchar(8) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '门店编码',
  `classtype` varchar(1) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '补货类型',
  `minorder` decimal(16,2) DEFAULT NULL COMMENT '最小起订量',
  `minstock` decimal(16,2) DEFAULT NULL COMMENT '最小库存数量',
  `closeqty` decimal(16,3) DEFAULT NULL COMMENT '昨日日终库存数量',
	`venderid`  varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '供货商id',
  `weekflag` char(1) CHARACTER SET utf8 DEFAULT NULL,
  `safedays` int(11) DEFAULT NULL,
  `arrivaldays` int(11) DEFAULT NULL,
  `sdate` datetime DEFAULT NULL COMMENT '更新日期时间',
  `theoritical_qty` decimal(16,2) DEFAULT NULL,
  `actual_qty` decimal(16,2) DEFAULT NULL,
   avg_qty_day decimal(16,2) DEFAULT NULL,
	`config_flag`  char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' ,
  KEY `index_1` (`goodsid`,`shopid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

TRUNCATE TABLE tmp_season_tmp;

INSERT INTO tmp_season_tmp (goodsid,shopid,classtype,minorder,minstock,closeqty,venderid,
weekflag,safedays,arrivaldays,sdate,config_flag)
SELECT 
zn_goods.goodsid AS goodsid,
zn_goods.shopid AS shopid,
zn_goods.classtype AS classtype,
zn_goods.minorder AS minorder,
zn_goods.minstock AS minstock,
zn_goods.closeqty AS closeqty,
zn_goods.venderid AS venderid,
zn_config.weekflag AS weekflag,#补货周期
zn_config.safedays AS safedays,#安全库存天数
zn_config.arrivaldays AS arrivaldays,#到货周期
zn_goods.sdate AS sdate,
zn_goods.config_flag
FROM zn_goods,zn_config
WHERE zn_goods.shopid=shopId AND zn_config.shopid=shopId AND zn_goods.classtype=zn_config.Classtype AND
zn_goods.seasontype=1 and zn_goods.flag=0;


#更新供货商信息
UPDATE tmp_season_tmp x,zn_config_v v 
SET x.weekflag=v.Weekflag,
		x.safedays=v.Safedays,
		x.arrivaldays=v.Arrivaldays
WHERE v.Shopid=shopid AND v.venderid=x.venderid AND v.Classtype=x.classtype AND x.config_flag='v';


##根据参数判断是否有首次补货
if isholiday=0
THEN
	delete a from tmp_season_tmp a join zn_config b on a.shopid=b.shopid
  where b.Classtype='A' and SUBSTR(b.Orderdate,(dayofweek(thisday)+5)mod 7+1,1)!='1';
end if;
# 		Step2 满足以下2个条件进行季节性商品首次季节补货：
#1：季节性商品季节开始日期>当前日期>季节性商品季节开始日期-30天
DELETE tmp_season_tmp FROM tmp_season_tmp,zn_season_goods
		WHERE tmp_season_tmp.shopid=shopId AND zn_season_goods.shopid=shopId AND
		tmp_season_tmp.goodsid=zn_season_goods.goodsid AND
		NOT (zn_season_goods.begindate>DATE_FORMAT(today,'%m-%d') AND DATE_ADD(concat(year(today),'-',zn_season_goods.begindate),INTERVAL -beforeseason day)<today);


#2：没有进行过首次补货：zn_season_across没有这条商品记录
DELETE x FROM tmp_season_tmp x,zn_season_across y
WHERE x.shopid=shopId AND y.shopid=shopId AND
x.goodsid=y.goodsid;

#			Step3 确定首次补货量：
update tmp_season_tmp a join zn_season_goods b on a.shopid=b.shopid and a.goodsid=b.goodsid set a.avg_qty_day=b.avg_qty_day;
###理论补货量=该商品前三年季节期间日销量的平均值*2周 - 当前库存
UPDATE tmp_season_tmp 
SET theoritical_qty=avg_qty_day*season_week*7-closeqty,
actual_qty=CASE WHEN (avg_qty_day*season_week*7-closeqty<minorder) THEN 0.0
											ELSE (CEILING((avg_qty_day*season_week*7-closeqty)/minorder)*minorder) END;

#理论补货量<最小订货量时不需要补货，否则需要补货。
#更新zn_goods表qty、flag、sdate字段;qty dec（16，3）default  0 ---计算生成的补货数量
#flag  char(1)   默认0 ，0—未处理，1---已补货，2---人工补货，3—季节性商品首次补货后在到货之前不在补货。
UPDATE zn_goods a,tmp_season_tmp b 
SET 
a.qty=b.actual_qty
WHERE a.shopid=shopId AND b.shopid=shopId AND
a.goodsid=b.goodsid AND b.theoritical_qty>=b.minorder; 

UPDATE zn_goods a,tmp_season_tmp b 
SET 
a.sdate=today
WHERE a.shopid=shopId AND b.shopid=shopId AND
a.goodsid=b.goodsid;

#更新zn_season_across表字段
INSERT INTO zn_season_across(shopid,goodsid,firstdate,nextdate,begindate,sdate)
SELECT 
a.shopid AS shopid,
a.goodsid AS goodsid,
thisday AS firstdate,
date_add(thisday,interval arrivaldays+1 day) AS nextdate,
b.begindate AS begindate,
thisday as sdate 
FROM tmp_season_tmp a join zn_season_goods b on a.shopid=b.shopid and a.goodsid=b.goodsid 
ON DUPLICATE KEY UPDATE
zn_season_across.shopid=VALUES(shopid),
zn_season_across.goodsid=VALUES(goodsid),
zn_season_across.firstdate=VALUES(firstdate),
zn_season_across.nextdate=values(nextdate),
zn_season_across.begindate=values(begindate),
zn_season_across.sdate=values(sdate);

update zn_goods a join zn_season_across b on a.shopid=shopid and b.shopid=shopid and a.goodsid=b.goodsid
set a.flag=3 where thisday<b.nextdate and a.flag=0;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for daily_procedure_season_spr
-- ----------------------------
DROP PROCEDURE IF EXISTS `daily_procedure_season_spr`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `daily_procedure_season_spr`(IN `shopid` varchar(64),IN `thisday` date)
BEGIN
#######---------------------Step3-------------------
DECLARE today date;
DECLARE beginOfthisSeason date;
DECLARE beginOfthisSeasonvachar VARCHAR(255);
DECLARE endOfthisSeason date;
DECLARE endOfthisSeasonvachar VARCHAR(255);
#开始结束日期年份
DECLARE yearOfthisSeasonbegin VARCHAR(255);
DECLARE yearOfthisSeasonend VARCHAR(255);
#######---------------------Step3-------------------


DECLARE 3MonthEarlier date;


#######---------------------Step3-------------------
SET today=thisDay;
SET yearOfthisSeasonbegin=DATE_FORMAT(today,'%Y');
SET yearOfthisSeasonend=CAST(CAST(yearOfthisSeasonbegin AS SIGNED)+1 AS CHAR(255));
SET beginOfthisSeasonvachar=CASE WHEN 
				ISNULL((SELECT zn_season_goods.begindate FROM zn_season_goods WHERE zn_season_goods.begindate<=DATE_FORMAT(today,'%m-%d') AND 
				zn_season_goods.enddate>DATE_FORMAT(today,'%m-%d') LIMIT 1))=1
		THEN CONCAT(yearOfthisSeasonbegin,'-',(SELECT zn_season_goods.begindate FROM zn_season_goods ORDER BY zn_season_goods.begindate DESC LIMIT 1))
		ELSE CONCAT(yearOfthisSeasonbegin,'-',(SELECT zn_season_goods.begindate FROM zn_season_goods WHERE zn_season_goods.begindate<=DATE_FORMAT(today,'%m-%d') AND 
				zn_season_goods.enddate>DATE_FORMAT(today,'%m-%d') LIMIT 1))
		END;
SET endOfthisSeasonvachar=CASE WHEN 
				ISNULL((SELECT zn_season_goods.begindate FROM zn_season_goods WHERE zn_season_goods.begindate<=DATE_FORMAT(today,'%m-%d') AND 
				zn_season_goods.enddate>=DATE_FORMAT(today,'%m-%d') LIMIT 1))=1
		THEN CONCAT(yearOfthisSeasonend,'-',(SELECT zn_season_goods.begindate FROM zn_season_goods ORDER BY zn_season_goods.begindate ASC LIMIT 1))
		ELSE CONCAT(yearOfthisSeasonbegin,'-',(SELECT zn_season_goods.enddate FROM zn_season_goods WHERE zn_season_goods.begindate<=DATE_FORMAT(today,'%m-%d') AND 
				zn_season_goods.enddate>=DATE_FORMAT(today,'%m-%d') LIMIT 1))
		END;
SET beginOfthisSeason=str_to_date(beginOfthisSeasonvachar,'%Y-%m-%d');
SET endOfthisSeason=str_to_date(endOfthisSeasonvachar,'%Y-%m-%d');
#######---------------------Step3-------------------

SET 3MonthEarlier=DATE_add(today,INTERVAL 30 DAY); 



#-------------------------------开始补货计算-------------------------



# -----季节性商品首次补货-----
# 	Step1 取出zn_goods表中seasontype=1的商品及classtype、minorder、
# minstock、closeqty、arrdate等，根据补货类别可以取出补货周期、
#	安全库存天数、到货周期。
drop table if exists tmp_season_tmp;
CREATE TABLE IF NOT EXISTS `tmp_season_tmp` (
  `goodsid` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '商品编码',
  `shopid` varchar(8) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '门店编码',
  `classtype` varchar(1) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '补货类型',
  `minorder` decimal(16,2) DEFAULT NULL COMMENT '最小起订量',
  `minstock` decimal(16,2) DEFAULT NULL COMMENT '最小库存数量',
  `closeqty` decimal(16,3) DEFAULT NULL COMMENT '昨日日终库存数量',
  `weekflag` char(1) CHARACTER SET utf8 DEFAULT NULL,
  `safedays` int(11) DEFAULT NULL,
  `arrivaldays` int(11) DEFAULT NULL,
  `sdate` datetime DEFAULT NULL COMMENT '更新日期时间',
  `theoritical_qty` decimal(16,2) DEFAULT NULL,
  `actual_qty` decimal(16,2) DEFAULT NULL,
   avg_qty_day decimal(16,2) DEFAULT NULL,
  KEY `index_1` (`goodsid`,`shopid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

TRUNCATE TABLE tmp_season_tmp;

INSERT INTO tmp_season_tmp (goodsid,shopid,classtype,minorder,minstock,closeqty,
weekflag,safedays,arrivaldays,sdate)
SELECT 
zn_goods_spr.goodsid AS goodsid,
zn_goods_spr.shopid AS shopid,
zn_goods_spr.classtype AS classtype,
zn_goods_spr.minorder AS minorder,
zn_goods_spr.minstock AS minstock,
zn_goods_spr.closeqty AS closeqty,
zn_config.weekflag AS weekflag,#补货周期
zn_config.safedays AS safedays,#安全库存天数
zn_config.arrivaldays AS arrivaldays,#到货周期
zn_goods_spr.sdate AS sdate
FROM zn_goods_spr,zn_config
WHERE zn_goods_spr.shopid=shopId AND zn_config.shopid=shopId AND zn_goods_spr.classtype=zn_config.Classtype AND
zn_goods_spr.seasontype=1 and zn_goods_spr.flag=0;

# 		Step2 满足以下2个条件进行季节性商品首次季节补货：
#1：季节性商品季节开始日期>当前日期>季节性商品季节开始日期-30天
DELETE tmp_season_tmp FROM tmp_season_tmp,zn_season_goods
		WHERE tmp_season_tmp.shopid=shopId AND zn_season_goods.shopid=shopId AND
		tmp_season_tmp.goodsid=zn_season_goods.goodsid AND
		NOT (zn_season_goods.begindate>DATE_FORMAT(today,'%m-%d') AND DATE_ADD(concat(year(today),'-',zn_season_goods.begindate),INTERVAL -30 day)<today);


#2：没有进行过首次补货：zn_season_across没有这条商品记录
DELETE x FROM tmp_season_tmp x,zn_season_across y
WHERE x.shopid=shopId AND y.shopid=shopId AND
x.goodsid=y.goodsid;

#			Step3 确定首次补货量：
update tmp_season_tmp a join zn_season_goods b on a.shopid=b.shopid and a.goodsid=b.goodsid set a.avg_qty_day=b.avg_qty_day;
###理论补货量=该商品前三年季节期间日销量的平均值*2周 - 当前库存
UPDATE tmp_season_tmp 
SET theoritical_qty=avg_qty_day*14-closeqty,
actual_qty=CASE WHEN (avg_qty_day*14-closeqty<minorder) THEN 0.0
											ELSE (CEILING((avg_qty_day*14-closeqty)/minorder)*minorder) END;

#理论补货量<最小订货量时不需要补货，否则需要补货。
#更新zn_goods表qty、flag、sdate字段;qty dec（16，3）default  0 ---计算生成的补货数量
#flag  char(1)   默认0 ，0—未处理，1---已补货，2---人工补货，3—季节性商品首次补货后在到货之前不在补货。
UPDATE zn_goods_spr a,tmp_season_tmp b 
SET 
a.qty=b.actual_qty
WHERE a.shopid=shopId AND b.shopid=shopId AND
a.goodsid=b.goodsid AND b.theoritical_qty>=b.minorder; 

UPDATE zn_goods_spr a,tmp_season_tmp b 
SET 
a.sdate=today
WHERE a.shopid=shopId AND b.shopid=shopId AND
a.goodsid=b.goodsid;

#更新zn_season_across表字段
INSERT INTO zn_season_across(shopid,goodsid,firstdate,nextdate,begindate,sdate)
SELECT 
a.shopid AS shopid,
a.goodsid AS goodsid,
thisday AS firstdate,
date_add(thisday,interval arrivaldays+1 day) AS nextdate,
b.begindate AS begindate,
thisday as sdate
FROM tmp_season_tmp a join zn_season_goods b on a.shopid=b.shopid and a.goodsid=b.goodsid
ON DUPLICATE KEY UPDATE
zn_season_across.shopid=VALUES(shopid),
zn_season_across.goodsid=VALUES(goodsid),
zn_season_across.firstdate=VALUES(firstdate),
zn_season_across.nextdate=values(nextdate),
zn_season_across.begindate=values(begindate),
zn_season_across.sdate=values(sdate);

update zn_goods_spr a join zn_season_across b on a.shopid=shopid and b.shopid=shopid and a.goodsid=b.goodsid
set a.flag=3 where thisday<b.nextdate and a.flag=0;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for daily_procedure_T
-- ----------------------------
DROP PROCEDURE IF EXISTS `daily_procedure_T`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `daily_procedure_T`(IN `thisday` date)
BEGIN

  DECLARE done INT DEFAULT 0;
	declare cgid0 varchar(16);
	declare orderdate0 varchar(32);
  declare num int;
  declare d_num int;
  declare d int;  
	DECLARE cur1 CURSOR FOR select cgid,orderdate from zn_config_d;
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

	SELECT COUNT(cgid) INTO num FROM zn_config_d;
	 open cur1;
        -- 将游标中的值赋值给变量，注意：变量名不要和返回的列名同名，变量顺序要和sql结果列的顺序一致
        fetch cur1 into cgid0,orderdate0;
        -- 当s不等于1，也就是未遍历完时，会一直循环
        loop1:while num<>0 do
            -- 执行业务逻辑	
					SET num=num-1;
					##获取'，'的个数
					select length(orderdate0) - length(REPLACE (orderdate0, ',', '')) into d_num;
					if d_num>0
					then
						while d_num>=0
						DO
							select split_str(orderdate0,',',d_num+1) into d;
							if d=day(thisday)
								THEN	
								call daily_procedure_T_sub(cgid0,thisday);
							end if;
							set d_num=d_num-1;
						end while;
					end if;
          fetch cur1 into cgid0,orderdate0;
        end while loop1;
    -- 关闭游标
    close cur1;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for daily_procedure_T_sub
-- ----------------------------
DROP PROCEDURE IF EXISTS `daily_procedure_T_sub`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `daily_procedure_T_sub`(IN `cgid0` varchar(64),IN `thisday` date)
BEGIN

	declare repldays0 int;
	declare safedays0 int;
	declare arrivaldays0 int;
	declare round_rule0 char(1);

	select repldays,safedays,arrivaldays into repldays0,safedays0,arrivaldays0 from zn_config_d where cgid=cgid0;
	delete from zn_goods where classtype='T';
	drop table if exists tmp_t_tmp;
	CREATE TABLE IF NOT EXISTS `tmp_t_tmp` (
		 cgid varchar(16),
		 xlid varchar(64),
		`goodsid` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '商品编码',
     goodsname varchar(64),
		`shopid` varchar(8) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '门店编码',
		`normalprice` decimal(16,2) DEFAULT NULL COMMENT '定价',
		`classtype` varchar(1) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '补货类型',
		`minorder` decimal(16,2) DEFAULT NULL COMMENT '最小起订量',
		`minstock` decimal(16,2) DEFAULT NULL COMMENT '最小库存数量',
		`closeqty` decimal(16,3) DEFAULT 0 COMMENT '昨日日终库存数量',
		`holiday_begindate` datetime DEFAULT NULL COMMENT '节日开始日期',
		`holiday_enddate` datetime DEFAULT NULL COMMENT '节日结束日期',
		`holidaytype` varchar(1) DEFAULT NULL COMMENT '节日属性',
		`zs` decimal(16,2) DEFAULT NULL COMMENT '春节指数',
		`ho_rate` decimal(16,2) DEFAULT NULL COMMENT '节日安全系数',

		`seasontype` varchar(1) DEFAULT NULL COMMENT '季节属性',
		`rate1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period1，日均销量的折扣比例',
		`rate2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period2，日均销量的折扣比例',
		`period1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例1',
		`period2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例2',

		`weekflag` char(1) CHARACTER SET utf8 DEFAULT NULL,
		`startweek`  int(1) NULL DEFAULT 0, 
		`orderdate` char(8) CHARACTER SET utf8 DEFAULT NULL,
		`safedays` int(11) DEFAULT NULL,
		`arrivaldays` int(11) DEFAULT NULL,
		`sdate` datetime DEFAULT NULL COMMENT '更新日期时间',
		`theoritical_qty` decimal(16,2) DEFAULT NULL,
		`actual_qty` decimal(16,2) DEFAULT 0,
		`price` decimal(16,2) DEFAULT NULL,
		`planqty` decimal(16,3) DEFAULT NULL,
		`flag` char(1) DEFAULT '0',
		`manual_flag` char(1) DEFAULT '0',
		`dms` decimal(16,3) DEFAULT NULL COMMENT '实际售价对应的日均销量',
		`leftsalingDays` int(11) DEFAULT NULL COMMENT '当前剩余可销天数',
		`need_replenishment` int(11) DEFAULT NULL COMMENT '需要补货',
		`weekflag_days` int(11) DEFAULT 0 COMMENT 'buhuozhouqi',
		`trueprice` decimal(16,2) DEFAULT NULL COMMENT '实际售价',
		 round_rule char(1) default '0',
		 qty1 decimal(16,3),
		UNIQUE KEY `index_1` (`goodsid`,`shopid`) USING BTREE,
		KEY `index_2` (`goodsid`) USING BTREE,
		KEY `index_3` (`shopid`) USING BTREE
	) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

		insert into tmp_t_tmp(shopid,cgid,xlid,goodsid,goodsname,normalprice,trueprice,safedays,arrivaldays,round_rule)
		select a.shopid,cgid0,d.xlid,a.goodsid,b.name,a.normalprice,a.normalprice,safedays0,arrivaldays0,round_rule0
		from v_zn_goodsshop a join v_goods b on a.goodsid=b.goodsid
				join v_tgoods c on b.goodsid=c.goodsid
				join v_zn_cg_dl_zl_xl d on b.deptid=d.xlid
		where d.cgid=cgid0 and a.flag in(0,8,9) and a.stocktype=0 and b.flag=0;
  ##更新最小库存和最小订货量
	update tmp_t_tmp a join v_minorder b on a.goodsid=b.goodsid and a.shopid=b.shopid
	set a.minorder=b.minorderqty,a.minstock=b.minstockqty;

	#closeqty 赋值
	UPDATE tmp_t_tmp a, v_shopsstock b
	SET a.closeqty=b.qty,
			a.flag=CASE WHEN b.qty<0 THEN 7 
									ELSE a.flag END
	WHERE a.goodsid=b.goodsid and a.shopid=b.shopid AND a.cgid=cgid0;

	UPDATE tmp_t_tmp x,zn_price_dms y 
	SET x.dms=y.dms
	WHERE x.shopid=y.shopid AND 
	x.goodsid=y.goodsid AND y.disc1=95;

	UPDATE tmp_t_tmp x 
	SET x.flag=5 WHERE (ISNULL(x.dms) OR x.dms=0.0);

	if repldays0>0
	then
		update tmp_t_tmp set qty1=case when repldays0*dms-closeqty>0 then repldays0*dms-closeqty else 0 end
		where flag=0;
	ELSE
		update tmp_t_tmp set qty1=(safedays+arrivaldays)*dms-closeqty where flag=0;
	end if; 

	UPDATE tmp_t_tmp x 
	SET x.actual_qty=CASE WHEN ((case x.round_rule when 0 then GREATEST(qty1,x.minstock-x.closeqty,x.minorder)/x.minorder<=0 
														                   when 1 then GREATEST(qty1,x.minstock-x.closeqty,x.minorder)/x.minorder<0.5
																							 when 2 then GREATEST(qty1,x.minstock-x.closeqty,x.minorder)/x.minorder<1 end) AND (x.minstock<=x.closeqty))
												THEN 0.0
												ELSE (case x.round_rule when 0 then CEILING(GREATEST(qty1,x.minstock-x.closeqty,x.minorder)/x.minorder)*x.minorder 
																								when 1 then round(GREATEST(qty1,x.minstock-x.closeqty,x.minorder)/x.minorder)*x.minorder
																								when 2 then floor(GREATEST(qty1,x.minstock-x.closeqty,x.minorder)/x.minorder)*x.minorder end)
	END; 
	update tmp_t_tmp set flag=1 where flag=0;
	
	insert into zn_goods(shopid,cgid,xlid,goodsid,goodsname,classtype,normalprice,closeqty,qty,flag,sdate,trueprice)
	select shopid,cgid,xlid,goodsid,goodsname,'T',normalprice,closeqty,actual_qty,flag,now(),trueprice
  from tmp_t_tmp;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for dms_test
-- ----------------------------
DROP PROCEDURE IF EXISTS `dms_test`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `dms_test`(IN `shopid` varchar(64),IN `thisday` date)
BEGIN
DECLARE today date;
declare springbd date;
declare springed date;

SET sql_mode=(
SELECT  REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY','')); ##CALL classify_new();
SET today=thisDay;
#CALL proc_tmpdayly(DATE_SUB(thisDay,INTERVAL 2 DAY),thisDay);
select startdate into springbd from zn_calendar where year(sundate)=year(CURDATE()) and holidayid='01';
select enddate into springed from zn_calendar where year(sundate)=year(CURDATE()) and holidayid='01';

##春节期间停止累计销售
if(today=startdate or today>date_add(springed,interval 1 day))
THEN
	#b0.更新上一日销售数据到zn_prom_detail_tmp中
	UPDATE zn_prom_detail_tmp x 
	SET x.totalDays=CASE WHEN ISNULL(x.totalDays) THEN 1 
											ELSE x.totalDays+1 END 
	WHERE x.shopid=shopid AND x.begindate<today AND DATE_ADD(DATE(x.enddate),INTERVAL 1 DAY)>=today;

	UPDATE zn_prom_detail_tmp x,zn_dayly_sales y 
	SET x.totalQty=CASE WHEN ISNULL(x.totalQty) THEN 0+y.qty 
											ELSE x.totalQty+y.qty END
	WHERE x.shopid=shopid AND y.shopid=shopid AND 
				x.goodsid=y.goodsid AND x.begindate<today and DATE_ADD(DATE(x.enddate),INTERVAL 1 DAY)>=today and y.sdate=DATE_ADD(today,INTERVAL -1 day);
end if;

#b. 用zn_daly_sales n周（与促销周期一致）数据计算zn_prom_detail_tmp表中的促销刚刚结束的促销品的日均销量=促销周期内销售数量/促销周期。更新或新增zn_price_dms中促销售价对应的dms
DROP TABLE IF EXISTS tmp_everyday_tmp_3;
CREATE TABLE tmp_everyday_tmp_3 (
`planid`  varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '促销计划编号' ,
`planname`  varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '促销计划名称' ,
`enddate`  datetime NULL DEFAULT NULL COMMENT '促销结束日期时间' ,
`shopid`  varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '门店编码' ,
`shopname`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`goodsid`  varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品编码' ,
`goodsname`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`xlid`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`xlname`  varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`price`  decimal(16,2) NULL DEFAULT NULL COMMENT '促销售价' ,
`planqty`  decimal(16,3) NULL DEFAULT NULL COMMENT '采购分货数量' ,
`flag`  varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '补货标识' ,
`begindate`  datetime NULL DEFAULT NULL COMMENT '促销开始日期时间' ,
`sdate`  datetime NULL DEFAULT NULL COMMENT '备份日期' ,
`totalQty`  decimal(16,2) UNSIGNED NULL DEFAULT 0.00 COMMENT '销售数量累计' ,
`totalDays`  int(11) UNSIGNED NULL DEFAULT 0 COMMENT '销售天数累计' ,
`normalprice`  double NULL DEFAULT NULL ,
`zkb`  decimal(16,2) NULL DEFAULT NULL ,
display_flag varchar(1) default '0'
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
ROW_FORMAT=DYNAMIC
;


INSERT INTO tmp_everyday_tmp_3 (planid,planname,enddate,shopid,shopname,goodsid,
goodsname,xlid,xlname,price,planqty,flag,begindate,sdate,totalQty,totalDays,normalprice,zkb,display_flag)
SELECT 
        x.planid AS planid,
        x.planname AS planname,
        x.enddate AS enddate,
        x.shopid AS shopid,
				w.shopname AS shopname,
        x.goodsid AS goodsid,
				z.`name` AS goodsname,
				z.deptid AS xlid,
				a.xlname AS xlname,
        x.price AS price,
        x.planqty AS planqty,
        x.flag AS flag,
        x.begindate AS begindate,
        x.sdate AS sdate,
        x.totalQty AS totalQty,
        x.totalDays AS totalDays,
				y.normalprice AS normalprice,
				getZKB(x.price,y.normalprice) AS zkb,
				x.display_flag as display_flag
FROM
        zn_prom_detail_tmp x,v_zn_goodsshop y,v_goods z,v_shopname w,v_zn_cg_dl_zl_xl a
WHERE x.shopid=shopid AND DATE_ADD(CAST(x.enddate AS date),INTERVAL 1 DAY)<=today AND y.shopid=shopid AND 
z.goodsid=x.goodsid AND y.goodsid=x.goodsid AND a.xlid=z.deptid and w.shopid=shopId and z.deptid=a.xlid and x.totalqty!=0
and (x.totaldays>=7 or x.totaldays>=datediff(x.enddate,x.begindate)*0.5);

INSERT INTO zn_price_dms (shopid,shopname,goodsid,goodsname,xlid,xlname,normalprice,disc1,disc2,band1,band2,trueprice,dms,sdate,display_flag)
SELECT 
a.shopid AS shopid,
a.shopname AS shopname,
a.goodsid AS goodsid,
a.goodsname AS goodsname,
a.xlid AS xlid,
a.xlname AS xlname,
a.normalprice AS normalprice,
a.zkb*100 AS disc1,
CASE WHEN (a.zkb<0.95) THEN (a.zkb+0.05)*100
            ELSE 5000 END AS disc2,
a.zkb*20 AS band1,
CASE WHEN (a.zkb*20<19) THEN a.zkb*20+1
												ELSE 1000 END AS band2,
a.price AS trueprice,
a.totalQty/a.totalDays AS dms,  #销售数量
now() as sdate,
a.display_flag as display_flag
FROM tmp_everyday_tmp_3 a
ON DUPLICATE KEY UPDATE
zn_price_dms.shopid=VALUES(shopid),
zn_price_dms.shopname=VALUES(shopname),
zn_price_dms.goodsid=VALUES(goodsid),
zn_price_dms.goodsname=VALUES(goodsname),
zn_price_dms.xlid=VALUES(xlid),
zn_price_dms.xlname=VALUES(xlname),
zn_price_dms.normalprice=VALUES(normalprice),
zn_price_dms.disc1=VALUES(disc1),
zn_price_dms.disc2=VALUES(disc2),
zn_price_dms.band1=VALUES(band1),
zn_price_dms.band2=VALUES(band2),
zn_price_dms.trueprice=a.price,
zn_price_dms.dms=VALUES(dms),
zn_price_dms.sdate=VALUES(sdate),
zn_price_dms.display_flag=values(display_flag);




#c.根据zn_price_dms表更新zn_xl_dms
INSERT INTO zn_xl_dms (shopid,shopname,xlid,xlname,disc1,disc2,
        dms_disc,dms_ori,sdate,display_flag)
    SELECT 
        x.shopid AS shopid,
        x.shopname AS shopname,
        x.xlid AS xlid,
        x.xlname AS xlname,
        x.disc1 AS disc1,
        x.disc2 AS disc2,
        SUM(x.dms)/COUNT(x.dms) AS dms_disc,
        0.0 AS dms_ori,
        NOW() AS sdate,
        x.display_flag as display_flag
    FROM
        zn_price_dms x WHERE x.shopid=shopid
		GROUP BY x.shopid,x.xlid,x.disc1
ON DUPLICATE KEY UPDATE
		zn_xl_dms.shopid=VALUES(shopid),
		zn_xl_dms.shopname=VALUES(shopname),
		zn_xl_dms.xlid=VALUES(xlid),
		zn_xl_dms.xlname=VALUES(xlname),
		zn_xl_dms.disc1=VALUES(disc1),
		zn_xl_dms.disc2=VALUES(disc2),
		zn_xl_dms.dms_disc=VALUES(dms_disc),
		zn_xl_dms.dms_ori=VALUES(dms_ori),
		zn_xl_dms.sdate=VALUES(sdate),
    zn_xl_dms.display_flag=values(display_flag);

update (SELECT * FROM zn_xl_dms WHERE zn_xl_dms.disc1=95) a RIGHT JOIN zn_xl_dms b 
on a.xlid=b.xlid AND a.shopid=b.shopid
SET b.dms_ori=a.dms_disc
WHERE b.disc1<>95 AND b.shopid=shopid;


#d.促销明细中间表zn_prom_detail_tmp表插入促销明细历史表zn_prom_detail_his后将中间表删除。
		INSERT INTO zn_prom_detail_his(planid,planname,enddate,shopid,goodsid,price,planqty,flag,begindate,totalqty,totaldays,sdate,display_flag)
    SELECT 
        `zn_prom_detail_tmp`.`planid` AS `planid`,
        `zn_prom_detail_tmp`.`planname` AS `planname`,
        `zn_prom_detail_tmp`.`enddate` AS `enddate`,
        `zn_prom_detail_tmp`.`shopid` AS `shopid`,
        `zn_prom_detail_tmp`.`goodsid` AS `goodsid`,
        `zn_prom_detail_tmp`.`price` AS `price`,
        `zn_prom_detail_tmp`.`planqty` AS `planqty`,
        `zn_prom_detail_tmp`.`flag` AS `flag`,
        `zn_prom_detail_tmp`.`begindate` AS `begindate`,
        zn_prom_detail_tmp.totalQty as totalqty,
        zn_prom_detail_tmp.totaldays as totaldays,
        now() AS `sdate`,
        zn_prom_detail_tmp.display_flag as display_flag
    FROM
        zn_prom_detail_tmp WHERE zn_prom_detail_tmp.shopid=shopid AND 
		DATE_ADD(CAST(zn_prom_detail_tmp.enddate AS date),INTERVAL 1 DAY)<=today;

		DELETE FROM zn_prom_detail_tmp WHERE zn_prom_detail_tmp.shopid=shopid AND 
		DATE_ADD(CAST(zn_prom_detail_tmp.enddate AS date),INTERVAL 1 DAY)<=today;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for everyday_before_dms
-- ----------------------------
DROP PROCEDURE IF EXISTS `everyday_before_dms`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `everyday_before_dms`(IN `thisDay` date)
BEGIN
	DECLARE today date;

	SET today=thisDay;

	INSERT INTO zn_prom_detail_tmp(planid,planname,begindate,enddate,
						shopid,goodsid,price,planqty,sdate,display_flag)
	SELECT 
	#zn_prom_detail.serialid
	a.planid,
	a.planname,
	a.begindate,
	a.enddate,
	a.shopid,
	a.goodsid,
	a.price,
	a.planqty,
	#zn_prom_detail.manual_flag,
	now() AS sdate,
  a.display_flag
	FROM zn_prom_detail a
	WHERE a.begindate<=today
  ON DUPLICATE KEY UPDATE 
	zn_prom_detail_tmp.begindate=VALUES(begindate),
	zn_prom_detail_tmp.enddate=VALUES(enddate),
	zn_prom_detail_tmp.shopid=VALUES(shopid),
	zn_prom_detail_tmp.goodsid=VALUES(goodsid),
	zn_prom_detail_tmp.price=VALUES(price),
	zn_prom_detail_tmp.planqty=VALUES(planqty),
	zn_prom_detail_tmp.sdate=values(sdate),
  zn_prom_detail_tmp.display_flag=values(display_flag);



	DELETE x FROM zn_his_normalprice x 
	WHERE x.sdate=DATE_SUB(today,INTERVAL 10 DAY);

	DELETE FROM zn_prom_detail
	WHERE zn_prom_detail.enddate<today;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for everyday_dms_end
-- ----------------------------
DROP PROCEDURE IF EXISTS `everyday_dms_end`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `everyday_dms_end`(IN `shopid` varchar(64),IN `thisday` date)
BEGIN ###################DELETED!!!!!!!!!!!!!!############################# 
#3、生成小类折扣与销量表zn_xl_dms初始数据 
# 数据源按照类别xlid、折扣比例disc1、disc2汇总，dms_disc=SUM(dms)/此小类在disc1和disc2折扣段的单品数量，dms_ori=小类在原价销售时单品的日均销量/小类单品数 
/* REPLACE INTO zn_xl_dms (shopid,xlid,disc1,disc2, dms_disc,dms_ori,sdate)
SELECT  x.shopid                AS shopid
       ,#x.shopname             AS shopname
       ,x.xlid                  AS xlid
       ,#x.xlname               AS xlname
       ,x.disc1                 AS disc1
       ,x.disc2                 AS disc2
       ,SUM(x.dms)/COUNT(x.dms) AS dms_disc
       ,0                       AS dms_ori
       ,thisDay                 AS sdate
FROM zn_price_dms x
GROUP BY  x.shopid
         ,x.xlid
         ,x.disc1; #d.促销明细中间表zn_prom_detail_tmp表插入促销明细历史表zn_prom_detail_his后将中间表删除。

INSERT INTO zn_prom_detail_his(planid,planname,enddate,shopid,goodsid,price,planqty,flag,begindate,sdate,planQty)
SELECT  `zn_prom_detail_tmp`.`planid`    AS `planid`
       ,`zn_prom_detail_tmp`.`planname`  AS `planname`
       ,`zn_prom_detail_tmp`.`enddate`   AS `enddate`
       ,`zn_prom_detail_tmp`.`shopid`    AS `shopid`
       ,`zn_prom_detail_tmp`.`goodsid`   AS `goodsid`
       ,`zn_prom_detail_tmp`.`price`     AS `price`
       ,`zn_prom_detail_tmp`.`planqty`   AS `planqty`
       ,`zn_prom_detail_tmp`.`flag`      AS `flag`
       ,`zn_prom_detail_tmp`.`begindate` AS `begindate`
       ,`zn_prom_detail_tmp`.`sdate`     AS `sdate`
       ,`zn_prom_detail_tmp`.`planQty`   AS `planQty`
FROM `zn_prom_detail_tmp`
WHERE zn_prom_detail_tmp.sdate<=today; DELETE 
FROM zn_prom_detail_tmp
WHERE zn_prom_detail_tmp.sdate<=today; */ END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for everyday_dms_end_spr
-- ----------------------------
DROP PROCEDURE IF EXISTS `everyday_dms_end_spr`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `everyday_dms_end_spr`(IN `shopid` varchar(64),IN `thisday` date)
BEGIN ###################DELETED!!!!!!!!!!!!!!############################# 
#3、生成小类折扣与销量表zn_xl_dms初始数据 
# 数据源按照类别xlid、折扣比例disc1、disc2汇总，dms_disc=SUM(dms)/此小类在disc1和disc2折扣段的单品数量，dms_ori=小类在原价销售时单品的日均销量/小类单品数 
/* REPLACE INTO zn_xl_dms (shopid,xlid,disc1,disc2, dms_disc,dms_ori,sdate)
SELECT  x.shopid                AS shopid
       ,#x.shopname             AS shopname
       ,x.xlid                  AS xlid
       ,#x.xlname               AS xlname
       ,x.disc1                 AS disc1
       ,x.disc2                 AS disc2
       ,SUM(x.dms)/COUNT(x.dms) AS dms_disc
       ,0                       AS dms_ori
       ,thisDay                 AS sdate
FROM zn_price_dms x
GROUP BY  x.shopid
         ,x.xlid
         ,x.disc1; #d.促销明细中间表zn_prom_detail_tmp表插入促销明细历史表zn_prom_detail_his后将中间表删除。

INSERT INTO zn_prom_detail_his(planid,planname,enddate,shopid,goodsid,price,planqty,flag,begindate,sdate,planQty)
SELECT  `zn_prom_detail_tmp`.`planid`    AS `planid`
       ,`zn_prom_detail_tmp`.`planname`  AS `planname`
       ,`zn_prom_detail_tmp`.`enddate`   AS `enddate`
       ,`zn_prom_detail_tmp`.`shopid`    AS `shopid`
       ,`zn_prom_detail_tmp`.`goodsid`   AS `goodsid`
       ,`zn_prom_detail_tmp`.`price`     AS `price`
       ,`zn_prom_detail_tmp`.`planqty`   AS `planqty`
       ,`zn_prom_detail_tmp`.`flag`      AS `flag`
       ,`zn_prom_detail_tmp`.`begindate` AS `begindate`
       ,`zn_prom_detail_tmp`.`sdate`     AS `sdate`
       ,`zn_prom_detail_tmp`.`planQty`   AS `planQty`
FROM `zn_prom_detail_tmp`
WHERE zn_prom_detail_tmp.sdate<=today; DELETE 
FROM zn_prom_detail_tmp
WHERE zn_prom_detail_tmp.sdate<=today; */ END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for everyday_goods_2_his
-- ----------------------------
DROP PROCEDURE IF EXISTS `everyday_goods_2_his`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `everyday_goods_2_his`(IN `thisday` date)
BEGIN

	delete from zn_goods_his where date_format(sdate,'%Y-%m-%d')=thisday;

INSERT INTO zn_goods_his( shopid, xlid, goodsid,goodsname, venderid,vendername,send_type,classtype, normalprice,spec, minstock , minorder , closeqty , qty ,manual_qty, flag , sdate, holiday_begindate , seasontype , holidaytype , holiday_enddate , rate ,zs ,ho_rate,trueprice,display_flag,storeqty)
SELECT  x.shopid            AS shopid
       ,x.xlid              AS xlid
       ,x.goodsid           AS goodsid
			 ,x.goodsname         as goodsname
			 ,x.venderid          as venderid
			 ,x.vendername        as vendername
			 ,x.send_type         as send_type
       ,x.classtype         AS classtype
       ,x.normalprice       AS normalprice
       ,x.spec              as spec
       ,x.minstock          AS minstock
       ,x.minorder          AS minorder
       ,x.closeqty          AS closeqty
       ,x.qty               AS qty
       ,x.manual_qty        AS manual_qty
       ,x.flag              AS flag
       ,now()            AS sdate
       ,x.holiday_begindate AS holiday_begindate
       ,x.seasontype        AS seasontype
       ,x.holidaytype       AS holidaytype
       ,x.holiday_enddate   AS holiday_enddate
       ,x.rate              AS rate
       ,x.zs                AS zs
       ,x.ho_rate           AS ho_rate
			,x.trueprice as trueprice
			,x.display_flag as display_flag
			,x.storeqty as storeqty
FROM zn_goods x
WHERE date_format(x.sdate,'%Y-%m-%d')=thisday; 
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for everyday_goods_2_his_spr
-- ----------------------------
DROP PROCEDURE IF EXISTS `everyday_goods_2_his_spr`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `everyday_goods_2_his_spr`(IN `thisday` date)
BEGIN

INSERT INTO zn_goods_his_spr( shopid, xlid, goodsid, classtype, normalprice, minstock , minorder , closeqty , qty ,manual_qty, flag , sdate, holiday_begindate , seasontype , holidaytype , holiday_enddate , rate , aweek , arrdate ,zs ,ho_rate,trueprice)
SELECT  x.shopid            AS shopid
       ,x.xlid              AS xlid
       ,x.goodsid           AS goodsid
       ,x.classtype         AS classtype
       ,x.normalprice       AS normalprice
       ,x.minstock          AS minstock
       ,x.minorder          AS minorder
       ,x.closeqty          AS closeqty
       ,x.qty               AS qty
       ,x.manual_qty        AS manual_qty
       ,x.flag              AS flag
       ,x.sdate             AS sdate
       ,x.holiday_begindate AS holiday_begindate
       ,x.seasontype        AS seasontype
       ,x.holidaytype       AS holidaytype
       ,x.holiday_enddate   AS holiday_enddate
       ,x.rate              AS rate
       ,x.aweek             AS aweek
       ,x.arrdate           AS arrdate
       ,x.zs                AS zs
       ,x.ho_rate           AS ho_rate
			,x.trueprice as trueprice
FROM zn_goods_spr x
WHERE x.sdate=thisday; 
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for everyday_main
-- ----------------------------
DROP PROCEDURE IF EXISTS `everyday_main`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `everyday_main`(IN `thisday` date)
BEGIN
	DECLARE s int DEFAULT 0;
  DECLARE shopId varchar(255);
	DECLARE hasData int;
	DECLARE amount int;
	DECLARE amount2 int;
	##ABC分类需要销售数据的时长
  declare  week_num int;
    -- 定义游标，并将sql结果集赋值到游标中
  DECLARE report CURSOR FOR select v_zn_md_yt_ywq.shopid from v_zn_md_yt_ywq where v_zn_md_yt_ywq.shopid='1180'; 
##WHERE v_zn_md_yt_ywq.shopid=1110
    -- 定义游标，并将sql结果集赋值到游标中
  DECLARE report2 CURSOR FOR select v_zn_md_yt_ywq.shopid from v_zn_md_yt_ywq where v_zn_md_yt_ywq.shopid='1180'; 
##WHERE v_zn_md_yt_ywq.shopid=1110

    -- 声明当游标遍历完后将标志变量置成某个值
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET s=1;
  
	select value into week_num from zn_param where id=1;
  ##ABC分类
	CALL proc_dms1 (thisday,week_num);
	#CALL proc_classify (thisday,week_num);
  
	delete from zn_goods_his_man where date_format(sdate,'%Y-%m-%d')=date_add(thisday,INTERVAL -1 day);
	INSERT INTO zn_goods_his_man( shopid, xlid, goodsid,goodsname, venderid,vendername,send_type,classtype, normalprice,spec, minstock , minorder , closeqty , qty ,manual_qty, flag , sdate, holiday_begindate , seasontype , holidaytype , holiday_enddate , rate , zs ,ho_rate,trueprice,display_flag,storeqty)
	SELECT  x.shopid            AS shopid
				,x.xlid              AS xlid
				,x.goodsid           AS goodsid
				,x.goodsname         as goodsname
        ,x.venderid          as venderid
				,x.vendername        as vendername
				,x.send_type         as send_type
				,x.classtype         AS classtype
       ,x.normalprice       AS normalprice
       ,x.spec              as spec
       ,x.minstock          AS minstock
       ,x.minorder          AS minorder
       ,x.closeqty          AS closeqty
       ,x.qty               AS qty
       ,x.manual_qty        AS manual_qty
       ,x.flag              AS flag
       ,now()            AS sdate
       ,x.holiday_begindate AS holiday_begindate
       ,x.seasontype        AS seasontype
       ,x.holidaytype       AS holidaytype
       ,x.holiday_enddate   AS holiday_enddate
       ,x.rate              AS rate
       ,x.zs                AS zs
       ,x.ho_rate           AS ho_rate
			,x.trueprice as trueprice
			,x.display_flag as display_flag
			,x.storeqty as storeqty
FROM zn_goods x; 

	TRUNCATE TABLE zn_goods;
 
	#处理每日将上一日的促销保存到zn_prom_tmp
CALL everyday_before_dms(thisday);

	SELECT COUNT(v_zn_md_yt_ywq.shopid) INTO amount FROM v_zn_md_yt_ywq where v_zn_md_yt_ywq.shopid='1180'; 
##WHERE v_zn_md_yt_ywq.shopid=1110
    -- 打开游标
    open report;
 
        -- 将游标中的值赋值给变量，注意：变量名不要和返回的列名同名，变量顺序要和sql结果列的顺序一致
        fetch report into shopId;
 
        -- 当s不等于1，也就是未遍历完时，会一直循环
        loop1:while amount<>0 do
            -- 执行业务逻辑	
					SET amount=amount-1;

					##CALL shopHasData(shopId,thisDay,hasData);
					##SELECT hasData;
					##IF (hasData=1) THEN 
					CALL everyday_sub_dms(shopId,thisDay);
					##END IF;
        -- 当s等于1时表明遍历以完成，退出循环
          fetch report into shopId;
        end while loop1;
    -- 关闭游标
    close report;
		

#每日补货
	SELECT COUNT(v_zn_md_yt_ywq.shopid) INTO amount2 FROM v_zn_md_yt_ywq where v_zn_md_yt_ywq.shopid='1180'; 
##WHERE v_zn_md_yt_ywq.shopid=1110

    -- 打开游标
    open report2;
 
        -- 将游标中的值赋值给变量，注意：变量名不要和返回的列名同名，变量顺序要和sql结果列的顺序一致
        fetch report2 into shopId;
 
        -- 当s不等于1，也就是未遍历完时，会一直循环
        loop1:while amount2<>0 do
										-- 执行业务逻辑	
									SET amount2=amount2-1;

									##CALL shopHasData(shopId,thisDay,hasData);
									##SELECT hasData;
									##IF (hasData=1) THEN 
									CALL everyday_sub(shopId,thisDay);
									##END IF;
									-- 当s等于1时表明遍历以完成，退出循环
									fetch report2 into shopId;

							end while loop1;
    -- 关闭游标
    close report2;
		
    ##对T类商品进行补货
		call daily_procedure_T(thisday);
		##生成权限
		call proc_chaoshi_organ();
###测试临时注释掉
    CALL everyday_goods_2_his(thisday);

		delete from zn_goods where flag in(0,7,8,10);
    delete from zn_goods where flag in(1,3,6,9,13) and qty=0;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for everyday_procedure_springfestival
-- ----------------------------
DROP PROCEDURE IF EXISTS `everyday_procedure_springfestival`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `everyday_procedure_springfestival`(IN `shopId` varchar(64),IN `thisDay` date)
BEGIN
DECLARE today date;
DECLARE springfestivalbegin date;
DECLARE springfestivalend date;
DECLARE noArrDays int;
##春节补货开始时间
declare springday int;

select value into springday from zn_param where id=12;
SET today=thisDay;
SET noArrDays=3;
SET springfestivalbegin=(SELECT x.startdate FROM zn_calendar x WHERE x.holidayid+0=1+0 AND YEAR(x.sundate)=YEAR(thisDay) LIMIT 1);
SET springfestivalend=(SELECT x.enddate FROM zn_calendar x WHERE x.holidayid+0=1+0 AND YEAR(x.sundate)=YEAR(thisDay) LIMIT 1);

#下面为春节其它商品在春节期间需要调整补货周期、到货周期的规则：
#F2 :一般春节初一至初三不送货（参数控制），因此春节期间最后一个补货日会涉及越期订货问题：到货日期在begindate至enddate之间的最大到货日期对应的补货应该为越期补货
#F3:B、C类商品按照A类商品的规则补货：当前日期>=begindate-6 按照A类订货周期订货
#F4:B、C类商品退出A类商品的规则补货：春节结束后第一个补货日仍然按照A类的补货日进行补货，但是补货周期转成B或C类。
#---T类商品：这个特殊并且量不大，应该按照BC类处理或者按照正常方式补货都行。
#注意补货周期、到货周期的计算：
#（1）今天与下一个补货日之间的天数<4，下一个补货日不再补货，否则补货；
#（2）春节初一至初三可以补货、但是不送货。
#需要补货转g,不需要补货转h

#F3:B、C类商品按照A类商品的规则补货：当前日期>=begindate-6 按照A类订货周期订货
IF (DATE_SUB(springfestivalbegin,INTERVAL springday DAY)<=today AND springfestivalend>=today) THEN
INSERT INTO tmp_daily_tmp (xlid,goodsid,shopid,normalprice,classtype,minorder,minstock,closeqty,holiday_begindate,holiday_enddate,
holidaytype,zs,ho_rate,seasontype,rate1,rate2,period1,period2,startweek,orderdate,weekflag,safedays,arrivaldays,sdate,weekflag_days,prom_day2,round_rule) 
SELECT 
a.xlid as xlid,
a.goodsid AS goodsid,
a.shopid AS shopid,
a.normalprice AS normalprice,
c.classtype AS classtype,
a.minorder AS minorder,
a.minstock AS minstock,
a.closeqty AS closeqty,
a.holiday_begindate AS holiday_begindate,
a.holiday_enddate AS holiday_enddate,
a.holidaytype AS holidaytype,
a.zs AS zs,
a.ho_rate AS ho_rate,
a.seasontype AS seasontype,
a.rate1 AS rate1,
a.rate2 AS rate2,
a.period1 AS period1,
a.period2 AS period2,
c.Startweek AS startweek,
c.orderdate AS orderdate,
c.weekflag AS weekflag,#补货周期
c.safedays AS safedays,#安全库存天数
c.arrivaldays AS arrivaldays,#到货周期
a.sdate AS sdate,
DATEDIFF(get_next_buhuo_date(c.weekflag,c.Orderdate,c.Startweek,today),today) AS weekflag_days,
DATEDIFF(get_next_buhuo_date(c.weekflag,c.Orderdate,c.Startweek,today),today)+c.arrivaldays+c.safedays as prom_day2,
c.round_rule as round_rule 
FROM zn_goods a,zn_config c 
WHERE a.shopid=shopId AND c.shopid=shopId AND a.flag=0 AND a.holidaytype=2 AND 
c.Classtype='A' AND 
SUBSTR(c.Orderdate,(dayofweek(thisday)+5)mod 7+1,1)='1' AND 
	IF(c.Weekflag=2,c.Startweek mod 2=WEEKOFYEAR(today)mod 2,1);

UPDATE zn_goods a SET a.classtype='A';

/*节日越期*/
UPDATE tmp_daily_tmp d
SET d.weekflag_days=d.weekflag_days+get_yueqi_days_spr(d.orderdate, thisDay)
WHERE 
get_yueqi_days_spr(d.orderdate, thisDay)<>0;


/*节日越期*/
INSERT INTO zn_holiday_across (shopid,goodsid,nextdate,sdate,update_time,firstdate)
SELECT 
d.shopid,
d.goodsid,
get_next_buhuo_date(d.weekflag,d.orderdate,d.startweek,thisDay) AS nextdate,
thisDay AS sdate,
NOW() AS update_time,
thisDay AS firstdate 
FROM tmp_daily_tmp d 
WHERE get_yueqi_days_spr(d.orderdate, thisDay)<>0;

/*
UPDATE tmp_prom_tmp x,zn_config y
SET x.orderdate=y.Orderdate,
x.weekflag=y.Weekflag,
x.safedays=y.Safedays,
x.arrivaldays=y.Arrivaldays,
x.weekflag_days=CASE WHEN (zn_config.Weekflag=1 AND zn_config.Classtype='A') THEN get_next_buhuo_days(zn_config.Orderdate,today) 
										 WHEN (zn_config.Weekflag=1 AND zn_config.Classtype='B') THEN 7
										 WHEN zn_config.Weekflag=2 THEN 14 ELSE 0 END
WHERE x.shopid=shopId AND y.shopid=shopId AND x.holidaytype=2 AND
(x.classtype='B' OR x.classtype='C') AND y.classtype='A';
*/
END IF;


#F4:B、C类商品退出A类商品的规则补货：春节结束后第一个补货日仍然按照A类的补货日进行补货，但是补货周期转成B或C类。
IF (springfestivalend<today AND today<DATE_ADD(springfestivalend,INTERVAL 15 DAY)) THEN 
INSERT INTO tmp_daily_tmp (xlid,goodsid,shopid,normalprice,classtype,minorder,minstock,closeqty,holiday_begindate,holiday_enddate,
holidaytype,zs,ho_rate,seasontype,rate1,rate2,period1,period2,orderdate,weekflag,safedays,arrivaldays,sdate,weekflag_days) 
SELECT 
a.xlid as xlid,
a.goodsid AS goodsid,
a.shopid AS shopid,
a.normalprice AS normalprice,
a.classtype AS classtype,
a.minorder AS minorder,
a.minstock AS minstock,
a.closeqty AS closeqty,
a.holiday_begindate AS holiday_begindate,
a.holiday_enddate AS holiday_enddate,
a.holidaytype AS holidaytype,
a.zs AS zs,
a.ho_rate AS ho_rate,
a.seasontype AS seasontype,
a.rate1 AS rate1,
a.rate2 AS rate2,
a.period1 AS period1,
a.period2 AS period2,
c.orderdate AS orderdate,
b.weekflag AS weekflag,#补货周期
b.safedays AS safedays,#安全库存天数
b.arrivaldays AS arrivaldays,#到货周期
a.sdate AS sdate,
CASE WHEN (c.Weekflag=1 AND c.Classtype='A') THEN get_next_buhuo_days(c.Orderdate,today) 
							WHEN (c.Weekflag=1 AND c.Classtype='B') THEN 7
							WHEN c.Weekflag=2 THEN 14 ELSE 0 END AS weekflag_days
FROM zn_goods a,zn_config b,zn_config c
WHERE a.shopid=shopId AND b.shopid=shopId AND c.shopid=shopId AND a.flag=0 
AND b.Classtype=a.classtype AND c.classtype='A' AND a.holidaytype=2 AND
SUBSTR(c.Orderdate,(dayofweek(thisday)+5)mod 7+1,1)='1' AND
	IF(b.Weekflag=2,b.Startweek mod 2=WEEKOFYEAR(today)mod 2,1) AND
get_next_buhuo_date(b.Weekflag,c.Orderdate,b.Startweek,DATE_ADD(holiday_enddate,INTERVAL 1 DAY))=thisday
ON DUPLICATE KEY UPDATE
tmp_daily_tmp.xlid=VALUES(xlid),
tmp_daily_tmp.xlid=VALUES(goodsid),
tmp_daily_tmp.xlid=VALUES(shopid),
tmp_daily_tmp.xlid=VALUES(normalprice),
tmp_daily_tmp.xlid=VALUES(classtype),
tmp_daily_tmp.xlid=VALUES(minorder),
tmp_daily_tmp.xlid=VALUES(minstock),
tmp_daily_tmp.xlid=VALUES(closeqty),
tmp_daily_tmp.xlid=VALUES(holiday_begindate),
tmp_daily_tmp.xlid=VALUES(holiday_enddate),
tmp_daily_tmp.xlid=VALUES(holidaytype),
tmp_daily_tmp.xlid=VALUES(zs),
tmp_daily_tmp.xlid=VALUES(ho_rate),
tmp_daily_tmp.xlid=VALUES(seasontype),
tmp_daily_tmp.xlid=VALUES(rate1),
tmp_daily_tmp.xlid=VALUES(rate2),
tmp_daily_tmp.xlid=VALUES(period1),
tmp_daily_tmp.xlid=VALUES(period2),
tmp_daily_tmp.xlid=VALUES(orderdate),
tmp_daily_tmp.xlid=VALUES(weekflag),
tmp_daily_tmp.xlid=VALUES(safedays),
tmp_daily_tmp.xlid=VALUES(arrivaldays),
tmp_daily_tmp.xlid=VALUES(sdate),
tmp_daily_tmp.xlid=VALUES(weekflag_days);


END IF;






















END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for everyday_procedure_springfestival_spr
-- ----------------------------
DROP PROCEDURE IF EXISTS `everyday_procedure_springfestival_spr`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `everyday_procedure_springfestival_spr`(IN `shopId` varchar(64),IN `thisDay` date)
BEGIN

DECLARE today date;
DECLARE springfestivalbegin date;
DECLARE springfestivalend date;
DECLARE noArrDays int;

SET today=thisDay;
SET noArrDays=3;
SET springfestivalbegin=(SELECT x.startdate FROM zn_calendar x WHERE x.holidayid+0=1+0 AND YEAR(x.sundate)=YEAR(thisDay) LIMIT 1);
SET springfestivalend=(SELECT x.enddate FROM zn_calendar x WHERE x.holidayid+0=1+0 AND YEAR(x.sundate)=YEAR(thisDay) LIMIT 1);

#下面为春节其它商品在春节期间需要调整补货周期、到货周期的规则：
#F2 :一般春节初一至初三不送货（参数控制），因此春节期间最后一个补货日会涉及越期订货问题：到货日期在begindate至enddate之间的最大到货日期对应的补货应该为越期补货
#F3:B、C类商品按照A类商品的规则补货：当前日期>=begindate-6 按照A类订货周期订货
#F4:B、C类商品退出A类商品的规则补货：春节结束后第一个补货日仍然按照A类的补货日进行补货，但是补货周期转成B或C类。
#---T类商品：这个特殊并且量不大，应该按照BC类处理或者按照正常方式补货都行。
#注意补货周期、到货周期的计算：
#（1）今天与下一个补货日之间的天数<4，下一个补货日不再补货，否则补货；
#（2）春节初一至初三可以补货、但是不送货。
#需要补货转g,不需要补货转h

#F3:B、C类商品按照A类商品的规则补货：当前日期>=begindate-6 按照A类订货周期订货

SELECT springfestivalbegin,springfestivalend;

IF (DATE_SUB(springfestivalbegin,INTERVAL 6 DAY)<=today AND springfestivalend>=today) THEN

INSERT INTO tmp_daily_tmp_spr (xlid,goodsid,shopid,normalprice,classtype,minorder,minstock,closeqty,holiday_begindate,holiday_enddate,holidaytype,zs,ho_rate,seasontype,rate1,rate2,period1,period2,weekflag,orderdate,safedays,arrivaldays,sdate,weekflag_days) 
SELECT 
a.xlid as xlid,
a.goodsid AS goodsid,
a.shopid AS shopid,
a.normalprice AS normalprice,
c.Classtype AS classtype,
a.minorder AS minorder,
a.minstock AS minstock,
a.closeqty AS closeqty,
a.holiday_begindate AS holiday_begindate,
a.holiday_enddate AS holiday_enddate,
a.holidaytype AS holidaytype,
a.zs AS zs,
a.ho_rate AS ho_rate,
a.seasontype AS seasontype,
a.rate1 AS rate1,
a.rate2 AS rate2,
a.period1 AS period1,
a.period2 AS period2,
c.Weekflag AS weekflag,#补货周期
c.orderdate AS orderdate,
c.safedays AS safedays,#安全库存天数
c.arrivaldays AS arrivaldays,#到货周期
a.sdate AS sdate,
get_next_buhuo_days(c.Orderdate,today) AS weekflag_days 
FROM zn_goods_spr a,zn_config b,zn_config c 
WHERE a.shopid=shopId AND b.shopid=shopId AND c.shopid=shopId AND a.flag=0 AND a.holidaytype=2 AND 
b.Classtype=a.classtype AND c.Classtype='A' AND 
SUBSTR(c.Orderdate,(dayofweek(thisday)+5)mod 7+1,1)='1'
ON DUPLICATE KEY UPDATE
tmp_daily_tmp_spr.xlid=VALUES(xlid),
tmp_daily_tmp_spr.goodsid=VALUES(goodsid),
tmp_daily_tmp_spr.shopid=VALUES(shopid),
tmp_daily_tmp_spr.normalprice=VALUES(normalprice),
tmp_daily_tmp_spr.classtype=VALUES(classtype),
tmp_daily_tmp_spr.minorder=VALUES(minorder),
tmp_daily_tmp_spr.minstock=VALUES(minstock),
tmp_daily_tmp_spr.closeqty=VALUES(closeqty),
tmp_daily_tmp_spr.holiday_begindate=VALUES(holiday_begindate),
tmp_daily_tmp_spr.holiday_enddate=VALUES(holiday_enddate),
tmp_daily_tmp_spr.holidaytype=VALUES(holidaytype),
tmp_daily_tmp_spr.zs=VALUES(zs),
tmp_daily_tmp_spr.ho_rate=VALUES(ho_rate),
tmp_daily_tmp_spr.seasontype=VALUES(seasontype),
tmp_daily_tmp_spr.rate1=VALUES(rate1),
tmp_daily_tmp_spr.rate2=VALUES(rate2),
tmp_daily_tmp_spr.period1=VALUES(period1),
tmp_daily_tmp_spr.period2=VALUES(period2),
tmp_daily_tmp_spr.weekflag=VALUES(weekflag),
tmp_daily_tmp_spr.orderdate=VALUES(orderdate),
tmp_daily_tmp_spr.safedays=VALUES(safedays),
tmp_daily_tmp_spr.arrivaldays=VALUES(arrivaldays),
tmp_daily_tmp_spr.sdate=VALUES(sdate),
tmp_daily_tmp_spr.weekflag_days=VALUES(weekflag_days);


SELECT "ok2";
SELECT * FROM tmp_daily_tmp_spr;

UPDATE zn_goods_spr a SET a.classtype='A';

/*节日越期*/
UPDATE tmp_daily_tmp_spr d
SET d.weekflag_days=d.weekflag_days+get_yueqi_days_spr(d.orderdate, thisDay)
WHERE 
get_yueqi_days_spr(d.orderdate, thisDay)<>0;


/*节日越期*/
INSERT INTO zn_holiday_across (shopid,goodsid,nextdate,sdate,update_time,firstdate)
SELECT 
d.shopid,
d.goodsid,
get_next_buhuo_date(d.weekflag,d.orderdate,d.startweek,thisDay) AS nextdate,
thisDay AS sdate,
NOW() AS update_time,
thisDay AS firstdate 
FROM tmp_daily_tmp_spr d 
WHERE get_yueqi_days_spr(d.orderdate, thisDay)<>0;


/*
UPDATE tmp_prom_tmp x,zn_config y
SET x.orderdate=y.Orderdate,
x.weekflag=y.Weekflag,
x.safedays=y.Safedays,
x.arrivaldays=y.Arrivaldays,
x.weekflag_days=CASE WHEN (zn_config.Weekflag=1 AND zn_config.Classtype='A') THEN get_next_buhuo_days(zn_config.Orderdate,today) 
										 WHEN (zn_config.Weekflag=1 AND zn_config.Classtype='B') THEN 7
										 WHEN zn_config.Weekflag=2 THEN 14 ELSE 0 END
WHERE x.shopid=shopId AND y.shopid=shopId AND x.holidaytype=2 AND
(x.classtype='B' OR x.classtype='C') AND y.classtype='A';
*/
SELECT "ok3";
SELECT * FROM tmp_daily_tmp_spr;
END IF;


#F4:B、C类商品退出A类商品的规则补货：春节结束后第一个补货日仍然按照A类的补货日进行补货，但是补货周期转成B或C类。
IF (springfestivalend<today AND today<DATE_ADD(springfestivalend,INTERVAL 15 DAY)) THEN 
TRUNCATE tmp_daily_tmp_spr;
INSERT INTO tmp_daily_tmp_spr (xlid,goodsid,shopid,normalprice,classtype,minorder,minstock,closeqty,holiday_begindate,holiday_enddate,
holidaytype,zs,ho_rate,seasontype,rate1,rate2,period1,period2,orderdate,weekflag,safedays,arrivaldays,sdate,weekflag_days) 
SELECT 
a.xlid as xlid,
a.goodsid AS goodsid,
a.shopid AS shopid,
a.normalprice AS normalprice,
a.classtype AS classtype,
a.minorder AS minorder,
a.minstock AS minstock,
a.closeqty AS closeqty,
a.holiday_begindate AS holiday_begindate,
a.holiday_enddate AS holiday_enddate,
a.holidaytype AS holidaytype,
a.zs AS zs,
a.ho_rate AS ho_rate,
a.seasontype AS seasontype,
a.rate1 AS rate1,
a.rate2 AS rate2,
a.period1 AS period1,
a.period2 AS period2,
c.orderdate AS orderdate,
b.weekflag AS weekflag,#补货周期
b.safedays AS safedays,#安全库存天数
b.arrivaldays AS arrivaldays,#到货周期
a.sdate AS sdate,
CASE WHEN (c.Weekflag=1 AND c.Classtype='A') THEN get_next_buhuo_days(c.Orderdate,today) 
							WHEN (c.Weekflag=1 AND c.Classtype='B') THEN 7
							WHEN c.Weekflag=2 THEN 14 ELSE 0 END AS weekflag_days
FROM zn_goods_spr a,zn_config b,zn_config c
WHERE a.shopid=shopId AND b.shopid=shopId AND c.shopid=shopId AND a.flag=0 
AND b.Classtype=a.classtype AND c.classtype='A' AND a.holidaytype=2 AND
SUBSTR(c.Orderdate,(dayofweek(thisday)+5)mod 7+1,1)='1' AND
	IF(b.Weekflag=2,b.Startweek mod 2=WEEKOFYEAR(today)mod 2,1) AND
get_next_buhuo_date(b.Weekflag,c.Orderdate,b.Startweek,DATE_ADD(holiday_enddate,INTERVAL 1 DAY))=thisday
ON DUPLICATE KEY UPDATE
tmp_daily_tmp_spr.xlid=VALUES(xlid),
tmp_daily_tmp_spr.goodsid=VALUES(goodsid),
tmp_daily_tmp_spr.shopid=VALUES(shopid),
tmp_daily_tmp_spr.normalprice=VALUES(normalprice),
tmp_daily_tmp_spr.classtype=VALUES(classtype),
tmp_daily_tmp_spr.minorder=VALUES(minorder),
tmp_daily_tmp_spr.minstock=VALUES(minstock),
tmp_daily_tmp_spr.closeqty=VALUES(closeqty),
tmp_daily_tmp_spr.holiday_begindate=VALUES(holiday_begindate),
tmp_daily_tmp_spr.holiday_enddate=VALUES(holiday_enddate),
tmp_daily_tmp_spr.holidaytype=VALUES(holidaytype),
tmp_daily_tmp_spr.zs=VALUES(zs),
tmp_daily_tmp_spr.ho_rate=VALUES(ho_rate),
tmp_daily_tmp_spr.seasontype=VALUES(seasontype),
tmp_daily_tmp_spr.rate1=VALUES(rate1),
tmp_daily_tmp_spr.rate2=VALUES(rate2),
tmp_daily_tmp_spr.period1=VALUES(period1),
tmp_daily_tmp_spr.period2=VALUES(period2),
tmp_daily_tmp_spr.orderdate=VALUES(orderdate),
tmp_daily_tmp_spr.weekflag=VALUES(weekflag),
tmp_daily_tmp_spr.safedays=VALUES(safedays),
tmp_daily_tmp_spr.arrivaldays=VALUES(arrivaldays),
tmp_daily_tmp_spr.sdate=VALUES(sdate),
tmp_daily_tmp_spr.weekflag_days=VALUES(weekflag_days);
END IF;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for everyday_sub
-- ----------------------------
DROP PROCEDURE IF EXISTS `everyday_sub`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `everyday_sub`(IN `shopid` varchar(64),IN `thisday` date)
BEGIN
	CALL daily_goods(shopId,thisDay);
	CALL daily_procedure_season(shopId,thisDay);
	CALL daily_procedure_holiday(shopId,thisDay);
  CALL daily_procedure_daily(shopId,thisDay);
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for everyday_sub_dms
-- ----------------------------
DROP PROCEDURE IF EXISTS `everyday_sub_dms`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `everyday_sub_dms`(IN `shopid` varchar(64),IN `thisday` date)
BEGIN
	CALL daily_dms(shopId,thisDay);
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for everyday_sub_spr
-- ----------------------------
DROP PROCEDURE IF EXISTS `everyday_sub_spr`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `everyday_sub_spr`(IN `shopid` varchar(64),IN `thisday` date)
BEGIN
	CALL daily_goods(shopId,thisDay);
	CALL daily_procedure_season(shopId,thisDay);
	CALL daily_procedure_holiday(shopId,thisDay);
  CALL daily_procedure_daily(shopId,thisDay);
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for onetime_main
-- ----------------------------
DROP PROCEDURE IF EXISTS `onetime_main`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `onetime_main`(IN `thisDay` date,IN `totalWeeks` int)
BEGIN
 #声明变量  /日期，临时表
DECLARE thatDay date; DECLARE thatDayEnd date;

SELECT  version()
       ,@@sql_mode;

SET sql_mode=(
SELECT  REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY','')); ##CALL classify_new();

SET thatDayEnd=DATE_ADD(thisDay,INTERVAL 0 DAY);
SET thatDay=DATE_SUB(thisDay,INTERVAL totalWeeks*7 DAY);

SELECT  thatDay
       ,thatDayEnd;


DROP TABLE IF EXISTS tmp_onetime_tmp_1;
CREATE TABLE `tmp_onetime_tmp_1` (
`shopid`  varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`shopname`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`goodsid`  varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`goodsname`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`salevalue`  decimal(38,2) NULL DEFAULT NULL ,
`discvalue`  decimal(38,2) NULL DEFAULT NULL ,
`disc`  decimal(44,6) NULL DEFAULT NULL ,
`zlprice`  decimal(16,2) NULL DEFAULT NULL ,
`normalprice`  decimal(16,2) NULL DEFAULT NULL ,
`qty`  decimal(38,3) NULL DEFAULT NULL ,
`sdate`  date NULL DEFAULT NULL ,
`zkb`  decimal(16,2) NULL DEFAULT NULL ,
`dayNumber`  int DEFAULT 0 ,
`discDayNumber`  int DEFAULT 0 ,
INDEX `index_1` (`shopid`, `goodsid`, `zkb`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
ROW_FORMAT=DYNAMIC;

INSERT INTO tmp_onetime_tmp_1(`shopid`,
`shopname`,
`goodsid`,
`goodsname`,
`salevalue`,
`discvalue`,
`disc`,
`zlprice`,
`normalprice`,
`qty`,
`sdate`,
`zkb`,
`dayNumber`,
`discDayNumber`)
SELECT 
x.shopid AS shopid,
x.shopname AS shopname,
x.goodsid AS goodsid,
x.goodsname AS goodsname,
SUM(x.salevalue) AS salevalue,
SUM(x.discvalue) AS discvalue,
SUM(x.salevalue)/SUM(x.salevalue+x.discvalue) AS disc,
x.zlprice AS zlprice,
x.normalprice AS normalprice,
SUM(x.qty) AS qty,
x.sdate AS sdate,
getZKB(x.zlprice,x.normalprice) AS zkb,
COUNT(x.zlprice) AS dayNumber,
COUNT(IF((x.zlprice<(getZKB(x.zlprice,x.normalprice)*x.normalprice)),1,0)) AS discDayNumber
FROM zn_dayly_sales x 
WHERE x.sdate<=thatDayEnd AND x.sdate>thatDay 
GROUP BY x.shopid,x.goodsid,x.zlprice;


DROP TABLE IF EXISTS tmp_onetime_tmp_2;
CREATE TABLE `tmp_onetime_tmp_2` (
`shopid`  varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`shopname`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`goodsid`  varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`goodsname`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`salevalue`  decimal(60,2) NULL DEFAULT NULL ,
`discvalue`  decimal(60,2) NULL DEFAULT NULL ,
`disc`  decimal(65,6) NULL DEFAULT NULL ,
`normalprice`  decimal(16,2) NULL DEFAULT NULL ,
`zlprice` decimal(16,2) null default null,
`qty`  decimal(60,3) NULL DEFAULT NULL ,
`zkb`  decimal(16,2) NULL DEFAULT NULL ,
`allDayNumber`  int,
`discDayNumber`  int,
INDEX `index_1` (`shopid`, `goodsid`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
ROW_FORMAT=DYNAMIC;


INSERT INTO tmp_onetime_tmp_2(shopid, shopname, goodsid, goodsname, 
salevalue, discvalue, disc, normalprice,zlprice, qty, zkb, allDayNumber, discDayNumber)
SELECT  y.shopid                                      AS shopid
       ,y.shopname                                    AS shopname
       ,y.goodsid                                     AS goodsid
       ,y.goodsname                                   AS goodsname
       ,SUM(y.salevalue)                              AS salevalue
       ,SUM(y.discvalue)                              AS discvalue
       ,SUM(y.salevalue)/SUM(y.salevalue+y.discvalue) AS disc
       ,y.normalprice                                 AS normalprice
			 ,y.zlprice                                     as zlprice
       ,SUM(y.qty)                                    AS qty
       ,y.zkb                                         AS zkb
       ,SUM(y.dayNumber)                          		AS allDayNumber
       ,SUM(y.discDayNumber)                          AS discDayNumber
FROM tmp_onetime_tmp_1 y
GROUP BY  y.shopid
         ,y.goodsid
         ,y.zkb;
# 销售数量求和
DROP TABLE IF EXISTS tmp_onetime_tmp_2_1;
CREATE TABLE `tmp_onetime_tmp_2_1` (
`shopid`  varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`goodsid`  varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`dayNumberSum`  bigint(21) DEFAULT NULL ,
INDEX `index_1` (`shopid`, `goodsid`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
ROW_FORMAT=DYNAMIC;


INSERT INTO tmp_onetime_tmp_2_1 (shopid,goodsid,dayNumberSum)
SELECT  z.shopid
       ,z.goodsid
       ,SUM(z.allDayNumber) AS dayNumberSum
FROM tmp_onetime_tmp_2 z
WHERE z.zkb<0.95 
GROUP BY  z.shopid
         ,z.goodsid;


UPDATE tmp_onetime_tmp_2 a
SET a.allDayNumber=totalWeeks*7 WHERE a.zkb=0.95;


UPDATE tmp_onetime_tmp_2 a join tmp_onetime_tmp_2_1 b on a.shopid=b.shopid AND a.goodsid=b.goodsid
SET a.allDayNumber=(totalWeeks*7-b.dayNumberSum)
WHERE a.zkb=0.95;



INSERT INTO zn_price_dms (shopid,goodsid,normalprice,disc1,disc2,band1,band2,trueprice,dms,sdate)
SELECT 
a.shopid AS shopid,
a.goodsid AS goodsid,
a.normalprice AS normalprice,
a.zkb*100 AS disc1,
CASE WHEN (a.zkb<0.95) THEN (a.zkb+0.05)*100
            ELSE 5000 END AS disc2,
a.zkb*20 AS band1,
CASE WHEN (a.zkb*20<19) THEN a.zkb*20+1
												ELSE 1000 END AS band2,
a.zlprice AS trueprice,
a.qty/a.allDayNumber AS dms,  #销售数量
now() as sdate
FROM tmp_onetime_tmp_2 a
ON DUPLICATE KEY UPDATE
zn_price_dms.shopid=VALUES(shopid),
zn_price_dms.goodsid=VALUES(goodsid),
zn_price_dms.normalprice=VALUES(normalprice),
zn_price_dms.disc1=VALUES(disc1),
zn_price_dms.disc2=VALUES(disc2),
zn_price_dms.band1=VALUES(band1),
zn_price_dms.band2=VALUES(band2),
zn_price_dms.trueprice=VALUES(trueprice),
zn_price_dms.dms=VALUES(dms),
zn_price_dms.sdate=VALUES(sdate);


#update xlid
update zn_price_dms,v_goods 
SET zn_price_dms.xlid=v_goods.deptid
WHERE zn_price_dms.goodsid=v_goods.goodsid;

#3、生成小类折扣与销量表zn_xl_dms初始数据
# 数据源按照类别xlid、折扣比例disc1、disc2汇总，dms_disc=sum(dms)/此小类在disc1和disc2折扣段的单品数量，dms_ori=小类在原价销售时单品的日均销量/小类单品数

		REPLACE INTO zn_xl_dms (shopid,xlid,disc1,disc2,
        dms_disc,dms_ori,sdate)
    SELECT 
        `x`.`shopid` AS `shopid`,
        #`x`.`shopname` AS `shopname`,
        `x`.`xlid` AS `xlid`,
        #`x`.`xlname` AS `xlname`,
        `x`.`disc1` AS `disc1`,
        `x`.`disc2` AS `disc2`,
        SUM(x.dms)/COUNT(x.dms) AS `dms_disc`,
        0 AS `dms_ori`,
        thisDay AS `sdate`
    FROM
        `zn_price_dms` `x`
		GROUP BY x.shopid,x.xlid,x.disc1;


update (SELECT * FROM zn_xl_dms WHERE zn_xl_dms.disc1=95) a RIGHT JOIN zn_xl_dms b 
on a.xlid=b.xlid AND a.shopid=b.shopid
SET b.dms_ori=a.dms_disc
WHERE b.disc1<>95 ;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for proc_chaoshi_organ
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_chaoshi_organ`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `proc_chaoshi_organ`()
BEGIN

-- declare tablenm varchar(32);
-- set tablenm=tablename;
-- IN `tablename` varchar(32)

-- 更新 门店机构编码
UPDATE zn_goods eap,
-- (select distinct a.shopid,b.shop_organ from  zn_goods_his  a  inner join  tmp_shop_bl_klid b   on   a.shopid =b.shopid) uf
(select distinct shopid,shop_organ from tmp_shop_bl_klid) uf
SET eap.shop_organ = uf.shop_organ
WHERE
    eap.shopid = uf.shopid ;


-- 建一个临时表，有这些字段shopid,xlid,bl_organ,kl_organ
-- drop  table  if exists tmp_bl_kl_organ;
-- CREATE TEMPORARY TABLE tmp_bl_kl_organ (`shopid` varchar(8) DEFAULT NULL COMMENT '门店编码', `xlid` varchar(32) DEFAULT NULL COMMENT '小类编码', `bl_organ` varchar(64) DEFAULT NULL COMMENT '部类机构编码', `kl_organ` varchar(64) DEFAULT NULL COMMENT '课类机构编码');
-- insert into tmp_bl_kl_organ(shopid,xlid,bl_organ,kl_organ) select distinct a.shopid,a.xlid,b.bl_organ,b.kl_organ from  zn_goods_his  a  
-- inner join  tmp_shop_bl_klid b   on   SUBSTRING(a.xlid,1,2) =b.klid and SUBSTRING(a.xlid,1,1) =b.blid and  a.shopid =b.shopid;

-- alter table tmp_bl_kl_organ add index index_0(shopid);
-- alter table tmp_bl_kl_organ add index index_1(xlid);
-- alter table tmp_bl_kl_organ add index index_2(bl_organ);
-- alter table tmp_bl_kl_organ add index index_3(kl_organ);


-- 更新 部类机构编码
UPDATE zn_goods eap,
 (select distinct a.shopid,a.xlid,b.bl_organ from  zn_goods  a  inner join 
 tmp_shop_bl_klid b   on   SUBSTRING(a.xlid,1,1) =b.blid and  a.shopid =b.shopid)  uf
SET eap.bl_organ = uf.bl_organ
WHERE
    eap.shopid = uf.shopid and eap.xlid=uf.xlid;


-- 更新 课类机构编码
UPDATE zn_goods eap,
 (select distinct a.shopid,a.xlid,b.kl_organ from  zn_goods  a  inner join  tmp_shop_bl_klid b  
 on   SUBSTRING(a.xlid,1,2) =b.klid and SUBSTRING(a.xlid,1,1) =b.blid and  a.shopid =b.shopid) uf
SET eap.kl_organ = uf.kl_organ
WHERE
    eap.shopid = uf.shopid and eap.xlid=uf.xlid;


-- 更新 业务区机构代码
UPDATE zn_goods 
SET ywq_organ = SUBSTRING(shop_organ,1,3);

-- 添加完这四个机构代码之后，重新查看一下这个补货表
-- select * from tablenm;

-- 更新 部类全部机构编码
UPDATE zn_goods 
SET bl_organ_all = SUBSTRING(bl_organ,10,3);


-- 更新 课类全部机构编码
UPDATE zn_goods 
SET kl_organ_all = SUBSTRING(kl_organ,10,6);


-- 添加完这两个部类、课类全部机构代码之后，重新查看一下这个补货表
-- select * from zn_goods ;

-- 更新 部类编码
UPDATE zn_goods
SET blid = SUBSTRING(xlid,1,1);


-- 更新 课类编码
-- UPDATE zn_goods_his 
-- SET cgid = SUBSTRING(xlid,1,2);


-- 这次应该完事了
-- select * from zn_goods;




-- 将部类全部机构代码A01变成A06   ，将课类全部机构代码   A01A01变成A06A01，A01A02变成A06A02，A01A03变成A06A03
-- 更新
UPDATE zn_goods
SET bl_organ_all = 'A06'  where bl_organ_all = 'A01' ;


UPDATE zn_goods 
SET kl_organ_all = 'A06A01'  where kl_organ_all = 'A01A01' ;
UPDATE zn_goods
SET kl_organ_all = 'A06A02'  where kl_organ_all = 'A01A02' ;
UPDATE zn_goods
SET kl_organ_all = 'A06A03'  where kl_organ_all = 'A01A03' ;



-- 好啦  总查
-- select * from zn_goods;  



END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for proc_classify
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_classify`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `proc_classify`(IN `begindate` date,IN `weeks` int)
BEGIN
    declare i int;
    declare col int default(0);
    declare tem_shopid VARCHAR(8);
    DECLARE beforday date;
    drop table if exists shop_classify;
    drop table if exists shopid;
     drop table if exists temp1;
    SET beforday=date_sub(begindate,interval weeks*7 day);
   CREATE TABLE  temp1  SELECT * FROM zn_dayly_sales
    WHERE convert(sdate,char(10))<convert(begindate,char(10)) AND convert(sdate,char(10))>=convert(beforday,char(10));
#---------------------------------------------------分类结果表
    CREATE  TABLE shop_classify(   
      shopid VARCHAR(8),
      goodsid VARCHAR(32),
     dms_minorder DECIMAL(16,3),
      classtype CHAR(1)
      );

#---------------------------------------------------将商店的id提取出来，并且加递增id序号
    CREATE TEMPORARY TABLE shopid(
    shopid VARCHAR(8)
    );
   INSERT INTO shopid
#可能需要改的地方，表名----------------------------------------------------------------------------------------------------------------
   SELECT shopid FROM temp1 GROUP BY shopid;#   从shop_1销售数据分类
#--------------------------------------------------------------------------------------------------------------------------------------
   ALTER TABLE shopid ADD id INT;
   alter table shopid change id id int not null auto_increment unique;
    SELECT count(shopid) INTO col FROM shopid;
    SET i=0; 
         WHILE i<=col DO
    SET @sum:=0; 


#----------------------------------------------------将所对应id的商店数据提取出来进行分类。
 SELECT shopid INTO tem_shopid FROM shopid WHERE id=i;
drop table if exists v_shopid;
CREATE TABLE v_shopid
#可能需要改的地方，表名----------------------------------------------------------------------------------------------------------------
SELECT * FROM temp1 WHERE shopid=tem_shopid;  #   从shop_1销售数据分类
#---------------------------------------------------------------------------------------------------------------------------------------
    drop table if exists v_consumqty;
    drop table if exists v_classifyAB;
     CREATE TEMPORARY TABLE v_consumqty(  
      shopid VARCHAR(8),
      goodsid VARCHAR(32),
      qty DECIMAL(16,3)
      );
     INSERT INTO v_consumqty 
     SELECT shopid,goodsid,SUM(qty) AS qty FROM v_shopid  GROUP BY shopid,goodsid;
    ALTER TABLE v_consumqty  ADD INDEX(shopid,goodsid);
#---------------------------------------------------------------------------------------------------------------
     #创建临时表，将提取出来的A,B类总体数据进行添加标签
     CREATE TEMPORARY TABLE v_classifyAB(   
      shopid VARCHAR(8),
      goodsid VARCHAR(32),
      dms_minorder DECIMAL(16,3)
      );
     INSERT INTO v_classifyAB
     #次数14天可以设置变量接收
     SELECT a.shopid,a.goodsid,(CASE WHEN a.qty=0 THEN 0 else (b.minorderqty/(a.qty/(weeks*7))) END) as dms_minorder FROM v_consumqty 
 a INNER JOIN v_minorder b ON a.shopid=b.shopid AND a.goodsid=b.goodsid;
   ALTER TABLE v_classifyAB ADD classtype CHAR(1);
  UPDATE v_classifyAB a join zn_config b ON a.shopid=b.shopid AND b.classtype='B'
    SET a.classtype='B'   WHERE a.dms_minorder<=b.Minorderdays ;
   UPDATE v_classifyAB SET classtype='A' WHERE dms_minorder<=4;
     ALTER TABLE v_classifyAB  ADD INDEX idx3(shopid,goodsid,dms_minorder,classtype);
    #将最后的分类生成最后的表
     INSERT INTO shop_classify
     SELECT shopid,goodsid,dms_minorder,classtype FROM v_classifyAB;

     set i=i+1;
      SET @sum:=0; 
      END WHILE;
DELETE  shop_classify FROM  shop_classify, v_tgoods WHERE  shop_classify.goodsid=v_tgoods.goodsid;
DROP TABLE v_shopid; 
delete  from shop_classify where classtype is null;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for proc_createbak
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_createbak`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `proc_createbak`()
BEGIN
	#每天备份促销表和促销累计表
	drop table if exists zn_prom_detail_bak;
	create table zn_prom_detail_bak(
		select * from zn_prom_detail
	);

	drop table if exists zn_prom_detail_tmp_bak;
	create table zn_prom_detail_tmp_bak(
		select * from zn_prom_detail_tmp_bak
	);

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for proc_createMonthTB
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_createMonthTB`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `proc_createMonthTB`()
BEGIN
  ##每月二号创建新带月份的表
  declare ym varchar(64);
	declare m varchar(5);
  
	set m=month(now());
  if month(now())<10
	then 
		set m=concat('0',month(now()));
  end if;

  set ym=concat('tb_sell_waste_all',year(NOW()),m);	
  set @sqlstmt = concat('create table ',ym,' ( select * from tb_sell_waste_all where 1=2);');
  PREPARE stmt from @sqlstmt;
  execute stmt;
  deallocate prepare stmt;
  set @sqlstmt=concat('create index index_1 on ',ym,' (selldate, organ, receid, posid)');
  PREPARE stmt from @sqlstmt;
  execute stmt;
  deallocate prepare stmt;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for proc_createpromotion
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_createpromotion`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `proc_createpromotion`()
BEGIN
  DECLARE done INT DEFAULT 0;
	
	declare id0 varchar(64);
	declare name0 varchar(64);
	declare startdate0 date;
	declare enddate0 date;
	declare organ0 varchar(500);
	declare remark0 varchar(64);
	declare code0 varchar(64);
	declare specprice0 decimal(16,2);
	declare expression0 int;

  declare num int;
  declare d_num int;
  declare d varchar(16);  
	DECLARE cur1 CURSOR FOR select id,name,startdate,enddate,organ,remark,code,specprice,expression from tmp_morgan;
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

####保留原始数据
	INSERT INTO tb_promhis(id,name,startdate,enddate,organ,remark,code,specprice,expression,sdate)
	SELECT id,name,startdate,enddate,organ,remark,code,specprice,expression,now()
	FROM tb_popinfo
  ON DUPLICATE KEY UPDATE 
	tb_promhis.id=tb_popinfo.id,
	tb_promhis.name=tb_popinfo.name,
	tb_promhis.startdate=tb_popinfo.startdate,
	tb_promhis.enddate=tb_popinfo.enddate,
	tb_promhis.organ=tb_popinfo.organ,
	tb_promhis.remark=tb_popinfo.remark,
	tb_promhis.code=tb_popinfo.code,
  tb_promhis.specprice=tb_popinfo.specprice,
  tb_promhis.expression=tb_popinfo.expression;

	##处理多个门店的促销计划
	##将包含多个门店的促销计划取出
	drop TEMPORARY table if exists tmp_morgan;
	create TEMPORARY table tmp_morgan(
		select * from tb_popinfo where organ like '%,%'
	);
  

	##将多个organ分开添加记录
	SELECT COUNT(*) INTO num FROM tmp_morgan;
	 open cur1;
        -- 将游标中的值赋值给变量，注意：变量名不要和返回的列名同名，变量顺序要和sql结果列的顺序一致
        fetch cur1 into id0,name0,startdate0,enddate0,organ0,remark0,code0,specprice0,expression0;
        -- 当s不等于1，也就是未遍历完时，会一直循环
        loop1:while num<>0 do
            -- 执行业务逻辑	
					SET num=num-1;
					##获取'，'的个数
					select length(organ0) - length(REPLACE (organ0, ',', '')) into d_num;
						while d_num>=0
						DO
							select split_str(organ0,',',d_num) into d;
							insert into tb_popinfo(id,name,startdate,enddate,organ,remark,code,specprice,expression)
							select id0,name0,startdate0,enddate0,d,remark0,code0,specprice0,expression0;
							set d_num=d_num-1;
						end while;
          fetch cur1 into id0,name0,startdate0,enddate0,organ0,remark0,code0,specprice0,expression0;
        end while loop1;
    -- 关闭游标
    close cur1;

	##删除多个organ的记录
	delete from tb_popinfo where organ like '%,%';
	delete from tb_popinfo where organ='';

	##将每天的促销数据先于昨日导入的促销数据作比较，取出不同的存入促销detail表中
	##取出重复数据
  drop TEMPORARY table if exists tmpt;
	create temporary table tmpt(
		select a.id,a.name,a.organ,a.code,a.startdate,a.enddate,a.specprice 
		from tb_popinfo a join tb_popinfo_his b on a.id=b.id and a.name=b.name and a.organ=b.organ and a.code=b.code and a.startdate=b.startdate and a.enddate=b.enddate and a.specprice=b.specprice
	);
	create index index_1 on tmpt(id,name,organ,code,startdate,enddate,specprice);

	##取出今日促销数据到临时表中
	drop TEMPORARY table if exists tmpm;
	create TEMPORARY table tmpm(
		select * from tb_popinfo
	);
  create index index_1 on tmpm(id,name,organ,code,startdate,enddate,specprice);
	create index index_2 on tmpm(organ,code);
	create index index_3 on tmpm(code);

  ##增加goodsname列
	alter table tmpm add column goodsname varchar(64);
	##删除重复数据
  delete a from tmpm a join tmpt b on a.id=b.id and a.name=b.name and a.organ=b.organ and a.code=b.code and a.startdate=b.startdate and a.enddate=b.enddate and a.specprice=b.specprice;
	##过滤垃圾数据
	delete a from tmpm a left join v_zn_goodsshop b on a.organ=b.shopid and a.code=b.goodsid 
	where b.flag not in (0,8,9) or b.shopid is null;
  delete a from tmpm a join v_tgoods b on a.code=b.goodsid;
	##更新goodsname
	update tmpm a join v_goods b on a.code=b.goodsid set a.goodsname=b.`name`;
	delete from tmpm where goodsname is null;

  ##去除重复数据
  ##同种活动保留planid大的
  drop temporary table if exists tmp_same1;
  create temporary table tmp_same1(
		select max(id) as id,organ,name,code
		from tmpm
		group by organ,name,code having count(*)>1
	);
	create index index_1 on tmp_same1(name,organ,code);
	delete a from tmpm a join tmp_same1 b on a.name=b.name and a.organ=b.organ and  a.code=b.code
	where a.id!=b.id;

	##不同种活动保留低价的
	drop temporary table if exists tmp_same2;
	create temporary table tmp_same2(
		select organ,code,min(specprice) as price
		from tmpm
		group by organ,code having count(*)>1
	);
	create index index_1 on tmp_same2(organ,code);
	delete a from tmpm a join tmp_same2 b on a.organ=b.organ and a.code=b.code
	where a.specprice!=b.price;

	##
	##将处理好的数据插回促销detail表中
	insert into zn_prom_detail(planid,planname,prom_type,begindate,enddate,shopid,goodsid,goodsname,price,planqty,manual_flag,flag,sdate)
	select id,id,name,startdate,enddate,organ,code,goodsname,specprice,0,expression,0,now()
	from tmpm;

	##昨日销售存入表tb_popinfo_his中
	delete from tb_popinfo_his;
	insert into tb_popinfo_his select * from tb_popinfo;


END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for proc_createstock
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_createstock`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `proc_createstock`()
BEGIN
##获取每日库存
drop table if exists v_shopsstock_d;
create table v_shopsstock_d(
	select a.`organ` as shopid,
	`a`.`code` AS `goodsid`,
	cast(sum(`a`.`amount`) as decimal(16,3)) AS `qty`,
	cast(sum(`a`.`sum_cost`) as decimal(16,2)) AS `costvalue`
FROM
			tb_cur_stock `a`
GROUP BY
	a.organ,
	`a`.`code`
);
create index index_1 on v_shopsstock_d(shopid,goodsid);
delete a from v_shopsstock_d a join v_zn_md_yt_ywq b on a.shopid=b.shopid where a.shopid!=b.shopid_hb;

drop view if exists v_shopsstock;
create view v_shopsstock as
	select * from v_shopsstock_d;

##获取大库配送品的大库库存
drop table if exists v_store;
create table v_store(
	select organ as shopid,class as cgid,provider as venderid
	from tb_provider_orderplan
	where Send_type=3 and Order_shop=0
	group by organ,class,venderid
);
create unique index index_1 on v_store(shopid,cgid,venderid);

drop view if exists v_isstore;
create view v_isstore as 
	select * from v_store;

drop table if exists v_storeqty;
create table v_storeqty(
	select 
		`code` AS `goodsid`,
		sum(`amount`) AS `qty`
	FROM
				tb_cur_stock
	where store='009111'
	GROUP BY `code`
);
create unique index index_1 on v_storeqty(goodsid);

drop view if exists v_stock_store;
create view v_stock_store as 
	select * from v_storeqty;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for proc_createview
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_createview`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `proc_createview`()
BEGIN

##生成v_zn_cg_dl_zl_xl
drop table if exists v_cg_dl_zl_xl;
create table v_cg_dl_zl_xl(
SELECT
	`a`.`code` AS `cgid`,
	`a`.`name` AS `cgname`,
	concat(`a`.`code`, `a`.`name`) AS `cg`,
	`b`.`code` AS `dlid`,
	`b`.`name` AS `dlname`,
	concat(`b`.`code`, `b`.`name`) AS `dl`,
	`c`.`code` AS `zlid`,
	`c`.`name` AS `zlname`,
	concat(`c`.`code`, `c`.`name`) AS `zl`,
	`d`.`code` AS `xlid`,
	`d`.`name` AS `xlname`,
	concat(`d`.`code`, `d`.`name`) AS `xl`,
	1 AS `pdtjflag`,
	1 AS `qdhtj`
FROM
	(
		(
			(
				`tb_comm_sort` `a`
				JOIN `tb_comm_sort` `b`
			)
			JOIN `tb_comm_sort` `c`
		)
		JOIN `tb_comm_sort` `d`
	)
WHERE
	(
		(`a`.`nature` = 1)
		AND (`b`.`nature` = 2)
		AND (length(`b`.`code`) = 4)
		AND (
			LEFT (`b`.`code`, 2) = `a`.`code`
		)
		AND (`c`.`nature` = 2)
		AND (length(`c`.`code`) = 6)
		AND (
			LEFT (`c`.`code`, 4) = `b`.`code`
		)
		AND (`d`.`nature` = 2)
		AND (length(`d`.`code`) = 8)
		AND (
			LEFT (`d`.`code`, 6) = `c`.`code`
		)
		AND (
			`a`.`code` NOT IN (20, 21, 22, 23, 24, 25, 26, 27, 28)
		)
	)
);
create unique index index_1 on v_cg_dl_zl_xl(xlid);


##生成v_goods
drop table if exists goods;
create table goods(
	SELECT
		`a`.`code` AS `goodsid`,
		`a`.`code` AS `barcodeid`,
		`a`.`sort` AS `deptid`,
    cast(null as char(64)) as xlname,
		`a`.`name` AS `name`,
		(
			CASE
			WHEN (`a`.`state` = 0) THEN
				0
			ELSE
				3
			END
		) AS `flag`,
		(
			CASE
			WHEN (`a`.`state` = 0) THEN
				'正常'
			ELSE
				'作废'
			END
		) AS `status`,
		cast(
			`a`.`mark` AS CHAR (8) charset utf8
		) AS `brand`,
		`a`.`spec` AS `spec`,
		`a`.`recdate` AS `indate`,
		`a`.`deleted` AS `deleted`,
		`a`.`send_unit` AS `minorderqty`,
		a.one_off as oneoff,
		a.startdate as begindate,
		a.enddate as enddate,
		conversion as conversion
	FROM
		`tb_commodity` `a`
	WHERE
		(LEFT(`a`.`sort`, 1) <> 2)
);
update goods a join v_cg_dl_zl_xl b on a.deptid=b.xlid set a.xlname=b.xlname;
create unique index index_1 on goods(goodsid);
create index index_2 on goods(deptid);

##生成越库商品表
drop table if exists tgoods;
create table tgoods(
	select goodsid
	from v_goods
	where right(spec,1)='Y'
	group by goodsid
); 
create unique index index_1 on tgoods(goodsid);

###生成v_zn_goodsshop
	drop table if exists v_goodsshop;
	CREATE TABLE v_goodsshop (
	SELECT
		`organ` AS `shopid`,
     cast(null as char(64)) as shopname,
		 `code` AS `goodsid`,
			cast(null as char(64)) as goodsname,
     provider as venderid,
		(
			CASE
			WHEN ( `state` = 0) THEN
				8
			WHEN ( `state` = 1) THEN
				0
			WHEN ( `state` = 2) THEN
				1
			WHEN ( `state` = 3) THEN
				5
			WHEN ( `state` = 4) THEN
				3
			WHEN ( `state` = 5) THEN
				1
			WHEN ( `state` = 6) THEN
				1
			WHEN ( `state` = 7) THEN
				7			
			END
		) AS `flag`,
		(
			CASE
			WHEN ( `state` = 0) THEN
				'新品试销'
			WHEN ( `state` = 1) THEN
				'正常'
			WHEN ( `state` = 2) THEN
				'停止进货可销售'
			WHEN ( `state` = 3) THEN
				'清退'
			WHEN ( `state` = 4) THEN
				'撤柜'
			WHEN ( `state` = 5) THEN
				'暂时禁下单'
			WHEN ( `state` = 6) THEN
				'暂时缺货'
			WHEN ( `state` = 7) THEN
				'周期性商品'
			END
		) AS `status`,
		(
			CASE
			WHEN ( `ifstock` = 0) THEN
				1
			WHEN ( `ifstock` = 1) THEN
				0
			END
		) AS `stocktype`,
		(
			CASE
			WHEN ( `ifstock` = 0) THEN
				'不管库存'
			WHEN ( `ifstock` = 1) THEN
				'管库存'
			END
		) AS `stocktypename`,
		NULL AS `logistics`,
		`price` AS `normalprice`,
		`indate` AS `goodsdate`,
		`deleted` AS `Deleted`,
		1 as isjpg
	FROM
		(
			`tb_comm_shop`
		)
	WHERE
		(
     (`ifstock` = 1)
			and organ<>'0092'
		)
	GROUP BY
		 `organ`,
		`code`,
     provider,
		`state`,
		`ifstock`,
		`price`,
		`indate`,
		`deleted`
);

create unique index index_1 on v_goodsshop(shopid,goodsid);
delete a from v_goodsshop a join v_zn_md_yt_ywq b on a.shopid=b.shopid where a.shopid!=b.shopid_hb;
##delete a from v_goodsshop a join zn_trash b on a.shopid=b.shopid and a.goodsid=b.goodsid;
update v_goodsshop a join v_shopname b on a.shopid=b.shopid set a.shopname=b.shopname;
update v_goodsshop a join v_goodsname b on a.goodsid=b.goodsid set a.goodsname=b.name;

##删除不参与补货的类别
delete a from v_goodsshop a join v_goods b on a.goodsid=b.goodsid 
						join v_zn_cg_dl_zl_xl c on b.deptid=c.xlid
where c.dlid in(3401,3402,3410,3501,3502,3504,1108,1009) or c.cgid=40;

##更新周期性商品得状态
update v_goodsshop a join v_goods b on a.goodsid=b.goodsid
set a.flag=0
where a.flag=7 and b.oneoff=1 and CURDATE()>=DATE_FORMAT(b.begindate,'%Y-%m-%d') and CURDATE()<=DATE_FORMAT(b.enddate,'%Y-%m-%d');

##生成每日库存表
call proc_createstock();
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for proc_create_stock_ll
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_create_stock_ll`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `proc_create_stock_ll`(IN `date2` date)
BEGIN

		DROP  TABLE IF EXISTS v_shopsstock_ll;
		CREATE  TABLE v_shopsstock_ll(
				SELECT shopid,goodsid,qty_ll as qty FROM stock_test where DATE_FORMAT(sdate,'%Y-%m-%d')=date2 
		);
ALTER  TABLE  v_shopsstock_ll  ADD  INDEX index_name (shopid,goodsid);
		drop view if exists v_shopsstock;
		create view v_shopsstock as
		select * from v_shopsstock_ll;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for proc_dayly_onetime
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_dayly_onetime`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `proc_dayly_onetime`(IN `todaydate` date)
BEGIN

  ##生成tgoods表
  /*drop table if exists tgoods;
	create table tgoods(
  select goodsid from v_goods where right(spec,1)='Y');
  create index index_1 on tgoods(goodsid);*/

	call proc_v_sale_j('v_sale_j_d',todaydate,todaydate);
	delete from tuangou_data where sdate=todaydate;

drop TEMPORARY table if exists tmp_sale_j;
  create temporary table if not exists tmp_sale_j(
		sdate date,
		pos_list varchar(32),
		shopid varchar(8),
		goodsid varchar(16),
		qty dec(16,3),
		salevalue dec(16,2),
    discvalue dec(16,2),
		trueprice dec(16,2)
	);
  create index index_1 on tmp_sale_j(sdate,shopid,goodsid);

  ##每天每张小票单品实际售价和数量
  insert into tmp_sale_j
  select sdate,concat(posid,'-',listno),shopid,goodsid,sum(cast(qty as dec(16,3))/x) as qty,sum(salevalue)-sum(discvalue) as salevalue,sum(discvalue) as discvalue,sum(salevalue-discvalue)/sum(cast(qty as dec(16,3))/x) as trueprice
  from v_sale_j_d
  where qty!=0
  group by sdate,concat(posid,'-',listno),shopid,goodsid;

  ##将团购小票单独存入团购表中
	insert into tuangou_data
  select sdate,pos_list,shopid,goodsid,qty,salevalue,trueprice
  from tmp_sale_j
	where salevalue>5000;
  ##删除团购数据
	delete from tmp_sale_j where abs(salevalue)>5000;
	
  ##计算日均销量
  drop temporary table if exists tmp_dayly_sales;
	create temporary table tmp_dayly_sales(
		select sdate,shopid,cast(null as char(64)) as shopname,goodsid,cast(null as char(64)) as goodsname,sum(salevalue) as salevalue,sum(discvalue) as discvalue,sum(qty) as qty,
						IF(convert(sum(salevalue)+sum(discvalue),DECIMAL(16,2))=0,0.00,sum(salevalue)/(sum(salevalue)+sum(discvalue))*100) as disc,0000000000000000.00 as zlprice,0000000000000000.00 as normalprice
		from tmp_sale_j
		group by sdate,shopid,goodsid
	);

##删除销量或销售为负的数据
delete from tmp_dayly_sales where salevalue<=0 or qty<=0;

##计算主力价格
	##单品每天每个实际售价的销售数量
  drop TEMPORARY table if exists tmp_sale1;
	create TEMPORARY table tmp_sale1(
		select sdate,shopid,goodsid,trueprice,sum(qty) as qty
		from tmp_sale_j
		group by sdate, shopid,goodsid,trueprice 
	);

	##单品每天的最大销售数量
  drop TEMPORARY table if exists  tmp_maxqty;
  create TEMPORARY table tmp_maxqty(
		select sdate,  shopid, goodsid,max(qty) as maxqty     
		from tmp_sale1
		group by sdate,  shopid, goodsid
	);
  create index index_1 on tmp_maxqty(sdate,shopid,goodsid);

	##单品每天的最大销售数量 对应的实际售价为主力售价
  delete a from tmp_sale1 a join tmp_maxqty b on a.sdate=b.sdate and a.shopid=b.shopid and a.goodsid=b.goodsid 
  where a.qty!=b.maxqty;
  drop TEMPORARY table if exists tmp_zlprice;
	create TEMPORARY table tmp_zlprice(
     select sdate,shopid,goodsid,max(trueprice) as zlprice
		 from tmp_sale1
		 group by sdate,shopid,goodsid
	);
  create index index_1 on tmp_zlprice(sdate,shopid,goodsid);
 
  create index index_1 on tmp_dayly_sales(sdate,shopid,goodsid);
	##主力售价和日常定价回插
	update tmp_dayly_sales a join tmp_zlprice b on a.sdate=b.sdate and a.shopid=b.shopid and a.goodsid=b.goodsid
	set a.zlprice=b.zlprice;
  #删除不管库存商品
  drop temporary table if exists tmp1;
	create temporary table tmp1(
		select a.sdate,a.shopid,a.shopname,a.goodsid,a.goodsname,a.salevalue,a.discvalue,a.qty,
						a.disc,a.zlprice,b.normalprice
		from tmp_dayly_sales a join v_zn_goodsshop b on a.shopid=b.shopid and a.goodsid=b.goodsid
	);
  create index index_1 on tmp1(goodsid,shopid);
  ##为配合系统 更新字段
  update tmp1 a join v_shopname b on a.shopid=b.shopid set a.shopname=b.shopname;
  update tmp1 a join v_goodsname b on a.goodsid=b.goodsid set a.goodsname=b.name;

  insert into zn_dayly_sales select * from tmp1;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for proc_dms
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_dms`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `proc_dms`(IN `begindate` date,IN `weeks` int)
BEGIN
	#Routine body goes here...
    declare i int;
    declare col int default(0);
    declare tem_shopid VARCHAR(8);
    DECLARE today date;
    DECLARE beforday date;
    SET beforday=date_sub(begindate,interval weeks*7 day);
    drop table if exists dms_minorder;
    drop table if exists dms_minorder1;
    drop table if exists get_shopid;
#不加zn-goodsshop    
CREATE TEMPORARY TABLE dms_minorder1 SELECT * FROM zn_dayly_sales WHERE convert(sdate,char(10))<convert(begindate,char(10)) AND convert(sdate,char(10))>=convert(beforday,char(10));
    DELETE  dms_minorder1 FROM  dms_minorder1, v_tgoods WHERE   dms_minorder1.goodsid=v_tgoods.goodsid;
     CREATE  TABLE dms_minorder(   
      shopid VARCHAR(8),
      goodsid VARCHAR(32),
      qty DECIMAL(16,3),
      salevalue DECIMAL(16,2),
      dms_minorder DECIMAL(16,3),
      consum_baifen DECIMAL(16,8)
      );
    CREATE TEMPORARY TABLE get_shopid(
    shopid VARCHAR(8)
    );
   INSERT INTO get_shopid
#可能需要改的地方，表名----------------------------------------------------------------------------------------------------------------
   SELECT shopid FROM dms_minorder1 GROUP BY shopid;#   从shop_1销售数据分类
#--------------------------------------------------------------------------------------------------------------------------------------
   ALTER TABLE get_shopid ADD id INT;
   alter table get_shopid change id id int not null auto_increment unique;


#----------------------------------------------------将行数赋给一个变量,循环对各个商店来进行测算
    SELECT count(shopid) INTO col FROM get_shopid;
    SET i=0; 
         WHILE i<=col DO
    SET @sum:=0; 
drop table if exists v_shop_qty;

#----------------------------------------------------将所对应id的商店数据进行测算。
 SELECT shopid INTO tem_shopid FROM get_shopid WHERE id=i;
 drop table if exists v_sale_shopid;
CREATE TABLE v_sale_shopid
#可能需要改的地方，表名----------------------------------------------------------------------------------------------------------------
SELECT * FROM dms_minorder1 WHERE shopid=tem_shopid;  #   取出数来进行测算
#---------------------------------------------------------------------------------------------------------------------------------------
     drop table if exists v_shop_qty;
     drop table if exists v_shop_dms;
     CREATE TEMPORARY TABLE v_shop_qty(  
      shopid VARCHAR(8),
      goodsid VARCHAR(32),
      qty DECIMAL(16,3),
      salevalue DECIMAL(16,2),
      baifen DECIMAL(16,8)
      );
      ALTER TABLE v_sale_shopid  ADD INDEX idx1(shopid,goodsid);
     INSERT INTO v_shop_qty 
     SELECT shopid,goodsid,SUM(qty) AS qty,SUM(salevalue) AS salevalue,SUM(salevalue)/(SELECT SUM(salevalue) FROM v_sale_shopid) AS baifen
     FROM v_sale_shopid GROUP BY shopid,goodsid;
     ALTER TABLE v_shop_qty   ADD INDEX idx2(shopid,goodsid,qty,salevalue); 
      CREATE TEMPORARY TABLE v_shop_dms(   
      shopid VARCHAR(8),
      goodsid VARCHAR(32),
      qty DECIMAL(16,3),
      salevalue DECIMAL(16,2),
      dms_minorder DECIMAL(16,3)
      );
     INSERT into v_shop_dms
     SELECT a.shopid,a.goodsid,a.qty,a.salevalue,(b.minorderqty/(a.qty/(weeks*7)))  as dms_minorder FROM v_shop_qty  a LEFT JOIN  v_minorder b
     ON a.shopid=b.shopid AND a.goodsid=b.goodsid   ORDER BY dms_minorder ;
     ALTER TABLE v_shop_dms   ADD INDEX idx2(shopid,goodsid,qty,salevalue,dms_minorder);
     INSERT into dms_minorder
     SELECT a.shopid,a.goodsid,a.qty,a.salevalue,a.dms_minorder,(@sum:=@sum+b.baifen) as consum_baifen  FROM v_shop_dms a LEFT JOIN v_shop_qty b
     ON a.shopid=b.shopid AND a.goodsid=b.goodsid ORDER BY dms_minorder ;
   
     set i=i+1;
       SET @sum:=0; 
      END WHILE;
			drop table if exists aa; 
			CREATE TEMPORARY TABLE aa(
			shopid VARCHAR(8),
			dms_minorder DECIMAL(16,3)
			);
			ALTER TABLE dms_minorder ADD classtype CHAR(1);
			UPDATE dms_minorder SET classtype=(CASE WHEN dms_minorder<=4 THEN 'A' ELSE 'B' END) where  consum_baifen<0.7 ORDER BY dms_minorder;
			INSERT INTO aa SELECT shopid,(CASE WHEN MAX(dms_minorder)<=7 THEN 7 else MAX(dms_minorder) END) AS dms_minorder 
			FROM dms_minorder WHERE dms_minorder.classtype='B' GROUP BY shopid;
			UPDATE zn_config SET Minorderdays=4 WHERE classtype='A';
			UPDATE zn_config a join aa b ON a.shopid=b.shopid
			SET a.Minorderdays=b.dms_minorder  WHERE classtype='B' ;
      update zn_config set Minorderdays=7 where Classtype='B' AND Minorderdays  is null;
       
DROP TABLE v_sale_shopid;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for proc_dms1
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_dms1`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `proc_dms1`(IN `begindate` date,IN `weeks` int)
BEGIN
	#Routine body goes here...
    declare i int;
    declare col int default(0);
    declare tem_shopid VARCHAR(8);
		declare j int;
    declare cgids int default(0);
    declare tem_cgid VARCHAR(8);
    DECLARE today date;
    DECLARE beforday date;
  
		SELECT  version()
					 ,@@sql_mode;

		SET sql_mode=(
		SELECT  REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY','')); 
 
    SET beforday=date_sub(begindate,interval weeks*7 day);

    drop TEMPORARY table if exists dayly_sale;
		CREATE TEMPORARY TABLE dayly_sale (
				SELECT shopid,goodsid,qty,salevalue 
				FROM zn_dayly_sales
				WHERE shopid='1180' and convert(sdate,char(10))>=convert(beforday,char(10)) AND convert(sdate,char(10))<convert(begindate,char(10))
		);
		ALTER TABLE dayly_sale  ADD INDEX idx1(goodsid);
		ALTER TABLE dayly_sale  ADD INDEX idx2(shopid,goodsid);
    DELETE  dayly_sale FROM  dayly_sale, v_tgoods WHERE   dayly_sale.goodsid=v_tgoods.goodsid;

   drop table if exists dms_minorder2;
   CREATE  TABLE dms_minorder2(   
      shopid VARCHAR(8),
			cgid varchar(8),
      goodsid VARCHAR(32),
      qty DECIMAL(16,3),
      salevalue DECIMAL(16,2),
      dms_minorder2 DECIMAL(16,3),
      consum_baifen DECIMAL(16,8),
			classtype CHAR(1)
   );
#   取循环的门店
   drop table if exists get_shopid;
   CREATE TEMPORARY TABLE get_shopid(
			SELECT shopid FROM dayly_sale GROUP BY shopid
	 );
   ALTER TABLE get_shopid ADD id INT;
   alter table get_shopid change id id int not null auto_increment unique;
 
# 循环门店
    SELECT count(shopid) INTO col FROM get_shopid;
    SET i=0; 
         WHILE i<=col DO
    SET @sum:=0; 

# 将所对应id的商店数据进行测算，汇总goods。
	  SELECT shopid INTO tem_shopid FROM get_shopid WHERE id=i;
	  drop TEMPORARY table if exists sale_goods1;
		CREATE TEMPORARY TABLE sale_goods1(
				SELECT a.shopid,a.goodsid,sum(qty)as qty,sum(salevalue) as salevalue 
						FROM dayly_sale a 
						join v_zn_goodsshop b on a.shopid =tem_shopid and b.shopid=tem_shopid  and flag in (0,8,9) and a.goodsid=b.goodsid 
						group by a.shopid,a.goodsid
		); 
		ALTER TABLE sale_goods1  ADD INDEX idx2(goodsid);

# 汇总的goodsid加一个cgid字段
		drop TEMPORARY table if exists sale_goods;
		CREATE TEMPORARY TABLE sale_goods(  
					select a.shopid,cgid,a.goodsid,qty,salevalue from sale_goods1  a join v_goods b on a.goodsid=b.goodsid
																																					join v_zn_cg_dl_zl_xl c on b.deptid=c.xlid
		); 
		ALTER TABLE sale_goods  ADD INDEX idx1(cgid);

#汇总采购销售
		drop TEMPORARY table if exists cg_sale;
		CREATE TEMPORARY TABLE cg_sale(  
					select shopid,cgid,sum(qty)as qty,sum(salevalue) as salevalue from sale_goods  
					GROUP BY shopid,cgid
		); 
		ALTER TABLE cg_sale  ADD INDEX idx1(cgid);
#新建求百分比表
    drop table if exists v_shop_qty;
    CREATE  TABLE v_shop_qty(  
				shopid VARCHAR(8),
				cgid varchar(8),
				goodsid VARCHAR(32),
				qty DECIMAL(16,3),
				salevalue DECIMAL(16,2),
				baifen DECIMAL(16,8)
    );
     

 ##求单品的占采购线的销售百分占比
    INSERT INTO v_shop_qty (shopid,cgid,goodsid,qty,salevalue,baifen)
    SELECT a.shopid,a.cgid,goodsid,a.qty ,a.salevalue,a.salevalue/b.salevalue 
    FROM sale_goods a left join cg_sale b on a.cgid=b.cgid;
    ALTER TABLE v_shop_qty   ADD INDEX idx2(shopid,goodsid ); 

#取门店内的采购线
		drop TEMPORARY table if exists get_cgid;
		CREATE TEMPORARY TABLE get_cgid(
			 SELECT cgid FROM v_zn_cgx_kl_bl GROUP BY cgid
		); 
	
		ALTER TABLE get_cgid ADD id INT;
    ALTER TABLE get_cgid change id id int not null auto_increment unique;

 #循环门店内的采购线
    SELECT count(cgid) INTO  cgids FROM get_cgid;
    SET j=0; 
    WHILE j<=cgids DO

			SELECT cgid INTO tem_cgid FROM get_cgid WHERE id=j;

##求某店某采购的最小起订量可销天数
			drop TEMPORARY table if exists v_shop_dms;
			CREATE TEMPORARY TABLE v_shop_dms(   
					SELECT a.shopid,a.cgid,a.goodsid,a.qty,a.salevalue,(b.minorderqty/(a.qty/(weeks*7)))  as dms_minorder2 
					FROM v_shop_qty  a LEFT JOIN  v_minorder b ON a.shopid=b.shopid AND a.goodsid=b.goodsid
					where  a.cgid=tem_cgid
					ORDER BY dms_minorder2 
			);
			ALTER TABLE v_shop_dms   ADD INDEX idx2(shopid,goodsid);
##求累计百分比
			drop TEMPORARY table if exists dms_minorder11;
			CREATE TEMPORARY TABLE dms_minorder11(   
					SELECT a.shopid,a.cgid,a.goodsid,a.qty,a.salevalue,a.dms_minorder2,(@sum:=@sum+b.baifen) as consum_baifen  
					FROM v_shop_dms a LEFT JOIN v_shop_qty b ON a.shopid=b.shopid AND a.goodsid=b.goodsid
					ORDER BY dms_minorder2  
			);


     INSERT into dms_minorder2(shopid, cgid, goodsid, qty, salevalue, dms_minorder2, consum_baifen)
     SELECT * from dms_minorder11;
##筛选AB
		 UPDATE dms_minorder2 
		 SET classtype=(CASE WHEN dms_minorder2<=4 THEN 'A' ELSE 'B' END) 
		 where (consum_baifen<0.7 or dms_minorder2<=7) and  cgid=tem_cgid 
		 ORDER BY dms_minorder2;
 
		 set j=j+1;
     SET @sum:=0; 
   END WHILE;		
	 set i=i+1;
   SET @sum:=0; 
  END WHILE;
	TRUNCATE shop_classify;
	INSERT INTO shop_classify(shopid,goodsid, dms_minorder,classtype)
	select shopid,goodsid,dms_minorder2 as dms_minorder,classtype FROM dms_minorder2 where classtype is not null and dms_minorder2 is not null;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for proc_everyday
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_everyday`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `proc_everyday`(IN `todaydate` date)
BEGIN

	##如果输入值是空 则自动计算昨天的数据
  if todaydate is NULL
  then
		set todaydate = DATE_FORMAT(date_add(now(),interval -1 day),'%Y-%m-%d');
	end if;

  ##生成tgoods表
  /*drop table if exists tgoods;
	create table tgoods(
  select goodsid from v_goods where right(spec,1)='Y');
  create index index_1 on tgoods(goodsid);*/

	##生成明细表
	call proc_v_sale_j('v_sale_j_d',todaydate,todaydate);
	##删除结果表中昨天的数据
	delete from zn_dayly_sales where sdate=todaydate;
	delete from tuangou_data where sdate=todaydate;

drop TEMPORARY table if exists tmp_sale_j;
  create temporary table if not exists tmp_sale_j(
		sdate date,
		pos_list varchar(32),
		shopid varchar(8),
		goodsid varchar(16),
		qty dec(16,3),
		salevalue dec(16,2),
    discvalue dec(16,2),
		trueprice dec(16,2)
	);
  create index index_1 on tmp_sale_j(sdate,shopid,goodsid);

  ##每天每张小票单品实际售价和数量
  insert into tmp_sale_j
  select sdate,concat(posid,'-',listno),shopid,goodsid,sum(cast(qty as dec(16,3))/x) as qty,
				sum(salevalue)-sum(discvalue) as salevalue,sum(discvalue) as discvalue,sum(salevalue-discvalue)/sum(cast(qty as dec(16,3))/x) as trueprice
  from v_sale_j_d
  where qty!=0
  group by sdate,concat(posid,'-',listno),shopid,goodsid;

  ##将团购小票单独存入团购表中
	insert into tuangou_data
  select sdate,pos_list,shopid,goodsid,qty,salevalue,trueprice
  from tmp_sale_j
	where salevalue>5000;
  ##删除团购数据
	delete from tmp_sale_j where abs(salevalue)>5000;
	
  ##计算日均销量
  drop temporary table if exists tmp_dayly_sales;
	create temporary table tmp_dayly_sales(
		select sdate,shopid,cast(null as char(64)) as shopname,goodsid,cast(null as char(64)) as goodsname,sum(salevalue) as salevalue,sum(discvalue) as discvalue,sum(qty) as qty,
						IF(sum(salevalue)+sum(discvalue)=0,0,floor(sum(salevalue)/(sum(salevalue)+sum(discvalue))*100)) as disc,0000000000000000.00 as zlprice,0000000000000000.00 as normalprice
		from tmp_sale_j
		group by sdate,shopid,goodsid
	);

##删除销量或销售为负的数据
delete from tmp_dayly_sales where salevalue<=0 or qty<=0;

##计算主力价格
	##单品每天每个实际售价的销售数量
  drop TEMPORARY table if exists tmp_sale1;
	create TEMPORARY table tmp_sale1(
		select sdate,shopid,goodsid,trueprice,sum(qty) as qty
		from tmp_sale_j
		group by sdate, shopid,goodsid,trueprice 
	);

	##单品每天的最大销售数量
  drop TEMPORARY table if exists  tmp_maxqty;
  create TEMPORARY table tmp_maxqty(
		select sdate, shopid, goodsid,max(qty) as maxqty     
		from tmp_sale1
		group by sdate, shopid, goodsid
	);
  create index index_1 on tmp_maxqty(sdate,shopid,goodsid);

	##单品每天的最大销售数量 对应的实际售价为主力售价
  delete a from tmp_sale1 a join tmp_maxqty b on a.sdate=b.sdate and a.shopid=b.shopid and a.goodsid=b.goodsid 
  where a.qty!=b.maxqty;
  drop TEMPORARY table if exists tmp_zlprice;
	create TEMPORARY table tmp_zlprice(
     select sdate,shopid,goodsid,max(trueprice) as zlprice
		 from tmp_sale1
		 group by sdate,shopid,goodsid
	);
  create index index_1 on tmp_zlprice(sdate,shopid,goodsid);
 
  create index index_1 on tmp_dayly_sales(sdate,shopid,goodsid);
	##主力售价和日常定价回插
	update tmp_dayly_sales a join tmp_zlprice b on a.sdate=b.sdate and a.shopid=b.shopid and a.goodsid=b.goodsid
	set a.zlprice=b.zlprice;
  #删除不管库存商品
  drop temporary table if exists tmp1;
	create temporary table tmp1(
		select a.sdate,a.shopid,a.shopname,a.goodsid,a.goodsname,a.salevalue,a.discvalue,a.qty,
						a.disc,a.zlprice,b.normalprice,0000000000000000.000 as stock
		from tmp_dayly_sales a join v_zn_goodsshop b on a.shopid=b.shopid and a.goodsid=b.goodsid
	);
  create index index_1 on tmp1(shopid,goodsid);
	create index index_2 on tmp1(goodsid);
	##更新每日库存
	update tmp1 a join v_shopsstock b on a.shopid=b.shopid and a.goodsid=b.goodsid set a.stock=b.qty;
	##将无销售有库存数据回插入
	drop temporary table if exists tmp2;
	create TEMPORARY table tmp2(
		select a.shopid,a.goodsid,a.qty as stock from v_shopsstock a left join tmp1 b on a.shopid=b.shopid and a.goodsid=b.goodsid 
		where b.zlprice is null and a.qty!=0
	);
	create index index_1 on tmp2(shopid,goodsid);

	insert into tmp1(sdate,shopid,shopname,goodsid,goodsname,salevalue,discvalue,qty,disc,zlprice,normalprice,stock)
  select todaydate,a.shopid,null,a.goodsid,null,0,0,0,0,0,b.normalprice,a.stock 
	from tmp2 a join v_zn_goodsshop b on a.shopid=b.shopid and a.goodsid=b.goodsid;
  ##为配合系统 更新字段
  update tmp1 a join v_zn_md_yt_ywq b on a.shopid=b.shopid set a.shopname=b.shopname;
  update tmp1 a join v_goods b on a.goodsid=b.goodsid set a.goodsname=b.name;
  ##插入结果表
  insert into zn_dayly_sales select * from tmp1;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for proc_festivalGoods
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_festivalGoods`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `proc_festivalGoods`(IN `begin_date` date,IN `end_date` date,IN `i` int)
BEGIN   ##节日商品每年大致在十一月份 或 十二月份 重新生成
	declare n int;
  declare hid varchar(8);
  declare sd date;
  declare ed date;
  declare done int default 0;
  declare date1 date;
	declare date2 date;
  declare cdate1 date;
  declare cdate2 date;
  declare mdate2 date;
  declare festivalCur cursor for select holidayid,startdate,enddate from holidayDate;
  declare continue handler for not found set done=1;
	#begindate ,enddate 输入为最近一年日期，一次计算i年
  set n=1;
	set date1=begin_date;
	set date2=end_date;

	##计算一年总销售
  drop TEMPORARY table if exists saleStander;
	create TEMPORARY table saleStander(
		select b.ywqid,sum(salevalue) as saleSum from zn_dayly_sales a join v_zn_md_yt_ywq b on a.shopid=b.shopid join v_goods c on a.goodsid=c.goodsid
		where sdate>=begin_date and sdate<=end_date
		group by b.ywqid
	);

  ##清空数据表
	delete from zn_holiday_xl;

	drop TEMPORARY table if exists zs;
		create TEMPORARY table zs(
			ywqid varchar(8),
			h_id varchar(8),
			xlid varchar(16),
			sale1 dec(16,2),
			sale2 dec(16,2),
			zs1 dec(16,2),
			zs2 dec(16,2),
			zs3 dec(16,2)
	);
	while n<=i
	do 
    ##取最晚有销售日期
		select max(sdate) into mdate2 from zn_dayly_sales where sdate>=date1 and sdate<=date2;
		##从节日表中取出需要计算的节日
		drop TEMPORARY table if EXISTS holidayDate;
		create TEMPORARY table holidayDate(
			select * from zn_calendar 
			where sundate between date1 and date2 and holidayid in ('01','02','03','04','21') 
		);
		##记录春节的开始和结束日期
		select startdate,enddate into cdate1,cdate2 from holidayDate where holidayid='01';

    drop TEMPORARY table if exists noshop;
    create TEMPORARY table noshop(
			select shopid from v_zn_md_yt_ywq where 1=2
		);

    if n!=3
    then
			##找出不满一年的新店
				drop TEMPORARY table if exists noshop;
        create TEMPORARY table noshop(
					select shopid 
					from zn_dayly_sales 
					where sdate between date1 and date2 
								and shopid not in(select shopid 
																	from zn_dayly_sales 
																	where sdate between DATE_ADD(date1,INTERVAL -1 year) and DATE_ADD(date2,INTERVAL -1 year) 
																	group by shopid)
					group by Shopid
				);
		end if;
	  ##春节正常计算全年指数
		drop TEMPORARY table if exists zs_all1;
		create TEMPORARY table zs_all1(
			##计算全年指数
			select c.ywqid,b.deptid,sum(salevalue) as sale1,sum(salevalue)/(DATEDIFF(mdate2,date1)+1) as all_zs
			from zn_dayly_sales a join v_goods b on a.goodsid=b.goodsid	join v_zn_md_yt_ywq c on a.shopid=c.shopid 
												    left join noshop e on a.shopid=e.shopid
			where sdate>=date1 and sdate<=date2 and e.shopid is null
			group by c.ywqid,b.deptid
		);
	  ##非春节全年指数要去掉春节期间
		drop TEMPORARY table if exists zs_all;
		create TEMPORARY table zs_all(
			##计算全年指数，仅取去年全年的销售
			select c.ywqid,b.deptid,sum(salevalue) as sale1,(sum(salevalue)/(DATEDIFF(cdate1,date1)+DATEDIFF(mdate2,cdate2))) as all_zs
			from zn_dayly_sales a join v_goods b on a.goodsid=b.goodsid	join v_zn_md_yt_ywq c on a.shopid=c.shopid	 
														left join noshop e on a.shopid=e.shopid
			where ((sdate>=date1 and sdate<cdate1) or (sdate>cdate2 and sdate<=date2)) and e.shopid is null
			group by c.ywqid,b.deptid
		);
		#############开始计算节日指数
		##以游标形式取出每个节日
		open festivalCur;
		
		festival:loop
			fetch festivalCur into hid,sd,ed;
			if done=1
			THEN
				leave festival;
			end if;
			
		  drop TEMPORARY table if EXISTS h_zs;
	    create TEMPORARY table h_zs( 
				##计算节日期间指数,仅取去年节日期间的销售
				select c.ywqid,b.deptid,hid as h_id,00000000000000.00 as sale1,sum(salevalue) as sale2,sum(salevalue)/(DATEDIFF(ed,sd)+1) as h_zs
				from zn_dayly_sales a join v_goods b on a.goodsid=b.goodsid join v_zn_md_yt_ywq c on a.shopid=c.shopid
														 left join noshop d on a.shopid=d.shopid
				where sdate>=sd and sdate<=ed and d.shopid is null
				group by c.ywqid,b.deptid		
			); 
			##春节正常计算全年指数
			if hid='01'
			then
				update h_zs a join zs_all1 b on a.ywqid=b.ywqid and a.deptid=b.deptid set a.h_zs=a.h_zs/b.all_zs,a.sale1=b.sale1;
			end if;
			##非春节全年指数要去掉春节期间
			if hid!='01'
			then
				update  h_zs a join zs_all b on a.ywqid=b.ywqid and a.deptid=b.deptid set a.h_zs=a.h_zs/b.all_zs,a.sale1=b.sale1;
			end if;
			if n=1 
			then
				##插入最近一年的数据，而用前两年的数据更新可以过滤掉最近一年已经不存在的小类
        ##select * from h_zs where sale1>99999999999999.99;
				insert into zs
				select ywqid,h_id,deptid,sale1,sale2,h_zs,0.00,0.00 from h_zs;
			end if;
			if n=2
			THEN
				update zs a join h_zs b on a.ywqid=b.ywqid and a.xlid=b.deptid and a.h_id=b.h_id
				set a.zs2=b.h_zs;
			end if;
			if n=3
			THEN
				update zs a join h_zs b on a.ywqid=b.ywqid and a.xlid=b.deptid and a.h_id=b.h_id
				set a.zs3=b.h_zs;
			end if;
		end loop;
		close festivalCur;
		set date1=DATE_ADD(date1,INTERVAL -1 year);
    set date2=DATE_ADD(date2,INTERVAL -1 year);
    set done=0;
		set n=n+1;
	end while;
  

  ##将结果插入到（备用结果表）中
  drop table if EXISTS zn_holiday_by;
  if i=1
	then 
		create table zn_holiday_by(
			select ywqid,h_id as holidayid,xlid,sale1 as saleall,sale2 as saleholiday,zs1 as zs,1 as rate
			from zs
		);
	end if;
	if i=2
	then 
		create table zn_holiday_by(
			select ywqid,h_id as holidayid,xlid,sale1 as saleall,sale2 as saleholiday,(zs1+zs2)/2 as zs,1 as rate
			from zs where zs2!=0
		);
		insert into zn_holiday_by
		select ywqid,h_id as holidayid,xlid,sale1 as saleall,sale2 as saleholiday,zs1 as zs,1 as rate
		from zs where zs2=0;
	end if;
	if i=3
	then 
		create table zn_holiday_by(
			select ywqid,h_id as holidayid,xlid,sale1 as saleall,sale2 as saleholiday,(zs1+zs2+zs3)/3 as zs,1 as rate
			from zs where zs2!=0 and zs3!=0
		);
    insert into zn_holiday_by
		select ywqid,h_id as holidayid,xlid,sale1 as saleall,sale2 as saleholiday,(zs1+zs2+zs3)/2 as zs,1 as rate
		from zs where (zs2=0 and zs3!=0) or (zs2!=0 and zs3=0);
		insert into zn_holiday_by
		select ywqid,h_id as holidayid,xlid,sale1 as saleall,sale2 as saleholiday,zs1 as zs,1 as rate
		from zs where zs2=0 and zs3=0;
	end if;

###插入春节专属表
	delete from zn_spring_xl;
	insert into zn_spring_xl(ywqid,holidayid,holidayname,xlid,xlname,saleall,saleholiday,zs,rate)
	select ywqid,holidayid,null as holidayname,xlid,null as xlname,saleall,saleholiday,zs,rate from zn_holiday_by where holidayid='01';

  delete a from zn_spring_xl a join v_zn_cg_dl_zl_xl b on a.xlid=b.xlid where b.cgid is null;
##修正春节指数
	update zn_spring_xl set zs=1 where zs<1;
	update zn_spring_xl set zs=3 where zs>4;
  update zn_spring_xl a join zn_calendar b on a.holidayid=b.holidayid set a.holidayname=b.holidayname where year(b.sundate)=year(begin_date);
	update zn_spring_xl a join v_zn_cg_dl_zl_xl b on a.xlid=b.xlid set a.xlname=b.xlname;
###过滤后，插入最终节日表
	delete from zn_holiday_xl;
	insert into zn_holiday_xl(ywqid,holidayid,holidayname,xlid,xlname,saleall,saleholiday,zs,rate)
		select a.ywqid,a.holidayid,null as holidayname,a.xlid,null as xlname,a.saleall,a.saleholiday,a.zs,a.rate 
    from zn_holiday_by a join saleStander b on a.ywqid=b.ywqid 
    where a.saleholiday>=(b.saleSum/100000);
  ##删除垃圾数据
  ##删除指数小于4的
  delete from zn_holiday_xl where zs<4;
  ##3.情人节只保留 巧克力和鲜花 的小类
	delete from zn_holiday_xl where holidayid='21' and xlid not in (select deptid from v_goods where (name like '%巧克力%' and left(deptid,1) not in(3,4,5)) or (name like '%鲜花%' and left(deptid,1) in(3,4,5)) group by deptid);
  ##2.除了春节要过滤非食品部门
  delete from zn_holiday_xl where holidayid!='01' and holidayid!='21' and left(xlid,1) in(3,4,5);
  ##4.去除生鲜
  delete a from zn_holiday_xl a left join v_zn_cg_dl_zl_xl b on a.xlid=b.xlid where b.xlid is null;
  update zn_holiday_xl a join zn_calendar b on a.holidayid=b.holidayid set a.holidayname=b.holidayname where year(b.sundate)=year(begin_date);
	update zn_holiday_xl a join v_zn_cg_dl_zl_xl b on a.xlid=b.xlid set a.xlname=b.xlname;

  ##生成节日专属商品表
  delete from zn_holiday_goods;
  insert into zn_holiday_goods(ywqid,holidayid,holidayname,xlid,xlname,goodsid,goodsname,sdate)
		select a.ywqid,a.holidayid,null as holidayname,a.xlid,null as xlname,b.goodsid,b.name,now() as sdate
		from zn_holiday_xl a join v_goods b on a.xlid=b.deptid;

  update zn_holiday_goods a join zn_calendar b on a.holidayid=b.holidayid set a.holidayname=b.holidayname where year(b.sundate)=year(begin_date);
	update zn_holiday_goods a join v_zn_cg_dl_zl_xl b on a.xlid=b.xlid set a.xlname=b.xlname;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for proc_fkc_test
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_fkc_test`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `proc_fkc_test`(IN `date2` date)
BEGIN
 #Routine body goes here...
		declare yester date;	
	 	
		set yester = date_format(DATE_SUB(date2,INTERVAL 1 day),'%Y-%m-%d');
	  
		DROP TEMPORARY TABLE if EXISTS fkc_today;
		create TEMPORARY TABLE fkc_today(
			select goodsid,classtype,closeqty from zn_goods_his where sdate=date2 and closeqty<0
		);
		DROP TEMPORARY TABLE if EXISTS fkc_yest;
		create TEMPORARY TABLE fkc_yest(
			select goodsid from zn_goods_his where sdate=yester and closeqty<0
		);
		##
		DROP TEMPORARY TABLE if EXISTS fkc_real1;
		create TEMPORARY TABLE fkc_real1(
			select goodsid,classtype,closeqty from fkc_today  where goodsid not in (select goodsid from fkc_yest )
		);
		##去除促销
		DROP TEMPORARY TABLE if EXISTS yc_wcx;
		 create TEMPORARY table yc_wcx(
		select * from fkc_real1 where goodsid not in 
		(select goodsid from zn_prom_detail where begindate >DATE_SUB(date2,INTERVAL 7 day) and  shopid='1110' 
		) and goodsid in (select goodsid from zn_dayly_sales where sdate<date2 and sdate>=DATE_SUB(date2,INTERVAL 3 day) 
					and zlprice<>normalprice
		group by goodsid
		));

		DROP TEMPORARY TABLE if EXISTS fkc_real2;
		create TEMPORARY TABLE fkc_real2(
		select  goodsid,classtype,closeqty from fkc_real1  where goodsid not in (select goodsid from yc_wcx )
		);
		 
		DROP TEMPORARY TABLE if EXISTS fkc_real3;
		create TEMPORARY TABLE fkc_real3(
		select  goodsid,classtype,closeqty  from fkc_real2  where classtype<>'T'
		);
 
		DROP TEMPORARY TABLE if EXISTS fkc_real4;
		create TEMPORARY TABLE fkc_real4(
		select a.goodsid,a.qty_ll,b.classtype  from fkc_real3 a join zn_goods_his_copy b on a.goodsid=b.goodsid 
		where flag='1' and minstock<qty+closeqty
		and sdate='2020-11-29'
		group by a.goodsid, a.qty_ll,b.classtype
		);


END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for proc_jie_organ
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_jie_organ`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `proc_jie_organ`(IN `tablename` varchar(32))
BEGIN
 
declare tablenm varchar(32);
set tablenm = tablename;

SET @STMT =CONCAT("update ",tablenm," eap,
(select distinct a.*,SUBSTRING(a.bl_organ,10,3) as bl_organ_all,SUBSTRING(a.kl_organ,10,6) as kl_organ_all 
from tmp_shop_bl_klid a inner join ",tablenm,"  b on SUBSTRING(b.xlid,1,2) =a.klid)  uf
set eap.bl_organ_all =SUBSTRING(uf.bl_organ,10,3),
    eap.kl_organ_all =SUBSTRING(uf.kl_organ,10,6)   where SUBSTRING(eap.xlid,1,2) =uf.klid;");          
PREPARE STMT FROM @STMT;   
EXECUTE STMT;  

SET @STMT =CONCAT("UPDATE ",tablenm," SET bl_organ_all = 'A06'  where bl_organ_all = 'A01' ;");
PREPARE STMT FROM @STMT;   
EXECUTE STMT;  


SET @STMT =CONCAT("UPDATE ",tablenm," SET kl_organ_all = 'A06A01'  where kl_organ_all = 'A01A01' ;");
PREPARE STMT FROM @STMT;   
EXECUTE STMT; 

SET @STMT =CONCAT("UPDATE ",tablenm," SET kl_organ_all = 'A06A02'  where kl_organ_all = 'A01A02' ;");
PREPARE STMT FROM @STMT;   
EXECUTE STMT; 

SET @STMT =CONCAT("UPDATE ",tablenm," SET kl_organ_all = 'A06A03'  where kl_organ_all = 'A01A03' ;");
PREPARE STMT FROM @STMT;   
EXECUTE STMT; 

select 1;

 


END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for proc_kczz_qdhgoods
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_kczz_qdhgoods`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `proc_kczz_qdhgoods`(IN `begindate` date,IN `enddate` date)
pro_kczz_qdhgooods:BEGIN

## =============================================
## 输入参数：begindate 开始日期 enddate 结束日期
## 计算库存周转天数以及总的库存sku
## 计算缺断货率
## 输出表 kczz_qdh
## =============================================

	declare date2 date ;   ## 所计算日期
	set date2 = date_format(begindate,'%Y-%m-%d');

	WHILE date2<=date_format(enddate,'%Y-%m-%d') 
	DO
		delete from kczz_qdh where date_format(sdate,'%Y-%m-%d')=date2 ;  ###删除数据，重新计算  

		####获取今天的库存信息
			DROP TEMPORARY TABLES	IF EXISTS stock_his1;
			CREATE TEMPORARY TABLE stock_his1(
				select organ as shopid, code AS goodsid, amount AS qty
				from tb_stock_history 
				where date_format(sdate,'%Y-%m-%d')= date2
			);
		 
			ALTER  TABLE  stock_his1  ADD  INDEX index_name(shopid);
		 
		###更新门店
			DROP TEMPORARY TABLES	IF EXISTS stock_his;
			CREATE TEMPORARY TABLE stock_his(
				select  shopid_hb as shopid,goodsid, sum(qty) as closeqty
				from stock_his1 a join zyy_md_yt_ywq b on  a.shopid=b.shopid
				group by  shopid_hb,goodsid
			);
			ALTER  TABLE  stock_his  ADD  INDEX index_name1(shopid,goodsid);
	####获取今天的理论库存信息
			DROP TEMPORARY TABLES	IF EXISTS stock_ll;
			CREATE TEMPORARY TABLE stock_ll(
				select shopid,goodsid,classtype,qty_ll 
				from stock_test 
				where date_format(sdate,'%Y-%m-%d')= date2
			);

			ALTER  TABLE  stock_ll  ADD  INDEX index_name1(shopid,goodsid);
		##求实际缺断货的商品
		 drop TEMPORARY table IF EXISTS qdh;
		 CREATE TEMPORARY table qdh(
			select a.shopid,b.classtype,a.goodsid,a.closeqty
			from stock_his  a  join v_demand b on a.shopid=b.shopid and a.goodsid=b.goodsid  
			and a.closeqty>=0
			and (a.closeqty<2 or a.closeqty<b.ndms*2)
		 );

		##求理论缺断货的商品
		 drop TEMPORARY table IF EXISTS qdh_ll;
		 CREATE TEMPORARY table qdh_ll(
			select  a.shopid,a.classtype,a.goodsid,a.qty_ll
			from stock_ll  a  join v_demand b on a.shopid=b.shopid and a.goodsid=b.goodsid  
			and a.qty_ll>=0
			and (a.qty_ll<2 or a.qty_ll<b.ndms*2)			
		 );
delete from qdh_goods where sdate=date2;
insert into qdh_goods
select '实际缺货商品',date2,shopid,classtype,goodsid,closeqty from qdh
union select '理论缺货商品',date2,shopid,classtype,goodsid,qty_ll from qdh_ll;

##写入一张表中
		set date2=DATE_ADD(date2,INTERVAL 1 DAY);
	END WHILE;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for proc_new_sum
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_new_sum`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `proc_new_sum`(IN `shopid_id` varchar(8),IN `xlid_id` varchar(32),IN `beginddate` varchar(32),IN `endddate` varchar(32))
BEGIN
declare shop_id varchar(8);
declare xl_id varchar(32);
declare begind varchar(32);
declare endd varchar(32);
declare mix_date varchar(32);
declare max_date varchar(32);
set shop_id = shopid_id;
set xl_id = xlid_id;
set begind = beginddate;
set endd = endddate;

-- 日期最小值
set mix_date =(select min(SUBSTRING(sdate,1,10)) from  zn_goods_his);
-- 日期最大值
set max_date =(select max(SUBSTRING(sdate,1,10)) from  zn_goods_his);

select mix_date;
select max_date;



DROP TABLE IF EXISTS `tmp_shop_xlid_sum`;
CREATE TABLE tmp_shop_xlid_sum (
`id` bigint(36) NOT NULL PRIMARY KEY  AUTO_INCREMENT  COMMENT '主键',
`create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
`create_time` datetime DEFAULT NULL COMMENT '创建日期',
`update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
`update_time` datetime DEFAULT NULL COMMENT '更新日期',
`sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
shopid varchar(8) DEFAULT NULL COMMENT '门店',
xlid varchar(32) DEFAULT NULL COMMENT '小类编码',
xlname varchar(64) DEFAULT NULL COMMENT '小类名称',
sum_number DECIMAL(16,2) DEFAULT NULL COMMENT '总数量',
sum_price DECIMAL(16,2) DEFAULT NULL COMMENT '总金额',
begindate date DEFAULT NULL COMMENT '起始时间',
enddate date DEFAULT NULL COMMENT '结束时间');
select begind;

-- 开始和结束日期都不为空
if(shop_id != 'null' && xl_id != 'null' && begind != 'null' && endd != 'null')   then
insert into tmp_shop_xlid_sum(shopid,xlid,xlname,sum_number,sum_price,begindate,enddate)
select a.shopid,a.xlid,b.xlname,a.sum_qty,a.sum_trueprice,a.begindate,a.enddate from (
select shopid,xlid,sum(qty) as sum_qty,sum(trueprice*qty) as sum_trueprice,
begind as begindate,endd as enddate from zn_goods_his where  qty!=0 and shopid= shopid_id and xlid=xl_id and 
(sdate between begind and endd)    ) a
inner join v_zn_cg_dl_zl_xl b on a.xlid = b.xlid;

elseif (shop_id = 'null'&& xl_id != 'null'&& begind != 'null' && endd != 'null') then 
insert into tmp_shop_xlid_sum(shopid,xlid,xlname,sum_number,sum_price,begindate,enddate)
select a.shopid,a.xlid,b.xlname,a.sum_qty,a.sum_trueprice,a.begindate,a.enddate from (
select shopid,xlid,sum(qty) as sum_qty,sum(trueprice*qty) as sum_trueprice,
begind as begindate,endd as enddate from zn_goods_his where  qty!=0  and xlid=xl_id and 
(sdate between begind and endd) group by shopid  ) a
inner join v_zn_cg_dl_zl_xl b on a.xlid = b.xlid;

elseif (xl_id = 'null'&& shop_id != 'null'&& begind != 'null' && endd != 'null') then 
-- select 1;
insert into tmp_shop_xlid_sum(shopid,xlid,xlname,sum_number,sum_price,begindate,enddate)
select a.shopid,a.xlid,b.xlname,a.sum_qty,a.sum_trueprice,a.begindate,a.enddate from (
select shopid,xlid,sum(qty) as sum_qty,sum(trueprice*qty) as sum_trueprice,
begind as begindate,endd as enddate from zn_goods_his where  qty!=0  and shopid= shopid_id and 
(sdate between begind and endd) group by xlid  ) a
inner join v_zn_cg_dl_zl_xl b on a.xlid = b.xlid;

elseif (xl_id = 'null'&& shop_id = 'null'&& begind != 'null' && endd != 'null')  then
insert into tmp_shop_xlid_sum(shopid,xlid,xlname,sum_number,sum_price,begindate,enddate)
select a.shopid,a.xlid,b.xlname,a.sum_qty,a.sum_trueprice,a.begindate,a.enddate from (
select shopid,xlid,sum(qty) as sum_qty,sum(trueprice*qty) as sum_trueprice,
begind as begindate,endd as enddate from zn_goods_his where  qty!=0  and  
(sdate between begind and endd) group by shopid,xlid  ) a
inner join v_zn_cg_dl_zl_xl b on a.xlid = b.xlid;

-- 开始和结束日期都为空
elseif (xl_id != 'null'&& shop_id != 'null'&& begind = 'null' && endd = 'null')  then
insert into tmp_shop_xlid_sum(shopid,xlid,xlname,sum_number,sum_price,begindate,enddate)
select a.shopid,a.xlid,b.xlname,a.sum_qty,a.sum_trueprice,a.begindate,a.enddate from (
select shopid,xlid,sum(qty) as sum_qty,sum(trueprice*qty) as sum_trueprice
,mix_date as begindate,max_date as enddate from zn_goods_his where  qty!=0   and shopid= shopid_id and xlid=xl_id
 group by shopid,xlid  ) a
inner join v_zn_cg_dl_zl_xl b on a.xlid = b.xlid;

elseif (xl_id = 'null'&& shop_id != 'null'&& begind = 'null' && endd = 'null')  then
insert into tmp_shop_xlid_sum(shopid,xlid,xlname,sum_number,sum_price,begindate,enddate)
select a.shopid,a.xlid,b.xlname,a.sum_qty,a.sum_trueprice,a.begindate,a.enddate from (
select shopid,xlid,sum(qty) as sum_qty,sum(trueprice*qty) as sum_trueprice
,mix_date as begindate,max_date as enddate from zn_goods_his where  qty!=0   and shopid= shopid_id 
 group by shopid,xlid  ) a
inner join v_zn_cg_dl_zl_xl b on a.xlid = b.xlid;

elseif (xl_id != 'null'&& shop_id = 'null'&& begind = 'null' && endd = 'null')  then
insert into tmp_shop_xlid_sum(shopid,xlid,xlname,sum_number,sum_price,begindate,enddate)
select a.shopid,a.xlid,b.xlname,a.sum_qty,a.sum_trueprice,a.begindate,a.enddate from (
select shopid,xlid,sum(qty) as sum_qty,sum(trueprice*qty) as sum_trueprice
,mix_date as begindate,max_date as enddate from zn_goods_his where  qty!=0   and xlid=xl_id
 group by shopid,xlid  ) a
inner join v_zn_cg_dl_zl_xl b on a.xlid = b.xlid;

elseif (xl_id = 'null'&& shop_id = 'null'&& begind = 'null' && endd = 'null')  then
insert into tmp_shop_xlid_sum(shopid,xlid,xlname,sum_number,sum_price,begindate,enddate)
select a.shopid,a.xlid,b.xlname,a.sum_qty,a.sum_trueprice,a.begindate,a.enddate from (
select shopid,xlid,sum(qty) as sum_qty,sum(trueprice*qty) as sum_trueprice
,mix_date as begindate,max_date as enddate from zn_goods_his where  qty!=0  
 group by shopid,xlid  ) a
inner join v_zn_cg_dl_zl_xl b on a.xlid = b.xlid;

-- 开始日期不为空，结束日期为空
elseif (xl_id != 'null'&& shop_id != 'null'&& begind != 'null' && endd = 'null')  then
insert into tmp_shop_xlid_sum(shopid,xlid,xlname,sum_number,sum_price,begindate,enddate)
select a.shopid,a.xlid,b.xlname,a.sum_qty,a.sum_trueprice,a.begindate,a.enddate from (
select shopid,xlid,sum(qty) as sum_qty,sum(trueprice*qty) as sum_trueprice
,begind as begindate,max_date as enddate from zn_goods_his where  qty!=0   and shopid= shopid_id and xlid=xl_id and 
(sdate between begind and max_date)  group by shopid,xlid  ) a
inner join v_zn_cg_dl_zl_xl b on a.xlid = b.xlid;

elseif (xl_id = 'null'&& shop_id != 'null'&& begind != 'null' && endd = 'null')  then
insert into tmp_shop_xlid_sum(shopid,xlid,xlname,sum_number,sum_price,begindate,enddate)
select a.shopid,a.xlid,b.xlname,a.sum_qty,a.sum_trueprice,a.begindate,a.enddate from (
select shopid,xlid,sum(qty) as sum_qty,sum(trueprice*qty) as sum_trueprice
,begind as begindate,max_date as enddate from zn_goods_his where  qty!=0   and shopid= shopid_id and 
(sdate between begind and max_date)group by shopid,xlid  ) a
inner join v_zn_cg_dl_zl_xl b on a.xlid = b.xlid;

elseif (xl_id != 'null'&& shop_id = 'null'&& begind != 'null' && endd = 'null')  then
insert into tmp_shop_xlid_sum(shopid,xlid,xlname,sum_number,sum_price,begindate,enddate)
select a.shopid,a.xlid,b.xlname,a.sum_qty,a.sum_trueprice,a.begindate,a.enddate from (
select shopid,xlid,sum(qty) as sum_qty,sum(trueprice*qty) as sum_trueprice
,begind as begindate,max_date as enddate from zn_goods_his where  qty!=0   and xlid=xl_id and 
(sdate between begind and max_date)group by shopid,xlid  ) a
inner join v_zn_cg_dl_zl_xl b on a.xlid = b.xlid;

elseif (xl_id = 'null'&& shop_id = 'null'&& begind != 'null' && endd = 'null')  then
insert into tmp_shop_xlid_sum(shopid,xlid,xlname,sum_number,sum_price,begindate,enddate)
select a.shopid,a.xlid,b.xlname,a.sum_qty,a.sum_trueprice,a.begindate,a.enddate from (
select shopid,xlid,sum(qty) as sum_qty,sum(trueprice*qty) as sum_trueprice
,begind as begindate,max_date as enddate from zn_goods_his where  qty!=0   and 
(sdate between begind and max_date) group by shopid,xlid  ) a
inner join v_zn_cg_dl_zl_xl b on a.xlid = b.xlid;

-- 开始日期为空，结束日期不为空
elseif (xl_id != 'null'&& shop_id != 'null'&& begind = 'null' && endd != 'null')  then
insert into tmp_shop_xlid_sum(shopid,xlid,xlname,sum_number,sum_price,begindate,enddate)
select a.shopid,a.xlid,b.xlname,a.sum_qty,a.sum_trueprice,a.begindate,a.enddate from (
select shopid,xlid,sum(qty) as sum_qty,sum(trueprice*qty) as sum_trueprice
,mix_date as begindate,endd as enddate from zn_goods_his where  qty!=0   and shopid= shopid_id and xlid=xl_id and 
(sdate between mix_date and endd)  group by shopid,xlid  ) a
inner join v_zn_cg_dl_zl_xl b on a.xlid = b.xlid;

elseif (xl_id = 'null'&& shop_id != 'null'&& begind = 'null' && endd != 'null')  then
insert into tmp_shop_xlid_sum(shopid,xlid,xlname,sum_number,sum_price,begindate,enddate)
select a.shopid,a.xlid,b.xlname,a.sum_qty,a.sum_trueprice,a.begindate,a.enddate from (
select shopid,xlid,sum(qty) as sum_qty,sum(trueprice*qty) as sum_trueprice
,mix_date as begindate,endd as enddate from zn_goods_his where  qty!=0   and shopid= shopid_id and 
(sdate between mix_date and endd)group by shopid,xlid  ) a
inner join v_zn_cg_dl_zl_xl b on a.xlid = b.xlid;

elseif (xl_id != 'null'&& shop_id = 'null'&& begind = 'null' && endd != 'null')  then
insert into tmp_shop_xlid_sum(shopid,xlid,xlname,sum_number,sum_price,begindate,enddate)
select a.shopid,a.xlid,b.xlname,a.sum_qty,a.sum_trueprice,a.begindate,a.enddate from (
select shopid,xlid,sum(qty) as sum_qty,sum(trueprice*qty) as sum_trueprice
,mix_date as begindate,endd as enddate from zn_goods_his where  qty!=0   and xlid=xl_id and 
(sdate between mix_date and endd)group by shopid,xlid  ) a
inner join v_zn_cg_dl_zl_xl b on a.xlid = b.xlid;

elseif (xl_id = 'null'&& shop_id = 'null'&& begind = 'null' && endd != 'null')  then
insert into tmp_shop_xlid_sum(shopid,xlid,xlname,sum_number,sum_price,begindate,enddate)
select a.shopid,a.xlid,b.xlname,a.sum_qty,a.sum_trueprice,a.begindate,a.enddate from (
select shopid,xlid,sum(qty) as sum_qty,sum(trueprice*qty) as sum_trueprice
,mix_date as begindate,endd as enddate from zn_goods_his where  qty!=0   and 
(sdate between mix_date and endd) group by shopid,xlid  ) a
inner join v_zn_cg_dl_zl_xl b on a.xlid = b.xlid;


end if;
select endd;

select * from tmp_shop_xlid_sum;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for proc_new_sum1
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_new_sum1`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `proc_new_sum1`(IN `shopid_id` varchar(8),IN `beginddate` varchar(32),IN `endddate` varchar(32))
BEGIN
declare shop_id varchar(8);
declare begind varchar(32);
declare endd varchar(32);
declare mix_date varchar(32);
declare max_date varchar(32);
set shop_id = shopid_id;
set begind = beginddate;
set endd = endddate;

-- 日期最小值
set mix_date =(select min(SUBSTRING(sdate,1,10)) from  zn_goods_his);
-- 日期最大值
set max_date =(select max(SUBSTRING(sdate,1,10)) from  zn_goods_his);

select mix_date;
select max_date;

DROP TABLE IF EXISTS `tmp_shop_sum`;
CREATE TABLE tmp_shop_sum (
`id` bigint(36) NOT NULL PRIMARY KEY  AUTO_INCREMENT  COMMENT '主键',
`create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
`create_time` datetime DEFAULT NULL COMMENT '创建日期',
`update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
`update_time` datetime DEFAULT NULL COMMENT '更新日期',
`sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
shopid varchar(8) DEFAULT NULL COMMENT '门店',
sum_number DECIMAL(16,2) DEFAULT NULL COMMENT '总数量',
sum_price DECIMAL(16,2) DEFAULT NULL COMMENT '总金额',
begindate date DEFAULT NULL COMMENT '起始时间',
enddate date DEFAULT NULL COMMENT '结束时间');

-- 开始和结束日期都不为空
if(shop_id != 'null'  && begind != 'null' && endd != 'null' )   then
insert into tmp_shop_sum(shopid,sum_number,sum_price,begindate,enddate)
select shopid,sum(qty),sum(trueprice*qty),begind as begindate,endd as enddate 
from zn_goods_his where shopid= shopid_id and (sdate between begind and endd)  ;
elseif (shop_id = 'null'  && begind != 'null' && endd != 'null' )   then
insert into tmp_shop_sum(shopid,sum_number,sum_price,begindate,enddate)
select shopid,sum(qty),sum(trueprice*qty),begind as begindate,endd as enddate 
from zn_goods_his where  (sdate between begind and endd) group by shopid  ;

-- 开始和结束日期都为空
elseif (shop_id != 'null'  && begind = 'null' && endd = 'null' )   then
insert into tmp_shop_sum(shopid,sum_number,sum_price,begindate,enddate)
select shopid,sum(qty),sum(trueprice*qty),mix_date as begindate,max_date as enddate 
from zn_goods_his where shopid= shopid_id and (sdate between mix_date and max_date)   ;
elseif (shop_id = 'null'  && begind = 'null' && endd = 'null' )   then
insert into tmp_shop_sum(shopid,sum_number,sum_price,begindate,enddate)
select shopid,sum(qty),sum(trueprice*qty),mix_date as begindate,max_date as enddate 
from zn_goods_his where  (sdate between mix_date and max_date) group by shopid  ;
-- 开始日期不为空，结束日期为空
elseif (shop_id != 'null'  && begind != 'null' && endd = 'null' )   then
insert into tmp_shop_sum(shopid,sum_number,sum_price,begindate,enddate)
select shopid,sum(qty),sum(trueprice*qty),begind as begindate,max_date as enddate 
from zn_goods_his where shopid= shopid_id and (sdate between begind and max_date)   ;
elseif (shop_id = 'null'  && begind != 'null' && endd = 'null' )   then
insert into tmp_shop_sum(shopid,sum_number,sum_price,begindate,enddate)
select shopid,sum(qty),sum(trueprice*qty),begind as begindate,max_date as enddate 
from zn_goods_his where  (sdate between begind and max_date) group by shopid  ;
-- 开始日期为空，结束日期不为空
elseif (shop_id != 'null'  && begind = 'null' && endd != 'null' )   then
insert into tmp_shop_sum(shopid,sum_number,sum_price,begindate,enddate)
select shopid,sum(qty),sum(trueprice*qty),mix_date as begindate,endd as enddate 
from zn_goods_his where shopid= shopid_id and (sdate between mix_date and endd)   ;
elseif (shop_id = 'null'  && begind = 'null' && endd != 'null' )   then
insert into tmp_shop_sum(shopid,sum_number,sum_price,begindate,enddate)
select shopid,sum(qty),sum(trueprice*qty),mix_date as begindate,endd as enddate 
from zn_goods_his where  (sdate between mix_date and endd) group by shopid  ;



end if;



select * from tmp_shop_sum;





END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for proc_prom_status
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_prom_status`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `proc_prom_status`(IN `sta_tus` varchar(1),IN `plan_id` varchar(64),IN `id` varchar(64))
BEGIN
	
DECLARE stat varchar(1);
DECLARE plid varchar(64);
DECLARE id_id varchar(64);
set stat= sta_tus ;
set plid = plan_id ;
set id_id = id;


-- 促销商品表
-- 更新计划（名称、编号、日期）
update zn_prom_goods a,zn_prom_plan b
set a.planid=b.planid,
    a.planname=b.planname,
    a.begindate=b.begindate,
    a.enddate=b.enddate
where a.serialid=b.id  and a.serialid=id_id ;
-- 更新商品名称
-- 更新小类编码
update zn_prom_goods a,v_goods b
set a.goodsname=b.name,
    a.xlid=b.deptid
where a.goodsid = b.goodsid and a.serialid=id_id ;



-- 更新 部类全部机构编码
-- 更新 课类全部机构编码
UPDATE zn_prom_goods  a ,tmp_shop_bl_klid b
SET a.bl_organ_all = b.bl_organ_all ,
    a.kl_organ_all = b.kl_organ_all
where SUBSTRING(a.xlid,1,2)=b.klid  and a.serialid=id_id ;


-- select stat;
if (stat ='1')  then 
insert into zn_prom_detail(planid,planname,begindate,enddate,xlid,goodsid,goodsname,price,shopid,flag,id_goods)
select * from 
(
-- select a.planid,a.planname,a.begindate,a.enddate,b.goodsid,b.goodsname,b.price,c.shopid,'0' as flag from zn_prom_plan as a inner join zn_prom_goods as b on a.id = b.serialid inner join  zn_prom_shop as c on a.id = c.serialid
select a.planid,a.planname,a.begindate,a.enddate,d.deptid as xlid,b.goodsid,
d.name as goodsname,b.price,c.shopid,'0' as flag,b.id
from zn_prom_plan as a 
inner join zn_prom_goods as b on a.id = b.serialid 
inner join  zn_prom_shop as c on a.id = c.serialid       
inner join v_goods d on b.goodsid=d.goodsid
) as d where d.planid = plid;

update zn_prom_plan set status='2' where planid = plid;

-- 更新 门店机构编码
UPDATE zn_prom_detail eap,
(select distinct a.shopid,b.shop_organ from  zn_prom_detail  a  inner join  tmp_shop_bl_klid b   on   a.shopid =b.shopid) uf
SET eap.shop_organ = uf.shop_organ
WHERE
    eap.shopid = uf.shopid and eap.planid = plid  ;

-- 更新 部类机构编码
UPDATE zn_prom_detail eap,
(select distinct a.shopid,a.xlid,b.bl_organ from  zn_prom_detail  a  
inner join  tmp_shop_bl_klid b   on   SUBSTRING(a.xlid,1,1) =b.blid and  a.shopid =b.shopid) uf
SET eap.bl_organ = uf.bl_organ
WHERE
    eap.shopid = uf.shopid and eap.xlid=uf.xlid and eap.planid = plid;


-- 更新 课类机构编码
UPDATE zn_prom_detail eap,
(select distinct a.shopid,a.xlid,b.kl_organ from  zn_prom_detail  a  
inner join  tmp_shop_bl_klid b   on   SUBSTRING(a.xlid,1,2) =b.klid and SUBSTRING(a.xlid,1,1) =b.blid and  a.shopid =b.shopid) uf
SET eap.kl_organ = uf.kl_organ
WHERE
    eap.shopid = uf.shopid and eap.xlid=uf.xlid and eap.planid = plid;


-- 更新 部类全部机构编码
UPDATE zn_prom_detail  eap
SET bl_organ_all = SUBSTRING(bl_organ,10,3) where  eap.planid = plid;

-- 更新 课类全部机构编码
UPDATE zn_prom_detail  eap
SET kl_organ_all = SUBSTRING(kl_organ,10,6) where  eap.planid = plid;

-- 添加完这两个部类、课类全部机构代码之后，重新查看一下这个补货表
select * from zn_prom_detail ;

-- 更新 部类编码
UPDATE zn_prom_detail  eap
SET blid = SUBSTRING(xlid,1,1) where  eap.planid = plid;

-- 更新 课类编码
UPDATE zn_prom_detail  eap
SET cgid = SUBSTRING(xlid,1,2) where  eap.planid = plid;

-- 将部类全部机构代码A01变成A06   ，将课类全部机构代码   A01A01变成A06A01，A01A02变成A06A02，A01A03变成A06A03
-- 更新
UPDATE zn_prom_detail 
SET bl_organ_all = 'A06'  where bl_organ_all = 'A01' ;


UPDATE zn_prom_detail 
SET kl_organ_all = 'A06A01'  where kl_organ_all = 'A01A01' ;
UPDATE zn_prom_detail 
SET kl_organ_all = 'A06A02'  where kl_organ_all = 'A01A02' ;
UPDATE zn_prom_detail 
SET kl_organ_all = 'A06A03'  where kl_organ_all = 'A01A03' ;


-- 输出 判断值
select stat;
elseif (stat = '2') then 
delete  from  zn_prom_detail  where planid = plid ;
insert into zn_prom_detail(planid,planname,begindate,enddate,xlid,goodsid,goodsname,price,shopid,flag,id_goods)
select * from (select a.planid,a.planname,a.begindate,a.enddate,d.deptid as xlid,
b.goodsid,d.name as goodsname,b.price,c.shopid,'0' as flag,b.id
from zn_prom_plan as a 
inner join zn_prom_goods as b on a.id = b.serialid 
inner join  zn_prom_shop as c on a.id = c.serialid       
inner join v_goods d on b.goodsid=d.goodsid) d where d.planid = plid ;

update zn_prom_plan set status='2' where planid = plid;

-- 更新 门店机构编码
UPDATE zn_prom_detail eap,
(select distinct a.shopid,b.shop_organ from  zn_prom_detail  a  inner join  tmp_shop_bl_klid b   on   a.shopid =b.shopid) uf
SET eap.shop_organ = uf.shop_organ
WHERE
    eap.shopid = uf.shopid and eap.planid = plid  ;

-- 更新 部类机构编码
UPDATE zn_prom_detail eap,
(select distinct a.shopid,a.xlid,b.bl_organ from  zn_prom_detail  a  
inner join  tmp_shop_bl_klid b   on   SUBSTRING(a.xlid,1,1) =b.blid and  a.shopid =b.shopid) uf
SET eap.bl_organ = uf.bl_organ
WHERE
    eap.shopid = uf.shopid and eap.xlid=uf.xlid and eap.planid = plid;


-- 更新 课类机构编码
UPDATE zn_prom_detail eap,
(select distinct a.shopid,a.xlid,b.kl_organ from  zn_prom_detail  a  
inner join  tmp_shop_bl_klid b   on   SUBSTRING(a.xlid,1,2) =b.klid and SUBSTRING(a.xlid,1,1) =b.blid and  a.shopid =b.shopid) uf
SET eap.kl_organ = uf.kl_organ
WHERE
    eap.shopid = uf.shopid and eap.xlid=uf.xlid and eap.planid = plid;


-- 更新 部类全部机构编码
UPDATE zn_prom_detail eap
SET bl_organ_all = SUBSTRING(bl_organ,10,3) where  eap.planid = plid;

-- 更新 课类全部机构编码
UPDATE zn_prom_detail eap
SET kl_organ_all = SUBSTRING(kl_organ,10,6) where  eap.planid = plid;

-- 添加完这两个部类、课类全部机构代码之后，重新查看一下这个补货表
select * from zn_prom_detail ;

-- 更新 部类编码
UPDATE zn_prom_detail eap
SET blid = SUBSTRING(xlid,1,1) where  eap.planid = plid;

-- 更新 课类编码
UPDATE zn_prom_detail eap
SET cgid = SUBSTRING(xlid,1,2) where  eap.planid = plid;

-- 将部类全部机构代码A01变成A06   ，将课类全部机构代码   A01A01变成A06A01，A01A02变成A06A02，A01A03变成A06A03
-- 更新
UPDATE zn_prom_detail 
SET bl_organ_all = 'A06'  where bl_organ_all = 'A01' ;


UPDATE zn_prom_detail 
SET kl_organ_all = 'A06A01'  where kl_organ_all = 'A01A01' ;
UPDATE zn_prom_detail 
SET kl_organ_all = 'A06A02'  where kl_organ_all = 'A01A02' ;
UPDATE zn_prom_detail 
SET kl_organ_all = 'A06A03'  where kl_organ_all = 'A01A03' ;

-- 输出 判断值
select concat(stat,1);
else  
select 2;
end if;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for proc_prom_status_copy
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_prom_status_copy`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `proc_prom_status_copy`(IN `sta_tus` varchar(1),IN `plan_id` varchar(64))
BEGIN
	
DECLARE stat varchar(1);
DECLARE plid varchar(64);
set stat= sta_tus ;
set plid = plan_id ;
-- select stat;
if (stat ='1')  then 
insert into zn_prom_detail(planid,planname,begindate,enddate,xlid,goodsid,goodsname,price,shopid,flag)
select * from 
(
-- select a.planid,a.planname,a.begindate,a.enddate,b.goodsid,b.goodsname,b.price,c.shopid,'0' as flag from zn_prom_plan as a inner join zn_prom_goods as b on a.id = b.serialid inner join  zn_prom_shop as c on a.id = c.serialid
select a.planid,a.planname,a.begindate,a.enddate,d.deptid as xlid,b.goodsid,d.name as goodsname,b.price,c.shopid,'0' as flag
from zn_prom_plan as a 
inner join zn_prom_goods as b on a.id = b.serialid 
inner join  zn_prom_shop as c on a.id = c.serialid       
inner join v_goods d on b.goodsid=d.goodsid
) as d where d.planid = plid;

update zn_prom_plan set status='2' where planid = plid;

-- 更新 门店机构编码
UPDATE zn_prom_detail eap,
(select distinct a.shopid,b.shop_organ from  zn_prom_detail  a  inner join  tmp_shop_bl_klid b   on   a.shopid =b.shopid) uf
SET eap.shop_organ = uf.shop_organ
WHERE
    eap.shopid = uf.shopid and eap.planid = plid  ;

-- 更新 部类机构编码
UPDATE zn_prom_detail eap,
(select distinct a.shopid,a.xlid,b.bl_organ from  zn_prom_detail  a  
inner join  tmp_shop_bl_klid b   on   SUBSTRING(a.xlid,1,1) =b.blid and  a.shopid =b.shopid) uf
SET eap.bl_organ = uf.bl_organ
WHERE
    eap.shopid = uf.shopid and eap.xlid=uf.xlid and eap.planid = plid;


-- 更新 课类机构编码
UPDATE zn_prom_detail eap,
(select distinct a.shopid,a.xlid,b.kl_organ from  zn_prom_detail  a  
inner join  tmp_shop_bl_klid b   on   SUBSTRING(a.xlid,1,2) =b.klid and SUBSTRING(a.xlid,1,1) =b.blid and  a.shopid =b.shopid) uf
SET eap.kl_organ = uf.kl_organ
WHERE
    eap.shopid = uf.shopid and eap.xlid=uf.xlid and eap.planid = plid;


-- 更新 部类全部机构编码
UPDATE zn_prom_detail  eap
SET bl_organ_all = SUBSTRING(bl_organ,10,3) where  eap.planid = plid;

-- 更新 课类全部机构编码
UPDATE zn_prom_detail  eap
SET kl_organ_all = SUBSTRING(kl_organ,10,6) where  eap.planid = plid;

-- 添加完这两个部类、课类全部机构代码之后，重新查看一下这个补货表
select * from zn_prom_detail ;

-- 更新 部类编码
UPDATE zn_prom_detail  eap
SET blid = SUBSTRING(xlid,1,1) where  eap.planid = plid;

-- 更新 课类编码
UPDATE zn_prom_detail  eap
SET cgid = SUBSTRING(xlid,1,2) where  eap.planid = plid;

-- 将部类全部机构代码A01变成A06   ，将课类全部机构代码   A01A01变成A06A01，A01A02变成A06A02，A01A03变成A06A03
-- 更新
UPDATE zn_prom_detail 
SET bl_organ_all = 'A06'  where bl_organ_all = 'A01' ;


UPDATE zn_prom_detail 
SET kl_organ_all = 'A06A01'  where kl_organ_all = 'A01A01' ;
UPDATE zn_prom_detail 
SET kl_organ_all = 'A06A02'  where kl_organ_all = 'A01A02' ;
UPDATE zn_prom_detail 
SET kl_organ_all = 'A06A03'  where kl_organ_all = 'A01A03' ;


-- 输出 判断值
select stat;
elseif (stat = '2') then 
delete  from  zn_prom_detail  where planid = plid ;
insert into zn_prom_detail(planid,planname,begindate,enddate,xlid,goodsid,goodsname,price,shopid,flag)
select * from (select a.planid,a.planname,a.begindate,a.enddate,d.deptid as xlid,b.goodsid,d.name as goodsname,b.price,c.shopid,'0' as flag
from zn_prom_plan as a 
inner join zn_prom_goods as b on a.id = b.serialid 
inner join  zn_prom_shop as c on a.id = c.serialid       
inner join v_goods d on b.goodsid=d.goodsid) d where d.planid = plid ;

update zn_prom_plan set status='2' where planid = plid;

-- 更新 门店机构编码
UPDATE zn_prom_detail eap,
(select distinct a.shopid,b.shop_organ from  zn_prom_detail  a  inner join  tmp_shop_bl_klid b   on   a.shopid =b.shopid) uf
SET eap.shop_organ = uf.shop_organ
WHERE
    eap.shopid = uf.shopid and eap.planid = plid  ;

-- 更新 部类机构编码
UPDATE zn_prom_detail eap,
(select distinct a.shopid,a.xlid,b.bl_organ from  zn_prom_detail  a  
inner join  tmp_shop_bl_klid b   on   SUBSTRING(a.xlid,1,1) =b.blid and  a.shopid =b.shopid) uf
SET eap.bl_organ = uf.bl_organ
WHERE
    eap.shopid = uf.shopid and eap.xlid=uf.xlid and eap.planid = plid;


-- 更新 课类机构编码
UPDATE zn_prom_detail eap,
(select distinct a.shopid,a.xlid,b.kl_organ from  zn_prom_detail  a  
inner join  tmp_shop_bl_klid b   on   SUBSTRING(a.xlid,1,2) =b.klid and SUBSTRING(a.xlid,1,1) =b.blid and  a.shopid =b.shopid) uf
SET eap.kl_organ = uf.kl_organ
WHERE
    eap.shopid = uf.shopid and eap.xlid=uf.xlid and eap.planid = plid;


-- 更新 部类全部机构编码
UPDATE zn_prom_detail eap
SET bl_organ_all = SUBSTRING(bl_organ,10,3) where  eap.planid = plid;

-- 更新 课类全部机构编码
UPDATE zn_prom_detail eap
SET kl_organ_all = SUBSTRING(kl_organ,10,6) where  eap.planid = plid;

-- 添加完这两个部类、课类全部机构代码之后，重新查看一下这个补货表
select * from zn_prom_detail ;

-- 更新 部类编码
UPDATE zn_prom_detail eap
SET blid = SUBSTRING(xlid,1,1) where  eap.planid = plid;

-- 更新 课类编码
UPDATE zn_prom_detail eap
SET cgid = SUBSTRING(xlid,1,2) where  eap.planid = plid;

-- 将部类全部机构代码A01变成A06   ，将课类全部机构代码   A01A01变成A06A01，A01A02变成A06A02，A01A03变成A06A03
-- 更新
UPDATE zn_prom_detail 
SET bl_organ_all = 'A06'  where bl_organ_all = 'A01' ;


UPDATE zn_prom_detail 
SET kl_organ_all = 'A06A01'  where kl_organ_all = 'A01A01' ;
UPDATE zn_prom_detail 
SET kl_organ_all = 'A06A02'  where kl_organ_all = 'A01A02' ;
UPDATE zn_prom_detail 
SET kl_organ_all = 'A06A03'  where kl_organ_all = 'A01A03' ;

-- 输出 判断值
select concat(stat,1);
else  
select 2;
end if;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for proc_seasonGoods
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_seasonGoods`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `proc_seasonGoods`(IN `begindate` date,IN `enddate` date,IN `bsummer` char,IN `esummer` char,IN `bwinter` char,IN `ewinter` char,IN `i` int)
BEGIN  ##季节性商品每年大致在一月 或 二月 重新生成
  declare n int;
  declare j int;
  declare date1 date;
  declare date2 date;
  declare ydate1 date;
  declare ydate2 date;
  declare mydate1 date;  ##最晚有销售日期
  declare mydate2 date;  ##最早有销售日期

	#begindate ,enddate 输入为最近一年日期，一次计算i年
  set n=1;
  set ydate1=begindate;
  set ydate2=enddate;
  ##1.过滤掉年累计销售过小的小类
  drop TEMPORARY table if exists saleStander;
	create TEMPORARY table saleStander(
		select b.ywqid,sum(salevalue) as saleSum from zn_dayly_sales a join v_zn_md_yt_ywq b on a.shopid=b.shopid join v_goods c on a.goodsid=c.goodsid
		where sdate>=begindate and sdate<=enddate
		group by b.ywqid
	);

  set j=1;

	drop TEMPORARY table if exists zs;
		create TEMPORARY table zs(
			ywqid varchar(8),
			xlid varchar(16),
      bd char(5),
      ed char(5),
      sale1 dec(32,3),
      sale2 dec(32,3),
			zs1 dec(16,2),
			zs2 dec(16,2),
			zs3 dec(16,2)
	);

while n<=i
	do 		
      ##取一年最晚有销售日期
			select max(sdate) into mydate1 from zn_dayly_sales where sdate>=ydate1 and sdate<=ydate2;

      drop TEMPORARY table if exists noshop;
      create TEMPORARY table noshop(
				select shopid from v_zn_md_yt_ywq where 1=2
			);
      if n!=3
      then
			##找出不满一年的新店
				drop TEMPORARY table if exists noshop;
        create TEMPORARY table noshop(
					select shopid 
					from zn_dayly_sales 
					where sdate between ydate1 and ydate2 and shopid not in(select shopid from zn_dayly_sales where sdate between DATE_ADD(ydate1,INTERVAL -1 year) and DATE_ADD(ydate2,INTERVAL -1 year) group by shopid)
					group by Shopid
				);
			end if;

			##计算全年指数(去除1，2月)
			drop TEMPORARY table if exists zs_all;
				create TEMPORARY table zs_all(
					##计算全年指数
					select c.ywqid,b.deptid,ydate1 as bd,ydate2 as ed,sum(salevalue) as sale1,(sum(salevalue)/(DATEDIFF(mydate1,DATE_ADD(ydate1,INTERVAL 2 month))+1)) as all_zs
					from zn_dayly_sales a join v_goods b on a.goodsid=b.goodsid	join v_zn_md_yt_ywq c on a.shopid=c.shopid
																left join noshop e on a.shopid=e.shopid
					where sdate>=DATE_ADD(ydate1,INTERVAL 2 month) and sdate<=ydate2 and e.shopid is null
					group by c.ywqid,b.deptid
				);

		#############开始计算季节指数		
		while j<=2
		do 
			##设置季节时间
      if j=1
			then 
				set date1=CONCAT(year(ydate1),'-',bsummer);
				set date2=concat(year(ydate2),'-',esummer);
			end if;
			if j=2
			THEN
				set date1=concat(year(ydate1),'-',bwinter);
				set date2=concat(year(ydate2),'-',ewinter);
			end if;

      if j=1
			then
				drop TEMPORARY table if EXISTS h_zs;
				create TEMPORARY table h_zs( 
					##计算夏季季节期间指数
					select c.ywqid,b.deptid,bsummer as bd,esummer as ed,00000000000000.00 as sale1,sum(salevalue) as sale2,sum(salevalue)/(DATEDIFF(date2,date1)+1) as h_zs
					from zn_dayly_sales a join v_goods b on a.goodsid=b.goodsid join v_zn_md_yt_ywq c on a.shopid=c.shopid
																left join noshop d on a.shopid=d.shopid
					where sdate>=date1 and sdate<=date2 and d.shopid is null
					group by c.ywqid,b.deptid		
				); 
			end if;

      if j=2
			then
				drop TEMPORARY table if EXISTS h_zs;
				create TEMPORARY table h_zs( 
					##计算冬季季节期间指数（不包含1，2月)
					select c.ywqid,b.deptid,bwinter as bd,ewinter as ed,00000000000000.00 as sale1,sum(salevalue) as sale2,sum(salevalue)/(DATEDIFF(mydate1,date1)+2+DATEDIFF(date2,DATE_ADD(ydate1,INTERVAL 2 month))) as h_zs
					from zn_dayly_sales a join v_goods b on a.goodsid=b.goodsid join v_zn_md_yt_ywq c on a.shopid=c.shopid
																left join noshop d on a.shopid=d.shopid
					where ((sdate>=DATE_ADD(ydate1,INTERVAL 2 month) and sdate<=date2) or (sdate>=date1 and sdate<=ydate2)) and d.shopid is null
					group by c.ywqid,b.deptid		
				); 			
			end if;
		  update h_zs a join zs_all b on a.ywqid=b.ywqid and a.deptid=b.deptid set a.h_zs=a.h_zs/b.all_zs,a.sale1=b.sale1;

			if n=1 
			then
				##插入最近一年的数据，而用前两年的数据更新可以过滤掉最近一年已经不存在的小类
				insert into zs
				select ywqid,deptid,bd,ed,sale1,sale2,h_zs,0.00,0.00 from h_zs;
			end if;
			if n=2
			THEN
				update zs a join h_zs b on a.ywqid=b.ywqid and a.xlid=b.deptid and a.bd=b.bd and a.ed=b.ed
				set a.zs2=b.h_zs;
			end if;
			if n=3
			THEN
				update zs a join h_zs b on a.ywqid=b.ywqid and a.xlid=b.deptid and a.bd=b.bd and a.ed=b.ed
				set a.zs3=b.h_zs;
			end if;  

      set j=j+1;
		end while;

		set ydate1=DATE_ADD(ydate1,INTERVAL -1 year);
		set ydate2=DATE_ADD(ydate2,INTERVAL -1 year);
		set j=1;
		set n=n+1;
	end while;

  ##将结果插入到结果表中
  if i=1
  THEN
		drop table if EXISTS zn_season_by;
		create table zn_season_by(
			select ywqid,xlid,bd as begindate,ed as enddate,sale1,sale2,right(DATE_ADD(concat(year(begindate),'-',bd),INTERVAL -2 week),5) as arrdate,zs1 as zs
			from zs
		);
  end if;
  if i=2
  THEN
		drop table if EXISTS zn_season_by;
		create table zn_season_by(
			select ywqid,xlid,bd as begindate,ed as enddate,sale1,sale2,right(DATE_ADD(concat(year(begindate),'-',bd),INTERVAL -2 week),5) as arrdate,(zs1+zs2)/2 as zs
			from zs where zs2!=0      
		);
    insert into zn_season_by
		select ywqid,xlid,bd as begindate,ed as enddate,sale1,sale2,right(DATE_ADD(concat(year(begindate),'-',bd),INTERVAL -2 week),5) as arrdate,zs1 as zs
		from zs where zs2=0;
  end if;
  if i=3
  THEN
		drop table if EXISTS zn_season_by;
		create table zn_season_by(
			select ywqid,xlid,bd as begindate,ed as enddate,sale1,sale2,right(DATE_ADD(concat(year(begindate),'-',bd),INTERVAL -2 week),5) as arrdate,(zs1+zs2+zs3)/3 as zs
			from zs where zs2!=0 and zs3!=0
		);
		insert into zn_season_by
		select ywqid,xlid,bd as begindate,ed as enddate,sale1,sale2,right(DATE_ADD(concat(year(begindate),'-',bd),INTERVAL -2 week),5) as arrdate,(zs1+zs2+zs3)/2 as zs
		from zs where (zs2!=0 and zs3=0) or (zs2=0 and zs3!=0);
    insert into zn_season_by
		select ywqid,xlid,bd as begindate,ed as enddate,sale1,sale2,right(DATE_ADD(concat(year(begindate),'-',bd),INTERVAL -2 week),5) as arrdate,zs1 as zs
		from zs where zs2=0 and zs3=0;
  end if;


##过滤指数低的
	drop TEMPORARY table if exists sxl;
	create TEMPORARY table if not exists sxl(
		select a.ywqid,a.xlid,a.begindate,a.enddate,arrdate,70 as period1,90 as rate1,100 as period2,100 as rate2,NOW() as sdate
		from zn_season_by a join saleStander b on a.ywqid=b.ywqid
		where zs>=1.4 and a.sale2>=(b.saleSum/100000)
	);  
	update sxl a join zn_season_xl b on a.ywqid=b.ywqid and a.xlid=b.xlid
  set a.begindate=b.begindate,a.enddate=b.enddate,a.arrdate=b.arrdate,a.period1=b.period1,a.rate1=b.rate1,a.period2=b.period2,a.rate2=b.rate2; 
  delete from zn_season_xl;
  insert into zn_season_xl(ywqid,xlid,xlname,begindate,enddate,arrdate,period1,rate1,period2,rate2,sdate)
		select ywqid,xlid,null as xlname,begindate,enddate,arrdate,period1,rate1,period2,rate2,sdate 
    from sxl;

  ##删除垃圾数据
  ##2.过滤节日专属商品
  delete a from zn_season_xl a join zn_holiday_xl b on a.ywqid=b.ywqid and a.xlid=b.xlid where b.zs>=8;
  ##3.除去生鲜(生鲜以在采购线视图中控制）
  delete a from zn_season_xl a left join v_zn_cg_dl_zl_xl b on a.xlid=b.xlid where b.xlid is null;
  update zn_season_xl a join v_zn_cg_dl_zl_xl b on a.xlid=b.xlid set a.xlname=b.xlname;
  ##更新季节商品季节期间日销售的均值
  set j=1;
	while j<=2
	do
		##夏季
		if j=1
		then
      set date1=CONCAT(year(begindate),'-',bsummer);
		  set date2=concat(year(begindate),'-',esummer);
			delete from zn_season_goods;
			insert into zn_season_goods(shopid,shopname,goodsid,goodsname,begindate,enddate,avg_qty_day,sdate)
				select shopid,null as shopname,goodsid,null as goodsname,bsummer as begindate,esummer as enddate,sum(qty)/DATEDIFF(date2,date1)+1 as avg_qty_day,NOW() as sdate
				from zn_dayly_sales 
				where sdate between date1 and date2
				group by shopid,goodsid;
			delete a from zn_season_goods a join v_zn_md_yt_ywq b on a.shopid=b.shopid 
																		join v_goods c on a.goodsid=c.goodsid
																		left join zn_season_xl d on b.ywqid=d.ywqid and c.deptid=d.xlid and a.begindate=d.begindate and a.enddate=d.enddate
			where d.sdate is null and a.begindate=bsummer and a.enddate=esummer;
		 end if;
    ##冬季
		if j=2
		then
			  set date1=concat(year(begindate),'-',bwinter);
				set date2=concat(year(begindate),'-',ewinter);
			  insert into zn_season_goods(shopid,shopname,goodsid,goodsname,begindate,enddate,avg_qty_day,sdate)
				select shopid,null,goodsid,null,bwinter,ewinter,sum(qty)/(DATEDIFF(mydate1,date1)+2+DATEDIFF(date2,begindate)) as avg_qty_week,NOW() as sdate
				from zn_dayly_sales 
				where ((sdate>=DATE_ADD(begindate,INTERVAL 2 month) and sdate<=date2) or (sdate>=date1 and sdate<=enddate))
				group by shopid,goodsid;
			  
        delete a from zn_season_goods a join v_zn_md_yt_ywq b on a.shopid=b.shopid 
																		join v_goods c on a.goodsid=c.goodsid
																		left join zn_season_xl d on b.ywqid=d.ywqid and c.deptid=d.xlid and a.begindate=d.begindate and a.enddate=d.enddate
			  where d.sdate is null and a.begindate=bwinter and a.enddate=ewinter;
		 end if;
     set j=j+1;
	end while;

	update zn_season_goods a join v_zn_md_yt_ywq b on a.shopid=b.shopid set a.shopname=b.shopname;
  update zn_season_goods a join v_goods b on a.goodsid=b.goodsid set a.goodsname=b.name;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for proc_stock_history
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_stock_history`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `proc_stock_history`()
BEGIN
	###每天晚上8点将实时库存记为当日库存以历史数据保留

	insert into tb_stock_history
	select *,now() from tb_cur_stock;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for proc_stock_test_dayly
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_stock_test_dayly`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `proc_stock_test_dayly`(IN `begindate` date,IN `enddate` date)
proc_stock_test_dayly:BEGIN
	#Routine body goes here...
##   测算以每日补货进行补货的库存信息
##	 开始日期 begindate    
##	 结束日期 enddate
##	 使用表 tb_stock_history、zn_dayly_sales、zn_goods_his
##	 结果表 zn_stock_test库存的理论与实际数据,shop_class_kczz理论与实际的库存周转天数
		/*
		create table stock_test(
			sdate datetime, 
			shopid varchar(16), 
			xlid varchar(32),
			goodsid varchar(64),
			goodsname varchar(64),
			inqty_real DECIMAL(16,3),
			qty_real DECIMAL(16,3),
			inqty_ll DECIMAL(16,3),
			qty_ll DECIMAL(16,3),
			flag varchar(1),
			saleqty DECIMAL(16,2),
			minorder DECIMAL(16,2),
			seasontype VARCHAR(1),
			salevalue DECIMAL(16,2),
			discvslue DECIMAL(16,2),
			disc int(16)
		);
		*/
	DECLARE i int;
	DECLARE shopid1 VARCHAR(16);
	DECLARE date2 date;
	set shopid1='1110';
	set i =0;

	WHILE i<= DATEDIFF(enddate,begindate)
	DO
		set date2=date_format(DATE_ADD(begindate,INTERVAL i day),'%Y-%m-%d');

		##获取管库存正常状态的商品
		DROP TEMPORARY TABLES	IF EXISTS goods;
		CREATE TEMPORARY TABLE goods(
			select date2 as sdate, shopid,goodsid
			from v_goodsshop
			where flag in (0,8,9) and deleted='N' and shopid=shopid1
		);
		INSERT into goods
		select DATE_sub(date2,INTERVAL 1 day) ,shopid,goodsid
			from v_goodsshop
			where flag in (0,8,9) and deleted='N' and shopid=shopid1;

		ALTER  TABLE  goods  ADD  INDEX index_name1(sdate,shopid,goodsid);
 
		####获取两天的库存信息
		DROP TEMPORARY TABLES	IF EXISTS stock_his1;
		CREATE TEMPORARY TABLE stock_his1(
			select date_format(sdate,'%Y-%m-%d')as sdate,organ as shopid, code AS goodsid, amount AS qty
			from  tb_stock_history 
			where   date_format(sdate,'%Y-%m-%d') >= DATE_sub(date2,INTERVAL 1 day) and date_format(sdate,'%Y-%m-%d')<=date2
		);
	 
		ALTER  TABLE  stock_his1  ADD  INDEX index_name(shopid);
 
/*
		update stock_his1 a join md_yt_ywq b on  a.shopid=b.shopid
		set a.shopid=b.shopid_hb;
*/
 
		DROP TEMPORARY TABLES	IF EXISTS stock_his2;
		CREATE TEMPORARY TABLE stock_his2(
			select sdate,shopid_hb as shopid,goodsid, sum(qty) as qty
			from stock_his1 a join zyy_md_yt_ywq b on  a.shopid=b.shopid and b.shopid_hb=shopid1
			group by sdate,shopid_hb,goodsid
		);
 
		ALTER  TABLE  stock_his2  ADD  INDEX index_name1(shopid,goodsid);
 
  
		DROP TEMPORARY TABLES	IF EXISTS stock_his;
		CREATE TEMPORARY TABLE stock_his(
			select a.sdate ,a.shopid,a.goodsid,case when qty is null THEN 0
																													else qty end as qty
			from goods a left join stock_his2  b on a.sdate=b.sdate and a.shopid=b.shopid and a.goodsid=b.goodsid
		);
		ALTER  TABLE  stock_his  ADD  INDEX index_name(sdate);
		ALTER  TABLE  stock_his  ADD  INDEX index_name1(shopid,goodsid);
  		####商品销售信息
		DROP TEMPORARY TABLES	IF EXISTS sale;
		CREATE TEMPORARY TABLE sale(
			select sdate,shopid,goodsid,goodsname,qty,salevalue,discvalue,disc from zn_dayly_sales 
			where date_format(sdate,'%Y-%m-%d') = date2 
		);
		ALTER  TABLE  sale  ADD  INDEX index_name(sdate);
		ALTER  TABLE  sale  ADD  INDEX index_name1(shopid,goodsid);

		#$$$计算当日实际补货量--今日日终库存加上销量
		DROP TEMPORARY TABLES	IF EXISTS stock_real1;
		CREATE TEMPORARY TABLE stock_real1(
			select a.sdate,a.shopid,a.goodsid,b.goodsname,
			case when b.qty is null THEN a.qty
					 ELSE a.qty+b.qty END  inqty_real,a.qty as qty_real 
			from  stock_his a left join sale b 
									on a.goodsid=b.goodsid and a.shopid=b.shopid
			where date_format(a.sdate,'%Y-%m-%d') = date2
		);
		ALTER  TABLE  stock_real1  ADD  INDEX index_name (sdate);
		ALTER  TABLE  stock_real1  ADD  INDEX index_name1(shopid,goodsid);

		#$$$计算当日实际补货量--减去昨天的日终库存
		DROP TEMPORARY TABLES	IF EXISTS stock_real;
		CREATE TEMPORARY TABLE stock_real(
			select a.sdate,a.shopid,a.goodsid,a.goodsname,a.inqty_real-b.qty as inqty_real,a.qty_real 
			from  stock_real1 a left join stock_his b 
									on  a.goodsid=b.goodsid and a.shopid=b.shopid
			where date_format(b.sdate,'%Y-%m-%d') = DATE_sub(date2,INTERVAL 1 day)##昨日日终库存
								
		);
		ALTER  TABLE  stock_real  ADD  INDEX index_name(sdate);
		ALTER  TABLE  stock_real  ADD  INDEX index_name1(shopid,goodsid);
 
/*
		update stock_real a, stock_his b 
		set a.inqty_real=a.inqty_real-b.qty
		where date_format(b.sdate,'%Y-%m-%d')= date_format(DATE_ADD(begindate,INTERVAL i-1 day),'%Y-%m-%d')and a.shopid=b.shopid and a.goodsid=b.goodsid ;
*/
 		####取理论补货数量，以补货订单的日期减三来增加补货数量（默认三天到货的商品）
	 	DROP TEMPORARY TABLES	IF EXISTS zn_good;
		CREATE TEMPORARY TABLE zn_good(
			select  shopid,xlid,goodsid,classtype, flag,minstock,minorder,seasontype, qty AS inqty_ll,trueprice
			from  zn_goods_his
			where date_format(sdate,'%Y-%m-%d') = date_add(date2,interval -3 day) and classtype<>'T' and shopid='1110'
		);
		####插入默认七天到货的商品
		insert into zn_good
		select  shopid,xlid,goodsid,classtype, flag,minstock,minorder,seasontype, qty AS inqty_ll,trueprice
			from  zn_goods_his
			where date_format(sdate,'%Y-%m-%d') = date_add(date2,interval -7 day) and classtype='T' and shopid='1110';

		ALTER  TABLE  zn_good  ADD  INDEX index_name (shopid,goodsid);
		#$$$$计算理论补货后的库存数量
		DROP TEMPORARY TABLES	IF EXISTS stock_ll;
		/*IF i = 0 THEN 
			CREATE TEMPORARY TABLE stock_ll(
				select a.shopid,b.xlid, a.goodsid,c.goodsname,b.classtype,b.flag,c.qty as saleqty,b.minorder,b.seasontype,
								case when b.inqty_ll is null THEN 0 else b.inqty_ll END as inqty_ll,
							 case when (c.qty is null and b.inqty_ll is NULL) THEN a.qty
							      when (c.qty is null and b.inqty_ll is not NULL)  THEN a.qty+b.inqty_ll
							      when (c.qty is not null and b.inqty_ll is NULL)  THEN a.qty-c.qty
							 ELSE a.qty+b.inqty_ll-c.qty END AS qty_ll ,c.salevalue,c.discvalue,c.disc,b.trueprice
				from   stock_his a  left  join zn_good b on a.shopid=b.shopid and a.goodsid=b.goodsid
														left  join sale c on a.shopid=c.shopid and a.goodsid=c.goodsid
				where date_format(a.sdate,'%Y-%m-%d') = DATE_ADD(date2,INTERVAL -1 day)
			);
		ELSE 
*/
			CREATE TEMPORARY TABLE stock_ll(
				select a.shopid,b.xlid, a.goodsid,c.goodsname,b.classtype,b.flag,c.qty as saleqty,b.minorder,b.seasontype,
								case when b.inqty_ll is null THEN 0 else b.inqty_ll END as inqty_ll,
								case when c.qty is null and b.inqty_ll is NULL THEN a.qty_ll
							       when c.qty is null and b.inqty_ll is not NULL  THEN a.qty_ll+b.inqty_ll
										 when c.qty is not null and b.inqty_ll is NULL  THEN a.qty_ll-c.qty
							 ELSE a.qty_ll+b.inqty_ll-c.qty END AS qty_ll ,c.salevalue,c.discvalue,c.disc,b.trueprice
				from   stock_test a left join zn_good b on a.shopid=b.shopid and a.goodsid=b.goodsid 
														left  join sale c on a.shopid=c.shopid and a.goodsid=c.goodsid
				where date_format(a.sdate,'%Y-%m-%d') = DATE_ADD(date2,INTERVAL -1 day)
			);
	 ##	END IF;
		ALTER  TABLE  stock_ll  ADD  INDEX index_name(shopid,goodsid);
		delete from stock_test where date_format(sdate,'%Y-%m-%d')=date2;
		insert into stock_test(sdate, shopid, xlid,goodsid,goodsname,classtype,inqty_real,qty_real,inqty_ll,qty_ll,flag,saleqty,minorder,seasontype,
						salevalue,discvalue,disc,trueprice)
		select  a.sdate, a.shopid, b.xlid,a.goodsid,a.goodsname,classtype,a.inqty_real,a.qty_real,b.inqty_ll,b.qty_ll,b.flag,b.saleqty,b.minorder,b.seasontype,
						b.salevalue,b.discvalue,b.disc,b.trueprice
		from  stock_real a  left  join stock_ll b on a.shopid=b.shopid and a.goodsid=b.goodsid;
 	 	set i=i+1;
	END WHILE;
/*
	DROP TABLE IF EXISTS shop_class_kczz;
	CREATE TABLE shop_class_kczz(
	select begindate as sdate,enddate as edate,shopid,classtype,sum(qty_real)/sum(saleqty) as kczz_real,sum(qty_ll)/sum(saleqty) as kczz_ll 
		from stock_test
	 where date_format(sdate,'%Y-%m-%d') BETWEEN begindate and enddate and classtype in ('A','B')
	group by shopid,classtype
	);
*/
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for proc_sum_sum
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_sum_sum`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `proc_sum_sum`(IN `begindate` varchar(10),IN `enddate` varchar(10))
BEGIN
declare begind date;
declare endd date;
declare i int;
declare m int;
declare n int;
declare j int;
set begind = begindate;
set endd = enddate;
set i = TO_DAYS(enddate)-TO_DAYS(begindate);
DROP TABLE IF EXISTS `tmp_shop_sum`;
CREATE TABLE tmp_shop_sum (
`id` bigint(36) NOT NULL PRIMARY KEY  AUTO_INCREMENT  COMMENT '主键',
`create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
`create_time` datetime DEFAULT NULL COMMENT '创建日期',
`update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
`update_time` datetime DEFAULT NULL COMMENT '更新日期',
`sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
shopid varchar(8) DEFAULT NULL COMMENT '门店',
sum_number DECIMAL(16,2) DEFAULT NULL COMMENT '总数量',
sum_price DECIMAL(16,2) DEFAULT NULL COMMENT '总金额',
begindate date DEFAULT NULL COMMENT '起始时间',
enddate date DEFAULT NULL COMMENT '结束时间');
DROP TABLE IF EXISTS `tmp_shop_xlid_sum`;
CREATE TABLE tmp_shop_xlid_sum (
`id` bigint(36) NOT NULL PRIMARY KEY  AUTO_INCREMENT  COMMENT '主键',
`create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
`create_time` datetime DEFAULT NULL COMMENT '创建日期',
`update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
`update_time` datetime DEFAULT NULL COMMENT '更新日期',
`sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
shopid varchar(8) DEFAULT NULL COMMENT '门店',
xlid varchar(32) DEFAULT NULL COMMENT '小类编码',
xlname varchar(64) DEFAULT NULL COMMENT '小类名称',
sum_number DECIMAL(16,2) DEFAULT NULL COMMENT '总数量',
sum_price DECIMAL(16,2) DEFAULT NULL COMMENT '总金额',
begindate date DEFAULT NULL COMMENT '起始时间',
enddate date DEFAULT NULL COMMENT '结束时间');
-- DROP TABLE IF EXISTS `tmp_shop_xlid_goodsid_sum`;
-- CREATE TABLE tmp_shop_xlid_goodsid_sum (
-- `id` bigint(36) NOT NULL PRIMARY KEY  AUTO_INCREMENT  COMMENT '主键',
-- `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
-- `create_time` datetime DEFAULT NULL COMMENT '创建日期',
-- `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
-- `update_time` datetime DEFAULT NULL COMMENT '更新日期',
-- `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
-- shopid varchar(8) DEFAULT NULL COMMENT '门店',
-- xlid varchar(32) DEFAULT NULL COMMENT '小类',
-- goodsid varchar(32) DEFAULT NULL COMMENT '商品',
-- sum_number DECIMAL(16,2) DEFAULT NULL COMMENT '总数量',
-- sum_price DECIMAL(16,2) DEFAULT NULL COMMENT '总金额',
-- begindate varchar(10) DEFAULT NULL COMMENT '起始时间',
-- enddate varchar(10) DEFAULT NULL COMMENT '结束时间');
set m=0;
while 
   m<=i
  do
      set n=m; 
      set j=i;
      set begind=DATE_SUB(begindate, INTERVAL -n DAY);
      while
          n<=j
             do
                insert into tmp_shop_sum(shopid,sum_number,sum_price,begindate,enddate)
                select shopid,sum(qty),sum(trueprice*qty),begind as begindate,endd as enddate 
                from zn_goods_his where sdate between begind and endd GROUP BY shopid ;

                insert into tmp_shop_xlid_sum(shopid,xlid,xlname,sum_number,sum_price,begindate,enddate)
               -- select shopid,xlid,sum(qty),sum(normalprice),begind as begindate,endd as enddate 
               -- from zn_goods_his where sdate between begind and endd GROUP BY shopid,xlid ;
                select a.shopid,a.xlid,b.xlname,a.sum_qty,a.sum_trueprice,a.begindate,a.enddate  from (
                select shopid,xlid,sum(qty) as sum_qty,sum(trueprice*qty) as sum_trueprice,
                begind as begindate,endd as enddate from zn_goods_his where  qty!=0 and (
                sdate between begind and endd) GROUP BY shopid,xlid ) a
                inner join v_zn_cg_dl_zl_xl b on a.xlid = b.xlid;

          --      insert into tmp_shop_xlid_goodsid_sum(shopid,xlid,goodsid,sum_number,sum_price,begindate,enddate)
          --      select shopid,xlid,goodsid,sum(qty),sum(normalprice),begind as begindate,endd as enddate 
       --         from zn_goods where sdate between begind and endd GROUP BY shopid,xlid,goodsid ;

                set n=n+1;
                -- set begind=DATE_SUB(begind, INTERVAL -n DAY);
                set endd=DATE_SUB(enddate, INTERVAL n DAY);
      end while;

     set m=m+1;
    --  set endd=DATE_SUB(endd, INTERVAL m DAY);
     set begind=begindate;
     set endd=enddate;
end WHILE;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for proc_trashgoods
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_trashgoods`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `proc_trashgoods`(IN `begindate` date,IN `enddate` date)
BEGIN
	
	create temporary table tmp1(
		select shopid,goodsid
		from zn_dayly_sales where sdate>=begindate and sdate<=enddate
		group by shopid,goodsid
	);
	create index index_1 on tmp1(shopid,goodsid);

	create temporary table tmp2(
		select organ as shopid,code as goodsid
		from tb_comm_shop
		where `ifstock` = 1 and state in (0,1)
	);
	create index index_1 on tmp2(shopid,goodsid);

	delete a from tmp2 a join tmp1 b on a.shopid=b.shopid and a.goodsid=b.goodsid;
	delete a from tmp2 a join v_shopsstock b on a.shopid=b.shopid and a.goodsid=b.goodsid;

	drop table if exists zn_trash;
	create table zn_trash(
		select * from tmp2
	);
	create index index_1 on zn_trash(shopid,goodsid);

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for proc_v_sale_j
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_v_sale_j`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `proc_v_sale_j`(IN `vname` varchar(64),IN `begindate` date,IN `enddate` date)
label:BEGIN
	declare tables	varchar(1024); 
  declare subTableName varchar(32);  
  declare i int;

  set @sql=concat('drop table if exists ',vname);
  PREPARE stmt from @sql;
  execute stmt;
  deallocate prepare stmt;

  drop table if exists tablename;

  call catchname(begindate,enddate,'tb_sell_waste_all',tables);
  create temporary table tablename(
    select tables as tablesname
  );

 #建立视图语句(直接剔除生鲜商品)
  set @sql=concat('create table ',vname); 
  loop_1:loop      
    select instr(tablesname,',') into i from tablename; 
    if i=0 then
	   select tablesname into subTableName from tablename; 
	   set @sql=concat(@sql, '  (select organ as shopid,date_format(selldate,''%Y-%m-%d'') as sdate,class as cgid,posid  , Receipt as listno, code as goodsid  ,
	             sum(amount) as qty,sum(sum_sell+sum_disc) as salevalue,sum(sum_disc) as discvalue, 1 as x,price  from ' 
	         ,ltrim(rtrim(subTableName))
	         , ' where convert(date_format(selldate,''%Y-%m-%d''),char(10)) between ''' 
             , convert(begindate,char(10))  
             , ''' and ''' 
             , convert(enddate,char(10)) 
             ,'''  and state=1  and class not in(20, 21, 22, 23, 24, 25, 26, 27, 28) group by organ,date_format(selldate,''%Y-%m-%d'') ,class,posid  , Receipt  , code  ,price );');    
      leave loop_1;      
      else          
          select substring(tablesname,1,instr(tablesname,',')-1) into subTableName from tablename;
           set @sql =concat(@sql , '  (select  organ as shopid,date_format(selldate,''%Y-%m-%d'') as sdate,class as cgid,posid  , Receipt as listno, code as goodsid  ,
	             sum(amount) as qty,sum(sum_sell+sum_disc) as salevalue,sum(sum_disc) as discvalue, 1 as x,price  from ' 
	         , ltrim(rtrim(subTableName))
	         , ' where convert(date_format(selldate,''%Y-%m-%d''),char(10)) between ''' 
             , convert(begindate,char(10)) 
             , ''' and ''' 
             , convert(enddate,char(10)) 
             , '''  and state=1 and class not in(20, 21, 22, 23, 24, 25, 26, 27, 28) group by organ,date_format(selldate,''%Y-%m-%d'')  ,class ,posid  , Receipt  , code  ,price)  union '); 
        update tablename  set tablesname=substring(tablesname,instr(tablesname,',')+1,length(tablesname));  
    end if;
  end loop; 
  PREPARE stmt from @sql;
  execute stmt;
  deallocate prepare stmt;


END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for proc_zn_goods
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_zn_goods`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `proc_zn_goods`()
BEGIN
# 定义当前时间
DECLARE today date;
#春节开始结束日期
DECLARE springfestivalbegin datetime;
DECLARE springfestivalend datetime;

SET @today=CURRENT_DATE();
SET @springfestivalbegin=
(SELECT startdate FROM zn_calendar WHERE holidayid='1')-6;
SET @springfestivalend=
(SELECT enddate FROM zn_calendar WHERE holidayid='1');

#将v_goods和v_zn_goodsshop 转成表
DROP TABLE IF EXISTS tmp_everyday_v_goods;
CREATE TABLE tmp_everyday_v_goods
SELECT * FROM v_goods;
DROP TABLE IF EXISTS tmp_everyday_v_zn_goodsshop;
CREATE TABLE tmp_everyday_v_zn_goodsshop
SELECT * FROM v_zn_goodsshop;



# b 生成zn_goods基础数据：shopid、Xlid、Goodsid、Normalprice：
# 源表有v_goodsshop、v_goods。v_goodsshop中flag=0（状态正常）
# 并且stocktype=0(管库存)的商品进入此表并对T类商品进行标注
# （classtype=’T’），除T类外默认为C类。
TRUNCATE zn_goods;
INSERT INTO zn_goods (shopid,xlid,goodsid,classtype,normalprice,flag,sdate)
SELECT
`tmp_everyday_v_zn_goodsshop`.`shopid` AS `shopid`,
`tmp_everyday_v_goods`.`deptid` AS `xlid`,
`tmp_everyday_v_zn_goodsshop`.`goodsid` AS `goodsid`,
'C' AS `classtype`,
`tmp_everyday_v_zn_goodsshop`.`normalprice` AS  `normalprice`,
'0' AS `flag`,
 @today AS `sdate`
FROM 
(`tmp_everyday_v_zn_goodsshop` JOIN `tmp_everyday_v_goods`)
WHERE 
 ((`tmp_everyday_v_zn_goodsshop`.`goodsid` = `tmp_everyday_v_goods`.`goodsid`)AND
(`tmp_everyday_v_goods`.`flag`=0) AND (`tmp_everyday_v_zn_goodsshop`.`stocktype`=0));



#c 更新zn_goods表Minstock、minorder字段
UPDATE zn_goods,v_minorder
SET `zn_goods`.`minorder`=v_minorder.minorderqty,
`zn_goods`.`minstock`=v_minorder.minstockqty
WHERE v_minorder.goodsid=zn_goods.goodsid
AND v_minorder.shopid=zn_goods.shopid;

#d 用v_pos_2w数据更新ABC分类并更新zn_goods表的classtype,更新sdate
UPDATE zn_goods a,tb_classify b set a.classtype=b.classtype  
WHERE a.shopid=b.shopid AND a.goodsid=b.goodsid;


#	e	更新zn_goods表的季节属性相关字段：只有在季节的时间段内需要
#更新季节属性，时间段外为普通商品
#源表zn_season_xl
#???
UPDATE zn_goods,zn_season_xl
SET 
#zn_goods.seasontype=
zn_goods.arrdate=zn_season_xl.arrdate,
zn_goods.rate1=zn_season_xl.rate1,
zn_goods.rate2=zn_season_xl.rate2,
zn_goods.period1=zn_season_xl.period1,
zn_goods.period2=zn_season_xl.period2
WHERE zn_goods.xlid=zn_season_xl.xlid;


#	f	更新zn_goods表的节日属性
# 源表zn_calerdar和zn_holiday_goods
UPDATE zn_goods,zn_calendar,zn_holiday_goods
SET zn_goods.flag=case 
when  (zn_holiday_goods.goodsid=zn_goods.goodsid AND
zn_holiday_goods.xlid=zn_goods.xlid)
THEN '2' end
WHERE zn_goods.sdate=zn_calendar.sundatedate AND
zn_calendar.holidayid=zn_holiday_goods.holidayid ;

UPDATE zn_goods,zn_holiday_goods,zn_calendar
set zn_goods.holidaytype='2',
zn_goods.holiday_begindate=zn_calendar.startdate,
zn_goods.holiday_enddate=zn_calendar.enddate
where zn_goods.sdate>springfestivalbegin AND
 zn_goods.sdate<springfestivalend AND
zn_holiday_goods.goodsid <> zn_goods.goodsid AND
zn_holiday_goods.xlid<>zn_goods.xlid;


# g.季节性商品首次补货后在到货之前暂不进行补货：
#在zn_season_across表中并且当前日期<此表中的nextdate
#(这个条件避免季节性商品首次补货后没有到货时重复订货的问题) 
#,更新zn_goods表flag=3

UPDATE zn_goods,zn_season_across 
SET flag=3
WHERE zn_season_across.goodsid=zn_goods.goodsid AND
today<zn_season_across.nextdate;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for proc_z_dms
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_z_dms`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `proc_z_dms`()
BEGIN
	#Routine body goes here...
    declare i int;
    declare col int default(0);
    declare tem_shopid VARCHAR(8);

    declare j int;
    declare col1 int default(0);
    declare tem_shopid1 VARCHAR(8);
drop table if exists bb; 
DROP TABLE if exists sum_dms1;
DROP TABLE if exists sum_dms2;
DROP TABLE if exists sum_dms;
DROP TABLE if exists get_shopid1;
DROP TABLE if exists temp;
DROP TABLE if exists  sum_zdms;
CREATE TEMPORARY TABLE temp
SELECT * FROM dms_minorder;
CREATE TEMPORARY TABLE bb(
shopid VARCHAR(8),
classtype CHAR(1),
consum_baifen DECIMAL(16,8)
);

update temp a JOIN zn_config b  set a.Classtype='A' where a.dms_minorder<=b.minorderdays AND a.shopid=b.shopid AND b.classtype='A' AND a.Classtype  is null;
update temp a JOIN zn_config b  set a.Classtype='B' where a.dms_minorder<=b.minorderdays AND a.shopid=b.shopid AND b.classtype='B' AND a.Classtype  is null;

CREATE TEMPORARY TABLE sum_dms1 
SELECT a.shopid,a.Minorderdays,a.classtype FROM zn_config a 
 WHERE a.classtype='A' OR a.classtype='B';
 ALTER TABLE sum_dms1  ADD consum_baifen DECIMAL(16,8);
 ALTER TABLE sum_dms1   ADD sku_baifen DECIMAL(16,8);

INSERT INTO bb SELECT shopid,classtype,MAX(consum_baifen) AS consum_baifen
FROM temp WHERE temp.classtype='A' GROUP BY shopid;
INSERT INTO bb SELECT shopid,classtype,MAX(consum_baifen) AS consum_baifen
FROM temp WHERE temp.classtype='B' GROUP BY shopid;
UPDATE sum_dms1  a join bb b ON a.shopid=b.shopid
SET a.consum_baifen=b.consum_baifen WHERE a.classtype=b.classtype;


    CREATE TEMPORARY TABLE get_shopid1(
    shopid VARCHAR(8)
    );
   INSERT INTO get_shopid1
#可能需要改的地方，表名----------------------------------------------------------------------------------------------------------------
   SELECT shopid FROM temp GROUP BY shopid;#   从shop_1销售数据分类
#--------------------------------------------------------------------------------------------------------------------------------------
   ALTER TABLE get_shopid1 ADD id INT;
   alter table get_shopid1 change id id int not null auto_increment unique;


#----------------------------------------------------将行数赋给一个变量,循环对各个商店来进行测算
    SELECT count(shopid) INTO col FROM get_shopid1;
    SET i=0; 
    SET @sum:=0;
         WHILE i<=col DO
 
drop table if exists v_shop_qty1;

#----------------------------------------------------将所对应id的商店数据进行测算。
 SELECT shopid INTO tem_shopid FROM get_shopid1 WHERE id=i;
 drop table if exists v_sale_shopid1;
CREATE  TABLE v_sale_shopid1
#可能需要改的地方，表名----------------------------------------------------------------------------------------------------------------
SELECT * FROM temp WHERE shopid=tem_shopid;  #   取出数来进行测算
#---------------------------------------------------------------------------------------------------------------------------------------
     
     drop table if exists v_shop_sku;
     CREATE TEMPORARY TABLE v_shop_sku(  
      shopid VARCHAR(8),
      classtype CHAR(1),
      sku_baifen DECIMAL(16,8)
      );

     INSERT INTO v_shop_sku
     SELECT shopid,classtype,count(goodsid)/(SELECT COUNT(goodsid) FROM v_sale_shopid1 ) AS sku_baifen  FROM v_sale_shopid1 GROUP BY shopid,classtype;

UPDATE sum_dms1  a join v_shop_sku  b ON a.shopid=b.shopid
SET a.sku_baifen=b.sku_baifen WHERE a.classtype=b.classtype;

     set i=i+1;
      SET @sum:=0; 
      END WHILE;
CREATE TABLE sum_dms 
SELECT a.shopid AS shopid,b.shopname AS shopname,a.classtype AS classtype,a.minorderdays as minorderdays,a.consum_baifen as consum_baifen,a.sku_baifen as  sku_baifen FROM sum_dms1 a LEFT JOIN v_zn_md_yt_ywq b on a.shopid=b.shopid ORDER BY a.shopid,a.classtype;
#-----------------------------------------------------------------------------------------------------
#---------------------------------------------

drop table if exists get_shopid2;
    CREATE  TABLE get_shopid2(
    shopid VARCHAR(8)
    );
drop table if exists vz_sum;
CREATE TEMPORARY TABLE vz_sum(
  `shopid` varchar(8) DEFAULT NULL,
  `shopname` varchar(40) DEFAULT NULL,
  `classtype` char(1) DEFAULT NULL,
  `minorderdays` int(8) DEFAULT NULL,
  `consum_baifen` DECIMAL(16,8) DEFAULT NULL,
  `sku_baifen` DECIMAL(16,8) DEFAULT NULL
);
   INSERT INTO get_shopid2
#可能需要改的地方，表名----------------------------------------------------------------------------------------------------------------
   SELECT shopid FROM sum_dms GROUP BY shopid;#   从shop_1销售数据分类
#--------------------------------------------------------------------------------------------------------------------------------------
   ALTER TABLE get_shopid2 ADD id INT;
   alter table get_shopid2 change id id int not null auto_increment unique;


#----------------------------------------------------将行数赋给一个变量,循环对各个商店来进行测算
    SELECT count(shopid) INTO col1 FROM get_shopid2;
    SET j=0; 
         WHILE j<=col1 DO
    SET @sum1:=0; 
drop table if exists v_sum;
CREATE TEMPORARY TABLE v_sum(
  `shopid` varchar(8) DEFAULT NULL,
  `shopname` varchar(40) DEFAULT NULL,
  `classtype` char(1) DEFAULT NULL,
  `minorderdays` int(8) DEFAULT NULL,
  `consum_baifen` DECIMAL(16,8) DEFAULT NULL,
  `sku_baifen` DECIMAL(16,8)
);
#----------------------------------------------------将所对应id的商店数据进行测算。
 SELECT shopid INTO tem_shopid1 FROM get_shopid2 WHERE id=j;
 drop table if exists v_sale_shopid2;
CREATE TEMPORARY TABLE v_sale_shopid2
#可能需要改的地方，表名----------------------------------------------------------------------------------------------------------------
SELECT * FROM sum_dms WHERE shopid=tem_shopid1;  #   取出数来进行测算
#---------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO v_sum
SELECT shopid,shopname,classtype,minorderdays,consum_baifen,(@sum1:=@sum1+sku_baifen) AS sku_baifen FROM v_sale_shopid2;

INSERT vz_sum 
SELECT shopid,shopname,classtype,minorderdays,consum_baifen,sku_baifen FROM v_sum ;
     set j=j+1;
      SET @sum1:=0; 
      END WHILE;
CREATE TABLE sum_zdms
SELECT shopid,shopname,classtype,minorderdays,(concat(truncate(consum_baifen *100,2),'%')) AS consum_baifen,(concat(truncate(sku_baifen *100,2),'%')) sku_baifen FROM vz_sum;
DROP TABLE if exists sum_dms;
DROP TABLE if exists v_sale_shopid1;
DROP TABLE if exists get_shopid1;
DROP TABLE if exists get_shopid2;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for prom_md_all
-- ----------------------------
DROP PROCEDURE IF EXISTS `prom_md_all`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `prom_md_all`(IN `begindate` date,IN `enddate` date)
BEGIN

 declare i int;
 declare date1 date ;  
 declare date2 date ;  

#生成52周MD专用日期表，固定前三年日期
 declare d52b date;
 declare d52e date;
 set d52b=CONCAT(YEAR(date_add(CURDATE(),INTERVAL -3 YEAR)),'-01-01');
 set d52e=CONCAT(YEAR(date_add(CURDATE(),INTERVAL -1 YEAR)),'-12-31');

 CALL CreateDateTable(d52b,d52e);
 
 drop table if exists sqldatetable;
  
 CREATE TABLE sqldatetable(
  select year(sdate) as syear,ceiling(cast(dayofyear(sdate) as dec(12,2))/7) as sweek ,
         DATE_FORMAT(min(sdate),'%Y-%m-%d') as begindate ,DATE_FORMAT(max(sdate),'%Y-%m-%d') as enddate  
  from datetable
  group by year(sdate)  ,ceiling(cast(dayofyear(sdate) as dec(12,2))/7)  
  order by year(sdate)  ,ceiling(cast(dayofyear(sdate) as dec(12,2))/7) ); 
#-------------------------------------------------------------------------------------------
#--------------------------计算52MD销售数据-------------------------------------------------
 #----每次计算先删除已经存在的数据
 delete from md_all;  
 delete from  md_all_week; 
 delete from xlhj;  
 set date1=begindate;
 set i=0;
 #---按月取单品销售并插入到正式表中md_all
 while i <= TIMESTAMPDIFF(month,DATE_FORMAT(begindate,'%Y-%m-%d %H:%i:%S'),DATE_FORMAT(enddate,'%Y-%m-%d %H:%i:%S'))
 DO
   set date2=date_add(date_add(date1,INTERVAL 1 MONTH),INTERVAL -1 DAY);
   
   drop TEMPORARY table if EXISTS bq_xlsale;

   CALL proc_v_sale_j('v_sale_j_m',date1,date2); 
   
   CREATE TABLE bq_xlsale(
		select sdate, b.deptid, a.goodsid,b.name,sum(a.salevalue-a.DiscValue) salevalue,sum(a.qty) as qty,count(distinct a.shopid) as shopnum
		from v_sale_j_m a join v_goods b on a.goodsid=b.goodsid 
		where 1=1 
		group by sdate, b.deptid,a.goodsid,b.name
		having sum(salevalue-discvalue)<>0); 
 
   insert into md_all
   select sdate, year(sdate),ceiling(cast(dayofyear(sdate) as dec(12,2))/7) as sweek ,  
          deptid,goodsid, name,salevalue,qty,shopnum
   from bq_xlsale;
 
   set date1=date_add(date1,INTERVAL 1 MONTH);
   set i=i+1;
 end WHILE;

 #生成单品周汇总表 md_all_week --按周汇总数据并且单品在52个周范围内排名
 insert into md_all_week
 select syear, sweek, deptid,goodsid,name,salevalue,qty,rank_goods,shopnum from(
   select a.syear,a.sweek,a.deptid,a.goodsid,a.name,a.salevalue,a.qty,a.shopnum,@rownum:=@rownum+1,
   if(@psyear=a.syear and @pgoodsid=a.goodsid,@rank_goods:=@rank_goods+1,@rank_goods:=1) as rank_goods,@psyear:=a.syear,@pgoodsid=a.goodsid from(
     select syear,sweek,deptid,goodsid,name,sum(salevalue) as salevalue,sum(qty) as qty,max(shopnum) as shopnum from md_all
     group by syear,sweek,deptid,goodsid,name 
     order by syear,goodsid,sum(salevalue) desc
   )a,
   (select @rownum:=0,@psyear:=null,@pgoodsid=null,@rank_goods=0)b
 )result;
 

#-------------------------------生成小类、中类汇总表xlhj ---------------- 
#---小类在52个周范围内排名  
 insert  into xlhj 
 select  syear,sweek,deptid,salevalue ,qty,rank_xl,0 as rank_zl,shopnum from(
	 select a.syear,a.sweek,a.deptid,a.salevalue,a.qty,a.shopnum,@rownum:=@rownum+1,
   if(@psyear=a.syear and @pdeptid=a.deptid,@rank_xl:=@rank_xl+1,@rank_xl:=1) as rank_xl,@psyear=a.syear,@pdeptid=a.deptid from
      (select syear,  sweek,deptid,sum(salevalue) as salevalue ,sum(qty) as qty,max(shopnum) as shopnum
       from md_all_week
       group by syear, sweek,deptid
       order by syear,deptid,sum(salevalue) desc) a,
      (select @rownum:=0,@psyear:=null,@pdeptid:=null,@rank_xl:=0) b
 ) result;
 #-------中类在52个周范围内排名 
 drop TEMPORARY table if EXISTS zlhj;  
 
 create temporary table zlhj(
   select  syear,sweek,zlid,salevalue,qty,rank_zl,shopnum from(
	   select a.syear,a.sweek,a.zlid,a.salevalue,a.qty,a.shopnum,@rownum:=@rownum+1,
     if(@psyear=a.syear and @pzlid=a.zlid,@rank_zl:=@rank_zl+1,@rank_zl:=1) as rank_zl,@psyear=a.syear,@pzlid=a.zlid from
       (select syear,sweek,b.zlid,sum(salevalue) as salevalue ,sum(qty) as qty,max(shopnum) as shopnum
       from md_all_week a join v_cg_dl_zl_xl b on a.deptid=b.xlid
       group by syear,sweek,b.zlid 
       order by syear,b.zlid,sum(salevalue) desc) a,
       (select @rownum:=0,@psyear:=null,@pzlid:=null,@rank_zl:=0) b
   ) result
 );
 
 #----中类销售排名回插到xlhj表中
 update xlhj a,zlhj b ,v_cg_dl_zl_xl c
 set a.rank_zl=b.rank_zl
 where  a.syear=b.syear
 and a.sweek=b.sweek 
 and a.deptid=c.xlid
 and b.zlid=c.zlid;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_kczz_qdh
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_kczz_qdh`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_kczz_qdh`(IN `begindate` date,IN `enddate` date)
pro_kczz_qdh:BEGIN

## =============================================
## 输入参数：begindate 开始日期 enddate 结束日期
## 计算库存周转天数以及总的库存sku
## 计算缺断货率
## 输出表 kczz_qdh
## =============================================

	declare date2 date ;   ## 所计算日期
	set date2 = date_format(begindate,'%Y-%m-%d');

	WHILE date2<=date_format(enddate,'%Y-%m-%d') 
	DO
		delete from kczz_qdh where date_format(sdate,'%Y-%m-%d')=date2 ;  ###删除数据，重新计算  

		####获取今天的库存信息
			DROP TEMPORARY TABLES	IF EXISTS stock_his1;
			CREATE TEMPORARY TABLE stock_his1(
				select organ as shopid, code AS goodsid, amount AS qty
				from tb_stock_history 
				where date_format(sdate,'%Y-%m-%d')= date2
			);
		 
			ALTER  TABLE  stock_his1  ADD  INDEX index_name(shopid);
			
		###更新门店
			DROP TEMPORARY TABLES	IF EXISTS stock_his;
			CREATE TEMPORARY TABLE stock_his(
				select  shopid_hb as shopid,goodsid, sum(qty) as closeqty
				from stock_his1 a join zyy_md_yt_ywq  b on  a.shopid=b.shopid
				group by  shopid_hb,goodsid
			);
			ALTER  TABLE  stock_his  ADD  INDEX index_name1(shopid,goodsid);
	
			####获取今天的理论库存信息
			DROP TEMPORARY TABLES	IF EXISTS stock_ll;
			CREATE TEMPORARY TABLE stock_ll(
				select shopid,goodsid,qty_ll 
				from stock_test 
				where date_format(sdate,'%Y-%m-%d')= date2
			);

			ALTER  TABLE  stock_ll  ADD  INDEX index_name1(shopid,goodsid);
		##求实际缺断货的商品
		 drop TEMPORARY table IF EXISTS qdh;
		 CREATE TEMPORARY table qdh(
			select   a.shopid,b.classtype,count(DISTINCT a.goodsid) as qdh_sku
			from stock_his  a
												join v_demand b on a.shopid=b.shopid and a.goodsid=b.goodsid  
			and a.closeqty>=0
			and (a.closeqty<2 or a.closeqty<b.ndms*2)
			group by b.shopid,b.classtype
		 );

		ALTER  TABLE  qdh  ADD  INDEX index_name1(shopid,classtype);

		##求理论缺断货的商品
		 drop TEMPORARY table IF EXISTS qdh_ll;
		 CREATE TEMPORARY table qdh_ll(
			select  a.shopid,b.classtype,count(DISTINCT a.goodsid) as qdh_sku
			from stock_ll  a 
												join v_demand b on a.shopid=b.shopid and a.goodsid=b.goodsid  
			and a.qty_ll>=0
			and (a.qty_ll<2 or a.qty_ll<b.ndms*2)
			group by b.shopid,b.classtype
		 );

		ALTER  TABLE  qdh_ll  ADD  INDEX index_name1(shopid,classtype);
##2、商品与库存关联  为了求总数
		

	##	求各个classtype商品的个数
		drop TEMPORARY table IF EXISTS goodsku;
		CREATE TEMPORARY table goodsku(
		select shopid,classtype,COUNT(DISTINCT goodsid) as goods_sku
		from  v_demand 
		group by shopid,classtype
		);
		ALTER  TABLE  goodsku  ADD  INDEX index_name1(shopid,classtype);
DELETE from kczz_qdh where sdate=date2;
	##	求每天的缺货率
		insert INTO kczz_qdh
		select date2,a.shopid,a.classtype,b.qdh_sku,c.qdh_sku,b.qdh_sku/a.goods_sku as qhlv_real,c.qdh_sku/a.goods_sku as qhlv_ll
		from  goodsku a join qdh b on a.shopid=b.shopid and a.classtype=b.classtype
										join qdh_ll c on a.shopid=c.shopid and a.classtype=c.classtype;

		set date2=DATE_ADD(date2,INTERVAL 1 DAY);
	END WHILE;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for save_log
-- ----------------------------
DROP PROCEDURE IF EXISTS `save_log`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `save_log`(IN `shopid` varchar(64),IN `thisday` date)
BEGIN
	DELETE FROM zn_log 
	WHERE zn_log.sundate=thisDay AND zn_log.shopid=shopId;

	INSERT INTO zn_log(sundate,shopid,flag,enddatedate)
				VALUES (thisDay,shopId,1,CURRENT_DATE());
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for testtest
-- ----------------------------
DROP PROCEDURE IF EXISTS `testtest`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `testtest`(IN `shopid` varchar(64),IN `thisday` date)
BEGIN
DECLARE today date;
DECLARE beginOfthisSeason date;
DECLARE beginOfthisSeasonvachar VARCHAR(255);
DECLARE endOfthisSeason date;
DECLARE endOfthisSeasonvachar VARCHAR(255);
#开始结束日期年份
DECLARE yearOfthisSeasonbegin VARCHAR(255);
DECLARE yearOfthisSeasonend VARCHAR(255);
##季节性商品首次补货条件
declare beforeseason int;
##季节性商品首次补货时长
declare season_week int;

declare isholiday int;
select value into isholiday from zn_param where id=6;
#######---------------------Step3-------------------
select value into beforeseason from zn_param where id=2;
select value into season_week from zn_param where id=3;

SET today=thisDay;
SET yearOfthisSeasonbegin=DATE_FORMAT(today,'%Y');
SET yearOfthisSeasonend=CAST(CAST(yearOfthisSeasonbegin AS SIGNED)+1 AS CHAR(255));
SET beginOfthisSeasonvachar=CASE WHEN 
				ISNULL((SELECT zn_season_goods.begindate FROM zn_season_goods WHERE zn_season_goods.begindate<=DATE_FORMAT(today,'%m-%d') AND 
				zn_season_goods.enddate>DATE_FORMAT(today,'%m-%d') LIMIT 1))=1
		THEN CONCAT(yearOfthisSeasonbegin,'-',(SELECT zn_season_goods.begindate FROM zn_season_goods ORDER BY zn_season_goods.begindate DESC LIMIT 1))
		ELSE CONCAT(yearOfthisSeasonbegin,'-',(SELECT zn_season_goods.begindate FROM zn_season_goods WHERE zn_season_goods.begindate<=DATE_FORMAT(today,'%m-%d') AND 
				zn_season_goods.enddate>DATE_FORMAT(today,'%m-%d') LIMIT 1))
		END;
SET endOfthisSeasonvachar=CASE WHEN 
				ISNULL((SELECT zn_season_goods.begindate FROM zn_season_goods WHERE zn_season_goods.begindate<=DATE_FORMAT(today,'%m-%d') AND 
				zn_season_goods.enddate>=DATE_FORMAT(today,'%m-%d') LIMIT 1))=1
		THEN CONCAT(yearOfthisSeasonend,'-',(SELECT zn_season_goods.begindate FROM zn_season_goods ORDER BY zn_season_goods.begindate ASC LIMIT 1))
		ELSE CONCAT(yearOfthisSeasonbegin,'-',(SELECT zn_season_goods.enddate FROM zn_season_goods WHERE zn_season_goods.begindate<=DATE_FORMAT(today,'%m-%d') AND 
				zn_season_goods.enddate>=DATE_FORMAT(today,'%m-%d') LIMIT 1))
		END;
SET beginOfthisSeason=str_to_date(beginOfthisSeasonvachar,'%Y-%m-%d');
SET endOfthisSeason=str_to_date(endOfthisSeasonvachar,'%Y-%m-%d');

drop table if exists tmp_season_tmp;
CREATE TABLE IF NOT EXISTS `tmp_season_tmp` (
  `goodsid` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '商品编码',
  `shopid` varchar(8) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '门店编码',
  `classtype` varchar(1) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '补货类型',
  `minorder` decimal(16,2) DEFAULT NULL COMMENT '最小起订量',
  `minstock` decimal(16,2) DEFAULT NULL COMMENT '最小库存数量',
  `closeqty` decimal(16,3) DEFAULT NULL COMMENT '昨日日终库存数量',
	`venderid`  varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '供货商id',
  `weekflag` char(1) CHARACTER SET utf8 DEFAULT NULL,
  `safedays` int(11) DEFAULT NULL,
  `arrivaldays` int(11) DEFAULT NULL,
  `sdate` datetime DEFAULT NULL COMMENT '更新日期时间',
  `theoritical_qty` decimal(16,2) DEFAULT NULL,
  `actual_qty` decimal(16,2) DEFAULT NULL,
   avg_qty_day decimal(16,2) DEFAULT NULL,
  KEY `index_1` (`goodsid`,`shopid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

TRUNCATE TABLE tmp_season_tmp;

INSERT INTO tmp_season_tmp (goodsid,shopid,classtype,minorder,minstock,closeqty,venderid,
weekflag,safedays,arrivaldays,sdate)
SELECT 
zn_goods.goodsid AS goodsid,
zn_goods.shopid AS shopid,
zn_goods.classtype AS classtype,
zn_goods.minorder AS minorder,
zn_goods.minstock AS minstock,
zn_goods.closeqty AS closeqty,
zn_goods.venderid AS venderid,
zn_config.weekflag AS weekflag,#补货周期
zn_config.safedays AS safedays,#安全库存天数
zn_config.arrivaldays AS arrivaldays,#到货周期
zn_goods.sdate AS sdate
FROM zn_goods,zn_config
WHERE zn_goods.shopid=shopId AND zn_config.shopid=shopId AND zn_goods.classtype=zn_config.Classtype AND
zn_goods.seasontype=1 and zn_goods.flag=0;


SELECT * FROM zn_goods WHERE zn_goods.shopid=shopId AND
zn_goods.seasontype=1 and zn_goods.flag=0;

END
;;
DELIMITER ;



-- ----------------------------
-- Procedure structure for testtesttest
-- ----------------------------
DROP PROCEDURE IF EXISTS `testtesttest`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `testtesttest`(IN `shopid` varchar(64),IN `thisday` date)
BEGIN
# 定义当前时间
DECLARE today date;
#春节开始结束日期
DECLARE springfestivalbegin date;
DECLARE springfestivalend date;
DECLARE chuyi date;
DECLARE season_condition varchar(255);

SET today=thisDay;
SET springfestivalbegin=DATE_SUB(
(SELECT zn_calendar.startdate FROM zn_calendar WHERE holidayid+0=1 AND DATE_FORMAT(zn_calendar.enddate,'%Y')=YEAR(today) LIMIT 1),
INTERVAL 6 DAY);
SET springfestivalend=
(SELECT zn_calendar.enddate FROM zn_calendar WHERE holidayid+0=1 AND DATE_FORMAT(zn_calendar.enddate,'%Y')=YEAR(today) LIMIT 1);
SET chuyi=DATE_ADD(springfestivalend,INTERVAL 1 DAY);

SELECT springfestivalbegin,springfestivalend,chuyi;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for testtesttesttest
-- ----------------------------
DROP PROCEDURE IF EXISTS `testtesttesttest`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `testtesttesttest`()
BEGIN


END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for test_1214
-- ----------------------------
DROP PROCEDURE IF EXISTS `test_1214`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `test_1214`(IN `thisday` date)
BEGIN
	DECLARE s int DEFAULT 0;
  DECLARE shopId varchar(255);
	DECLARE hasData int;
	DECLARE amount int;	
	DECLARE amount2 int;
    -- 定义游标，并将sql结果集赋值到游标中
  DECLARE report CURSOR FOR select v_zn_md_yt_ywq.shopid from v_zn_md_yt_ywq;
    -- 定义游标，并将sql结果集赋值到游标中
  DECLARE report2 CURSOR FOR select v_zn_md_yt_ywq.shopid from v_zn_md_yt_ywq;

    -- 声明当游标遍历完后将标志变量置成某个值
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET s=1;



	SELECT COUNT(v_zn_md_yt_ywq.shopid) INTO amount FROM v_zn_md_yt_ywq;
    -- 打开游标
    open report;
 
        -- 将游标中的值赋值给变量，注意：变量名不要和返回的列名同名，变量顺序要和sql结果列的顺序一致
        fetch report into shopId;
 
        -- 当s不等于1，也就是未遍历完时，会一直循环
        loop1:while amount<>1 do
            -- 执行业务逻辑	
					SET amount=amount-1;

					##CALL shopHasData(shopId,thisDay,hasData);
					##SELECT hasData;
					##IF (hasData=1) THEN 
					CALL everyday_sub_dms(shopId,thisDay);
					##END IF;
        -- 当s等于1时表明遍历以完成，退出循环
          fetch report into shopId;
        end while loop1;
    -- 关闭游标
    close report;
		


		#每日dms结束后处理
		call everyday_dms_end();



#每日补货
	SELECT COUNT(v_zn_md_yt_ywq.shopid) INTO amount2 FROM v_zn_md_yt_ywq;

    -- 打开游标
    open report2;
 
        -- 将游标中的值赋值给变量，注意：变量名不要和返回的列名同名，变量顺序要和sql结果列的顺序一致
        fetch report2 into shopId;
 
        -- 当s不等于1，也就是未遍历完时，会一直循环
        loop1:while amount2<>1 do
            -- 执行业务逻辑	
					SET amount2=amount2-1;

					##CALL shopHasData(shopId,thisDay,hasData);
					##SELECT hasData;
					##IF (hasData=1) THEN 
					CALL everyday_sub(shopId,thisDay);
					##END IF;
        -- 当s等于1时表明遍历以完成，退出循环
          fetch report2 into shopId;
        end while loop1;
    -- 关闭游标
    close report2;




END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for test_daily_dms
-- ----------------------------
DROP PROCEDURE IF EXISTS `test_daily_dms`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `test_daily_dms`(IN `shopid` varchar(64),IN `thisday` date)
BEGIN
DECLARE 2WeeksBefore date;
DECLARE today date;

SELECT  version()
       ,@@sql_mode;

SET sql_mode=(
SELECT  REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY','')); ##CALL classify_new();
SET today=thisDay;
SET 2WeeksBefore=DATE_SUB(today,INTERVAL 14 DAY);

#CALL proc_tmpdayly(DATE_SUB(thisDay,INTERVAL 2 DAY),thisDay);


DROP TABLE IF EXISTS tmp_everyday_tmp_1;
CREATE TABLE tmp_everyday_tmp_1 (
shopid  varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
shopname  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
goodsid  varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
goodsname  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
salevalue  decimal(38,2) NULL DEFAULT NULL ,
discvalue  decimal(38,2) NULL DEFAULT NULL ,
disc  decimal(44,6) NULL DEFAULT NULL ,
zlprice  decimal(16,2) NULL DEFAULT NULL ,
normalprice  decimal(16,2) NULL DEFAULT NULL ,
qty  decimal(38,3) NULL DEFAULT NULL ,
sdate  date NULL DEFAULT NULL ,
zkb  decimal(16,2) NULL DEFAULT NULL ,
dayNumber  int DEFAULT 0 ,
discDayNumber  int DEFAULT 0 ,
INDEX index_1 (shopid, goodsid, zkb) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
ROW_FORMAT=DYNAMIC;

INSERT INTO tmp_everyday_tmp_1(shopid,
shopname,
goodsid,
goodsname,
salevalue,
discvalue,
disc,
zlprice,
normalprice,
qty,
sdate,
zkb,
dayNumber,
discDayNumber)
SELECT 
x.shopid AS shopid,
x.shopname AS shopname,
x.goodsid AS goodsid,
x.goodsname AS goodsname,
SUM(x.salevalue) AS salevalue,
SUM(x.discvalue) AS discvalue,
SUM(x.salevalue)/SUM(x.salevalue+x.discvalue) AS disc,
x.zlprice AS zlprice,
x.normalprice AS normalprice,
SUM(x.qty) AS qty,
x.sdate AS sdate,
getZKB(x.zlprice,x.normalprice) AS zkb,
COUNT(x.zlprice) AS dayNumber,
COUNT(IF((x.zlprice<(getZKB(x.zlprice,x.normalprice)*x.normalprice)),1,0)) AS discDayNumber
FROM zn_dayly_sales x 
WHERE x.shopid=shopId AND x.sdate<=today AND x.sdate>2WeeksBefore
GROUP BY x.shopid,x.goodsid,x.zlprice;





DROP TABLE IF EXISTS tmp_everyday_tmp_2;
CREATE TABLE tmp_everyday_tmp_2 (
shopid  varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
shopname  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
goodsid  varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
goodsname  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
salevalue  decimal(60,2) NULL DEFAULT NULL ,
discvalue  decimal(60,2) NULL DEFAULT NULL ,
disc  decimal(65,6) NULL DEFAULT NULL ,
normalprice  decimal(16,2) NULL DEFAULT NULL ,
qty  decimal(60,3) NULL DEFAULT NULL ,
zkb  decimal(16,2) NULL DEFAULT NULL ,
allDayNumber  int,
discDayNumber  int,
INDEX index_1 (shopid, goodsid) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
ROW_FORMAT=DYNAMIC;


INSERT INTO tmp_everyday_tmp_2(shopid, shopname, goodsid, goodsname, 
salevalue, discvalue, disc, normalprice, qty, zkb, allDayNumber, discDayNumber)
SELECT  y.shopid                                      AS shopid
       ,y.shopname                                    AS shopname
       ,y.goodsid                                     AS goodsid
       ,y.goodsname                                   AS goodsname
       ,SUM(y.salevalue)                              AS salevalue
       ,SUM(y.discvalue)                              AS discvalue
       ,SUM(y.salevalue)/SUM(y.salevalue+y.discvalue) AS disc
       ,y.normalprice                                 AS normalprice
       ,SUM(y.qty)                                    AS qty
       ,y.zkb                                         AS zkb
       ,SUM(y.dayNumber)                          		AS allDayNumber
       ,SUM(y.discDayNumber)                          AS discDayNumber
FROM tmp_everyday_tmp_1 y
GROUP BY  y.shopid
         ,y.goodsid
         ,y.zkb;
# 销售数量求和
DROP TABLE IF EXISTS tmp_everyday_tmp_2_1;
CREATE TABLE tmp_everyday_tmp_2_1 (
shopid  varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
goodsid  varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
dayNumberSum  bigint(21) DEFAULT NULL ,
INDEX index_1 (shopid, goodsid) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
ROW_FORMAT=DYNAMIC;


INSERT INTO tmp_everyday_tmp_2_1 (shopid,goodsid,dayNumberSum)
SELECT  z.shopid
       ,z.goodsid
       ,SUM(z.allDayNumber) AS dayNumberSum
FROM tmp_everyday_tmp_2 z
WHERE z.zkb<0.95 
GROUP BY  z.shopid
         ,z.goodsid;



UPDATE tmp_everyday_tmp_2 a join tmp_everyday_tmp_2_1 b on a.shopid=b.shopid AND a.goodsid=b.goodsid
SET a.allDayNumber=(14-b.dayNumberSum)
WHERE a.zkb=0.95;



INSERT INTO zn_price_dms (shopid,goodsid,normalprice,disc1,disc2,band1,band2,trueprice,dms,sdate)
SELECT 
a.shopid AS shopid,
a.goodsid AS goodsid,
a.normalprice AS normalprice,
a.zkb*100 AS disc1,
CASE WHEN (a.zkb<0.95) THEN (a.zkb+0.05)*100
            ELSE 5000 END AS disc2,
a.zkb*20 AS band1,
CASE WHEN (a.zkb*20<19) THEN a.zkb*20+1
												ELSE 1000 END AS band2,
(a.salevalue/a.qty) AS trueprice,
a.qty/a.allDayNumber AS dms,  #销售数量
now() as sdate
FROM tmp_everyday_tmp_2 a
ON DUPLICATE KEY UPDATE
zn_price_dms.normalprice=VALUES(normalprice),
zn_price_dms.disc1=VALUES(disc1),
zn_price_dms.disc2=VALUES(disc2),
zn_price_dms.band1=VALUES(band1),
zn_price_dms.band2=VALUES(band2),
zn_price_dms.trueprice=VALUES(trueprice),
zn_price_dms.dms=VALUES(dms),
zn_price_dms.sdate=now();


#update xlid
update zn_price_dms,v_goods 
SET zn_price_dms.xlid=v_goods.deptid
WHERE zn_price_dms.goodsid=v_goods.goodsid;

#3、生成小类折扣与销量表zn_xl_dms初始数据
# 数据源按照类别xlid、折扣比例disc1、disc2汇总，dms_disc=sum(dms)/此小类在disc1和disc2折扣段的单品数量，dms_ori=小类在原价销售时单品的日均销量/小类单品数

		REPLACE INTO zn_xl_dms (shopid,xlid,disc1,disc2,
        dms_disc,dms_ori,sdate)
    SELECT 
        x.shopid AS shopid,
        #x.shopname AS shopname,
        x.xlid AS xlid,
        #x.xlname AS xlname,
        x.disc1 AS disc1,
        x.disc2 AS disc2,
        SUM(x.dms)/COUNT(x.dms) AS dms_disc,
        0 AS dms_ori,
        thisDay AS sdate
    FROM
        zn_price_dms x
		GROUP BY x.shopid,x.xlid,x.disc1;


		UPDATE zn_xl_dms a,zn_xl_dms b
		set a.dms_ori=b.dms_disc
		WHERE a.shopid=b.shopId and b.shopid=a.shopId and a.xlid=b.xlid and
					a.disc1<0.95 AND b.disc1=0.95;


END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for test_dms
-- ----------------------------
DROP PROCEDURE IF EXISTS `test_dms`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `test_dms`()
BEGIN
	#Routine body goes here...
    declare i int;
    declare col int default(0);
    declare tem_shopid VARCHAR(8);
    DECLARE today date;
    DECLARE beforday date;
    SET today=date_sub(curdate(),interval 2 day);
    SET beforday=date_sub(curdate(),interval 57 day);
    drop table if exists dms_minorder;
    drop table if exists dms_minorder1;
    drop table if exists get_shopid;
    CREATE TEMPORARY TABLE dms_minorder1 SELECT * FROM zn_dayly_sales
    WHERE convert(sdate,char(10))<=convert(today,char(10)) AND convert(sdate,char(10))>=convert(beforday,char(10));
    DELETE  dms_minorder1 FROM  dms_minorder1, v_tgoods WHERE dms_minorder1.goodsid=v_tgoods.goodsid;
     CREATE  TABLE dms_minorder(   
      shopid VARCHAR(8),
      goodsid VARCHAR(32),
      qty DECIMAL(16,3),
      salevalue DECIMAL(16,2),
      dms_minorder DECIMAL(16,3),
       consum_baifen DECIMAL(16,8)
      );
    CREATE TEMPORARY TABLE get_shopid(
    shopid VARCHAR(8)
    );
   INSERT INTO get_shopid
#可能需要改的地方，表名----------------------------------------------------------------------------------------------------------------
   SELECT shopid FROM dms_minorder1 GROUP BY shopid;#   从shop_1销售数据分类
#--------------------------------------------------------------------------------------------------------------------------------------
   ALTER TABLE get_shopid ADD id INT;
   alter table get_shopid change id id int not null auto_increment unique;


#----------------------------------------------------将行数赋给一个变量,循环对各个商店来进行测算
    SELECT count(shopid) INTO col FROM get_shopid;
    SET i=0; 
         WHILE i<=col DO
    SET @sum:=0; 
drop table if exists v_shop_qty;

#----------------------------------------------------将所对应id的商店数据进行测算。
 SELECT shopid INTO tem_shopid FROM get_shopid WHERE id=i;
 drop table if exists v_sale_shopid;
CREATE TABLE v_sale_shopid
#可能需要改的地方，表名----------------------------------------------------------------------------------------------------------------
SELECT * FROM dms_minorder1 WHERE shopid=tem_shopid;  #   取出数来进行测算
#---------------------------------------------------------------------------------------------------------------------------------------
     drop table if exists v_shop_qty;
     drop table if exists v_shop_dms;
     CREATE TEMPORARY TABLE v_shop_qty(  
      shopid VARCHAR(8),
      goodsid VARCHAR(32),
      qty DECIMAL(16,3),
      salevalue DECIMAL(16,2),
      baifen DECIMAL(16,8)
      );
      ALTER TABLE v_sale_shopid  ADD INDEX idx1(shopid,goodsid);
     INSERT INTO v_shop_qty 
     SELECT shopid,goodsid,SUM(qty) AS qty,SUM(salevalue) AS salevalue,SUM(salevalue)/(SELECT SUM(salevalue) FROM v_sale_shopid) AS baifen
     FROM v_sale_shopid GROUP BY shopid,goodsid;
     ALTER TABLE v_shop_qty   ADD INDEX idx2(shopid,goodsid,qty,salevalue);
      CREATE TEMPORARY TABLE v_shop_dms(   
      shopid VARCHAR(8),
      goodsid VARCHAR(32),
      qty DECIMAL(16,3),
      salevalue DECIMAL(16,2),
      dms_minorder DECIMAL(16,3)
      );
     INSERT into v_shop_dms
     SELECT a.shopid,a.goodsid,a.qty,a.salevalue,(CASE WHEN a.qty=0 THEN 0 else (b.minorderqty/(a.qty/14)) END) as dms_minorder FROM v_shop_qty     a INNER JOIN v_minorder b
     ON a.shopid=b.shopid AND a.goodsid=b.goodsid ORDER BY dms_minorder ;
     ALTER TABLE v_shop_dms   ADD INDEX idx2(shopid,goodsid,qty,salevalue,dms_minorder);
     INSERT into dms_minorder
     SELECT a.shopid,a.goodsid,a.qty,a.salevalue,a.dms_minorder,(@sum:=@sum+b.baifen) as consum_baifen  FROM v_shop_dms a INNER JOIN v_shop_qty b
     ON a.shopid=b.shopid AND a.goodsid=b.goodsid ORDER BY dms_minorder ;

     set i=i+1;
      SET @sum:=0; 
      END WHILE;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for test_onetime
-- ----------------------------
DROP PROCEDURE IF EXISTS `test_onetime`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `test_onetime`(IN `thisDay` date,IN `totalWeeks` int)
BEGIN
 #声明变量  /日期，临时表
 DECLARE thatDay date; DECLARE thatDayEnd date;

SELECT  version()
       ,@@sql_mode;

SET sql_mode=(
SELECT  REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY','')); ##CALL classify_new();

SET thatDayEnd=DATE_ADD(thisDay,INTERVAL 0 DAY);
SET thatDay=DATE_SUB(thisDay,INTERVAL totalWeeks*7 DAY);

SELECT  thatDay
       ,thatDayEnd;


DROP TABLE IF EXISTS tmp_onetime_tmp_1;
CREATE TABLE `tmp_onetime_tmp_1` (
`shopid`  varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`shopname`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`goodsid`  varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`goodsname`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`salevalue`  decimal(38,2) NULL DEFAULT NULL ,
`discvalue`  decimal(38,2) NULL DEFAULT NULL ,
`disc`  decimal(44,6) NULL DEFAULT NULL ,
`zlprice`  decimal(16,2) NULL DEFAULT NULL ,
`normalprice`  decimal(16,2) NULL DEFAULT NULL ,
`qty`  decimal(38,3) NULL DEFAULT NULL ,
`sdate`  date NULL DEFAULT NULL ,
`zkb`  decimal(16,2) NULL DEFAULT NULL ,
`dayNumber`  int DEFAULT 0 ,
`discDayNumber`  int DEFAULT 0 ,
INDEX `index_1` (`shopid`, `goodsid`, `zkb`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
ROW_FORMAT=DYNAMIC;

INSERT INTO tmp_onetime_tmp_1(`shopid`,
`shopname`,
`goodsid`,
`goodsname`,
`salevalue`,
`discvalue`,
`disc`,
`zlprice`,
`normalprice`,
`qty`,
`sdate`,
`zkb`,
`dayNumber`,
`discDayNumber`)
SELECT 
x.shopid AS shopid,
x.shopname AS shopname,
x.goodsid AS goodsid,
x.goodsname AS goodsname,
SUM(x.salevalue) AS salevalue,
SUM(x.discvalue) AS discvalue,
SUM(x.salevalue)/SUM(x.salevalue+x.discvalue) AS disc,
x.zlprice AS zlprice,
x.normalprice AS normalprice,
SUM(x.qty) AS qty,
x.sdate AS sdate,
getZKB(x.zlprice,x.normalprice) AS zkb,
COUNT(x.zlprice) AS dayNumber,
COUNT(IF((x.zlprice<(getZKB(x.zlprice,x.normalprice)*x.normalprice)),1,0)) AS discDayNumber
FROM zn_dayly_sales x 
WHERE x.sdate<=thatDayEnd AND x.sdate>thatDay
GROUP BY x.shopid,x.goodsid,x.zlprice;





DROP TABLE IF EXISTS tmp_onetime_tmp_2;
CREATE TABLE `tmp_onetime_tmp_2` (
`shopid`  varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`shopname`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`goodsid`  varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`goodsname`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`salevalue`  decimal(60,2) NULL DEFAULT NULL ,
`discvalue`  decimal(60,2) NULL DEFAULT NULL ,
`disc`  decimal(65,6) NULL DEFAULT NULL ,
`normalprice`  decimal(16,2) NULL DEFAULT NULL ,
`qty`  decimal(60,3) NULL DEFAULT NULL ,
`zkb`  decimal(16,2) NULL DEFAULT NULL ,
`allDayNumber`  int,
`discDayNumber`  int,
INDEX `index_1` (`shopid`, `goodsid`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
ROW_FORMAT=DYNAMIC;


INSERT INTO tmp_onetime_tmp_2(shopid, shopname, goodsid, goodsname, 
salevalue, discvalue, disc, normalprice, qty, zkb, allDayNumber, discDayNumber)
SELECT  y.shopid                                      AS shopid
       ,y.shopname                                    AS shopname
       ,y.goodsid                                     AS goodsid
       ,y.goodsname                                   AS goodsname
       ,SUM(y.salevalue)                              AS salevalue
       ,SUM(y.discvalue)                              AS discvalue
       ,SUM(y.salevalue)/SUM(y.salevalue+y.discvalue) AS disc
       ,y.normalprice                                 AS normalprice
       ,SUM(y.qty)                                    AS qty
       ,y.zkb                                         AS zkb
       ,SUM(y.dayNumber)                          		AS allDayNumber
       ,SUM(y.discDayNumber)                          AS discDayNumber
FROM tmp_onetime_tmp_1 y
GROUP BY  y.shopid
         ,y.goodsid
         ,y.zkb;
# 销售数量求和
DROP TABLE IF EXISTS tmp_onetime_tmp_2_1;
CREATE TABLE `tmp_onetime_tmp_2_1` (
`shopid`  varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`goodsid`  varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`dayNumberSum`  bigint(21) DEFAULT NULL ,
INDEX `index_1` (`shopid`, `goodsid`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
ROW_FORMAT=DYNAMIC;


INSERT INTO tmp_onetime_tmp_2_1 (shopid,goodsid,dayNumberSum)
SELECT  z.shopid
       ,z.goodsid
       ,SUM(z.allDayNumber) AS dayNumberSum
FROM tmp_onetime_tmp_2 z
WHERE z.zkb<0.95 
GROUP BY  z.shopid
         ,z.goodsid;


UPDATE tmp_onetime_tmp_2 a
SET a.allDayNumber=totalWeeks*7;


UPDATE tmp_onetime_tmp_2 a join tmp_onetime_tmp_2_1 b on a.shopid=b.shopid AND a.goodsid=b.goodsid
SET a.allDayNumber=(totalWeeks*7-b.dayNumberSum)
WHERE a.zkb=0.95;



INSERT INTO zn_price_dms (shopid,goodsid,normalprice,disc1,disc2,band1,band2,trueprice,dms,sdate)
SELECT 
a.shopid AS shopid,
a.goodsid AS goodsid,
a.normalprice AS normalprice,
a.zkb*100 AS disc1,
CASE WHEN (a.zkb<0.95) THEN (a.zkb+0.05)*100
            ELSE 5000 END AS disc2,
a.zkb*20 AS band1,
CASE WHEN (a.zkb*20<19) THEN a.zkb*20+1
												ELSE 1000 END AS band2,
(a.salevalue/a.qty) AS trueprice,
a.qty/a.allDayNumber AS dms,  #销售数量
now() as sdate
FROM tmp_onetime_tmp_2 a
ON DUPLICATE KEY UPDATE
zn_price_dms.normalprice=VALUES(normalprice),
zn_price_dms.disc1=VALUES(disc1),
zn_price_dms.disc2=VALUES(disc2),
zn_price_dms.band1=VALUES(band1),
zn_price_dms.band2=VALUES(band2),
zn_price_dms.trueprice=VALUES(trueprice),
zn_price_dms.dms=VALUES(dms),
zn_price_dms.sdate=now();


#update xlid
update zn_price_dms,v_goods 
SET zn_price_dms.xlid=v_goods.deptid
WHERE zn_price_dms.goodsid=v_goods.goodsid;

#3、生成小类折扣与销量表zn_xl_dms初始数据
# 数据源按照类别xlid、折扣比例disc1、disc2汇总，dms_disc=sum(dms)/此小类在disc1和disc2折扣段的单品数量，dms_ori=小类在原价销售时单品的日均销量/小类单品数

		REPLACE INTO zn_xl_dms (shopid,xlid,disc1,disc2,
        dms_disc,dms_ori,sdate)
    SELECT 
        `x`.`shopid` AS `shopid`,
        #`x`.`shopname` AS `shopname`,
        `x`.`xlid` AS `xlid`,
        #`x`.`xlname` AS `xlname`,
        `x`.`disc1` AS `disc1`,
        `x`.`disc2` AS `disc2`,
        SUM(x.dms)/COUNT(x.dms) AS `dms_disc`,
        0 AS `dms_ori`,
        thisDay AS `sdate`
    FROM
        `zn_price_dms` `x`
		GROUP BY x.shopid,x.xlid,x.disc1;


		UPDATE zn_xl_dms a,zn_xl_dms b
		set a.dms_ori=b.dms_disc
		WHERE a.shopid=b.shopId and b.shopid=a.shopId and a.xlid=b.xlid and
					a.disc1<0.95 AND b.disc1=0.95;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for test_wy
-- ----------------------------
DROP PROCEDURE IF EXISTS `test_wy`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `test_wy`(IN `shopid` varchar(64),IN `thisday` date)
BEGIN

DECLARE today date;

##促销计划最晚录入时间
declare plan_day int;
##是否有首次补货
declare isholiday int;
select value into isholiday from zn_param where id=6;
select value into plan_day from zn_param where id=4;

SET today=thisDay;


# 首次发现促销品补货

# a0.《补货系统促销明细》中manual_flag=1的商品:补货数量=采购分货数量 
#--如果 采购分货数量=0则  《补货系统促销明细》 flag=0  保持不变并更新日期。
#--如果采购分货数量>0 则 在《补货系统促销明细》中为该商品打标“1越期促销补货” 并更新日期.
#a1.更新zn_goods表qty、flag、sdate字段
if isholiday=1
then
	UPDATE zn_goods a join zn_prom_detail b on a.shopid=b.shopid and a.goodsid=b.goodsid
	SET a.qty=b.planqty,
	a.flag=6,
	a.sdate=today
	WHERE b.manual_flag=1 AND b.flag=0 and b.planqty>0;

	UPDATE zn_prom_detail a
	SET a.flag=CASE WHEN (a.planqty=0.0) THEN 0 
									WHEN (a.planqty>0.0) THEN 3 end,
			a.sdate=today
	where a.manual_flag=1 and a.flag=0 and a.shopid=shopId;
ELSE
	UPDATE zn_goods a,zn_prom_detail b,zn_config c 
	SET a.qty=b.planqty,
	a.flag=6,
	a.sdate=today
	WHERE a.shopid=shopId AND b.shopid=shopId AND c.shopid=shopId and c.Classtype='A' and SUBSTR(c.Orderdate,(dayofweek(thisday)+5)mod 7+1,1)='1' and
	a.goodsid=b.goodsid AND b.manual_flag=1 AND b.flag=0 and b.planqty>0;

	UPDATE zn_prom_detail a,zn_config b
	SET a.flag=CASE WHEN (a.planqty=0.0) THEN 0 
									WHEN (a.planqty>0.0) THEN 3 end,
			a.sdate=today
	where a.manual_flag=1 and a.flag=0 and a.shopid=shopId and b.shopid=shopId and b.classtype='A' and SUBSTR(b.Orderdate,(dayofweek(thisday)+5)mod 7+1,1)='1';
end if;


#a. 《补货系统促销明细》中manual_flag=0的商品:取出补货类别：到zn_goods中取classtype、minorder、minstock、closeqty等，根据补货类别可以取出补货周期、安全库存天数、到货周期。
DROP TABLE IF EXISTS `tmp_prom_tmp`;
CREATE TABLE IF NOT EXISTS `tmp_prom_tmp` (
  `goodsid` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '商品编码',
  `shopid` varchar(8) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '门店编码',
  `normalprice` decimal(16,2) DEFAULT NULL COMMENT '定价',
  `classtype` varchar(1) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '补货类型',
  `minorder` decimal(16,2) DEFAULT NULL COMMENT '最小起订量',
  `minstock` decimal(16,2) DEFAULT NULL COMMENT '最小库存数量',
  `closeqty` decimal(16,3) DEFAULT NULL COMMENT '昨日日终库存数量',
  `holiday_begindate` datetime DEFAULT NULL COMMENT '节日开始日期',
  `holiday_enddate` datetime DEFAULT NULL COMMENT '节日结束日期',
  `holidaytype` varchar(1) DEFAULT NULL COMMENT '节日属性',
  `zs` decimal(16,2) DEFAULT NULL COMMENT '春节指数',
   xlid varchar(32),
  `ho_rate` decimal(16,2) DEFAULT NULL COMMENT '节日安全系数',
  `seasontype` varchar(1) DEFAULT NULL COMMENT '季节属性',
  `rate1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period1，日均销量的折扣比例',
  `rate2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到Period2，日均销量的折扣比例',
  `period1` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例1',
  `period2` decimal(16,2) DEFAULT NULL COMMENT '季节时间达到的比例2',
	`startweek`  int(1) NULL DEFAULT 0, 
  `weekflag` char(1) CHARACTER SET utf8 DEFAULT NULL,
  `safedays` int(11) DEFAULT NULL,
  `arrivaldays` int(11) DEFAULT NULL,
  `sdate` datetime DEFAULT NULL COMMENT '更新日期时间',
  `actual_qty` decimal(16,2) DEFAULT NULL,
  `price` decimal(16,2) DEFAULT NULL,
  `flag` char(1) DEFAULT '0',
  `dms` decimal(16,3) DEFAULT 0 COMMENT '实际售价对应的日均销量',
  `prom_dms` decimal(16,3) DEFAULT 0 COMMENT '实际售价对应的日均销量',
  `weekflag_days` int(11) DEFAULT 0 COMMENT 'buhuozhouqi',
   prom_id int(11),
	`display_flag`  varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '0—默认值，1—场外  2—堆头  3—端头' ,
	prom_begindate date,
	prom_enddate date,
	prom_days int(11) COMMENT '促销天数',
	prom_alldays int(11) COMMENT 'orderdays+ Arrivaldays+ safedays',
	prom_arriavedate date COMMENT '到货日',
	orderdays int(11) COMMENT 'datediff(下一个补货日,当前日期)',
	now_date date COMMENT '产生补货的日期',
	received_date date COMMENT 'dateadd(now_date,arrivaldays-1)',
	prom_day1 int(11) default 0 COMMENT 'max(min(datediff(enddate, received_date),alldays),0)',
	prom_day2 int(11) COMMENT 'max(（alldays-促销DMS补货天数)，0）',
	prom_flag int(11) COMMENT '促销补货标志位',
  orderdate varchar(10),
##	`venderid`  varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '供货商id',
	`config_flag`  char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' ,
	`round_rule`  char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' ,
  KEY `index_1` (`shopid`,`goodsid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO tmp_prom_tmp (goodsid,shopid,normalprice,classtype,minorder,minstock,closeqty,
holiday_begindate,holiday_enddate,holidaytype,ho_rate,zs,xlid,seasontype,
rate1,rate2,period1,period2,startweek,weekflag,safedays,arrivaldays,sdate,price,
flag,weekflag_days,prom_begindate,prom_enddate,prom_id,display_flag,orderdate,prom_day2,round_rule,
##venderid,
config_flag)
SELECT 
zn_goods.goodsid AS goodsid,
zn_goods.shopid AS shopid,
zn_goods.normalprice AS normalprice,
zn_goods.classtype AS classtype,
zn_goods.minorder AS minorder,
zn_goods.minstock AS minstock,
zn_goods.closeqty AS closeqty,
zn_goods.`holiday_begindate`,
zn_goods.`holiday_enddate`,
zn_goods.`holidaytype`,
zn_goods.`ho_rate`,
zn_goods.`zs`,
zn_goods.`xlid`,
zn_goods.`seasontype`,
zn_goods.`rate1`,
zn_goods.`rate2`,
zn_goods.`period1`,
zn_goods.`period2`,
zn_config.Startweek AS startweek,
zn_config.weekflag AS weekflag,#补货周期
zn_config.safedays AS safedays,#安全库存天数
zn_config.arrivaldays AS arrivaldays,#到货周期
zn_goods.sdate AS sdate,
case when zn_prom_detail.price>zn_goods.normalprice then zn_goods.normalprice else zn_prom_detail.price end AS price,
zn_goods.flag AS flag,
DATEDIFF(get_next_buhuo_date(weekflag,zn_config.Orderdate,zn_config.Startweek,today),today) AS weekflag_days,
zn_prom_detail.begindate as prom_begindate,
zn_prom_detail.enddate as prom_enddate,
zn_prom_detail.id as prom_id,
zn_prom_detail.display_flag as display_flag,
zn_config.Orderdate as orderdate,
DATEDIFF(get_next_buhuo_date(weekflag,zn_config.Orderdate,zn_config.Startweek,today),today)+zn_config.arrivaldays+zn_config.safedays as prom_day2,
zn_config.round_rule,
##zn_goods.venderid,
zn_goods.config_flag
FROM zn_goods,zn_config,zn_prom_detail
WHERE zn_goods.shopid=shopId AND zn_config.shopid=shopId AND 
zn_prom_detail.shopid=shopId AND zn_goods.goodsid=zn_prom_detail.goodsid AND 
zn_prom_detail.manual_flag=0 AND zn_prom_detail.flag=0 and
zn_goods.classtype=zn_config.Classtype
 AND datediff(zn_prom_detail.begindate,today)<=plan_day
;


#7-1 首先对新发现的促销品进行优化处理：到《补货系统促销明细》检查该门店是否有新的促销商品，首次发现促销商品（flag=0 and (促销开始日期-当前日期<7)）时首先处理同一个商品存在多条优惠的问题，即多条促销按照最新促销的补货: 根据zn_prom_detail.id判断先后顺序先后。检查促销表里是否还有这个门店这个单品的促销，若有则之前的促销结束日期改为min(新的促销开始日前一天与enddate) ，zn_prom_detail flag=4(被新的促销覆盖)表示以后不会按照这个价格去补货，但是在促销过期后要更新dms.

##多条促销按照最新促销的补货: 根据zn_prom_detail.id判断先后
drop temporary table if exists tmp_prom1;
create temporary table tmp_prom1(
	select shopid,goodsid,max(prom_id) as prom_id
	from tmp_prom_tmp
	group by shopid,goodsid
);
create index index_1 on tmp_prom1(shopid,goodsid);

delete a from tmp_prom_tmp a join tmp_prom1 b on a.shopid=b.shopid and a.goodsid=b.goodsid
where a.prom_id!=b.prom_id;

delete a from zn_prom_detail a join tmp_prom1 b on a.shopid=b.shopid and a.goodsid=b.goodsid 
where a.id!=b.prom_id and a.flag=0;


##查找正在进行的促销数据与首次补货促销数据重复部分
drop temporary table if exists tmp_prom;
create temporary table tmp_prom(
	select b.*
	from zn_prom_detail a join tmp_prom_tmp b on a.shopid=b.shopid and a.goodsid=b.goodsid
	where a.flag in (1,2)
);
create index index_1 on tmp_prom(shopid,goodsid);
drop temporary table if exists tmp_tprom;
create temporary table tmp_tprom(
	select b.*
	from zn_prom_detail_tmp a join tmp_prom_tmp b on a.shopid=b.shopid and a.goodsid=b.goodsid
);
create index index_1 on tmp_tprom(shopid,goodsid);
##正在进行的促销数据更新结束日期和状态4
update zn_prom_detail a join tmp_prom b on a.shopid=b.shopid and a.goodsid=b.goodsid
set a.enddate=if(a.enddate<date_add(b.prom_begindate,interval -1 day),a.enddate,if(date_add(b.prom_begindate,interval -1 day)<today,today,date_add(b.prom_begindate,interval -1 day))),a.flag=4,a.sdate=now()
where a.flag in(1,2);
##找totaldays最小值
drop temporary table if exists tmp_mday;
create temporary table tmp_mday(
	select a.shopid,a.goodsid,min(totaldays) as mday
	from zn_prom_detail_tmp a join tmp_tprom b on a.shopid=b.shopid and a.goodsid=b.goodsid
	group by a.shopid,a.goodsid
);
create index index_1 on tmp_mday(shopid,goodsid);

update zn_prom_detail_tmp a join tmp_tprom b on a.shopid=b.shopid and a.goodsid=b.goodsid join tmp_mday c on a.shopid=c.shopid and a.goodsid=c.goodsid
set a.enddate=if(a.enddate<date_add(b.prom_begindate,interval -1 day),a.enddate,if(date_add(b.prom_begindate,interval -1 day)<today,today,date_add(b.prom_begindate,interval -1 day)))
where a.totaldays!=c.mday;

delete from tmp_prom_tmp where flag!=0;
#7-3、发现促销品则将促销品的补货类型设为A（补货类型为A代表最短的补货周期）：更新zn_goods中促销品的classtype=’A’
##根据参数判断是否需要首次补货
if isholiday=0
THEN
  delete a from tmp_prom_tmp a join zn_config b on a.shopid=b.shopid
  where b.classtype='A' and SUBSTR(b.Orderdate,(dayofweek(thisday)+5)mod 7+1,1)!='1';

	update tmp_prom_tmp a join zn_config b on a.shopid=b.shopid set a.classtype='A',a.startweek=b.startweek,
					a.weekflag=b.weekflag,a.safedays=b.safedays,a.arrivaldays=b.arrivaldays,a.orderdate=b.Orderdate
	where b.classtype='A';

	/*#更新供货商信息
	UPDATE tmp_prom_tmp x,zn_config_v v 
	SET 
			x.weekflag=v.Weekflag,
			x.safedays=v.Safedays,
			x.arrivaldays=v.Arrivaldays,
			x.startweek=v.Startweek,
			x.orderdate=v.Orderdate,
			x.config_flag=v.config_flag,
			x.round_rule=v.round_rule
	WHERE v.Shopid=shopid AND v.venderid=x.venderid AND v.Classtype=x.classtype AND x.config_flag='v' AND v.classtype=x.classtype;*/


	update tmp_prom_tmp set weekflag_days=DATEDIFF(get_next_buhuo_date(weekflag,Orderdate,Startweek,today),today);

	update zn_goods a join tmp_prom_tmp b on a.shopid=b.shopid and a.goodsid=b.goodsid set a.classtype='A'
	where b.classtype='A';
else 
	##更新越期商品的补货周期天数
	update tmp_prom_tmp a join zn_config b on a.shopid=shopid and b.shopid=shopid and a.classtype=b.Classtype
	set weekflag_days=datediff(get_next_buhuo_date(b.Weekflag,b.Orderdate,b.Startweek,date_add(today,interval weekflag_days+1 day)),today)
	where DATEDIFF(get_next_buhuo_date(b.Weekflag,b.Orderdate,b.Startweek,today),today)<a.arrivaldays;
end if;


UPDATE tmp_prom_tmp x,zn_prom_detail p 
SET x.prom_begindate=p.begindate,
		x.prom_enddate=p.enddate,
		x.prom_days=DATEDIFF(p.enddate,p.begindate)+1,
		x.orderdays=DATEDIFF(get_next_buhuo_date(weekflag,Orderdate,Startweek,today),today),
		x.prom_alldays=DATEDIFF(get_next_buhuo_date(weekflag,Orderdate,Startweek,today),today)+x.arrivaldays+x.safedays,
		x.now_date=thisday,
		x.prom_arriavedate=DATE_ADD(thisday,INTERVAL arrivaldays DAY),
		x.received_date=DATE_ADD(thisday,INTERVAL x.arrivaldays-1 DAY),
		x.prom_day1=0,
		x.prom_day2=DATEDIFF(get_next_buhuo_date(weekflag,Orderdate,Startweek,today),today)+x.arrivaldays+x.safedays,
		x.prom_flag=p.flag
WHERE x.shopid=shopid AND p.shopid=shopid AND x.goodsid=p.goodsid ANd p.flag=0;

#7-7.采购不分货：《补货系统促销明细》中manual_flag=0的商品:取出补货类别：到zn_goods中取classtype、minorder、minstock、closeqty等，根据补货类别可以取出补货周期、安全库存天数、到货周期。
#注意补货周期、到货周期的计算：
#（1）今天与下一个补货日之间的天数<到货周期（这个参数变了，不是4了，意思就是在补货日补货不应该产生越期），下一个补货日不再补货，否则补货；
#（2）春节初一至初三可以补货、但是不送货 
UPDATE tmp_prom_tmp x 
SET x.prom_day1=GREATEST(LEAST(DATEDIFF(x.prom_enddate,x.received_date),x.prom_alldays),0)
WHERE x.shopid=shopid AND (x.prom_days>(x.arrivaldays+x.safedays)) AND NOT ISNULL(x.prom_begindate);

UPDATE tmp_prom_tmp x 
SET x.prom_day2=GREATEST((x.prom_alldays-x.prom_day1),0)
WHERE x.shopid=shopid AND (x.prom_days>=(x.arrivaldays+x.safedays)) AND NOT ISNULL(x.prom_begindate);

			#2、	促销天数<补货周期+到货周期 
UPDATE tmp_prom_tmp x,zn_prom_detail p 
SET x.prom_day1=CASE WHEN ((x.prom_begindate>x.prom_arriavedate)AND(p.flag=0))
													THEN x.prom_days+x.safedays
											ELSE 0 END,
		p.flag=CASE WHEN ((x.prom_begindate>x.prom_arriavedate)AND(p.flag=0))
													THEN 6
											ELSE 0 END
WHERE x.shopid=shopid AND p.shopid=shopid AND x.goodsid=p.goodsid AND (x.prom_days<(x.arrivaldays+x.safedays)) AND NOT ISNULL(x.prom_begindate);

UPDATE tmp_prom_tmp x,zn_prom_detail p 
SET x.prom_day2=x.prom_alldays-x.prom_day1
WHERE x.shopid=shopid AND p.shopid=shopid AND x.goodsid=p.goodsid AND (x.prom_days<(x.arrivaldays+x.safedays)) AND NOT ISNULL(x.prom_begindate);


#取出普通售价时的日均销量：
UPDATE tmp_prom_tmp x,zn_price_dms pd 
SET x.dms=pd.dms
WHERE x.shopid=shopid AND pd.shopid=shopid AND x.goodsid=pd.goodsid and pd.disc1=95;
#--促销首次补货（zn_prom_detail.flag=0）时，促销DMS从zn_price_dms中取，
UPDATE tmp_prom_tmp x,zn_price_dms pd 
SET x.prom_dms=pd.dms
WHERE x.shopid=shopid AND pd.shopid=shopid AND x.goodsid=pd.goodsid and (x.price/x.normalprice)*100>=pd.disc1 AND 
(x.price/x.normalprice)*100<pd.disc2 and x.display_flag=pd.display_flag;

##当找不到促销折扣段时找上下紧邻的折扣段
##1.取出促销dms=0且day1>0的数据
drop temporary table if exists tmp_nearcx;
create temporary table tmp_nearcx(
	select shopid,goodsid,normalprice,price,prom_dms,cast(0 as decimal(16,3)) as dms1,cast(0 as decimal(16,2)) as price1,cast(0 as decimal(16,2)) as dms2,
					cast(0 as decimal(16,2)) as price2,display_flag
	from tmp_prom_tmp 
	where (ISNULL(prom_dms)OR(prom_dms=0.0)) and prom_day1>0
);
create index index_1 on tmp_nearcx(shopid,goodsid);
##2.取出相邻折扣的dms
UPDATE tmp_nearcx x,zn_price_dms pd
SET x.dms1=if(pd.dms is null,0,pd.dms),x.price1=pd.trueprice
WHERE x.shopid=shopid AND pd.shopid=shopid AND x.goodsid=pd.goodsid and (x.price/x.normalprice)*100-5>=pd.disc1 AND 
(x.price/x.normalprice)*100-5<pd.disc2 and x.display_flag=pd.display_flag;
UPDATE tmp_nearcx x,zn_price_dms pd
SET x.dms2=if(pd.dms is null,0,pd.dms),x.price2=pd.trueprice
WHERE x.shopid=shopid AND pd.shopid=shopid AND x.goodsid=pd.goodsid and (x.price/x.normalprice)*100+5>=pd.disc1 AND 
(x.price/x.normalprice)*100+5<pd.disc2 and x.display_flag=pd.display_flag;
##3.将相邻折扣dms作为促销dms，若存在两个相邻折扣的dms则判断trueprice与哪个接近
update tmp_nearcx set prom_dms=case when dms1=0 and dms2!=0 then dms2
																	  when dms1!=0 and dms2=0 then dms1
																		when dms1!=0 and dms2!=0 then if(abs(price1-price)>abs(price2-price),dms2,dms1) else 0 end;
##4.将取好的dms更新回表
update tmp_prom_tmp a join tmp_nearcx b on a.shopid=b.shopid and a.goodsid=b.goodsid set a.prom_dms=b.prom_dms;

#--day1>0 并且未找到当前售价对应的dms或dms=0 : zn_goods表Flag=4 (没有促销销售记录), 转7-12
UPDATE zn_goods x,tmp_prom_tmp y
SET x.flag=4,x.trueprice=y.price WHERE x.shopid=shopid and y.shopid=shopid and x.goodsid=y.goodsid and y.prom_day1>0 and (ISNULL(y.prom_dms)OR(y.prom_dms=0.0)) ;
UPDATE zn_prom_detail x,tmp_prom_tmp y
SET x.flag=2 WHERE x.shopid=shopid and y.shopid=shopid and x.goodsid=y.goodsid and (ISNULL(y.prom_dms)OR(y.prom_dms=0.0)) and x.flag=0 and y.prom_day1>0;
delete from tmp_prom_tmp where (ISNULL(prom_dms)OR(prom_dms=0.0)) and prom_day1>0;
#--day2>0 并且未找到normalprice对应的dms或dms=0:说明是新品或者没有正常价销售过，zn_goods表Flag=5 (没有正常定价销售记录),转7-12
UPDATE zn_goods z,tmp_prom_tmp x 
SET z.flag=5,z.trueprice=x.price
WHERE z.shopid=shopid AND x.shopid=shopid AND z.goodsid=x.goodsid AND (ISNULL(x.dms)OR x.dms=0.0) AND x.prom_day2>0 and x.prom_day1=0;
UPDATE zn_prom_detail z,tmp_prom_tmp x 
SET z.flag=2
WHERE z.shopid=shopid AND x.shopid=shopid AND z.goodsid=x.goodsid AND (ISNULL(x.dms)OR x.dms=0.0) AND x.prom_day2>0 and z.flag=0 and x.prom_day1=0;
delete from tmp_prom_tmp where (ISNULL(dms)OR(dms=0.0)) AND prom_day2>0 and prom_day1=0;



#7-9根据节日属性和季节属性调整日均销量
#--holidaytype=2春节其它商品, 当前日期>=begindate-6进入春节补货模式 
#--holidaytype=2春节其它商品, 当前日期>=enddate结束春节补货模式
#春节期间日均销量==m取到的2个日均销量*zs*rate  转o
UPDATE tmp_prom_tmp x 
SET x.dms=x.dms*x.zs*x.ho_rate, 
		x.prom_dms=x.prom_dms*x.zs*x.ho_rate 
WHERE x.holidaytype=2 AND x.holiday_begindate<=today AND 
x.holiday_enddate>=today;
#--seasontype=1季节性商品 并且 当前日期在period1—period2对应的日期之内时修订日均销量，日均销量=m取到的2个日均销量*rate1，在period2—enddate对应的日期之内时日均销量=m取到的2个日均销量*rate2转7-10
UPDATE tmp_prom_tmp x join zn_season_goods y on x.shopid=y.shopid and x.goodsid=y.goodsid
SET x.dms=CASE WHEN DATE_ADD(getSeasonbd(y.begindate,y.enddate),INTERVAL (DATEDIFF(getSeasoned(y.begindate,y.enddate),getSeasonbd(y.begindate,y.enddate))*x.period1/100) DAY)<=today 
										and today<DATE_ADD(getSeasonbd(y.begindate,y.enddate),INTERVAL (DATEDIFF(getSeasoned(y.begindate,y.enddate),getSeasonbd(y.begindate,y.enddate))*x.period2/100) DAY)
										THEN x.dms*x.rate1/100.0 
							 WHEN DATE_ADD(getSeasonbd(y.begindate,y.enddate),INTERVAL (DATEDIFF(getSeasoned(y.begindate,y.enddate),getSeasonbd(y.begindate,y.enddate))*x.period2/100) DAY)<=today 
										and today<getSeasoned(y.begindate,y.enddate) THEN x.dms*x.rate2/100.0 
else x.dms END,
x.prom_dms=CASE WHEN DATE_ADD(getSeasonbd(y.begindate,y.enddate),INTERVAL (DATEDIFF(getSeasoned(y.begindate,y.enddate),getSeasonbd(y.begindate,y.enddate))*x.period1/100) DAY)<=today 
										and today<DATE_ADD(getSeasonbd(y.begindate,y.enddate),INTERVAL (DATEDIFF(getSeasoned(y.begindate,y.enddate),getSeasonbd(y.begindate,y.enddate))*x.period2/100) DAY)
										THEN x.prom_dms*x.rate1/100.0 
							 WHEN DATE_ADD(getSeasonbd(y.begindate,y.enddate),INTERVAL (DATEDIFF(getSeasoned(y.begindate,y.enddate),getSeasonbd(y.begindate,y.enddate))*x.period2/100) DAY)<=today 
										and today<getSeasoned(y.begindate,y.enddate) THEN x.prom_dms*x.rate2/100.0 
else x.prom_dms END
WHERE x.seasontype=1;

##判断4，5状态商品是否满足最小库存补货
update zn_goods set qty=ceil((minstock-closeqty)/minorder)*minorder,flag=1,sdate=now()
where shopid=shopId and flag in (4,5) and minstock>closeqty;

#7-10．确定补货量：
#理论补货量1=促销DMS补货天数day1*促销dms+非促销补货天数day2*非促销dms  - 当前库存
#理论补货量2=系统设定的最小库存-当前库存
#If  理论补货量2<0  and理论补货量1 < 最小订货量 then不需要补货
#Else  需要补货。
#理论补货量3=max(理论补货量2, 最小订货量)
#理论补货量 =max(理论补货量1, 理论补货量3)
#实际补货数量=（（理论补货量/最小订货量）向上取整）*最小订货量。
#end
UPDATE tmp_prom_tmp x 
SET x.actual_qty=CASE WHEN ((case x.round_rule when 0 then (x.prom_day1*x.prom_dms+x.prom_day2*x.dms-x.closeqty)/x.minorder<=0 
														                   when 1 then (x.prom_day1*x.prom_dms+x.prom_day2*x.dms-x.closeqty)/x.minorder<0.5
																							 when 2 then (x.prom_day1*x.prom_dms+x.prom_day2*x.dms-x.closeqty)/x.minorder<1 end) AND (x.minstock<=x.closeqty))
														THEN 0.0
														ELSE (case x.round_rule when 0 then CEILING(GREATEST(x.prom_day1*x.prom_dms+x.prom_day2*x.dms-x.closeqty,x.minstock-x.closeqty,x.minorder)/x.minorder)*x.minorder 
																		               when 1 then round(GREATEST(x.prom_day1*x.prom_dms+x.prom_day2*x.dms-x.closeqty,x.minstock-x.closeqty,x.minorder)/x.minorder)*x.minorder 
																									 when 2 then floor(GREATEST(x.prom_day1*x.prom_dms+x.prom_day2*x.dms-x.closeqty,x.minstock-x.closeqty,x.minorder)/x.minorder)*x.minorder end)  END; 

#7-11更新zn_goods表qty、flag=9（促销首次补货）
UPDATE zn_goods x,tmp_prom_tmp y
SET x.flag=9,
x.qty=y.actual_qty,
x.trueprice=y.price,
x.sdate=now()
 WHERE x.shopid=shopId AND y.shopid=shopId AND
x.goodsid=y.goodsid;


#7-12更新zn_goods表sdate字段;在《补货系统促销明细》中为该商品打标“1越期促销补货”或“2可以补货”并更新日期sdate字段
UPDATE zn_prom_detail a,tmp_prom_tmp y
SET a.flag=2,
		a.sdate=now()
WHERE a.shopid=shopId AND y.shopid=shopId AND a.begindate=y.prom_begindate and a.enddate=y.prom_enddate and
a.goodsid=y.goodsid;


if isholiday=1
then
	UPDATE zn_prom_detail a,tmp_prom_tmp y,zn_config z
	SET a.flag=1,
			a.sdate=now()
	WHERE a.shopid=shopId AND y.shopid=shopId AND a.begindate=y.prom_begindate and a.enddate=y.prom_enddate and
	a.goodsid=y.goodsid and z.shopid=shopId and y.classtype=z.Classtype and DATEDIFF(get_next_buhuo_date(z.weekflag,z.Orderdate,z.Startweek,today),today)<y.arrivaldays
	;
end if;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for update_zn_interface_dms_fale_date
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_zn_interface_dms_fale_date`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `update_zn_interface_dms_fale_date`()
BEGIN
	DECLARE spring_begin date;
	DECLARE spring_end date;
	DECLARE spring_end2 date;
	DECLARE it date;


	SET spring_begin=(SELECT a.startdate FROM zn_calendar a WHERE YEAR(a.sundate)=YEAR(NOW()) AND (a.holidayid='01' OR (a.holidayid='1')));
	SET spring_end=(SELECT a.enddate FROM zn_calendar a WHERE YEAR(a.sundate)=YEAR(NOW()) AND (a.holidayid='01' OR (a.holidayid='1')));
	SET spring_end2=DATE_ADD(spring_end,INTERVAL 8 DAY);

	SET it=spring_begin;

#春节停止更新dms
	WHILE DATEDIFF(spring_end,it)>=0 DO
		INSERT INTO `xinyangxiya`.`zn_interface_dms_fale_date`
		(`no_dms_date`,
		`update_datetime`,
		`update_reason`)
		VALUES (it,NOW(),'春节停止更新dms')
		ON DUPLICATE KEY UPDATE 
		update_datetime=NOW(),
		update_reason='春节停止更新dms';
		SET it=DATE_ADD(it,INTERVAL 1 DAY);
	END WHILE;

#春节后不满7天停止更新dms
	WHILE DATEDIFF(spring_end2,it)>=0 DO
		INSERT INTO `xinyangxiya`.`zn_interface_dms_fale_date`
		(`no_dms_date`,
		`update_datetime`,
		`update_reason`)
		VALUES (it,NOW(),'春节后不满7天停止更新dms')
		ON DUPLICATE KEY UPDATE 
		update_datetime=NOW(),
		update_reason='春节后不满7天停止更新dms';
		SET it=DATE_ADD(it,INTERVAL 1 DAY);
	END WHILE;

END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for getSeasonbd
-- ----------------------------
DROP FUNCTION IF EXISTS `getSeasonbd`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `getSeasonbd`(`bd` char(5),`ed` char(5)) RETURNS date
BEGIN
	RETURN if(bd<ed,concat(year(CURDATE()),'-',bd),if(right(curdate(),5)<=ed,concat(year(CURDATE())-1,'-',bd),concat(year(CURDATE()),'-',bd)));
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for getSeasoned
-- ----------------------------
DROP FUNCTION IF EXISTS `getSeasoned`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `getSeasoned`(`bd` char(5),`ed` char(5)) RETURNS date
BEGIN
	RETURN if(bd<ed,concat(year(CURDATE()),'-',ed),if(right(curdate(),5)<=ed,concat(year(CURDATE()),'-',ed),concat(year(CURDATE())+1,'-',ed)));
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for getZKB
-- ----------------------------
DROP FUNCTION IF EXISTS `getZKB`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `getZKB`(`a` decimal(16,2),`b` decimal(16,2)) RETURNS decimal(16,2)
BEGIN
 IF (a/b<0.95) THEN RETURN FLOOR(20.00*a/b)/20.00;
 ELSE RETURN 0.95; END IF;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for get_next_buhuoDay_dateDiff
-- ----------------------------
DROP FUNCTION IF EXISTS `get_next_buhuoDay_dateDiff`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `get_next_buhuoDay_dateDiff`(`orderdate` char(8),`thisday` date) RETURNS int(11)
BEGIN
	#返回当日到下次补货日的天数（C类不在此范围内）
	DECLARE ordersequence2 char(20);
	DECLARE thisDayofweek INT;
	DECLARE num INT DEFAULT 0;

	SET thisDayofweek=(dayofweek(thisDay)+5)mod 7+1;
	SET ordersequence2=CONCAT(orderdate,orderdate);

	SET num=num+1;#当天返回下次
	SET thisDayofweek=thisDayofweek+1;#当天返回下次

	WHILE SUBSTR(ordersequence2,thisDayofweek,1)<>'1' DO
		SET num=num+1;
		SET thisDayofweek=thisDayofweek+1;
	END WHILE;
	RETURN num;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for get_next_buhuo_date
-- ----------------------------
DROP FUNCTION IF EXISTS `get_next_buhuo_date`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `get_next_buhuo_date`(`weekflag` varchar(1),`orderdate` varchar(8),`startweek` int(1),`thisDay` date) RETURNS date
BEGIN
/*返回从thisDay开始下一个最接近的补货日*/
	DECLARE startweek_int INT;#解决开始周为null的情况
	DECLARE weekflag_int INT;
	DECLARE thisDayofweek INT;
	DECLARE num INT DEFAULT 0;
	DECLARE ordersequence1 varchar(16);
	DECLARE ordersequence2 varchar(32);

	SET startweek_int=CASE WHEN ISNULL(startweek) THEN 0 
													ELSE startweek END;
	SET thisDayofweek=(dayofweek(thisDay)+5)mod 7+1;
	SET weekflag_int=weekflag+0;

	IF(weekflag_int=2 AND ((weekflag_int+WEEKOFYEAR(thisDay)-startweek_int) MOD weekflag_int<>0))
						THEN SET ordersequence1=CONCAT('0000000',orderdate);
	ELSEIF(weekflag_int=2 AND ((weekflag_int+WEEKOFYEAR(thisDay)-startweek_int) MOD weekflag_int=0))
						THEN SET ordersequence1=CONCAT(orderdate,'0000000');
	ELSE SET ordersequence1=orderdate; END IF;

	SET ordersequence2=CONCAT(ordersequence1,ordersequence1);

	SET num=num+1;#当天返回下次
	SET thisDayofweek=thisDayofweek+1;#当天返回下次

	WHILE SUBSTR(ordersequence2,thisDayofweek,1)<>'1' DO
		SET num=num+1;
		SET thisDayofweek=thisDayofweek+1;
	END WHILE;
	
	RETURN DATE_ADD(thisDay,INTERVAL num DAY);
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for get_next_buhuo_days
-- ----------------------------
DROP FUNCTION IF EXISTS `get_next_buhuo_days`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `get_next_buhuo_days`(`orderdate` varchar(8),`thisDay` date) RETURNS int(11)
BEGIN
	/*返回当前日期对应的补货日天数*/

	DECLARE thisDayofweek int;
	DECLARE tmpsequence char(255);
	DECLARE it int;

	SET thisDayofweek=(dayofweek(thisday)+5)mod 7+1;
	SET tmpsequence=CONCAT(orderdate,orderdate);
	SET it=LOCATE('1001',tmpsequence);
	IF ((thisDayofweek>=it AND thisDayofweek<it+3)OR(thisDayofweek+7>=it AND thisDayofweek+7<it+3)) THEN RETURN 3;
	ELSE RETURN 4;
	END IF;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for get_season_condition
-- ----------------------------
DROP FUNCTION IF EXISTS `get_season_condition`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `get_season_condition`(`thisDay` date) RETURNS varchar(5) CHARSET utf8
BEGIN
	DECLARE date1 varchar(5);
	DECLARE date2 varchar(5);
	DECLARE season_starts_date date;
	DECLARE season_finish_date date;
	DECLARE season_starts varchar(5);
	DECLARE season_finish varchar(5);


	SET date1=(SELECT x.begindate FROM zn_season_goods x LIMIT 1);
	SET date2=(SELECT x.enddate FROM zn_season_goods x LIMIT 1);

	SET season_starts= CASE WHEN date1<date2 THEN date1 ELSE date2 END;
	SET season_finish= CASE WHEN date1<date2 THEN date2 ELSE date1 END;

	SET season_starts_date=STR_TO_DATE(CONCAT(YEAR(thisDay),'-',season_starts),'%Y-%m-%d');
	SET season_finish_date=STR_TO_DATE(CONCAT(YEAR(thisDay),'-',season_finish),'%Y-%m-%d');

	RETURN CASE WHEN (season_starts_date<=thisDay AND thisDay<season_finish_date)
													THEN (SELECT zn_season_xl.begindate FROM zn_season_xl WHERE zn_season_xl.begindate<zn_season_xl.enddate LIMIT 1)
													ELSE (SELECT zn_season_xl.begindate FROM zn_season_xl WHERE zn_season_xl.begindate>zn_season_xl.enddate LIMIT 1)
							END;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for get_yueqi_days_spr
-- ----------------------------
DROP FUNCTION IF EXISTS `get_yueqi_days_spr`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `get_yueqi_days_spr`(`orderdate` char(8),`thisday` date) RETURNS int(11)
BEGIN
	DECLARE days INT;
	DECLARE daohuo_days INT;
	DECLARE spring_end DATE;
	DECLARE nobuhuo_begin DATE;
	DECLARE nobuhuo_end DATE;
	DECLARE next_buhuo_date DATE;
	DECLARE next_next_buhuo_date DATE;
	
	SET days=0;
	SET daohuo_days=(SELECT a.Arrivaldays FROM zn_config a LIMIT 1);
	SET spring_end=(SELECT a.sundate FROM zn_calendar a WHERE a.holidayid+1=2 AND YEAR(a.sundate)=YEAR(thisday) LIMIT 1);
	
	SET nobuhuo_begin=DATE_ADD(spring_end,INTERVAL (1-daohuo_days) DAY);
	SET nobuhuo_end=DATE_ADD(spring_end,INTERVAL (3-daohuo_days) DAY);

	SET next_buhuo_date=get_next_buhuo_date(0, orderdate, 0, thisday);
	SET next_next_buhuo_date=get_next_buhuo_date(0, orderdate, 0, next_buhuo_date);

	IF ((SUBSTR(orderdate,(dayofweek(thisday)+5)mod 7+1,1)='1') AND 
			(next_buhuo_date<=nobuhuo_end AND next_buhuo_date>=nobuhuo_begin))
		THEN 
			WHILE next_buhuo_date<=nobuhuo_end DO
				SET days=days+get_next_buhuoDay_dateDiff(orderdate, next_buhuo_date);
				SET next_buhuo_date=get_next_buhuo_date(0, orderdate, 0, next_buhuo_date);
			END WHILE;
	END IF;
	return days;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for SPLIT_STR
-- ----------------------------
DROP FUNCTION IF EXISTS `SPLIT_STR`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `SPLIT_STR`(
  x VARCHAR(255),
  delim VARCHAR(12),
  pos INT
) RETURNS varchar(255) CHARSET utf8
RETURN REPLACE(SUBSTRING(SUBSTRING_INDEX(x, delim, pos),
       LENGTH(SUBSTRING_INDEX(x, delim, pos -1)) + 1),
       delim, '')
;;
DELIMITER ;

-- ----------------------------
-- Event structure for autorepliment
-- ----------------------------
DROP EVENT IF EXISTS `autorepliment`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` EVENT `autorepliment` ON SCHEDULE EVERY 1 DAY STARTS '2021-01-15 06:00:00' ON COMPLETION NOT PRESERVE ENABLE DO call everyday_main(CURDATE())
;;
DELIMITER ;

-- ----------------------------
-- Event structure for createMonthTB
-- ----------------------------
DROP EVENT IF EXISTS `createMonthTB`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` EVENT `createMonthTB` ON SCHEDULE EVERY 1 MONTH STARTS '2020-12-02 00:00:00' ON COMPLETION NOT PRESERVE ENABLE DO call proc_createMonthTB()
;;
DELIMITER ;

-- ----------------------------
-- Event structure for do_createbak
-- ----------------------------
DROP EVENT IF EXISTS `do_createbak`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` EVENT `do_createbak` ON SCHEDULE EVERY 1 DAY STARTS '2021-01-28 22:30:00' ON COMPLETION NOT PRESERVE ENABLE DO call proc_createbak()
;;
DELIMITER ;

-- ----------------------------
-- Event structure for do_createview
-- ----------------------------
DROP EVENT IF EXISTS `do_createview`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` EVENT `do_createview` ON SCHEDULE EVERY 1 DAY STARTS '2020-12-14 05:15:00' ON COMPLETION NOT PRESERVE ENABLE DO call proc_createview()
;;
DELIMITER ;

-- ----------------------------
-- Event structure for do_everyday
-- ----------------------------
DROP EVENT IF EXISTS `do_everyday`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` EVENT `do_everyday` ON SCHEDULE EVERY 1 DAY STARTS '2020-12-13 05:45:00' ON COMPLETION NOT PRESERVE ENABLE DO call proc_everyday(null)
;;
DELIMITER ;

-- ----------------------------
-- Event structure for do_everyday_night
-- ----------------------------
DROP EVENT IF EXISTS `do_everyday_night`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` EVENT `do_everyday_night` ON SCHEDULE EVERY 1 DAY STARTS '2020-12-26 23:00:00' ON COMPLETION NOT PRESERVE ENABLE DO call proc_everyday(null)
;;
DELIMITER ;

-- ----------------------------
-- Event structure for do_festivalgoods
-- ----------------------------
DROP EVENT IF EXISTS `do_festivalgoods`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` EVENT `do_festivalgoods` ON SCHEDULE EVERY 1 YEAR STARTS '2021-12-25 02:00:00' ON COMPLETION NOT PRESERVE ENABLE DO begin
declare begindate date;
declare enddate date;
declare yyyy char(4);

set yyyy=year(NOW());
set begindate=concat(yyyy,'-01-01');
set enddate=concat(yyyy,'-12-31');

call proc_festivalGoods(begindate,enddate,2);
end
;;
DELIMITER ;

-- ----------------------------
-- Event structure for do_promotion
-- ----------------------------
DROP EVENT IF EXISTS `do_promotion`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` EVENT `do_promotion` ON SCHEDULE EVERY 1 DAY STARTS '2021-01-11 23:00:00' ON COMPLETION NOT PRESERVE ENABLE DO call proc_createpromotion()
;;
DELIMITER ;

-- ----------------------------
-- Event structure for do_seasongoods
-- ----------------------------
DROP EVENT IF EXISTS `do_seasongoods`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` EVENT `do_seasongoods` ON SCHEDULE EVERY 1 YEAR STARTS '2021-01-05 02:00:00' ON COMPLETION NOT PRESERVE DISABLE DO begin
declare begindate date;
declare enddate date;
declare yyyy char(4);

set yyyy=year(NOW())-1;
set begindate=concat(yyyy,'-01-01');
set enddate=concat(yyyy,'-12-31');

call proc_seasonGoods(begindate,enddate,'04-20','09-19','09-20','04-19',2);
end
;;
DELIMITER ;
