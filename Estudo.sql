/* Modelagem Básica - 

ENTIDADE=TABELA
CAMPOS = ATRIBUTOS 

CLIENTE

NOME - CARACTER(30)
CPF - NUMERICO(11)
EMAIL - CARACTER(30)
TELEFONE - CARACTER(30)
ENDERECO - CARACTER(100)
SEXO - CARACTER(1)

/* PROCESSOS DE MODELAGEM  */

/* FASE 01 E FASE 02 - AD ADM DE DADOS */

MODELAGEM CONCEITUAL - RASCUNHO
MODELAGEM LÓGICA - QUALQUER PROGRAMA DE MODELAGEM

/* FASE 03 - DBA / AD */

MODELAGEM FÍSICA - SCRIPTS DE BANCO

/* INICIANDO A MODELAGEM FÍSICA */

/* CRIANDO O BANCO DE DADOS */

CREATE DATABASE EXEMPLO

CREATE DATABASE PROJETO;

/* CONECTANDO-SE AO BANCO */

USE PROJETO;

/* CRIANDO A TABELA DE CLIENTES */

CREATE TABLE CLIENTE(
	NOME VARCHAR(30),
	SEXO CHAR(1),
	EMAIL VARCHAR(30),
	CPF INT(11),
	TELEFONE VARCHAR(30),
	ENDERECO VARCHAR(100)

);

/* VERIFICANDO AS TABELAS DO BANCO */

SHOW TABLES; /* É um ponteiramento do MySQL*/


USE Projeto;

/* DESCOBRINDO COMO É A ESTRUTURA DE UMA TABELA */

DESC CLIENTE; /* É um ponteiramento do MySQL*/
 
/*  Inserindo dados e valores nulos */

use projeto;

/* Mostrando as tabelas */

SHOW TABLES; /* É um ponteiramento do MySQL*/
/* exibindo a estrutura de uma tabela */

DESC CLIENTE; /* É um ponteiramento do MySQL*/

/* sintaxe basica de inserção - INSERT INTO TABELA... */

/* FORMA 01 - OMITINDO AS COLUNAS */

INSERT INTO CLIENTE VALUES('JOAO','M','JOAO@GMAIL.COM',988638273,'22923110','MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ');

INSERT INTO CLIENTE VALUES('CELIA','F','CELIA@GMAIL.COM',541521456,'25078869','RIACHUELO - CENTRO - RIO DE JANEIRO - RJ');

INSERT INTO CLIENTE VALUES('JORGE','M',NULL,885755896,'58748895','OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG');

/* FORMA 02 - COLOCANDO AS COLUNAS */

INSERT INTO CLIENTE(NOME,SEXO,ENDERECO,TELEFONE,CPF) VALUES('LILIAN','F','SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ','947785696',887774856);

/* FORMA 03 - INSERT COMPACTO - SOMENTE MYSQL */

INSERT INTO CLIENTE VALUES('ANA','F','ANA@GLOBO.COM',85548962,'548556985','PRES ANTONIO CARLOS - CENTRO - SAO PAULO - SP'),
                          ('CARLA','F','CARLA@TERATI.COM.BR',7745828,'66587458','SAMUEL SILVA - CENTRO - BELO HORIZONTE - MG');

/*[ERRO] No CPF int não compativel */
						  
INSERT INTO CLIENTE(NOME,SEXO,ENDERECO,TELEFONE,CPF) VALUES('CLARA','F','SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ','883665843',99999999999);

INSERT INTO CLIENTE(NOME,SEXO,ENDERECO,TELEFONE,CPF) VALUES('CLARA','F','SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ','883665843',22222222222);
 
 
 
 /*Aprendendo comando 
 
 Comando - Select

 */

 SELECT NOW() as DATA_HORA, 'FELIPE MAFRA' AS PROFESSOR;

SELECT 'FELIPE MAFRA';

SELECT 'BANCO DE DADOS';

/* ALIAS DE COLUNAS */

Select Nome,Sexo,Email from Cliente;
 
Select Nome,Sexo,Email,Endereco from Cliente;

 /*Regra de negocio - Nome aparecer como cliente */
Select Nome as Cliente,Sexo,Email from Cliente;
 
 /*Apenas para fins Academincos*/
Select * From Cliente;

/* FILTRANDO DADOS COM WHERE E LIKE */

SELECT NOME, TELEFONE FROM CLIENTE;

/* FILTRANDO */

SELECT Nome, Sexo From Cliente
WHERE Sexo = 'M';

SELECT Nome, Endereco FROM Cliente
WHERE Sexo = 'F';

SELECT Nome, Sexo FROM Cliente
WHERE Endereco = 'RJ';
/*
Se usar este comando vai dar "Empty set" == vazio
pois o endereco esta é um campo, assim deve filtrar dentro do campo
*/

/* UTILIZANDO O LIKE */

SELECT Nome, Sexo FROM Cliente
WHERE Endereco LIKE 'RJ';
/*
Resolve o problima anterios, mas vai precisar do caracter coringa para dar certo
*/

/* CARACTER CORINGA % -> QUALQUER COISA */

SELECT Nome, Sexo FROM Cliente
WHERE Endereco LIKE '%RJ';

SELECT Nome, Sexo, Endereco FROM Cliente
WHERE Endereco LIKE 'OSCAR CURY%';

SELECT Nome, Sexo, Endereco FROM Cliente
WHERE Endereco LIKE '%CENTRO%';

/*
Primeiro exerciso de fixação
Livraria					*/

/* OPERADORES LÓGICOS 
OR -> PARA QUE A SAIDA DA QUERY SEJA VERDADEIRA, BASTA QUE APENAS UMA CONDICAO SEJA VERDADEIRA.
AND -> PARA QUE A SAIDA SEJA VERDADEIRA TODAS AS CONDICOES PRECISAM SER VERDADEIRAS.
*/
