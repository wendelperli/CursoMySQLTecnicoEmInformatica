 
                             -- Biblioteca
                             
                             
  CREATE DATABASE BIBLIOTECA;
  USE BIBLIOTECA;
  
  CREATE TABLE FORNECEDOR(
       
	FORNECEDOR_CODIGO       INT(6)          PRIMARY KEY,
	FORNECEDOR_LOGRADOURO   VARCHAR(18),
	FORNECEDOR_NUMERO       CHAR(15),
    FORNECEDOR_NOME         VARCHAR(40),
	FORNECEDOR_CEP          INT(8),
	FORNECEDOR_COMPLEMENTO  VARCHAR(4),
	FORNECEDOR_CNPJ         VARCHAR(15),
	FORNECEDOR_BAIRRO       VARCHAR(15),
	FORNECEDOR_CIDADE       VARCHAR(30),
	FORNECEDOR_UF           CHAR(2)
  
  );
  
  CREATE TABLE FUNCIONARIO(
  
    Funcionario_Codigo	    Int     (11)       primary key,
    Funcionario_Cpf		    varchar	(14),
    Funcionario_Nome	    varchar	(40),
    Funcionario_Telefone	decimal	(15),
	Funcionario_Logradouro	varchar	(50),
	Funcionario_Numero	    decimal	(5),
	Funcionario_Complemento	varchar	(15),
	Funcionario_Bairro	    varchar	(20),
	Funcionario_Cidade	    varchar	(50),
	Funcionario_Cep	        decimal	(9)

  );
  
  
  CREATE TABLE CLIENTE(
    
      Cliente_Codigo	    Int	    (11)  PRIMARY KEY,
      Cliente_Cpf	        VARCHAR	(14),
      Cliente_Nome	        varchar	(50),
      Cliente_Telefone	    char	(15),
      Cliente_Logradouro    varchar	(50),
      Cliente_Numero	    INT	    (5),
      Cliente_Complemento	varchar	(15),
      Cliente_Bairro	    varchar	(20),
      Cliente_Cidade	    varchar	(30),
      Cliente_UF	        varchar	(2),
      Cliente_Cep	        datetime,
	  Cliente_Email	        varchar	(40)

  );
  
  CREATE TABLE PEDIDO(
  
  pedido_numero	                      int      (11)         PRIMARY KEY,
  pedido_tipo	                      varchar  (50),
  pedido_valor_total	              decimal  (10,2),
  pedido_data	                      date,	
  pedido_quantidade	                  int	   (4),
  pedido_cliente_codigo	              Int	   (11),      -- FK
  pedido_funcionario_codigo           Int	   (11),       -- FK
       
        FOREIGN KEY (pedido_cliente_codigo) REFERENCES CLIENTE(Cliente_Codigo) 
        ON DELETE CASCADE ON UPDATE CASCADE,
        
         FOREIGN KEY (pedido_funcionario_codigo) REFERENCES FUNCIONARIO(Funcionario_Codigo) 
        ON DELETE CASCADE ON UPDATE CASCADE
        
      
  );
  
  CREATE TABLE NOTA_FISCAL(
  
  Nf_Codigo	        Int  	(11)     PRIMARY KEY,
  Nf_Data_Emissao	datetime,
  Nf_Descricao	    varchar (50),
  Nf_Forma_Pagto	varchar	(15),
  Nf_Pedido_Numero	Int	    (11),    -- FK
  Nf_Cliente_Codigo	Int	    (11),     -- FK
  
    FOREIGN KEY ( Nf_Pedido_Numero) REFERENCES PEDIDO(pedido_numero) 
        ON DELETE CASCADE ON UPDATE CASCADE,
    
    FOREIGN KEY (Nf_Cliente_Codigo) REFERENCES CLIENTE(Cliente_Codigo) 
        ON DELETE CASCADE ON UPDATE CASCADE

);
  
  CREATE TABLE BIBLIOTECA(
  
   Biblio_ID	   int	    (11)    PRIMARY KEY,
   Biblio_Nome	   varchar	(10),
   Biblio_Endereço varchar	(50),
   Bilbio_CNPJ	   varchar	(15)
   
   );
 
  
  
  
  
  
  
                                -- Locadora
                                
                   
     CREATE DATABASE LOCADORA_DE_VIDEOS;
     USE LOCADORA_DE_VIDEOS;
	
     CREATE TABLE VIDEO (
     
	 Video_ID	    int	     (30)     PRIMARY KEY,
     Video_Nome	    varchar	 (40),
     Video_Retirada	datetime,
     Video_Entrega	datetime

     );
  
    
    CREATE TABLE SOCIO(
    
     Socio_ID	      Int	    (30)    PRIMARY KEY,
     Socio_Nome       varchar	(20),
     Socio_Logradouro char	    (40),
     Socio_Cidade	  char	    (20),
     Socio_Bairro	  char	    (30),
     Socio_CPF	      varchar   (15)

    );
    
    
    CREATE TABLE LOCACAO (
    
    Locacao_ID	    Int	        (20)     PRIMARY KEY,
    Locacao_Data	datetime,	
    Locacao_Valor	decimal	    (10,2),
    Locacao_Hora    time     

    );
  
   
    CREATE TABLE  PEDIDO (
    
      Pedido_ID	         Int	  (10)     PRIMARY KEY,
      Pedido_Nome	     varchar  (40),
      pedido_Quantidade	 Int	  (40),
      pedido_Data	     datetime	

    );
    
    
    
  CREATE TABLE DISPONIVEL(
 
   Disponivel_ID	    INT 	(20)     PRIMARY KEY,
   Disponivel_Nome	    varchar	(30),
   Disponivel_Reservas	varchar	(40)

  );
  
  
  CREATE TABLE RESERVAS (
    
    Reserva_ID	    Int       (9)      PRIMARY KEY,
    Reserva_Nome	varchar   (40),
    Reserva_data	datetime
);


         
         
         
         -- Padaria pao com ovo
          
          
   
   CREATE DATABASE PADARIA;
    USE PADARIA;
    
    CREATE TABLE  CLIENTE(
    
      Client_ID	          int	(30)         PRIMARY KEY,  
      Client_Pedido	      int	(40),
      Cliente_Funcio_ID	  int	(20),      -- FK
      
      FOREIGN KEY (Cliente_Funcio_ID) REFERENCES FUNCIONARIO(Funcio_ID) 
        ON DELETE CASCADE ON UPDATE CASCADE
      
      );

  CREATE TABLE PEDIDOS(
  
    Pedido_ID	               Int      (30)       PRIMARY KEY,
    Pedido_Quantidade	       varchar	(20),
    Pedido_Valor_Total	       decimal	(6,2),
    Pedido_Data	               datetime,
	Pedidos_Funcio_Cliente_ID  int	    (40)
 
 );
    
  
  CREATE TABLE FUNCIONARIO(
  
    Funcio_ID	                Int	     (20)    PRIMARY KEY,
    Funcio_Nome 	            varchar	 (20),
	Funcio_Telefone	            INT	     (15),
    Funcio_RG	                VARCHAR	 (20),
    Funcio_DT_Nasc	            datetime, 	
    Funcio_Endereco	            varchar	 (30)
	
  
  );
  
  
     CREATE TABLE MATERIA_PRIMA(
  
     Mater_Prima_ID	        INT	(30)     PRIMARY KEY,
     Mater_Prima_Quantidade	INT	(40),
     Mater_Prima_Valor	    INT	(40)
     );
 
     
     CREATE TABLE PRODUTO(
     
     Produtos_ID	    Int      (6)    PRIMARY KEY,
     Produtos_Nome	    varchar  (20),
     Produtos_Valor	    decimal  (8,2),
     Produto_Descrição	varchar  (70),
	 Produt_Funci_ID	INT      (6),    -- FK
     
     FOREIGN KEY (Produt_Funci_ID) REFERENCES FUNCIONARIO(Funcio_ID) 
        ON DELETE CASCADE ON UPDATE CASCADE
);
     
     CREATE TABLE FORNECEDOR(
     
     Fornec_ID	        INT        (7)     PRIMARY KEY,
     Fornec_Nome	    varchar    (40),
     Fornec_Logradouro	varchar    (20),
     Fornec_Cidade	    varchar    (20),
     Fornec_CNPJ	    varchar    (15),
     Fornec_Telefone	VARCHAR    (15)
	 
     
        
	
    
);
     
            
            
            
            
            
            -- AUTO PEÇAS
            
            
            
		CREATE DATABASE AUTO_PECA;
        USE AUTO_PECA;
        
        
        CREATE TABLE VENDEDOR(
        
        Vendedor_ID	     	 INT       (20)  PRIMARY KEY,
        Vendedor_logradouro	 varchar   (20),
        Vendedor_RG	         Int	   (10),
        Vendedor_CPF	     VARCHAR   (15),
        Vendedor_Endereço	 VARCHAR   (40),
        Vendedor_Peca_ID         INT   (7)	      
        
      
);
        
        
       CREATE TABLE PECA(
       
       Pecas_ID	        INT  	(20)   PRIMARY KEY,
       Pecas_Nome	    varchar	(40),
       Pecas_Quantidade	INT  	(10),
       Pecas_Preço	    decimal	(7,2),
       Peca_Vend_ID		INT     (10),       -- Fk
       
       FOREIGN KEY (Peca_Vend_ID) REFERENCES VENDEDOR(Vendedor_ID) 
        ON DELETE CASCADE ON UPDATE CASCADE
       
       );
       
       
       CREATE TABLE CLIENTE(
       
       Cliente_ID	      INT	    (20)  PRIMARY KEY,
	   Cliente_Telefone	  VARCHAR	(15),
       Cliente_CNPJ	      int	    (20),
       Cliente_Endereço	  Int	    (40),
	   Client_Regiao_ID   INT	    (30),     -- Fk
       
       FOREIGN KEY (Client_Regiao_ID) REFERENCES REGIAO(Regiao_ID) 
        ON DELETE CASCADE ON UPDATE CASCADE
       

       );
       
       
       CREATE TABLE REGIAO(
       
       Regiao_ID	               Int   	(20)  PRIMARY KEY,
       Regiao_Nome	               varchar	(40),
       Regiao_Endereço	           varchar	(30),
       Regiao_Client_ID	           Int   	(10)          
       
        
       );
       
  
  
              
              
              
              
              
              
              
              -- FAZENDA  
               
               
     CREATE DATABASE FAZENDA;
     USE FAZENDA;
     
     CREATE TABLE GADO(
     
     Gado_ID	        INT       (30)   PRIMARY KEY,
     Gado_Quantidade	INT       (40),
     Gado_DT_Nasc	    DATETIME,	
     Gado_Peso	        char	  (10),
     Gado_Numero	    INT	      (5)
     );

     
     CREATE TABLE INSUMO(
     
     Insumo_ID	          INT	    (30)   PRIMARY KEY,
     Insumo_Nome	      VARCHAR	(40),
     Insumo_Preco_Unita	  DECIMAL   (6,2),
     Insumo_Quant	      INT	    (25)

);

    CREATE TABLE NUTRIENTE(
    
    Nutri_ID	       INT       (20)   PRIMARY KEY,
    Nutri_Nome 	       varchar   (40),
    Nutri_Preco	       DECIMAL   (6,2),
    Nutri_Quantidade   INT       (10)
);


   CREATE TABLE PRECO (
    
    Preço_ID	             INT      (20)    PRIMARY KEY,
    Preço_Valor_Unitario	 DECIMAL  (6,2),
    Preço_Valor_Total	     DECIMAL  (8,2)
  
  );
  
   CREATE TABLE FAZENDA(
   
   Fazenda_Codigo	     INT	    (20)     PRIMARY KEY,
   Fazenda_Nome	         varchar	(30),
   Fazenda_Logradouro	 varchar	(40),
   Fazenda_Bairro	     char	    (30),
   Fazenda_Cidade	     varchar	(30),
   Fazenda_Estado	     VARCHAR    (20),
   Fazenda_Cep	         INT     	(10)
   
);



  CREATE TABLE EMPREGADO(
  
  Empreg_ID	           int	     (20)    PRIMARY KEY,
  Empreg_Nome	       varchar	 (30),
  Empreg_RG	           INT       (11),
  Empreg_CPF	       INT	     (15),
  Empreg_DT_Nasc       DATETIME


  );
  
  
  CREATE TABLE MEDICAMENTO (
  
  Medi_ID	        INT  	(20)      PRIMARY KEY,
  Medi_Nome 	    varchar	(30),
  Medi_Descricao	varchar	(40),
  Medi_Preco	    DECIMAL	(30)

  );
  
  
  
  
  
  
  
  
        -- HOTEL
  
  
  CREATE DATABASE HOTEL;
  USE HOTEL;
  
  CREATE TABLE QUARTO(
  
  quarto_numero	INT	    (4)     PRIMARY KEY,
  quarto_status	varchar	(7),
  quarto_estado	varchar	(5)

  );
  
  CREATE TABLE RESERVA (
  
   reserva_codigo	        int	    (10)    PRIMARY KEY,
   reserva_nome	            varchar	(40),
   reserva_data_ocupacao	date,
   reserva_data_desocupacao	date	
);
  
  CREATE TABLE PAGAMENTO(
  
   pagamento_codigo	    int	    (10)    PRIMARY KEY,
   Pagamento_valor	    decimal	(6,2),
   pagamento_cliente	varchar	(40),
   Pagamento_data	    date,
   pagamento_forma	    varchar	(15),
   pagamento_parcela	int	    (3)
   );







		  -- Site
  
  CREATE DATABASE SITE;
USE SITE;

CREATE TABLE FORMULARIO(
	FORMULARIO_ID     INT    (10) PRIMARY KEY,
	FORMULARIO_NOME	  varchar(40),
	FORMULARIO_RG	  varchar(15),
	FORMULARIO_CPF	  varchar(14),
	FORMULARIO_CEP	  varchar(12),
	FORMULARIO_RUA	  varchar(20),
	FORMULARIO_BAIRRO varchar(20),
	FORMULARIO_CID	  varchar(20),
	FORMULARIO_EST	  varchar(2),
	FORMULARIO_TEL	  varchar(15),
	FORMULARIO_EMAIL  varchar(20)
);

CREATE TABLE ADMINISTRACAO(
	ADM_ID    INT    (10)    PRIMARY KEY,
    ADM_CAD   VARCHAR(20),
	ADM_SITE  VARCHAR(40),
    ADM_IP    VARCHAR(40),
    ADM_CAT   VARCHAR(40)
);

CREATE TABLE RELATORIO(
	RELATORIO_ID 	   INT    (10) PRIMARY KEY,
	RELATORIO_TOP100   varchar(200),
	RELATORIO_TOP10    varchar(200),
	RELATORIO_VENDAS   varchar(200),
	RELATORIO_AGENCIA  varchar(200)
);
  
  
  
  
  
  
  
  
  
  
  