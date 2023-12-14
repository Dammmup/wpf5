
create table author (
	id int identity primary key,
  	fio nvarchar(100) not null,
  	bdate datetime
)

insert into author (fio, bdate) values ('Ninnetta Tanfield', '1995-08-11');
insert into author (fio, bdate) values ('Aveline Brackley', '1976-08-13');
insert into author (fio, bdate) values ('Prue Fevers', '1956-09-02');
insert into author (fio, bdate) values ('Cherie Tinwell', '1965-01-01');
insert into author (fio, bdate) values ('Brear Widdocks', '1953-12-25');
insert into author (fio, bdate) values ('Katuscha Statter', '1979-07-09');
insert into author (fio, bdate) values ('Salomi Norledge', '1984-10-06');
insert into author (fio, bdate) values ('Geri Domerq', '1961-08-24');
insert into author (fio, bdate) values ('Florinda Harker', '1955-05-04');
insert into author (fio, bdate) values ('Wells Battye', '1958-06-12');
insert into author (fio, bdate) values ('Darwin Atwood', '1990-05-21');
insert into author (fio, bdate) values ('Tina Siege', '1960-05-29');
insert into author (fio, bdate) values ('Uriel Cheater', '1982-03-04');
insert into author (fio, bdate) values ('Braden Barnwell', '1989-07-19');
insert into author (fio, bdate) values ('Cynthie MacGarvey', '1973-04-27');
insert into author (fio, bdate) values ('Brock Kegan', '1963-02-14');
insert into author (fio, bdate) values ('Doris Garms', '1957-10-14');
insert into author (fio, bdate) values ('Bealle Mullis', '1955-03-31');
insert into author (fio, bdate) values ('Jose Warby', '1968-12-24');
insert into author (fio, bdate) values ('Merci Steanyng', '1990-08-03');
insert into author (fio, bdate) values ('Ros Harries', '1993-05-19');
insert into author (fio, bdate) values ('Avis Greystock', '2000-03-24');
insert into author (fio, bdate) values ('Onofredo Dyson', '1961-07-11');
insert into author (fio, bdate) values ('Millicent Kinzel', '1995-11-28');
insert into author (fio, bdate) values ('Kris Whiffin', '1972-10-07');

create procedure pAddAuthor
@fio nvarchar(100),
@bdate datetime
as
insert into author
values(@fio,@bdate)


create table book (
	id int identity primary key,
  	bookName nvarchar(100) not null,
  	authorId int foreign key references author(id),
  	publicationYear datetime ,
  	isReturn bit default 0
)

insert into book (bookName, authorId, publicationYear) values ('Bytecard', 16, '2012-12-24');
insert into book (bookName, authorId, publicationYear) values ('Biodex', 3, '1991-12-20');
insert into book (bookName, authorId, publicationYear) values ('Veribet', 23, '1992-09-02');
insert into book (bookName, authorId, publicationYear) values ('Rank', 2, '2006-01-23');
insert into book (bookName, authorId, publicationYear) values ('Treeflex', 12, '2010-08-01');
insert into book (bookName, authorId, publicationYear) values ('Konklab', 12, '2006-09-06');
insert into book (bookName, authorId, publicationYear) values ('Latlux', 9, '2009-06-03');
insert into book (bookName, authorId, publicationYear) values ('Fix San', 6, '2001-05-28');
insert into book (bookName, authorId, publicationYear) values ('Flowdesk', 25, '2005-03-03');
insert into book (bookName, authorId, publicationYear) values ('Holdlamis', 2, '2011-07-23');
insert into book (bookName, authorId, publicationYear) values ('Daltfresh', 20, '2011-11-13');
insert into book (bookName, authorId, publicationYear) values ('Sonair', 19, '1997-06-12');
insert into book (bookName, authorId, publicationYear) values ('Latlux', 25, '1993-02-15');
insert into book (bookName, authorId, publicationYear) values ('Flexidy', 24, '2017-08-28');
insert into book (bookName, authorId, publicationYear) values ('Alphazap', 3, '2021-05-18');
insert into book (bookName, authorId, publicationYear) values ('Aerified', 17, '2014-02-25');
insert into book (bookName, authorId, publicationYear) values ('Y-find', 21, '2017-06-02');
insert into book (bookName, authorId, publicationYear) values ('Gembucket', 9, '2016-08-24');
insert into book (bookName, authorId, publicationYear) values ('Tres-Zap', 4, '1991-03-05');
insert into book (bookName, authorId, publicationYear) values ('Prodder', 3, '2016-07-12');
insert into book (bookName, authorId, publicationYear) values ('Job', 10, '2014-08-17');
insert into book (bookName, authorId, publicationYear) values ('Zontrax', 4, '2002-04-02');
insert into book (bookName, authorId, publicationYear) values ('Lotstring', 20, '1996-04-07');
insert into book (bookName, authorId, publicationYear) values ('Pannier', 8, '2017-03-18');
insert into book (bookName, authorId, publicationYear) values ('Sonair', 4, '1996-11-29');



create table reader (
	id int identity PRIMARY key,
  	fio nvarchar(100) not null,
  	bdate datetime not null,
  	phone nvarchar(20) not null,
  	address nvarchar(100) not null
)

insert into reader (fio, bdate, phone, address) values ('Wayne Kellaway', '2006-02-05', '323-628-8558', '556 Canary Court');
insert into reader (fio, bdate, phone, address) values ('Esma Hotson', '1994-01-13', '145-809-0865', '4257 Pankratz Trail');
insert into reader (fio, bdate, phone, address) values ('Bonnibelle Trippett', '2007-02-27', '573-825-6972', '82 Longview Trail');
insert into reader (fio, bdate, phone, address) values ('Ricky Cordon', '1992-08-27', '404-748-5013', '716 Petterle Circle');
insert into reader (fio, bdate, phone, address) values ('Baron True', '1998-12-12', '558-276-0074', '13101 Larry Park');
insert into reader (fio, bdate, phone, address) values ('Prudi Malling', '2005-05-03', '717-464-7204', '3 Prairie Rose Street');
insert into reader (fio, bdate, phone, address) values ('Ofella Cotman', '1992-12-18', '596-386-9180', '8 Upham Place');
insert into reader (fio, bdate, phone, address) values ('La verne Sedgebeer', '1986-06-21', '698-689-3428', '764 Continental Lane');
insert into reader (fio, bdate, phone, address) values ('Ladonna Chastang', '1990-09-04', '355-946-2816', '8 Cody Park');
insert into reader (fio, bdate, phone, address) values ('Ruthe Cordaroy', '1980-08-23', '832-157-1188', '7 Stuart Terrace');
insert into reader (fio, bdate, phone, address) values ('Weider Liepmann', '2009-11-23', '626-665-0970', '89941 4th Hill');
insert into reader (fio, bdate, phone, address) values ('Nichol Sedgeman', '2010-12-29', '413-583-8552', '038 Heffernan Crossing');
insert into reader (fio, bdate, phone, address) values ('Sheena Borge', '1997-01-31', '928-143-0808', '77 Havey Court');
insert into reader (fio, bdate, phone, address) values ('Hurley Morrant', '2007-10-15', '353-116-4533', '2 Luster Drive');
insert into reader (fio, bdate, phone, address) values ('Alyce Swinden', '2010-02-27', '414-466-1713', '9421 Union Terrace');
insert into reader (fio, bdate, phone, address) values ('Cyndy Powles', '2006-12-19', '625-985-2221', '1823 Vidon Crossing');
insert into reader (fio, bdate, phone, address) values ('Ardys Longhi', '1990-08-16', '117-481-3508', '3 Mariners Cove Place');
insert into reader (fio, bdate, phone, address) values ('Odo Trengrove', '1991-04-12', '939-660-1687', '0361 Lakewood Gardens Crossing');
insert into reader (fio, bdate, phone, address) values ('Elene Duckhouse', '1990-10-24', '317-891-1023', '3 Village Green Court');
insert into reader (fio, bdate, phone, address) values ('Dav Connealy', '1987-11-23', '593-188-7709', '0 Schiller Avenue');
insert into reader (fio, bdate, phone, address) values ('Ardisj McKinty', '1984-04-11', '877-732-7903', '4990 Oxford Place');
insert into reader (fio, bdate, phone, address) values ('Ellswerth Joll', '1989-11-19', '564-980-3496', '49 Becker Crossing');
insert into reader (fio, bdate, phone, address) values ('Hadley Charette', '2001-09-12', '314-253-8626', '4 Hoffman Street');
insert into reader (fio, bdate, phone, address) values ('Yetty Ebbotts', '1998-02-13', '835-882-4129', '16 Division Terrace');
insert into reader (fio, bdate, phone, address) values ('Suzette Shercliff', '1998-10-24', '776-838-0144', '89 Anderson Trail');


create table orders (
	id int identity primary key,
  	bookId int foreign key references book(id),
  	readerId int foreign key references reader(id),
  	startDate datetime ,
  	endDate datetime,
  	isBlackList bit default 0
)


insert into orders (startDate, bookId, readerId) values ('2021-07-13', 24, 4);
insert into orders (startDate, bookId, readerId) values ('2017-05-08', 1, 8);
insert into orders (startDate, bookId, readerId) values ('2017-10-23', 15, 13);
insert into orders (startDate, bookId, readerId) values ('2016-07-19', 16, 21);
insert into orders (startDate, bookId, readerId) values ('2012-01-15', 20, 15);
insert into orders (startDate, bookId, readerId) values ('2016-12-19', 7, 12);
insert into orders (startDate, bookId, readerId) values ('2012-08-07', 20, 9);
insert into orders (startDate, bookId, readerId) values ('2014-01-07', 14, 21);
insert into orders (startDate, bookId, readerId) values ('2015-08-04', 24, 22);
insert into orders (startDate, bookId, readerId) values ('2020-12-06', 17, 9);
insert into orders (startDate, bookId, readerId) values ('2013-07-05', 20, 14);
insert into orders (startDate, bookId, readerId) values ('2015-07-10', 23, 11);
insert into orders (startDate, bookId, readerId) values ('2021-10-05', 8, 12);
insert into orders (startDate, bookId, readerId) values ('2023-11-13', 7, 22);
insert into orders (startDate, bookId, readerId) values ('2015-04-24', 19, 18);
insert into orders (startDate, bookId, readerId) values ('2016-06-28', 12, 22);
insert into orders (startDate, bookId, readerId) values ('2018-10-20', 1, 4);
insert into orders (startDate, bookId, readerId) values ('2021-04-08', 25, 21);
insert into orders (startDate, bookId, readerId) values ('2015-04-18', 8, 17);
insert into orders (startDate, bookId, readerId) values ('2016-10-20', 14, 9);
insert into orders (startDate, bookId, readerId) values ('2016-11-25', 6, 12);
insert into orders (startDate, bookId, readerId) values ('2016-09-25', 7, 17);
insert into orders (startDate, bookId, readerId) values ('2016-04-30', 7, 8);
insert into orders (startDate, bookId, readerId) values ('2022-06-09', 20, 4);
insert into orders (startDate, bookId, readerId) values ('2020-06-06', 24, 9);

insert into orders (startDate, bookId, readerId) values ('2023-01-05', 13, 8);
insert into orders (startDate, bookId, readerId) values ('2022-11-17', 19, 2);
insert into orders (startDate, bookId, readerId) values ('2022-02-17', 3, 10);
insert into orders (startDate, bookId, readerId) values ('2023-10-09', 25, 8);
insert into orders (startDate, bookId, readerId) values ('2022-05-28', 12, 24);
insert into orders (startDate, bookId, readerId) values ('2023-12-25', 20, 18);
insert into orders (startDate, bookId, readerId) values ('2022-06-12', 8, 16);
insert into orders (startDate, bookId, readerId) values ('2023-10-25', 9, 5);
insert into orders (startDate, bookId, readerId) values ('2022-06-23', 8, 16);
insert into orders (startDate, bookId, readerId) values ('2023-11-12', 1, 22);
insert into orders (startDate, bookId, readerId) values ('2023-10-02', 5, 24);
insert into orders (startDate, bookId, readerId) values ('2022-02-20', 22, 3);
insert into orders (startDate, bookId, readerId) values ('2022-03-28', 7, 4);
insert into orders (startDate, bookId, readerId) values ('2022-08-25', 3, 2);
insert into orders (startDate, bookId, readerId) values ('2022-08-10', 9, 13);
insert into orders (startDate, bookId, readerId) values ('2022-05-12', 8, 16);
insert into orders (startDate, bookId, readerId) values ('2023-07-28', 1, 12);
insert into orders (startDate, bookId, readerId) values ('2023-06-13', 9, 24);
insert into orders (startDate, bookId, readerId) values ('2023-10-21', 3, 8);
insert into orders (startDate, bookId, readerId) values ('2023-09-02', 1, 23);
insert into orders (startDate, bookId, readerId) values ('2023-01-21', 20, 7);
insert into orders (startDate, bookId, readerId) values ('2022-01-14', 10, 4);
insert into orders (startDate, bookId, readerId) values ('2022-08-25', 3, 8);
insert into orders (startDate, bookId, readerId) values ('2022-10-02', 15, 19);
insert into orders (startDate, bookId, readerId) values ('2022-03-05', 7, 12);




create procedure pAddReader
@fio nvarchar(100),
@bdate datetime,
@phone nvarchar(20),
@adress nvarchar(100),
@result int output
as
declare @isExist int
set @isExist = (select count(*) from reader
								where fio like @fio and phone like @phone)
if @isExist !=0
	set @result = 0
	else 
	begin
		insert into reader
		values (@fio,@bdate,@phone,@adress)
		set @result = 1
end

update book
set isreturn = 1
where id % 3 = 2


update orders
set isBlackList = 1
where id % 10 = 0


update orders
set endDate = dateadd(day, 30, startdate)

CREATE PROCEDURE AuthorizeReader
    @ReaderName NVARCHAR(100),
    @ReaderPhone NVARCHAR(20)
AS
BEGIN
    SET NOCOUNT ON;

    IF EXISTS (SELECT 1 FROM Reader WHERE fio = @ReaderName AND phone = @ReaderPhone)
        SELECT 1; 
    ELSE
        SELECT 0;
END




CREATE PROCEDURE AuthorizeAuthor1
    @AuthorFio NVARCHAR(100),
    @AuthorBdate NVARCHAR(20)
AS
BEGIN
    SET NOCOUNT ON;

    IF EXISTS (SELECT 1 FROM Author WHERE fio = @AuthorFio AND bdate = @AuthorBdate)
        SELECT 1; 
    ELSE
        SELECT 0; 
END

-- Процедура для добавления заказа
CREATE PROCEDURE AddOrder
    @ReaderID INT,
    @BookID INT
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO orders (bookId, readerId, startDate, endDate, isBlackList)
    VALUES (@BookID, @ReaderID, GETDATE(), NULL, 0);
END

-- Процедура для добавления новой книги
CREATE PROCEDURE AddBook
    @BookName NVARCHAR(100),
    @AuthorID INT,
    @PublicationYear DATETIME
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO book (bookName, authorId, publicationYear, isReturn)
    VALUES (@BookName, @AuthorID, @PublicationYear, 0);
END


select * from reader






