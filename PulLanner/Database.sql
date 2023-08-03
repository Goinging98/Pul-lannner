 DROP SCHEMA garden;
CREATE SCHEMA garden;
USE garden;

------------------------------------------------
----------------- 식물 관련 테이블 ----------------
------------------------------------------------
-- 다육이 
CREATE TABLE drygardenDtl(
	cntntsNo INT,
	cntntsSj TEXT,
    clNm TEXT,
	scnm	TEXT,
	thumbImgUrl1	TEXT,
	imgUrl1	TEXT,
	thumbImgUrl2	TEXT,
	imgUrl2	TEXT, 
	clCodeDc	TEXT,
	distbNm	TEXT,
	orgplce	TEXT,
	stleSeNm	TEXT, 
    flwrInfo TEXT,                        
	lfclChngeInfo TEXT,                     
	rdxStleNm TEXT,
	grwtInfo  TEXT,    
	grwtseVeNm  TEXT,         
	grwhTpInfo TEXT,                      
	pswntrTpInfo TEXT,                       
	chartrInfo TEXT,
	lighttInfo TEXT,
	waterCycleInfo TEXT,
	prpgtInfo TEXT,
	hgtmMhmrInfo TEXT,
	dlthtsInfo TEXT,
	manageLevelNm TEXT,
	manageDemandNm TEXT,
	frtlzrInfo TEXT,
	batchPlaceInfo TEXT,
	tipInfo TEXT,
	mainImgUrl1 TEXT,
	mainImgUrl2 TEXT,
	lightImgUrl1 TEXT,
	lightImgUrl2 TEXT,
	lightImgUrl3 TEXT,
	PRIMARY KEY (cntntsNo)
);

SELECT * FROM drygardenDtl;


-- 꽃
create table flowerList(
	dataNo INT AUTO_INCREMENT,
	fMonth INT,
	fDay INT,
	flowNm VARCHAR(1000),
	flowLang VARCHAR(1000),
	fileName1 VARCHAR(1000),
	fileName2 VARCHAR(1000),
	fileName3 VARCHAR(1000),
	imgUrl1 VARCHAR(1000),
	imgUrl2 VARCHAR(1000),
	imgUrl3 VARCHAR(1000),
	publishOrg VARCHAR(1000),
    PRIMARY KEY (dataNo)
);

SELECT * FROM flowerList;

create table flowerDetail(
	dataNo INT AUTO_INCREMENT,
	fMonth INT,
	fDay INT,
	flowNm VARCHAR(1000),
	fSctNm VARCHAR(1000),
	fEngNm VARCHAR(1000),
	flowLang VARCHAR(1000),
	fContent VARCHAR(1500),
	fUse VARCHAR(1500),
	fGrow VARCHAR(1500),
	fType VARCHAR(1500),
	fileName1 VARCHAR(1000),
	fileName2 VARCHAR(1000),
	fileName3 VARCHAR(1000),
	imgUrl1 VARCHAR(1000),
	imgUrl2 VARCHAR(1000),
	imgUrl3 VARCHAR(1000),
    PRIMARY KEY (dataNo)
);
select * from flowerDetail;

-- 실내 정원용 식물 
CREATE TABLE gardenDtl(
	cntntsNo	INT,
	cntntsSj	TEXT,
    rtnFileSeCode	VARCHAR(500),
	rtnFileSn	TEXT,
	rtnOrginlFileNm	TEXT,
	rtnStreFileNm	TEXT,
	rtnFileCours	TEXT,
	rtnImageDc	TEXT,
	rtnThumbFileNm	TEXT,
	rtnImgSeCode	VARCHAR(500),
	rtnFileUrl	TEXT,
	rtnThumbFileUrl	TEXT,
    plntbneNm TEXT,                        
	plntzrNm TEXT,                     
	distbNm TEXT,
	fmlNm  TEXT,    
	fmlCodeNm  VARCHAR(100),              
	orgplceInfo TEXT,                      
	adviseInfo TEXT,                       
	 imageEvlLinkCours TEXT,
	 growthHgInfo TEXT,
	 growthAraInfo TEXT,
	 lefStleInfo TEXT,
	 smellCode VARCHAR(100),
	 smellCodeNm TEXT,
	 toxctyInfo TEXT,
	 prpgtEraInfo TEXT,
	 etcEraInfo TEXT,
	 managelevelCode TEXT,
	 managelevelCodeNm TEXT,
	 grwtveCode VARCHAR(100),
	 grwtveCodeNm TEXT,
	 grwhTpCode VARCHAR(100),
	 grwhTpCodeNm TEXT,
	 winterLwetTpCode VARCHAR(100),
	 winterLwetTpCodeNm TEXT,
	 hdCode VARCHAR(100),
	 hdCodeNm TEXT,
	 frtlzrInfo TEXT,
	 soilInfo TEXT,
	 watercycleSprngCode VARCHAR(100),
	 watercycleSprngCodeNm TEXT,
	 watercycleSummerCode VARCHAR(100),
	 watercycleSummerCodeNm TEXT,
	 watercycleAutumnCode VARCHAR(100),
	 watercycleAutumnCodeNm TEXT,
	 watercycleWinterCode VARCHAR(100),
	 watercycleWinterCodeNm TEXT,
	 dlthtsManageInfo TEXT,
	 speclmanageInfo TEXT,
	 fncltyInfo TEXT,
	 flpodmtBigInfo TEXT,
	 flpodmtMddlInfo TEXT,
	 flpodmtSmallInfo TEXT,
	 managedemanddoCode VARCHAR(100),
	 managedemanddoCodeNm TEXT,
	 clCode VARCHAR(100),
	 clCodeNm TEXT,
	 grwhstleCode VARCHAR(100),
	 grwhstleCodeNm TEXT,
	 indoorpsncpacompositionCode VARCHAR(100),
	 indoorpsncpacompositionCodeNm TEXT,
	 eclgyCode VARCHAR(100),
	 eclgyCodeNm TEXT,
	 lefmrkCode VARCHAR(100),
	 lefmrkCodeNm TEXT,
	 lefcolrCode VARCHAR(100),
	 lefcolrCodeNm TEXT,
	 ignSeasonCode VARCHAR(100),
	 ignSeasonCodeNm TEXT,
	 flclrCode VARCHAR(100),
	 flclrCodeNm TEXT,
	 fmldeSeasonCode VARCHAR(100),
	 fmldeSeasonCodeNm TEXT,
	 fmldecolrCode VARCHAR(100),
	 fmldecolrCodeNm TEXT,
	 prpgtmthCode VARCHAR(100),
	 prpgtmthCodeNm TEXT,
	 lighttdemanddoCode VARCHAR(100),
	 lighttdemanddoCodeNm TEXT,
	 postngplaceCode VARCHAR(100),
	 postngplaceCodeNm TEXT,
	 dlthtsCode VARCHAR(100),
	 dlthtsCodeNm TEXT,
     PRIMARY KEY (cntntsNo)
);

SELECT * FROM gardenDtl;




------------------------------------------------
--------------- MEMBER 관련 테이블 ----------------
------------------------------------------------
drop table member;
CREATE TABLE MEMBER (
    mNo      INT  PRIMARY KEY AUTO_INCREMENT,
    ID 		 VARCHAR(30) NOT NULL UNIQUE,
    PASSWORD VARCHAR(100) NOT NULL,
    ROLE 	 VARCHAR(10) DEFAULT 'ROLE_USER',
    NAME 	 VARCHAR(15) NOT NULL,
    PHONE 	 VARCHAR(13),
    EMAIL 	 VARCHAR(100),
    ADDR1  VARCHAR(100),
    ADDR2  VARCHAR(100),
    ADDR3  VARCHAR(100),
    HOBBY 	 VARCHAR(100),
    STATUS 	 VARCHAR(1) DEFAULT 'Y' CHECK(STATUS IN('Y', 'N')),
    ENROLL_DATE DATETIME  DEFAULT CURRENT_TIMESTAMP,
    MODIFY_DATE DATETIME DEFAULT CURRENT_TIMESTAMP
);



INSERT INTO MEMBER (
    mNo, 
    ID, 
    PASSWORD, 
    ROLE,
    NAME, 
    PHONE, 
    EMAIL, 
    ADDR1, 
    ADDR2, 
    ADDR3, 
    HOBBY, 
    STATUS, 
    ENROLL_DATE, 
    MODIFY_DATE
) VALUES(
    0, 
    'admin', 
    '1234', 
    'ROLE_ADMIN', 
    '관리자', 
    '010-1234-4341', 
    'admin@test.com', 
    '',
    '',
    '',
    DEFAULT,
    DEFAULT,
    DEFAULT,
    DEFAULT
);

COMMIT;
SELECT * FROM MEMBER;

------------------------------------------------
--------------- SCRAP 관련 테이블 ----------------
------------------------------------------------
CREATE TABLE SCRAP_PLANT (
	mNO INT,
    NUM INT
);
CREATE TABLE SCRAP_PLACE (
	mNO INT,
    NUM INT
);
CREATE TABLE SCRAP_WRITING (
	mNO INT,
    NUM INT
);

-------------------------------------------------
--------------- Board 관련 테이블 ------------------
-------------------------------------------------
CREATE TABLE BOARD (	
    bNo INT PRIMARY KEY AUTO_INCREMENT,
    mNo INT, 
	TITLE VARCHAR(1000), 
	CONTENT VARCHAR(2000), 
	TYPE VARCHAR(100), 
	ORIGINAL_FILENAME VARCHAR(100), 
	RENAMED_FILENAME VARCHAR(100), 
	READCOUNT INT DEFAULT 0, 
    STATUS VARCHAR(1) DEFAULT 'Y' CHECK (STATUS IN('Y', 'N')),
    CREATE_DATE DATETIME  DEFAULT CURRENT_TIMESTAMP, 
    MODIFY_DATE DATETIME  DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT FK_BOARD_WRITER FOREIGN KEY(mNo) REFERENCES MEMBER(mNo) ON DELETE SET NULL
);

COMMIT;
SELECT * FROM BOARD;

-------------------------------------------------
---------- Community Board 관련 테이블 -------------
-------------------------------------------------
CREATE TABLE COMMBOARD (
	bNo 	INT AUTO_INCREMENT,
    mNo 	INT,
    TITLE	VARCHAR(1000),
    CONTENT	VARCHAR(2000),
    TYPE	VARCHAR(10),
    ORIGINAL_FILENAME VARCHAR(100), 
	RENAMED_FILENAME VARCHAR(100), 
	READCOUNT INT DEFAULT 0, 
    STATUS VARCHAR(1) DEFAULT 'Y' CHECK (STATUS IN('Y', 'N')),
    CREATE_DATE DATETIME  DEFAULT CURRENT_TIMESTAMP, 
    MODIFY_DATE DATETIME  DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT PK_COMMBOARD_NO PRIMARY KEY(bNO),
    CONSTRAINT FK_COMMBOARD_WRITER FOREIGN KEY(mNo) REFERENCES MEMBER(mNo) ON DELETE SET NULL
);

INSERT INTO COMMBOARD VALUES(0, 1, '내 식물은 너무 멋져!', '내가 키운 선인장 너무 멋있는듯 정말 최고의 선인장이야! 선인장은 정말 멋져', 'PROUD', '원본파일명.txt', '변경된파일명.txt', DEFAULT, 'Y', DEFAULT, DEFAULT);
INSERT INTO COMMBOARD VALUES(0, 1, '선인장은 이렇게 키우는게 정석', '선인장에게 물을 준다면 그것은 사치다. 강하게 키워야 한다. 물을 최대한 주지 말고 사막의 오아시스 처럼 주자', 'HONEY', '원본파일명.txt', '변경된파일명.txt', DEFAULT, 'Y', DEFAULT, DEFAULT);
INSERT INTO COMMBOARD VALUES(0, 1, '가시가 더 길어진다..', '이번 기간에는 선인장의 가시가 더 두껍고 길어졌다. 손끝을 살짝 대봤는데 엄청 따갑다..', 'OBSERVE', '원본파일명.txt', '변경된파일명.txt', DEFAULT, 'Y', DEFAULT, DEFAULT);

COMMIT;
SELECT * FROM COMMBOARD;

SELECT	B.bNO, B.TYPE, B.TITLE, M.ID, B.CREATE_DATE, B.ORIGINAL_FILENAME, B.READCOUNT, B.STATUS
		FROM COMMBOARD B
		JOIN MEMBER M ON(C.mNO = M.mNO)
		WHERE B.TYPE = 'PROUD'
		AND B.STATUS = 'Y';
        
INSERT INTO COMMBOARD(
			BNO, MNO, TITLE,
			CONTENT, ORIGINAL_FILENAME,
			RENAMED_FILENAME, READCOUNT, STATUS,
			CREATE_DATE, MODIFY_DATE, TYPE	
		) VALUES (
			0, 1, 'abc', 
			'content', 'original', 
			'renamedFileName', DEFAULT, DEFAULT, 
			DEFAULT, DEFAULT, 'PROUD'			
		);


------------------------------------------------------------------
------------------------- REPLY 관련 테이블 -------------------------
------------------------------------------------------------------
CREATE TABLE REPLY(
  rNo INT PRIMARY KEY AUTO_INCREMENT,
  bNo INT,
  mNo INT,
  CONTENT VARCHAR(1000),
  STATUS VARCHAR(1) DEFAULT 'Y' CHECK (STATUS IN ('Y', 'N')),
  CREATE_DATE DATETIME DEFAULT CURRENT_TIMESTAMP,
  MODIFY_DATE DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (bNo) REFERENCES BOARD(bNo),
  FOREIGN KEY (mNo) REFERENCES MEMBER(mNo)
);

COMMIT;
SELECT * FROM REPLY;


------------------------------------------------------------------
------------------------- COMMREPLY 관련 테이블 -------------------------
------------------------------------------------------------------
CREATE TABLE COMMREPLY(
  rNo INT PRIMARY KEY AUTO_INCREMENT,
  bNo INT,
  mNo INT,
  CONTENT VARCHAR(1000),
  TYPE VARCHAR(10),
  STATUS VARCHAR(1) DEFAULT 'Y' CHECK (STATUS IN ('Y', 'N')),
  CREATE_DATE DATETIME DEFAULT CURRENT_TIMESTAMP,
  MODIFY_DATE DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (bNo) REFERENCES COMMBOARD(bNo),
  FOREIGN KEY (mNo) REFERENCES MEMBER(mNo)
);

COMMIT;
SELECT * FROM COMMREPLY;

INSERT INTO COMMREPLY(
				RNO, BNO, MNO, 
				CONTENT, STATUS, CREATE_DATE, MODIFY_DATE, TYPE
		) VALUES(
				0, 1, 1, '멋져요',
				DEFAULT, DEFAULT, DEFAULT, 'HONEY'
			);

------------------------------------------------------------------
------------------------- Shop 관련 테이블 -------------------------
------------------------------------------------------------------
create table Product
(
	  pNo int auto_increment primary key,
	  title varchar(1000), 
	  link varchar(1000),
	  image varchar(1000),
	  lprice int,
	  hprice int,
	  mallName varchar(1000),
	  productId varchar(1000),
	  productType varchar(1000),
	  maker varchar(1000),
	  brand varchar(1000),
	  category1 varchar(1000),
	  category2 varchar(1000),
	  category3 varchar(1000),
	  category4 varchar(1000),
      scoreAVG double
);

create table News
(
	nNo int auto_increment primary key,
	title varchar(1000),
	originallink varchar(1000),
	link varchar(1000),
	description varchar(1000),
	pubDate datetime
);

create table Cart
(
	mNo int,
    pNo int,
    amount int,
	foreign key (mNo) references Member(mNo),
	foreign key (pNo) references Product(pNo),
    primary key (mNo, pNo)
);


create table ProductReply
(
	rNo int auto_increment primary key,
	mNo int,
    pNo int,
    content varchar(1000),
    score int, 
    createDate timestamp DEFAULT CURRENT_TIMESTAMP,
    foreign key (mNo) references Member(mNo),
	foreign key (pNo) references Product(pNo)
);


-- DML  시작
insert into Member (mNo, id, password, name, email) values(0, 'admin', '1212', '홍길동', 'admin@email.com');
insert into Member (mNo, id, password, name, email) values(0, 'test1', '1212', '최길동', 'test2@email.com');
insert into Member (mNo, id, password, name, email) values(0, 'test2', '1212', '박길동', 'test2@email.com');
select * from Member;



-- 여기까지만 초기화로 돌리세요!!

insert into Product 
	(pNo, title, link, image, lprice, hprice, mallName, 
	productId, productType, maker, brand, category1, category2, category3, category4) 
values(0, '키보드1', null,  null, 50000, 0, '키보드 전문샵', 'test1', '1', '웨이코스', '씽크웨이', 
'디지털/가전','주변기기','키보드','유선키보드');

insert into Product 
	(pNo, title, link, image, lprice, hprice, mallName, 
	productId, productType, maker, brand, category1, category2, category3, category4) 
values(0, '키보드2', null,  null, 50000, 0, '키보드 전문샵', 'test1', '1', '웨이코스', '씽크웨이', 
'디지털/가전','주변기기','키보드','유선키보드');
select * from Product;
select * from Product LIMIT 0, 10; 

insert into News (nNo, title, originallink, link, description, pubDate) values(0, '뉴스1', null, null, '뉴스 내용1', sysdate());
insert into News (nNo, title, originallink, link, description, pubDate) values(0, '뉴스2', null, null, '뉴스 내용2', sysdate());
select * from News;


insert into CART (mNo, pNo, amount) values (1,1,1);
UPDATE CART set amount = 2 where mNo = 1 and pNo = 1;
SELECT * FROM CART;

SELECT * FROM Cart 
INNER JOIN Product ON Cart.pNo = Product.pNo
INNER JOIN Member ON Cart.mNo = Member.mNo;

insert into ProductReply (rNo, mNo, pNo, content, score, createDate) values (0,1,1, '좋은 제품입니다.', 5, default);
SELECT * FROM ProductReply;

SELECT * FROM ProductReply 
INNER JOIN Member ON Reply.mNo = Member.mNo
WHERE pNo = 1;

commit;


SELECT AVG(score) FROM ProductReply where pno = 1;

UPDATE product set scoreAVG = (SELECT AVG(score) FROM ProductReply where pno = 1) where pNo = 1;

select * from product where pno = 1;

SELECT  
	*
FROM Product 
left outer JOIN Cart  ON Cart.pno = Product.pno
left outer JOIN Member ON Cart.mNo = Member.mNo
where Cart.mNo = 1;


SELECT * FROM Cart 
INNER JOIN Product ON Cart.pNo = Product.pNo
INNER JOIN Member ON Cart.mNo = Member.mNo
where Member.mno = 1;

------------------------------------------------------------------
------------------------- PLANTSHOP 관련 테이블 -------------------------
------------------------------------------------------------------
CREATE TABLE PLANTSHOP (
	PARCELNO INT PRIMARY KEY AUTO_INCREMENT,
    mNO INT,
	PARCELTITLE VARCHAR(100),
	PARCELCONTENT VARCHAR(3000),
	PARCELTYPE VARCHAR(100), -- 글 타입--
	PARCELIMG VARCHAR(500), -- 식물 이미지--
	PARCELIMGEDT VARCHAR(500), -- 수정된 식물 이미지--
	CRTDATE DATETIME DEFAULT CURRENT_TIMESTAMP,
	MDFDATE DATETIME DEFAULT CURRENT_TIMESTAMP,
	PARCELPRICE INT,
	PARCELSTATUS VARCHAR(10) DEFAULT 'Y',
	PARCELCOUNT INT DEFAULT 0,
    PLANTTYPE VARCHAR(100), -- 식물 타입(실내정원, 꽃, 다육이)--
    PLANTNO INT,
    
    CONSTRAINT FK_PLANTSHOP_WRITER FOREIGN KEY(mNO) REFERENCES MEMBER(mNO) ON DELETE SET NULL
);    
INSERT INTO PLANTSHOP 
VALUES(0, 1, '선인장 분양합니다', '애지중지 2년동안 키운 선인장 분양합니다', '식물', '원본파일명.txt', '변경된파일명.txt', DEFAULT, DEFAULT, 5000, 'Y', DEFAULT, '실내정원');

COMMIT;

SELECT * FROM PLANTSHOP;

CREATE TABLE PLANTPARCELREPLY (
	PARCELRNO INT PRIMARY KEY AUTO_INCREMENT,
	PARCELNO INT,
    mNO INT,
	PARCELRCONTENT	VARCHAR(1000),
	RCRTDATE DATETIME DEFAULT CURRENT_TIMESTAMP,
	RMDFDATE DATETIME DEFAULT CURRENT_TIMESTAMP,
	RSTATUS VARCHAR(10) DEFAULT 'Y',
	FOREIGN KEY (PARCELNO) REFERENCES PLANTSHOP(PARCELNO),
    FOREIGN KEY (mNO) REFERENCES MEMBER(mNO)
);

COMMIT;

SELECT * FROM PLANTPARCELREPLY;

-- 검색용 쿼리 3 종 세트
-- 리스트용 쿼리 완성
SELECT  P.PARCELNO, P.PARCELTITLE, M.ID, P.CRTDATE, P.PARCELIMG, P.PARCELCOUNT, P.PARCELSTATUS, P.PLANTTYPE
FROM PLANTSHOP P JOIN MEMBER M ON(P.PARCELNO = M.mNO)
WHERE 1 = 1 
AND P.PARCELSTATUS = 'Y'
-- AND M.ID LIKE '%admin%' 
-- AND B.TITLE LIKE '%구매%' 
 AND P.PARCELCONTENT LIKE '%선인장%' 
ORDER BY P.PARCELNO DESC LIMIT 10 OFFSET 0;

SELECT COUNT(*)
FROM PLANTSHOP P JOIN MEMBER M ON(P.PARCELNO = M.mNO)
WHERE 1 = 1 
AND P.PARCELSTATUS = 'Y'
-- AND M.ID LIKE '%admin%' 
-- AND B.TITLE LIKE '%구매%' 
 AND P.PARCELCONTENT LIKE '%선인장%';

SELECT  P.PARCELNO, P.PARCELTITLE, M.ID, P.PARCELCOUNT, P.PARCELIMG, P.PARCELIMGEDT, P.PARCELCONTENT, P.CRTDATE, P.MDFDATE, P.PLANTTYPE, P.PLANTNO,
		R.PARCELRNO as R_PARCELRNO, 
        R.PARCELNO as R_PARCELNO, 
        R.PARCELRCONTENT as R_PARCELRCONTENT, 
        M2.ID as R_ID, 
        R.RCRTDATE as R_RCRTDATE, 
        R.RMDFDATE as R_RMDFDATE
FROM PLANTSHOP P
JOIN MEMBER M ON(P.mNO = M.mNO)
LEFT OUTER JOIN PLANTPARCELREPLY R ON(R.PARCELNO = P.PARCELNO)
LEFT OUTER JOIN MEMBER M2 ON(R.mNO = M2.mNO)
WHERE P.PARCELSTATUS = 'Y' AND  P.PARCELNO=1;

------------------------------------------------------------------
------------------------- PLANT MANAGE 관련 테이블 -------------------------
------------------------------------------------------------------


CREATE TABLE PLANTMANAGE ( 
	cNo INT PRIMARY KEY AUTO_INCREMENT, #이 테이블 주키
    bNo INT, #식물 번호
    mNo INT, #회원번호 
    WORKING INT, # 1=환기하기 2=물주기~ 
    FEEDDATE DATETIME, 
    ENROLLDATE DATETIME DEFAULT CURRENT_TIMESTAMP, 
    CONTENT VARCHAR(2000) #메모 
    );   
    
COMMIT;

select * from PLANTMANAGE;
# 식물 리스트 
CREATE TABLE MANAGELIST ( 
	bNo INT PRIMARY KEY AUTO_INCREMENT, 
	mNo INT,   
    STATUS VARCHAR(1) DEFAULT 'Y' CHECK (STATUS IN ('Y', 'N')),
    PLANTNAME VARCHAR(100), 
    PETNAME VARCHAR(100), #애칭 
    LOCATION VARCHAR(1000), #식물 키우는 위치  
    CONTENT VARCHAR(2000), #소개
	IMG VARCHAR(500),    #사진 
    STARTDDATE DATETIME,
	ENROLLDATE DATETIME DEFAULT CURRENT_TIMESTAMP,   #키우기 시작한 날 
    MODIFYDATE DATETIME DEFAULT CURRENT_TIMESTAMP 
 );
 INSERT INTO MANAGELIST VALUES(0, 1,'Y', '선인장', '인장이', '실내', '인장이 분양했어요!!', '변경된파일명.txt', DEFAULT, DEFAULT, DEFAULT);
 INSERT INTO MANAGELIST VALUES(0, 1,'Y', '민들레', '들레1세', '실내', '들레 집에서 관찰하기!', '변경된파일명.txt', DEFAULT, DEFAULT, DEFAULT);
 COMMIT;
    
    
 select * from MANAGELIST;
 
 SELECT COUNT(*) FROM MANAGELIST WHERE STATUS= 'Y'
 
 
 
 
 
 
 
 
 ------------------------------------------------------------------
------------------------- tour 관련 테이블 -------------------------
------------------------------------------------------------------
  CREATE TABLE Tourlist(
	contentid      	INT,
	contenttypeid      VARCHAR(100),
	homepage           VARCHAR(200),
	tel                VARCHAR(100),
	title              VARCHAR(200),
	firstimage         VARCHAR(200),
	firstimage2        VARCHAR(200),
	areacode           VARCHAR(100),
	sigungucode        VARCHAR(100),
	cat1               VARCHAR(100),
	cat2               VARCHAR(100),
	cat3               VARCHAR(100),
	addr1              VARCHAR(100),
	addr2              VARCHAR(100),
    zipcode      		VARCHAR(100),
	mapx               VARCHAR(100),
	mapy               VARCHAR(100),
	overview           VARCHAR(2000),
	mlevel             VARCHAR(100),
	accomcount   		VARCHAR(100),
	chkbabycarriage     VARCHAR(100),
	chkcreditcard       VARCHAR(100),
	chkpet        		VARCHAR(100),
	expagerange         VARCHAR(100),
	expguide           	VARCHAR(100),
	heritage1           VARCHAR(100),
	heritage2           VARCHAR(100),
	heritage3   		VARCHAR(100),
	infocenter      	VARCHAR(100),
	opendate            VARCHAR(100),
	parking           	VARCHAR(100),
	restdate  			VARCHAR(100),
	useseason      		VARCHAR(100),
	usetime            	VARCHAR(300),
	PRIMARY KEY (contentid)
);

DESC Tourlist;

select * from Tourlist;

