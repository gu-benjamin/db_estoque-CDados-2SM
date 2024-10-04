USE db_estoque;

SELECT * FROM produtos;
SELECT * FROM fornecedores;
SELECT * FROM pedidos;

-- EX 4 CONSULTAS

-- a)
SELECT * FROM produtos WHERE quantidade_estoque = (SELECT MIN(quantidade_estoque) FROM produtos);

-- b) 
SELECT * FROM produtos WHERE preco = (SELECT MAX(preco) FROM produtos);

-- c)
SELECT COUNT(id_produto) AS 'Quantidade de produtos cadastrados' FROM produtos;

-- d)
SELECT * FROM pedidos WHERE data_pedido = '2024-10-02';

-- e)
SELECT nome FROM fornecedores ORDER BY nome ASC;

-- f)
SELECT nome FROM produtos ORDER BY nome DESC;
