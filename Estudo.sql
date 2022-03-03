/*Criando a tabela de cliente*/

 CREATE DATABASE Projeto;
 
 /*Conectando-se ao Banco*/
 
 USE Projeto;
 
 /*Criando a tabela de Cliente*/
 
 CREATE TABLE Cliente(
	Nome VARCHAR(30),
	Sexo CHAR(1),
	Email VARCHAR(30),
	CPF int(11),
	Telefone VARCHAR(30),
	Endereco VARCHAR(100)
 );
 
 /*Verificando tabela do banco*/
 
 Show TABLES;
 
 /*Descobrindo como  a estrutura de uma tabela*/
 
 DESC Cliente;
 
 /*Forma 01 - Omitindo as colunas*/
 
 INSERT INTO CLIENTE VALUES('JOAO','M','JOAO@GMAIL.COM',988638273,'22923110','MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ');

INSERT INTO CLIENTE VALUES('CELIA','F','CELIA@GMAIL.COM',541521456,'25078869','RIACHUELO - CENTRO - RIO DE JANEIRO - RJ');

INSERT INTO CLIENTE VALUES('JORGE','M',NULL,885755896,'58748895','OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG');
/* FORMA 02 - COLOCANDO AS COLUNAS */

INSERT INTO CLIENTE(NOME,SEXO,ENDERECO,TELEFONE,CPF) VALUES('LILIAN','F','SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ','947785696',887774856);
 
 
 
 