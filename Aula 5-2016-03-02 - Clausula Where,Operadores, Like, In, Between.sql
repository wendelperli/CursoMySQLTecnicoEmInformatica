-- Clausula Where
use funcionarios;
-- Where estabelece critérios de filtro
-- e pode ser usado com Select (consultas,
-- Update (alteração de Dados e Delete (exclusão).

Create Table Professores(
	Prof_Id			Int(10) Primary Key Auto_Increment,
    Prof_Nome		Varchar(40) Not Null,
    Prof_Sexo		Enum('M', 'F'),
    Prof_CPF		Varchar(14) Unique,
    Prof_Dt_Nasc	Datetime,
    Prof_Dt_Cad		Datetime Default Now(),
    Prof_End_Rua	Varchar(40),
    Prof_End_Nro	Varchar(6),
    Prof_End_Bairro	Varchar(30),
    Prof_End_Cidade	Varchar(30),
    Prof_End_UF		Char(2),
    Prof_End_CEP	Char(9)
);


Insert Into professores(Prof_Nome, Prof_Sexo, Prof_CPF, Prof_Dt_Nasc, 
Prof_End_Rua, Prof_End_Nro, Prof_End_Bairro, 
Prof_End_Cidade, Prof_End_UF, Prof_End_CEP)
Values('Ana', 'F', '230.222.000-55', '1995-03-20', 'Av. do Estado',
'200', 'Centro', 'Santo Andre', 'SP', '05020-000');

Select * From Professores;

-- ---------------------------------------------
-- ---------------------------------------------
-- Operadores de Comparação
-- ">" = Maior que
-- "<" = Menor que
-- ">=" = Maior ou Igual a
-- "<=" = Menor ou Igual
-- "<>" = Diferente

-- Exemplos:
-- Ex1: Retornar todos os Professores com Nome 'Jubileu'
Select * From Professores
Where Prof_Nome = 'Jubileu';

-- Ex2: Retornar todos os Professores com Data de Nascimento
-- a partir de '1990-01-01'
Select * From professores
Where Prof_Dt_Nasc >= '1990-01-01';

-- Ex3: Retornar todos os Professores com Data de Nascimento
-- anterior a '01/01/1990'
Select * From Professores
Where Prof_Dt_Nasc <= '1990-01-01';

-- Ex4: Retornar todos os Professores com ID maior que 5
Select * From Professores
Where Prof_Id > 5;

-- Ex5: Retornar todos os Professores com ID menor que 5
Select * From Professores
Where Prof_Id < 5;

-- Ex6: Retornar os Professores que não morem em 'São Paulo'
Select * From Professores
Where Prof_End_Cidade <> 'São Paulo';

-- Ex7: Retornar todos os Professores exceto o Prof_Id 7
Select * From Professores
Where Prof_Id <> 7;

-- ------------------------------------------------------
-- OPERADORES LÓGICOS
-- and = 'E'
-- or  = 'OU'
-- not = 'NÃO'

-- Ex1: Retornar Todos os Professores que Morem em 'São Paulo' E 
-- tenham nascido antes de 1980
Select * From Professores
Where Prof_End_Cidade = 'São Paulo' and Prof_Dt_Nasc <= '1980-01-01';

-- Função YEAR() = Retorna o ANO do Parametro Recebido
Select * From Professores
Where Prof_End_Cidade = 'São Paulo' and year(Prof_Dt_Nasc) < 1980;

Select * From Professores
Where Prof_End_Cidade = 'São Paulo' and month(Prof_Dt_Nasc) = 1;

Select * From Professores
Where Prof_End_Cidade = 'São Paulo' and monthname(Prof_Dt_Nasc) = 'january';

-- Retornar o Mês Atual
Select monthname(now());

-- -----------------------------------
-- OR
Select * From Professores
Where Prof_End_Cidade = 'São José' OR Prof_End_Cidade = 'Santo Andre';

-- Pesquisar um Intervalo
Select * From Professores
Where Prof_Id >= 7 and Prof_id <= 13;

Select * From Professores
Where Prof_Id between 7 and 13;

Select * From Professores
Where Prof_Id <= 7 or Prof_Id >= 13;

Select * From Professores
Where Prof_Id not between 7 and 13;

Select * From Professores
Where Prof_id = 10 OR Prof_id = 14 Or Prof_id = 20;

Select * From Professores
Where Prof_Id In(10, 14, 20);

Select * From Professores
Where Prof_Id <> 10 and Prof_Id <> 14 and Prof_Id <> 20;
 
Select * From Professores
Where Prof_Id Not In(10, 14, 20);

-- -------------------------------------------
-- Operador LIKE
-- Similar ao '='
Select * From Professores
Where Prof_Nome = 'Jubileu';

Select * From Professores
Where Prof_Nome like 'Jubileu';

-- caractere coringa: %
-- a% = começa com 'a'
-- %a = termina com 'a'
-- %a% = contém 'a'

-- Retornar todos os Professores que o nome comece com 'A'
Select * From Professores
Where Prof_Nome like 'a%';

Select * From Professores
Where Prof_Nome like '%a';

Select * From Professores
Where Prof_Nome like '%a%';

Select * From Professores
Where Prof_End_Cidade like '%e';

Select * From Professores
Where Prof_Nome like 'ju%';

Select * From Professores
Where Prof_Nome like '%bileu';

Select * From Professores
Where Prof_Nome not like '%bileu';

Select * From Professores
Where Prof_Nome not like '%x%';







