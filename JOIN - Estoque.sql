USE db_estoque;

SELECT * FROM produtos;
SELECT * FROM fornecedores;
SELECT * FROM pedidos;

-- EX 5 JOIN

-- a)
SELECT Pr.nome, preco, F.nome FROM pedidos AS Pe
INNER JOIN produtos AS Pr ON Pe.id_produto = Pr.id_produto
INNER JOIN fornecedores AS F ON Pe.id_fornecedor = F.id_fornecedor;

-- b)
SELECT id_pedido, Pr.nome, F.nome, data_pedido FROM pedidos AS Pe
INNER JOIN produtos AS Pr ON Pe.id_produto = Pr.id_produto
INNER JOIN fornecedores AS F ON Pe.id_fornecedor = F.id_fornecedor;

-- c)
SELECT nome, COUNT(Pr.id_produto) AS 'Quantidade de pedidos' FROM produtos AS Pr
INNER JOIN pedidos AS Pe ON Pr.id_produto = Pe.id_produto
GROUP BY Pr.id_produto;

-- d) 
SELECT id_pedido, nome, data_pedido FROM produtos AS Pr
RIGHT JOIN pedidos AS Pe
ON Pr.id_produto = Pe.id_produto
WHERE id_pedido IS NOT NULL AND quantidade_estoque > 0;

-- e)
SELECT Pr.nome, F.nome, quantidade_estoque FROM pedidos AS Pe
INNER JOIN produtos AS Pr ON Pe.id_produto = Pr.id_produto
INNER JOIN fornecedores AS F ON Pe.id_fornecedor = F.id_fornecedor;

-- f)
SELECT Pr.nome, preco, F.nome FROM produtos AS Pr
LEFT JOIN pedidos AS Pe ON Pr.id_produto = Pe.id_produto
INNER JOIN fornecedores AS F ON Pe.id_fornecedor = F.id_fornecedor;