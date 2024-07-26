create database brinquedos;
use brinquedos;
create table brinquedo(
cod_brinq int (10) primary key auto_increment,
nome_brinq varchar (50),
idade_brinq tinyint (10),
qtd_brinq int(4),
val_brinq decimal (5,2));
drop table brinquedo;
--  1 Inserção de dados-- 
insert into brinquedo (nome_brinq, idade_brinq, qtd_brinq, val_brinq)
values ('Amiguinha'	,7,	100,	150.00),
('Bebê Balancinho'	,3,	200,	30.00),
('Bebê Chuveirinho'	,3,	50,	25.00),
('Bolinha de Sabão'	,5,	40,	30.00),
('Emília',	2,	70,	60.00),
('Hora do Papá',1,	50,	50.00),
('Frutinha Chaveirinho',	2,	30,	20.00),
('Banco Imobiliário',	10,	10,	100.00),
('Cai não Cai',3,	15,	35.00),
('Cara a Cara',	4,	16,	28.00),
('Cilada',	10,	17,	25.00),
('Combate'	,7,	19,	40.00),
('Detetive'	,7,	20,50.00),
('A Galinha M,agricela',	7,	21,	90.00),
('Puxa Puxa Batatinha',	2,	22,	150.00),
('Robô Baby'	,2,	23	,200.00),
('Action Man',	3,	26,	150.00),
('Batcicle',	5,	30,	180.00),
('Batman',	3,	40	,50.00),
('Superman',	4,	50,	50.00),
('Maga Patalogica',	4,	66,	100.00),
('Paty Gatinha',	3,	88,	20.00),
('Goleiro Maluco',	5,	92,	20.00),
('Bichinhos do Bebê',	6,	100,	20.00),
('Caixa-Encaixa',	7,	200,	35.00),
('Guitarrinha do Bebê',	4,	200,	80.00);
insert into brinquedo (nome_brinq, idade_brinq, qtd_brinq, val_brinq)
values ('Sr e Sra Cabeça de Batata',6,	300	,150.00),
('Ponteirinho'	,4,	100	,50.00),
('BateCar',	5,	200,	30.00),
('CapotCar'	,5,	200,	30.00);
select * from brinquedo;
-- 2 aumentar 10 reais de todo produtos-- 
update brinquedo 
set val_brinq = val_brinq + 10;
-- 3 Aumente em 10% o valor de todos os brinquedos que tenham nomes começando com a letra C--
update brinquedo
set val_brinq = val_brinq *1.10
where nome_brinq like 'c%';
-- 4 Aumente em 10 unidades a quantidade de todos os brinquedos com valores inferiores a 50.00
update brinquedo
set qtd_brinq = qtd_brinq + 10
where val_brinq <= 50.00;
-- 5 Diminua em um ano o valor da coluna Idade_Brinq para todos os brinquedos que tenham a palavra Bebê no nome
update brinquedo
set idade_brinq = idade_brinq -5
where nome_brinq like '%bebê%';
-- 6 Exiba todos os brinquedos que não comecem com a letra B
select * from brinquedo
where nome_brinq not like 'b%';
-- 7 Altere a idade para um ano a menos e o valor para 20 reais a mais de todos os brinquedos cujo nome contenha a palavra Gatinha
update brinquedo
set idade_brinq = idade_brinq -1, val_brinq = val_brinq +20
where nome_brinq like '%paty%';
-- 8 Aumente em 5 reais o valor de todos os brinquedos com nomes que tenham a palavra Batata ou Batatinha
update brinquedo
set val_brinq = val_brinq + 5.00
where nome_brinq like '%batata%' or nome_brinq like '%batatinha%';
-- 9 Exiba os brinquedos de valor igual a 30, 40 ou 60 utilizando o operador IN
select * from brinquedo
where val_brinq in (30,40,60);
-- 10 Para todos os brinquedos que tiverem o valor inferior ou igual a 30.00, a quantidade em estoque superior ou igual a 100 e o nome começando com a letra B, aumente o valor em 20 reais, diminua em 5 unidades a quantidade e aumente em 1 ano a idade. 
update brinquedo
set val_brinq = val_brinq + 20.00, qtd_brinq = qtd_brinq - 5, idade_brinq = idade_brinq + 1
where val_brinq <= 30.00 and qtd_brinq >= 100 and nome_brinq like 'B%';
-- 11 Aplique um desconto de 10% (*0.9) no valor de todos os produtos que tenham valores entre 100.00 e 150.00
update brinquedo
set val_brinq = val_brinq - (val_brinq * 10/100)
Where val_brinq between 100.00 and 150.00;
-- 12 Exiba os brinquedos que não tenham valores entre 40 e 150
select * from brinquedo
where val_brinq not between 40.00 and 150.00;
-- 13 Exclua o brinquedo de código 10
delete from brinquedo
where cod_brinq = 10;
-- 14 Exclua os brinquedos que tenham idade maior ou igual a 10 anos
delete from brinquedo
where idade_brinq >= 10;
-- 15 Exiba todos os brinquedos com nomes que tenham até 6 letras
select * from brinquedo
where length(nome_brinq) <=6;
-- 16 Exiba os brinquedos que tenham as palavra Papá ou Galinha no nome, 
select * from brinquedo
where nome_brinq like '%papa%' or nome_brinq like '%galinha%';
-- 17 Exiba todos os brinquedos de idade inferior ou igual a três anos
select * from brinquedo
where idade_brinq <=3;


