<<<<<<< HEAD
SET NAMES UTF8;
DROP DATABASE IF EXISTS app_jgzapp;
CREATE DATABASE app_jgzapp CHARSET=UTF8;
USE app_jgzapp;
CREATE TABLE converse_user(
	uid INT PRIMARY KEY AUTO_INCREMENT,
	uname VARCHAR(32),
	upwd VARCHAR(32)
);
INSERT INTO converse_user VALUES
(10,'18695898913','111111'),
(20,'490986854@qq.com','222222');

CREATE TABLE converse_product(
	pid INT PRIMARY KEY AUTO_INCREMENT,
	pname VARCHAR(128),
	price FLOAT(12,2),
	pmodel VARCHAR(64),
	pic VARCHAR(128),
	picmd VARCHAR(128),
	piclg VARCHAR(128),
	picsm VARCHAR(128),
	psex INT -- 1.男 2.女 3.踩 4.穿
);
INSERT INTO converse_product VALUES
(1,'【男女同款】Chuck Taylor All Star Core 常青款',369.00,'101001001','img/101001001_1B_NEW.png','img/detail/101001001_1H_NEW.png','img/detail/101001001_1L_NEW.png','img/detail/101001001_1S_NEW.png',1),

(2,'【男女同款】Chuck II 高帮帆布',569.00,'155498C333','img/155498C333_1B_NEW.png','img/detail/155498C333_1H_NEW.png','img/detail/155498C333_1L_NEW.png','img/detail/155498C333_1S_NEW.png',1),

(3,'【男女同款】Jack Purcell S-Series Sneaker Boot 皮革开口笑短靴',720.00,'153937C001','img/153937C001_1B_NEW.png','img/detail/153937C001_1H_NEW.png','img/detail/153937C001_1L_NEW.png','img/detail/153937C001_1S_NEW.png',1),

(4,'【男女同款】Chuck II 高帮皮革',469.00,'153554C303','img/153554C303_1B_NEW.png','img/detail/153554C303_1H_NEW.png','img/detail/153554C303_1L_NEW.png','img/detail/153554C303_1S_NEW.png',1),

(5,'【男女同款】Jack Purcell LTT 皮革开口笑',529.00,'101509111','img/101509111_1B_NEW.png','img/detail/101509111_1H_NEW.png','img/detail/101509111_1L_NEW.png','img/detail/101509111_1S_NEW.png',1),

(6,'【男女同款】Jack Purcell LTT 帆布开口笑',429.00,'1Q699007','img/1Q699007_1B_NEW.png','img/detail/1Q699007_1H_NEW.png','img/detail/1Q699007_1L_NEW.png','img/detail/1Q699007_1S_NEW.png',1),

(7,'【男女同款】Chuck Taylor All Star Street Hiker 户外徒步',560.00,'153666C001','img/153666C001_1B_NEW.png','img/detail/153666C001_1H_NEW.png','img/detail/153666C001_1L_NEW.png','img/detail/153666C001_1S_NEW.png',1),

(8,'【男女同款】Cons Pro Blaze 高帮皮革',560.00,'154182C001','img/154182C001_1B_NEW.png','img/detail/154182C001_1H_NEW.png','img/detail/154182C001_1L_NEW.png','img/detail/154182C001_1S_NEW.png',1),

(9,'【男女同款】Chuck Taylor All Star Core 常青款',399.00,'1Z588001','img/1Z588001_1B_NEW.png','img/detail/1Z588001_1H_NEW.png','img/detail/1Z588001_1L_NEW.png','img/detail/1Z588001_1S_NEW.png',2),

(10,'【男女同款】Chuck Taylor All Star Core 常青款',399.00,'101013600','img/101013600_1B_NEW.png','img/detail/101013600_1H_NEW.png','img/detail/101013600_1L_NEW.png','img/detail/101013600_1S_NEW.png',2),

(11,'【男女同款】Chuck II Core 经典帆布',489.00,'150154C100','img/150154C100_1B_NEW.png','img/detail/150154C100_1H_NEW.png','img/detail/150154C100_1L_NEW.png','img/detail/150154C100_1S_NEW.png',2),

(12,'【女的】Chuck Taylor All Star Brea Leather + Fur 皮革高帮',599.00,'553394C001','img/553394C001_1B_NEW.png','img/detail/553394C001_1H_NEW.png','img/detail/553394C001_1L_NEW.png','img/detail/553394C001_1S_NEW.png',2),

(13,'【男女同款】Jack Purcell LTT 帆布开口笑',429.00,'1Q698987','img/1Q698987_1B_NEW.png','img/detail/1Q698987_1H_NEW.png','img/detail/1Q698987_1L_NEW.png','img/detail/1Q698987_1S_NEW.png',2),

(14,'【男女同款】Chuck II Core 经典帆布',519.00,'150148C100','img/150148C100_1B_NEW.png','img/detail/150148C100_1H_NEW.png','img/detail/150148C100_1L_NEW.png','img/detail/150148C100_1S_NEW.png',2),

(15,'【女的】Chuck Taylor All Star Hi-Rise Boot Shroud Leather + Fur 皮革鞋靴',630.00,'553350C001','img/553350C001_1B_NEW.png','img/detail/553350C001_1H_NEW.png','img/detail/553350C001_1L_NEW.png','img/detail/553350C001_1S_NEW.png',2),

(16,'【女的】Chuck Taylor All Star Gemma 闪亮高帮',512.00,'553444C001','img/553444C001_1B_NEW.png','img/detail/553444C001_1H_NEW.png','img/detail/553444C001_1L_NEW.png','img/detail/553444C001_1S_NEW.png',2),

(17,'【男的】Neoprene Mixed Down Vest 羽绒背心',640.00,'10002867001','img/10002867001_1B_NEW.png','img/detail/10002867001_1H_NEW.png','img/detail/10002867001_1L_NEW.png','img/detail/10002867001_1S_NEW.png',3),

(18,'【男的】Fur Hood Jacket 羽绒夹克',880.00,'10002361001','img/10002361001_1B_NEW.png','img/detail/10002361001_1H_NEW.png','img/detail/10002361001_1L_NEW.png','img/detail/10002361001_1S_NEW.png',3),

(19,'【男的】Box Star Quilted Crew 针织套头衫',280.00,'10002160001','img/10002160001_1B_NEW.png','img/detail/10002160001_1H_NEW.png','img/detail/10002160001_1L_NEW.png','img/detail/10002160001_1S_NEW.png',3),

(20,'【男的】Photo Graphic Crew 针织套头衫',320.00,'10002151001','img/10002151001_1B_NEW.png','img/detail/10002151001_1H_NEW.png','img/detail/10002151001_1L_NEW.png','img/detail/10002151001_1S_NEW.png',3),

(21,'【男女同款】Core Chuck Plus 双肩包',269.00,'10002653410','img/10002653410_1B_NEW.png','img/detail/10002653410_1H_NEW.png','img/detail/10002653410_1L_NEW.png','img/detail/10002653410_1S_NEW.png',4),

(22,'【男的】Chuck Plus Photo 双肩包',240.00,'10002976001','img/10002976001_1B_NEW.png','img/detail/10002976001_1H_NEW.png','img/detail/10002976001_1L_NEW.png','img/detail/10002976001_1S_NEW.png',4),

(23,'【男女同款】Pattern Boat Twin Pack 时尚短袜（2双）',59.00,'10003025049','img/10003025049_1B_NEW.png','img/detail/10003025049_1H_NEW.png','img/detail/10003025049_1L_NEW.png','img/detail/10003025049_1S_NEW.png',4),

(24,'【男女同款】Basic Logo Scarf 基础围巾',136.00,'10003006607','img/10003006607_1B_NEW.png','img/detail/10003006607_1H_NEW.png','img/detail/10003006607_1L_NEW.png','img/detail/10003006607_1S_NEW.png',4),

(25,'【男女同款】Core Chuck Plus 挎包',219.00,'10002974467','img/10002974467_1B_NEW.png','img/detail/10002974467_1H_NEW.png','img/detail/10002974467_1L_NEW.png','img/detail/10002974467_1S_NEW.png',4),

(26,'【女的】Chuck 1.0 Graphic 双肩包',299.00,'10002984607','img/10002984607_1B_NEW.png','img/detail/10002984607_1M_NEW.png','img/detail/10002984607_1L_NEW.png','img/detail/10002984607_1S_NEW.png',4),

(27,'【男女同款】Core Crew Single Pack 基础长袜（1双）',32.00,'10003015102','img/10003015102_1B_NEW.png','img/detail/10003015102_1M_NEW.png','img/detail/10003015102_1L_NEW.png','img/detail/10003015102_1S_NEW.png',4),

(28,'【男女同款】Chuck Baseball Cap 棒球帽',99.00,'10002992607','img/10002992607_1B_NEW.png','img/detail/10002992607_1M_NEW.png','img/detail/10002992607_1L_NEW.png','img/detail/10002992607_1S_NEW.png',4),

(29,'【男的】Core FT Rib Cuff Jogger 经典针织长裤',359.00,'10003124035','img/10003124035_1B_NEW.png','img/detail/10003124035_1M_NEW.png','img/detail/10003124035_1L_NEW.png','img/detail/10003124035_1S_NEW.png',3),

(30,'【女的】CP Knit Pants 针织长裤',359.00,'10003781001','img/10003781001_1B_NEW.png','img/detail/10003781001_1M_NEW.png','img/detail/10003781001_1L_NEW.png','img/detail/10003781001_1S_NEW.png',3),

(31,'【男的】Core L/S Chuck Patch Tee 长袖T恤',160.00,'10002177461','img/10002177461_1B_NEW.png','img/detail/10002177461_1M_NEW.png','img/detail/10002177461_1L_NEW.png','img/detail/10002177461_1S_NEW.png',3),

(32,'【男的】Fleece Sweatpants 针织长裤',399.00,'10002864001','img/10002864001_1B_NEW.png','img/detail/10002864001_1M_NEW.png','img/detail/10002864001_1L_NEW.png','img/detail/10002864001_1S_NEW.png',3);

CREATE TABLE converse_cart(
	cid INT PRIMARY KEY AUTO_INCREMENT,
	userId INT
);
INSERT INTO converse_cart VALUES(101,10);
CREATE TABLE converse_cart_detail(
	did INT PRIMARY KEY AUTO_INCREMENT,
	cartId INT,
	productId INT,
	count INT
);
INSERT INTO converse_cart_detail VALUES
(1,101,15,3),
(2,101,18,1),
(3,101,2,2);
CREATE TABLE converse_order(
	oid BIGINT PRIMARY KEY AUTO_INCREMENT,
	rcvName VARCHAR(32),
	addr VARCHAR(128),
	price FLOAT(12,2),
	payment INT,
	orderTime BIGINT,
	status INT,
	userId INT
);
CREATE TABLE converse_order_detail(
	did INT PRIMARY KEY AUTO_INCREMENT,
	orderId BIGINT,
	productId INT,
	count INT
=======
SET NAMES UTF8;
DROP DATABASE IF EXISTS app_jgzapp;
CREATE DATABASE app_jgzapp CHARSET=UTF8;
USE app_jgzapp;
CREATE TABLE converse_user(
	uid INT PRIMARY KEY AUTO_INCREMENT,
	uname VARCHAR(32),
	upwd VARCHAR(32)
);
INSERT INTO converse_user VALUES
(10,'18239922025','123456'),
(20,'534794206@qq.com','456789');

CREATE TABLE converse_product(
	pid INT PRIMARY KEY AUTO_INCREMENT,
	pname VARCHAR(128),
	price FLOAT(12,2),
	pmodel VARCHAR(64),
	pic VARCHAR(128),
	picmd VARCHAR(128),
	piclg VARCHAR(128),
	picsm VARCHAR(128),
	psex INT -- 1.男 2.女 3.踩 4.穿
);
INSERT INTO converse_product VALUES
(1,'【男女同款】Chuck Taylor All Star Core 常青款',369.00,'101001001','img/101001001_1B_NEW.png','img/detail/101001001_1H_NEW.png','img/detail/101001001_1L_NEW.png','img/detail/101001001_1S_NEW.png',1),

(2,'【男女同款】Chuck II 高帮帆布',569.00,'155498C333','img/155498C333_1B_NEW.png','img/detail/155498C333_1H_NEW.png','img/detail/155498C333_1L_NEW.png','img/detail/155498C333_1S_NEW.png',1),

(3,'【男女同款】Jack Purcell S-Series Sneaker Boot 皮革开口笑短靴',720.00,'153937C001','img/153937C001_1B_NEW.png','img/detail/153937C001_1H_NEW.png','img/detail/153937C001_1L_NEW.png','img/detail/153937C001_1S_NEW.png',1),

(4,'【男女同款】Chuck II 高帮皮革',469.00,'153554C303','img/153554C303_1B_NEW.png','img/detail/153554C303_1H_NEW.png','img/detail/153554C303_1L_NEW.png','img/detail/153554C303_1S_NEW.png',1),

(5,'【男女同款】Jack Purcell LTT 皮革开口笑',529.00,'101509111','img/101509111_1B_NEW.png','img/detail/101509111_1H_NEW.png','img/detail/101509111_1L_NEW.png','img/detail/101509111_1S_NEW.png',1),

(6,'【男女同款】Jack Purcell LTT 帆布开口笑',429.00,'1Q699007','img/1Q699007_1B_NEW.png','img/detail/1Q699007_1H_NEW.png','img/detail/1Q699007_1L_NEW.png','img/detail/1Q699007_1S_NEW.png',1),

(7,'【男女同款】Chuck Taylor All Star Street Hiker 户外徒步',560.00,'153666C001','img/153666C001_1B_NEW.png','img/detail/153666C001_1H_NEW.png','img/detail/153666C001_1L_NEW.png','img/detail/153666C001_1S_NEW.png',1),

(8,'【男女同款】Cons Pro Blaze 高帮皮革',560.00,'154182C001','img/154182C001_1B_NEW.png','img/detail/154182C001_1H_NEW.png','img/detail/154182C001_1L_NEW.png','img/detail/154182C001_1S_NEW.png',1),

(9,'【男女同款】Chuck Taylor All Star Core 常青款',399.00,'1Z588001','img/1Z588001_1B_NEW.png','img/detail/1Z588001_1H_NEW.png','img/detail/1Z588001_1L_NEW.png','img/detail/1Z588001_1S_NEW.png',2),

(10,'【男女同款】Chuck Taylor All Star Core 常青款',399.00,'101013600','img/101013600_1B_NEW.png','img/detail/101013600_1H_NEW.png','img/detail/101013600_1L_NEW.png','img/detail/101013600_1S_NEW.png',2),

(11,'【男女同款】Chuck II Core 经典帆布',489.00,'150154C100','img/150154C100_1B_NEW.png','img/detail/150154C100_1H_NEW.png','img/detail/150154C100_1L_NEW.png','img/detail/150154C100_1S_NEW.png',2),

(12,'【女的】Chuck Taylor All Star Brea Leather + Fur 皮革高帮',599.00,'553394C001','img/553394C001_1B_NEW.png','img/detail/553394C001_1H_NEW.png','img/detail/553394C001_1L_NEW.png','img/detail/553394C001_1S_NEW.png',2),

(13,'【男女同款】Jack Purcell LTT 帆布开口笑',429.00,'1Q698987','img/1Q698987_1B_NEW.png','img/detail/1Q698987_1H_NEW.png','img/detail/1Q698987_1L_NEW.png','img/detail/1Q698987_1S_NEW.png',2),

(14,'【男女同款】Chuck II Core 经典帆布',519.00,'150148C100','img/150148C100_1B_NEW.png','img/detail/150148C100_1H_NEW.png','img/detail/150148C100_1L_NEW.png','img/detail/150148C100_1S_NEW.png',2),

(15,'【女的】Chuck Taylor All Star Hi-Rise Boot Shroud Leather + Fur 皮革鞋靴',630.00,'553350C001','img/553350C001_1B_NEW.png','img/detail/553350C001_1H_NEW.png','img/detail/553350C001_1L_NEW.png','img/detail/553350C001_1S_NEW.png',2),

(16,'【女的】Chuck Taylor All Star Gemma 闪亮高帮',512.00,'553444C001','img/553444C001_1B_NEW.png','img/detail/553444C001_1H_NEW.png','img/detail/553444C001_1L_NEW.png','img/detail/553444C001_1S_NEW.png',2),

(17,'【男的】Neoprene Mixed Down Vest 羽绒背心',640.00,'10002867001','img/10002867001_1B_NEW.png','img/detail/10002867001_1H_NEW.png','img/detail/10002867001_1L_NEW.png','img/detail/10002867001_1S_NEW.png',3),

(18,'【男的】Fur Hood Jacket 羽绒夹克',880.00,'10002361001','img/10002361001_1B_NEW.png','img/detail/10002361001_1H_NEW.png','img/detail/10002361001_1L_NEW.png','img/detail/10002361001_1S_NEW.png',3),

(19,'【男的】Box Star Quilted Crew 针织套头衫',280.00,'10002160001','img/10002160001_1B_NEW.png','img/detail/10002160001_1H_NEW.png','img/detail/10002160001_1L_NEW.png','img/detail/10002160001_1S_NEW.png',3),

(20,'【男的】Photo Graphic Crew 针织套头衫',320.00,'10002151001','img/10002151001_1B_NEW.png','img/detail/10002151001_1H_NEW.png','img/detail/10002151001_1L_NEW.png','img/detail/10002151001_1S_NEW.png',3),

(21,'【男女同款】Core Chuck Plus 双肩包',269.00,'10002653410','img/10002653410_1B_NEW.png','img/detail/10002653410_1H_NEW.png','img/detail/10002653410_1L_NEW.png','img/detail/10002653410_1S_NEW.png',4),

(22,'【男的】Chuck Plus Photo 双肩包',240.00,'10002976001','img/10002976001_1B_NEW.png','img/detail/10002976001_1H_NEW.png','img/detail/10002976001_1L_NEW.png','img/detail/10002976001_1S_NEW.png',4),

(23,'【男女同款】Pattern Boat Twin Pack 时尚短袜（2双）',59.00,'10003025049','img/10003025049_1B_NEW.png','img/detail/10003025049_1H_NEW.png','img/detail/10003025049_1L_NEW.png','img/detail/10003025049_1S_NEW.png',4),

(24,'【男女同款】Basic Logo Scarf 基础围巾',136.00,'10003006607','img/10003006607_1B_NEW.png','img/detail/10003006607_1H_NEW.png','img/detail/10003006607_1L_NEW.png','img/detail/10003006607_1S_NEW.png',4),

(25,'【男女同款】Core Chuck Plus 挎包',219.00,'10002974467','img/10002974467_1B_NEW.png','img/detail/10002974467_1H_NEW.png','img/detail/10002974467_1L_NEW.png','img/detail/10002974467_1S_NEW.png',4),

(26,'【女的】Chuck 1.0 Graphic 双肩包',299.00,'10002984607','img/10002984607_1B_NEW.png','img/detail/10002984607_1M_NEW.png','img/detail/10002984607_1L_NEW.png','img/detail/10002984607_1S_NEW.png',4),

(27,'【男女同款】Core Crew Single Pack 基础长袜（1双）',32.00,'10003015102','img/10003015102_1B_NEW.png','img/detail/10003015102_1M_NEW.png','img/detail/10003015102_1L_NEW.png','img/detail/10003015102_1S_NEW.png',4),

(28,'【男女同款】Chuck Baseball Cap 棒球帽',99.00,'10002992607','img/10002992607_1B_NEW.png','img/detail/10002992607_1M_NEW.png','img/detail/10002992607_1L_NEW.png','img/detail/10002992607_1S_NEW.png',4),

(29,'【男的】Core FT Rib Cuff Jogger 经典针织长裤',359.00,'10003124035','img/10003124035_1B_NEW.png','img/detail/10003124035_1M_NEW.png','img/detail/10003124035_1L_NEW.png','img/detail/10003124035_1S_NEW.png',3),

(30,'【女的】CP Knit Pants 针织长裤',359.00,'10003781001','img/10003781001_1B_NEW.png','img/detail/10003781001_1M_NEW.png','img/detail/10003781001_1L_NEW.png','img/detail/10003781001_1S_NEW.png',3),

(31,'【男的】Core L/S Chuck Patch Tee 长袖T恤',160.00,'10002177461','img/10002177461_1B_NEW.png','img/detail/10002177461_1M_NEW.png','img/detail/10002177461_1L_NEW.png','img/detail/10002177461_1S_NEW.png',3),

(32,'【男的】Fleece Sweatpants 针织长裤',399.00,'10002864001','img/10002864001_1B_NEW.png','img/detail/10002864001_1M_NEW.png','img/detail/10002864001_1L_NEW.png','img/detail/10002864001_1S_NEW.png',3);

CREATE TABLE converse_cart(
	cid INT PRIMARY KEY AUTO_INCREMENT,
	userId INT
);
INSERT INTO converse_cart VALUES(101,10);
CREATE TABLE converse_cart_detail(
	did INT PRIMARY KEY AUTO_INCREMENT,
	cartId INT,
	productId INT,
	count INT
);
INSERT INTO converse_cart_detail VALUES
(1,101,15,3),
(2,101,18,1),
(3,101,2,2);
CREATE TABLE converse_order(
	oid BIGINT PRIMARY KEY AUTO_INCREMENT,
	rcvName VARCHAR(32),
	addr VARCHAR(128),
	price FLOAT(12,2),
	payment INT,
	orderTime BIGINT,
	status INT,
	userId INT
);
CREATE TABLE converse_order_detail(
	did INT PRIMARY KEY AUTO_INCREMENT,
	orderId BIGINT,
	productId INT,
	count INT
>>>>>>> 第二次上传
);