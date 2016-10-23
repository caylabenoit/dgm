DROP TABLE APP_PARAMS CASCADE CONSTRAINTS;

CREATE TABLE APP_PARAMS
(
  PARAM_NAME        VARCHAR2(50 BYTE),
  PARAM_STRVALUE    VARCHAR2(200 BYTE),
  PARAM_INTVALUE    INTEGER,
  PARAM_LASTUPDATE  TIMESTAMP(6)                DEFAULT SYSDATE,
  PARAM_LABEL       VARCHAR2(250 BYTE),
  PARAM_DISPLAY     VARCHAR2(1 BYTE)            DEFAULT 'N'
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


ALTER TABLE DIM_CATEGORY
 DROP PRIMARY KEY CASCADE;

DROP TABLE DIM_CATEGORY CASCADE CONSTRAINTS;

CREATE TABLE DIM_CATEGORY
(
  CAT_PK             NUMBER                     NOT NULL,
  CAT_NAME           VARCHAR2(255 BYTE),
  CAT_ID             VARCHAR2(255 BYTE),
  CAT_PARENT_ID      VARCHAR2(255 BYTE),
  CAT_DATETIME_LOAD  TIMESTAMP(6)               DEFAULT SYSDATE,
  CAT_DESCRIPTION    VARCHAR2(4000 BYTE),
  CAT_FULLPATH       VARCHAR2(1000 BYTE)
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


ALTER TABLE DIM_CONTEXT
 DROP PRIMARY KEY CASCADE;

DROP TABLE DIM_CONTEXT CASCADE CONSTRAINTS;

CREATE TABLE DIM_CONTEXT
(
  CON_PK             NUMBER                     NOT NULL,
  CON_DESCRIPTION    VARCHAR2(200 BYTE),
  CON_DATETIME_LOAD  TIMESTAMP(6)               DEFAULT SYSDATE,
  CON_FUNCKEY        VARCHAR2(500 BYTE)
)
NOLOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


ALTER TABLE DIM_DATASOURCE
 DROP PRIMARY KEY CASCADE;

DROP TABLE DIM_DATASOURCE CASCADE CONSTRAINTS;

CREATE TABLE DIM_DATASOURCE
(
  DSO_PK             NUMBER                     NOT NULL,
  DSO_CONNECTION     VARCHAR2(250 BYTE),
  DSO_SOURCENAME     VARCHAR2(250 BYTE),
  DSO_DATETIME_LOAD  TIMESTAMP(6)               DEFAULT SYSDATE,
  DSO_FUNCKEY        VARCHAR2(250 BYTE)
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


ALTER TABLE DIM_DQAXIS
 DROP PRIMARY KEY CASCADE;

DROP TABLE DIM_DQAXIS CASCADE CONSTRAINTS;

CREATE TABLE DIM_DQAXIS
(
  DQX_PK             INTEGER                    NOT NULL,
  DQX_STATUS         INTEGER,
  DQX_DATETIME_LOAD  TIMESTAMP(6)               DEFAULT SYSDATE,
  DQX_NAME           VARCHAR2(25 BYTE),
  DQX_CODE           VARCHAR2(10 BYTE),
  DQX_WEIGHT         INTEGER                    DEFAULT 1
)
NOLOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


ALTER TABLE DIM_GLOSSARY
 DROP PRIMARY KEY CASCADE;

DROP TABLE DIM_GLOSSARY CASCADE CONSTRAINTS;

CREATE TABLE DIM_GLOSSARY
(
  GLO_PK             NUMBER,
  GLO_DATETIME_LOAD  TIMESTAMP(6)               DEFAULT SYSDATE,
  GLO_NAME           VARCHAR2(250 BYTE),
  GLO_DESCRIPTION    VARCHAR2(4000 BYTE),
  GLO_ID             VARCHAR2(255 BYTE)
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


ALTER TABLE DIM_JOB
 DROP PRIMARY KEY CASCADE;

DROP TABLE DIM_JOB CASCADE CONSTRAINTS;

CREATE TABLE DIM_JOB
(
  JOB_PK             NUMBER                     NOT NULL,
  JOB_NAME           VARCHAR2(250 BYTE),
  JOB_DATETIME_LOAD  TIMESTAMP(6)               DEFAULT SYSDATE,
  JOB_PROFILE_KEY    VARCHAR2(50 BYTE),
  JOB_RUN            TIMESTAMP(6),
  JOB_FUNCKEY        VARCHAR2(500 BYTE)
)
NOLOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


ALTER TABLE DIM_METRIC
 DROP PRIMARY KEY CASCADE;

DROP TABLE DIM_METRIC CASCADE CONSTRAINTS;

CREATE TABLE DIM_METRIC
(
  MET_PK             INTEGER                    NOT NULL,
  SCG_FK             NUMBER,
  MET_DATETIME_LOAD  TIMESTAMP(6)               DEFAULT SYSDATE,
  MET_NAME           VARCHAR2(255 BYTE),
  MET_DESCRIPTION    VARCHAR2(500 BYTE),
  MET_WEIGHT         INTEGER,
  MET_FUNCKEY        VARCHAR2(500 BYTE),
  MTY_FK             NUMBER,
  MET_PATH           VARCHAR2(500 BYTE)
)
NOLOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


ALTER TABLE DIM_METRICTYPE
 DROP PRIMARY KEY CASCADE;

DROP TABLE DIM_METRICTYPE CASCADE CONSTRAINTS;

CREATE TABLE DIM_METRICTYPE
(
  MTY_PK             NUMBER                     NOT NULL,
  MTY_NAME           VARCHAR2(255 BYTE),
  MTY_DATETIME_LOAD  TIMESTAMP(6)               DEFAULT SYSDATE
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


ALTER TABLE DIM_ORIGINE
 DROP PRIMARY KEY CASCADE;

DROP TABLE DIM_ORIGINE CASCADE CONSTRAINTS;

CREATE TABLE DIM_ORIGINE
(
  ORI_PK             NUMBER                     NOT NULL,
  ORI_NAME           VARCHAR2(250 BYTE),
  ORI_DATETIME_LOAD  TIMESTAMP(6)               DEFAULT SYSDATE,
  ORI_FUNCKEY        VARCHAR2(500 BYTE)
)
NOLOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


ALTER TABLE DIM_SCORECARD
 DROP PRIMARY KEY CASCADE;

DROP TABLE DIM_SCORECARD CASCADE CONSTRAINTS;

CREATE TABLE DIM_SCORECARD
(
  SCO_PK             NUMBER                     NOT NULL,
  SCO_NAME           VARCHAR2(100 BYTE),
  SCO_DESCRIPTION    VARCHAR2(250 BYTE),
  SCO_LASTRUN        TIMESTAMP(6),
  SCO_DATETIME_LOAD  TIMESTAMP(6)               DEFAULT SYSDATE,
  SCO_IDENTIFIER     VARCHAR2(255 BYTE),
  SCO_FUNCKEY        VARCHAR2(500 BYTE),
  SCO_PROJECT        VARCHAR2(255 BYTE),
  SCO_FULLPATH       VARCHAR2(3000 BYTE)
)
NOLOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


ALTER TABLE DIM_SCORECARD_GROUP
 DROP PRIMARY KEY CASCADE;

DROP TABLE DIM_SCORECARD_GROUP CASCADE CONSTRAINTS;

CREATE TABLE DIM_SCORECARD_GROUP
(
  SCG_PK             NUMBER                     NOT NULL,
  SCO_FK             NUMBER,
  SCG_NAME           VARCHAR2(250 BYTE),
  SCG_DATETIME_LOAD  TIMESTAMP(6)               DEFAULT SYSDATE,
  SCG_FUNCKEY        VARCHAR2(500 BYTE),
  SCG_PATH           VARCHAR2(500 BYTE)
)
NOLOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


ALTER TABLE DIM_TERM
 DROP PRIMARY KEY CASCADE;

DROP TABLE DIM_TERM CASCADE CONSTRAINTS;

CREATE TABLE DIM_TERM
(
  TRM_PK             NUMBER                     NOT NULL,
  TRM_NAME           VARCHAR2(200 BYTE),
  TRM_STATUS         VARCHAR2(20 BYTE),
  TRM_DATETIME_LOAD  TIMESTAMP(6)               DEFAULT SYSDATE,
  TRM_FUNCKEY        VARCHAR2(500 BYTE),
  TRM_DESCRIPTION    VARCHAR2(4000 BYTE),
  TRM_USAGE          VARCHAR2(4000 BYTE),
  TRM_EXAMPLE        VARCHAR2(4000 BYTE),
  TRM_PHASE          VARCHAR2(384 BYTE),
  TRM_OWNER          VARCHAR2(384 BYTE),
  TRM_STEWARD        VARCHAR2(384 BYTE),
  TRM_OWNER_EMAIL    VARCHAR2(500 BYTE),
  TRM_STEWARD_EMAIL  VARCHAR2(500 BYTE),
  CAT_FK             NUMBER                     DEFAULT 0,
  GLO_FK             NUMBER,
  OBJECT_ID          VARCHAR2(250 BYTE),
  TRT_FK             NUMBER
)
NOLOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


ALTER TABLE DIM_TERM_RELATIONSHIP
 DROP PRIMARY KEY CASCADE;

DROP TABLE DIM_TERM_RELATIONSHIP CASCADE CONSTRAINTS;

CREATE TABLE DIM_TERM_RELATIONSHIP
(
  REL_PK           NUMBER,
  REL_NAME         VARCHAR2(100 BYTE),
  REL_DESCRIPTION  VARCHAR2(500 BYTE)
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE DIM_TERM_RELLINKS CASCADE CONSTRAINTS;

CREATE TABLE DIM_TERM_RELLINKS
(
  TRL_PK            NUMBER,
  OBJECT_ID_SOURCE  VARCHAR2(255 BYTE),
  OBJECT_ID_TARGET  VARCHAR2(255 BYTE),
  REL_FK            NUMBER
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


ALTER TABLE DIM_TERM_TYPE
 DROP PRIMARY KEY CASCADE;

DROP TABLE DIM_TERM_TYPE CASCADE CONSTRAINTS;

CREATE TABLE DIM_TERM_TYPE
(
  TRT_PK             NUMBER,
  TRT_NAME           VARCHAR2(200 CHAR),
  TRT_DESCRIPTION    VARCHAR2(4000 CHAR),
  TRT_DATETIME_LOAD  TIMESTAMP(6)
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


ALTER TABLE DIM_TIME
 DROP PRIMARY KEY CASCADE;

DROP TABLE DIM_TIME CASCADE CONSTRAINTS;

CREATE TABLE DIM_TIME
(
  TIM_PK                NUMBER                  NOT NULL,
  TIM_DATETIME_LOAD     TIMESTAMP(6)            DEFAULT SYSDATE,
  TIM_CALENDAR_DATE     DATE,
  TIM_DAY_IN_WEEK_NAME  VARCHAR2(10 BYTE),
  TIM_MONTH_NUM         INTEGER,
  TIM_YEAR_NUM          VARCHAR2(20 BYTE),
  TIM_SEQUENCE_ORDER    NUMBER,
  TIM_DAY_NUM           INTEGER,
  TIM_MONTH_NAME        VARCHAR2(20 CHAR)
)
NOLOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


ALTER TABLE FACT_GOVERNANCE
 DROP PRIMARY KEY CASCADE;

DROP TABLE FACT_GOVERNANCE CASCADE CONSTRAINTS;

CREATE TABLE FACT_GOVERNANCE
(
  FRS_PK              NUMBER                    NOT NULL,
  JOB_FK              NUMBER                    DEFAULT 0                     NOT NULL,
  TIM_FK              NUMBER                    DEFAULT 0                     NOT NULL,
  TRM_FK              NUMBER                    DEFAULT 0                     NOT NULL,
  ORI_FK              NUMBER                    DEFAULT 0                     NOT NULL,
  DQX_FK              INTEGER                   DEFAULT 0                     NOT NULL,
  MET_FK              INTEGER                   DEFAULT 0                     NOT NULL,
  CON_FK              NUMBER                    DEFAULT 0                     NOT NULL,
  FRS_VALID_ROWS      NUMBER,
  FRS_INVALID_ROWS    NUMBER,
  FRS_TOTALROWS       NUMBER,
  FRS_KPI_SCORE       NUMBER(22,2),
  FRS_DATETIME_LOAD   TIMESTAMP(6)              DEFAULT SYSDATE,
  FRS_WEIGHT          INTEGER,
  FRS_COST            NUMBER(10,2),
  DSO_FK              NUMBER,
  FRS_METRIC_FUNCKEY  VARCHAR2(250 CHAR)
)
NOLOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE LND_CATEGORY CASCADE CONSTRAINTS;

CREATE TABLE LND_CATEGORY
(
  JOYFUNCKEY            VARCHAR2(250 CHAR),
  CATEGORY_NAME         VARCHAR2(200 CHAR),
  CATEGORY_DESCRIPTION  VARCHAR2(4000 CHAR),
  CATEGORY_FULLPATH     VARCHAR2(1000 CHAR),
  CATEGORY_PARENT_KEY   VARCHAR2(250 CHAR),
  JOYLOADDATE           TIMESTAMP(6),
  JOYSTATUS             VARCHAR2(1 CHAR)
)
NOLOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE LND_GLOSSARY CASCADE CONSTRAINTS;

CREATE TABLE LND_GLOSSARY
(
  JOYFUNCKEY            VARCHAR2(250 CHAR),
  GLOSSARY_NAME         VARCHAR2(200 CHAR),
  GLOSSARY_DESCRIPTION  VARCHAR2(4000 CHAR),
  JOYLOADDATE           TIMESTAMP(6),
  JOYSTATUS             VARCHAR2(1 CHAR)
)
NOLOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE LND_METRIC CASCADE CONSTRAINTS;

CREATE TABLE LND_METRIC
(
  JOYFUNCKEY            VARCHAR2(250 CHAR),
  JOYLOADDATE           TIMESTAMP(6),
  JOYSTATUS             VARCHAR2(1 CHAR),
  MET_NAME              VARCHAR2(255 CHAR),
  MET_DESCRIPTION       VARCHAR2(500 CHAR),
  MET_WEIGHT            INTEGER,
  FRS_VALID_ROWS        INTEGER,
  FRS_TOTALROWS         INTEGER,
  FRS_COST              NUMBER(22,2),
  SCORECARD_KEY         VARCHAR2(255 CHAR),
  SCORECARDGRP_KEY      VARCHAR2(255 CHAR),
  MET_SCORE             NUMBER(22,2),
  MET_TYPE              VARCHAR2(255 CHAR),
  MET_CONNECTION        VARCHAR2(250 CHAR),
  MET_SOURCENAME        VARCHAR2(250 CHAR),
  FRS_COSTUNIT          VARCHAR2(128 CHAR),
  FRS_CALCULATION_DATE  TIMESTAMP(6),
  ORI_NAME              VARCHAR2(250 CHAR)
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE LND_SCORECARD CASCADE CONSTRAINTS;

CREATE TABLE LND_SCORECARD
(
  JOYFUNCKEY       VARCHAR2(250 CHAR),
  JOYLOADDATE      TIMESTAMP(6),
  JOYSTATUS        VARCHAR2(1 CHAR),
  SCO_NAME         VARCHAR2(255 CHAR),
  SCO_DESCRIPTION  VARCHAR2(500 CHAR),
  SCO_LASTRUN      TIMESTAMP(6)
)
NOLOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE LND_SCORECARD_GROUP CASCADE CONSTRAINTS;

CREATE TABLE LND_SCORECARD_GROUP
(
  JOYFUNCKEY           VARCHAR2(250 CHAR),
  JOYLOADDATE          TIMESTAMP(6),
  JOYSTATUS            VARCHAR2(1 CHAR),
  SCGROUP_NAME         VARCHAR2(255 CHAR),
  SCGROUP_DESCRIPTION  VARCHAR2(500 CHAR),
  SCORECARD_KEY        VARCHAR2(250 CHAR)
)
NOLOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE LND_TERM CASCADE CONSTRAINTS;

CREATE TABLE LND_TERM
(
  JOYFUNCKEY          VARCHAR2(250 CHAR),
  TERM_NAME           VARCHAR2(200 CHAR),
  TERM_STATUS         VARCHAR2(20 CHAR),
  TERM_FUNCKEY        VARCHAR2(500 CHAR),
  TERM_DESCRIPTION    VARCHAR2(4000 CHAR),
  TERM_USAGE          VARCHAR2(4000 CHAR),
  TERM_EXAMPLE        VARCHAR2(4000 CHAR),
  TERM_PHASE          VARCHAR2(384 CHAR),
  TERM_OWNER          VARCHAR2(384 CHAR),
  TERM_STEWARD        VARCHAR2(384 CHAR),
  TERM_OWNER_EMAIL    VARCHAR2(500 CHAR),
  TERM_STEWARD_EMAIL  VARCHAR2(500 CHAR),
  GLOSSARY_KEY        VARCHAR2(250 CHAR),
  CATEGORY_KEY        VARCHAR2(250 CHAR),
  JOYLOADDATE         TIMESTAMP(6),
  JOYSTATUS           VARCHAR2(1 CHAR),
  TERM_TYPE           VARCHAR2(255 CHAR)
)
NOLOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE LND_TERM_RELATIONSHIPS CASCADE CONSTRAINTS;

CREATE TABLE LND_TERM_RELATIONSHIPS
(
  JOYFUNCKEY           VARCHAR2(250 CHAR),
  REL_KEY_TERM_SOURCE  VARCHAR2(255 CHAR),
  REL_KEY_TERM_TARGET  VARCHAR2(255 CHAR),
  REL_NAME             VARCHAR2(100 CHAR),
  REL_DESCRIPTION      VARCHAR2(500 CHAR),
  JOYLOADDATE          TIMESTAMP(6),
  JOYSTATUS            VARCHAR2(1 CHAR)
)
NOLOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE REL_SC_CONTEXT CASCADE CONSTRAINTS;

CREATE TABLE REL_SC_CONTEXT
(
  SCO_NAME         VARCHAR2(100 BYTE),
  CON_DESCRIPTION  VARCHAR2(200 BYTE),
  SCX_DESCRIPTION  VARCHAR2(500 BYTE),
  SCX_PK           NUMBER,
  CHT_FK           NUMBER
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE REL_TERM_METRIC CASCADE CONSTRAINTS;

CREATE TABLE REL_TERM_METRIC
(
  TMD_PK           NUMBER                       NOT NULL,
  TMD_DESCRIPTION  VARCHAR2(500 BYTE),
  TRM_CLUSTER_ID   NUMBER,
  MET_NAME         VARCHAR2(500 BYTE),
  TRM_NAME         VARCHAR2(500 BYTE),
  DQX_NAME         VARCHAR2(500 BYTE)
)
NOLOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE SRC_CONTEXT CASCADE CONSTRAINTS;

CREATE TABLE SRC_CONTEXT
(
  CON_PK           NUMBER                       NOT NULL,
  CON_DESCRIPTION  VARCHAR2(200 BYTE),
  CON_FUNCKEY      VARCHAR2(500 BYTE)
)
NOLOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


ALTER TABLE SRC_DQAXIS
 DROP PRIMARY KEY CASCADE;

DROP TABLE SRC_DQAXIS CASCADE CONSTRAINTS;

CREATE TABLE SRC_DQAXIS
(
  DQX_CODE         VARCHAR2(10 BYTE),
  DQX_LABEL        VARCHAR2(250 BYTE),
  DQX_DESCRIPTION  VARCHAR2(4000 BYTE),
  DQX_STATUS       VARCHAR2(1 BYTE),
  DQX_PK           NUMBER                       NOT NULL,
  DQX_WEIGHT       INTEGER
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE SRC_TERMTYPE CASCADE CONSTRAINTS;

CREATE TABLE SRC_TERMTYPE
(
  GIO_PK             NUMBER,
  GIO_TERMTYPE_NAME  VARCHAR2(250 BYTE),
  GIO_ICON_PATHNAME  VARCHAR2(500 BYTE)
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE UNIQUE INDEX DIM_CATEGORY_PK ON DIM_CATEGORY
(CAT_PK)
NOLOGGING
NOPARALLEL;


CREATE UNIQUE INDEX DIM_CONTEXT_PK ON DIM_CONTEXT
(CON_PK)
NOLOGGING
NOPARALLEL;


CREATE UNIQUE INDEX DIM_DATASOURCE_PK ON DIM_DATASOURCE
(DSO_PK)
NOLOGGING
NOPARALLEL;


CREATE UNIQUE INDEX DIM_DQDIMENSION_PK ON DIM_DQAXIS
(DQX_PK)
NOLOGGING
NOPARALLEL;


CREATE UNIQUE INDEX DIM_GLOSSARY_PK ON DIM_GLOSSARY
(GLO_PK)
NOLOGGING
NOPARALLEL;


CREATE UNIQUE INDEX DIM_JOB_PK ON DIM_JOB
(JOB_PK)
NOLOGGING
NOPARALLEL;


CREATE UNIQUE INDEX DIM_METRICTYPE_PK ON DIM_METRICTYPE
(MTY_PK)
NOLOGGING
NOPARALLEL;


CREATE UNIQUE INDEX DIM_ORIGINE_PK ON DIM_ORIGINE
(ORI_PK)
NOLOGGING
NOPARALLEL;


CREATE UNIQUE INDEX DIM_RULES_PK ON DIM_METRIC
(MET_PK)
NOLOGGING
NOPARALLEL;


CREATE UNIQUE INDEX DIM_SCORECARD_PK ON DIM_SCORECARD
(SCO_PK)
NOLOGGING
NOPARALLEL;


CREATE UNIQUE INDEX DIM_TERM_PK ON DIM_TERM
(TRM_PK)
NOLOGGING
NOPARALLEL;


CREATE UNIQUE INDEX DIM_TERM_RELATIONSHIP_PK ON DIM_TERM_RELATIONSHIP
(REL_PK)
LOGGING
NOPARALLEL;


CREATE INDEX DIM_TIME_INDEX5 ON DIM_TIME
(TIM_MONTH_NUM)
NOLOGGING
NOPARALLEL;


CREATE UNIQUE INDEX DIM_TIME_PK ON DIM_TIME
(TIM_PK)
NOLOGGING
NOPARALLEL;


CREATE UNIQUE INDEX FACT_GVRESULT_PK ON FACT_GOVERNANCE
(FRS_PK)
NOLOGGING
NOPARALLEL;


CREATE UNIQUE INDEX SRC_DQAXIS_PK ON SRC_DQAXIS
(DQX_PK)
NOLOGGING
NOPARALLEL;


CREATE UNIQUE INDEX TABLE_11_PK ON DIM_SCORECARD_GROUP
(SCG_PK)
NOLOGGING
NOPARALLEL;


CREATE UNIQUE INDEX TRT_PK ON DIM_TERM_TYPE
(TRT_PK)
LOGGING
NOPARALLEL;


ALTER TABLE DIM_CATEGORY ADD (
  CONSTRAINT DIM_CATEGORY_PK
  PRIMARY KEY
  (CAT_PK)
  USING INDEX DIM_CATEGORY_PK
  ENABLE VALIDATE);

ALTER TABLE DIM_CONTEXT ADD (
  CONSTRAINT DIM_CONTEXT_PK
  PRIMARY KEY
  (CON_PK)
  USING INDEX DIM_CONTEXT_PK
  ENABLE VALIDATE);

ALTER TABLE DIM_DATASOURCE ADD (
  CONSTRAINT DIM_DATASOURCE_PK
  PRIMARY KEY
  (DSO_PK)
  USING INDEX DIM_DATASOURCE_PK
  ENABLE VALIDATE);

ALTER TABLE DIM_DQAXIS ADD (
  CONSTRAINT DIM_DQDIMENSION_PK
  PRIMARY KEY
  (DQX_PK)
  USING INDEX DIM_DQDIMENSION_PK
  ENABLE VALIDATE);

ALTER TABLE DIM_GLOSSARY ADD (
  CONSTRAINT DIM_GLOSSARY_PK
  PRIMARY KEY
  (GLO_PK)
  USING INDEX DIM_GLOSSARY_PK
  ENABLE VALIDATE);

ALTER TABLE DIM_JOB ADD (
  CONSTRAINT DIM_JOB_PK
  PRIMARY KEY
  (JOB_PK)
  USING INDEX DIM_JOB_PK
  ENABLE VALIDATE);

ALTER TABLE DIM_METRIC ADD (
  CONSTRAINT DIM_RULES_PK
  PRIMARY KEY
  (MET_PK)
  USING INDEX DIM_RULES_PK
  ENABLE VALIDATE);

ALTER TABLE DIM_METRICTYPE ADD (
  CONSTRAINT DIM_METRICTYPE_PK
  PRIMARY KEY
  (MTY_PK)
  USING INDEX DIM_METRICTYPE_PK
  ENABLE VALIDATE);

ALTER TABLE DIM_ORIGINE ADD (
  CONSTRAINT DIM_ORIGINE_PK
  PRIMARY KEY
  (ORI_PK)
  USING INDEX DIM_ORIGINE_PK
  ENABLE VALIDATE);

ALTER TABLE DIM_SCORECARD ADD (
  CONSTRAINT DIM_SCORECARD_PK
  PRIMARY KEY
  (SCO_PK)
  USING INDEX DIM_SCORECARD_PK
  ENABLE VALIDATE);

ALTER TABLE DIM_SCORECARD_GROUP ADD (
  CONSTRAINT TABLE_11_PK
  PRIMARY KEY
  (SCG_PK)
  USING INDEX TABLE_11_PK
  ENABLE VALIDATE);

ALTER TABLE DIM_TERM ADD (
  CONSTRAINT DIM_TERM_PK
  PRIMARY KEY
  (TRM_PK)
  USING INDEX DIM_TERM_PK
  ENABLE VALIDATE);

ALTER TABLE DIM_TERM_RELATIONSHIP ADD (
  CONSTRAINT DIM_TERM_RELATIONSHIP_PK
  PRIMARY KEY
  (REL_PK)
  USING INDEX DIM_TERM_RELATIONSHIP_PK
  ENABLE VALIDATE);

ALTER TABLE DIM_TERM_TYPE ADD (
  CONSTRAINT TRT_PK
  PRIMARY KEY
  (TRT_PK)
  USING INDEX TRT_PK
  ENABLE VALIDATE);

ALTER TABLE DIM_TIME ADD (
  CONSTRAINT DIM_TIME_PK
  PRIMARY KEY
  (TIM_PK)
  USING INDEX DIM_TIME_PK
  ENABLE VALIDATE);

ALTER TABLE FACT_GOVERNANCE ADD (
  CONSTRAINT FACT_GVRESULT_PK
  PRIMARY KEY
  (FRS_PK)
  USING INDEX FACT_GVRESULT_PK
  ENABLE VALIDATE);

ALTER TABLE SRC_DQAXIS ADD (
  CONSTRAINT SRC_DQAXIS_PK
  PRIMARY KEY
  (DQX_PK)
  USING INDEX SRC_DQAXIS_PK
  ENABLE VALIDATE);

ALTER TABLE DIM_METRIC ADD (
  CONSTRAINT DIM_METRIC_DIM_SC_GROUP_FK 
  FOREIGN KEY (SCG_FK) 
  REFERENCES DIM_SCORECARD_GROUP (SCG_PK)
  ENABLE VALIDATE,
  CONSTRAINT DIM_METRIC_FK1 
  FOREIGN KEY (MTY_FK) 
  REFERENCES DIM_METRICTYPE (MTY_PK)
  ENABLE VALIDATE);

ALTER TABLE DIM_SCORECARD_GROUP ADD (
  CONSTRAINT DIM_S_GROUP_DIM_S_FK 
  FOREIGN KEY (SCO_FK) 
  REFERENCES DIM_SCORECARD (SCO_PK)
  ENABLE VALIDATE);

ALTER TABLE DIM_TERM ADD (
  CONSTRAINT DIM_TERM_R01 
  FOREIGN KEY (CAT_FK) 
  REFERENCES DIM_CATEGORY (CAT_PK)
  ENABLE VALIDATE,
  CONSTRAINT DIM_TERM_R02 
  FOREIGN KEY (GLO_FK) 
  REFERENCES DIM_GLOSSARY (GLO_PK)
  ENABLE VALIDATE,
  FOREIGN KEY (TRT_FK) 
  REFERENCES DIM_TERM_TYPE (TRT_PK)
  ENABLE VALIDATE);

ALTER TABLE DIM_TERM_RELLINKS ADD (
  CONSTRAINT DIM_TERM_RELLINKS_R01 
  FOREIGN KEY (REL_FK) 
  REFERENCES DIM_TERM_RELATIONSHIP (REL_PK)
  ENABLE VALIDATE);

ALTER TABLE FACT_GOVERNANCE ADD (
  CONSTRAINT FACT_GOVERNANCE_DIM_CONTEXT_FK 
  FOREIGN KEY (CON_FK) 
  REFERENCES DIM_CONTEXT (CON_PK)
  ENABLE VALIDATE,
  CONSTRAINT FACT_GOVERNANCE_DIM_DQAXIS_FK 
  FOREIGN KEY (DQX_FK) 
  REFERENCES DIM_DQAXIS (DQX_PK)
  ENABLE VALIDATE,
  CONSTRAINT FACT_GOVERNANCE_DIM_METRIC_FK 
  FOREIGN KEY (MET_FK) 
  REFERENCES DIM_METRIC (MET_PK)
  ENABLE VALIDATE,
  CONSTRAINT FACT_GVRESULT_DIM_JOB_FK 
  FOREIGN KEY (JOB_FK) 
  REFERENCES DIM_JOB (JOB_PK)
  ENABLE VALIDATE,
  CONSTRAINT FACT_GVRESULT_DIM_ORIGINE_FK 
  FOREIGN KEY (ORI_FK) 
  REFERENCES DIM_ORIGINE (ORI_PK)
  ENABLE VALIDATE,
  CONSTRAINT FACT_GVRESULT_DIM_TERM_FK 
  FOREIGN KEY (TRM_FK) 
  REFERENCES DIM_TERM (TRM_PK)
  ENABLE VALIDATE,
  CONSTRAINT FACT_GVRESULT_DIM_TIME_FK 
  FOREIGN KEY (TIM_FK) 
  REFERENCES DIM_TIME (TIM_PK)
  ENABLE VALIDATE,
  FOREIGN KEY (DSO_FK) 
  REFERENCES DIM_DATASOURCE (DSO_PK)
  ENABLE VALIDATE);