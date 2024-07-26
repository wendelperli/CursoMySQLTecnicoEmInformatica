CREATE DATABASE CLIENTES;
USE CLIENTES;


-- TABELA

CREATE TABLE CLIENTES(

   CLIENTE_ID   INT(5) PRIMARY KEY AUTO_INCREMENT,
   CLIENTE_NOME VARCHAR(40) NOT NULL


);

-- TABELA 'CONTATOS':

CREATE TABLE CONTATOS (

  CONTATO_ID      INT(5) PRIMARY KEY AUTO_INCREMENT,
  CONTATO_TEL     VARCHAR(15) NOT NULL,
  CONTATO_TIPO    VARCHAR(15) ,
  CONTATO_CLI_ID  INT(5),

  FOREIGN KEY (CONTATO_CLI_ID) REFERENCES CLIENTES(CLIENTE_ID)
  ON DELETE CASCADE ON UPDATE CASCADE
);


    -- INSERT DAS TABELAS
    -- INSERT NA TABELA CLIENTES
    
   INSERT INTO CLIENTES(CLIENTE_NOME)
   VALUE('FLÁVIO'), ('JOAO'), ('MARIA'), ('STEVE');
   
   -- INSERT NA TABELA 'CONTATOS'
   
   INSERT INTO CONTATOS (CONTATO_TEL, CONTATO_TIPO, CONTATO_CLI_ID)
   VALUES('(11)9999-9999', 'CELULAR',1),
   
		 ('(11)8888-9999', 'CELULAR',1),
          
		 ('(11)5555-9999', 'RESIDENCIAL',1),
           
		 ('(11)7777-9999', 'CELULAR',2),
         
         ('(11)6666-9999', 'COMERCIAL',3),
         
         ('(11)2222-9999', 'CELULAR',NULL),
         
         ('(11)1111-9999', 'CELULAR',NULL);
         
         
         SELECT * FROM CLIENTES;
         SELECT * FROM CONTATOS;
   
        -- JOINS:
        
        SELECT 
        
        CLIENTES.CLIENTE_NOME,
        CONTATOS.CONTATO_TEL
        FROM CLIENTES INNER JOIN CONTATOS
        ON CLIENTES.CLIENTE_ID = CONTATO_CLI_ID;             -- X=Y E Y=X
        
        
        -- OUTER JOINS:
        
        SELECT
        
           CLIENTES.*,
           CONTATOS.CONTATO_TEL,
           CONTATOS.CONTATO_TIPO
        
        FROM CLIENTES LEFT JOIN CONTATOS
        ON CLIENTES.CLIENTE_ID = CONTATOS.CONTATO_CLI_ID;
        
        
        -- RIGTH JOIN 
        
        SELECT
        
        CLIENTES.*,
        CONTATOS.CONTATO_TEL,
        CONTATOS.CONTATO_TIPO
        
        FROM CLIENTES RIGHT JOIN CONTATOS
        ON CLIENTES.CLIENTE_ID = CONTATOS.CONTATO_CLI_ID;
   
        -- CROSS JOIN 
        
        SELECT
        CLIENTES.*,
        CONTATOS.*
        
        FROM CLIENTES CROSS JOIN CONTATOS
        ON CLIENTES.CLIENTE_ID = CONTATOS.CONTATO_CLI_ID;
        
        
        -- ------------------------------------------------------------------
        -- ------------------------------------------------------------------
        
        
   
   
   
   
   
   
