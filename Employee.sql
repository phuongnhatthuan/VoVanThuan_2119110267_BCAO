drop table Employee_2119110267
go
create table Employee_2119110267(
IdEmployee int,
Name nvarchar(255),
DateBirth DATE, 
Gender nvarchar(50),
PlaceBirth nvarchar(50),
IdDepartment int,
)
go

insert into Employee_2119110267 values (55612,'Tran Van Em','10/05/2001','Nam','Ha Noi',1)
insert into Employee_2119110267 values (55713,'Nguyen Van Phong','05/01/1999','Nam','TP.HCM',2)
insert into Employee_2119110267 values (55814,'Vo Hoang Yen','07/01/1997','Nu','Gia Lai',3)
insert into Employee_2119110267 values (55915,'Ngo Nguyet Lan','09/01/1996','Nu','Long An',1)
insert into Employee_2119110267 values (56016,'Dang Van Phuc ','07/01/2001','Nam','Tây Ninh',2)
go
select * from Employee_2119110267

drop table Department_2119110267
go
create table Department_2119110267 (
IdDepartment int,
Name nvarchar(255),
)
go
insert into Department_2119110267 values (1,N'Công nghệ thông tin')
insert into Department_2119110267 values (2,N'Kế toán')
insert into Department_2119110267 values (3,N'Kiểm soát nội bộ')

select * from Department_2119110267

select E.IdEmployee, E.Name, D.Name from Employee E , Department D where E.IdDepartment = D.IdDepartment

--------------
go
create Proc selectEmployee_2119110267
	as
	begin
	select * from Employee_2119110267
	end
	drop proc selectEmployee
	exec selectEmployee_2119110267

go
create proc ThemDepartment_2119110267
@IdEmployee int,
@Name nvarchar(255),
@DateBirth DATE, 
@Gender nvarchar(50),
@PlaceBirth nvarchar(50),
@IdDepartment int
as
begin
     insert Employee_2119110267(IdEmployee,Name,DateBirth,Gender,PlaceBirth,IdDepartment) values(@IdEmployee,@Name,@DateBirth,@Gender,@PlaceBirth,@IdDepartment)
end
go

create proc SuaDepartment_2119110267
@IdEmployee int,
@Name nvarchar(255),
@DateBirth DATE, 
@Gender nvarchar(50),
@PlaceBirth nvarchar(50),
@IdDepartment int
as
begin
     update Employee_2119110267
	 set
	     Name = @Name,
		 DateBirth = @DateBirth,
		 Gender = @Gender,
		 PlaceBirth = @PlaceBirth,
		 IdDepartment = @IdDepartment
	where IdEmployee = @IdEmployee
end
go

create proc XoaDepartment_2119110267
@IdEmployee int,
@Name nvarchar(255),
@DateBirth DATE, 
@Gender nvarchar(50),
@PlaceBirth nvarchar(50),
@IdDepartment int
as
begin

     delete Employee_2119110267 where IdEmployee = @IdEmployee

end
go

