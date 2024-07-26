-- Aula 03 - Criando o primeiro Banco de Dados-- 
-- Cria um Banco de Dados --
create database cadastro;

-- Coloca um Banco de Dados "cadastro" em uso --
use cadastro;

-- Cria uma tabela --
create table pessoas (
nome varchar(20),
idade tinyint,
sexo char(1),
peso float,
altura float,
nacionalidade varchar(20)
);

-- Descreve a estrutura da tabeala --
describe pessoas;

-- Mostra os bancos de dados criados --
show databases;

-- Mostra qua banco de dados está aberto (apenas no servidor) --
status;

-- Mostra as tabelas do banco de dados em uso --
show tables;

-- Deleta Banco de Dados-- 
drop database cadastro;

-- Aula 04 - Melhorando a estrutura do Banco de Dados --

-- Criar Banco de Dados com "constraints" codificação de caracteres--
create database cadastro
default character set utf8   
default collate utf8_general_ci;   -- Collation, serve para definição dos caracteres

-- Coloca um Banco de Dados "cadastro" em uso --
use cadastro;

-- Cria uma tabela aprimorada--
create table pessoas (
	`id` int not null auto_increment,
	`nome` varchar (30) not null,
    `nascimento` date,
    `sexo` enum ('M', 'F'),
    `peso` decimal (5,2),
    `altura` decimal (3,2),
    `nacionalidade` varchar (20) default 'Brasil',
    primary key (id)
) default charset = utf8;

describe pessoas;

-- Aula 05 - Inserindo dados na tabela (INSERT INTO)--

-- "Create table" faz parte da categoria DDL (Data definition Language) dentro do SQL; comando de definição --
-- "Insert Into" faz parte da categoria DML (Data Manipulation Language) dentro do SQL; comando de manipulação de dados --
 
insert into pessoas 
(nome, nascimento, sexo, peso, altura, nacionalidade)
values ('Godofredo', '1984-01-02', 'M', '78.5', '1.83', 'Brasil');

insert into pessoas 
(nome, nascimento, sexo, peso, altura, nacionalidade)
values ('Maria', '1999-12-30', 'F', '55.2', '1.65', 'Portugal');

insert into pessoas 
(id, nome, nascimento, sexo, peso, altura, nacionalidade)
values (default, 'Creuza', '1920-12-30', 'F', '50.2', '1.65', default);

insert into pessoas values 
(default, 'Adalgiza', '1930-11-02', 'F', '63.2', '1.75', 'Irlanda');

insert into pessoas 
(id, nome, nascimento, sexo, peso, altura, nacionalidade)
values 
(default, 'Ana', '1975-12-22', 'F', '52.3', '1.45', 'EUA'),
(default, 'Pedro', '2000-07-15', 'M', '52.3', '1.45', default),
(default, 'Maria', '1999-05-30', 'F', '75.9', '1.70', 'Portugal');

-- Mostra tudo da tabela "pessoas"--
select * from pessoas;

-- Aula 06 - Curso MySQL #06 - Alterando a Estrutura da Tabela (ALTER TABLE e DROP TABLE) -- 

-- Iseri um novo capo (coluna) na tabela
alter table pessoas
add column profissao varchar (10);

-- Deleta uma coluna --
alter table pessoas
drop column profissao;

-- Iseri um novo capo (coluna) na tabela em uma posição especifica --
alter table pessoas
add column profissao varchar (10) after nome;

-- Iseri um novo capo (coluna) na tabela na promeira posição --alter
alter table pessoas
add column codigo int first;

-- Modificar uma coluna --
alter table pessoas
modify column profissao varchar (20) not null;

-- Modificar uma coluna -- Modify = tipos, e constraints
alter table pessoas
modify column profissao varchar (20) not null default '';

-- Mudar nome da coluna -- Modify = nome, tipos, e constraints
alter table pessoas
change column profissao prof varchar (20);

-- Mudar nome da tabela inteira
alter table pessoas
rename to gafanhotos;

-- Cria um tabela
create table if not exists cursos(
nome varchar(30) not null unique,
descricao text,
carga int unsigned,
totaulas int unsigned, -- Unsigned siginifica sem sinal (ex: o numero nao pode ser negativo)
ano year default '2016'
) default charset=utf8;


-- Adicionar uma coluna
alter table cursos
add column idcurso int first;


-- Adicionar uma chave primaria
alter table cursos
add primary key (idcurso);

-- Cria uma tabela
create table if not exists teste (
id int ,
nome varchar (10),
idade int
);
-- insere dados na tabela
insert into teste
value ('1', 'Pedro', '22'),
	  ('2', 'Maria', '12'),
      ('3', 'Maricota', '77');

-- Apagar tabela
drop table if exists teste;

-- "Alter table" e "drop table", saocomando de definição (DDL)

-- Aula 07 - Curso MySQL #07 - Manipulando Linhas (UPDATE, DELETE e TRUNCATE)

-- Inseri dados na tabela
INSERT INTO cursos VALUES
 ('1','HTML4','Curso de HTML5', '40','37','2014'),
    ('2','Algoritmos','Lógica de Programação','20','15','2014'),
    ('3','Photoshop','Dicas de Photoshop CC','10','8','2014'),
    ('4','PGP','Curso de PHP para iniciantes','40','20','2010'),
    ('5','Jarva','Introdução à Linguagem Java','10','29','2000'),
    ('6','MySQL','Banco de Dados MySQL','30','15','2016'),
    ('7','Word','Curso completo de Word','40','30','2016'),
    ('8','Sapateado','Danças Rítmicas','40','30','2018'),
    ('9','Cozinha Árabe','Aprenda a fazer Kibe','40','30','2018'),
    ('10','Youtuber','Gerar polêmica e ganhar inscritos','5','2','2018');

-- Atualizar registros (linhas) na tabela
update cursos
set nome = 'HTML5'
where idcurso = '1';

update cursos
set nome = 'PHP', ano = '2015'
where idcurso = '4';

update cursos
set nome = 'Java', carga = '40', ano = '2015'
where idcurso = '5'
limit 1;  -- "limit", limita quantas linhas serao afetadas

-- Deleta um registro da tabela
delete from cursos
where idcurso = '8';

delete from cursos
where ano = '2018'
limit 2;

-- Apaga todas as linhas (registro) de uma tabela
truncate table cursos;
-- update, delete e truncate são comandos DML 

-- Aula 08 - Curso MySQL #08 - Gerenciando Cópias de Segurança MySQL

use cadastro;
describe cursos;
select * from cursos;
select * from gafanhotos;


-- Comando no terminal Linux para fazer backup do Banco de dados:

-- Fazer backup:
-- mysqldump -u root -p db_Biblioteca > /home/wendel/db_Biblioteca.sql
-- Restaurar Backup
-- mysql -u root -p teste_restore < /home/wendel/db_Biblioteca.sql              --OBS: nesse caso o db "teste_restore" deve ser criado anteriormente no MySQL

-- Aula 09 - Curso MySQL #09 - PHPMyAdmin (Parte 1)

-- Aula 10 - Curso MySQL #10 - PHPMyAdmin (Parte 2)

show create table amigos; -- Mostra o camndo usado prara criar a tabela
drop database exemplo;

-- Aula 11 - Curso MySQL #11 - SELECT (Parte 1)

-- Fazer a importaçãodo dump
select * from gafanhotos;
select * from cursos;

-- Filtrar tudo e ordenar pelo "nome"
select * from cursos
order by nome;

-- Filtrar tudo e ordenar pelo "nome" em ordem descendente
select * from cursos
order by nome desc;

-- Filtrar tudo e ordenar pelo "nome" em ordem ascendente
select * from cursos
order by nome asc;

-- Seleciona somente as colunas "nome", "carga", "ano", e mostra os registros ordenados pelo "nome"
select nome, carga,ano from cursos
order by nome;

-- Seleciona somente as colunas "ano", "nome", "carga", e mostra os registror ordenados pelo "ano" e pelo "nome"
select ano, nome, carga from cursos
order by ano, nome;

-- Seleciona somente as colunas "nome" e "carga", e filtra a linha onde o ano é igual a "2016", e ordena pelo "nome"
select nome, carga from cursos
where ano = '2016'
order by nome;

-- Seleciona somente as colunas "nome", "descricao" e "carga", e filtra o registro onde o ano é igual a "2016", e ordena pelo "nome"
select nome, descricao, carga from cursos
where ano = '2016'
order by nome;

-- Seleciona as colunas "nome", "descricao" e "ano", filtra a linha onde o ano é menor ou igual a "2015", e ordena pelo "nome"
select nome, descricao, ano from cursos
where ano <= '2015'
order by nome;

-- Seleciona as colunas "nome", "descricao" e "ano", e filtra a linha onde o ano é menor que "2015", e ordena pelo "nome"
select nome, descricao, ano from cursos
where ano < '2015'
order by nome;

-- Seleciona as colunas "nome", "descricao" e "ano", e filtra a linha onde o ano é maior que "2015", e ordena pelo "nome"
select nome, descricao, ano from cursos
where ano > '2015'
order by nome;

-- Seleciona as colunas "nome", "descricao" e "ano", e filtra a linha onde o ano é maior ou igual a "2015", e ordena pelo "nome"
select nome, descricao, ano from cursos
where ano >= '2015'
order by nome;

-- Seleciona as colunas "nome", "descricao" e "ano", e filtra a linha onde o ano é igual a "2015", e ordena pelo "nome"
select nome, descricao, ano from cursos
where ano = '2015'
order by nome;

-- Seleciona as colunas "nome", "descricao" e "ano", e filtra a linha onde oano é diferente de "2015", e ordena pelo "nome"
select nome, descricao, ano from cursos
where ano != '2015'
order by nome;       -- OBS: pode ser usado o "<>" ao inves do "!="

-- Seleciona todas as colunas de cursos, e filtra onde o total de aulas esteja entre 20 e 30, e ordena pelo nome
select * from cursos 
where totaulas between '20' and '30'
order by nome;

-- Seleciona as colunas "nome" e "ano", e filtra as onde o ano estaja entre 2014 e 2016, e ordena pelo "ano" em ordem decrescente, e pelo "nome" em ordem ascendente
select nome, ano from cursos 
where ano between '2014' and '2016'
order by ano desc, nome;

-- Seleciona as colunas "idcurso" e "nome", e filtra as linhas, apenas com os anos 2014, 2016 e 2018, e ordena pelo nome
select idcurso, nome  from cursos
where ano in ('2014', '2016', '2018')
order by nome; 

-- Seleciona as colunas "nome", "descricao" e "ano", e filtra as linhas, apenas com os anos 2014 e 2016,  ordenados pelo ano
select nome, descricao, ano from cursos
where ano in ('2014', '2016')
order by ano;

-- "BETWEEN" mostra valores ENTRE, e "IN" mostra valores especificados
-- -----------------------------------------------------

-- Seleciona todas as colunas, e filtra os registros onde a carga horaria é maior que 35 E o total de aulas menor que 30, e ordena pelo nome
select * from cursos 
where carga > 35 and totaulas < 30
order by nome;

-- Seleciona todas as colunas, e filtra os registros onde a carga horaria é maior que 35 OU o total de aulas menor que 30
select * from cursos 
where carga > 35 or totaulas < 30
order by nome;

-- No "AND" o resultado so sera verdadeiro se todas as duas premissas forem verdadeiras, em todos os outros casos o resultado é falso
-- No "OR" o resultado so sera falso se todas as duas premissas forem falsas, em todos os outros casos o resultado é verdadeiro

-- O comando "select" é do tipo DML e DQL

-- Aula 12 - Curso MySQL #12 - SELECT (Parte 2)

-- Operador "LIKE"

-- Mostrar registros que comecem com  a letra P
select * from cursos
where nome LIKE 'P%';

-- Mostrar registros que terminem com a letra A
select * from cursos
where nome LIKE '%A';


-- Mostrar registros que contenham a letra A
select * from cursos
where nome LIKE '%A%';


-- Mostrar registros que nao contenham a letra A e lugar nenhum
select * from cursos
where nome not LIKE '%A%';

-- Mostrar registros que comecem com "PH", tenha qualquer coisa e terminem com "P"
select * from cursos
where nome LIKE 'PH%P';

-- Mostrar registros que comecem com "PH", tenha qualquer coisa, tenham um "P", e terminem com qualquer coisa
select * from cursos
where nome LIKE 'PH%P%';

-- Mostrar registros que comecem com "PH" e terminem com "P" e tenham mais alguma coisa no final
select * from cursos
where nome LIKE 'PH%P_';

-- Mostrar registros que comecem com "P",tenha qualquer, contenham um "P", e terminem com qualquer coisa
select * from cursos
where nome LIKE 'P_P%';

-- Mostrar registros de qualquer pessoa que tenha o nome "silva" em qualquer lugar
select * from gafanhotos
where nome LIKE '%silva%';

-- Mostra registro das nacionalidades, nao a quantidade, mas sim de onde exitem pessoas, ordenados pela nacionalidade (apenas uma vez para cada valor)
select distinct nacionalidade from gafanhotos       -- "distinct" significa distinguir
order by nacionalidade;

-- Mostrar registros de qualquer "carga"
select carga from cursos
order by carga;

-- Mostrar registros apenas uma vez para cada valor
select distinct carga from cursos
order by carga;

-- "distinct" mostra quais sao distintos (diferentes)



-- Funçao dea gregação:

-- Mostra quantos são os cursos cadastrados (quantidade)
select count(*) from cursos;

-- Mostra todos os cursos com a carga maior que 40 horas
select * from cursos
where carga > 40;

-- Mostra quantos cursos tem mais de 40 horas
select count(*) from cursos
where carga > 40;

-- Mostra quantos nome tenho cadastrado
select count(nome) from cursos;

-- Mostra todos os registros ordenados pela "carga"
select * from cursos order by carga;

-- Mostra qual é a maior carga entre os cursos
select max(carga) from cursos order by carga;

-- Mostra todos os cursos no ano de 2016
select * from cursos
where ano = '2016';

-- Mostra o maior total de aulas em 2016
select max(totaulas) from cursos
where ano = '2016';

-- Mostra mostra o menor total de aulas em 2016
select min(totaulas) from cursos
where ano = '2016';

-- Mostra mostra o nome, e o menor total de aulas em 2016
select nome, min(totaulas) from cursos
where ano = '2016';  -- Obs: o mysql vai mostrar apenas o primeiro registro que encntrar nessas condiçoes, para mostrar todos, usamos a função de agrupamento

-- Mostra a soma de todos os "total de aulas" registrados
select sum(totaulas) from cursos;

-- Mostra a soma de todos os "total de aulas" registrados no ano de 2016
select sum(totaulas) from cursos
where ano = '2016';

-- Mostra a media de todos os "total de aulas" registrados
select avg(totaulas) from cursos;

-- Mostra a media de todos os "total de aulas" registrados no ano de 2016
select avg(totaulas) from cursos
where ano = '2016';


-- Exrcicios --

-- 1 - Uma lista com o nome de todas as gafanhotas
-- 2 - Uma lista com os dados de todos aqueles que nasceram entre 1/jan/2000 e 31/dez/2015
-- 3 - Uma lista com o nome de todos os homens que trabalham como Programadores
-- 4 - Uma lista com os dados de todas as mulheres que nasceram no Brasil e que tem seu nome iniciando com a letra J
-- 5 - Uma lista com o nome de todos os homens que tem Silva no nome, não nasceram no Brasil e pesam menos de 100Kg
-- 6 - Qual é a maior altura entre gafanhotos homens que moram no Brasil
-- 7 - Qual é a media de peso dos gafanhotos cadastrados
-- 8 - Qual é o menor peso entre as gafanhotos mulheres que nasceram fora do Brasil e entre 01/jan/1990 e 31/Dez/2000
-- 9 - Quantas gafanhotas mulheres tem mais de 1.90 de altura?

-- Resolução dos exercicios

-- 1 - Uma lista com o nome de todas as gafanhotas
select nome from gafanhotos
where sexo = 'F';

-- 2 - Uma lista com os dados de todos aqueles que nasceram entre 1/jan/2000 e 31/dez/2015
select * from gafanhotos
where nascimento between'2000-01-01' and '2015-12-31';

-- 3 - Uma lista com o nome de todos os homens que trabalham como Programadores
select nome from gafanhotos
where profissao = 'Programador';

-- 4 - Uma lista com os dados de todas as mulheres que nasceram no Brasil e que tem seu nome iniciando com a letra J
select * from gafanhotos
where sexo = 'F' and nacionalidade = 'Brasil' and nome like 'J%';

-- 5 - Uma lista com o nome de todos os homens que tem Silva no nome, não nasceram no Brasil e pesam menos de 100Kg
select nome from gafanhotos
where nome like '%_Silva%' and nascimento != 'Brasil' and peso < '100';

-- 6 - Qual é a maior altura entre gafanhotos homens que moram no Brasil
select max(altura) from gafanhotos
where nacionalidade = 'Brasil';

-- 7 - Qual é a media de peso dos gafanhotos cadastrados
select avg(peso) from gafanhotos;

-- 8 - Qual é o menor peso entre as gafanhotos mulheres que nasceram fora do Brasil e entre 01/jan/1990 e 31/Dez/2000
select min(peso) from gafanhotos
where sexo = 'F' and nascimento != 'Brasil' and nascimento between '1990-01-01' and '2000-12-31';

-- 9 - Quantas gafanhotas mulheres tem mais de 1.90 de altura?
select count(altura) from gafanhotos
where sexo = 'F' and altura > '1.90';


-- Aula 13 - Curso MySQL #13 - SELECT (Parte 3)

-- Função de Agrupamento

-- Mostra os registros "carga" agrupados pela "carga"
select carga from cursos
group by carga;

-- Mostra os registros "carga" agrupados pela "carga" e conta quantos registros tem em cada agrupamento
select carga, count(nome) from cursos
group by carga;

-- Mostra todos os registros "totaulas" e ordena pelo "totaulas"
select totaulas from cursos
order by totaulas;

-- Mostra o "totaulas" uma vez para cada valor e ordena pelo "totaulas"
select distinct totaulas from cursos
order by totaulas;

-- Mostra os registros "totaulas" agrupados e ordena pelo "totaulas"
select totaulas from cursos
group by totaulas
order by totaulas;

-- Mostra os registros "totaulas" agrupados e quantos registros tem dentro de cada agrupamento do "totaulas"
select totaulas, count(*) from cursos
group by totaulas
order by totaulas;

-- Conferindo
select * from cursos
where totaulas = '30';

select * from cursos
where totaulas = '12';

-- -- -- -- -- --

-- Mostra os registros onde o totaulas é igual a 30, agrupados pela carga
select carga, totaulas from cursos 
where totaulas = '30'
group by carga;

-- Mostra os registros onde o totaulas é igual a 30, agrupados pela carga, e conta quantos registros tem no agrupamento
select carga, count(nome) from cursos 
where totaulas = '30'
group by carga;

-- Mostra os registros agrupados pelo ano, e conta quantos registros tem em cada agrupamento
select ano, count(*) from cursos
group by ano
order by count(*) desc;

-- Mostra os registros agrupados pelo ano, e mostra apenas os que tem o count ano maior ou igual a 5
select ano, count(*) from cursos
group by ano
having count(ano) >= '5'
order by count(*) desc;

-- Mostra os registros agrupados pelo ano, e mostra apenas os que tem ano maior que 2013
select ano, count(*) from cursos
group by ano
having ano > '2013'
order by count(*) desc;

-- Mostra os registros agrupados pelo ano, e mostra apenas que tem ano maior que 2013, onde o totaulas é maior que 30
select ano, count(*) from cursos
where totaulas > '30'
group by ano
having ano > '2013'
order by count(*) desc;

-- Mostra a media da carga da tabela cursos
select avg(carga) from cursos;

-- Mostra os registros agrupados pela carga, conta quantos registros tem em cada agrupamento, onde o ano é maior que 2015
select carga, count(*) from cursos
where ano > '2015'
group by carga;

-- Mostra os registro dos cursos onde o ano é acima de 2015, agrupados pela carga, tendo a carga maior do que a media da carga
select carga, count(*) from cursos
where ano > '2015'
group by carga 
having carga > (select avg(carga) from cursos);

-- Exercicios

-- 1 - Uma lista com as profissoes dos gafanhotos e seus respectivos quantitativos
select profissao, count(*) from gafanhotos
group by profissao;

-- 2 - Quantos gafanhotos homens e quantas mulheres nasceram após 01/Jan/2005
select sexo, count(*) from gafanhotos
where nascimento > '2005-01-01'
group by sexo;

select * from gafanhotos;
select nacionalidade from gafanhotos
group by nacionalidade;

/* 3 - Uma lista com os gafanhotos que nasceram fora do Brasil, mostrando o pais de origem e o total de pessoas nascidas la. Só nos interessam os 
       países que tiverem mais de 3 gafanhotos com essa nacionalidade */
select nome, nacionalidade, count(*)from gafanhotos 
where nacionalidade != 'brasil'
group by nacionalidade
having count(nacionalidade) > '3';

-- 4 - Uma lista agrupada pela altura dos gafanhotos, mostrando quantas pessoas pesam mais de 100Kg e que estão acima da media de altura de todos os cadastrados
select altura, count(peso) from gafanhotos
where peso > '100'
group by altura
having altura > (select avg(altura) from gafanhotos);
-- Aula 14 - Curso MySQL #14 - Modelo Relacional

-- Em um relacionamentode "1" para "1", escolhemos quem vai virar chave estrangeira do outro

-- Em um relacionamentode "1" para "muitos", devemos jogar a chave primaria do lado "1" para ser chave estrangeira do lado "muitos" SEMPRE

-- Em um relacionamento "muitos" para "muitos", o relacionamento vira uma entidade e o "n" fica mais proximo dessa entidade,, devemos acrescentar relacionamentos entre as entidades originais e a entidade nova,, tabem devemos colocar "1" e "1" nas entidades originais. SEMPRE

-- Aula 15 - Curso MySQL #15 - Chaves Estrangeiras e JOIN

describe gafanhotos;

-- Adiciona uma coluna na tabela gafanhotos
alter table gafanhotos
add column cursopreferido int;

-- Adicionar uma chave estrangeira a coluna "cursopreferido" referenciando a cluna "idcurso" da tabela cursos
alter table gafanhotos
add foreign key (cursopreferido)
references cursos (idcurso);

-- Adicionar o "Daniel preferindo o curso de "MySQL""
update gafanhotos
set cursopreferido = '6'
where id = '1';

select nome, cursopreferido from gafanhotos;

-- Mostrar registros da tabela "gafanhotos" e da tabela "cursos" em uma unica consulta, porem de uma forma nao inteligente
select gafanhotos.nome, gafanhotos.cursopreferido, cursos.nome, cursos.ano 
from gafanhotos join cursos;

-- Mostrar registros da tabela "gafanhotos" e da tabela "cursos" em uma unica consulta, porem de uma forma inteligente
select gafanhotos.nome, gafanhotos.cursopreferido, cursos.nome, cursos.ano 
from gafanhotos join cursos
on cursos.idcurso = gafanhotos.cursopreferido; -- Liga a chave primaria da tabela cursos a chave estrangeira da tabela gafanhotos

-- Mostrar registros da tabela "gafanhotos" e da tabela "cursos" em uma unica consulta, porem de uma forma inteligente e com apelidos.
select g.nome, c.nome, c.ano
from gafanhotos as g inner join cursos as c
on c.idcurso = g.cursopreferido
order by g.nome;

-- Mostra os registros das duas tabelas, inclusive os gafanhotos que nao preferem curso nenhum, dando preferencia pra gafanhotos que esta dolado esquerdo e ordena pelo nome (gafanhotos)
select g.nome, c.nome, c.ano
from gafanhotos as g left outer join cursos as c
on c.idcurso = g.cursopreferido
order by g.nome;


-- Mostra os registros das duas tabelas, inclusive os gafanhotos que nao preferem curso nenhum, dando preferencia pra gafanhotos que esta do lado esquerdo
select g.nome, c.nome, c.ano
from gafanhotos as g left outer join cursos as c
on c.idcurso = g.cursopreferido;

-- Mostra os registros das duas tabelas, inclusive os gafanhotos que nao preferem curso nenhum, dando preferencia pra cursos que esta do lado direito
select g.nome, c.nome, c.ano
from gafanhotos as g right outer join cursos as c
on c.idcurso = g.cursopreferido;

select * from gafanhotos;

-- Aula 16 - Curso MySQL #16 - INNER JOIN com várias tabelas

-- Criar uma nove tabela
create table gafanhoto_assiste_curso (
id int not null auto_increment,
data date,
idgafanhoto int,
idcurso int,
primary key (id),
foreign key (idgafanhoto) references gafanhotos (id),
foreign key (idcurso) references cursos(idcurso)
) default charset = utf8;

-- Inserir dadso na tabela "gafanhoto_assiste_curso"

insert into gafanhoto_assiste_curso 
values (default, '2014-03-01', '1', '2');

select * from gafanhoto_assiste_curso;

-- Mostrar registros das tabela "gafanhotos" e "gafanhoto_assiste_curso"
select * from gafanhotos g
join gafanhoto_assiste_curso a
on g.id = a.idgafanhoto;

-- Mostrar registros das tabela "gafanhotos" e "gafanhoto_assiste_curso" e "cursos"
select g.nome, c.nome, a.idcurso from gafanhotos g
join gafanhoto_assiste_curso a
on g.id = a.idgafanhoto
join cursos c 
on c.idcurso = a.idcurso
order by g.nome;




