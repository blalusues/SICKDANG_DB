USE MASICKDANG


Create Table dbo.Users 
(
	CustomerID Int Primary Key, --회원번호
	UserID VarChar(25) Not Null, --아이디
	NickName VarChar(25) Not Null, --닉네임
	[Password] VarChar(100) Not Null, --비밀번호
	Sex VarChar(2) Not Null, --성별(M/W)
	BirthYear VarChar(4) Not Null, --년
	BirthMonth VarChar(2)  Not Null, --월
	BirthDay VarChar(2)  Not Null,--일
	EmailAddress VarChar(50) Not Null, --이메일
	JoinDate DateTime Default GetDate() --가입일자
)
Go


USE MASICKDANG

Create Table dbo.Reviews 
(
	ReviewNo Int Identity(1,1) Not Null, --고유번호
	SHOPNO Int Not Null, --식당번호 
	UserName VarChar(25) Not Null, --유저
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
