create database LIVRO;
use LIVRO;

create table if not exists Genero (ID int not null,
                                   Nome varchar(60) not null, 
                                   primary key (ID)); 
                                  
select * from Genero; 
                                  

create table if not exists Livro_has_Genero (ISBN char(17) not null,
											 ID int not null); 
                                  
                                  
select * from Livro_has_Genero;


create table if not exists Exemplar(ISBN char(17) not null, 
                                    ID int not null,
                                    Situacao ENUM("troca","empréstimo","doação") not null,
                                    Estado_do_livro ENUM("novo","seminovo","velho") not null); 
                                    
select * from Exemplar;


create table if not exists Mensagens ( ID_MENSAGENS int not null,
									   Texto varchar (200) not null,
									   REMETENTE varchar (120) not null,
									   DESTINATARIO varchar (120) not null, 
									   DATA_ENVIO datetime not null,
									   primary key (ID_MENSAGENS) );
                                        
                                               
select * from Mensagens;
                                  
create table if not exists Autor( ID int,
								  NOME char(60),
								  primary key( id));
                                  
select * from Autor;
  
create table if not exists Usuario (ID_USUARIO int not null,
                                      NOME varchar (45) not null,
								      NICKNAME varchar (45) not null,
                                      EMAIL varchar (70) not null,
                                      SENHA varchar (20) not null, 
                                      DATA_NASC datetime not null,
                                      primary key (ID_USUARIO) );
                                   
select * from Usuario;
							
  
  
create table if not exists Livro ( ISBN char(17) not null,
                                   TITULO varchar (60) not null,
								   EDITORA varchar (60) not null,
                                   VOLUME varchar (60) not null,
                                   EDICAO varchar (60) not null, 
                                   DESCRIÇÃO VARCHAR(1000) not null,
                                   primary key (ISBN) );
                                   
select * from Livro;
                                   
create table if not exists Livro_has_Autor( ISBN  varchar(17) not null,
                                            Autor_ID int not null,
                                            primary key(ISBN));
                                            
                                              
select * from Livro_has_Autor;

create table if not exists Pontos_Ref( ID_endereco int not null,
                                       ponto_ref varchar(100) not null,
									   cidade varchar(50) not null,
                                       estado varchar(50) not null,
                                       zona varchar(50) not null,
                                       usuario_id int not null,
                                       primary key (ID_endereco));
                                       
select* from Pontos_Ref;

insert into Pontos_Ref(ID_Endereco, ponto_ref, cidade, estado,zona, usuario_id)
values (1524,'Carrefour','São Paulo','SP', 'Zona Norte', 001),
       (1522,'Extra','São Paulo','SP', 'Zona Sul', 002),
       (1527,'Ourinhos','São Paulo','SP', 'Zona Norte', 003),
       (1521,'Shopping D','São Paulo','SP', 'Zona Oeste', 004),
       (1529,'Pão de Açucar','São Paulo','SP', 'Zona Norte', 005);
       
#Update from Pontos_Ref
#set ponto_ref = 'Escolha do usuário',
#    cidade = 'Escolha do usuário',
#    estado = 'Escolha do usuário',
#    zona = 'Escolha do usuário',
#    usuario_id = 'Escolha do usuário'
#where ID_Endereco = Escolha do usuário;

#Delete from Pontos_Ref
#where ID_Endereco = 'Escolha do usuário';
#      ponto_ref = 'Escolha do usuário';
#      cidade = 'Escolha do usuário';
#      estado = 'Escolha do usuário';
#      zona = 'Escolha do usuário';
#      usuario_id = 'Escolha do usuário';

                               
                                   
insert into Genero (ID, Nome)
values (1,'biografia'),
       (2,'Fantasia'),
       (3,'Ficção'),
       (4,'Ficção Científica'), 
	   (5,'Aventura'),
	   (6,'Drama'), 
       (7,'Romance'),
       (8,'Suspense'),
       (9,'Horror'),
       (10,'Escolar'),
       (11,'Literatura Brasileira'),
       (12,'Infanto-Juvenil'), 
       (13,'Auto-ajuda'),
       (14,'Poesia'),
       (15,'Policial'),
       (16,'Psicologia'),
       (17,'Humor'),
       (18,'Religião'),
       (19,'Turismo'),
       (20,'Filosofia'),
       (21,'Diversos'),
       (22,'Arte');
       
#Update from Genero
#set Nome = 'Escolha do usuário';
#where ID = Escolha do usuário;

#Delete from Exemplar 
#where ID = 'Escolha do usuário'
#      Nome = 'Escolha do usuário';

insert into Livro_has_Genero (ISBN,ID) 
values ('978-1-42334-425-4', 1),
       ('978-2-73246-938-6', 2),
       ('978-9-13216-166-7', 3),
       ('978-8-50109-858-0', 4),
       ('978-8-58057-534-7', 5),
       ('978-2-12345-456-7', 6),
	   ('978-7-12569-458-7', 7),
       ('875-6-85472-415-8', 8),
       ('854-1-68952-845-7', 9),
       ('547-7-75236-748-4', 10);
       
#Update from Livro_has_Genero
#set ID = 'Escolha do usuário'
#where ISBN = Escolha do usuário;

#Delete from Exemplar 
#where ISBN = 'Escolha do usuário'
#      ID = 'Escolha do usuário';


insert into Exemplar(ISBN,ID,Situacao, Estado_do_livro)
values ('978-1-42334-425-4', 1, "troca", "seminovo"),
       ('978-2-73246-938-6', 2, "troca", "seminovo"),
       ('978-9-13216-166-7', 3, "troca", "seminovo"),
       ('978-8-50109-858-0', 4, "troca", "seminovo"),
       ('978-8-58057-534-7', 5, "troca", "seminovo"),
       ('978-2-12345-456-7', 6, "troca", "seminovo"),
	   ('978-7-12569-458-7', 7, "troca", "seminovo"),
       ('875-6-85472-415-8', 8, "troca", "seminovo"),
       ('854-1-68952-845-7', 9, "troca", "seminovo"),
       ('547-7-75236-748-4', 10, "troca", "seminovo");

#Update from Exemplar 
#set ID = 'Escolha do usuário',
#    Situacao = 'Escolha do usuário',
#    Estado_do_livro = 'Escolha do usuário'
#where ISBN = Escolha do usuário;

#Delete from Exemplar 
#where ID = 'Escolha do usuário';
#      Situacao = 'Escolha do usuário';
#      Estado_do_livro = 'Escolha do usuário';
#      ISBN = Escolha do usuário;

insert into Autor (id, nome)
values(123, 'John Green'),
	  (453, 'Stephanie Perkins'),
      (678, 'Jennifer E Smith'),
      (120, 'Michelle Hodkin'),
      (974, 'Isabela Freitas'),
      (154, 'Isa G'),
      (098, 'Jenna Evans Welch'),
      (432, 'Jennifer Niven'),
      (768, 'C.J. Tudor'),
      (012, 'Ray Bradbury');
      
#update Autor
#set   nome = 'Escolha do usuário'
#where id = 'Escolha do usuário';

#delete Autor
#      nome = 'Escolha do usuário'
#where id = 'Escolha do usuário';

insert into Livro_has_Autor (ISBN, Autor_id)
values ('978-1-42334-425-4',123),
	   ('978-2-73246-938-6',453),
       ('978-9-13216-166-7',678),
       ('978-8-50109-858-0',120),
       ('978-8-58057-534-7',974),
       ('978-2-12345-456-7',154),
       ('978-7-12569-458-7',098),
       ('875-6-85472-415-8',432),
       ('854-1-68952-845-7',768),
       ('547-7-75236-748-4',012);
       
#update Livro_has_Autor
#set   Autor_id = 'Escolha do usuário'
#where ISBN = 'Escolha do usuário';

#delete from Livro_has_Autor
#where Autor_id = 'Escolha do usuário'
#      ISBN = 'Escolha do usuário';

insert into Mensagens(ID_MENSAGENS, Texto, REMETENTE, DESTINATARIO, DATA_ENVIO)
values (100,'eae',001,005,'2019-02-25'),
	   (101,'oi gatinha miau quero seu livro',005,002,'2019-02-25'),
       (102,'quero tal livro',003,002,'2019-02-25');
       
#update Mensagens
#set Texto = 'Escolha do usuário',
#    REMETENTE = 'Escolha do usuário',
#    DESTINATARIO = 'Escolha do usuário'
#    DATA_ENVIO = 'Escolha do usuário'
#where ID_MENSAGENS = 'Escolha do usuário';

#delete from Mensagens
#where Texto = 'Escolha do usuário'
#      REMETENTE = 'Escolha do usuário',
#      DESTINATARIO = 'Escolha do usuário'
#      DATA_ENVIO = 'Escolha do usuário'
#      ID_MENSAGENS = 'Escolha do usuário';

insert into Usuario(ID_USUARIO, NOME, NICKNAME, EMAIL, SENHA, DATA_NASC)
values (001,'Julia Vitoria','@Julinha2000','julinhaplayplay1@gmail.com','sunndg687','2002-08-29'),
	   (002,'Camila Tarifa','@Camila_ta','mikatarifa@gmail.com','45j5f','2005-03-30'),
       (003,'Vitor Luis','@Vitorifsp','vitorluisbarretto@gmail.com','aghduujmn','2007-09-23'),
       (004,'Natalia Panighel','@Panigyaruu_','nataliapanighel@gmail.com','yuiomghj','1998-08-07'),
       (005,'Livia Oliveira','@LiviaOliveira155124','liviaoliveira@gmail.com','hsau987','1995-05-12'),
       (006,'Kaiky Matsumoto','@Matsumotu_', 'kaiky123@gmail.com','123456a','2001-03-15');
                                   
#update Usuario
#set NOME = 'Escolha do usuário',
#    NICKNAME = 'Escolha do usuário',
#    EMAIL = 'Escolha do usuário',
#    SENHA = 'Escolha do usuário'
#    DATA_NASC = 'Escolha do usuário'
#where ID_USUARIO = 'Escolha do usuário';

#delete from Usuario
#where NOME = 'Escolha do usuário'
#      NICKNAME = 'Escolha do usuário'
#      EMAIL = 'Escolha do usuário'
#      SENHA = 'Escolha do usuário'
#      DATA_NASC = 'Escolha do usuário'
#      ID_USUARIO = 'Escolha do usuário';

insert into Livro(ISBN, TITULO, EDITORA, VOLUME, EDICAO)
values (978-1-42334-425-4,'Cidades de papel', 'Intrínseca','único','2ª Edição'),
	   (978-2-73246-938-6,'Lola e o Garoto da casa ao Lado','Novo Conceito','único','1ª Edição'),
       (978-9-13216-166-7,'A Probabilidade EstatÍstica do amor à primeira Vista','Galera','único','2ª Edição'),
       (978-8-50109-858-0,'A Desconstrução de Mara Dyer','Galera','1','2ª Edição'),
       (978-8-58057-534-7,'Não se apega não','Intrínseca','1','4ª Edição'),
       (978-2-12345-456-7,'Uma história entre nós','Benvirá','3','3ª Edição'),
       (978-7-12569-458-7,'Amor & Gelato','Intrínseca','9','1ª Edição'),
       (875-6-85472-415-8,'Por lugares incríveis','Seguinte','único','1ª Edição'),
       (854-1-68952-845-7,'O Homem de Giz','Intrínseca','único','2ª Edição'),
       (547-7-75236-748-4,'Fahrenheit 451','Biblioteca Azul','8','5ª Edição');
       
#update Livro 
#set TITULO = 'Escolha do usuário',
#    EDITORA = 'Escolha do usuário',
#    VOLUME = 'Escolha do usuário',
#    EDICAO = 'Escolha do usuário'
#where ISBN = 'Escolha do usuário';

#delete from Livro #where ISBN = 'Escolha do usuário';
#where ISBN = 'Escolha do usuário'
#      TITULO = 'Escolha do usuário'
#      EDITORA= 'Escolha do usuário'
#      VOLUME = 'Escolha do usuário'
#      EDICAO = 'Escolha do usuário';

  
  drop database LIVRO;
