
CREATE TABLE PRODUCT (
    PROD_ID INT NOT NULL PRIMARY KEY,
    PROD_NAME VARCHAR(200) NOT NULL,
    PROD_IMAGE VARCHAR(500),
    PROD_ACTIVE SMALLINT NOT NULL

);

ALTER TABLE PRODUCT
ADD PROD_PRICE FLOAT NOT NULL

CREATE TABLE CATEGORIES (
CAT_ID INT NOT NULL PRIMARY KEY,
CAT_NAME VARCHAR(200) NOT NULL,
CAT_IMAGE VARCHAR(500),
CAT_ACTIVE SMALLINT NOT NULL,

);

ALTER TABLE CATEGORIES
ADD PROD_ID INT CONSTRAINT FK_CAT FOREIGN KEY REFERENCES PRODUCT(PROD_ID)


SELECT * FROM CATEGORIES

CREATE TABLE USERAC (
    ACC_ID INT NOT NULL PRIMARY KEY,
    ID VARCHAR(200) NOT NULL,
    PASWD CHAR(8) NOT NULL,
    TIMESTMP TIME ,
    PHN INT NOT NULL,
    TRANS_AMNT INT 


);

CREATE TABLE WISHLIST (
    SN_NO INT NOT NULL PRIMARY KEY,
    ACTIVE SMALLINT NOT NULL,
    PROD_ID INT CONSTRAINT FK_WISHLIST_PROD_ID FOREIGN KEY REFERENCES PRODUCT(PROD_ID),
    ACC_ID INT CONSTRAINT FK_WISHLIST_ACC_ID FOREIGN KEY REFERENCES USERAC(ACC_ID)

);

CREATE TABLE ADDRESS (
    ADD_ID INT NOT NULL PRIMARY KEY,
    NAME VARCHAR(30) NOT NULL,
    ADD1 VARCHAR(30),
    ADD2 VARCHAR(30),
    CITY VARCHAR(30),
    STATE VARCHAR(30),
    ZIP INT,
    PHN INT,
    ACC_ID INT CONSTRAINT FK_ADDRESS_ACC_ID FOREIGN KEY REFERENCES USERAC(ACC_ID)


);

CREATE TABLE SHIPPING (
    SHIP_ID INT NOT NULL PRIMARY KEY,
    SHIP_METHOD VARCHAR(20),
    CHARGE FLOAT,
    DATE DATE,
    ACC_ID INT CONSTRAINT FK_SHIPPING_ACC_ID FOREIGN KEY REFERENCES USERAC(ACC_ID),
    ADD_ID INT CONSTRAINT FK_SHIPPING_ADD_ID FOREIGN KEY REFERENCES ADDRESS(ADD_ID)

);

CREATE TABLE ORDERS (
    ORD_ID INT NOT NULL PRIMARY KEY,
    PROD_ID INT CONSTRAINT FK_ORDERS_PROD_ID FOREIGN KEY REFERENCES PRODUCT(PROD_ID),
    ORD_QTY INT NOT NULL,
    DATE DATE,
    ORD_AMT FLOAT NOT NULL,
    SHIP_ID INT CONSTRAINT FK_ORDERS_SHIP_ID FOREIGN KEY REFERENCES SHIPPING(SHIP_ID)



);







