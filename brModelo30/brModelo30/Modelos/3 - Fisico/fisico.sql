-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE alunos (
id_alunos SERIAL PRIMARY KEY,
nome VARCHAR(20),
rg VARCHAR(12),
cidade VARCHAR(20),
estado VARCHAR(20),
telefone VARCHAR(12),
e-mail VARCHAR(24)
)

CREATE TABLE planos (
id_planos VARCHAR(10) PRIMARY KEY,
nome VARCHAR(10),
id_curso VARCHAR(10)
)

CREATE TABLE curso (
id_curso VARCHAR(10) PRIMARY KEY,
nome VARCHAR(10)
)

CREATE TABLE instrutor (
id_instrutor VARCHAR(10) PRIMARY KEY,
nome VARCHAR(10)
)

CREATE TABLE matricula (
id_matricula VARCHAR(10) PRIMARY KEY,
nome VARCHAR(10),
id_aluno VARCHAR(10),
FOREIGN KEY(id_aluno) REFERENCES alunos (id_aluno)
)

CREATE TABLE aluno_plano (
id_aluno VARCHAR(10),
id_planos VARCHAR(10),
FOREIGN KEY(id_aluno) REFERENCES alunos (id_aluno),
FOREIGN KEY(id_planos) REFERENCES planos (id_planos)
)

CREATE TABLE curso_instrutor (
id_instrutor VARCHAR(10),
id_curso VARCHAR(10),
FOREIGN KEY(id_instrutor) REFERENCES instrutor (id_instrutor),
FOREIGN KEY(id_curso) REFERENCES curso (id_curso)
)

CREATE TABLE aluno_instrutor (
id_aluno VARCHAR(10),
id_instrutor VARCHAR(10),
FOREIGN KEY(id_aluno) REFERENCES alunos (id_aluno),
FOREIGN KEY(id_instrutor) REFERENCES instrutor (id_instrutor)
)

ALTER TABLE planos ADD FOREIGN KEY(id_curso) REFERENCES curso (id_curso)
