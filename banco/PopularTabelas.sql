 -- ========= ALIMENTANDO TABELA DE HOTEL [ OK ]
    

--	=== HOTEL 1
INSERT INTO trabalhoowl.Hotel values
 	(default, '111', 'Alameda Hotel' , 400.00, 6000.00, '2005-05-01' , 'São Paulo' , 'São Paulo' ,
	'Brasil', 2112, 'Rua Augusta', 150, 10, 25, 28, 'S', 'S', 'Hotel', 'Familia');


--	=== HOTEL 2
INSERT INTO trabalhoowl.Hotel values
 	(default, '222', 'Hotel Villge', 300 , 50000.00, '2007-06-01' , 'Xingura' , 'Pará' ,
	'Brasil', 301, 'Rua Guajajaras', 300, 15, 25, 30, 's', 'n', 'hotel', 'Possui PET');


--	=== HOTEL 3
INSERT INTO trabalhoowl.Hotel values
 	(default, '333', 'Aguas Hotel' , 500, 30000.00, '2008-01-01' , 'Santos' , 'São Paulo' ,
	'Brasil', 23343, 'Avenida Charlie Brown Jr.', 150, 20, 50, 70, 's', 's', 'Pousada', 'Ferias');


--	=== HOTEL 4
INSERT INTO trabalhoowl.Hotel values
 	(default , '444', 'Alaska Hotel' , 400, 90000.00, '2008-02-01' , 'Salvador' , 'Bahia' ,
	'Brasil', 3434, 'Avenida Sete de Setembro', 360, 20, 100, 116, 1, 1, 'Hotel', 'Familiar');


--	=== HOTEL 5
INSERT INTO trabalhoowl.Hotel values
 	(default, '555', 'Amazonas Hotel', 135, 10000.00, '2008-02-05' , 'Belém' , 'Pará',
	'Brasil', 5576, 'Avenida Tamandaré', 100, 7, 17, 24, 1, 1, 'Hotel', 'Possui PET');


-- ========= ALIMENTANDO TABELA DE ESPACO_DE_EVENTOS [ ok ]
INSERT INTO trabalhoowl.espaco_de_eventos values 
    (1, 30, 'n', 2),
	(2, 15, 'n', 1),
	(3, 50, 'n', 3),
	(4, 10, 'n', 1),
	(5, 10, 'n', 1);

insert into trabalhoowl.estacionamento values(
	1,10,20),
	(2,10,20),
	(3,10,20),
	(4,10,20),
	(5,10,20);
	
INSERT INTO trabalhoowl.cliente values(
    '32957005085','216615094','Caio da Silva','7799999999','dasilva@gmail.com','2012-06-24','2002-06-24','Rua da Silva','366','Salvador','BA','Brasil'),
    ('60094692017','351684906','Ste da Silva','7799999999','dasilvinha@gmail.com','2022-06-24','2002-06-24','Rua de Guaianases','646','São Paulo','SP','Brasil'),
    ('68364499033','457833051','Tha de Jesus','7799999999','thatha@gmail.com','2022-12-24','2002-06-24','Rua de Itaquera','886','São Paulo','SP','Brasil'),
    ('03223975020','147900451','Chico da Silva','7799999999','chick@gmail.com','20212-06-24','2002-06-24','Rua de Xinguara','786','Xinguara','PA','Brasil'),
    ('82706373008','176863539','Gi Ara Pag','7799999999','Aran@gmail.com','2019-06-24','2002-06-24','Rua Americana','986','Americana','SP','Brasil'),
    ('92374639010','250625556','Gi Ma','7799999999','gigi@gmail.com','2018-06-24','2002-06-24','Rua Gru','856','Gru','SP','Brasil'); 
    
insert into trabalhoowl.cliente values(
	'11111111111','11111111','JunJunJun','12345690','jun@usp.br','2020-09-01','2003-04-12','Rua Japão','666','Tokyo','SP','Brasil'),
	('22222222222','22222222','Alois Santos','098766543321','lili@yahoo.us','2019-11-21','2004-09-12','Rua Sol','000','Xinguara','PA','Brasil'),
	('33333333333','33333333','Chico','9870657843','chicur@usp.br','2019-11-21','2002-09-11','Rua Lua','123','Quata','SP','Brasil');



INSERT INTO trabalhoowl.Programa_de_Fidelidade values(
    '32957005085',50,500),
    ('68364499033',11,110),
    ('60094692017',2,20),
    ('03223975020',3,30),
    ('82706373008',1,7),
    ('92374639010',3,9);

insert into trabalhoowl.quarto values
    (110,'suite','ocupado','n','2022-12-02',1,1,1),
    (201,'economico','livre','n','2022-12-10',1,2,1),
    (102,'suite','livre','s','2022-12-16',1,1,1),
    (103,'suite','livre','s','2022-12-15',1,2,1),
    (202,'economico','ocupado','n','2022-12-06',1,0,1),
 --Outro hotel
    (11,'suite','ocupado','n','2022-12-02',1,0,2),
    (21,'economico','livre','s','2022-12-10',1,2,2),
    (23,'economico','livre','s','2022-12-16',1,1,2),
    (13,'suite','livre','s','2022-12-15',1,0,2),
    (22,'economico','ocupado','n','2022-12-06',1,2,2);

INSERT INTO trabalhoowl.Reserva values(
    default, '2022-12-15','2022-12-21',2000,'T',001,101,32957005085);
   
INSERT INTO trabalhoowl.vaga VALUES 
    (1, 'A', 'Ocupado', 'FASD64', 1, '11111111111',1), 
    (2, 'B', 'Disponivel', 'OPOE34', 2, '22222222222',2),
    (3, 'C', 'Disponivel', 'CPIF35', 3, '33333333333',3),
    (4,'C','Ocupado','KILD98',1,'32957005085',1);

insert into trabalhoowl.funcionario values(
	'79433278981','Gerente','Steps','1998-05-06','juliasteps@grace.usp.br',10000.27,'M','C','Rua PET', null);

insert into trabalhoowl.funcionario values(
	'90902992011','Gerente','Ste','1999-08-12','tete@ssi.br',15000.27,'M','C','Rua SSI', null);

insert into trabalhoowl.funcionario values(
	'96325412011','Faxineiro','Manuel Gomes','1986-05-19','canetaAzul@azulcaneta.br',1250.00,'M','CLT','Rua da Rua',null),
	('96325419811','recepcionista','Fabio','1997-01-27','fabio@gmail.com',1400.00,'H','Estágio','Rua dos bobos',null),
	('15204478621','Segurança','Lucas','1995-08-29','lulu@hotmail.com',1900.00,'H','CLT','Rua dos Bixos',null);

insert into trabalhoowl.funcionario values(
	'71601116055','Gerente','Furcas','1990-12-12','furcas@usp.br',5000.00,'M','CLT','Rua Um',null),
	('04918653090','Gerente','Renault','2002-04-27','renault@renault@usp.br',3000.00,'M','CLT','Rua Dois', null);

insert into trabalhoowl.setor values(
	'Infraestrutura','79433278981',1,'São Paulo',1),
	('Criação','90902992011',2,'São Paulo',1),
	('Limpeza','71601116055',3,'São Paulo',1),
	('TI','04918653090',4,'Campinas',1);

