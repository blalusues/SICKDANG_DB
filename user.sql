USE MASICKDANG;


Create Table dbo.USERS
(
	CustomerID Int Identity(1,1) Not Null, 
	UserID VarChar(25) Not Null, 
	NickName VarChar(25) Not Null, 
	[Password] VarChar(100) Not Null, 
	Sex VarChar(2) Not Null, 
	BirthYear VarChar(4) Not Null,
	BirthMonth VarChar(2)  Not Null, 
	BirthDay VarChar(2)  Not Null,
	EmailAddress VarChar(50) Not Null, 
	JoinDate DateTime Default GetDate(),
	Primary Key(CustomerID, UserID)
)

Insert Into USERS Values('testId', 'Å×½ºÆ®', 'testPassword', 'W', 1988, 08, 21, 'ddd@ddd.dd', GetDate())  
Insert Into USERS Values('testId1', 'Å×½ºÆ®1', 'testPassword1', 'W', 1988, 08, 21, 'ddd@ddd.dd', GetDate())  


Create Table dbo.REVIEWS 
(
	ReviewNo Int Identity(1,1) Not Null, 
	SHOPNO Int Not Null, 
	UserName VarChar(25) Not Null, 
	Rating TinyInt Not Null, 
	Comments VarChar(3850), 
	AddDate SmallDateTime
		Default(GetDate()), 
	Foreign Key(ShopNo)
		References SHOP(ShopNo), 
	Primary Key(ReviewNo, ShopNo), 
	Check(0 <= Rating),
	Check(Rating <= 5)
) 	


Insert Into REVIEWS Values(1,'ÀÌÀ¯Èñ' ,3,'½î½î', GETDATE())
Insert Into REVIEWS Values(1,'Å¹³ª·¡' ,5,'¿ÏÀü ¸ÀÀÖ¾î¿ä', GETDATE())
Insert Into REVIEWS Values(1,'°­¸°' ,4,'¸ÔÀ»°Ô ¾øÀ» ¶© ¼Ò¿À¹äÁýÀÌ ÃÖ°í', GETDATE())

