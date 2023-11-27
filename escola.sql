CREATE DATABASE ESCOLA;

USE ESCOLA;


CREATE TABLE ALUNO(
  ID SERIAL PRIMARY KeY,
  nome VARCHAR(255),
  email VARCHAR(255),
  endereço VARCHAR(255)
);


INSERT INTO ALUNO (
  ID, nome, email, endereço) VALUES
  ( 'João Silva', 'joao@email.com', 'Rua A'),      
  ('Maria Oliveira', 'maria@email.com', 'Rua B')  
  ;
