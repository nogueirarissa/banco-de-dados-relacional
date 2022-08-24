/*Comando de criação de banco de dados - Comando de Definição de Dados*/
CREATE DATABASE db_escola;

/*Seleciona o banco de dados que será usado, pode ser visto em negrito ao lado*/
USE db_escola;

/*Comando para criação de tabela*/
/**Lê-se no comando abaixo id é o nome da coluna, auto increment passa o ID automaticamente
e indica, em sequência que essa é a chave primária */
/*No decimal, o que está entre () é o formato da nota, ou seja são quatro números no total  e aceita apenas 2 número depois da vírgula*/
CREATE TABLE tb_alunes(
	id bigint auto_increment primary key,
    nome varchar(255),
    data_nascimento date,
    turma int,
    nota decimal(4,2) 
);
/**Esse comando executa: Me traga todos os resultados da minha tabela de alunes
Daqui para baixo será feito manipulação de dados
Esse dado é para visualização de dados*/

/*Inserir dados na tabela (8 registros)*/
INSERT INTO tb_alunes(nome,data_nascimento,turma,nota)VALUES("Larissa Nogueira","1997-07-31",57,10);
INSERT INTO tb_alunes(nome,data_nascimento,turma,nota)VALUES("Amanda Dias","1989-05-10",57,8.5);
INSERT INTO tb_alunes(nome,data_nascimento,turma,nota)VALUES("Otávio Fonseca","1995-02-20",57,7.6);
INSERT INTO tb_alunes(nome,data_nascimento,turma,nota)VALUES("Gustavo Raiz","1996-03-04",57,6.5);
INSERT INTO tb_alunes(nome,data_nascimento,turma,nota)VALUES("Diogo Guimarães","1996-05-30",57,8.9);
INSERT INTO tb_alunes(nome,data_nascimento,turma,nota)VALUES("Jessica Lopes","1997-09-17",57,5);
INSERT INTO tb_alunes(nome,data_nascimento,turma,nota)VALUES("Kathelen Fagundes","1990-03-16",57,6.8);
INSERT INTO tb_alunes(nome,data_nascimento,turma,nota)VALUES("Felipe Poglieri","1988-12-01",57,7);

/*Seleciona todos os dados tabela*/
/*O * pode ser substituído pelo atributo que se está buscando*/
SELECT * FROM tb_alunes;

/*Seleciona todos os dados da tabela de alunes ONDE a nota foi maior ou igual a 7*/
SELECT * FROM tb_alunes WHERE nota >= 7;

/*Seleciona todos os dados da tabela de alunes ONDE a nota foi menor que 7*/
SELECT * FROM tb_alunes WHERE nota < 7;

/**No dia a dia da empresa, é comum limitar o número de registros que aparecem para poder 
trazer o resultado mais rápido no caso ficaria SELECT * FROM tb_alunes WHERE nota < 7 LIMIT 100*/

UPDATE tb_alunes SET nota = 10 WHERE id = 6;
UPDATE tb_alunes SET nota = 6.9 WHERE id = 2;