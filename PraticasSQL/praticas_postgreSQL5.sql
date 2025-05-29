-- CREATE DATABASE juncao;

-- CREATE TABLE profissoes(
--	id SERIAL PRIMARY KEY,
--	cargo VARCHAR(50) NOT NULL
-- );

-- CREATE TABLE clientes(
--	id SERIAL PRIMARY KEY,
--	nome VARCHAR(50) NOT NULL,
--	data_nascimento DATE NOT NULL,
--	telefone VARCHAR(10) NOT NULL,
--	id_profissao INT REFERENCES profissoes(id) NOT NULL
-- );

-- CREATE TABLE consumidor(
--	id SERIAL PRIMARY KEY,
--	nome VARCHAR(50) NOT NULL,
--	contato VARCHAR(50) NOT NULL,
--	endereco VARCHAR(100) NOT NULL,
--	cidade VARCHAR(100) NOT NULL,
--	cep VARCHAR(20) NOT NULL,
--	pais VARCHAR(50) NOT NULL
-- );

-- INSERT INTO profissoes (cargo) VALUES ('Programador');
-- INSERT INTO profissoes (cargo) VALUES ('Analista de Sistemas');
-- INSERT INTO profissoes (cargo) VALUES ('Suporte');
-- INSERT INTO profissoes (cargo) VALUES ('Gerente');

-- INSERT INTO clientes (nome, data_nascimento, telefone, id_profissao) VALUES ('Joao Pereira', '1981-06-15', '1234-7878', 1);
-- INSERT INTO clientes (nome, data_nascimento, telefone, id_profissao) VALUES ('Ricardo da Silva', '1991-03-23', '2231-8823', 2);
-- INSERT INTO clientes (nome, data_nascimento, telefone, id_profissao) VALUES ('Felipe Oliveira', '1972-08-20', '8982-1132', 3);
-- INSERT INTO clientes (nome, data_nascimento, telefone, id_profissao) VALUES ('Mario Lopez', '1989-11-15','7728-9231', 4);

-- INSERT INTO consumidor (nome, contato, endereco, cidade, cep, pais) VALUES ('Alfredo Nunes', 'Maria Nunes', 'Rua da paz, 47', 'São Paulo', '13.223-221', 'Brasil');
-- INSERT INTO consumidor (nome, contato, endereco, cidade, cep, pais) VALUES ('Ana Trulijo', 'Guilherme Souza', 'Rua Dourada, 23', 'Goiânia', '21.330-113', 'Brasil');
-- INSERT INTO consumidor (nome, contato, endereco, cidade, cep, pais) VALUES ('Leandro Veloz', 'Pedro Siqueira', 'Rua vazia, 201', 'São Paulo', '11.928-423', 'Brasil');

-- Junção de produto cartesiano
-- SELECT c.id, c.nome, c.data_nascimento, c.telefone, p.cargo
--	FROM clientes AS c, profissoes AS p
--	WHERE c.id_profissao = p.id;


-- Inner Join
-- SELECT c.id, c.nome, c.data_nascimento, c.telefone, p.cargo
-- FROM clientes AS c INNER JOIN profissoes AS p
-- ON c.id_profissao = p.id;

-- Left Outer Join
-- SELECT * FROM clientes
-- LEFT OUTER JOIN profissoes
-- ON clientes.id_profissao = profissoes.id;

-- Right Outer Join
-- SELECT * FROM clientes
-- RIGHT OUTER JOIN profissoes
-- ON clientes.id_profissao = profissoes.id;

-- Full Outer Join (Funciona no PostgreSQL, mas não no MySQL)
-- SELECT * FROM clientes
-- FULL OUTER JOIN profissoes
-- ON clientes.id_profissao = profissoes.id;

-- Full Outer Join (Versão MySQL)
-- SELECT * FROM clientes
-- LEFT OUTER JOIN profissoes
-- ON clientes.id_profissao = profissoes.id
-- UNION 
-- SELECT * FROM clientes
-- RIGHT OUTER JOIN profissoes
-- ON clientes.id_profissao = profissoes.id;

-- Cross Join
-- SELECT c.id, c.nome, c.data_nascimento, c.telefone, p.cargo
-- FROM clientes AS c
-- CROSS JOIN profissoes AS p;

-- Self Join
-- SELECT a.nome AS Consumidor1, b.nome AS Consumidor2, a.cidade
-- FROM consumidor AS a
-- INNER JOIN consumidor AS b
-- ON a.id <> b.id
-- AND a.cidade = b.cidade
-- ORDER BY a.cidade;