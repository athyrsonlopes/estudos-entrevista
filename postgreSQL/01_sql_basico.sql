Comandos SQL - PostgreSQL


-- CRIANDO TABELA


CREATE TABLE usuarios (
  id         SERIAL PRIMARY KEY,
  nome       VARCHAR(100) NOT NULL,
  email      VARCHAR(150) NOT NULL UNIQUE,
  idade      INTEGER,
  ativo      BOOLEAN DEFAULT true,
  criado_em  TIMESTAMP DEFAULT NOW()
);


-- INSERT - inserindo dados

-- inserindo um registro
INSERT INTO usuarios (nome, email, idade)
VALUES ('Athyrson', 'athy@email.com', 25);

-- inserindo vários de uma vez
INSERT INTO usuarios (nome, email, idade) VALUES
  ('Jess',    'jess@email.com',    30),
  ('Juninhos','juninhos@email.com', 28),
  ('Maria',   'maria@email.com',   22);


-- SELECT - buscando dados

-- buscar todos
SELECT * FROM usuarios;

-- buscar colunas específicas
SELECT nome, email FROM usuarios;

-- buscar com condição
SELECT * FROM usuarios WHERE ativo = true;
SELECT * FROM usuarios WHERE idade >= 25;
SELECT * FROM usuarios WHERE nome = 'Athyrson';

-- buscar com múltiplas condições
SELECT * FROM usuarios WHERE ativo = true AND idade >= 25;
SELECT * FROM usuarios WHERE idade < 20 OR idade > 30;

-- ordenar resultados
SELECT * FROM usuarios ORDER BY nome ASC;   -- crescente
SELECT * FROM usuarios ORDER BY idade DESC; -- decrescente

-- limitar quantidade de resultados
SELECT * FROM usuarios LIMIT 2;

-- buscar por texto parcial (LIKE)
SELECT * FROM usuarios WHERE nome LIKE 'A%';   -- começa com A
SELECT * FROM usuarios WHERE email LIKE '%@email.com'; -- termina com @email.com

-- contar registros
SELECT COUNT(*) FROM usuarios;
SELECT COUNT(*) FROM usuarios WHERE ativo = true;


-- UPDATE - atualizando dados


-- atualizar um campo
UPDATE usuarios SET ativo = false WHERE id = 1;

-- atualizar múltiplos campos
UPDATE usuarios SET nome = 'Athyrson Lopes', idade = 26 WHERE id = 1;

-- update sem WHERE atualiza TODOS os registros, ex:
-- UPDATE usuarios SET ativo = false; 

-- DELETE - deletando dados

-- deletar um registro específico
DELETE FROM usuarios WHERE id = 1;

-- deletar com condição
DELETE FROM usuarios WHERE ativo = false;

-- delete sem WHERE apaga TUDO, ex:
-- DELETE FROM usuarios;

-- JOIN - combinando tabelas

-- exemplo com duas tabelas relacionadas
CREATE TABLE posts (
  id         SERIAL PRIMARY KEY,
  titulo     VARCHAR(200) NOT NULL,
  conteudo   TEXT,
  usuario_id INTEGER REFERENCES usuarios(id),
  criado_em  TIMESTAMP DEFAULT NOW()
);

-- INNER JOIN - traz só os registros que têm correspondência nas duas tabelas
SELECT usuarios.nome, posts.titulo
FROM posts
INNER JOIN usuarios ON posts.usuario_id = usuarios.id;

-- LEFT JOIN - traz todos os usuários, mesmo os que não têm post
SELECT usuarios.nome, posts.titulo
FROM usuarios
LEFT JOIN posts ON posts.usuario_id = usuarios.id;

-- OUTROS ÚTEIS

-- valor máximo e mínimo
SELECT MAX(idade) FROM usuarios;
SELECT MIN(idade) FROM usuarios;

-- média
SELECT AVG(idade) FROM usuarios;

-- agrupar resultados
SELECT ativo, COUNT(*) FROM usuarios GROUP BY ativo;

-- buscar sem duplicatas
SELECT DISTINCT cidade FROM usuarios;