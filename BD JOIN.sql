CREATE table disciplinas(
  id_disciplinas SERIAL PRIMARY KEY,
  nome_disciplina VARCHAR(50) NOT NULL,
  nome_professor VARCHAR(50) not NULL

);

CREATE TABLE alunos (
  id_alunos SERIAL PRIMARY KEY,
  nome_alunos VARCHAR(50) NOT NULL,
  disciplinas_id INT,
  CONSTRAINT fk_disciplinas
    FOREIGN KEY (disciplinas_id)
    REFERENCES disciplinas(id_disciplinas)
);

INSERT into disciplinas(nome_disciplina, nome_professor)
VALUES('Banco de Dados','Maria Alves')
INSERT into disciplinas(nome_disciplina, nome_professor)
VALUES('Python','Pietro Souza')
INSERT into disciplinas(nome_disciplina, nome_professor)
VALUES('POO','Bia Tavares')


select * from disciplinas
SELECT * FROM alunos

insert INTO alunos(nome_alunos, disciplinas_id) values('Cleiton', 2)
insert INTO alunos(nome_alunos, disciplinas_id) values('Carol', null)
insert INTO alunos(nome_alunos, disciplinas_id) values('Ruan', 2)
insert INTO alunos(nome_alunos, disciplinas_id) values('Gabi', 1)
insert INTO alunos(nome_alunos, disciplinas_id) values('Rian', null)
insert INTO alunos(nome_alunos, disciplinas_id) values('Mia', 2)
insert INTO alunos(nome_alunos, disciplinas_id) values('Malu', 1)


select nome_alunos, nome_disciplina from alunos
inner join disciplinas
on disciplinas.id_disciplinas = alunos.disciplinas_id

select nome_alunos, nome_disciplina
FROM
alunos left join disciplinas
on disciplinas.id_disciplinas = alunos.disciplinas_id;

select nome_alunos, nome_disciplina
FROM
alunos RIGHT join disciplinas
on disciplinas.id_disciplinas = alunos.disciplinas_id;

select nome_alunos, nome_disciplina
FROM
alunos left join disciplinas
on disciplinas.id_disciplinas = alunos.disciplinas_id

UNION

select nome_alunos, nome_disciplina
FROM
disciplinas RIGHT join alunos
on disciplinas.id_disciplinas = alunos.disciplinas_id

