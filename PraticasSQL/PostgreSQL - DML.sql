-- SELECT * FROM tipos_produto;

-- SELECT * FROM produtos;

-- Update

UPDATE tipos_produto set descricao = 'Nobreak' WHERE codigo = 3;

UPDATE produtos set descricao = 'Notebook', preco = '2600' WHERE codigo = 2;

-- Atenção ao UPDATE sem WHERE

-- Delete
DELETE FROM produtos WHERE codigo >= 3;

-- Atenção á DELETE sem WHERE