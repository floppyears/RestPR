--------------------------------------------------------
--  File created - Friday-September-11-2015
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence MATCH_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "MISTSTU1"."MATCH_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PLAYER_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "MISTSTU1"."PLAYER_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PR_USER_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "MISTSTU1"."PR_USER_SEQ"  MINVALUE 1 MAXVALUE 99999999999999999 INCREMENT BY 1 START WITH 61 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEASON_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "MISTSTU1"."SEASON_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 81 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence TOURNAMENT_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "MISTSTU1"."TOURNAMENT_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table JSON_EXAMPLE
--------------------------------------------------------

  CREATE TABLE "MISTSTU1"."JSON_EXAMPLE"
   (	"NAME" VARCHAR2(20 BYTE),
	"RANK" VARCHAR2(20 BYTE),
	"ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 40960 NEXT 40960 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA_SML" ;
--------------------------------------------------------
--  DDL for Table MATCH
--------------------------------------------------------

  CREATE TABLE "MISTSTU1"."MATCH"
   (	"MATCH_ID" NUMBER(*,0),
	"PLAYER_1" NUMBER,
	"PLAYER_2" NUMBER,
	"WINNER" NUMBER,
	"TOURNAMENT_ID" NUMBER
   ) SEGMENT CREATION DEFERRED
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 NOCOMPRESS LOGGING
  TABLESPACE "DATA_SML" ;
--------------------------------------------------------
--  DDL for Table OAUTH_USER
--------------------------------------------------------

  CREATE TABLE "MISTSTU1"."OAUTH_USER"
   (	"TOKEN" VARCHAR2(20 BYTE),
	"USER_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 40960 NEXT 40960 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA_SML" ;
--------------------------------------------------------
--  DDL for Table PLAYER
--------------------------------------------------------

  CREATE TABLE "MISTSTU1"."PLAYER"
   (	"PLAYER_ID" NUMBER(*,0),
	"NAME" VARCHAR2(64 BYTE),
	"ELO_RATING" FLOAT(126),
	"INITIAL_ELO_SEED" FLOAT(126),
	"WIN_COUNT" NUMBER(*,0),
	"LOSS_COUNT" NUMBER(*,0),
	"SEASON_PARTICIPATING_IN" NUMBER
   ) SEGMENT CREATION DEFERRED
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 NOCOMPRESS LOGGING
  TABLESPACE "DATA_SML" ;
--------------------------------------------------------
--  DDL for Table PR_USER
--------------------------------------------------------

  CREATE TABLE "MISTSTU1"."PR_USER"
   (	"USER_ID" NUMBER(*,0),
	"USER_LOGIN" VARCHAR2(64 BYTE),
	"DISPLAY_NAME" VARCHAR2(64 BYTE)
   ) SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 40960 NEXT 40960 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA_SML" ;
--------------------------------------------------------
--  DDL for Table PR_USERS_SEASONS
--------------------------------------------------------

  CREATE TABLE "MISTSTU1"."PR_USERS_SEASONS"
   (	"USER_ID" NUMBER,
	"SEASON_ID" NUMBER,
	"PERMISSION_LEVEL" VARCHAR2(64 BYTE),
	"PERMISSION_KEY" VARCHAR2(64 BYTE)
   ) SEGMENT CREATION DEFERRED
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 NOCOMPRESS LOGGING
  TABLESPACE "DATA_SML" ;
--------------------------------------------------------
--  DDL for Table SEASON
--------------------------------------------------------

  CREATE TABLE "MISTSTU1"."SEASON"
   (	"SEASON_ID" NUMBER(*,0),
	"COMMUNITY_NAME" VARCHAR2(64 BYTE),
	"CYCLE_FORMAT" VARCHAR2(64 BYTE),
	"CYCLE_COUNT" VARCHAR2(64 BYTE),
	"ELO_DEFAULT_SEED" NUMBER,
	"SYEAR" NUMBER
   ) SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 40960 NEXT 40960 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA_SML" ;
--------------------------------------------------------
--  DDL for Table TOURNAMENT
--------------------------------------------------------

  CREATE TABLE "MISTSTU1"."TOURNAMENT"
   (	"TOURNAMENT_ID" NUMBER(*,0),
	"SERIES_NAME" VARCHAR2(64 BYTE),
	"SERIES_NUMBER" NUMBER(*,0),
	"SEASON_ID" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION DEFERRED
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 NOCOMPRESS LOGGING
  TABLESPACE "DATA_SML" ;
--------------------------------------------------------
--  DDL for Index JSON_EXAMPLE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MISTSTU1"."JSON_EXAMPLE_PK" ON "MISTSTU1"."JSON_EXAMPLE" ("NAME")
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 40960 NEXT 40960 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA_SML" ;
--------------------------------------------------------
--  DDL for Index MATCH_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MISTSTU1"."MATCH_PK" ON "MISTSTU1"."MATCH" ("MATCH_ID")
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  TABLESPACE "DATA_SML" ;
--------------------------------------------------------
--  DDL for Index OAUTH_USER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MISTSTU1"."OAUTH_USER_PK" ON "MISTSTU1"."OAUTH_USER" ("TOKEN")
  PCTFREE 10 INITRANS 2 MAXTRANS 255
  STORAGE(INITIAL 40960 NEXT 40960 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA_SML" ;
--------------------------------------------------------
--  DDL for Index PLAYER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MISTSTU1"."PLAYER_PK" ON "MISTSTU1"."PLAYER" ("PLAYER_ID")
  PCTFREE 10 INITRANS 2 MAXTRANS 255
  TABLESPACE "DATA_SML" ;
--------------------------------------------------------
--  DDL for Index PLAYER_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "MISTSTU1"."PLAYER_UK1" ON "MISTSTU1"."PLAYER" ("NAME")
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  TABLESPACE "DATA_SML" ;
--------------------------------------------------------
--  DDL for Index PR_USER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MISTSTU1"."PR_USER_PK" ON "MISTSTU1"."PR_USER" ("USER_ID")
  PCTFREE 10 INITRANS 2 MAXTRANS 255
  STORAGE(INITIAL 40960 NEXT 40960 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA_SML" ;
--------------------------------------------------------
--  DDL for Index PR_USER_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "MISTSTU1"."PR_USER_UK1" ON "MISTSTU1"."PR_USER" ("USER_LOGIN")
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 40960 NEXT 40960 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA_SML" ;
--------------------------------------------------------
--  DDL for Index PR_USER_UK2
--------------------------------------------------------

  CREATE UNIQUE INDEX "MISTSTU1"."PR_USER_UK2" ON "MISTSTU1"."PR_USER" ("DISPLAY_NAME")
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 40960 NEXT 40960 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA_SML" ;
--------------------------------------------------------
--  DDL for Index TABLE1_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MISTSTU1"."TABLE1_PK" ON "MISTSTU1"."SEASON" ("SEASON_ID")
  PCTFREE 10 INITRANS 2 MAXTRANS 255
  STORAGE(INITIAL 40960 NEXT 40960 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA_SML" ;
--------------------------------------------------------
--  DDL for Index TABLE1_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "MISTSTU1"."TABLE1_UK1" ON "MISTSTU1"."SEASON" ("COMMUNITY_NAME")
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 40960 NEXT 40960 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA_SML" ;
--------------------------------------------------------
--  DDL for Index TOURNAMENT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MISTSTU1"."TOURNAMENT_PK" ON "MISTSTU1"."TOURNAMENT" ("TOURNAMENT_ID")
  PCTFREE 10 INITRANS 2 MAXTRANS 255
  TABLESPACE "DATA_SML" ;
--------------------------------------------------------
--  DDL for Index TOURNAMENT_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "MISTSTU1"."TOURNAMENT_UK1" ON "MISTSTU1"."TOURNAMENT" ("SERIES_NAME")
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  TABLESPACE "DATA_SML" ;
--------------------------------------------------------
--  Constraints for Table JSON_EXAMPLE
--------------------------------------------------------

  ALTER TABLE "MISTSTU1"."JSON_EXAMPLE" ADD CONSTRAINT "JSON_EXAMPLE_PK" PRIMARY KEY ("NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 40960 NEXT 40960 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA_SML"  ENABLE;
  ALTER TABLE "MISTSTU1"."JSON_EXAMPLE" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "MISTSTU1"."JSON_EXAMPLE" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "MISTSTU1"."JSON_EXAMPLE" MODIFY ("RANK" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MATCH
--------------------------------------------------------

  ALTER TABLE "MISTSTU1"."MATCH" MODIFY ("TOURNAMENT_ID" NOT NULL ENABLE);
  ALTER TABLE "MISTSTU1"."MATCH" ADD CONSTRAINT "MATCH_PK" PRIMARY KEY ("MATCH_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  TABLESPACE "DATA_SML"  ENABLE;
  ALTER TABLE "MISTSTU1"."MATCH" MODIFY ("MATCH_ID" NOT NULL ENABLE);
  ALTER TABLE "MISTSTU1"."MATCH" MODIFY ("WINNER" NOT NULL ENABLE);
  ALTER TABLE "MISTSTU1"."MATCH" MODIFY ("PLAYER_2" NOT NULL ENABLE);
  ALTER TABLE "MISTSTU1"."MATCH" MODIFY ("PLAYER_1" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table OAUTH_USER
--------------------------------------------------------

  ALTER TABLE "MISTSTU1"."OAUTH_USER" ADD CONSTRAINT "OAUTH_USER_PK" PRIMARY KEY ("TOKEN")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255
  STORAGE(INITIAL 40960 NEXT 40960 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA_SML"  ENABLE;
  ALTER TABLE "MISTSTU1"."OAUTH_USER" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "MISTSTU1"."OAUTH_USER" MODIFY ("TOKEN" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PLAYER
--------------------------------------------------------

  ALTER TABLE "MISTSTU1"."PLAYER" ADD CONSTRAINT "PLAYER_UK1" UNIQUE ("NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  TABLESPACE "DATA_SML"  ENABLE;
  ALTER TABLE "MISTSTU1"."PLAYER" ADD CONSTRAINT "PLAYER_PK" PRIMARY KEY ("PLAYER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255
  TABLESPACE "DATA_SML"  ENABLE;
  ALTER TABLE "MISTSTU1"."PLAYER" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "MISTSTU1"."PLAYER" MODIFY ("PLAYER_ID" NOT NULL ENABLE);
  ALTER TABLE "MISTSTU1"."PLAYER" MODIFY ("SEASON_PARTICIPATING_IN" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PR_USER
--------------------------------------------------------

  ALTER TABLE "MISTSTU1"."PR_USER" ADD CONSTRAINT "PR_USER_U_USER_LOGIN" UNIQUE ("USER_LOGIN")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 40960 NEXT 40960 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA_SML"  ENABLE;
  ALTER TABLE "MISTSTU1"."PR_USER" ADD CONSTRAINT "PR_USER_U_DISPLAY_NAME" UNIQUE ("DISPLAY_NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 40960 NEXT 40960 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA_SML"  ENABLE;
  ALTER TABLE "MISTSTU1"."PR_USER" ADD CONSTRAINT "PR_USER_PK" PRIMARY KEY ("USER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255
  STORAGE(INITIAL 40960 NEXT 40960 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA_SML"  ENABLE;
  ALTER TABLE "MISTSTU1"."PR_USER" MODIFY ("DISPLAY_NAME" NOT NULL ENABLE);
  ALTER TABLE "MISTSTU1"."PR_USER" MODIFY ("USER_LOGIN" NOT NULL ENABLE);
  ALTER TABLE "MISTSTU1"."PR_USER" MODIFY ("USER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PR_USERS_SEASONS
--------------------------------------------------------

  ALTER TABLE "MISTSTU1"."PR_USERS_SEASONS" MODIFY ("SEASON_ID" NOT NULL ENABLE);
  ALTER TABLE "MISTSTU1"."PR_USERS_SEASONS" MODIFY ("USER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SEASON
--------------------------------------------------------

  ALTER TABLE "MISTSTU1"."SEASON" MODIFY ("SYEAR" NOT NULL ENABLE);
  ALTER TABLE "MISTSTU1"."SEASON" ADD CONSTRAINT "SEASON_U_COMMUNITY_NAME" UNIQUE ("COMMUNITY_NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 40960 NEXT 40960 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA_SML"  ENABLE;
  ALTER TABLE "MISTSTU1"."SEASON" ADD CONSTRAINT "SEASON_PK" PRIMARY KEY ("SEASON_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255
  STORAGE(INITIAL 40960 NEXT 40960 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA_SML"  ENABLE;
  ALTER TABLE "MISTSTU1"."SEASON" MODIFY ("CYCLE_COUNT" NOT NULL ENABLE);
  ALTER TABLE "MISTSTU1"."SEASON" MODIFY ("CYCLE_FORMAT" NOT NULL ENABLE);
  ALTER TABLE "MISTSTU1"."SEASON" MODIFY ("COMMUNITY_NAME" NOT NULL ENABLE);
  ALTER TABLE "MISTSTU1"."SEASON" MODIFY ("SEASON_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TOURNAMENT
--------------------------------------------------------

  ALTER TABLE "MISTSTU1"."TOURNAMENT" MODIFY ("SEASON_ID" NOT NULL ENABLE);
  ALTER TABLE "MISTSTU1"."TOURNAMENT" ADD CONSTRAINT "TOURNAMENT_UK1" UNIQUE ("SERIES_NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  TABLESPACE "DATA_SML"  ENABLE;
  ALTER TABLE "MISTSTU1"."TOURNAMENT" ADD CONSTRAINT "TOURNAMENT_PK" PRIMARY KEY ("TOURNAMENT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255
  TABLESPACE "DATA_SML"  ENABLE;
  ALTER TABLE "MISTSTU1"."TOURNAMENT" MODIFY ("SERIES_NAME" NOT NULL ENABLE);
  ALTER TABLE "MISTSTU1"."TOURNAMENT" MODIFY ("TOURNAMENT_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table MATCH
--------------------------------------------------------

  ALTER TABLE "MISTSTU1"."MATCH" ADD CONSTRAINT "MATCH_FK1" FOREIGN KEY ("PLAYER_1")
	  REFERENCES "MISTSTU1"."PLAYER" ("PLAYER_ID") ENABLE;
  ALTER TABLE "MISTSTU1"."MATCH" ADD CONSTRAINT "MATCH_FK2" FOREIGN KEY ("PLAYER_2")
	  REFERENCES "MISTSTU1"."PLAYER" ("PLAYER_ID") ENABLE;
  ALTER TABLE "MISTSTU1"."MATCH" ADD CONSTRAINT "MATCH_FK3" FOREIGN KEY ("TOURNAMENT_ID")
	  REFERENCES "MISTSTU1"."TOURNAMENT" ("TOURNAMENT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table OAUTH_USER
--------------------------------------------------------

  ALTER TABLE "MISTSTU1"."OAUTH_USER" ADD CONSTRAINT "OAUTH_USER_FK1" FOREIGN KEY ("USER_ID")
	  REFERENCES "MISTSTU1"."PR_USER" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PLAYER
--------------------------------------------------------

  ALTER TABLE "MISTSTU1"."PLAYER" ADD CONSTRAINT "PLAYER_FK1" FOREIGN KEY ("PLAYER_ID")
	  REFERENCES "MISTSTU1"."SEASON" ("SEASON_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PR_USERS_SEASONS
--------------------------------------------------------

  ALTER TABLE "MISTSTU1"."PR_USERS_SEASONS" ADD CONSTRAINT "PR_USERS_SEASONS_FK1" FOREIGN KEY ("USER_ID")
	  REFERENCES "MISTSTU1"."PR_USER" ("USER_ID") ENABLE;
  ALTER TABLE "MISTSTU1"."PR_USERS_SEASONS" ADD CONSTRAINT "PR_USERS_SEASONS_FK2" FOREIGN KEY ("SEASON_ID")
	  REFERENCES "MISTSTU1"."SEASON" ("SEASON_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TOURNAMENT
--------------------------------------------------------

  ALTER TABLE "MISTSTU1"."TOURNAMENT" ADD CONSTRAINT "TOURNAMENT_FK1" FOREIGN KEY ("TOURNAMENT_ID")
	  REFERENCES "MISTSTU1"."SEASON" ("SEASON_ID") ENABLE;