Create Database Biblioteca2;
Use Biblioteca2;
-- BASE PARA INNER JOIN - BIBLIOTECA
Create Table Biblioteca(
	Biblio_Id			Int(5) PRIMARY KEY AUTO_INCREMENT,
	Biblio_Nome			VARCHAR(40) NOT NULL,
	Biblio_End_Rua		VARCHAR(40),
	Biblio_End_Nro		VARCHAR(5),
	Biblio_End_Compl	VARCHAR(30),
	Biblio_End_Bairro	VARCHAR(30),
	Biblio_End_Cidade	VARCHAR(40),
	Biblio_End_UF		CHAR(2),
	Biblio_End_CEP		CHAR(9)
);
Create Table Usuarios(
	Usuario_Id			INT(5) PRIMARY KEY AUTO_INCREMENT,
	Usuario_Nome		VARCHAR(40) NOT NULL,
	Usuario_CPF			VARCHAR(14) UNIQUE,
	Usuario_RG			VARCHAR(15),
	Usuario_End_Rua		VARCHAR(40),
	Usuario_End_Nro		VARCHAR(5),
	Usuario_End_Compl	VARCHAR(30),
	Usuario_End_Bairro	VARCHAR(30),
	Usuario_End_Cidade	VARCHAR(40),
	Usuario_End_UF		CHAR(2),
	Usuario_End_CEP		CHAR(9),
	Usuario_Biblio_Id	INT(5),
	FOREIGN KEY (Usuario_Biblio_Id) REFERENCES Biblioteca (Biblio_Id)
	ON DELETE CASCADE ON UPDATE CASCADE
);
Create Table Fones(
	Fone_Id				INT(5) PRIMARY KEY AUTO_INCREMENT,
    Fone_ddd			INT(2) Not Null,
    Fone_Nro			VARCHAR(10) NOT NULL,
    Fone_Tipo			VARCHAR(15),
    Fone_Usuario_Id		INT(5),
    FOREIGN KEY (Fone_Usuario_Id) REFERENCES Usuarios (Usuario_Id)
);
Create Table Livros(
	Livro_Id			INT(5) PRIMARY KEY AUTO_INCREMENT,
	Livro_Titulo		VARCHAR(40) NOT NULL,
	Livro_Autor			VARCHAR(40) NOT NULL,
	Livro_Biblio_Id		INT(5),
	FOREIGN KEY (Livro_Biblio_Id) REFERENCES Biblioteca (Biblio_Id)
	ON DELETE CASCADE ON UPDATE CASCADE
);
Create Table Funcionarios(
	Func_Id				INT(5) PRIMARY KEY AUTO_INCREMENT,
    Func_Nome			VARCHAR(40),
	Func_Biblio_Id		Int(5),
    FOREIGN KEY  (Func_Biblio_Id) REFERENCES Biblioteca (Biblio_Id)
    ON DELETE CASCADE ON UPDATE CASCADE
);
Create Table Locacoes(
	Locacao_Id			INT(5) PRIMARY KEY AUTO_INCREMENT,
	Locacao_Data_Ret	DATETIME NOT NULL,
	Locacao_Data_Dev	DATETIME,
	Locacao_Usuario_Id	INT(5),
    Locacao_Func_Id		Int(5),
    FOREIGN KEY (Locacao_Usuario_Id) REFERENCES Usuarios (Usuario_Id)
	ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (Locacao_Func_Id) REFERENCES Funcionarios (Func_Id)
	ON DELETE CASCADE ON UPDATE CASCADE
);
Create Table Item_Locacao(
	Item_Id				INT(5) AUTO_INCREMENT,
	Item_Locacao_Livro_Id	INT(5) NOT NULL,
	Locacao_Id			INT(5),
    Item_Locacao_Qtd	INT(5) NOT NULL,
	PRIMARY KEY(Item_Id, Locacao_Id),
	FOREIGN KEY(Locacao_Id) REFERENCES Locacoes(Locacao_Id)
	ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (Item_Locacao_Livro_Id) REFERENCES Livros(Livro_Id)
    ON DELETE CASCADE ON UPDATE CASCADE
);

-- Inserts para testes dos Joins
INSERT INTO `biblioteca2`.`biblioteca`
(`Biblio_Nome`,`Biblio_End_Rua`,`Biblio_End_Nro`,`Biblio_End_Compl`,
`Biblio_End_Bairro`,`Biblio_End_Cidade`,`Biblio_End_UF`,
`Biblio_End_CEP`)
VALUES('Senateca','Av. Ramiro Coleoni','200','','Centro','Santo André',
'SP','99999-000');

INSERT INTO `biblioteca2`.`funcionarios` (`Func_Nome`, `Func_Biblio_Id`)
VALUES ('Ana Paula', 1), ('Julio', 1), ('Astrogildo', 1), ('Paulo', 1), 
('Denis', 1), ('João', 1), ('Maria', 1);

INSERT INTO `biblioteca2`.`livros`
(`Livro_Titulo`,`Livro_Autor`,`Livro_Biblio_Id`)
VALUES('Senhor dos Anéis','Teste',1), ('Mortos Vivos','João',1), 
('Pequeno Principe','João',1), ('A Arte da Guerra','Maria',1),
('Biblia','João',1), ('João e Maria','Maria',1);

INSERT INTO `biblioteca2`.`usuarios`
(`Usuario_Nome`,`Usuario_CPF`,`Usuario_RG`,
`Usuario_End_Rua`,`Usuario_End_Nro`,`Usuario_End_Compl`,
`Usuario_End_Bairro`,`Usuario_End_Cidade`,`Usuario_End_UF`,
`Usuario_End_CEP`,`Usuario_Biblio_Id`)
VALUES('Paulo César','123.456.789-00','12.456.789-X',
'Rua dos Testes', '300', '','Centro','Santo André','SP',
'23456-200',1),
('César Augusto','123.999.789-00','12.333.789-X',
'Rua dos Testes', '300', '','Centro','Santo André','SP',
'23456-200',1),
('Maria das Dores','666.456.789-00','99.456.789-X',
'Av. Teste', '10', '','Centro','Santo André','SP',
'23456-200',1),
('Zezinho','666.777.789-00','12.456.000-6',
'Rua Oliveira Lima', '30', '','Centro','Santo André','SP',
'23456-200',1),
('Maria Antonieta','123.456.789-66','12.456.300-X',
'Av. Paulista', '300', '','Centro','São Paulo','SP',
'33333-200',1),
('Maria Joaquina','562.456.789-66','12.560.300-X',
'Rua Augusta', '3', '','Centro','São Paulo','SP',
'33333-200',1),
('Antonia','260.456.789-66','32.456.999-X',
'Rua XV de Novembro', '45', 'Bloco II Apto 11','Centro','São Paulo','SP',
'33333-200',1);


INSERT INTO `biblioteca2`.`fones`
(`Fone_ddd`,`Fone_Nro`,`Fone_Tipo`,`Fone_Usuario_Id`)
VALUES(11,'4567-8000','Residencial',1),
(11,'99870-8000','Celular',1),
(11,'6540-2600','Comercial',1),
(11,'5800-8000','Residencial',2),
(11,'5975-8000','Comercial',2),
(13,'94567-8000','Celular',3),
(14,'2300-8000','Residencial',4),
(11,'5203-8000','Residencial',5);

INSERT INTO `biblioteca2`.`locacoes`
(`Locacao_Data_Ret`,`Locacao_Data_Dev`,`Locacao_Usuario_Id`,
`Locacao_Func_Id`)
VALUES('2016-02-01', Null,1,2),
('2016-02-28','2016-03-08',1,2),
('2016-03-01','2016-03-03',2,2),
('2016-02-01',Null,4,1),
('2016-02-28',Null,3,3),
('2016-03-01','2016-03-07',3,4),
('2016-03-06',Null,5,7),
('2016-03-09',Null,1,5);

INSERT INTO `biblioteca2`.`item_locacao`
(`Item_Locacao_Livro_Id`,`Locacao_Id`,`Item_Locacao_Qtd`)
VALUES(1,1,1), (2,1,2), (3,1,1), (4,1,2),(2,3,1), (2,3,1), (2,4,3), 
(3,4,1), (3,5,2);





-- Associação de Tabelas
-- Inner Join = A cláusula INNER JOIN associa os registros 
-- de duas tabelas, de maneira que sejam obtidos apenas 
-- os dados relacionados entre elas;
/* 
Para que seu relacionamento entre tabelas funcione 
 é necessário cruzar os dados entre "Chaves Primárias" 
 e "Chaves Estrangeiras" também chamado de junção de tabelas.
 
 */
-- Verificando os Dados das Tabelas para posteriormente fazer o INNER JOIN
-- (biblioteca, Livros, Locaçoes)
Select * From Biblioteca;
Select * From Livros;
Select * From Locacoes;



-- JOINs:

    -- Ex1: INNER JOIN: PARA CADA LOCAÇÃO RETORNAR O NOME DO USUÁRIO
    
    
    SELECT
    
    LOCACOES.*,
    USUARIOS.USUARIO_NOME
    
    FROM LOCACOES INNER JOIN USUARIOS
    ON LOCACOES.LOCACAO_USUARIO_ID = USUARIOS.USUARIO_ID;
    
    
   -- INNER JOIN COM 3 TABELAS 
    SELECT 
    
    LOCACOES.*,
    USUARIOS.USUARIO_NOME,
    FUNCIONARIOS.FUNC_NOME
    
    FROM USUARIOS INNER JOIN LOCACOES 
    ON USUARIOS.USUARIO_ID = LOCACOES.LOCACAO_USUARIO_ID
    INNER JOIN FUNCIONARIOS 
    ON LOCACOES.LOCACAO_FUNC_ID = FUNCIONARIOS.FUNC_ID;
    
    -- RETORNAR DAS LOCACOES O NOME DO USUARIO, NOME DO FUNCIONARIO E TELEFONE DO USUARIO
    
    SELECT
    
    LOC.LOCACAO_ID,
    LOC.LOCACAO_DATA_RET,
    U.USUARIO_NOME,
    FO.FONE_NRO,
    F.FUNC_NOME
    
    FROM LOCACOES AS LOC INNER JOIN USUARIOS AS U
    ON LOC.LOCACAO_USUARIO_ID = U.USUARIO_ID
    
    INNER JOIN FUNCIONARIOS AS F
    ON LOC.LOCACAO_FUNC_ID = F.FUNC_ID
    
    INNER JOIN FONES AS FO
    ON FO.FONE_USUARIO_ID = U.USUARIO_ID;
    
    
    
    SELECT
    
    L.LOCACAO_ID,
    L.LOCACAO_DATA_RET,
    U.USUARIO_NOME,
    LI.LIVRO_TITULO,
    I.ITEM_LOCACAO_QTD
    
    FROM USUARIOS U INNER JOIN LOCACOES L
    ON U.USUARIO_ID = L.LOCACAO_USUARIO_ID
    
    INNER JOIN ITEM_LOCACAO I
    ON I.LOCACAO_ID = L.LOCACAO_ID
    
    INNER JOIN LIVROS LI 
    ON LI.LIVRO_ID = I.ITEM_LOCACAO_LIVRO_ID;

        
    SELECT
    
    U.USUARIO_NOME,
    L.LOCACAO_ID,
    L.LOCACAO_DATA_RET,
    LI.LIVRO_TITULO,
    F.FONE_NRO
    
    FROM USUARIOS U LEFT JOIN LOCACOES L
    ON U.USUARIO_ID = L.LOCACAO_USUARIO_ID
    
    INNER JOIN ITEM_LOCACAO I
    ON I.LOCACAO_ID = L.LOCACAO_ID
    
    INNER JOIN LIVROS LI
    ON LI.LIVRO_ID = I.ITEM_LOCACAO_LIVRO_ID
    
    INNER JOIN FONES F
    ON U.USUARIO_ID = F.FONE_USUARIO_ID
    
    WHERE L.LOCACAO_DATA_RET >= '2016-02-15'
    ORDER BY U.USUARIO_NOME;
    
    
    
    
    
    
    
    
    
    
    
    
    
