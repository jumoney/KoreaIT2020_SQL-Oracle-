--------------------------------------------------------
--  파일이 생성됨 - 금요일-7월-31-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table T_BOARD
--------------------------------------------------------

  CREATE TABLE "HR"."T_BOARD" 
   (	"I_BOARD" NUMBER, 
	"TITLE" VARCHAR2(100 BYTE), 
	"CTNT" VARCHAR2(2000 BYTE), 
	"I_STUDENT" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
 

   COMMENT ON COLUMN "HR"."T_BOARD"."I_STUDENT" IS '？옉？꽦？옄';
REM INSERTING into HR.T_BOARD
SET DEFINE OFF;
Insert into HR.T_BOARD (I_BOARD,TITLE,CTNT,I_STUDENT) values (7,'만든제목2','만든 내용2',2);
Insert into HR.T_BOARD (I_BOARD,TITLE,CTNT,I_STUDENT) values (2,'하세요','ㅋㅁㄴㅇㄻㄴㅇ',3);
Insert into HR.T_BOARD (I_BOARD,TITLE,CTNT,I_STUDENT) values (3,'제목3','내용3',3);
Insert into HR.T_BOARD (I_BOARD,TITLE,CTNT,I_STUDENT) values (5,'제목5','내용5',3);
Insert into HR.T_BOARD (I_BOARD,TITLE,CTNT,I_STUDENT) values (1,'제목1','내용1',3);
Insert into HR.T_BOARD (I_BOARD,TITLE,CTNT,I_STUDENT) values (6,'만든제목1','만든 내용1',1);
Insert into HR.T_BOARD (I_BOARD,TITLE,CTNT,I_STUDENT) values (8,'만든제목3','만든 내용 3',2);
--------------------------------------------------------
--  DDL for Index SYS_C0011071
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SYS_C0011071" ON "HR"."T_BOARD" ("I_BOARD") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table T_BOARD
--------------------------------------------------------

  ALTER TABLE "HR"."T_BOARD" MODIFY ("TITLE" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."T_BOARD" MODIFY ("CTNT" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."T_BOARD" MODIFY ("I_STUDENT" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."T_BOARD" ADD PRIMARY KEY ("I_BOARD")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table T_BOARD
--------------------------------------------------------

  ALTER TABLE "HR"."T_BOARD" ADD FOREIGN KEY ("I_STUDENT")
	  REFERENCES "HR"."T_STUDENT" ("I_STUDENT") ENABLE;
