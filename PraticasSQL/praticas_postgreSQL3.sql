-- CREATE TABLE tipos_produto(
--	codigo SERIAL PRIMARY KEY,
--	descricao VARCHAR(50) NOT NULL
-- );

-- CREATE TABLE produtos(
--	codigo SERIAL PRIMARY KEY,
--	descricao VARCHAR(50) NOT NULL,
--	preco MONEY NOT NULL,
--	codigo_tipo INT REFERENCES tipos_produto(codigo) NOT NULL
-- );

-- INSERT INTO tipos_produto (descricao) VALUES ('Computador');
-- INSERT INTO tipos_produto (descricao) VALUES ('Impressora');

-- INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Desktop', 1300, 1);
-- INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Laptop', 1100, 1);
-- INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Impressora Laser', 458, 2);
-- INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Imp. Jato de tinta', 389, 2);

-- SELECT * FROM tipos_produto WHERE codigo = 1;

-- SELECT * FROM produtos WHERE descricao = 'Laptop';

-- SELECT * FROM produtos WHERE preco <= 'R$500';

