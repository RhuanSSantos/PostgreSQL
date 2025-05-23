-- Alter
ALTER TABLE tipos_produto ADD peso DECIMAL(8,2);

-- Verifica se o novo campo foi adicionado
SELECT * FROM tipos_produto;


-- Drop (Não irá permitir deletar a tabela após contar um relacionamento com produtos)
DROP TABLE tipos_produtos;


-- Aqui podemos deletar todo o banco de dados
DROP DATABASE secao04;