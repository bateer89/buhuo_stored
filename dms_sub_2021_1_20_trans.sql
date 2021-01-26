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
INDEX `index_1` (`shopid`, `goodsid`, `zlprice`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
ROW_FORMAT=DYNAMIC;
SELECT x.shopid,x.goodsid,x.zlprice,COUNT(1) AS dayNumber
FROM tmp_everyday_dms_0 x,tmp_dms1 y 
WHERE x.goodsid=y.goodsid AND 
x.sdate>=changeday AND DATE(NOW())<DATE_ADD(changeday,INTERVAL 7*y.weeknum DAY) AND x.zlprice=0.0 AND x.qty=0.0
GROUP BY  x.shopid
         ,x.goodsid
         ,x.zlprice;

UPDATE tmp_everyday_tmp_tmp_1 a,tmp_everyday_tmp_tmp_2 b 
SET a.dayNumber=a.dayNumber+b.dayNumber
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
INDEX index_1 (shopid, goodsid, zkb) USING BTREE 
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
FROM tmp_everyday_dms_0 x 
where x.qty!=0 or x.zlprice!=0 AND 
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


####new
UPDATE tmp_everyday_tmp_2 a,tmp_everyday_tmp_tmp_1 b
SET a.allDayNumber=a.allDayNumber+b.dayNumber
WHERE a.goodsid=b.goodsid AND a.zkb=b.zkb;
####


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