CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
id bigint auto_increment primary key,
titulo varchar(255),
autor varchar(50),
editora varchar(50),
preco decimal(5,2)
);

INSERT INTO tb_produtos(titulo,autor,editora,preco)VALUES("O Silmarillion","J.R.R. Tolkien","Harpercollins Brasil",69.9);
INSERT INTO tb_produtos(titulo,autor,editora,preco)VALUES("Ponto de Impacto","Dan Brown","Arqueiro",59.9);
INSERT INTO tb_produtos(titulo,autor,editora,preco)VALUES("A insustentável Levez do Ser","Milan Kundera","Companhia ded Bolso",48.92);
INSERT INTO tb_produtos(titulo,autor,editora,preco)VALUES("Crime e Castigo","Fiódor Dostoiévski","Martin Claret",75.37);
INSERT INTO tb_produtos(titulo,autor,editora,preco)VALUES("A Menina Que Roubava Livros","Markus Zusak","Intrínseca",39.99);
INSERT INTO tb_produtos(titulo,autor,editora,preco)VALUES("Vigiar e Punir","Michel Foucault","Vozes",41.94);
INSERT INTO tb_produtos(titulo,autor,editora,preco)VALUES("Por Que Nós Dormimos: A Nova Ciência do Sono e do Sonho","Matthew Walker ","Intrínseca",55.20);
INSERT INTO tb_produtos(titulo,autor,editora,preco)VALUES("A arte da guerra","Sun Tzu","Principis",12.80);

SELECT * FROM tb_produtos;

/*Faça um SELECT que retorne todes os produtos com o valor maior do que 50*/
SELECT * FROM tb_produtos WHERE preco >= 50;

/*Faça um SELECT que retorne todes os produtos com o valor menor do que 50*/
SELECT * FROM tb_produtos WHERE preco < 50;

UPDATE tb_produtos SET preco = 19.99 WHERE id = 5;
