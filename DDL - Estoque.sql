CREATE DATABASE db_estoque;
USE db_estoque;

CREATE TABLE produtos(
id_produto INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
descricao TEXT,
preco DECIMAL(10,2) NOT NULL,
quantidade_estoque INT NOT NULL,
PRIMARY KEY(id_produto)
);

CREATE TABLE fornecedores(
id_fornecedor INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
telefone VARCHAR(15),
email VARCHAR(100),
PRIMARY KEY(id_fornecedor)
);

CREATE TABLE pedidos(
id_pedido INT NOT NULL AUTO_INCREMENT,
id_produto INT,
id_fornecedor INT,
data_pedido DATE NOT NULL,
quantidade INT NOT NULL,
PRIMARY KEY(id_pedido),
FOREIGN KEY(id_produto) REFERENCES produtos(id_produto),
FOREIGN KEY(id_fornecedor) REFERENCES fornecedores(id_fornecedor)
);

SELECT * FROM produtos;
SELECT * FROM fornecedores;
SELECT * FROM pedidos;

