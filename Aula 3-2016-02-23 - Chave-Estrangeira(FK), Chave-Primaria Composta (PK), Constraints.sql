-- Constraint CHAVE-ESTRANGEIRA (FK) - Foreign Key
/* 
    É por meio da Chave Estrangeira (FK) e da Chave Primária (PK)
    que conseguimos estabelecer o Relacionamento entre as tabelas
    no banco de Dados.
    
    Chave-Estrangeira nada mais é do que a Chave-Primária da Tabela
    mestre...
    
    Ex: Um Departamento possui [N] empregados. Então a Tabela Mestre
    é o Departamento e o Detalhe são os Empregados, assim sendo
    o Empregado recebe a Chave-Primária do Departamento.
    
    Atributos do FOREIGN KEY:
        -  CASCADE: Se houver um DELETE da tabela pai, as tabelas filhas também serão deletadas, evitando inconsistência de dados. Se houver um UPDATE na chave primária da tabela pai, as chaves estrangeiras das tabelas filhas também serão atualizadas.
        -  SET NULL: Caso uma a tabela pai seja deletada ou sua chave primária seja alterada, as tabelas filhas terão as suas chaves estrangeiras setadas para NULL (exceto quando forem criadas com o parâmetro NOT NULL).
        -  NO ACTION ou RESTRICT: A tentativa de deletar ou atualizar uma tabela pai será ignorada caso ela tenha tabelas filhas.

*/
CREATE DATABASE TESTE_FK;
USE TESTE_FK;

-- ------------------------

-- EXEMPLO 1: LIVROS E LOCAÇÕES
-- Tabela de Livros
CREATE TABLE LIVROS(
	Livro_Id		INT(10) AUTO_INCREMENT,
    Livro_Titulo	VARCHAR(30) NOT NULL,
    Livro_Setor		CHAR(2),
    PRIMARY KEY(Livro_Id)
);
-- Tabela de Locações
CREATE TABLE LOCACOES(
	LOCACAO_ID			INT(10) PRIMARY KEY AUTO_INCREMENT,
    LOCACAO_NOME		VARCHAR(30),
    LOCACAO_LIVRO_ID	INT(10),
    -- CHAVE ESTRANGEIRA
    -- CONSTRAINTs Possíveis = PK, FK, CHECK, DEFAULT, UNIQUE
    CONSTRAINT FK_LIVRO_ID
    FOREIGN KEY (LOCACAO_LIVRO_ID) REFERENCES LIVROS(LIVRO_ID)
    ON DELETE CASCADE ON UPDATE CASCADE
);
-- Tabela Biblioteca
CREATE TABLE BIBLIOTECA(
	BIBLIO_ID		INT(10) PRIMARY KEY AUTO_INCREMENT,
    BIBLIO_END_RUA	VARCHAR(40),
    BIBLIO_END_NRO	VARCHAR(6),
    BIBLIO_END_CID	VARCHAR(30)
);
-- Adicionando a Chave Estrangeira com Alter Table
ALTER TABLE LIVROS
ADD COLUMN LIVRO_BIBLIO_ID	INT(10),
ADD FOREIGN KEY (LIVRO_BIBLIO_ID) REFERENCES BIBLIOTECA(BIBLIO_ID)
	ON DELETE CASCADE ON UPDATE CASCADE;

-- Inserindo Dados para Análise da Tabela Livros
INSERT INTO LIVROS(Livro_Titulo, Livro_Setor)
VALUES('Harry Poter', 'B2');

INSERT INTO LIVROS(Livro_Titulo, Livro_Setor)
VALUES('Senhor dos Anéis', 'A1');

INSERT INTO LIVROS(Livro_Titulo, Livro_Setor)
VALUES('A Cabana', 'A1');

SELECT * FROM LIVROS;

-- Inserindo Locacoes para os Livros
INSERT INTO LOCACOES(LOCACAO_NOME, LOCACAO_LIVRO_ID)
VALUES('Chico Bento', 1);

INSERT INTO LOCACOES(LOCACAO_NOME, LOCACAO_LIVRO_ID)
VALUES('Mônica', 2);

INSERT INTO LOCACOES(LOCACAO_NOME, LOCACAO_LIVRO_ID)
VALUES('Cebolinha', 1);

SELECT * FROM locacoes;
SELECT * FROM Livros;

-- -----------------------------------------------------
-- EXEMPLO 2: EMPREGADOS E DEPENDENTES
CREATE TABLE EMPREGADOS(
	EMPREGADO_ID	INT(10) PRIMARY KEY AUTO_INCREMENT,
    EMPREGADO_NOME	VARCHAR(40)
);
CREATE TABLE DEPENDENTES(
	DEPENDENTE_ID	INT(10),
    DEPENDENTE_NOME VARCHAR(40),
    DEP_EMP_ID		INT(10),
    FOREIGN KEY (DEP_EMP_ID) REFERENCES EMPREGADOS(EMPREGADO_ID)
);

-- ---------------------------------------------
-- EXEMPLO 3: PEDIDOS E ITENS_PEDIDO
-- obs: A tabela Itens_pedido é uma Chave Primária Composta pelo Número do Pedido (que também é chave-estrangeira) com o Id do Item

CREATE TABLE PEDIDOS(
	PEDIDO_NUM		INT(10) PRIMARY KEY AUTO_INCREMENT,
    PEDIDO_DATA		DATETIME
);
CREATE TABLE ITENS_PEDIDO(
	ITEM_PED_ID		INT(10) AUTO_INCREMENT,
    ITEM_PED_NUM	INT(10),
    ITEM_PED_QTD	INT(10),
    PRIMARY KEY(ITEM_PED_ID, ITEM_PED_NUM),
    FOREIGN KEY(ITEM_PED_NUM) REFERENCES PEDIDOS(PEDIDO_NUM)
    ON DELETE CASCADE ON UPDATE CASCADE
);



