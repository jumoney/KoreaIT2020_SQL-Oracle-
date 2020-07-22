--------------------------------------------------------
--  파일이 생성됨 - 화요일-7월-21-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table T_STUDENT
--------------------------------------------------------

  CREATE TABLE "HR"."T_STUDENT" 
   (	"I_STUDENT" NUMBER, 
	"NM" VARCHAR2(15 BYTE), 
	"AGE" NUMBER(3,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table T_STUDENT_HOBBY
--------------------------------------------------------

  CREATE TABLE "HR"."T_STUDENT_HOBBY" 
   (	"I_STUDENT" NUMBER, 
	"I_HOBBY" NUMBER, 
	"R_DT" DATE DEFAULT sysdate
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table T_HOBBY
--------------------------------------------------------

  CREATE TABLE "HR"."T_HOBBY" 
   (	"I_HOBBY" NUMBER, 
	"NM" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table T_BOARD_LIKE
--------------------------------------------------------

  CREATE TABLE "HR"."T_BOARD_LIKE" 
   (	"I_BOARD" NUMBER, 
	"I_STUDENT" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
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
 

   COMMENT ON COLUMN "HR"."T_BOARD"."I_STUDENT" IS '작성자';
REM INSERTING into HR.T_STUDENT
SET DEFINE OFF;
Insert into HR.T_STUDENT (I_STUDENT,NM,AGE) values (1,'권하균',20);
Insert into HR.T_STUDENT (I_STUDENT,NM,AGE) values (2,'김도빈',21);
Insert into HR.T_STUDENT (I_STUDENT,NM,AGE) values (3,'김수인',22);
Insert into HR.T_STUDENT (I_STUDENT,NM,AGE) values (4,'김시운',23);
Insert into HR.T_STUDENT (I_STUDENT,NM,AGE) values (5,'김은정',24);
REM INSERTING into HR.T_STUDENT_HOBBY
SET DEFINE OFF;
Insert into HR.T_STUDENT_HOBBY (I_STUDENT,I_HOBBY,R_DT) values (1,4,to_date('20/07/21','RR/MM/DD'));
Insert into HR.T_STUDENT_HOBBY (I_STUDENT,I_HOBBY,R_DT) values (1,2,to_date('20/07/21','RR/MM/DD'));
Insert into HR.T_STUDENT_HOBBY (I_STUDENT,I_HOBBY,R_DT) values (2,1,to_date('20/07/21','RR/MM/DD'));
Insert into HR.T_STUDENT_HOBBY (I_STUDENT,I_HOBBY,R_DT) values (3,5,to_date('20/07/21','RR/MM/DD'));
Insert into HR.T_STUDENT_HOBBY (I_STUDENT,I_HOBBY,R_DT) values (3,3,to_date('20/07/21','RR/MM/DD'));
Insert into HR.T_STUDENT_HOBBY (I_STUDENT,I_HOBBY,R_DT) values (3,1,to_date('20/07/21','RR/MM/DD'));
REM INSERTING into HR.T_HOBBY
SET DEFINE OFF;
Insert into HR.T_HOBBY (I_HOBBY,NM) values (1,'독서');
Insert into HR.T_HOBBY (I_HOBBY,NM) values (2,'음악감상');
Insert into HR.T_HOBBY (I_HOBBY,NM) values (3,'영화감상');
Insert into HR.T_HOBBY (I_HOBBY,NM) values (4,'게임');
Insert into HR.T_HOBBY (I_HOBBY,NM) values (5,'산책');
Insert into HR.T_HOBBY (I_HOBBY,NM) values (6,'프로그래밍');
REM INSERTING into HR.T_BOARD_LIKE
SET DEFINE OFF;
Insert into HR.T_BOARD_LIKE (I_BOARD,I_STUDENT) values (1,1);
Insert into HR.T_BOARD_LIKE (I_BOARD,I_STUDENT) values (1,2);
Insert into HR.T_BOARD_LIKE (I_BOARD,I_STUDENT) values (1,3);
Insert into HR.T_BOARD_LIKE (I_BOARD,I_STUDENT) values (2,1);
REM INSERTING into HR.T_BOARD
SET DEFINE OFF;
Insert into HR.T_BOARD (I_BOARD,TITLE,CTNT,I_STUDENT) values (1,'안녕','12121212',3);
Insert into HR.T_BOARD (I_BOARD,TITLE,CTNT,I_STUDENT) values (2,'하세요','ㅋㅋㅋㅋㅋㅋ',3);
Insert into HR.T_BOARD (I_BOARD,TITLE,CTNT,I_STUDENT) values (3,'하하','1ㅇㅇㅇㅁㄴ',1);
Insert into HR.T_BOARD (I_BOARD,TITLE,CTNT,I_STUDENT) values (4,'좋아요','ㅋㅇㅋㄹㅇㄴㄻㄴㅇㅁㄴ',2);
Insert into HR.T_BOARD (I_BOARD,TITLE,CTNT,I_STUDENT) values (5,'크크','sdfdfdfdfdfdfdf',3);
--------------------------------------------------------
--  DDL for Index SYS_C0011059
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SYS_C0011059" ON "HR"."T_STUDENT" ("I_STUDENT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0011065
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SYS_C0011065" ON "HR"."T_STUDENT_HOBBY" ("I_STUDENT", "I_HOBBY") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0011061
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SYS_C0011061" ON "HR"."T_HOBBY" ("I_HOBBY") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0011073
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SYS_C0011073" ON "HR"."T_BOARD_LIKE" ("I_BOARD", "I_STUDENT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0011071
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SYS_C0011071" ON "HR"."T_BOARD" ("I_BOARD") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table T_STUDENT
--------------------------------------------------------

  ALTER TABLE "HR"."T_STUDENT" MODIFY ("NM" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."T_STUDENT" MODIFY ("AGE" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."T_STUDENT" ADD PRIMARY KEY ("I_STUDENT")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table T_STUDENT_HOBBY
--------------------------------------------------------

  ALTER TABLE "HR"."T_STUDENT_HOBBY" ADD PRIMARY KEY ("I_STUDENT", "I_HOBBY")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table T_HOBBY
--------------------------------------------------------

  ALTER TABLE "HR"."T_HOBBY" MODIFY ("NM" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."T_HOBBY" ADD PRIMARY KEY ("I_HOBBY")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table T_BOARD_LIKE
--------------------------------------------------------

  ALTER TABLE "HR"."T_BOARD_LIKE" ADD PRIMARY KEY ("I_BOARD", "I_STUDENT")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table T_BOARD
--------------------------------------------------------

  ALTER TABLE "HR"."T_BOARD" MODIFY ("TITLE" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."T_BOARD" MODIFY ("CTNT" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."T_BOARD" MODIFY ("I_STUDENT" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."T_BOARD" ADD PRIMARY KEY ("I_BOARD")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table T_STUDENT_HOBBY
--------------------------------------------------------

  ALTER TABLE "HR"."T_STUDENT_HOBBY" ADD FOREIGN KEY ("I_STUDENT")
	  REFERENCES "HR"."T_STUDENT" ("I_STUDENT") ENABLE;
 
  ALTER TABLE "HR"."T_STUDENT_HOBBY" ADD FOREIGN KEY ("I_HOBBY")
	  REFERENCES "HR"."T_HOBBY" ("I_HOBBY") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table T_BOARD_LIKE
--------------------------------------------------------

  ALTER TABLE "HR"."T_BOARD_LIKE" ADD FOREIGN KEY ("I_BOARD")
	  REFERENCES "HR"."T_BOARD" ("I_BOARD") ENABLE;
 
  ALTER TABLE "HR"."T_BOARD_LIKE" ADD FOREIGN KEY ("I_STUDENT")
	  REFERENCES "HR"."T_STUDENT" ("I_STUDENT") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table T_BOARD
--------------------------------------------------------

  ALTER TABLE "HR"."T_BOARD" ADD FOREIGN KEY ("I_STUDENT")
	  REFERENCES "HR"."T_STUDENT" ("I_STUDENT") ENABLE;
