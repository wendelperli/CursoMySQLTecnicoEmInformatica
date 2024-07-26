
   
        CREATE DATABASE EXERCICIOS_SELECT;
        USE EXERCICIOS_SELECT;
        
        CREATE TABLE Cliente
(
	COD_CLI	    INT(10), 
	NOME_CLI 	VARCHAR(50),
	SEXO_CLI 	CHAR(1), -- M - MASCULINO, F = FEMININO
	IDADE_CLI	INT(3), 
	CIDADE_CLI 	VARCHAR(50),
	ESTADO_CLI 	CHAR(2),
	RENDA_CLI 	DECIMAL(10,2),
	CIVIL_CLI 	CHAR(1), -- C = CASADO, S = SOLTEIRO, D = DIVORCIADO, O = OUTROS
	DTCAD_CLI	DATETIME
);

   
INSERT INTO cliente (COD_CLI, NOME_CLI, SEXO_CLI, IDADE_CLI, CIDADE_CLI, ESTADO_CLI, RENDA_CLI, CIVIL_CLI, DTCAD_CLI) VALUES (1 , 'RICARDO MANOEL ', 'M',75,'SÃO PAULO', 'SP', 12000, 'D','2007/05/07' );
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



        SELECT * FROM CLIENTE;
        
        
        
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

  Select * From Cliente
  Where estado_cli = 'sp';

-- ----------------------------------------------------------------------------------
-- 1.b EXIBIR SOMENTE OS CAMPOS NOME_CLI, CIDADE_CLI, ESTADO_CLI DA TABELA CLIENTE DO ESTADO DE SÃO PAULO

   select * from cliente
   where nome_cli and cidade_cli or estado_cli = 'sp';


-- ----------------------------------------------------------------------------------
-- 1.C EXIBIR SOMENTE OS CAMPOS NOME_CLI COM A LEGENDA [NOME DO CLIENTE], CIDADE_CLI COM A LEGENDA  [CIDADE DO CLIENTE], ESTADO_CLI COM A LEGENDA [ESTADO DO CLIENTE] DA TABELA CLIENTE DO ESTADO DE SÃO PAULO
   
   select 
   
   nome_cli as 'nome do cliente',
   cidade_cli as 'cidade do cliente',
   estado_cli as 'estado do cliente'
   
   from cliente;
   
   
-- ----------------------------------------------------------------------------------
-- 2. EXIBIR OS CLIENTES COM IDADES ACIMA DE 40 ANOS

   select * from cliente
   where idade_cli > 40;


-- ----------------------------------------------------------------------------------
-- 3. EXIBIR OS CLIENTES DA CIDADE DE SOROCABA

    select * from cliente
    where cidade_cli = 'Sorocaba';



-- ----------------------------------------------------------------------------------
-- 4. EXIBIR OS CLIENTES DO SEXO FEMININO
    select * from cliente
    where sexo_cli = 'F';



-- ----------------------------------------------------------------------------------
-- 5.EXIBIR OS CLIENTES COM RENDA ACIMA DE 5000

    select * from cliente
    where renda_cli > 5000;


-- ----------------------------------------------------------------------------------
-- 6.EXIBIR OS CLIENTES COM DATA DE CADASTRO ATÉ 01/01/2007

    select * from cliente
    where dtcad_cli <= '2007/01/01';



-- ----------------------------------------------------------------------------------
-- 7. EXIBIR OS CLIENTES COM RENDA MENOR OU IGUAL A 3000

    select * from cliente
    where renda_cli < 3000;


-- ----------------------------------------------------------------------------------
-- 8. EXIBIR OS CLIENTES COM IDADE ABAIXO DE 18 ANOS

   select * from cliente
   where idade_cli < 18;


-- ----------------------------------------------------------------------------------
-- 9. EXIBIR OS CLIENTES DO ESTADO DE MINAS GERAIS

    select * from cliente
    where estado_cli = 'MG';


-- ----------------------------------------------------------------------------------

-- TRABALHANDO COM A INSTRUÇÃO AND

-- 9.a EXIBIR OS CLIENTES FEMININOS, SOLTEIRAS, COM IDADE ACIMA DE 18 E RENDA MAIOR OU IGUAL A 3000

     select * from cliente
	 where sexo_cli = 'F' and civil_cli = 's' and idade_cli >18 and renda_cli >= 3000;




-- UTILIZANDO O OPERADOR AND

-- 10. EXIBIR OS CLIENTES DA CIDADE DE SÃO PAULO ACIMA DE 40 ANOS

    select * from cliente
	where cidade_cli = 'São Paulo' and idade_cli > 40;
 

-- ----------------------------------------------------------------------------------
-- 11. EXIBIR OS CLIENTES DO ESTADO DE SÃO PAULO DO SEXO MASCULINO COM RENDA ACIMA DE 5000

	select * from cliente
    where estado_cli = 'SP' and sexo_cli = 'M' and renda_cli > 5000;
        



-- ----------------------------------------------------------------------------------
-- 12.EXIBIR OS CLIENTES FEMININOS DO ESTADO DE MINAS GERAIS COM IDADE ABAIXO DE 40 ANOS

 select * from cliente
 where estado_cli = 'MG' and idade_cli < 40;



-- ----------------------------------------------------------------------------------
-- 13.EXIBIR OS CLIENTES DA CIDADE DE BERZONTE COM RENDA ACIMA DE 3000

    select * from cliente
    where cidade_cli = 'berzonte' and renda_cli > 3000;


-- ----------------------------------------------------------------------------------
-- 14.EXIBIR OS CLIENTES DO ESTADO DE SÃO PAULO QUE NÃO SÃO DA CIDADE DE SÃO PAULO

    select * from cliente
    where estado_cli = 'SP' and cidade_cli not like 'São Paulo';


-- ----------------------------------------------------------------------------------
-- 15.EXIBIR OS CLIENTES FEMININOS, SOLTEIROS, DO ESTADO DE SÃO PAULO COM IDADE ABAIXO DE 35

    select * from cliente 
    where sexo_cli = 'F' and civil_cli ='S' and estado_cli = 'SP' and idade_cli < 35;


-- ----------------------------------------------------------------------------------
-- 16.EXIBIR OS MINEIROS CASADOS COM IDADE ABAIXO DE 40 ANOS E RENDA ACIMA DE 2000

   select * from cliente
   where estado_cli = 'MG' and civil_cli = 'C' and idade_cli < 40 and renda_cli > 2000;


-- ----------------------------------------------------------------------------------
-- 17.EXIBIR OS CLIENTES DO ESTADO DE SÃO PAULO COM IDADE ENTRE 18 E 50 ANOS

	 select * from cliente
     where estado_cli = 'SP' and idade_cli between 18 and 50;



-- ----------------------------------------------------------------------------------
-- 18.EXIBIR OS CLIENTES DO ESTADO DE SÃO PAULO QUE NÃO TENHAM IDADE ENTRE 18 E 55 ANOS

       select * from cliente
       where estado_cli = 'SP' and idade_cli not between 18 and 55;



-- ----------------------------------------------------------------------------------
-- 19.EXIBIR OS CLIENTES DO ESTADO DE SÃO PAULO QUE NÃO TENHAM IDADE DE 20, 22, 24 OU 30 ANOS

     select * from cliente
     where estado_cli = 'SP' and idade_cli not in(20, 22, 24, 30);


-- ----------------------------------------------------------------------------------
-- 20.EXIBIR OS CLIENTES DO ESTADO DE SÃO PAULO QUE TENHAM IDADE DE 21, 23, 24 OU 33 ANOS

       select * from cliente
       where estado_cli = 'SP' and idade_cli in(21, 23, 24, 33);


-- ----------------------------------------------------------------------------------
-- 21.EXIBIR OS CLIENTES DO ESTADO DE SÃO PAULO QUE NÃO TENHAM IDADE DE 15, 19, 27 OU 40 ANOS

     select * from cliente
     where estado_cli = 'SP' and idade_cli not in(15, 19, 27, 40);


-- ----------------------------------------------------------------------------------
-- 22.EXIBIR Os CLIENTES QUE TENHAM NOME “RODRIGO DIAS”

     select * from cliente
     where nome_cli = 'Rodrigo Dias'

-- ----------------------------------------------------------------------------------
-- 23.EXIBIR Os CLIENTES QUE TENHAM NOME “ZÉ” OU SEJAM DO ESTADO DE SÃO PAULO
 
      select * from cliente
      where nome_cli = 'Zé' or estado_cli = 'SP';


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
     where nome_cli like '%EL%';


-- ----------------------------------------------------------------------------------
-- 27.EXIBIR Os CLIENTES QUE O NOME NÃO CONTÉM COM “EL”

     select * from cliente
     where nome_cli not like '%MA%';

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
       where nome_cli like '%ELA';


-- ----------------------------------------------------------------------------------
-- 31.EXIBIR Os CLIENTES QUE O NOME CONTÉM COM “DIAS”

       select * from cliente
       where nome_cli like '%DIAS%';



-- ----------------------------------------------------------------------------------
-- 32.EXIBIR Os CLIENTES QUE O NOME COMEÇA COM “JO”

	 select * from cliente
     where nome_cli like 'JO%';


-- ----------------------------------------------------------------------------------
-- 32.EXIBIR Os CLIENTES QUE O NOME DA CIDADE TERMINA  COM “E”

     select * from cliente
     where nome_cli like '%E';


-- ----------------------------------------------------------------------------------
-- 33.EXIBIR Os CLIENTES QUE O NOME DA CIDADE COMEÇA  COM “SORO” E POSSUEM RENDA MAIOR OU IGUAL A 8000


     select * from cliente
     where cidade_cli like 'soro%' and renda_cli >= 8000;


-- ----------------------------------------------------------------------------------
-- 33.EXIBIR Os CLIENTES QUE CONTÉM NO NOME “NA” E POSSUEM  DATA DE CADASTRO ATÉ 28/04/2006

     select * from cliente
     where cidade_cli like '%NA%' and dtcad_cli >= '2006-04-28';





-- ----------------------------------------------------------------------------------
-- 34.EXIBIR Os CLIENTES QUE O NOME DA CIDADE COMEÇA  COM “SORO” OU POSSUEM RENDA MAIOR OU IGUAL A 8000

     select * from cliente
     where cidade_cli like 'soro%' or renda_cli >= 8000;




-- ----------------------------------------------------------------------------------
-- 35.EXIBIR Os CLIENTES QUE O NOME COMEÇE  COM “RICHARLISON” OU POSSUAM RENDA MENOR OU IGUAL A 8000

	 select * from cliente
     where cidade_cli like 'richarlison%' or renda_cli <= 8000;





