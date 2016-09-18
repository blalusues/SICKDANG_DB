USE MASICKDANG

Create Table Users 
(
	UserID VarChar(25) Not Null, --���̵�
	Password VarChar(100) Not Null, --��й�ȣ
	JoinDate DateTime Default GetDate() --��������
	Primary Key(UserID)
)
Go


USE MASICKDANG

Create Table Reviews 
(
	ReviewNo Int Identity(1,1) Not Null, --������ȣ
	SHOPNO Int Not Null, --�Ĵ��ȣ 
	UserID VarChar(25), --����
	Rating TinyInt Not Null, --����
	Comments VarChar(3850), --����
	AddDate SmallDateTime
		Default(GetDate()), --�ۼ���
	Foreign Key(ShopNo)
		References SHOP(ShopNo), --�ܷ�Ű
	Primary Key(ReviewNo, ShopNo), --�⺻Ű	
	Check(0 <= Rating),
	Check(Rating <= 5)
) 	
Go

Insert Into Reviews Values(1,'������' ,3,'���', GETDATE())
Go
Insert Into Reviews Values(1,'Ź����' ,5,'���� ���־��', GETDATE())
Go
Insert Into Reviews Values(1,'����' ,4,'������ ���� �� �ҿ������� �ְ�', GETDATE())
Go
