-- Comentário de Linha
/*
   Comentário de Bloco
*/
-- Criando o Banco de Dados

CREATE DATABASE VAI_CORINTHIANS;
-- -------------------------------------

USE VAI_CORINTHIANS;

-- Criando as tabelas
CREATE TABLE SOCIOS(
      SOCIO_ID         INT(10), -- 0000 ATÉ 9999
      SOCIO_NOME       VARCHAR(40), -- JOÃO DA SILVA 
      SOCIO_END_RUA    VARCHAR(40),
      SOCIO_END_NRO    VARCHAR(6),
      SOCIO_END_COMPL  VARCHAR(20),
      SOCIO_END_BAIRRO VARCHAR(20),
      SOCIO_END_CIDADE VARCHAR(30),
      SOCIO_END_UF     CHAR(2), -- CHAR NÃO COMPRIME O CAMPO
      SOCIO_END_CEP    CHAR(9), 
      SOCIO_TEL_RES    VARCHAR(15), 
      SOCIO_TEL_CEL    VARCHAR(15));
      
      CREATE TABLE TIMAO (
      TIMAO_ID                 INT(5),
      TIMAO_NOME               VARCHAR(30)
      
      );
      
 -- EXIBIR AS BASES DE DADOS DO SERVIDOR
 SHOW DATABASES;

-- EXIBIR AS TABELAS
SHOW TABLES;

-- EXIBIR COLUNAS DA TABELA
SHOW COLUMNS FROM SOCIOS;
DESC SOCIOS;
-- ----------------------------------------------
-- ----------------------------------------------
-- EXCLUSÃO 
DROP TABLE TIMAO;

--
DROP DATABASE VAI_CORINTHIANS;

-- ALTERAR TABELA 
ALTER TABLE SOCIOS 
ADD COLUMN SOCIO_EMAIL    VARCHAR(50);


-- EXCLUIR COLUNA
ALTER TABLE SOCIOS 
DROP COLUMN SOCIO_END_RUA


-- ALTERAR COLUNA
ALTER TABLE SOCIOS
CHANGE COLUMN SOCIO_END_NRO SOCIO_END_NRO_CASA INT(10);


-- INSERÇÃO DE DADOS
INSERT INTO SOCIOS (SOCIO_ID, SOCIO_NOME, SOCIO_END_RUA, SOCIO_END_BAIRRO)
VALUES(1,'JÃO DA SILVA','AV. PAULISTA','PARAISÓPOLIS');

INSERT INTO SOCIOS (SOCIO_ID, SOCIO_NOME, SOCIO_END_CIDADE, SOCIO_END_BAIRRO)
VALUES(2,'DECIO MACHADO','SAO PAULO','HELIOPOLIS');

INSERT INTO SOCIOS (SOCIO_ID, SOCIO_NOME, SOCIO_END_CIDADE, SOCIO_END_BAIRRO)
VALUES(3,'CAIO ROLANDO DA ROCHA','SAO PAULO','BROOKLIN');

INSERT INTO SOCIOS (SOCIO_ID, SOCIO_NOME, SOCIO_END_CIDADE, SOCIO_END_BAIRRO)
VALUE(4, 'AVA GINA ROSA','SAO PAULO','TANGAMANDAPIO')

INSERT INTO SOCIOS (SOCIO_ID, SOCIO_NOME, SOCIO_END_CIDADE, SOCIO_END_BAIRRO)
VALUE(5,'CLEVERSON RAIMUNDO','SAO PAULO','NOBRE')

INSERT INTO SOCIOS (SOCIO_ID, SOCIO_NOME, SOCIO_END_CIDADE, SOCIO_END_BAIRRO)
VALUE(6,'PAULA TEJANDO','SAO PAULO','FAVELA')

INSERT INTO SOCIOS (SOCIO_ID, SOCIO_NOME, SOCIO_END_CIDADE, SOCIO_END_BAIRRO)
VALUE(7,'PAULO SILVA','SAO PAULO','FAZENDA DA JUTA')

INSERT INTO SOCIOS (SOCIO_ID, SOCIO_NOME, SOCIO_END_CIDADE, SOCIO_END_BAIRRO)
VALUE(8,'BILL GATES','SAO PAULO','MORUMBI')

INSERT INTO SOCIOS (SOCIO_ID, SOCIO_NOME, SOCIO_END_CIDADE, SOCIO_END_BAIRRO)
VALUE(9,'STEVE JOBS','SAO PAULO','POBRE')

INSERT INTO SOCIOS (SOCIO_ID, SOCIO_NOME, SOCIO_END_CIDADE, SOCIO_END_BAIRRO)
VALUE(10,'SETEVE LA','SAO PAULO','JARDIM REGADO')












