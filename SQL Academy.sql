--CREATE DATABASE Academy
--GO
--USE Academy


CREATE TABLE Departments
(
	Id INT PRIMARY KEY IDENTITY,
	Financing MONEY NOT NULL  DEFAULT(0),
	[Name] NVARCHAR(100) NOT NULL,

	CONSTRAINT CK_Departments_Financing CHECK(Financing >=0),
    CONSTRAINT CK_Departments_Name CHECK([Name] != ' '),
	CONSTRAINT UQ_Departments_Name  UNIQUE([Name]),
	
)


CREATE TABLE Faculties
(
	Id INT PRIMARY KEY IDENTITY,
	[Name] NVARCHAR(100) NOT NULL,
	Dean nvarchar(10) NOT NULL, 


	CONSTRAINT CK_Faculties_Name CHECK([NAME] != ' '),
	CONSTRAINT UQ_Faculties_Name UNIQUE([Name]),
	CONSTRAINT CK_Faculties_Dean CHECK([Dean] != ' '),
)



CREATE TABLE Groups
(
   Id INT PRIMARY KEY IDENTITY,
   [Name] NVARCHAR(50) NOT NULL  UNIQUE,
   [Year] INT NOT NULL ,
   Rating INT NOT NULL CHECK(Rating BETWEEN 0 and 5),
  
   CONSTRAINT CK_Groups_Year CHECK([Year]>0 AND [Year] <= 5),
   CONSTRAINT CK_Groups_Name CHECK([Name] != ' '),
   CONSTRAINT UQ_Groups_Name UNIQUE([Name]),
   
   
)


CREATE TABLE Teachers
(
	Id INT PRIMARY KEY IDENTITY,
	[Name] NVARCHAR(100) NOT NULL ,
	Surname NVARCHAR(100) NOT NULL ,
	Salary MONEY NOT NULL,
	Position NVARCHAR(50) NOT NULL ,
	EmploymentDate DATE NOT NULL CHECK(EmploymentDate > '01.01.1990') ,
	IsAssistant BIT NOT NULL DEFAULT (0),
	IsProfessor BIT NOT NULL DEFAULT (0),
	Premium MONEY NOT NULL DEFAULT (0),
	 

	CONSTRAINT CK_Teachers_Name CHECK([NAME] != ' '),
	CONSTRAINT CK_Teachers_Surname CHECK(Surname != ' ') ,
	CONSTRAINT CK_Teachers_Position CHECK(Position != ' ') ,
	CONSTRAINT CK_Teachers_Salary CHECK(Salary>=0),
	CONSTRAINT CK_Teachers_Premium CHECK(Premium>0),
)

   
INSERT INTO Departments (Financing, [Name]) VALUES ('$47310.22', 'Java');
INSERT INTO Departments (Financing, [Name]) VALUES ('$31680.44', 'C++');
INSERT INTO Departments (Financing, [Name]) VALUES ('$41680.44', 'C#');
INSERT INTO Departments (Financing, [Name]) VALUES ('$12310.22', 'Photoshop');
INSERT INTO Departments (Financing, [Name]) VALUES ('$8680.44', 'Gravit Designer');
INSERT INTO Departments (Financing, [Name]) VALUES ('$11680.44', 'Autodesk SketchBook');
INSERT INTO Departments (Financing, [Name]) VALUES ('$28310.22', 'Cybersecurity');
INSERT INTO Departments (Financing, [Name]) VALUES ('$27680.44', 'Networks');
INSERT INTO Departments (Financing, [Name]) VALUES ('$21680.44', 'Administration')



INSERT INTO Faculties ([Name], Dean) VALUES ('Software Development', 'Ginsburn');
INSERT INTO Faculties ([Name], Dean) VALUES ('Computer Graphics and Design', 'Devinson');
INSERT INTO Faculties ([Name], Dean) VALUES ('Networks and Cybersecurity', 'Uilery');



insert into Groups ([Name], Rating, [Year]) values ('group 1', 2, 1);
insert into Groups ([Name], Rating, [Year]) values ('group 2', 2, 2);
insert into Groups ([Name], Rating, [Year]) values ('group 3', 2, 3);
insert into Groups ([Name], Rating, [Year]) values ('group 4', 0, 2);
insert into Groups ([Name], Rating, [Year]) values ('group 5', 5, 5);
insert into Groups ([Name], Rating, [Year]) values ('group 6', 1, 1);
insert into Groups ([Name], Rating, [Year]) values ('group 7', 4, 3);
insert into Groups ([Name], Rating, [Year]) values ('group 8', 1, 2);
insert into Groups ([Name], Rating, [Year]) values ('group 9', 2, 3);
insert into Groups ([Name], Rating, [Year]) values ('group 10', 1, 3);
insert into Groups ([Name], Rating, [Year]) values ('group 11', 0, 5);
insert into Groups ([Name], Rating, [Year]) values ('group 12', 4, 5);

insert into Teachers ([Name], Surname, Salary, Position, EmploymentDate, IsAssistant, IsProfessor, Premium) values ('Dorise', 'Franckton', '$6000', 'Stajer', '7/19/2012', 'true', 'true', '$200');
insert into Teachers ([Name], Surname, Salary, Position, EmploymentDate, IsAssistant, IsProfessor, Premium) values ('Joellyn', 'Brannon', '$6000', 'Aspirant', '1/4/2007', 'true', 'true', '$600');
insert into Teachers ([Name], Surname, Salary, Position, EmploymentDate, IsAssistant, IsProfessor, Premium) values ('Janis', 'Golsworthy', '$4000', 'Assistent', '4/28/2019', 'false', 'true', '$600');
insert into Teachers ([Name], Surname, Salary, Position, EmploymentDate, IsAssistant, IsProfessor, Premium) values ('Antonie', 'Artis', '$6000', 'Aspirant', '3/25/2002', 'false', 'false', '$200');
insert into Teachers ([Name], Surname, Salary, Position, EmploymentDate, IsAssistant, IsProfessor, Premium) values ('Gawen', 'McBryde', '$2000', 'Professor', '2/12/2007', 'true', 'true', '$300');
insert into Teachers ([Name], Surname, Salary, Position, EmploymentDate, IsAssistant, IsProfessor, Premium) values ('Raimondo', 'Hirjak', '$3000', 'Assistent', '4/2/1993', 'false', 'false', '$700');
insert into Teachers ([Name], Surname, Salary, Position, EmploymentDate, IsAssistant, IsProfessor, Premium) values ('Russell', 'Reavey', '$4000', 'Aspirant', '8/19/1999', 'false', 'false', '$500');
insert into Teachers ([Name], Surname, Salary, Position, EmploymentDate, IsAssistant, IsProfessor, Premium) values ('Milissent', 'Simonian', '$6000', 'Assistent', '7/22/2011', 'true', 'false', '$400');
insert into Teachers ([Name], Surname, Salary, Position, EmploymentDate, IsAssistant, IsProfessor, Premium) values ('Bryant', 'O''Shields', '$2000', 'Dozent', '12/8/1996', 'false', 'true', '$300');
insert into Teachers ([Name], Surname, Salary, Position, EmploymentDate, IsAssistant, IsProfessor, Premium) values ('Merry', 'Findlow', '$6000', 'Professor', '6/4/1990', 'true', 'true', '$700');
insert into Teachers ([Name], Surname, Salary, Position, EmploymentDate, IsAssistant, IsProfessor, Premium) values ('Shaylynn', 'Littlekit', '$2000', 'Assistent', '5/22/2010', 'false', 'true', '$400');
insert into Teachers ([Name], Surname, Salary, Position, EmploymentDate, IsAssistant, IsProfessor, Premium) values ('Urbanus', 'Andriveau', '$7000', 'Assistent', '8/6/1993', 'false', 'false', '$300');
insert into Teachers ([Name], Surname, Salary, Position, EmploymentDate, IsAssistant, IsProfessor, Premium) values ('Gwendolin', 'Syddon', '$3000', 'Assistent', '9/21/1995', 'true', 'true', '$600');
insert into Teachers ([Name], Surname, Salary, Position, EmploymentDate, IsAssistant, IsProfessor, Premium) values ('Aharon', 'Dalby', '$2000', 'Stajer', '12/28/1995', 'false', 'false', '$500');
insert into Teachers ([Name], Surname, Salary, Position, EmploymentDate, IsAssistant, IsProfessor, Premium) values ('Frank', 'Fegan', '$4000', 'Stajer', '7/2/2000', 'true', 'false', '$400');
insert into Teachers ([Name], Surname, Salary, Position, EmploymentDate, IsAssistant, IsProfessor, Premium) values ('Aluin', 'O'' Shea', '$7000', 'Student', '11/21/1990', 'false', 'false', '$700');
insert into Teachers ([Name], Surname, Salary, Position, EmploymentDate, IsAssistant, IsProfessor, Premium) values ('Alecia', 'Blonden', '$6000', 'Student', '11/11/2017', 'true', 'false', '$300');
insert into Teachers ([Name], Surname, Salary, Position, EmploymentDate, IsAssistant, IsProfessor, Premium) values ('Claribel', 'Stevenson', '$2000', 'Professor', '6/17/2003', 'false', 'true', '$400');
insert into Teachers ([Name], Surname, Salary, Position, EmploymentDate, IsAssistant, IsProfessor, Premium) values ('Nicko', 'Fenney', '$4000', 'Assistent', '10/6/1994', 'false', 'false', '$400');
insert into Teachers ([Name], Surname, Salary, Position, EmploymentDate, IsAssistant, IsProfessor, Premium) values ('Yves', 'Shervil', '$7000', 'Student', '8/15/2009', 'false', 'true', '$400');
insert into Teachers ([Name], Surname, Salary, Position, EmploymentDate, IsAssistant, IsProfessor, Premium) values ('Thibaud', 'Catterall', '$2000', 'Student', '1/26/2012', 'false', 'false', '$200');
insert into Teachers ([Name], Surname, Salary, Position, EmploymentDate, IsAssistant, IsProfessor, Premium) values ('Louisette', 'Dovinson', '$5000', 'Student', '6/3/1992', 'true', 'false', '$600');
insert into Teachers ([Name], Surname, Salary, Position, EmploymentDate, IsAssistant, IsProfessor, Premium) values ('Lila', 'Gantzman', '$6000', 'Stajer', '8/11/2013', 'false', 'true', '$700');
insert into Teachers ([Name], Surname, Salary, Position, EmploymentDate, IsAssistant, IsProfessor, Premium) values ('Gertrud', 'Tootin', '$5000', 'Stajer', '10/27/1990', 'true', 'true', '$500');
insert into Teachers ([Name], Surname, Salary, Position, EmploymentDate, IsAssistant, IsProfessor, Premium) values ('Mariele', 'Waker', '$5000', 'Dozent', '5/24/1996', 'true', 'true', '$700');
insert into Teachers ([Name], Surname, Salary, Position, EmploymentDate, IsAssistant, IsProfessor, Premium) values ('Javier', 'Bunclark', '$7000', 'Aspirant', '12/27/1997', 'false', 'true', '$500');
insert into Teachers ([Name], Surname, Salary, Position, EmploymentDate, IsAssistant, IsProfessor, Premium) values ('Patricio', 'Aberdalgy', '$7000', 'Stajer', '3/1/2018', 'true', 'true', '$700');
insert into Teachers ([Name], Surname, Salary, Position, EmploymentDate, IsAssistant, IsProfessor, Premium) values ('Teodora', 'Kimm', '$4000', 'Assistent', '8/28/2008', 'true', 'true', '$200');
insert into Teachers ([Name], Surname, Salary, Position, EmploymentDate, IsAssistant, IsProfessor, Premium) values ('Etta', 'O''Doherty', '$6000', 'Stajer', '5/13/1992', 'false', 'true', '$300');
insert into Teachers ([Name], Surname, Salary, Position, EmploymentDate, IsAssistant, IsProfessor, Premium) values ('Aveline', 'Ervine', '$5000', 'Professor', '5/23/2019', 'true', 'false', '$700');
insert into Teachers ([Name], Surname, Salary, Position, EmploymentDate, IsAssistant, IsProfessor, Premium) values ('Maddy', 'Skepper', '$3000', 'Student', '2/20/2007', 'true', 'true', '$300');
insert into Teachers ([Name], Surname, Salary, Position, EmploymentDate, IsAssistant, IsProfessor, Premium) values ('Flem', 'Pepon', '$6000', 'Professor', '12/22/1994', 'false', 'true', '$700');
insert into Teachers ([Name], Surname, Salary, Position, EmploymentDate, IsAssistant, IsProfessor, Premium) values ('Floris', 'Dalrymple', '$7000', 'Aspirant', '5/21/1999', 'false', 'true', '$600');
insert into Teachers ([Name], Surname, Salary, Position, EmploymentDate, IsAssistant, IsProfessor, Premium) values ('Hildagard', 'Coleby', '$6000', 'Student', '12/17/2019', 'true', 'true', '$700');
insert into Teachers ([Name], Surname, Salary, Position, EmploymentDate, IsAssistant, IsProfessor, Premium) values ('Lenka', 'Spratt', '$2000', 'Stajer', '4/12/2000', 'false', 'false', '$500');
insert into Teachers ([Name], Surname, Salary, Position, EmploymentDate, IsAssistant, IsProfessor, Premium) values ('Janessa', 'Zoppo', '$6000', 'Dozent', '11/6/1999', 'false', 'true', '$500');
insert into Teachers ([Name], Surname, Salary, Position, EmploymentDate, IsAssistant, IsProfessor, Premium) values ('Marla', 'Burkwood', '$3000', 'Aspirant', '1/15/1992', 'false', 'true', '$400');
insert into Teachers ([Name], Surname, Salary, Position, EmploymentDate, IsAssistant, IsProfessor, Premium) values ('Hugues', 'Duckerin', '$3000', 'Dozent', '12/11/1999', 'true', 'false', '$200');
insert into Teachers ([Name], Surname, Salary, Position, EmploymentDate, IsAssistant, IsProfessor, Premium) values ('Erhart', 'Pletts', '$7000', 'Professor', '9/22/2003', 'false', 'true', '$700');
insert into Teachers ([Name], Surname, Salary, Position, EmploymentDate, IsAssistant, IsProfessor, Premium) values ('Darryl', 'Wakelin', '$4000', 'Stajer', '9/26/1995', 'false', 'true', '$600');
insert into Teachers ([Name], Surname, Salary, Position, EmploymentDate, IsAssistant, IsProfessor, Premium) values ('Cesaro', 'Alexandrou', '$3000', 'Stajer', '11/11/1994', 'true', 'true', '$600');




--Задания
--1. Вывести таблицу кафедр, но расположить ее поля в обратном порядке.

select * from Departments
order by Departments.id DESC

--2. Вывести названия групп и их рейтинги, используя в качестве названий выводимых полей “Group Name” и “Group Rating” соответственно.

select Groups.Name 'Group Name' , Groups.Rating 'Group Rating' FROM Groups

--3. Вывести для преподавателей их фамилию, процент ставки по отношению к надбавке и процент ставки по отношению к зарплате 
--(сумма ставки и надбавки).

select Teachers.Surname, 
Teachers.Salary, Teachers.Premium,
Premium / Salary * 100,
Salary / (Salary + Premium) * 100
FROM Teachers

--4. Вывести таблицу факультетов в виде одного поля в следующем формате: “The dean of faculty [faculty] is [dean].”.

select 'The dean of faculty' + Faculties.Name + 'is' + Faculties.Dean from Faculties

--5. Вывести фамилии преподавателей, которые являются профессорами и ставка которых превышает 1050.

select Teachers.Surname FROM Teachers
WHERE Teachers.IsProfessor = 'true' and Teachers.Salary > 1050;

--6. Вывести названия кафедр, фонд финансирования которых меньше 11000 или больше 25000.

select Departments.Name from Departments
WHERE Departments.Financing < 11000 OR Departments.Financing > 25000

--7. Вывести названия факультетов кроме факультета “Software Development”.

SELECT [Name] FROM Faculties WHERE [Name] != 'Software Development';

--8. Вывести фамилии и должности преподавателей, которые не являются профессорами.

select Teachers.Surname, Teachers.Position FROM Teachers
WHERE Teachers.IsProfessor = 'false'

--9. Вывести фамилии, должности, ставки и надбавки ассистентов, у которых надбавка в диапазоне от 160 до 550.

select Teachers.Surname, Teachers.Position, Teachers.Salary, Teachers.Premium FROM Teachers
WHERE Teachers.IsAssistant = 'true' and Teachers.Premium BETWEEN 160 AND 550 

--10.Вывести фамилии и ставки ассистентов.

select Teachers.Name, Teachers.Salary FROM Teachers
WHERE Teachers.IsAssistant = 'true'

--11.Вывести фамилии и должности преподавателей, которые были приняты на работу до 01.01.2000.

select Teachers.Surname, Teachers.Position FROM Teachers
WHERE Teachers.EmploymentDate < '01.01.2000'













