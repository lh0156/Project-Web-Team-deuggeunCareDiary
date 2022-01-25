CREATE TABLE tblOrder (
	orderSeq	varchar2(20)	NOT NULL,
	courier	varchar2(30)	NULL,
	invoiceNum	varchar2(50)	NULL,
	paymentMethod	varchar2(50)	NOT NULL,
	orderDate	date	NOT NULL,
	orderAddress	varchar2(200)	NOT NULL,
	useMileage	number	NULL,
	memberSeq	varchar2(20)	NOT NULL,
	orderPostalCode	varchar2(30)	NOT NULL
);

-- 주문서(개별) tblEachOrder
CREATE TABLE tblEachOrder (
	eachOrderSeq	varchar2(20)	NOT NULL,
	stock	number	NOT NULL,
	productSeq	varchar2(20)	NOT NULL,
	orderSeq	varchar2(20)	NOT NULL,
	process	varchar2(30)	NOT NULL,
	discountRate	number	NOT NULL
);

-- 리뷰 tblReview
CREATE TABLE tblReview (
	reviewSeq	varchar2(20)	NOT NULL,
	reviewContent	varchar2(3000)	NOT NULL,
	reviewPoint	number	NOT NULL,
	eachorderseq	varchar2(20)	NOT NULL,
    reviewDate  date    NOT NULL
);

-- 회수 tblRefund
CREATE TABLE tblRefund (
	refundSeq	varchar2(20)	NOT NULL,
	refundDate  date	NULL,
	refundRequest	varchar2(3000)	NULL,
	eachOrderSeq	varchar2(20)	NOT NULL,
	refundCheck	varchar2(50)	NULL
);

 Create Table tblWantSpec (
  wantSpecSeq varchar2(20) NOT NULL,
  wantWeight number NOT NULL,
  wantFat number NOT NULL,
  wantMuscle number NOT NULL,
  wantDate date NOT NULL,
  wantExercise varchar2(100) NOT NULL,
  memberSeq varchar2(20) NOT NULL
 );
 
 Create Table tblBasket (
  basketSeq varchar2(20) NOT NULL,
  memberSeq varchar2(20) NOT NULL,
  productSeq varchar2(20) NOT NULL,
  score number 
 );
 
 Create Table tblVideo (
  videoSeq varchar2(20) NOT NULL,
  name varchar2(300) NOT NULL,
  category varchar2(50) NOT NULL,
  enrollmentDate date,
  videoURL varchar2(200) NOT NULL
 );
 
 CREATE TABLE tblMember (
	memberSeq	VARCHAR2(20)		NOT NULL,
	name		VARCHAR2(30)		NOT NULL,
	id 		VARCHAR2(60)		NOT NULL,
	password 	VARCHAR2(30)		NOT NULL,
	jumin 		VARCHAR2(30)		NOT NULL,
	gender 		VARCHAR2(30)		NOT NULL,
	postalCode 	VARCHAR2(30),		
	address		VARCHAR2(200),		
	tel		VARCHAR2(30)		NOT NULL,
	email 		VARCHAR2(30)		NOT NULL,
	grade 		VARCHAR2(30)		NOT NULL,
	accountStatus 	VARCHAR2(30),		
	mileage		NUMBER			
);


CREATE TABLE tblWeight (
	weightSeq	VARCHAR2(20)		NOT NULL,
	weight		NUMBER,	 		
	weightDate 	DATE ,			
	memberSeq 	VARCHAR2(20) 		NOT NULL
);


CREATE TABLE tblFat (
	fatSeq		VARCHAR2(20)		NOT NULL,
	fat		NUMBER,			
	fatDate		DATE,			
	memberSeq 	VARCHAR2(20) 		NOT NULL
);


CREATE TABLE tblMuscle (
	muscleSeq	VARCHAR2(20)		NOT NULL,
	muscle		NUMBER,			
	muscleDate	DATE, 			
	memberSeq	VARCHAR2(20) 		NOT NULL
);

CREATE TABLE tblProduct (
	productSeq		varchar2(20)	NOT NULL,
	productName		varchar2(100)	NOT NULL,
	capacity			varchar2(50)	NOT NULL,
	category			varchar2(30)	NOT NULL,
	price			number	           	NOT NULL,
	inventory			number		NOT NULL,
	productDescription		varchar2(300)	NOT NULL,
	salesStatus		varchar2(20)	NOT NULL
);


CREATE TABLE tblProductURL (
	productUrlSeq	varchar2(20)	NOT NULL,
	productSeq	varchar2(20)	NOT NULL,
	imgUrl		varchar2(100)	NOT NULL
);


CREATE TABLE  tblEssentialNT (
	ENNSeq		varchar2(20)	NOT NULL,
	carbohydrate	number		NOT NULL,
	protein		number		NOT NULL,
	fat		number		NOT NULL,
	productSeq	varchar2(20)	NOT NULL
);

CREATE TABLE tblOtherNT  (
	ONNSeq		varchar2(20)	NOT NULL,
	fiber		varchar2(20)	NOT NULL,
	caffeine	            varchar2(20)	NOT NULL,
	creatine    	varchar2(20)	NOT NULL,
	betaAlanine	varchar2(20)	NOT NULL,
	bcaa	varchar2(20)	NOT NULL,
	magnesium	varchar2(20)	NOT NULL,
	milkthistle	varchar2(20)	NOT NULL,
	dietaryfiber	varchar2(20)	NOT NULL,
	vitamin	varchar2(20)  NOT NULL,
	lactobacillus varchar2(20)  NOT NULL,
	productSeq	varchar2(20)	NOT NULL
);

create table tblCSVoice (
    CSVSeq varchar2(20) not null,
    CSVSubject varchar2(200) not null,
    CSVContent varchar2(3000) not null,
    memberSeq varchar2(20) not null
);

create table tblQA (
    QASeq varchar2(20) not null,
    QASubject varchar2(200) not null,
    QAContent varchar2(3000) not null,
    QAAnswer varchar2(3000) not null,
    QACategory varchar2(30) not null,
    memberSeq varchar2(20) not null
);

create table tblQADelivery (
    QADSeq varchar2(20) not null,
    QASeq varchar2(20) not null,
    orderSeq varchar2(20) not null
);

create table tblQAProduct (
    QAPSeq varchar2(20) not null,
    QASeq varchar2(20) not null,
    ProductSeq varchar2(20) not null
);