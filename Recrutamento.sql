CREATE DATABASE refirmas;
USE refirmas;

//Atualmente o nome da empresa está como refirmas, mas será alterado futuramente//

CREATE TABLE candidato(
id_candidato INT PRIMARY KEY,
nome_candidato VARCHAR (50),
email VARCHAR (50),
telefone INT,
data_nascimento DATE,
data_registro DATE,
);

CREATE TABLE empresa(
id_empresa INT PRIMARY KEY,
nome_empresa VARCHAR (50),
nif INT,
email VARCHAR (50),
telefone INT,
website VARCHAR (100),
);

CREATE TABLE recrutador(
id_recrutador INT PRIMARY KEY,
nome_recrutador VARCHAR (50),
email VARCHAR (50),
telefone INT,
id_empresa INT,
FK
);

CREATE TABLE localizacao(
id_localizacao INT PRIMARY KEY,
cidade VARCHAR (50),
distrito VARCHAR (50),
pais VARCHAR (50),
);

CREATE TABLE vaga(
id_vaga INT PRIMARY KEY,
titulo VARCHAR (50)
descricao VARCHAR (200),
data_publicacao DATE,
data_limite DATE,
salario_min DECIMAL (10,2),
salario_max  DECIMAL (10,2),
tipo_contrato VARCHAR (50),
id_empresa INT,
FK
id_recrutador INT,
FK
id_localizacao INT,
FK
);

CREATE TABLE candidatura(

);

CREATE TABLE entrevista(

);

CREATE TABLE qualificacao(

);

CREATE TABLE candidato_qualificacao(

);

CREATE TABLE vaga_qualificacao(

);

CREATE TABLE experiencia_profissional(

);

CREATE TABLE formacao(

);

CREATE TABLE estado_candidatura(

);

CREATE TABLE historico_candidatura(

);