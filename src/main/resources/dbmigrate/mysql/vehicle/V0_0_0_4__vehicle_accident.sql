

-------------------------------------------------------------------------------
--  vehicle accident
-------------------------------------------------------------------------------
CREATE TABLE VEHICLE_ACCIDENT(
        ID BIGINT NOT NULL,
	CREATE_TIME DATETIME,
	LOCATION VARCHAR(200),
	CONFIRMER VARCHAR(50),
	PRICE INTEGER,
	OTHER_NAME VARCHAR(50),
	OTHER_ADDRESS VARCHAR(200),
	OTHER_MOBILE VARCHAR(50),
	COMPANY_PRICE INTEGER,
	PERSON_PRICE INTEGER,
	OTHER_CODE VARCHAR(50),
	SUMMARY VARCHAR(200),
	RECONCILIATION VARCHAR(200),
	STATUS VARCHAR(50),
	DESCRIPTION VARCHAR(200),
	TENANT_ID VARCHAR(64),
	INFO_ID BIGINT,
	DRIVER_ID BIGINT,
        CONSTRAINT PK_VEHICLE_ACCIDENT PRIMARY KEY(ID),
        CONSTRAINT FK_VEHICLE_ACCIDENT_INFO FOREIGN KEY(INFO_ID) REFERENCES VEHICLE_INFO(ID),
        CONSTRAINT FK_VEHICLE_ACCIDENT_DRIVER FOREIGN KEY(DRIVER_ID) REFERENCES VEHICLE_DRIVER(ID)
) ENGINE=INNODB CHARSET=UTF8;




















