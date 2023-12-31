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

COMMIT;
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

COMMIT;
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
    mNo,     ID,     PASSWORD,     ROLE,    NAME,     PHONE,     EMAIL, 
    ADDR1,     ADDR2,     ADDR3,     HOBBY,     STATUS,     ENROLL_DATE,     MODIFY_DATE
) VALUES(
    0,     'admin',     '1234',     'ROLE_ADMIN',     '관리자',     '010-1234-4341',     'admin@test.com', 
    '',    '',    '',    DEFAULT,    DEFAULT,    DEFAULT,    DEFAULT
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
---------- Community Board 관련 테이블 -------------
-------------------------------------------------
drop table COMMBOARD;
CREATE TABLE COMMBOARD (
	bNo 	INT AUTO_INCREMENT,
    mNo 	INT,
    TITLE	VARCHAR(1000),
    CONTENT	VARCHAR(2000),
    TYPE	VARCHAR(10),
    ORIGINAL_FILENAME VARCHAR(100), 
	RENAMED_FILENAME VARCHAR(100), 
	READCOUNT INT DEFAULT 0,
    LIKECOUNT INT,
    STATUS VARCHAR(1) DEFAULT 'Y' CHECK (STATUS IN('Y', 'N')),
    CREATE_DATE DATETIME  DEFAULT CURRENT_TIMESTAMP, 
    MODIFY_DATE DATETIME  DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT PK_COMMBOARD_NO PRIMARY KEY(bNO),
    CONSTRAINT FK_COMMBOARD_WRITER FOREIGN KEY(mNo) REFERENCES MEMBER(mNo) ON DELETE SET NULL
);


COMMIT;
SELECT * FROM COMMBOARD;


        
------------------------------------------------------------------
------------------- BOARDLIKE 관련 테이블 -------------------------
------------------------------------------------------------------
-- DROP TABLE BOARDLIKE;
CREATE TABLE BOARDLIKE(
	mNo INT,
    bNo INT,
    FOREIGN KEY (mNo) REFERENCES MEMBER(mNo),
    FOREIGN KEY (bNo) REFERENCES COMMBOARD(bNo),
    PRIMARY KEY (mNo,bNo)
    );   

SELECT * FROM BOARDLIKE;



------------------------------------------------------------------
------------------------- COMMREPLY 관련 테이블 -------------------------
------------------------------------------------------------------
-- drop table COMMREPLY;
CREATE TABLE COMMREPLY(
  rNo INT PRIMARY KEY AUTO_INCREMENT,
  bNo INT,
  mNo INT,
  name VARCHAR(10),
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


------------------------------------------------------------------
------------------------- 주문내역 관련 테이블 -------------------------
------------------------------------------------------------------
create table Cart
(
	mNo int,
    pNo int,
    amount int,
	foreign key (mNo) references Member(mNo),
	foreign key (pNo) references Product(pNo),
    primary key (mNo, pNo)
);

DROP TABLE ORDERLIST;
# 주문내역 
CREATE TABLE ORDERLIST (
	oNO INT PRIMARY KEY AUTO_INCREMENT,
    mNO INT,
    NAME VARCHAR(30),
    EMAIL VARCHAR(30),
    PHONE VARCHAR(13),
    ADDR1  VARCHAR(100),
    ADDR2  VARCHAR(100),
    ADDR3  VARCHAR(100),
    MEMO VARCHAR(500),
    PAYMENT VARCHAR(10), # kakao
    ORDERDATE DATETIME DEFAULT CURRENT_TIMESTAMP
);
# 주문상품목록 
CREATE TABLE ORDERPRODUCT (
    oNO INT,
    pNO INT,
    AMOUNT INT,
    PRIMARY KEY (oNO, pNO),
    FOREIGN KEY (oNO) REFERENCES ORDERLIST(oNO)
);

DROP TABLE ORDERPRODUCT;


------------------------------------------------------------------
------------------------- PLANTSHOP 관련 테이블 -------------------------
------------------------------------------------------------------
-- drop table PLANTSHOP;
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


------------------------------------------------------------------
------------------------- PLANT MANAGE 관련 테이블 -------------------------
------------------------------------------------------------------
# 식물 리스트 
drop table MANAGELIST;
CREATE TABLE MANAGELIST ( 
	bNo INT PRIMARY KEY AUTO_INCREMENT, 
	mNo INT,   
    STATUS VARCHAR(1) DEFAULT 'Y' CHECK (STATUS IN ('Y', 'N')),
    PLANTNAME VARCHAR(100), 
    PETNAME VARCHAR(100), #애칭 
    LOCATION VARCHAR(1000), #식물 키우는 위치  
    CONTENT VARCHAR(2000), #소개
	ORIGINAL_IMG VARCHAR(100), 
	RENAMED_IMG VARCHAR(100),    #사진 
    START_DATE DATETIME,
	WATER_DATE DATETIME DEFAULT CURRENT_TIMESTAMP,   #키우기 시작한 날 
    CREATE_DATE DATETIME DEFAULT CURRENT_TIMESTAMP 
 );
 
COMMIT;
SELECT * FROM MANAGELIST;

CREATE TABLE PLANTMANAGE ( 
	cNo INT PRIMARY KEY AUTO_INCREMENT, #이 테이블 주키
    bNo INT, #식물 번호
    mNo INT, #회원번호 
    WORKING INT, # 1=환기하기 2=물주기~ 
    WATER_DATE DATETIME, 
    CREATE_DATE DATETIME DEFAULT CURRENT_TIMESTAMP, 
    CONTENT VARCHAR(2000),  
    CONSTRAINT FK_MANAGELIST_WRITER FOREIGN KEY(mNo) REFERENCES MEMBER(mNo) ON DELETE SET NULL
    );   
    
COMMIT;

select * from PLANTMANAGE;

CREATE TABLE PLANTREPLY(
  pNo INT PRIMARY KEY AUTO_INCREMENT,
  bNo INT,
  mNo INT,
  POPTION INT,
  CONTENT VARCHAR(1000),
  STATUS VARCHAR(1) DEFAULT 'Y' CHECK (STATUS IN ('Y', 'N')),
  WATER_DATE DATETIME, 
  CREATE_DATE DATETIME DEFAULT CURRENT_TIMESTAMP
 -- FOREIGN KEY (bNo) REFERENCES MANAGELIST(bNo),
  -- FOREIGN KEY (mNo) REFERENCES MEMBER(mNo)
);
 
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


-------------------------------------------------
--------------- 미사용 테이블 ------------------
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

-- 뉴스 
create table News
(
	nNo int auto_increment primary key,
	title varchar(1000),
	originallink varchar(1000),
	link varchar(1000),
	description varchar(1000),
	pubDate datetime
);