


        CREATE DATABASE FUNCIONARIOS2;
        USE FUNCIONARIOS2;
        
        CREATE TABLE BRINQUEDOS(
        
        BRINQ_COD          INT(10),
        BRINQ_NOME         CHAR(50),
        BRINQ_IDADE        TINYINT,
        BRINQ_QTD          INT(10),
        BRINQ_VAL          DECIMAL(10,2)
        
        );
        
        -- --------------------------- Exercicio 1----------------------------------------
        
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
        
        -- --------------------------------------EXERCICIO 2------------------------------------
       
       UPDATE BRINQUEDOS
       SET BRINQ_VAL = BRINQ_VAL + 10;
       
	   SELECT * FROM BRINQUEDOS;
       
       -- ----------------------------------------EXERCICIO 3------------------------------------
       
	   UPDATE BRINQUEDOS
       SET BRINQ_VAL = BRINQ_VAL + (BRINQ_VAL * 10 / 100) 
       WHERE BRINQ_NOME like 'C%';
      
       SELECT * FROM BRINQUEDOS;
       
       -- ----------------------------------------EXERCICIO 4------------------------------------
       
       UPDATE BRINQUEDOS
       SET BRINQ_QTD = BRINQ_QTD + 10
       WHERE BRINQ_VAL < 50.00;

       SELECT * FROM BRINQUEDOS;
       -- ----------------------------------------EXERCICIO 5-------------------------------------
       
       UPDATE BRINQUEDOS
       SET BRINQ_IDADE = BRINQ_IDADE -1
       WHERE BRINQ_NOME LIKE '%BEBE%';
       
       SELECT * FROM BRINQUEDOS;
    
       -- ----------------------------------------EXERCICIO 6-------------------------------------
       
       SELECT * FROM BRINQUEDOS
       WHERE BRINQ_NOME NOT LIKE 'B%';
       
       -- ----------------------------------------EXERCICIO 7--------------------------------------
       
       UPDATE BRINQUEDOS
       SET BRINQ_IDADE = BRINQ_IDADE - 1, BRINQ_VAL = BRINQ_VAL + 20
       WHERE BRINQ_NOME LIKE '%GATINHA%';
       
       SELECT * FROM BRINQUEDOS;
	
       -- ----------------------------------------EXERCICIO 8--------------------------------------
       
	   UPDATE BRINQUEDOS
       SET BRINQ_VAL = BRINQ_VAL + 5
       WHERE BRINQ_NOME LIKE '%BATATA%' OR BRINQ_NOME LIKE '%BATATINHA%';
      
       SELECT * FROM BRINQUEDOS;

	   -- ----------------------------------------EXERCICIO 9---------------------------------------
       
       SELECT * FROM BRINQUEDOS
       WHERE BRINQ_VAL IN(30, 40, 60);
       
       -- ----------------------------------------EXERCICIO 10--------------------------------------
       
       update brinquedos
       set brinq_val = brinq_val + 20.00, brinq_qtd = brinq_qtd - 5, brinq_idade = brinq_idade + 1
       where brinq_val <= 30.00 and brinq_qtd >= 100 and brinq_nome like 'B%';


-- -----------------------------------------------Exercicio 11 ---------------------------------------
       update brinquedos
       set brinq_val = brinq_val - (brinq_val * 10/100)
       Where brinq_val between 100.00 and 150.00;

-- ------------------------------------------------EXERCICIO 12 ------------------------------------------

      select * from brinquedos
	  where brinq_val not between 40.00 and 150.00;

-- ------------------------------------------------EXERCICIO 13 ----------------------------------------

      delete from brinquedos
      where brinq_cod = 10;

-- ------------------------------------------------EXERCICIO 14 -----------------------------------------

     delete from brinquedos
     where brinq_idade >= 10;

-- ------------------------------------------------EXERCICIO 15 -----------------------------------------

     select * from brinquedos
     where length(brinq_nome) <=6;

-- ------------------------------------------------EXERCICIO 16 -----------------------------------------

     select * from brinquedos
	 where brinq_nome like '%papa%' or brinq_nome like '%galinha%';

-- ------------------------------------------------EXERCICIO 17 ------------------------------------------

    select * from brinquedos
    where brinq_idade <=3;

-- -------------------------------------------------------------------------------------------------------------------------------       
       
       select * from brinquedos;
       
 
       
       
       
       
       
        
        