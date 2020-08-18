--------------------------------------------------------
--  파일이 생성됨 - 월요일-8월-17-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table T_USER
--------------------------------------------------------

  CREATE TABLE "HR"."T_USER" 
   (	"I_USER" NUMBER, 
	"USER_ID" VARCHAR2(30 BYTE), 
	"USER_PW" VARCHAR2(100 BYTE), 
	"NM" VARCHAR2(20 BYTE), 
	"E_MAIL" VARCHAR2(40 BYTE), 
	"PROFILE_IMG" VARCHAR2(50 BYTE), 
	"R_DT" DATE DEFAULT sysdate, 
	"M_DT" DATE DEFAULT sysdate
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
REM INSERTING into HR.T_USER
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index SYS_C0011099
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SYS_C0011099" ON "HR"."T_USER" ("I_USER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table T_USER
--------------------------------------------------------

  ALTER TABLE "HR"."T_USER" MODIFY ("USER_ID" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."T_USER" MODIFY ("USER_PW" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."T_USER" MODIFY ("NM" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."T_USER" ADD PRIMARY KEY ("I_USER")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
