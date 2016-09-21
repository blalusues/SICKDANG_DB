USE MASICKDANG


Create Table dbo.Users 
(
	CustomerID Int Primary Key, --ȸ����ȣ
	UserID VarChar(25) Not Null, --���̵�
	NickName VarChar(25) Not Null, --�г���
	[Password] VarChar(100) Not Null, --��й�ȣ
	Sex VarChar(2) Not Null, --����(M/W)
	BirthYear VarChar(4) Not Null, --��
	BirthMonth VarChar(2)  Not Null, --��
	BirthDay VarChar(2)  Not Null,--��
	EmailAddress VarChar(50) Not Null, --�̸���
	JoinDate DateTime Default GetDate() --��������
)
Go


USE MASICKDANG

Create Table dbo.Reviews 
(
	ReviewNo Int Identity(1,1) Not Null, --������ȣ
	SHOPNO Int Not Null, --�Ĵ��ȣ 
	UserName VarChar(25) Not Null, --����
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
