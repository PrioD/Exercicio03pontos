 Create Database ATIVIDADE3PONTOS
 Create table Funcionarios(Codigo int primary key not null,
 PrimeiroNome varchar(255),
 SegundoNome varchar(255),
 UltimoNome varchar(255),
 DataNasc date,
 CPF varchar(255),
 RG varchar(255),
 Endereco varchar(255),
 CEP varchar(255),
 Cidade Varchar(255),
 NumFone varchar(255),
 CodigoDepartamento int,
 Funcao varchar(255),
 Salario decimal(10,2))

 Create Table Departamentos (Codigodep INT primary key not null,Nome varchar(255),Localizacao varchar(255),CodigoFuncionarioGerente varchar(255))

 Insert into Funcionarios(Codigo,PrimeiroNome,SegundoNome,UltimoNome,DataNasc,CPF,RG,Endereco,CEP,Cidade,NumFone,CodigoDepartamento,Funcao,Salario)
 values(022314,'João','Rodrgiues','Silva','20/08/1998','06231407136','255669477','Rua Simoes de Lima','63589478','Curitiba','26599874125','2256332','Programador',3.500),
 (333256,'José','','Silva','22/09/1994','05332406136','254489477','Rua das Cachoeiras','22368974','Recife','26290824525','1252352','Supervisor',2.500),
 (22654,'Carlos','Rodrgiues','Silva','22/04/1993','02211406156','225668847','Rua Elite das Rosas','223654789','São Paulo','16293854627','4553246','Telefonista',4.300),
 (22365,'Rodrigo','Ribeiro','Bento','21/06/1992','26836457432','224663256','Rua Jacaré Rodrigues','22147985','Nova Veneza','22534694165','1398421','Gerente',10.500)
 Insert into Departamentos(Codigodep,Nome,Localizacao,CodigoFuncionarioGerente)
 values(233,'Pessoal','Rua Simoes de Lima','2336589'),
 (366,'administrivo','Rua Soares Andrade','2214556'),
 (455,'comercial','Rua Pascoal Peixoto','2122526'),
 (677,'Recrusos','Rua Pascoal Peixoto','22145589'),
 (322,'TI','Rua Pascoal Afonso','322676')


/*Exercicio 1:*/
Select SegundoNome,UltimoNome FROM Funcionarios ORDER BY SegundoNome
/*Exercício 2:*/
Select * From Funcionarios ORDER BY  Cidade
/*Exercicio 3:*/
Select * From Funcionarios where Salario >1000 Order by PrimeiroNome,SegundoNome,UltimoNome
/*Exercício 4:*/
Select DataNasc,PrimeiroNome From Funcionarios Order by DataNasc  Desc
/*Exercicio 5: */
SELECT UltimoNome, PrimeiroNome,
SegundoNome, Fone, Endereco,
Cidade
FROM Funcionarios
ORDER BY UltimoNome, PrimeiroNome,
SegundoNome/*Exercicio 6:*/
SELECT SUM(Salario) AS TOTAL
FROM Funcionarios
/*Exercicio 7:*/
SELECT PrimeiroNome, Nome,
Funcao
FROM Funcionarios JOIN
Departamentos 
ON CodigoDepartamento = Codigodep
ORDER BY PrimeiroNome/*Exercio 8:*/SELECT Nome, PrimeiroNome
FROM Departamentos  JOIN
Funcionarios 
ON CodigoFuncionarioGerente =
Codigo
ORDER BY Nome/*Exercicio 9:*/SELECT Nome, SUM(Salario) AS
Total
FROM Departamentos JOIN
Funcionarios 
ON Codigo = Codigodep
GROUP BY Nome/*Exercicio 10:*/SELECT Nome, PrimeiroNome
FROM Departamentos  JOIN
Funcionarios 
ON Codigo = Codigodep
WHERE Funcao = ‘Supervisor’
ORDER BY Nome /*Exercicio 11:*/SELECT COUNT(*) AS
TotalFuncionarios
FROM Funcionarios/*Exercicio 12:*/SELECT AVG(Salario) AS Media
FROM Funcionarios/*Exercicio 13:*/SELECT Nome, MIN(Salario)
FROM Funcionarios  JOIN
Departamentos 
ON CodigoDepartamento = Codigodep
GROUP BY Nome/*Exercicio 14:*/SELECT PrimeiroNome, SegundoNome,
UltimoNome
FROM Funcionarios
WHERE SegundoNome IS NULL
ORDER BY PrimeiroNome, UltimoNome/*Exercicio 15:*/SELECT Nome, PrimeiroNome
FROM Departamentos  JOIN
Funcionarios  ON Codigo =
Codigodep
ORDER BY Nome, PrimeiroNome/*EXERCICIO 16:*/SELECT PrimeiroNome
FROM Funcionarios
WHERE Cidade = 'Recife' AND Funcao
= 'Telefonista'/*Exercicio 17:*/SELECT PrimeiroNome
FROM Funcionarios
WHERE Codigo =
(SELECT Codigodep
FROM Departamentos
WHERE Nome = 'Pessoal')/*Exercicio 18:*/SELECT PrimeiroNome, Nome
FROM Funcionarios  JOIN Departamentos 
ON Codigodep = Codigo
WHERE Salario > SOME (
SELECT Salario
FROM Funcionarios
WHERE Codigo IN (
SELECT CodigoFuncionarioGerente
FROM Departamentos ) );/*Exercicio 19:*/SELECT PrimeiroNome
FROM Funcionarios
WHERE Cidade = 'Curitiba' AND Funcao
= 'Telefonista'/*Exercio 20:*/SELECT PrimeiroNome
FROM Funcionarios
WHERE Cidade = 'Recife' AND Funcao
= 'Programador'





