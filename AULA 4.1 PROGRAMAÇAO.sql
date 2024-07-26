   
   
   CREATE DATABASE CLINICA;
   USE CLINICA;
   
   
   CREATE TABLE MEDICO(
   
        MEDICO_CRM                INT(11)      PRIMARY KEY,    -- PK OK
        MEDICO_NOME               VARCHAR(40),
        MEDICO_ESPECIALIZACAO     VARCHAR(20),
        MEDICO_GRADUACAO          VARCHAR(15),
        MEDICO_CIDADE             VARCHAR(40),
        MEDICO_ESTADO             VARCHAR(20),
        MEDICO_RUA                VARCHAR(40),
        MEDICO_CEP                INT(10),
        MEDICO_NUMERO             INT(5),
        MEDICO_TELEFONE           INT(10)
   
   );
   
   
   CREATE TABLE FICHA(
	   
       FICHA_ID             INT(10)           PRIMARY KEY,            -- PK
       FICHA_DESCRICAO      VARCHAR(2000),
       FICHA_MEDICO_CRM     INT(11),                 -- FK OK
       FICHA_PACIENTE_ID    INT(10),                 -- FK OK
   
       FOREIGN KEY (FICHA_MEDICO_CRM)    REFERENCES MEDICO(MEDICO_CRM)
	   ON DELETE CASCADE ON UPDATE CASCADE,
       FOREIGN KEY (FICHA_PACIENTE_ID)   REFERENCES PACIENTE(PACIENTE_ID)
	   ON DELETE CASCADE ON UPDATE CASCADE

   ); 
   
   
   CREATE TABLE EXAME(
       
       EXAME_ID           INT(10)             PRIMARY KEY,        -- PK
       EXAME_NOME         VARCHAR(40),
       EXAME_DESCRICAO    VARCHAR(2000),
       EXAME_CUSTO        DECIMAL(6,2)

   );
   
   
   CREATE TABLE PACIENTE (
       
       PACIENTE_ID              INT(10)         PRIMARY KEY,      -- PK
       PACIENTE_NOME            VARCHAR(40),
       PACIENTE_CPF             INT(10),
       PACIENTE_ESTADO          VARCHAR(20),
       PACIENTE_TELEFONE        INT(15),
       PACIENTE_UF              CHAR(2),
       PACIENTE_CIDADE          VARCHAR(30),
       PACIENTE_BAIRRO          VARCHAR(30),
       PACIENTE_CEP             INT(10),
       PACIENTE_RUA             VARCHAR(40),
       PACIENTE_NUMERO          INT(10)
   
   );
   
   
   CREATE TABLE GUIAS ( 
   
	   GUIA_ID                     INT(10)                PRIMARY KEY,     -- PK
       GUIA_NOME                   VARCHAR(40),
       GUIA_EXAME_REALIZADO        VARCHAR(20),
       GUIA_CONSUTA_ID             INT(11),                   -- FK
       GUIA_CUSTO_EXAME            DECIMAL(6,2),
       GUIA_CUSTO_CCONSULTA        DECIMAL(6,2),
       GUIA_CONVENIO_ID            INT(10),                   -- FK
       GUIA_MEDICO_CRM             INT(10),                   -- FK 
       GUIA_PACIENTE_ID            INT(10),                    -- FK
       
           FOREIGN KEY (GUIA_CONSUTA_ID)   REFERENCES CONSULTA(CONSULTA_ID)
		   ON DELETE CASCADE ON UPDATE CASCADE,
           FOREIGN KEY (GUIA_CONVENIO_ID)  REFERENCES CONVENIO(CONVENIO_ID)
		   ON DELETE CASCADE ON UPDATE CASCADE,
           FOREIGN KEY (GUIA_MEDICO_CRM)   REFERENCES MEDICO(MEDICO_CRM)
		   ON DELETE CASCADE ON UPDATE CASCADE,
           FOREIGN KEY (GUIA_PACIENTE_ID)  REFERENCES PACIENTE(PACIENTE_ID) 
		   ON DELETE CASCADE ON UPDATE CASCADE

       );
       
    CREATE TABLE CONVENIO (
     
	   CONVENIO_ID                INT(10)                   PRIMARY KEY,   -- PK
       CONVENIO_NOME              VARCHAR(40),
       CONVENIO_CNPJ              INT(10),
       CONVENIO_VALOR             DECIMAL(6,2)
   
   );
   
   
   CREATE TABLE PAGAMENTO(
                                                             
       PAGAMENTO_ID                   INT(10)               PRIMARY KEY,     -- PK
	   PAGAMENTO_CUSTO_DO_EXAME       DECIMAL(6,2),
	   PAGAMENTO_FORM_PAG             VARCHAR(15),
	   PAGAMENTO_CUSTO_DA_CONSULTA    DECIMAL(6,2),
	   PAGAMENTO_MENSALIDADE          DECIMAL(6,2), 
	   PAGAMENTO_CONVENIO_ID          INT(10),                               -- FK
	   PAGAMENTO_VALOR_TOTAL          DECIMAL(6,2),
       
        FOREIGN KEY (PAGAMENTO_CONVENIO_ID) REFERENCES CONVENIO(CONVENIO_ID) 
        ON DELETE CASCADE ON UPDATE CASCADE
   
   );
   
   CREATE TABLE CONSULTA (
   
       CONSULTA_ID                   INT(10)                PRIMARY KEY,       -- PK
       CONSULTA__DESCRICAO           VARCHAR(500), 
       CONSULTA_MEDICO_CRM           INT(10),                                 -- FK
       CONSULTA_PACIENTE_ID          INT(10),                                  -- FK 
       
         FOREIGN KEY (CONSULTA_MEDICO_CRM)   REFERENCES MEDICO(MEDICO_CRM) 
		 ON DELETE CASCADE ON UPDATE CASCADE,

		 FOREIGN KEY (CONSULTA_PACIENTE_ID)  REFERENCES PACIENTE(PACIENTE_ID)
		 ON DELETE CASCADE ON UPDATE CASCADE

   ); 
   
   
   
   
   
   
   
   
   
   
   