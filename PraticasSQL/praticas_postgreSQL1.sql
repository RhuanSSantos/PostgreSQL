-- CREATE DATABASE secao03;

-- CREATE TABLE tipos_produto(
--	id SERIAL PRIMARY KEY,
--	descricao CHARACTER VARYING(50) NOT NULL
-- );

-- CREATE TABLE produtos(
--	id SERIAL PRIMARY KEY,
--	descricao CHARACTER VARYING(50) NOT NULL,
--	preco MONEY NOT NULL,
--	id_tipo_produto INT REFERENCES tipos_produto(id) NOT NULL
-- );

CREATE TABLE professores(
	id SERIAL PRIMARY KEY,
	telefone INT NOT NULL,
	nome VARCHAR(50) NOT NULL
);

CREATE TABLE turmas (
	id SERIAL PRIMARY KEY,
	capacidade INT NOT NULL,
	id_professor INT REFERENCES professores(id) NOT NULL
);