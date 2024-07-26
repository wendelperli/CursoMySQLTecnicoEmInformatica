

       create database DB_CDS;
       use DB_CDS;
       
       -- ----------------------------------------------exercicio 3 ---------------------------------------
       
       
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
       
       
        -- -----------Exercicio 4 -----------------------------iserindo os dados----------------------------------------
        
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
        
        -- ----------------------------- Exercicio 5-----------------------------------
        
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
       
       -- -----------------------Exercicio 6 -------------------------------------------------
       
       -- ----------Cliente--------------------
        insert into Cliente (cod_cli, cod_cid, nome_cli, end_cli, renda_cli, sexo_cli)
        values(1, 1, 'José Nogueira', 'Rua A', 1500.00, 'M');
       
        insert into Cliente (cod_cli, cod_cid, nome_cli, end_cli, renda_cli, sexo_cli)
        values(2, 1, 'Angelo Pereira', 'Rua B',	2000.00, 'M');
       
        insert into Cliente (cod_cli, cod_cid, nome_cli, end_cli, renda_cli, sexo_cli)
        values(3, 1, 'Além Mar Paranhos', 'Rua C', 1500.00,	'F');
        
        insert into Cliente (cod_cli, cod_cid, nome_cli, end_cli, renda_cli, sexo_cli)
        values(4, 1, 'Catarina Souza', 'Rua D',	892.00,	'F');
       
        insert into Cliente (cod_cli, cod_cid, nome_cli, end_cli, renda_cli, sexo_cli)
        values(5, 1, 'Vagner Costa', 'Rua E', 950.00, 'M');
       
        insert into Cliente (cod_cli, cod_cid, nome_cli, end_cli, renda_cli, sexo_cli)
        values(6, 2, 'Antenor da Costa', 'Rua F', 1582.00, 'M');
       
        insert into Cliente (cod_cli, cod_cid, nome_cli, end_cli, renda_cli, sexo_cli)
        values(7, 2, 'Maria Amélia de Souza', 'Rua G', 1152.02, 'F');
       
        insert into Cliente (cod_cli, cod_cid, nome_cli, end_cli, renda_cli, sexo_cli)
        values(8, 2, 'Paulo Roberto Silva',	'Rua H', 3250.00, 'M');
       
        insert into Cliente (cod_cli, cod_cid, nome_cli, end_cli, renda_cli, sexo_cli)
        values(9, 3, 'Fátima Souza', 'Rua I', 1632.00, 'F');
       
        insert into Cliente (cod_cli, cod_cid, nome_cli, end_cli, renda_cli, sexo_cli)
        values(10, 3, 'Joel da Rocha', 'Rua J',	2000.00, 'M');
        
        
     
       
       
       -- ----------Cidade-----------------------------------------
       
        insert into Cidade (cod_cid, sigla_est, nome_cid)
        values(1,	'SP', 'São Paulo');	
        
        insert into Cidade (cod_cid, sigla_est, nome_cid)
        values(2,	'SP', 'Sorocaba'	);
        
        insert into Cidade (cod_cid, sigla_est, nome_cid)
        values(3,	'SP', 'Jundiaí');
        
        insert into Cidade (cod_cid, sigla_est, nome_cid)
        values(4,	'SP', 'Americana');
        
        insert into Cidade (cod_cid, sigla_est, nome_cid)
        values(5,	'SP', 'Araraquara');
        
        insert into Cidade (cod_cid, sigla_est, nome_cid)
        values(6,	'MG', 'Ouro Preto');
        
        insert into Cidade (cod_cid, sigla_est, nome_cid)
        values(7,	'RJ', 'Cachoeiro de Itapemirim');
        
        -- --------Estado-----------------------------------------
        
        insert into Estado (sigla_est, nome_est)
        values('SP', 'São Paulo');
        
        insert into Estado (sigla_est, nome_est)
        values('MG', 'Minas Gerais');
        
		insert into Estado (sigla_est, nome_est)
        values('RJ', 'Rio de Janeiro');
        
        -- --------Conjuge----------------------------------------
        
         insert into Conjuge (cod_cli, nome_con, renda_con, sexo_con)
         values(1, 'Carla Nogueira', 2500.00, 'F');
        
         insert into Conjuge (cod_cli, nome_con, renda_con, sexo_con)
         values(2, 'Emília Pereira', 5500.00, 'F');
        
         insert into Conjuge (cod_cli, nome_con, renda_con, sexo_con)
         values(6, 'Altiva da Costa', 3000.00, 'F');
        
         insert into Conjuge (cod_cli, nome_con, renda_con, sexo_con)
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
      
        ALTER TABLE PEDIDO 
        ADD FOREIGN KEY (cod_CLI)    REFERENCES CLIENTE(cod_CLI)
        ON DELETE CASCADE ON UPDATE CASCADE;
      
      create table Dependente (
      
      cod_dep      int(10) not null primary key,
      cod_func     int(10) not null, -- -------------------Chave estrangeira referenciando a tabela funcionario
      nome_dep     varchar(100) not null, 
      sexo_dep     enum ('M', 'F') not null default 'M',
      
        FOREIGN KEY (cod_func)    REFERENCES funcionario(cod_func)
        ON DELETE CASCADE ON UPDATE CASCADE
      
      );
      
      
      -- ----------------------------------------Exercicio 8---------------------------------------
      
      -- -----------Funcionario-------------------
      
         insert into funcionario (cod_func, nome_func, end_func, sal_func, sex_func)
         values(1,	'Vânia Gabriela Pereira',	'Rua A',	2500.00,	'F');
         
         
		 insert into funcionario (cod_func, nome_func, end_func, sal_func, sex_func)
         values(2,	'Norberto Pereira da Silva',	'Rua B',	300.00,	'M');
         
         
		 insert into funcionario (cod_func, nome_func, end_func, sal_func, sex_func)
         values(3,	'Olavo Linhares',	'Rua C',	580.00,	'M');
         
         
		 insert into funcionario (cod_func, nome_func, end_func, sal_func, sex_func)
         values(4,	'Paula da Silva',	'Rua D',	3000.00,	'F');
         
	
		 insert into funcionario (cod_func, nome_func, end_func, sal_func, sex_func)
         values(5,	'Rolando Rocha',	'Rua E',	2000.00,	'M');
         
         -- -----------Dependente---------------
         
         insert into Dependente (cod_dep, cod_func, nome_dep, sexo_dep)
         values( 1,	1,	'Ana Pereira',	'F');
         
		 insert into Dependente (cod_dep, cod_func, nome_dep, sexo_dep)
         values(2,	1,	'Roberto Pereira',	'M');
         
		 insert into Dependente (cod_dep, cod_func, nome_dep, sexo_dep)
         values( 3,	1,	'Celso Pereira',	'M');
         
		 insert into Dependente (cod_dep, cod_func, nome_dep, sexo_dep)
         values( 4,	3,	'Brisa Linhares',	'F');
         
		 insert into Dependente (cod_dep, cod_func, nome_dep, sexo_dep)
         values( 5,	3,	'Mari Sol Linhares',	'F');
         
		 insert into Dependente (cod_dep, cod_func, nome_dep, sexo_dep)
         values( 6,	4,	'Sonia da Silva',	'F');
         
         
         -- -----------Pedido----------------------
       
        insert into Pedido (num_ped, cod_cli, cod_fun, data_ped, val_ped)
		values(1,	1,	2,	2/5/2012,	1500.00);
         
		insert into Pedido (num_ped, cod_cli, cod_fun, data_ped, val_ped)
		values(2,	3,	4,	2/5/2012,	50.00);
        
		insert into Pedido (num_ped, cod_cli, cod_fun, data_ped, val_ped)
		values(3,	4,	3,	2/6/2012,	100.00);
        
		insert into Pedido (num_ped, cod_cli, cod_fun, data_ped, val_ped)
		values(4,	1,	4,	2/2/2013,	200.00);
        
		insert into Pedido (num_ped, cod_cli, cod_fun, data_ped, val_ped)
		values(5,	7,	5,	2/3/2013,	300.00);
        
		insert into Pedido (num_ped, cod_cli, cod_fun, data_ped, val_ped)
		values(6,	4,	4,	2/3/2013,	100.00);
        
		insert into Pedido (num_ped, cod_cli, cod_fun, data_ped, val_ped)
		values(7,	5,	5,	2/3/2013,	50.00);
        
		insert into Pedido (num_ped, cod_cli, cod_fun, data_ped, val_ped)
		values(8,	8,	2,	2/3/2013,	50.00);
	
		insert into Pedido (num_ped, cod_cli, cod_fun, data_ped, val_ped)
		values(9,	2,	2,	2/3/2013,	2000.00);
        
		insert into Pedido (num_ped, cod_cli, cod_fun, data_ped, val_ped)
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
       
       -- ------------------------------Exercicio 10----------------------------------------------
       
       -- ------------------titulo_artista-----------------
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
       
       -- ------------------------------Exercicio 11----------------------------------------------
                                   
                                  -- -------------------------------
                                   
       -- ---------------------------------ASSOCIAÇÃO DE TABELAS----------------------------------,
       
       
       -- EXERCICIO 1-------------
       
       SELECT
       
       TITULO.NOME_CD,
       GRAVADORA.NOME_GRAV
       
       FROM TITULO INNER JOIN GRAVADORA
	   ON TITULO.COD_GRAV = GRAVADORA.COD_GRAV;
       
       -- EXERCICIO 2-------------
       
       SELECT
       
       TITULO.NOME_CD,
       CATEGORIA.NOME_CAT
       
       FROM TITULO INNER JOIN CATEGORIA
       ON TITULO.COD_CAT = CATEGORIA.COD_CAT;
       
       -- EXERCICIO 3---------------
       
       SELECT 
       
       TITULO.NOME_CD,
       GRAVADORA.NOME_GRAV,
       CATEGORIA.NOME_CAT
       
       
       FROM TITULO INNER JOIN GRAVADORA
       ON TITULO.COD_GRAV = GRAVADORA.COD_GRAV
       
       INNER JOIN CATEGORIA
       ON TITULO.COD_CAT = CATEGORIA.COD_CAT;
       
    
     -- EXERCICIO 4
     
     
     SELECT
     
     CLIENTE.NOME_CLI,
     TITULO.NOME_CD
     
     
     FROM CLIENTE INNER JOIN PEDIDO
     ON CLIENTE.COD_CLI = PEDIDO.COD_CLI
     
     INNER JOIN TITULO_PEDIDO
     ON PEDIDO.NUM_PED = TITULO_PEDIDO.NUM_PED
     
     INNER JOIN TITULO
     ON TITULO_PEDIDO.COD_TIT = TITULO.COD_TIT;
     
     
     
     -- EXERCICIO 5 
     

     
     SELECT 
     
     FUNCIONARIO.NOME_FUNC,
     PEDIDO.NUM_PED,
     PEDIDO.DATA_PED,
     CLIENTE.NOME_CLI,
     PEDIDO.VAL_PED
     
     
	
     FROM FUNCIONARIO INNER JOIN PEDIDO
     ON FUNCIONARIO.COD_FUNC = PEDIDO.COD_FUN
     
     INNER JOIN CLIENTE
     ON PEDIDO.COD_CLI = CLIENTE.COD_CLI;
     
     -- EXERCICIO 6 
     
     SELECT
     
     FUNCIONARIO.NOME_FUNC,
     DEPENDENTE.NOME_DEP
     
     
     FROM FUNCIONARIO INNER JOIN DEPENDENTE
     ON FUNCIONARIO.COD_FUNC = DEPENDENTE.COD_FUNC;
     
  -- EXERCICIO 7
  
  SELECT 
  
  CLIENTE.NOME_CLI,
  CONJUGE.NOME_CON
  
  FROM CLIENTE INNER JOIN CONJUGE
  ON CLIENTE.COD_CLI = CONJUGE.COD_CLI;
  
  -- EXERCICIO 8 
  
  SELECT
  
  CLIENTE.NOME_CLI,
  CONJUGE.NOME_CON
  
  FROM CLIENTE LEFT JOIN CONJUGE
  ON CLIENTE.COD_CLI = CONJUGE.COD_CLI;
  
  -- EXERCICIO 9
  
  SELECT
  
  PEDIDO.NUM_PED,
  PEDIDO.VAL_PED,
  FUNCIONARIO.COD_FUNC,
  CLIENTE.NOME_CLI,
  CONJUGE.NOME_CON
  
  
  FROM CLIENTE INNER JOIN PEDIDO
  ON CLIENTE.COD_CLI = PEDIDO.COD_CLI
  
  INNER JOIN FUNCIONARIO
  ON FUNCIONARIO.COD_FUNC = PEDIDO.COD_FUN
  
  INNER JOIN CONJUGE
  ON CONJUGE.COD_CLI = CLIENTE.COD_CLI;
  
  
  
  
  -- ----------------------------------EXERCICIO 1-------------------------------------
  
   SELECT COUNT(*) FROM PEDIDO;
   
   -- ---------------------------------EXERCICIO 2-------------------------------------
   
   INSERT INTO CATEGORIA(COD_CAT, NOME_CAT)
   VALUES (5, 'LIXO');
  
   -- ---------------------------------EXERCICIO 3-------------------------------------
   
   INSERT INTO TITULO (Cod_Tit,Cod_Cat,	Cod_Grav, Nome_Cd, Val_Cd, Qtd_Estq)
   VALUES (11, 5, 4, 'MC PORCARIA', 35.00, 60);
   
   -- ---------------------------------EXERCICIO 4-------------------------------------
   
   SELECT AVG(VAL_PED) FROM PEDIDO;
   
   -- ---------------------------------EXERCICIO 5-------------------------------------
   
   SELECT MAX(VAL_PED) FROM PEDIDO;
   
   -- ---------------------------------EXERCICIO 6-------------------------------------
       
   SELECT MIN(VAL_PED) FROM PEDIDO;
   
   -- ---------------------------------EXERCICIO 7-------------------------------------

   SELECT 
   
   PEDIDO.VAL_PED,
   PEDIDO.DATA_PED
   
   FROM PEDIDO;
   
    -- ---------------------------------EXERCICIO 8-------------------------------------
    
    SELECT MAX(RENDA_CLI) FROM CLIENTE;
    
	-- ---------------------------------EXERCICIO 9-------------------------------------
    
    
     
	-- ---------------------------------EXERCICIO 10-------------------------------------
    
	SELECT MIN(SAL_FUNC) FROM FUNCIONARIO;
           
	-- ---------------------------------EXERCICIO 11-------------------------------------
    
    SELECT AVG(SAL_FUNC) FROM FUNCIONARIO;
       
	-- ---------------------------------EXERCICIO 12-------------------------------------
    
    SELECT MAX(QTD_ESTQ) FROM TITULO;
        
	-- ---------------------------------EXERCICIO 13-------------------------------------
         
	SELECT COUNT(*) FROM PEDIDO;
          
	-- ---------------------------------EXERCICIO 14-------------------------------------
    
    
		
	-- ---------------------------------EXERCICIO 15-------------------------------------
           
           
    -- ----------------------------------------------------------------------------------        
     
      
      
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       