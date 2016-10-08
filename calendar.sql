
USE MASICKDANG

CREATE TABLE dbo.CALENDAR
(
	YMD char(8) NOT NULL,
	YYYY char(4) NOT NULL,
	MM char(2) NOT NULL,
	DD char(2) NOT NULL,
	DAYNO tinyint NULL,
	HOLIDAY varchar(20) NULL,
	PRIMARY KEY CLUSTERED 
(
 YMD ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] 
 

declare @day char(8)
   , @yyyy char(4)
   , @mm char(2)
   , @dd char(2)
   , @weekno varchar(50)
   , @i int = 0;


  WHILE (@i <  2192)
  BEGIN
   select @day = CONVERT(CHAR(8), dateadd(dd,+@i,convert(datetime,'20160101')), 112), @weekno =DATEPART(W,dateadd(dd,+@i,convert(datetime,'20120101')))
   insert into dbo.CALENDAR
    (ymd, yyyy, mm, dd, dayno)
    values
    (@day, substring(@day, 1,4), substring(@day, 5,2), substring(@day, 7,2), @weekno)
   select @i = @i + 1
  END


update dbo.CALENDAR set HOLIDAY = '신정' where ymd = '20160101'
update dbo.CALENDAR set HOLIDAY = '설날연휴' where ymd = '20160207'
update dbo.CALENDAR set HOLIDAY = '설날' where ymd = '20160208'
update dbo.CALENDAR set HOLIDAY = '설날연휴' where ymd = '20160209'
update dbo.CALENDAR set HOLIDAY = '대체휴일' where ymd = '20160210'
update dbo.CALENDAR set HOLIDAY = '삼일절' where ymd = '20160301'
update dbo.CALENDAR set HOLIDAY = '국회의원선거' where ymd = '20160413'
update dbo.CALENDAR set HOLIDAY = '어린이날' where ymd = '20160505'
update dbo.CALENDAR set HOLIDAY = '임시공휴일' where ymd = '20160506'
update dbo.CALENDAR set HOLIDAY = '석가탄신일' where ymd = '20160514'
update dbo.CALENDAR set HOLIDAY = '현충일' where ymd = '20160606'
update dbo.CALENDAR set HOLIDAY = '광복절' where ymd = '20160815'
update dbo.CALENDAR set HOLIDAY = '추석연휴' where ymd = '20160914'
update dbo.CALENDAR set HOLIDAY = '추석' where ymd = '20160915'
update dbo.CALENDAR set HOLIDAY = '추석연휴' where ymd = '20160916'
update dbo.CALENDAR set HOLIDAY = '개천절' where ymd = '20161003'
update dbo.CALENDAR set HOLIDAY = '한글날' where ymd = '20161009'
update dbo.CALENDAR set HOLIDAY = '크리스마스' where ymd = '20161225'
