-- Funções de Agregação
use db_cds;

-- Média
-- Ex. Retornar a Média de Preço dos Cds
Select AVG(val_cd) from Titulo;

-- Maior Valor
-- Ex. Retornar o CD mais caro
Select MAX(val_cd) from Titulo;

-- Menor Valor
-- Ex. Retornar o CD mais barato
Select MIN(val_cd) from Titulo;

-- Soma Valores
-- Ex. Retornar o valor total dos cds
Select SUM(val_cd) as 'Valor Total' from Titulo;

-- Contagem de Registros
-- Ex. Retornar o total de Funcionários da Base
Select COUNT(*) from Funcionario;

-- Retornar uma Parte do Registro
Select substring(nome_func, 2, 6) From Funcionario;



