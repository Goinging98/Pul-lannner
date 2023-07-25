-- DROP SCHEMA garden;
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

CREATE TABLE MEMBER (
    mNo      INT  PRIMARY KEY AUTO_INCREMENT,
    ID 		 VARCHAR(30) NOT NULL UNIQUE,
    PASSWORD VARCHAR(100) NOT NULL,
    ROLE 	 VARCHAR(10) DEFAULT 'ROLE_USER',
    NAME 	 VARCHAR(15) NOT NULL,
    PHONE 	 VARCHAR(13),
    EMAIL 	 VARCHAR(100),
    ADDRESS  VARCHAR(100),
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
    ADDRESS, 
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
    '서울시 강남구 역삼동',
    DEFAULT,
    DEFAULT,
    DEFAULT,
    DEFAULT
);

COMMIT;
SELECT * FROM MEMBER;

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