
drop table DepartmentInfo;
drop table CollegeInfo;


CREATE TABLE [dbo].[CollegeInfo]
(
	[Id] varchar(15) NOT NULL PRIMARY KEY,
	[Name] varchar(20) NOT NULL
)

CREATE TABLE [dbo].[DepartmentInfo]
(
	[Id] varchar(5) NOT NULL,
	[Name] varchar(200) NOT NULL,
	[CollegeId] varchar(15) foreign key references CollegeInfo(Id)
)

insert into CollegeInfo (Id, Name) values('1', 'CEG');
insert into DepartmentInfo values('1001', 'CS', '1');
insert into DepartmentInfo values('1002', 'IT', '1');


SELECT * from CollegeInfo