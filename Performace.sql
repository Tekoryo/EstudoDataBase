/* exercicio */

/* Considerando o que vc aprendeu sobre performance, resolva os exercicios abaixo */

SELECT COUNT(*) FROM funcionarios;

--Traga os funcionarios que trabalhem
--no departamento de filmes OU no
--departamento de roupas
----------------------------------------------------------------------------------------------------
--O gestor de marketing pediu a lista das funcionarias (AS) = FEMININO que trabalhem no departamento 
--de filmes ou no departamento lar. Ele necessita enviar um email para as colaboradoras
--desses dois setores. OR +  AND *

--Feminino 491 ocorrencias
select count(*), sexo
from funcionarios
group by sexo;

--52 | Lar  21 Filmes
select count(*), departamento
from funcionarios
group by departamento;


SELECT * FROM funcionarios
WHERE sexo='Feminino' AND departamento='Lar' OR
sexo='Feminino' AND departamento='Filmes';


--Traga os funcionarios do sexo masculino
--ou os funcionarios que trabalhem no setor Jardim

SELECT * FROM funcionarios
WHERE sexo='Masculino' OR departamento='Jardim';

create database exercicio;

use exercicio;

create table funcionarios
  (
      idFuncionario integer,
      nome varchar(100),
      email varchar(200),
      sexo varchar(10),
      departamento varchar(100),
      admissao varchar(10),
      salario integer,
      cargo varchar(100),
      idRegiao int
  );

