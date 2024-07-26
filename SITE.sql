CREATE DATABASE SITE;
USE SITE;

CREATE TABLE FORMULARIO(
	FORMULARIO_ID     INT(10) PRIMARY KEY,
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
	ADM_ID  INT(10) PRIMARY KEY,
    ADM_CAD VARCHAR(20),
	ADM_SITE VARCHAR(40),
    ADM_IP VARCHAR(40),
    ADM_CAT VARCHAR(40)
);

CREATE TABLE RELATORIO(
	RELATORIO_ID 	   INT(10) PRIMARY KEY,
	RELATORIO_TOP100   varchar(200),
	RELATORIO_TOP10    varchar(200),
	RELATORIO_VENDAS   varchar(200),
	RELATORIO_AGENCIA  varchar(200)
);