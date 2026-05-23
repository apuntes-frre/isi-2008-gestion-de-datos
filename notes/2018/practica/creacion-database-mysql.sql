--
-- ER/Studio 8.0 SQL Code Generation
-- Project :      Creacion database DB2.DM1
--
-- Date Created : Thursday, September 16, 2010 17:03:56
-- Target DBMS : MySQL 5.x
--

-- 
-- TABLE: aircraft 
--

CREATE TABLE aircraft(
    aid             CHAR(10)       NOT NULL,
    aname           VARCHAR(30),
    crusingrange    CHAR(10),
    PRIMARY KEY (aid)
)ENGINE=MYISAM
;



-- 
-- TABLE: catalog 
--

CREATE TABLE catalog(
    sid     CHAR(10)    NOT NULL,
    pid     CHAR(10)    NOT NULL,
    cost    CHAR(10),
    PRIMARY KEY (sid, pid)
)ENGINE=MYISAM
;



-- 
-- TABLE: certified 
--

CREATE TABLE certified(
    eid    CHAR(10)    NOT NULL,
    aid    CHAR(10)    NOT NULL,
    PRIMARY KEY (eid, aid)
)ENGINE=MYISAM
;



-- 
-- TABLE: class 
--

CREATE TABLE class(
    name        VARCHAR(40)    NOT NULL,
    meets_at    VARCHAR(20),
    room        VARCHAR(10),
    fid         CHAR(10),
    PRIMARY KEY (name)
)ENGINE=MYISAM
;



-- 
-- TABLE: dept 
--

CREATE TABLE dept(
    did          CHAR(10)       NOT NULL,
    dname        VARCHAR(20),
    budget       CHAR(10),
    managerid    CHAR(10),
    PRIMARY KEY (did)
)ENGINE=MYISAM
;



-- 
-- TABLE: emp 
--

CREATE TABLE emp(
    eid       CHAR(10)       NOT NULL,
    ename     VARCHAR(30),
    age       CHAR(10),
    salary    CHAR(10),
    PRIMARY KEY (eid)
)ENGINE=MYISAM
;



-- 
-- TABLE: employees 
--

CREATE TABLE employees(
    eid       CHAR(10)       NOT NULL,
    ename     VARCHAR(30),
    salary    CHAR(10),
    PRIMARY KEY (eid)
)ENGINE=MYISAM
;



-- 
-- TABLE: enrolled 
--

CREATE TABLE enrolled(
    snum     CHAR(10)       NOT NULL,
    cname    VARCHAR(40)    NOT NULL,
    PRIMARY KEY (snum, cname)
)ENGINE=MYISAM
;



-- 
-- TABLE: faculty 
--

CREATE TABLE faculty(
    fid       CHAR(10)       NOT NULL,
    fname     VARCHAR(30),
    deptid    CHAR(10),
    PRIMARY KEY (fid)
)ENGINE=MYISAM
;



-- 
-- TABLE: flights 
--

CREATE TABLE flights(
    flno           CHAR(10)       NOT NULL,
    origin         VARCHAR(20),
    destination    VARCHAR(20),
    distance       CHAR(10),
    departs        TIMESTAMP,
    arrives        TIMESTAMP,
    price          CHAR(10),
    PRIMARY KEY (flno)
)ENGINE=MYISAM
;



-- 
-- TABLE: parts 
--

CREATE TABLE parts(
    pid      CHAR(10)       NOT NULL,
    pname    VARCHAR(40),
    color    VARCHAR(15),
    PRIMARY KEY (pid)
)ENGINE=MYISAM
;



-- 
-- TABLE: sailors 
--

CREATE TABLE sailors(
    sid       CHAR(10)       NOT NULL,
    sname     VARCHAR(30),
    rating    CHAR(10),
    age       CHAR(10),
    PRIMARY KEY (sid)
)ENGINE=MYISAM
;



-- 
-- TABLE: student 
--

CREATE TABLE student(
    snum        CHAR(10)       NOT NULL,
    sname       VARCHAR(30),
    major       VARCHAR(25),
    standing    VARCHAR(2),
    age         CHAR(10),
    PRIMARY KEY (snum)
)ENGINE=MYISAM
;



-- 
-- TABLE: suppliers 
--

CREATE TABLE suppliers(
    sid        CHAR(10)       NOT NULL,
    sname      VARCHAR(30),
    address    VARCHAR(40),
    PRIMARY KEY (sid)
)ENGINE=MYISAM
;



-- 
-- TABLE: works 
--

CREATE TABLE works(
    eid         CHAR(10)    NOT NULL,
    did         CHAR(10)    NOT NULL,
    pct_time    CHAR(10),
    PRIMARY KEY (eid, did)
)ENGINE=MYISAM
;



-- 
-- TABLE: catalog 
--

ALTER TABLE catalog ADD CONSTRAINT Refsuppliers9 
    FOREIGN KEY (sid)
    REFERENCES suppliers(sid)
;

ALTER TABLE catalog ADD CONSTRAINT Refparts10 
    FOREIGN KEY (pid)
    REFERENCES parts(pid)
;


-- 
-- TABLE: certified 
--

ALTER TABLE certified ADD CONSTRAINT Refemployees7 
    FOREIGN KEY (eid)
    REFERENCES employees(eid)
;

ALTER TABLE certified ADD CONSTRAINT Refaircraft8 
    FOREIGN KEY (aid)
    REFERENCES aircraft(aid)
;


-- 
-- TABLE: class 
--

ALTER TABLE class ADD CONSTRAINT Reffaculty1 
    FOREIGN KEY (fid)
    REFERENCES faculty(fid)
;


-- 
-- TABLE: dept 
--

ALTER TABLE dept ADD CONSTRAINT Refemp4 
    FOREIGN KEY (managerid)
    REFERENCES emp(eid)
;


-- 
-- TABLE: enrolled 
--

ALTER TABLE enrolled ADD CONSTRAINT Refstudent2 
    FOREIGN KEY (snum)
    REFERENCES student(snum)
;

ALTER TABLE enrolled ADD CONSTRAINT Refclass3 
    FOREIGN KEY (cname)
    REFERENCES class(name)
;


-- 
-- TABLE: works 
--

ALTER TABLE works ADD CONSTRAINT Refemp5 
    FOREIGN KEY (eid)
    REFERENCES emp(eid)
;

ALTER TABLE works ADD CONSTRAINT Refdept6 
    FOREIGN KEY (did)
    REFERENCES dept(did)
;


