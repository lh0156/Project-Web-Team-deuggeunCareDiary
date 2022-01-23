-- 회원 정보 Member(O)
ALTER TABLE tblMember ADD CONSTRAINT tblMember_memberSeq_pk PRIMARY KEY(memberSeq);

ALTER TABLE tblMember	MODIFY (postalCode VARCHAR2(30) DEFAULT '입력 없음');
ALTER TABLE tblMember	MODIFY (address VARCHAR2(200) DEFAULT '입력 없음');
ALTER TABLE tblMember	MODIFY (accountStatus VARCHAR2(30) DEFAULT '일반');
ALTER TABLE tblMember	MODIFY (mileage NUMBER DEFAULT 0);
-- 영상(동적)Video(O)
 Alter table tblVideo add constraint tblVideo_videoSeq_pk primary key(videoSeq);
 Alter table tblVideo add constraint tblVideo_category_ck check (category in('영양학', '보충제', '식단'));
 Alter table tblVideo modify (enrollmentDate date default sysdate);

-- 상품 정보Product(O)
alter table tblProduct add constraint tblProduct_productSeq_pk primary key(productSeq);





-- 문의(O)

alter table tblQA add constraint tblQA_QASeq_pk primary key(QASeq);
alter table tblQA add constraint tblQA_memberSeq_fk foreign key(memberSeq) references tblMember(memberSeq);
alter table tblQA add constraint tblQA_QACategory_ck check(QACategory in('배송문의', '상품문의', '계정문의', '기타문의', '신고문의'));
alter table tblQA modify (QAAnswer varchar2(3000) default '접수중');

-- 고객의소리(O)
alter table tblCSVoice add constraint tblCSVoice_CSVSeq_pk primary key(CSVSeq);
alter table tblCSVoice add constraint tblCSVoice_memberSeq_fk foreign key(memberSeq) references tblMember(memberSeq);

-- 몸무게 (O)
ALTER TABLE tblWeight ADD CONSTRAINT tblWeight_weightSeq_pk PRIMARY KEY(weightSeq);
ALTER TABLE tblWeight ADD CONSTRAINT tblMember_memberSeq_fk FOREIGN KEY(memberSeq) REFERENCES tblMember(memberSeq);

ALTER TABLE tblWeight	MODIFY (weight NUMBER DEFAULT 0);
ALTER TABLE tblWeight	MODIFY (weightDate DATE DEFAULT SYSDATE);


--희망 스팩(O)

 Alter table tblWantSpec add constraint tblWantSpec_wantSpecSeq_pk primary key(wantSpecSeq);
 Alter table tblWantSpec add constraint tblWantSpec_wantExercise_ck check (wantExercise in('린메스업', '벌크업', '컷팅'));
 Alter table tblWantSpec add constraint tblWantSpec_memberSeq_fk foreign key(memberSeq) references tblMember(memberSeq);

--근육량 Muscle(O)
ALTER TABLE tblMuscle ADD CONSTRAINT tblMuscle_muscleSeq_pk PRIMARY KEY(muscleSeq);
ALTER TABLE tblMuscle ADD CONSTRAINT tblMuscle_memberSeq_fk FOREIGN KEY(memberSeq) REFERENCES tblMember(memberSeq);

ALTER TABLE tblMuscle	MODIFY (muscle NUMBER DEFAULT 0);
ALTER TABLE tblMuscle	MODIFY (muscleDate DATE DEFAULT SYSDATE);

-- 체지방량Fat(O)

ALTER TABLE tblFat ADD CONSTRAINT tblFat_fatSeq_pk PRIMARY KEY(fatSeq);
ALTER TABLE tblFat ADD CONSTRAINT tblFat_memberSeq_fk FOREIGN KEY(memberSeq) REFERENCES tblMember(memberSeq);

ALTER TABLE tblFat	MODIFY (fat NUMBER DEFAULT 0);
ALTER TABLE tblFat	MODIFY (fatDate DATE DEFAULT SYSDATE);

--주문서 Order(O)
ALTER TABLE tblOrder ADD CONSTRAINT tblOrder_orderSeq_pk PRIMARY KEY (
	orderSeq
);
ALTER TABLE tblOrder ADD CONSTRAINT tblOrder_orderSeq_fk foreign KEY(memberSeq) references tblMember (memberSeq);
ALTER TABLE tblOrder MODIFY (orderDate DEFAULT SYSDATE);

--필수 영양소 EssentialNT(O)
alter table tblEssentialNT add constraint tblEssentialNT_ENNSeq_pk primary key(ENNSeq);
alter table tblEssentialNT add constraint tblEssentialNT_productSeq_fk foreign KEY(productSeq) references tblproduct (productSeq);

--상품 문의 QAProduct(O)
alter table tblQAProduct add constraint tblQAProduct_QAPSeq_pk primary key(QAPSeq);
alter table tblQAProduct add constraint tblQAProduct_QASeq_fk foreign key(QASeq) references tblQA(QASeq);
alter table tblQAProduct add constraint tblQAProduct_ProductSeq_fk foreign key(ProductSeq) references tblProduct(productSeq);
--장바구니 basket(O)

 Alter table tblBasket add constraint tblBasket_basketSeq_pk primary key(basketSeq);
 Alter table tblBasket add constraint tblBasket_memberSeq_fk foreign key(memberSeq) references tblMember(memberSeq);
 Alter table tblBasket add constraint tblBasket_productSeq_fk foreign key(productSeq) references tblproduct(productSeq);
 Alter table tblBasket modify (score number default 1);

--기타 영양소 OtherNT(O)
 alter table tblOtherNT add constraint tblOtherNT_ONNSeq_pk primary key(ONNSeq);
 alter table tblOtherNT add constraint tblOtherNT_ProductSeq_fk foreign key(ProductSeq) references tblProduct(productSeq);
 
--상품 이미지 ProductURL(O)

alter table tblProductURL add constraint tblProductURL_productUrlSeq_pk primary key(productUrlSeq);
alter table tblProductURL add constraint tblProductURL_ProductSeq_fk foreign key(ProductSeq) references tblProduct(productSeq);



-- 주문서 개별 EachOrder(O)
ALTER TABLE tblEachOrder ADD CONSTRAINT tblEachOrder_orderEachSeq_pk PRIMARY KEY (
	eachOrderSeq
);
--  1) 상품번호 productSeq
ALTER TABLE tblEachOrder ADD CONSTRAINT tblEachOrder_productSeq_fk foreign KEY(productSeq) references tblProduct (productSeq);
--  2) 주문번호 orderSeq
ALTER TABLE tblEachOrder ADD CONSTRAINT tblEachOrder_orderSeq_fk foreign KEY(orderSeq) references tblOrder (orderSeq);

-- 리뷰 Review



ALTER TABLE tblReview ADD CONSTRAINT tblReview_reviewSeq_pk PRIMARY KEY (reviewSeq);
ALTER TABLE tblReview ADD CONSTRAINT tblReview_eachOrderSeq_fk foreign KEY(eachOrderSeq) references tblEachOrder (eachOrderSeq);
ALTER TABLE tblReview MODIFY (reviewDate DEFAULT SYSDATE);

--상품 회수 refund
ALTER TABLE tblRefund ADD CONSTRAINT tblRefund_refundSeq_pk PRIMARY KEY (
	refundSeq
);
ALTER TABLE tblRefund ADD CONSTRAINT tblRefund_eachOrderSeq_fk foreign KEY(eachOrderSeq) references tblEachOrder (eachOrderSeq);
ALTER TABLE tblRefund MODIFY (refundDate DEFAULT SYSDATE);