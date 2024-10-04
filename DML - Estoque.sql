USE db_estoque;

SELECT * FROM produtos;
SELECT * FROM fornecedores;
SELECT * FROM pedidos;

INSERT INTO produtos VALUES
('1', 'Mouse', 'Um mouse pra usar no pc.', '55.99', '50'),
('2', 'Teclado', 'Um teclado pra usar no pc.', '85.99', '40'),
('3', 'Monitor', 'Um monitor pra usar no pc.', '955.99', '65'),
('4', 'Headset', 'Um headset pra usar no pc.', '355.99', '25'),
('5', 'Caixa de som', 'Caixas de som pra usar no pc.', '105.99', '70');

INSERT INTO fornecedores VALUES
('1', 'Redragon', '119123456789101', 'redragonbrasil@gmail.com'),
('2', 'Asus', '119133456749201', 'asusbrasil@gmail.com'),
('3', 'Razer', '119130478749223', ''),
('4', 'Havit', '', 'havitbrasil@gmail.com'),
('5', 'Ajazz', '', '');

INSERT INTO pedidos VALUES
('1', '1', '1', '2024-03-13', '1'),
('2','2', '2', '2024-03-25', '1'),
('3', '3', '3', '2024-05-14', '2'),
('4', '4', '2', '2024-08-07', '3'),
('5', '3', '2', '2024-10-01', '4');

INSERT INTO pedidos VALUES
('6', '2', '1', '2024-10-02', '1');