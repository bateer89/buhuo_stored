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
DROP TABLE IF EXISTS tmp_daily_goods_tmp;
CREATE TABLE `tmp_daily_goods_tmp` (
`id`  bigint(36) NOT NULL AUTO_INCREMENT COMMENT '主键' ,
`create_by`  varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人' ,
`create_time`  datetime NULL DEFAULT NULL COMMENT '创建日期' ,
`update_by`  varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人' ,
`update_time`  datetime NULL DEFAULT NULL COMMENT '更新日期' ,
`sys_org_code`  varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '所属部门' ,
`shopid`  varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '门店编码' ,
`shopname`  varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL ,
`blid`  varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '部类编码' ,
`cgid`  varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL ,
`xlid`  varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '小类编码' ,
`xlname`  varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '小类名称' ,
`goodsid`  varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品编码' ,
`goodsname`  varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品名称' ,
`venderid`  varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL ,
`vendername`  varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL ,
`send_type`  int(11) NULL DEFAULT NULL ,
`classtype`  varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '补货类型' ,
`normalprice`  decimal(16,2) NULL DEFAULT NULL COMMENT '定价' ,
`spec`  varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL ,
`minstock`  decimal(16,2) NULL DEFAULT 0.00 COMMENT '最小库存数量' ,
`minorder`  decimal(16,2) NULL DEFAULT 1.00 COMMENT '最小起订量' ,
`closeqty`  decimal(16,3) NULL DEFAULT 0.000 COMMENT '昨日日终库存数量' ,
`qty`  decimal(16,3) NULL DEFAULT 0.000 COMMENT '计算生成的补货数量' ,
`manual_qty`  decimal(16,3) NULL DEFAULT 0.000 COMMENT '手动输入的补货数量' ,
`flag`  varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '补货标识' ,
`sdate`  datetime NULL DEFAULT NULL COMMENT '更新日期时间' ,
`holiday_begindate`  datetime NULL DEFAULT NULL COMMENT '节日开始日期' ,
`seasontype`  varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '季节属性' ,
`rate1`  decimal(16,2) NULL DEFAULT NULL COMMENT '季节时间达到Period1，日均销量的折扣比例' ,
`rate2`  decimal(16,2) NULL DEFAULT NULL COMMENT '季节时间达到Period2，日均销量的折扣比例' ,
`period1`  decimal(16,2) NULL DEFAULT NULL COMMENT '季节时间达到的比例1' ,
`period2`  decimal(16,2) NULL DEFAULT NULL COMMENT '季节时间达到的比例2' ,
`holidaytype`  varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '节日属性' ,
`holiday_enddate`  datetime NULL DEFAULT NULL COMMENT '节日结束日期' ,
`rate`  varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '季节下降点之后日均销量的折扣比例' ,
`zs`  decimal(16,2) NULL DEFAULT 1.00 COMMENT '春节指数' ,
`ho_rate`  decimal(16,2) NULL DEFAULT 1.00 COMMENT '节日安全系数' ,
`ywq_organ`  varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '业务区机构编码' ,
`shop_organ`  varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '门店机构编码' ,
`bl_organ`  varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '部类机构编码' ,
`kl_organ`  varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '课类机构编码' ,
`bl_organ_all`  varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '部类全部机构编码' ,
`kl_organ_all`  varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '课类全部机构编码' ,
`auto_id`  bigint(20) NULL DEFAULT NULL ,
`trueprice`  decimal(16,2) NULL DEFAULT NULL ,
`display_flag`  varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '0—默认值，1—场外  2—堆头  3—端头' ,
`storeqty`  decimal(16,3) NULL DEFAULT NULL ,
`config_flag`  char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' ,
PRIMARY KEY (`id`),
INDEX `index_1` (`shopid`, `goodsid`) USING BTREE ,
INDEX `sdate` (`sdate`) USING BTREE ,
INDEX `index_2` (`xlid`) USING BTREE ,
INDEX `index_3` (`venderid`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8mb4 COLLATE=utf8mb4_general_ci
ROW_FORMAT=DYNAMIC;



INSERT INTO tmp_daily_goods_tmp (shopid,shopname,xlid,goodsid,goodsname,venderid,classtype,normalprice,spec,flag,sdate,trueprice)
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
update tmp_daily_goods_tmp a join v_vender b on a.venderid=b.venderid set a.vendername=b.vendername,a.send_type=b.send_type;

##更新采购线id
update tmp_daily_goods_tmp a join v_zn_cg_dl_zl_xl b on a.xlid=b.xlid set a.cgid=b.cgid,a.xlname=b.xlname;

##对T类商品进行标注(v_tgoods),并删除T类商品
UPDATE tmp_daily_goods_tmp a,v_tgoods b 
SET a.classtype='T' 
WHERE a.shopid=this_shopid AND a.goodsid=b.goodsid;

delete from tmp_daily_goods_tmp where classtype='T';

##
##update tmp_daily_goods_tmp a join zn_config_v b
##on a.shopid=b.shopid and a.venderid=b.venderid and a.classtype=b.classtype
##set a.orderdate=b.Orderdate,a.weekflag=b.Weekflag,a.safedays=b.Safedays,a.startweek=b.Startweek,a.round_rule=b.round_rule

##############10min#############
#c 更新zn_goods表Minstock、minorder字段
UPDATE tmp_daily_goods_tmp,v_minorder 
SET `tmp_daily_goods_tmp`.`minorder`=v_minorder.minorderqty,
`tmp_daily_goods_tmp`.`minstock`=v_minorder.minstockqty 
WHERE 
v_minorder.shopid=this_shopid AND tmp_daily_goods_tmp.shopid=this_shopid AND 
v_minorder.goodsid=tmp_daily_goods_tmp.goodsid;

#d 用v_pos_2w数据更新ABC分类并更新zn_goods表的classtype,更新sdate
UPDATE tmp_daily_goods_tmp a,shop_classify b set a.classtype=b.classtype  
WHERE a.shopid=this_shopid AND b.shopid=this_shopid AND a.goodsid=b.goodsid;


#	e	更新zn_goods表的季节属性相关字段：只有在季节的时间段内需要
#更新季节属性，
#源表zn_season_xl
##############10min#############
##!!时间段外为普通商品!!

UPDATE tmp_daily_goods_tmp a,zn_season_xl b 
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

UPDATE tmp_daily_goods_tmp JOIN tmp_everyday_holiday1 x
ON tmp_daily_goods_tmp.shopid=this_shopid AND tmp_daily_goods_tmp.goodsid=x.goodsid
SET tmp_daily_goods_tmp.flag=2,
		tmp_daily_goods_tmp.holidaytype=1;

#---F2:当前日期>=(春节开始时间-6天)至初一（sundate）之间并且商品不属于zn_holiday_goods表中春节专属商品时, 更新节日属性=2及起止时间，这期间陆续用春节指数补货。
IF (today>=springfestivalbegin AND today<=sanshi)THEN 
#删除春节特殊商品
		/*DELETE c FROM tmp_daily_goods_tmp c,(SELECT a.* FROM 
	 (SELECT tmp_daily_goods_tmp.goodsid FROM tmp_daily_goods_tmp WHERE tmp_daily_goods_tmp.shopid=this_shopid) a,
	 (SELECT zn_holiday_goods.goodsid FROM zn_holiday_goods WHERE zn_holiday_goods.holidayid=this_holidayid) b 
		WHERE a.goodsid=b.goodsid) d 
		WHERE c.shopid=this_shopid and c.goodsid=d.goodsid;*/
		

		UPDATE tmp_daily_goods_tmp c
			SET c.holidaytype=2,
					c.holiday_begindate=springfestivalbegin,
					c.holiday_enddate=sanshi
			WHERE c.shopid=this_shopid and flag!=2;
		
		
		UPDATE tmp_daily_goods_tmp c,zn_spring_xl sx 
		SET c.zs=sx.zs,
				c.ho_rate=sx.rate
		WHERE c.shopid=this_shopid AND sx.xlid=c.xlid AND sx.holidayid=this_holidayid;
		
END IF;



# g.季节性商品首次补货后在到货之前暂不进行补货：
#在zn_season_across表中并且当前日期<此表中的nextdate
#(这个条件避免季节性商品首次补货后没有到货时重复订货的问题) 
#,更新zn_goods表flag=8

UPDATE tmp_daily_goods_tmp,zn_season_across 
SET flag=8 
WHERE tmp_daily_goods_tmp.shopid=this_shopid AND zn_season_across.shopid=this_shopid AND 
zn_season_across.goodsid=tmp_daily_goods_tmp.goodsid AND 
today<zn_season_across.nextdate;

#h.处理zn_season_across表数据：当前日期大于表中季节开始日期的记录可删除
DELETE FROM zn_season_across WHERE concat(year(today),'-',zn_season_across.begindate)<today;


#closeqty 赋值
UPDATE tmp_daily_goods_tmp a, v_shopsstock b 
SET a.closeqty=b.qty,
		a.flag=CASE WHEN b.qty<0 THEN 7 
								ELSE a.flag END 
WHERE a.shopid=shopId AND b.shopid=shopId AND a.goodsid=b.goodsid;

update tmp_daily_goods_tmp a join v_isstore b on a.shopid=b.shopid and a.cgid=b.cgid and a.venderid=b.venderid
set a.storeqty=0;
update tmp_daily_goods_tmp a join v_stock_store b on a.goodsid=b.goodsid set a.storeqty=b.qty where a.storeqty=0;


END