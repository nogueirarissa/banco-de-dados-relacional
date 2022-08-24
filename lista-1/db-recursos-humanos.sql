CREATE DATABASE db_recursos_humanos;

USE db_recursos_humanos;

CREATE TABLE tb_funcionarios(
id bigint auto_increment primary key,
nome varchar(50),
funcao varchar(50),
salario decimal(8,2),
setor varchar(50)
);

INSERT INTO tb_funcionarios(nome,funcao,salario,setor)VALUES("Bianca Dados","Product Owner", 20000,"TIC");
INSERT INTO tb_funcionarios(nome,funcao,salario,setor)VALUES("Driade Lize","Desenvolvedora Jr.", 5000,"TIC");
INSERT INTO tb_funcionarios(nome,funcao,salario,setor)VALUES("Jaíne Lopes","Desenvolvedora Sênior", 15000,"TIC");
INSERT INTO tb_funcionarios(nome,funcao,salario,setor)VALUES("Andressa Silva","Scrum Master", 13000,"TIC");
INSERT INTO tb_funcionarios(nome,funcao,salario,setor)VALUES("Valesca Noronha","Project Manager", 22000,"TIC");

/*Faça um SELECT que retorne todes os colaboradores com o salário maior do que 20000*/
SELECT * FROM tb_funcionarios;

/*Faça um SELECT que retorne todes os colaboradores com o salário menor do que 20000*/
SELECT * FROM tb_funcionarios WHERE salario >=20000;

/*Faça um SELECT que retorne todes os colaboradores com o salário menor do que 2000*/
SELECT * FROM tb_funcionarios WHERE salario < 20000;

UPDATE tb_funcionarios SET salario = 15000 WHERE id = 2; 
UPDATE tb_funcionarios SET funcao = "Desenvolvedora Sênior" WHERE id = 2;
