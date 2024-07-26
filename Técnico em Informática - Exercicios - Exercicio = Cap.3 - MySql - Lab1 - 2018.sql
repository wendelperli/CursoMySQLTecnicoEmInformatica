/* Exercicio 1  ==>  Cap.3 - MySql - Lab1  */

create database aula;
use aula;

create table animal (
cod_animal int,
nome_animal char(20)
);

alter table animal
add primary key (cod_animal);

describe animal;

insert into animal (cod_animal, nome_animal)
values ('1', 'gato');

insert into animal (cod_animal, nome_animal)
values ('2', 'cachorro');

insert into animal (cod_animal, nome_animal)
values ('3', 'papagaio');

insert into animal (cod_animal, nome_animal)
values ('4', 'passaros');

insert into animal (cod_animal, nome_animal)
values ('5', 'tartaruga');

insert into animal (cod_animal, nome_animal)
values ('6', 'cobra');

insert into animal (cod_animal, nome_animal)
values ('7', 'cavalo');

insert into animal (cod_animal, nome_animal)
values ('8', 'lagarto');

insert into animal (cod_animal, nome_animal)
values ('9', 'elefante');

insert into animal (cod_animal, nome_animal)
values ('10', 'zebra');

select * from animal;

create table funcionarios (
cod_func int,
nome_func char(30),
sal_func decimal(10,2)
);

alter table funcionarios
add primary key (cod_func);

describe funcionarios;

insert into funcionarios (cod_func, nome_func, sal_func)
values ('1', 'Maria Amélia', '1500.23');

insert into funcionarios (cod_func, nome_func, sal_func)
values ('2', 'Angela pereira', '2500.29');

insert into funcionarios (cod_func, nome_func, sal_func)
values ('3', 'Sonia Duarte', '980.23');

insert into funcionarios (cod_func, nome_func, sal_func)
values ('4', 'Paulo Pereira', '325.63');

insert into funcionarios (cod_func, nome_func, sal_func)
values ('5', 'Ruth Rocha', '452.26');

insert into funcionarios (cod_func, nome_func, sal_func)
values ('6', 'Raquel Reguete', '586.59');

insert into funcionarios (cod_func, nome_func, sal_func)
values ('7', 'Sandra Sodré', '458.26');

insert into funcionarios (cod_func, nome_func, sal_func)
values ('8', 'Tãnia Tamara', '875.26');

insert into funcionarios (cod_func, nome_func, sal_func)
values ('9', 'Pedro Paulo Pereira', '2326.25');

insert into funcionarios (cod_func, nome_func, sal_func)
values ('10', 'Geraldo Galhardo', '1253.26');

select * from funcionarios;

create table professor (
cod_prof int,
nome_prof char (30),
sexo_prof char (1),
sal_prof decimal(10,2),
datacad_prof date
);

alter table professor
add primary key (cod_prof);

describe professor;

insert into professor (cod_prof, nome_prof, sexo_prof, sal_prof, datacad_prof)
values ('1', 'Andre Eira', 'M', '2562.23', '2008-01-02');

insert into professor (cod_prof, nome_prof, sexo_prof, sal_prof, datacad_prof)
values ('2', 'Jose Pereira', 'M', '2546.25', '2009-02-02');

insert into professor (cod_prof, nome_prof, sexo_prof, sal_prof, datacad_prof)
values ('3', 'Manoel Beira', 'M', '2584.26', '2010-02-03');

insert into professor (cod_prof, nome_prof, sexo_prof, sal_prof, datacad_prof)
values ('4', 'Antonio Aroeira', 'M', '1526.58', '2010-03-03');

insert into professor (cod_prof, nome_prof, sexo_prof, sal_prof, datacad_prof)
values ('5', 'Valeria Zoeira', 'F', '4526.23', '2010-03-04');
;
insert into professor (cod_prof, nome_prof, sexo_prof, sal_prof, datacad_prof)
values ('6', 'Vagner Amoreira', 'M', '235.26', '2010-04-01');

insert into professor (cod_prof, nome_prof, sexo_prof, sal_prof, datacad_prof)
values ('7', 'Valmor Bananeira', 'M', '125.62', '2011-05-05');

insert into professor (cod_prof, nome_prof, sexo_prof, sal_prof, datacad_prof)
values ('8', 'Arlete Garibeira', 'F', '154.26', '2011-06-06');

insert into professor (cod_prof, nome_prof, sexo_prof, sal_prof, datacad_prof)
values ('9', 'Joanete Macieira', 'F', '1485.25', '2012-07-07');

insert into professor (cod_prof, nome_prof, sexo_prof, sal_prof, datacad_prof)
values ('10', 'Claudete Galopeira', 'F', '2587.13', '2012-08-08');

select * from professor;

/* Exercicio 2 ==> Cap.3 - MySql - Lab2 */ 

create database pedidos_venda;
use pedidos_venda;

create table if not exists produtos  (
codigo_do_produto int auto_increment primary key,
nome_do_produto varchar(50),
codigo_da_unidade_de_medida int,
codigo_da_categoria int,
quantidade_em_estoque float,
quantidade_minima float,
preco_de_custo float,
preco_de_venda float,
caracteristicas_tecnicas longtext
);

create table if not exists unidades (
codigo_da_unidade int auto_increment primary key,
nome_da_unidade varchar(50)
);

insert into unidades (codigo_da_unidade, nome_da_unidade)
value (default, 'PEÇAS');

insert into unidades (codigo_da_unidade, nome_da_unidade)
value (default, 'METROS');

insert into unidades (codigo_da_unidade, nome_da_unidade)
value (default, 'QUILOGRAMAS');

insert into unidades (codigo_da_unidade, nome_da_unidade)
value (default, 'DÚZIAS');

insert into unidades (codigo_da_unidade, nome_da_unidade)
value (default, 'PACOTE');

insert into unidades (codigo_da_unidade, nome_da_unidade)
value (default, 'CAIXA');

select * from unidades;

create table if not exists categoria (
codigo_da_categoria int auto_increment primary key,
nome_da_categoria varchar (50)
);

insert into categoria (codigo_da_categoria, nome_da_categoria)
values (default, 'MOUSE');

insert into categoria (codigo_da_categoria, nome_da_categoria)
values (default, 'PEN-DRIVE');

insert into categoria (codigo_da_categoria, nome_da_categoria)
values (default, 'MONITOR DE VIDEO');

insert into categoria (codigo_da_categoria, nome_da_categoria)
values (default, 'TECLADO');

insert into categoria (codigo_da_categoria, nome_da_categoria)
values (default, 'C.P.U');

insert into categoria (codigo_da_categoria, nome_da_categoria)
values (default, 'CABO DE REDE');

create table if not exists cliente (
id_cliente int,
cpf_do_cliente int (11),
nome_do_cliente varchar (60),
sexo_do_cliente enum ('M', 'F')
);

create table if not exists contatos (
id_cliente_c int,
telefone1 int,
telefone2 int,
email varchar(60)
);


create table if not exists vendedores (
id_vendedor int,
nome_vendedor varchar (60),
sexo enum ('M', 'F')
);

create table if not exists pedidos (
numero_do_pedido int,
codigo_do_cliente int,
codigo_do_vendedor int,
data_da_emissao datetime,
data_de_entrega datetime,
valor_total float,
situacao enum ('P', 'C', 'E'),
observacoes longtext
);

create table if not exists itenspedido (
numero_do_pedido int auto_increment primary key,
numero_item int,
codigo_do_produto int,
quantidade float,
preco_unitario float,
desconto float
);

/* Exercicio 3 ==> Cap.4 - MySql - Lab1 */

create database zoologico;
use zoologico;

create table animais(
cod_animal int,
tipo_animal char (15),
nome_animal char (30),
idade_animal tinyint,
valor_animal decimal(10,2)
);

insert into animais (cod_animal, tipo_animal, nome_animal, idade_animal, valor_animal)
values('1', 'Cachorro', 'Djudi', '3', '300.00');

insert into animais (cod_animal, tipo_animal, nome_animal, idade_animal, valor_animal)
values('2', 'Cachorro', 'Sula', '5', '300.00');

insert into animais (cod_animal, tipo_animal, nome_animal, idade_animal, valor_animal)
values('3', 'Cachorro', 'Sarina', '7', '300.00');

insert into animais (cod_animal, tipo_animal, nome_animal, idade_animal, valor_animal)
values('4', 'Gato', 'Pipa', '2', '500.00');

insert into animais (cod_animal, tipo_animal, nome_animal, idade_animal, valor_animal)
values('5', 'Gato', 'Sarangue', '2', '500.00');

insert into animais (cod_animal, tipo_animal, nome_animal, idade_animal, valor_animal)
values('6', 'Gato', 'Clarences', '1', '500.00');

insert into animais (cod_animal, tipo_animal, nome_animal, idade_animal, valor_animal)
values('7', 'Coruja', 'Agnes', '0', '700.00');

insert into animais (cod_animal, tipo_animal, nome_animal, idade_animal, valor_animal)
values('8', 'Coruja', 'Arabela', '1', '700.00');

insert into animais (cod_animal, tipo_animal, nome_animal, idade_animal, valor_animal)
values('9', 'Sapo', 'Quash', '1', '100.00');

insert into animais (cod_animal, tipo_animal, nome_animal, idade_animal, valor_animal)
values('10', 'Peixe', 'Fish', '0', '100.00');

select * from animais;

select tipo_animal, nome_animal from animais;

select tipo_animal, nome_animal, idade_animal from animais;

select tipo_animal as Tipo, nome_animal as Nome from animais;

select tipo_animal as Tipo, nome_animal as Nome, idade_animal as 'Tempo de Vida' from animais;

select 'ANIMAL DOMESTICO' as 'PROCEDENCIA', tipo_animal as Tipo, nome_animal as nome, idade_animal as 'Tempo de Vida' from animais; 
	      
select tipo_animal as Tipo, valor_animal as 'Valor Original', valor_animal + (valor_animal * 10/100) as 'Valor de Venda' from animais; 
         
select tipo_animal as Tipo, valor_animal as 'Valor Original', valor_animal + (valor_animal * 10/100) as 'Valor de Venda' from animais
group by Tipo;          
 
select cod_animal, tipo_animal as Tipo, nome_animal as Nome, idade_animal as Idade, valor_animal as Valor from animais
where cod_animal in ('5', '6');

/* Exercicio 4 ==> Cap.5 - MySql - Lab1 - Clausula Where  */

CREATE DATABASE FUNCIONARIOS2;
USE FUNCIONARIOS2;
        
        CREATE TABLE BRINQUEDOS(
        
        BRINQ_COD          INT(10),
        BRINQ_NOME         CHAR(50),
        BRINQ_IDADE        TINYINT,
        BRINQ_QTD          INT(10),
        BRINQ_VAL          DECIMAL(10,2)
        
        );

		INSERT INTO BRINQUEDOS(BRINQ_COD, BRINQ_NOME, BRINQ_IDADE, BRINQ_QTD, BRINQ_VAL)
        VALUES(1, 'Amiguinha', 7, 100, 150.00);
        
		INSERT INTO BRINQUEDOS(BRINQ_COD, BRINQ_NOME, BRINQ_IDADE, BRINQ_QTD, BRINQ_VAL)
        VALUES(2, 'Bebe balancinho', 3, 200, 30.00);
        
		INSERT INTO BRINQUEDOS(BRINQ_COD, BRINQ_NOME, BRINQ_IDADE, BRINQ_QTD, BRINQ_VAL)
        VALUES(3, 'Bebe chuveirinho', 3, 50, 25.00);
        
		INSERT INTO BRINQUEDOS(BRINQ_COD, BRINQ_NOME, BRINQ_IDADE, BRINQ_QTD, BRINQ_VAL)
        VALUES(4, 'Bolinha de Sabão', 5, 40, 30.00);
        
        INSERT INTO BRINQUEDOS(BRINQ_COD, BRINQ_NOME, BRINQ_IDADE, BRINQ_QTD, BRINQ_VAL)
        VALUES(5, 'Emília',	2, 70, 60.00);
        
        INSERT INTO BRINQUEDOS(BRINQ_COD, BRINQ_NOME, BRINQ_IDADE, BRINQ_QTD, BRINQ_VAL)
        VALUES(6, 'Hora do Papá', 1, 50, 50.00);
        
        INSERT INTO BRINQUEDOS(BRINQ_COD, BRINQ_NOME, BRINQ_IDADE, BRINQ_QTD, BRINQ_VAL)
        VALUES(7, 'Frutinha Chaveirinho', 2, 30, 20.00);
        
        INSERT INTO BRINQUEDOS(BRINQ_COD, BRINQ_NOME, BRINQ_IDADE, BRINQ_QTD, BRINQ_VAL)
        VALUES(8, 'Banco Imobiliário', 10, 10, 100.00);
        
        INSERT INTO BRINQUEDOS(BRINQ_COD, BRINQ_NOME, BRINQ_IDADE, BRINQ_QTD, BRINQ_VAL)
        VALUES(9, 'Cai não Cai', 3, 15, 35.00);
        
        INSERT INTO BRINQUEDOS(BRINQ_COD, BRINQ_NOME, BRINQ_IDADE, BRINQ_QTD, BRINQ_VAL)
        VALUES(10, 'Cara a Cara', 4, 16, 28.00);
        
        INSERT INTO BRINQUEDOS(BRINQ_COD, BRINQ_NOME, BRINQ_IDADE, BRINQ_QTD, BRINQ_VAL)
        VALUES(11, 'Cilada', 10, 17, 25.00);
        
        INSERT INTO BRINQUEDOS(BRINQ_COD, BRINQ_NOME, BRINQ_IDADE, BRINQ_QTD, BRINQ_VAL)
        VALUES(12, 'Combate', 7, 19, 40.00);
        
        INSERT INTO BRINQUEDOS(BRINQ_COD, BRINQ_NOME, BRINQ_IDADE, BRINQ_QTD, BRINQ_VAL)
        VALUES(13, 'Detetive', 7, 20, 50.00);
        
        INSERT INTO BRINQUEDOS(BRINQ_COD, BRINQ_NOME, BRINQ_IDADE, BRINQ_QTD, BRINQ_VAL)
        VALUES(14, 'A Galinha Magricela', 7, 21, 90.00);
        
        INSERT INTO BRINQUEDOS(BRINQ_COD, BRINQ_NOME, BRINQ_IDADE, BRINQ_QTD, BRINQ_VAL)
        VALUES(15, 'Puxa Puxa Batatinha', 2, 22, 150.00);
        
        INSERT INTO BRINQUEDOS(BRINQ_COD, BRINQ_NOME, BRINQ_IDADE, BRINQ_QTD, BRINQ_VAL)
        VALUES(16, 'Robô Baby',	2, 23, 200.00);
        
        INSERT INTO BRINQUEDOS(BRINQ_COD, BRINQ_NOME, BRINQ_IDADE, BRINQ_QTD, BRINQ_VAL)
        VALUES(17, 'Action Man', 3, 26, 150.00);
        
        INSERT INTO BRINQUEDOS(BRINQ_COD, BRINQ_NOME, BRINQ_IDADE, BRINQ_QTD, BRINQ_VAL)
        VALUES(18, 'Batcicle', 5, 30, 180.00);
        
        INSERT INTO BRINQUEDOS(BRINQ_COD, BRINQ_NOME, BRINQ_IDADE, BRINQ_QTD, BRINQ_VAL)
        VALUES(19, 'Batman', 3,	40,	50.00);
        
        INSERT INTO BRINQUEDOS(BRINQ_COD, BRINQ_NOME, BRINQ_IDADE, BRINQ_QTD, BRINQ_VAL)
        VALUES(20, 'Superman', 4, 50, 50.00);
        
        INSERT INTO BRINQUEDOS(BRINQ_COD, BRINQ_NOME, BRINQ_IDADE, BRINQ_QTD, BRINQ_VAL)
        VALUES(21, 'Maga Patalogica', 4, 66, 100.00);
        
        INSERT INTO BRINQUEDOS(BRINQ_COD, BRINQ_NOME, BRINQ_IDADE, BRINQ_QTD, BRINQ_VAL)
        VALUES(22, 'Paty Gatinha', 3, 88, 20.00);
        
        INSERT INTO BRINQUEDOS(BRINQ_COD, BRINQ_NOME, BRINQ_IDADE, BRINQ_QTD, BRINQ_VAL)
        VALUES(23, 'Goleiro Maluco', 5,	92,	20.00);
        
        INSERT INTO BRINQUEDOS(BRINQ_COD, BRINQ_NOME, BRINQ_IDADE, BRINQ_QTD, BRINQ_VAL)
        VALUES(24, 'Bichinhos do Bebê',	6,	100, 20.00);
        
        INSERT INTO BRINQUEDOS(BRINQ_COD, BRINQ_NOME, BRINQ_IDADE, BRINQ_QTD, BRINQ_VAL)
        VALUES(25, 'Caixa-Encaixa',	7, 200,	35.00);
        
        INSERT INTO BRINQUEDOS(BRINQ_COD, BRINQ_NOME, BRINQ_IDADE, BRINQ_QTD, BRINQ_VAL)
        VALUES(26, 'Guitarrinha do Bebê', 4, 200, 80.00);
        
        INSERT INTO BRINQUEDOS(BRINQ_COD, BRINQ_NOME, BRINQ_IDADE, BRINQ_QTD, BRINQ_VAL)
        VALUES(27, 'Sr.e Sra.Cabeça de Batata',	6, 300, 150.00);                   
        
        INSERT INTO BRINQUEDOS(BRINQ_COD, BRINQ_NOME, BRINQ_IDADE, BRINQ_QTD, BRINQ_VAL)
        VALUES(28, 'Ponteirinho', 4, 100, 50.00);
        
        INSERT INTO BRINQUEDOS(BRINQ_COD, BRINQ_NOME, BRINQ_IDADE, BRINQ_QTD, BRINQ_VAL)
        VALUES(29, 'BateCar', 5, 200, 30.00);
        
        INSERT INTO BRINQUEDOS(BRINQ_COD, BRINQ_NOME, BRINQ_IDADE, BRINQ_QTD, BRINQ_VAL)
        VALUES(30, 'CapotCar', 5, 200, 30.00);

select * from BRINQUEDOS;

update BRINQUEDOS
SET BRINQ_VAL = BRINQ_VAL + 10;

UPDATE BRINQUEDOS
SET BRINQ_VAL = BRINQ_VAL + (BRINQ_VAL * 10 / 100)
WHERE BRINQ_NOME LIKE 'C%';

UPDATE BRINQUEDOS
SET BRINQ_QTD = BRINQ_QTD + 10
WHERE BRINQ_VAL < 50.00;

UPDATE BRINQUEDOS
SET BRINQ_IDADE = BRINQ_IDADE - 1
WHERE BRINQ_NOME LIKE '%Bebê%';

SELECT * FROM BRINQUEDOS
WHERE BRINQ_NOME NOT LIKE 'B%'
ORDER BY BRINQ_NOME;

UPDATE BRINQUEDOS
SET BRINQ_IDADE = BRINQ_IDADE - 1, BRINQ_VAL = BRINQ_VAL + 20.00	
WHERE BRINQ_NOME LIKE '%GATINHA%';

UPDATE BRINQUEDOS
SET BRINQ_VAL = BRINQ_VAL + 5.00
WHERE BRINQ_NOME LIKE '%BATATA%' OR '%BATATINHA%';

SELECT * FROM BRINQUEDOS
WHERE BRINQ_VAL IN ('30', '40', '60');

UPDATE BRINQUEDOS
SET BRINQ_VAL = BRINQ_VAL + 20, BRINQ_QTD = BRINQ_QTD - 5, BRINQ_IDADE = BRINQ_IDADE + 1
WHERE BRINQ_VAL <= 30.00 AND BRINQ_QTD >= 100 AND BRINQ_NOME LIKE 'B%';

select * from BRINQUEDOS;

UPDATE BRINQUEDOS
SET BRINQ_VAL = BRINQ_VAL - (BRINQ_VAL * 10 / 100)
WHERE BRINQ_VAL BETWEEN 100.00 AND 150.00;

SELECT * FROM BRINQUEDOS
WHERE BRINQ_VAL NOT BETWEEN '40' AND '150';

DELETE FROM BRINQUEDOS
WHERE BRINQ_COD = 10;

DELETE FROM BRINQUEDOS
WHERE BRINQ_IDADE >= 10;

SELECT * FROM BRINQUEDOS
WHERE length(brinq_nome) <= 6;

SELECT * FROM BRINQUEDOS
WHERE BRINQ_NOME LIKE '%PAPA' OR BRINQ_NOME LIKE '%GALINHA%';

SELECT * FROM BRINQUEDOS
WHERE BRINQ_IDADE <= 3;

/* Exercicio 5 ==> Exerc1_Capitulo1_ate_Capitulo3_SELECT  */

create database exercicios_select;
use exercicios_select;

CREATE TABLE cliente
(
	COD_CLI	INT(10), 
	NOME_CLI 	VARCHAR(50),
	SEXO_CLI 	CHAR(1), -- M - MASCULINO, F = FEMININO
	IDADE_CLI	INT(3), 
	CIDADE_CLI 	VARCHAR(50),
	ESTADO_CLI 	CHAR(2),
	RENDA_CLI 	DECIMAL(10,2),
	CIVIL_CLI 	CHAR(1), -- C = CASADO, S = SOLTEIRO, D = DIVORCIADO, O = OUTROS
	DTCAD_CLI	DATETIME
);


INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (1 , 'RICARDO MANOEL ', 'M',75,'SÃO PAULO', 'SP', 12000, 'D', '2007/05/07');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (2 , 'MARIA', 'F',45, 'SÃO PAULO', 'SP', 5000, 'S', '2006/03/06');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (3 , 'MARIANA', 'F',18, 'BERZONTE', 'MG', 2000, 'C', '2007/05/15');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (4 , 'ZÉ', 'M',22, 'POUSO ALEGRE', 'MG', 3000, 'C', '2006/12/01');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (5 , 'ANA MARIA', 'F',25, 'POUSO ALEGRE', 'MG', 2303, 'C', '2006/03/21');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (6 , 'CHICO', 'M',32,'CAMPINAS', 'SP', 2302, 'D', '2006/04/11');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (7 , 'TIÃO', 'M',65, 'SOROCABA', 'SP', 3000, 'O', '2006/11/03');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (8 , 'TONHO', 'M', 19,'BERZONTE', 'MG', 5000, 'S', '2007/03/23');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (9 , 'Marcos', 'M',37, 'BERZONTE', 'MG', 3500, 'C', '2006/09/14');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (10 , 'Mario', 'M', 41,'Sorocaba', 'SP', 4000, 's', '2006/12/31');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (11 , 'Thiago', 'M',19, 'BERZONTE', 'MG', 3600, 'D', '2007/09/01');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (12 , 'Paulo', 'M', 24,'Pouso Alegre', 'MG', 5000, 'C', '2006/5/10');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (13 , 'Ana', 'F', 38,'São Paulo', 'SP', 2000, 'C', '2007/04/28');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (14 , 'Estela', 'F',37, 'Sorocaba', 'SP', 1900, 's', '2007/05/14');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (15 , 'Silvia', 'F',26, 'BERZONTE', 'MG', 1500, 'C', '2006/09/18');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (16 , 'Débora Silva', 'F',20, 'Campinas', 'SP', 1500, 'C', '2006/02/27');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (17 , 'Ricardo Casa', 'M',24, 'Mauá', 'SP', 3750, 'S', '2006/02/25');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (18 , 'Eduardo La Silva', 'M',24, 'BERZONTE', 'MG', 1200, 'O', '2006/05/24');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (19 , 'Luciano', 'M',29, 'BERZONTE', 'MG', 2600, 'D', '2007/04/19');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (20 , 'Paulo Santos', 'M', 34,'Pouso Alegre', 'MG', 4000, 'D', '2006/07/16');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (21 , 'Ana Santos Silva', 'F', 28,'São Paulo', 'SP', 1000, 'S', '2006/06/18');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (22 , 'Estela Casa', 'F',27, 'Sorocaba', 'SP', 1800, 'S', '2006/12/19');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (23 , 'Silvia Nogueira', 'F',29, 'BERZONTE', 'MG', 3500, 'C', '2007/02/17');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (24 , 'Joana Silva', 'F',30, 'Campinas', 'SP', 1800, 'C', '2006/09/07');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (25 , 'Manoel Casa', 'M',34, 'Mauá', 'SP', 2750, 'S', '2007/05/09');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (26 , 'Eduardo da Silva', 'M',24, 'BERZONTE', 'MG', 2200, 'S', '2006/06/26');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (27 , 'Thiago Neves', 'M',29, 'BERZONTE', 'MG', 8600, 'D', '2006/03/21');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (28 , 'Paulo Henrique', 'M', 26,'Pouso Alegre', 'MG', 12000, 'C', '2007/04/07');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (29 , 'Ana da Matta', 'F', 78,'São Paulo', 'SP', 6000, 'C', '2006/06/10');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (30 , 'Tatiana Gomes ', 'F',27, 'Sorocaba', 'SP', 2900, 'S', '2006/11/01');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (31 , 'Agnardo Silva ', 'M',41,'SÃO PAULO', 'SP', 16000, 'D', '2006/08/05');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (32 , 'Marcos Casarino ', 'F',33,'SÃO PAULO', 'SP', 16000, 'C', '2006/07/26');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (33 , 'Paulo Silva', 'M', 30,'Pouso Alegre', 'MG', 2000, 'C', '2007/09/15');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (34 , 'Ana Carolina Silva', 'F', 48,'São Paulo', 'SP', 6000, 'C', '2006/08/18');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (35 , 'Rose Casa', 'F',37, 'Sorocaba', 'SP', 2800, 'S', '2006/12/19');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (36 , 'Estela Nogueira', 'F',19, 'BERZONTE', 'MG', 4500, 'C', '2007/08/17');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (37 , 'Joana Silva', 'F',40, 'Campinas', 'SP', 2800, 'C', '2006/09/07');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (38 , 'Manoel Silva', 'M',24, 'Mauá', 'SP', 1750, 'S', '2007/09/05');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (39 , 'Fabio da Silva', 'M',34, 'BERZONTE', 'MG', 3200, 'S', '2006/09/26');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (40 , 'Thiago da Cunha', 'M',39, 'BERZONTE', 'MG', 5600, 'D', '2006/03/21');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (41 , 'Eduardo Henrique', 'M', 16,'Pouso Alegre', 'MG', 13000, 'C', '2007/07/10');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (42 , 'Pablo da Matta', 'F', 28,'São Paulo', 'SP', 5000, 'C', '2006/10/06');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (43 , 'Talita Gomes ', 'F',57, 'Sorocaba', 'SP', 8900, 'S', '2006/12/01');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (44 , 'Bruno Silva ', 'M',61,'SÃO PAULO', 'SP', 13000, 'D', '2006/08/05');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (45 , 'Marcel Gomes ', 'F',53,'SÃO PAULO', 'SP', 13000, 'C', '2006/08/26');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (46 , 'Denilson Gouveia ', 'M',45,'Mauá', 'SP', 8000, 'O','2007/05/12' );
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (47 , 'Adilson Gouveia', 'M',75, 'Campinas', 'SP', 3000, 'C', '2007/03/08');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (48 , 'Marcos Viana', 'M',28, 'BERZONTE', 'MG', 12000, 'O', '2007/10/12');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (49 , 'ZÉ', 'M',32, 'POUSO ALEGRE', 'MG', 13000, 'C', '2006/12/22');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (50 , 'Carolina Dias', 'F',15, 'POUSO ALEGRE', 'MG', 2000, 'C', '2006/09/21');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (51 , 'Valdir Pires', 'M',42,'CAMPINAS', 'SP', 13000, 'O', '2006/04/10');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (52 , 'Benito Andrade', 'M',25, 'SOROCABA', 'SP', 8000, 'O', '2006/11/12');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (53 , 'Jeferson Silva', 'M', 19,'BERZONTE', 'MG', 8000, 'S', '2007/12/23');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (54 , 'Marcelo Matos', 'M',17, 'BERZONTE', 'MG', 3500, 'O', '2007/07/14');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (55 , 'Andreza Maria', 'M', 31,'Mauá', 'SP', 12000, 'C', '2006/12/06');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (56 , 'Silvana Dias', 'M',29, 'BERZONTE', 'MG', 13000, 'C', '2007/01/10');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (57 , 'Paula Mattos', 'M', 24,'Pouso Alegre', 'MG', 13000, 'O', '2006/10/10');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (58 , 'Ana Beatriz', 'F', 48,'São Paulo', 'SP', 12000, 'S', '2007/04/28');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (59 , 'Fabiano Silva', 'F',67, 'Sorocaba', 'SP', 1900, 'S', '2007/05/14');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (60 , 'Sandra Silva', 'F',76, 'BERZONTE', 'MG', 11500, 'C', '2007/10/18');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (61 , 'Joana Dias', 'F',17, 'BERZONTE', 'MG', 13000, 'O', '2006/02/10');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (62 , 'Estela Mattos', 'F', 74,'Pouso Alegre', 'MG', 12000, 'O', '2007/12/10');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (63 , 'Mariana Beatriz', 'F', 58,'Mauá', 'SP', 12000, 'S', '2006/04/28');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (64 , 'Cleiton Silva', 'M',16, 'Sorocaba', 'SP', 13000, 'S', '2006/05/14');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (65 , 'Rodrigo Silva', 'M',36, 'BERZONTE', 'MG', 1900, 'C', '2006/10/18');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (66 , 'João Silva', 'F',27, 'MAUÁ', 'SP', 13000, 'C', '2006/12/02');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (67 , 'Helena Mattos', 'F', 24,'Pouso Alegre', 'MG', 12000, 'S', '2007/12/10');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (68 , 'Milena Beatriz', 'F', 38,'Mauá', 'SP', 12000, 'S', '2006/04/28');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (69 , 'Jonathan Silva', 'M',66, 'SÃO PAULO', 'SP', 13000, 'S', '2007/05/14');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (70 , 'Rodrigo Dias', 'M',16, 'SÃO PAULO', 'SP', 1900, 'C', '2007/10/18');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (71 , 'Richarlison Santos ', 'M',25,'SÃO PAULO', 'SP', 12000, 'C','2007/05/07' );
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (72 , 'Gabriela', 'F',35, 'SÃO PAULO', 'SP', 5000, 'S', '2007/03/05');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (73 , 'Angela', 'F',58, 'BERZONTE', 'MG', 2000, 'O', '2006/05/15');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (74 , 'ZÉ', 'M',32, 'POUSO ALEGRE', 'MG', 3000, 'S', '2007/12/01');
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (75 , 'Ronaldo Lazário', 'M',35, 'São Paulo', 'SP', 13000, 'C', '2007/05/22');

SELECT * FROM cliente;


/* OPERADORES DE COMPARAÇÃO
	< MENOR QUE 
	<= MENOR OU IGUAL A
	> MAIOR QUE 
	>= MAIOR OU IGUAL A 
	= IGUAL A 
	<> DIFERENTE DE  
*/

-- ----------------------------------------------------------------------------------
-- 1.a EXIBIR  TODOS OS CAMPOS DA TABELA CLIENTES DO ESTADO DE SÃO PAULO
select * from cliente
where estado_cli = 'SP';

-- ----------------------------------------------------------------------------------
-- 1.b EXIBIR SOMENTE OS CAMPOS NOME_CLI, CIDADE_CLI, ESTADO_CLI DA TABELA CLIENTE DO ESTADO DE SÃO PAULO
select nome_cli, cidade_cli, estado_cli from cliente
where estado_cli = 'SP';

-- ----------------------------------------------------------------------------------
-- 1.C EXIBIR SOMENTE OS CAMPOS NOME_CLI COM A LEGENDA [NOME DO CLIENTE], CIDADE_CLI COM A LEGENDA  [CIDADE DO CLIENTE], ESTADO_CLI COM A LEGENDA [ESTADO DO CLIENTE] DA TABELA CLIENTE DO ESTADO DE SÃO PAULO
select nome_cli as 'nome do cliente', cidade_cli as 'cidade do cliente', estado_cli as 'estado do cliente' from cliente;

-- ----------------------------------------------------------------------------------
-- 2. EXIBIR OS CLIENTES COM IDADES ACIMA DE 40 ANOS
select * from cliente where idade_cli > '40';

-- ----------------------------------------------------------------------------------
-- 3. EXIBIR OS CLIENTES DA CIDADE DE SOROCABA
select * from cliente
where cidade_cli = 'Sorocaba';

-- ----------------------------------------------------------------------------------
-- 4. EXIBIR OS CLIENTES DO SEXO FEMININO
select *from cliente
where sexo_cli = 'F';

-- ----------------------------------------------------------------------------------
-- 5.EXIBIR OS CLIENTES COM RENDA ACIMA DE 5000
select * from cliente
where renda_cli > '5000';

-- ----------------------------------------------------------------------------------
-- 6.EXIBIR OS CLIENTES COM DATA DE CADASTRO ATÉ 01/01/2007
select * from cliente
where dtcad_cli < '2007-01-01'
order by dtcad_cli desc;

-- ----------------------------------------------------------------------------------
-- 7. EXIBIR OS CLIENTES COM RENDA MENOR OU IGUAL A 3000
select * from cliente
where renda_cli <= '3000';

-- ----------------------------------------------------------------------------------
-- 8. EXIBIR OS CLIENTES COM IDADE ABAIXO DE 18 ANOS
select * from cliente
where idade_cli < '18';

-- ----------------------------------------------------------------------------------
-- 9. EXIBIR OS CLIENTES DO ESTADO DE MINAS GERAIS
select * from cliente
where estado_cli = 'MG';

-- ----------------------------------------------------------------------------------

-- TRABALHANDO COM A INSTRUÇÃO AND

-- 9.a EXIBIR OS CLIENTES FEMININOS, SOLTEIRAS, COM IDADE ACIMA DE 18 E RENDA MAIOR OU IGUAL A 3000
select * from cliente
where sexo_cli = 'F' and civil_cli = 'S' and idade_cli > '18' and renda_cli >= '3000';


-- UTILIZANDO O OPERADOR AND

-- 10. EXIBIR OS CLIENTES DA CIDADE DE SÃO PAULO ACIMA DE 40 ANOS
select * from cliente
where cidade_cli = 'Sao Paulo' and idade_cli > '40';

-- ----------------------------------------------------------------------------------
-- 11. EXIBIR OS CLIENTES DO ESTADO DE SÃO PAULO DO SEXO MASCULINO COM RENDA ACIMA DE 5000
select * from cliente
where estado_cli = 'SP' and sexo_cli = 'M' and renda_cli > '5000';

-- ----------------------------------------------------------------------------------
-- 12.EXIBIR OS CLIENTES FEMININOS DO ESTADO DE MINAS GERAIS COM IDADE ABAIXO DE 40 ANOS
select * from cliente
where sexo_cli = 'F' and estado_cli = 'MG' and idade_cli < '40';


-- ----------------------------------------------------------------------------------
-- 13.EXIBIR OS CLIENTES DA CIDADE DE BERZONTE COM RENDA ACIMA DE 3000
select * from cliente
where cidade_cli = 'Berzonte' and renda_cli > '3000';

-- ----------------------------------------------------------------------------------
-- 14.EXIBIR OS CLIENTES DO ESTADO DE SÃO PAULO QUE NÃO SÃO DA CIDADE DE SÃO PAULO
select * from cliente
where estado_cli != 'SP';

-- ----------------------------------------------------------------------------------
-- 15.EXIBIR OS CLIENTES FEMININOS, SOLTEIROS, DO ESTADO DE SÃO PAULO COM IDADE ABAIXO DE 35
select * from cliente
where sexo_cli = 'F' and civil_cli = 'S' and estado_cli = 'SP' and idade_cli < '35';

-- ----------------------------------------------------------------------------------
-- 16.EXIBIR OS MINEIROS CASADOS COM IDADE ABAIXO DE 40 ANOS E RENDA ACIMA DE 2000
select * from cliente
where civil_cli = 'C' and idade_cli < '40' and renda_cli > '2000';

-- ----------------------------------------------------------------------------------
-- 17.EXIBIR OS CLIENTES DO ESTADO DE SÃO PAULO COM IDADE ENTRE 18 E 50 ANOS
select * from cliente
where estado_cli = 'SP' and idade_cli between '18' and '50';

-- ----------------------------------------------------------------------------------
-- 18.EXIBIR OS CLIENTES DO ESTADO DE SÃO PAULO QUE NÃO TENHAM IDADE ENTRE 18 E 55 ANOS
select * from cliente
where estado_cli = 'SP' and idade_cli not between '18' and '55';

-- ----------------------------------------------------------------------------------
-- 19.EXIBIR OS CLIENTES DO ESTADO DE SÃO PAULO QUE NÃO TENHAM IDADE DE 20, 22, 24 OU 30 ANOS
select * from cliente
where estado_cli = 'SP' and idade_cli not in ('20', '22', '24', '30');

-- ----------------------------------------------------------------------------------
-- 20.EXIBIR OS CLIENTES DO ESTADO DE SÃO PAULO QUE TENHAM IDADE DE 21, 23, 24 OU 33 ANOS
select * from cliente
where estado_cli = 'SP' and idade_cli in ('21', '23', '24', '33');

-- ----------------------------------------------------------------------------------
-- 21.EXIBIR OS CLIENTES DO ESTADO DE SÃO PAULO QUE NÃO TENHAM IDADE DE 15, 19, 27 OU 40 ANOS
select * from cliente
where estado_cli = 'SP' and idade_cli not in ('15', '19', '27', '40');

-- ----------------------------------------------------------------------------------
-- 22.EXIBIR Os CLIENTES QUE TENHAM NOME “RODRIGO DIAS”
select * from cliente
where nome_cli like '%Rodrigo Dias%';

-- ----------------------------------------------------------------------------------
-- 23.EXIBIR Os CLIENTES QUE TENHAM NOME “ZÉ” OU SEJAM DO ESTADO DE SÃO PAULO
select * from cliente
where nome_cli like 'Zé' or estado_cli = 'SP';

-- ----------------------------------------------------------------------------------
-- 24.EXIBIR Os CLIENTES COM DATA DE CADASTRO ATÉ “31/12/2006”
select * from cliente
where dtcad_cli <= '2006-12-31';

-- ----------------------------------------------------------------------------------
-- 25.EXIBIR Os CLIENTES QUE O NOME COMECE COM “MA”
select * from cliente
where nome_cli like 'MA%';

-- ----------------------------------------------------------------------------------
-- 26.EXIBIR Os CLIENTES QUE O NOME COMECE COM “A”
select * from cliente
where nome_cli like 'A%';

-- ----------------------------------------------------------------------------------
-- 26.EXIBIR Os CLIENTES QUE O NOME CONTÉM COM “EL”
select * from cliente
where nome_cli like '%El%';

-- ----------------------------------------------------------------------------------
-- 27.EXIBIR Os CLIENTES QUE O NOME NÃO CONTÉM COM “EL”
select * from cliente
where nome_cli not like '%El%';

-- ----------------------------------------------------------------------------------
-- 28.EXIBIR Os CLIENTES QUE O NOME TERMINA COM “O”
select * from cliente
where nome_cli like '%O';

-- ----------------------------------------------------------------------------------
-- 29.EXIBIR Os CLIENTES QUE CUJO O NOME NÃO TERMINA COM “O”
select * from cliente
where nome_cli not like '%O';

-- ----------------------------------------------------------------------------------
-- 30.EXIBIR Os CLIENTES QUE O NOME TERMINA COM “ELA”
select * from cliente
where nome_cli like '%Ela%';

-- ----------------------------------------------------------------------------------
-- 31.EXIBIR Os CLIENTES QUE O NOME CONTÉM COM “DIAS”
select * from cliente
where nome_cli like '%Dias';

-- ----------------------------------------------------------------------------------
-- 32.EXIBIR Os CLIENTES QUE O NOME COMEÇA COM “JO”
select * from cliente
where nome_cli like 'Jo%';

-- ----------------------------------------------------------------------------------
-- 32.EXIBIR Os CLIENTES QUE O NOME DA CIDADE TERMINA  COM “E”
select * from cliente
where cidade_cli like '%E';

-- ----------------------------------------------------------------------------------
-- 33.EXIBIR Os CLIENTES QUE O NOME DA CIDADE COMEÇA  COM “SORO” E POSSUEM RENDA MAIOR OU IGUAL A 8000
select * from cliente
where cidade_cli like 'Soro%' and renda_cli >= '8000';

-- ----------------------------------------------------------------------------------
-- 33.EXIBIR Os CLIENTES QUE CONTÉM NO NOME “NA” E POSSUEM  DATA DE CADASTRO ATÉ 28/04/2006
select * from cliente
where nome_cli like '%Na%' and dtcad_cli <= '2006-04-28';

-- ----------------------------------------------------------------------------------
-- 34.EXIBIR Os CLIENTES QUE O NOME DA CIDADE COMEÇA  COM “SORO” OU POSSUEM RENDA MAIOR OU IGUAL A 8000
select * from cliente
where cidade_cli like 'Soro%' or renda_cli >= '8000';

-- ----------------------------------------------------------------------------------
-- 35.EXIBIR Os CLIENTES QUE O NOME COMEÇE  COM “RICHARLISON” OU POSSUAM RENDA MENOR OU IGUAL A 8000
select * from cliente
where nome_cli like 'Richarlison%' or renda_cli <= '8000';

-- Exercicio 6 ==> Cap.7 - MySql - Lab1 - Chaves Estrangeiras e Constraints2

create database DB_CDS;
use DB_CDS;

 create table artista (
       cod_art    int(10) not null primary key,
       nome_art   varchar(100) not null unique
       );
       
       
       create table gravadora (
       cod_grav     int(10) not null primary key,
       nome_grav     varchar(50) not null unique
       );
       
       create table categoria (
       cod_cat    int(10) not null primary key,
       nome_cat   varchar(50) not null unique
       );
       
       create table titulo (
       cod_tit          int(10) not null primary key,
       cod_cat          int(10) not null,  -- referente a tabela categoria
       cod_grav         int(10) not null,  -- referente a tabela gravadora
       nome_cd          varchar(110) not null unique,
       val_cd           decimal(10,2) not null,
       qtd_estq         int (10) not null,
       
        FOREIGN KEY (cod_cat)    REFERENCES categoria(cod_cat)
        ON DELETE CASCADE ON UPDATE CASCADE,
        
        FOREIGN KEY (cod_grav)   REFERENCES gravadora(cod_grav) 
        ON DELETE CASCADE ON UPDATE CASCADE
        
       );


-- ----------Artista------------------
         
         
        insert into artista(cod_art, nome_art)
        values (1, 'Marisa Monte');
       
        insert into artista(cod_art, nome_art)
        values (2, 'Gilberto Gil');
        
		insert into artista(cod_art, nome_art)
		values (3, 'Caetano Veloso');
        
		insert into artista(cod_art, nome_art)
        values (4,' Milton Nascimento');
        
		insert into artista(cod_art, nome_art)
        values (5, 'Legião Urbana');
        
		insert into artista(cod_art, nome_art)
        values (6, 'The Beatles');
        
		insert into artista(cod_art, nome_art)
        values (7, 'Rita Lee');
       
       -- ----------------------------------------------------------------------
       
       -- ---------- Gravadora---------------------------------------------------
       
       	insert into gravadora(cod_grav, nome_grav)
        values (1, 'Polygram');
       
		insert into gravadora(cod_grav, nome_grav)
        values (2, 'EMI');
       
		insert into gravadora(cod_grav, nome_grav)
        values (3, 'SomLivre');
       
		insert into gravadora(cod_grav, nome_grav)
        values (4, 'Sony Music');
        
        -- ----------------------------------------------------------------------
        
        -- ----------Categotia---------------------------------------------------
        
        insert into categoria(cod_cat, nome_cat)
        values (1, 'MPB');
        
		insert into categoria(cod_cat, nome_cat)
        values (2, 'Trilha Sonora');
        
		insert into categoria(cod_cat, nome_cat)
        values (3, 'Rock Internacional');
        
		insert into categoria(cod_cat, nome_cat)
        values (4, 'Rock Nacional');
        
        -- ----------------------------------------------------------------------
        
        -- ----------------Titulo------------------------------------------------
        
        insert into titulo(cod_tit, cod_cat, cod_grav, nome_cd, val_cd, qtd_estq)
        values(1, 1, 1, 'Tribalistas', 30, 1500);
       
        insert into titulo(cod_tit, cod_cat, cod_grav, nome_cd, val_cd, qtd_estq)
        values(2, 1, 2, 'Tropicália', 50, 500);
        
        insert into titulo(cod_tit, cod_cat, cod_grav, nome_cd, val_cd, qtd_estq)
        values(3, 1, 1, 'Aquele Abraço', 50, 600);
        
        insert into titulo(cod_tit, cod_cat, cod_grav, nome_cd, val_cd, qtd_estq)
        values(4, 1, 2, 'Refazenda', 60, 1000);
        
        insert into titulo(cod_tit, cod_cat, cod_grav, nome_cd, val_cd, qtd_estq)
        values(5, 1, 3, 'Totalmente Demais', 50, 2000);

        insert into titulo(cod_tit, cod_cat, cod_grav, nome_cd, val_cd, qtd_estq)
        values(6, 1, 3, 'Travessia', 55, 500);
        
        insert into titulo(cod_tit, cod_cat, cod_grav, nome_cd, val_cd, qtd_estq)
        values(7, 1, 2, 'Courage', 30, 200);
        
        insert into titulo(cod_tit, cod_cat, cod_grav, nome_cd, val_cd, qtd_estq)
        values(8, 4, 3,'Legião Urbana', 20, 100);
        
        insert into titulo(cod_tit, cod_cat, cod_grav, nome_cd, val_cd, qtd_estq)
        values(9, 3, 2,'The Beatles', 30, 300);
        
        insert into titulo(cod_tit, cod_cat, cod_grav, nome_cd, val_cd, qtd_estq)
        values(10, 4, 1, 'Rita Lee', 30, 500);


create table cliente (
        cod_cli       int(10)  not null primary key,
        cod_cid       int(10)  not null, -- -------- CHAVE ESTRANGEIRA RELACIONADO A TABELA CIDADE
        nome_cli      varchar(100) not null,
        end_cli       varchar(200) not null, 
        renda_cli     decimal(10,2) not null default 0,
        sexo_cli      enum ('M','F') not null default 'F',
        
          FOREIGN KEY (cod_cid)    REFERENCES cidade(cod_cid)
          ON DELETE CASCADE ON UPDATE CASCADE
          );
        
        
        create table cidade(
        cod_cid       int(10) not null primary key ,
        sigla_est     char(2) not null, -- ------------CHAVE ESTRANGEIRA REFERENCIADO A TABELA ESTADO
        nome_cid      varchar(100),
        
		FOREIGN KEY (sigla_est)    REFERENCES estado(sigla_est)
        ON DELETE CASCADE ON UPDATE CASCADE
        );


       create table estado (
       sigla_est        char(2)    not null primary key,
       nome_est         char(50)   not null unique
       );
       
       create table conjuge(
       cod_cli      int(10)         not null primary key,    -- -- CHAVE ESTRANGEIRA REFERENCIADO A TABELA CLIENTE
       nome_con     varchar(100)    not null,     
       renda_con    decimal(10,2)   not null   default 0,
       sexo_con     enum ('M', 'F') not null   default 'M',
       
		FOREIGN KEY (cod_cli)    REFERENCES cliente(cod_cli)
        ON DELETE CASCADE ON UPDATE CASCADE
       );


 -- ----------Cliente--------------------
        insert into cliente (cod_cli, cod_cid, nome_cli, end_cli, renda_cli, sexo_cli)
        values(1, 1, 'José Nogueira', 'Rua A', 1500.00, 'M');
       
        insert into cliente (cod_cli, cod_cid, nome_cli, end_cli, renda_cli, sexo_cli)
        values(2, 1, 'Angelo Pereira', 'Rua B',	2000.00, 'M');
       
        insert into cliente (cod_cli, cod_cid, nome_cli, end_cli, renda_cli, sexo_cli)
        values(3, 1, 'Além Mar Paranhos', 'Rua C', 1500.00,	'F');
        
        insert into cliente (cod_cli, cod_cid, nome_cli, end_cli, renda_cli, sexo_cli)
        values(4, 1, 'Catarina Souza', 'Rua D',	892.00,	'F');
       
        insert into cliente (cod_cli, cod_cid, nome_cli, end_cli, renda_cli, sexo_cli)
        values(5, 1, 'Vagner Costa', 'Rua E', 950.00, 'M');
       
        insert into cliente (cod_cli, cod_cid, nome_cli, end_cli, renda_cli, sexo_cli)
        values(6, 2, 'Antenor da Costa', 'Rua F', 1582.00, 'M');
       
        insert into cliente (cod_cli, cod_cid, nome_cli, end_cli, renda_cli, sexo_cli)
        values(7, 2, 'Maria Amélia de Souza', 'Rua G', 1152.02, 'F');
       
        insert into cliente (cod_cli, cod_cid, nome_cli, end_cli, renda_cli, sexo_cli)
        values(8, 2, 'Paulo Roberto Silva',	'Rua H', 3250.00, 'M');
       
        insert into cliente (cod_cli, cod_cid, nome_cli, end_cli, renda_cli, sexo_cli)
        values(9, 3, 'Fátima Souza', 'Rua I', 1632.00, 'F');
       
        insert into cliente (cod_cli, cod_cid, nome_cli, end_cli, renda_cli, sexo_cli)
        values(10, 3, 'Joel da Rocha', 'Rua J',	2000.00, 'M');
        
        
     
       
       
       -- ----------Cidade-----------------------------------------
       
        insert into cidade (cod_cid, sigla_est, nome_cid)
        values(1,	'SP', 'São Paulo');	
        
        insert into cidade (cod_cid, sigla_est, nome_cid)
        values(2,	'SP', 'Sorocaba'	);
        
        insert into cidade (cod_cid, sigla_est, nome_cid)
        values(3,	'SP', 'Jundiaí');
        
        insert into cidade (cod_cid, sigla_est, nome_cid)
        values(4,	'SP', 'Americana');
        
        insert into cidade (cod_cid, sigla_est, nome_cid)
        values(5,	'SP', 'Araraquara');
        
        insert into cidade (cod_cid, sigla_est, nome_cid)
        values(6,	'MG', 'Ouro Preto');
        
        insert into cidade (cod_cid, sigla_est, nome_cid)
        values(7,	'RJ', 'Cachoeiro de Itapemirim');
        
        -- --------Estado-----------------------------------------
        
        insert into estado (sigla_est, nome_est)
        values('SP', 'São Paulo');
        
        insert into estado (sigla_est, nome_est)
        values('MG', 'Minas Gerais');
        
		insert into estado (sigla_est, nome_est)
        values('RJ', 'Rio de Janeiro');
        
        -- --------Conjuge----------------------------------------
        
         insert into conjuge (cod_cli, nome_con, renda_con, sexo_con)
         values(1, 'Carla Nogueira', 2500.00, 'F');
        
         insert into conjuge (cod_cli, nome_con, renda_con, sexo_con)
         values(2, 'Emília Pereira', 5500.00, 'F');
        
         insert into conjuge (cod_cli, nome_con, renda_con, sexo_con)
         values(6, 'Altiva da Costa', 3000.00, 'F');
        
         insert into conjuge (cod_cli, nome_con, renda_con, sexo_con)
         values(7, 'Carlos de Souza', 3250.00, 'M');

-- ---------------Exercicio 7--------------------------------
      
      create table Funcionario(
      
      cod_func     int(10) not null primary key, -- --------Chave
      nome_func    varchar(100) not null,
      end_func     varchar(200) not null,
      sal_func     decimal(10,2) not null default 0 , 
      sex_func     enum ('M', 'F') not null default 'F'
      
      );
      
      create table pedido(
      
      num_ped         int(10) not null primary key,
      cod_cli         int(10) not null, 
      cod_fun         int(10)  not null,   -- ---------------Chave estrangeira referenciando a tabela Funcionario
      data_ped        date not null , 
      val_ped         decimal(10,2) not null default 0,
      
        FOREIGN KEY (cod_fun)    REFERENCES Funcionario(cod_func)
        ON DELETE CASCADE ON UPDATE CASCADE
        
      );

		ALTER TABLE pedido 
        ADD FOREIGN KEY (cod_cli) REFERENCES cliente (cod_cli)
        ON DELETE CASCADE ON UPDATE CASCADE;

 create table dependente (
      
      cod_dep      int(10) not null primary key,
      cod_func     int(10) not null, -- -------------------Chave estrangeira referenciando a tabela funcionario
      nome_dep     varchar(100) not null, 
      sexo_dep     enum ('M', 'F') not null default 'M',
      
        FOREIGN KEY (cod_func) REFERENCES Funcionario (cod_func)
        ON DELETE CASCADE ON UPDATE CASCADE
      
      );


-- ----------------------------------------Exercicio 8---------------------------------------
      
      -- -----------Funcionario-------------------
      
         insert into Funcionario (cod_func, nome_func, end_func, sal_func, sex_func)
         values(1,	'Vânia Gabriela Pereira',	'Rua A',	2500.00,	'F');
         
         
		 insert into Funcionario (cod_func, nome_func, end_func, sal_func, sex_func)
         values(2,	'Norberto Pereira da Silva',	'Rua B',	300.00,	'M');
         
         
		 insert into Funcionario (cod_func, nome_func, end_func, sal_func, sex_func)
         values(3,	'Olavo Linhares',	'Rua C',	580.00,	'M');
         
         
		 insert into Funcionario (cod_func, nome_func, end_func, sal_func, sex_func)
         values(4,	'Paula da Silva',	'Rua D',	3000.00,	'F');
         
	
		 insert into Funcionario (cod_func, nome_func, end_func, sal_func, sex_func)
         values(5,	'Rolando Rocha',	'Rua E',	2000.00,	'M');
         
         -- -----------Dependente---------------
         
         insert into dependente (cod_dep, cod_func, nome_dep, sexo_dep)
         values( 1,	1,	'Ana Pereira',	'F');
         
		 insert into dependente (cod_dep, cod_func, nome_dep, sexo_dep)
         values(2,	1,	'Roberto Pereira',	'M');
         
		 insert into dependente (cod_dep, cod_func, nome_dep, sexo_dep)
         values( 3,	1,	'Celso Pereira',	'M');
         
		 insert into dependente (cod_dep, cod_func, nome_dep, sexo_dep)
         values( 4,	3,	'Brisa Linhares',	'F');
         
		 insert into dependente (cod_dep, cod_func, nome_dep, sexo_dep)
         values( 5,	3,	'Mari Sol Linhares',	'F');
         
		 insert into dependente (cod_dep, cod_func, nome_dep, sexo_dep)
         values( 6,	4,	'Sonia da Silva',	'F');
         
         
         -- -----------Pedido----------------------
       select * from pedido;
        insert into pedido (num_ped, cod_cli, cod_fun, data_ped, val_ped)
		values(1,	1,	2,	2/5/2012,	1500.00);
         
		insert into pedido (num_ped, cod_cli, cod_fun, data_ped, val_ped)
		values(2,	3,	4,	2/5/2012,	50.00);
        
		insert into pedido (num_ped, cod_cli, cod_fun, data_ped, val_ped)
		values(3,	4,	3,	2/6/2012,	100.00);
        
		insert into pedido (num_ped, cod_cli, cod_fun, data_ped, val_ped)
		values(4,	1,	4,	2/2/2013,	200.00);
        
		insert into pedido (num_ped, cod_cli, cod_fun, data_ped, val_ped)
		values(5,	7,	5,	2/3/2013,	300.00);
        
		insert into pedido (num_ped, cod_cli, cod_fun, data_ped, val_ped)
		values(6,	4,	4,	2/3/2013,	100.00);
        
		insert into pedido (num_ped, cod_cli, cod_fun, data_ped, val_ped)
		values(7,	5,	5,	2/3/2013,	50.00);
        
		insert into pedido (num_ped, cod_cli, cod_fun, data_ped, val_ped)
		values(8,	8,	2,	2/3/2013,	50.00);
	
		insert into pedido (num_ped, cod_cli, cod_fun, data_ped, val_ped)
		values(9,	2,	2,	2/3/2013,	2000.00);
        
		insert into pedido (num_ped, cod_cli, cod_fun, data_ped, val_ped)
		values(10,	7,	1,	2/3/2013,	3000.00);


-- --------------------------------Exercicio 9 --------------------------------------------
        
        create table titulo_artista(
        
        cod_tit         int(10) not null,           -- Chave estrangeira  referenciando a tabela titulo
        cod_art         int(10) not null,           -- Chave estrangeira  referenciando a tabela artista
	
        FOREIGN KEY (cod_tit)    REFERENCES titulo(cod_tit)
        ON DELETE CASCADE ON UPDATE CASCADE,
        
		FOREIGN KEY (cod_art)    REFERENCES artista(cod_art)
        ON DELETE CASCADE ON UPDATE CASCADE
        
        );
      
        create table titulo_pedido(
        
        num_ped    int(10) not null, -- Chave estrangeira referenciando a tabela pedido 
        cod_tit    int(10) not null, -- Chave estrangeira referenciando a tabela titulo
        qtd_CD     int(10) not null,
        val_CD     decimal(10,2) not null,
        
        FOREIGN KEY (num_ped)    REFERENCES pedido(num_ped)
        ON DELETE CASCADE ON UPDATE CASCADE,
        
        FOREIGN KEY (cod_tit)    REFERENCES titulo(cod_tit)
        ON DELETE CASCADE ON UPDATE CASCADE
        
        );


		insert into titulo_artista(cod_tit, cod_art)
        values (1,	1);
       
        insert into titulo_artista(cod_tit, cod_art)
        values (2,	2);
       
        insert into titulo_artista(cod_tit, cod_art)
        values (3,	2);
       
        insert into titulo_artista(cod_tit, cod_art)
        values (4,	2);
       
        insert into titulo_artista(cod_tit, cod_art)
        values (5,	3);
       
        insert into titulo_artista(cod_tit, cod_art)
        values (6,	4);
       
        insert into titulo_artista(cod_tit, cod_art)
        values (7,	4);
       
        insert into titulo_artista(cod_tit, cod_art)
        values (8,	5);
       
        insert into titulo_artista(cod_tit, cod_art)
        values (8,	5);
       
        insert into titulo_artista(cod_tit, cod_art)
        values (10,	7);
        
        
        
       -- ---------titulo_pedido-----------------------------------------
       
        insert into titulo_pedido(num_ped, cod_tit, qtd_CD, val_CD)
        values (1,	1,	2,	30.00);
        
        insert into titulo_pedido(num_ped, cod_tit, qtd_CD, val_CD)
        values (1,	2,	3,	20.00);
       
        insert into titulo_pedido(num_ped, cod_tit, qtd_CD, val_CD)
        values (1,	2,	3,	20.00);
       
        insert into titulo_pedido(num_ped, cod_tit, qtd_CD, val_CD)
        values (1,	2,	3,	20.00);
       
        insert into titulo_pedido(num_ped, cod_tit, qtd_CD, val_CD)
        values (3,	1,	2,	40.00);
       
        insert into titulo_pedido(num_ped, cod_tit, qtd_CD, val_CD)
        values (4,	2,	3,	20.00);
       
        insert into titulo_pedido(num_ped, cod_tit, qtd_CD, val_CD)
        values (5,	1,	2,	25.00);
       
        insert into titulo_pedido(num_ped, cod_tit, qtd_CD, val_CD)
        values (6,	2,	3,	30.00);
       
        insert into titulo_pedido(num_ped, cod_tit, qtd_CD, val_CD)
        values (6,	3,	1,	35.00);
       
        insert into titulo_pedido(num_ped, cod_tit, qtd_CD, val_CD)
        values (7,	4,	2,	55.00);
       
        insert into titulo_pedido(num_ped, cod_tit, qtd_CD, val_CD)
        values (8,	1,	4,	60.00);
       
        insert into titulo_pedido(num_ped, cod_tit, qtd_CD, val_CD)
        values (9,	2,	3,	15.00);
       
        insert into titulo_pedido(num_ped, cod_tit, qtd_CD, val_CD)
        values (10,	7,	2,	15.00);

select gravadora.nome_grav, titulo.nome_cd
from titulo join gravadora
on gravadora.cod_grav = titulo.cod_grav;

select titulo.nome_cd, categoria.nome_cat
from titulo inner join categoria  
on titulo.cod_cat = categoria.cod_cat;   

select titulo.nome_cd, gravadora.nome_grav, categoria.nome_cat
from titulo inner join gravadora
on titulo.cod_grav = gravadora.cod_grav
inner join categoria
on categoria.cod_cat = titulo.cod_cat;
       
select cliente.nome_cli, titulo.nome_cd
from cliente inner join pedido
on cliente.cod_cli = pedido.cod_cli
join titulo_pedido
on pedido.num_ped = titulo_pedido.num_ped
join titulo
on titulo_pedido.cod_tit = titulo.cod_tit;

select Funcionario.nome_func, pedido.num_ped, pedido.data_ped, pedido.val_ped, cliente.nome_cli
from Funcionario inner join pedido
on Funcionario.cod_func = pedido.cod_fun
inner join cliente
on pedido.cod_cli = cliente.cod_cli;

select Funcionario.nome_func, dependente.nome_dep
from Funcionario inner join dependente
on Funcionario.cod_func = dependente.cod_func;

select cliente.nome_cli, conjuge.nome_con
from cliente inner join conjuge
on cliente.cod_cli = conjuge.cod_cli;

select cliente.nome_cli, conjuge.nome_con
from cliente left  join conjuge
on cliente.cod_cli = conjuge.cod_cli;

select pedido.num_ped, pedido.val_ped, Funcionario.cod_func, cliente.nome_cli, conjuge.nome_con
from pedido inner join Funcionario
on pedido.cod_fun = Funcionario.cod_func
join cliente
on pedido.cod_cli = cliente.cod_cli
join conjuge
on conjuge.cod_cli = cliente.cod_cli ;

-- Exercicio 7 ==> Exercícios com Funções de Agregação

select count(*) from pedido;

insert into categoria (cod_cat, nome_cat)
values ('5', 'Lixo');

insert into titulo (cod_tit, cod_cat, cod_grav, nome_cd, val_cd, qtd_estq)
values ('11', '5', '4', 'Mc Porcaria', '35.00', '60');

select avg(val_ped) from pedido;

select max(val_ped) from pedido;

select min(val_ped) from pedido;

select val_ped, data_ped from pedido
order by val_ped, data_ped;

select cliente.nome_cli, cliente.renda_cli, max(pedido.val_ped)
from cliente inner join pedido
on cliente.cod_cli = pedido.cod_cli;

select Funcionario.nome_func, max(pedido.val_ped)
from Funcionario inner join pedido
on Funcionario.cod_func = pedido.cod_fun;

SELECT nome_func, sal_func from Funcionario 
WHERE sal_func = (select min(sal_func) from Funcionario);

select * from Funcionario;

select avg(sal_func) from Funcionario;

select titulo.nome_cd, titulo.qtd_estq from titulo
where titulo.qtd_estq = (select max(titulo.qtd_estq) from titulo);

select * from titulo;

select sum(qtd_estq) from titulo;

select * from titulo;

delete from titulo
where cod_tit = '11';

update categoria
set nome_cat = 'Funk'
where cod_cat = '5';

select * from categoria;

