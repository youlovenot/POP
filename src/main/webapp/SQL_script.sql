create database POPGAMES;

use POPGAMES;

create table member(
	id varchar(20) primary key,
	password varchar(20) not null,
	name varchar(20) not null,
	phone varchar(20),
	email varchar(20),
	zipcode varchar(20),
	adress1 varchar(20),
	adress2 varchar(20),
	adress3 varchar(20)
    );

insert into member(id, password, name)
values('admin','admin1234', '관리자');
insert into member(id, password, name)
values('test','test123','테스트');
insert into member
values('userID','Pa$$w0rd', '사용자','010-1111-1111', 'email@email.com','12345','주소','상세주소','주소참고항목'); 

select * from member;

create table notice(
	seq int primary key,
    title varchar(20) not null,
    content varchar(1000),
    image varchar(20),
    regDate datetime default CURRENT_TIMESTAMP
	);
    
select * from notice order by seq desc;

insert into notice(seq, title, content)
values(1, '제목1','내용1');

create table goods(
	seq int primary key,   /*상품번호*/
    name varchar(100),		  /*상품이름*/
    price int,			  /*상품가격*/
    stock int,			  /*상품재고*/
	detail1 varchar(100),	  		  /*상품설명*/
	detail2 varchar(100),	  		  /*상품설명*/
	detail3 varchar(100),	  		  /*상품설명*/
	detail4 varchar(100),	  		  /*상품설명*/
	detail5 varchar(100),	  		  /*상품설명*/
    pimage varchar(100),     /*상품이미지*/
    regDate datetime default CURRENT_TIMESTAMP	 /*상품등록날짜*/
);
 select * from goods;

create table boardgame(
	pId int(4) primary key,   /*상품번호*/
    pName varchar(100),		  /*상품이름*/
    pPrice int(10),			  /*상품가격*/
    pStock int(3),			  /*상품재고*/
	pDetail text,	  		  /*상품설명*/
    pImage varchar(4000),     /*상품이미지*/
    pDate datetime default CURRENT_TIMESTAMP	 /*상품등록날짜*/
);


create table cart(
	cId int(10) primary key,	/*장바구니 번호*/
    id varchar(20) references member(id),   /*회원 아이디*/
    seq int(4) references goods(seq)
    pId int(4) references boardgame(pId),     /*상품번호*/
    cQty int(3) default 1				    /*수량*/
);

insert into cart(cId,id,pId,cQty)
values(1111,'youlovenot',1000,2);

select * from cart;

create table cartOrder(
	oId int(10) primary key,	/*주문번호*/
    id varchar(20) references member(id),
    oName varchar(20),          /*주문자*/
    oPhone varchar(20),
    oZipcode varchar(20),
    oAddress varchar(20),
    oDate datetime default CURRENT_TIMESTAMP,
    oPayment varchar(20),        /*결제수단*/
    oCardno varchar(20)			/*카드번호*/
);

insert into cartOrder(oId,id,oName,oPhone,oZipcode,oAddress,oPayment,oCardno)
values(10000,'youlovenot','홍길동','010-1111-1111','111-111','경기도 안양시','card','1111-1111-1111-1111');

select * from cartOrder;

create table game(
	gId int(5) primary key,
    gName varchar(20),
    gPeople varchar(20),
    gAge varchar(20),
    gTime varchar(20),
    gDetail varchar(4000)
);

insert into game(gId,gName,gPeople,gAge,gTime,gDetail)
values(11111,'루미큐브','2~4명','8세이상','20분','루미큐브 설명입니다.');

select * from game;
