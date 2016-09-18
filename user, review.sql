USE MASICKDANG

Create Table Users 
(
	UserID VarChar(25) Not Null, --아이디
	Password VarChar(100) Not Null, --비밀번호
	JoinDate DateTime Default GetDate() --가입일자
	Primary Key(UserID)
)
Go


USE MASICKDANG

Create Table Reviews 
(
	ReviewNo Int Identity(1,1) Not Null, --고유번호
	SHOPNO Int Not Null, --식당번호 
	UserID VarChar(25), --유저
	Rating TinyInt Not Null, --별점
	Comments VarChar(3850), --내용
	AddDate SmallDateTime
		Default(GetDate()), --작성일
	Foreign Key(ShopNo)
		References SHOP(ShopNo), --외래키
	Primary Key(ReviewNo, ShopNo), --기본키	
	Check(0 <= Rating),
	Check(Rating <= 5)
) 	
Go

Insert Into Reviews Values(1,'이유희' ,3,'쏘쏘', GETDATE())
Go
Insert Into Reviews Values(1,'탁나래' ,5,'완전 맛있어요', GETDATE())
Go
Insert Into Reviews Values(1,'강린' ,4,'먹을게 없을 땐 소오밥집이 최고', GETDATE())
Go
