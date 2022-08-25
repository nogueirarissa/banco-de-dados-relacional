CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id bigint auto_increment primary key,
descricao varchar(255),
tamanho varchar(255),
borda_recheada boolean
);

CREATE TABLE tb_pizzas(
id bigint auto_increment primary key,
sabor varchar(255),
preco decimal(6,2),
massa varchar(255),
quantidade int,
categoria_id bigint, 

FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id)
);
/*Lê-se a chave estrangeira "pega dentro da tabela de categorias o id único (chave primária) que
se relaciona com a tabela pizzas";
O tipo de dado da primary key deve ser o mesmo tipo de dado da chave estrangeira
neste caso o bigint;
Para criar a foreign key é necessário ter uma categoria para a qual ela irá se referenciar*/

SELECT * FROM tb_categorias;

INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUES("Salgada","Brotinho",true); 
INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUES("Salgada","Brotinho",false); 
INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUES("Salgada","Médio",true); 
INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUES("Salgada","Médio",false); 
INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUES("Salgada","Grande",true); 
INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUES("Salgada","Grande",false); 

INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUES("Doce","Brotinho",true);
INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUES("Doce","Média",true); 
INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUES("Doce","Grande",true); 

SELECT * FROM tb_pizzas;

INSERT INTO tb_pizzas(sabor,preco,massa,quantidade,categoria_id)VALUES("Frango c/ Catupiry",39.90,"Tradicional",5,1);
INSERT INTO tb_pizzas(sabor,preco,massa,quantidade,categoria_id)VALUES("Pepperoni",59.90,"Tradicional",5,5);
INSERT INTO tb_pizzas(sabor,preco,massa,quantidade,categoria_id)VALUES("Mussarela",49.90,"Tradicional",5,6);
INSERT INTO tb_pizzas(sabor,preco,massa,quantidade,categoria_id)VALUES("Romeu e julieta",29.90,"Tradicional",5,8);
INSERT INTO tb_pizzas(sabor,preco,massa,quantidade,categoria_id)VALUES("Lombo c/ Catupiry",49.90,"Tradicional",5,3);
INSERT INTO tb_pizzas(sabor,preco,massa,quantidade,categoria_id)VALUES("Portuguesa",39.90,"Tradicional",5,4);
INSERT INTO tb_pizzas(sabor,preco,massa,quantidade,categoria_id)VALUES("Calabresa",29.90,"Tradicional",5,2);



/*Faça um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00.*/
SELECT  * FROM tb_pizzas WHERE preco >= 45;

/*Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 
e R$ 100,00*/
SELECT * FROM tb_pizzas WHERE preco > 50 AND preco < 100;
/*ou*/
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;

/*Faça um SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a 
letra M no atributo nome.*/
SELECT * FROM  tb_pizzas WHERE sabor LIKE '%m%';

/*Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela 
tb_pizzas com os dados da tabela tb_categorias.*/
SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id;
