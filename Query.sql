--------------------------------------------------------------------------------------
-- Criação da Tabela de cachorros
--------------------------------------------------------------------------------------
CREATE TABLE cachorros (
    id INTEGER NOT NULL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
);
--------------------------------------------------------------------------------------
-- Inserção de dados de exemplo para cachorros
--------------------------------------------------------------------------------------
INSERT INTO cachorros (id, nome) VALUES
    (1, 'Max'),
    (2, 'Bella'),
    (3, 'Charlie'),
    (4, 'Max');
--------------------------------------------------------------------------------------
-- Criação da Tabela de gatos
--------------------------------------------------------------------------------------
CREATE TABLE gatos (
    id INTEGER NOT NULL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
);
--------------------------------------------------------------------------------------
-- Inserção de dados de exemplo para gatos
--------------------------------------------------------------------------------------
INSERT INTO gatos (id, nome) VALUES
    (1, 'Max'),
    (2, 'Chloe'),
    (3, 'Simba'),
    (4, 'Luna');
--------------------------------------------------------------------------------------
-- QUERY --
--------------------------------------------------------------------------------------
SELECT nome FROM cachorros
WHERE nome NOT IN (SELECT nome FROM gatos)

UNION

SELECT nome FROM gatos
WHERE nome NOT IN (SELECT nome FROM cachorros);