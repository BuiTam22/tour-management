CREATE DATABASE tour_management
use tour_management

 CREATE TABLE tours(
	id INT NOT NULL IDENTITY,
	title varchar(255) not null,
	code varchar(10),
	images varchar(max),
	price int,
	discount int,
	infomation varchar(max),
	schedule varchar(max),
	timeStart datetime null,
	stock int,
	status varchar(20),
	possition int,
	slug varchar(255) not null,
	deleted bit,
	deletedAt datetime null,
	createAt datetime null,
	updateAt datetime null,
	PRIMARY KEY(id)
 )

EXEC sp_rename 'tours.possition', 'position', 'COLUMN';
EXEC sp_rename 'tours.createAt', 'createdAt', 'COLUMN';
EXEC sp_rename 'tours.updateAt', 'updatedAt', 'COLUMN';

--Update lại toàn bộ các trường có kiểu varchar(n) thành nvarchar(n)
alter table tours
alter column slug nvarchar(255) 

