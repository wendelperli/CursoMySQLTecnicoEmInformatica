-- select, distinct, limit, order by (com ask e desc), e colunas virtuais

create database funcionarios;
use funcionarios;

create table funcionarios(

  func_id         int(10)     primary key auto_increment,
  func_nome       varchar(40) not null,
  func_cpf        varchar(14) unique,
  func_email      varchar(60),
  func_sexo       enum ('M', 'F') -- enumerador: so aceita os valores informados nos parenteses


);

create table conjuges(
conj_id         int(10)     primary key auto_increment,
conj_nome       varchar(40) not null,
conj_dt_nasc    datetime,
conj_func_id    int(10),

foreign key (conj_func_id) references funcionarios(func_id)
on delete cascade on update cascade


);

create table filhos(
filho_id         int(10)     primary key auto_increment,
filho_nome       varchar(40) not null,
filho_dt_nasc    datetime,
filho_func_id    int(10),

foreign key (filho_func_id) references funcionarios(func_id)
on delete cascade on update cascade
);


   -- verificar estrutura da tabela
   desc funcionarios;
   
   -- -------------------------------------------
   -- inserindo dados na tabela 'funcionarios'
   insert into funcionarios(func_nome, func_cpf, func_email, func_sexo)
   values('Fulano', '123.456.789-00', 'fulano@gmail.com', 'M');
   
   insert into funcionarios(func_nome, func_cpf, func_email, func_sexo)
   values('Ciclano', '999.888.777-00', 'ciclano@gmail.com', 'M');
   
   
   insert into funcionarios(func_nome, func_cpf, func_email, func_sexo)
   values('Beltrano', '888.666.555-00', 'beltrano@gmail.com', 'M');
   
   insert into funcionarios(func_nome, func_cpf, func_email, func_sexo)
   values('Joao', '188.666.555-00', 'joao@gmail.com', 'M');
   
   insert into funcionarios(func_nome, func_cpf, func_email, func_sexo)
   values('Joao', '288.666.555-00', 'joao2@gmail.com', 'M');
  
   insert into funcionarios(func_nome, func_cpf, func_email, func_sexo)
   values('Joao', '388.666.555-00', 'joao3@gmail.com', 'M');
  
   insert into funcionarios(func_nome, func_cpf, func_email, func_sexo)
   values('Joao', '488.666.555-00', 'joao4@gmail.com', 'M');
  
   insert into funcionarios(func_nome, func_cpf, func_email, func_sexo)
   values('Joao', '588.666.555-00', 'joao5@gmail.com', 'M');
   
  
  select * from funcionarios;
  
  
  -- inserindo dados na tabela 'conjugues'

   insert into conjuges(conj_nome, conj_dt_nasc, conj_func_id)
   values('Maria do Bairro', '1990-04-15', 1);
  
   insert into conjuges(conj_nome, conj_dt_nasc, conj_func_id)
   values('Maria da Rua', '1980-08-17', 2);
  
   insert into conjuges(conj_nome, conj_dt_nasc, conj_func_id)
   values('Caio da Rocha', '1994-08-13', 3);
  
   insert into conjuges(conj_nome, conj_dt_nasc, conj_func_id)
   values('Maria do Bairro', '1996-07-25', 4);
  
   insert into conjuges(conj_nome, conj_dt_nasc, conj_func_id)
   values('Maria do Bairro', '1995-04-04', 5);
  
  -- inserindo dados na tabela filhos
  
  insert into filhos(filho_nome, filho_dt_nasc, filho_func_id)
  values('Bruno', '1993-06-04', 6);
  
  insert into filhos(filho_nome, filho_dt_nasc, filho_func_id)
  values('Bruna', '1994-09-22', 7);
  
  insert into filhos(filho_nome, filho_dt_nasc, filho_func_id)
  values('Decio', '1993-06-02', 8);
  
          
          -- usando um apelido para as colunbas 'AS'
          
          
          select 
          
          conj_nome as 'nome do conjuge',
          conj_dt_nasc as 'data de nascimento do pestinha',
          conj_func_id as 'id do funcionario'
          
          --
          
          from conjuges;
          
          select
          
          filho_nome as 'nome do guri',
          filho_dt_nacs as 'data de nascimento',
          filho_func_id as 'Pai do guri'
          
          
          -- distinct = exibe dados repetidos uma unica vez
          
          select distinct func_nome, func_email, from funcionarios;
          
          
		  -- Limit = limita o resultado da consulta
          select * from funcionarios 
          limit 0, 2;
          
		  select * from funcionarios 
          limit 1, 3;
          
          -- ordenação do resultado da consulta
          select * from funcionarios 
          order by func_nome asc;
          
		  select * from funcionarios 
          order by func_nome desc;
          
          select * from conjuges
          order by conj_dt_nasc desc;
          
          -- colunas virtuais
          
          select 
          
          conj_nome, 'teste' as 'esposas'
          
          from conjuges;
          
          
         
          --
          
		  select 
          
          conj_nome, 'esposa' as 'coluna virtual'
          
          from conjuges 
          
          -- -----------------
          
          create table cursos(
          
          curso_id      int      (10),
          curso_nome    varchar  (30),
          curso_preco   decimal  (6,2)
          );
          
          insert into cursos(curso_id, curso_nome, curso_preco)
          values(1, 'programaçao sql', 1200);
          
          
          select curso_nome as  'nome do curso',
                 curso_preco as 'preço atual',
                 curso_preco + (curso_preco * 10/100) as 'Reajuste'
                 
                 from cursos;
                 
                 
                 -- --------------- EXERCÍCIO-------------------
                 
                 
      CREATE DATABASE ZOOLOGICO;
      USE ZOOLOGICO;
      
      CREATE TABLE ANIMAIS(
      
      ANIMAL_COD        INT(8)         PRIMARY KEY AUTO_INCREMENT,
      ANIMAL_TIPO       CHAR(15),
      ANIMAL_NOME       CHAR(30),
      ANIMAL_IDADE      TINYINT,
      ANIMAL_VALOR      DECIMAL(10,2) 
      
      );                                                                                      -- 1
      
      INSERT INTO ANIMAIS(ANIMAL_TIPO, ANIMAL_NOME, ANIMAL_IDADE, ANIMAL_VALOR)
      VALUES('CACHORRO', 'DJUDI', 3, 300.00);
      
      INSERT INTO ANIMAIS(ANIMAL_TIPO, ANIMAL_NOME, ANIMAL_IDADE, ANIMAL_VALOR)
      VALUES('CACHORRO', 'SULA', 5, 300.00);
       
	  INSERT INTO ANIMAIS(ANIMAL_TIPO, ANIMAL_NOME, ANIMAL_IDADE, ANIMAL_VALOR)
      VALUES('CACHORRO', 'SARINA', 7, 300.00);
                 
      INSERT INTO ANIMAIS(ANIMAL_TIPO, ANIMAL_NOME, ANIMAL_IDADE, ANIMAL_VALOR)
      VALUES('GATO', 'PIPA', 2, 500.00);           
                 
	  INSERT INTO ANIMAIS(ANIMAL_TIPO, ANIMAL_NOME, ANIMAL_IDADE, ANIMAL_VALOR)
      VALUES('GATO', 'SARANGUE', 2, 500.00);                 
                 
	  INSERT INTO ANIMAIS(ANIMAL_TIPO, ANIMAL_NOME, ANIMAL_IDADE, ANIMAL_VALOR)
      VALUES('GATO', 'CLARENCES', 1, 500.00);                 
                  
	  INSERT INTO ANIMAIS(ANIMAL_TIPO, ANIMAL_NOME, ANIMAL_IDADE, ANIMAL_VALOR)
      VALUES('CORUJA', 'AGNES', 0, 700.00);    
      
	  INSERT INTO ANIMAIS(ANIMAL_TIPO, ANIMAL_NOME, ANIMAL_IDADE, ANIMAL_VALOR)
      VALUES('CORUJA', 'ARABELA', 1, 700.00);  
                 
	  INSERT INTO ANIMAIS(ANIMAL_TIPO, ANIMAL_NOME, ANIMAL_IDADE, ANIMAL_VALOR)
      VALUES('SAPO', 'QUASH', 1, 100.00);        
      
	  INSERT INTO ANIMAIS(ANIMAL_TIPO, ANIMAL_NOME, ANIMAL_IDADE, ANIMAL_VALOR)
      VALUES('PEIXE', 'FISH', 0, 100.00);                                                        -- 2
          
          -- ---------------------------------------
          
          SELECT * FROM ANIMAIS;    -- --- EXIBIR TODAS AS COLUNAS E TODAS AS LINHAS DA TABELA          -- 3
          
		 -- ----------------------------------------
         
         SELECT DISTINCT  ANIMAL_TIPO, ANIMAL_NOME from ANIMAIS;  -- MOSTRA APENAS AS COLUNAS DESEJADAS -- 4
         -- ----------------------------------------
         
		 SELECT DISTINCT  ANIMAL_TIPO, ANIMAL_NOME, ANIMAL_IDADE from ANIMAIS;                          -- 5
         
         -- ----------------------------------------


		 SELECT
          
		 ANIMAL_TIPO AS 'TIPO',
         ANIMAL_NOME AS 'NOME'
         
          
         FROM ANIMAIS;                -- 6
          
         -- -----------------------------  
		
         SELECT
          
		 ANIMAL_TIPO AS 'TIPO',
         ANIMAL_NOME AS 'NOME',
         ANIMAL_IDADE AS 'TEMPO DE VIDA'
         
         FROM ANIMAIS;                                       -- 7
         
         -- ----------------------------------------------------------------------------
         
         
          SELECT
         
          ANIMAL_TIPO, 'ANIMAL DOMESTICO' as 'PROCEDENCIA',
          ANIMAL_NOME, 'ANIMAL DOMESTICO' as 'PROCEDENCIA',
          ANIMAL_IDADE AS 'TEMPO DE VIDA'
          FROM ANIMAIS;                                      -- 8
          
          -- ---------------------------------------------------------------------------
          
          
		 SELECT
          
		 ANIMAL_TIPO AS 'TIPO',
         ANIMAL_NOME AS 'NOME',
         ANIMAL_IDADE AS 'IDADE',
         ANIMAL_VALOR AS 'VALOR ORIGINAL',
		 ANIMAL_VALOR + (ANIMAL_VALOR * 10/100) as 'VALOR DE VENDA'
         
         
         FROM ANIMAIS;                                       -- 9
         
         -- ----------------------------------------------------------------------------
         
         SELECT 
         
         ANIMAL_TIPO AS 'TIPO',
         ANIMAL_VALOR AS 'VALOR ORIGINAL',
		 ANIMAL_VALOR + (ANIMAL_VALOR * 10/100) as 'VALOR DE VENDA'
         
         FROM ANIMAIS;                                       -- 10
         
         -- -----------------------------------------------------------------------------
         
		 SELECT DISTINCT
         
         ANIMAL_TIPO AS 'TIPO',
         ANIMAL_VALOR AS 'VALOR ORIGINAL',
		 ANIMAL_VALOR + (ANIMAL_VALOR * 10/100) as 'VALOR DE VENDA'
         FROM ANIMAIS;                                               -- 11
         
        
         -- ------------------------------------------------------------------------------
     SELECT * FROM ANIMAIS
     LIMIT 4, 2;                                                        -- 12
     
     -- ----------------------------------------------------------------------------------
          
          
          
          
          
         
          
         
         
         
         
         
         
         
         
         
          




