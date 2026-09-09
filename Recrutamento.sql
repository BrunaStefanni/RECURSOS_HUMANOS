CREATE DATABASE refirmas;
USE refirmas;

//Atualmente o nome da empresa está como refirmas, mas será alterado futuramente//

CREATE TABLE candidato(
id_candidato INT PRIMARY KEY,
nome_candidato VARCHAR (50),
email VARCHAR (50),
telefone INT,
data_nascimento DATE,
data_registro DATE
);

CREATE TABLE empresa(
id_empresa INT PRIMARY KEY,
nome_empresa VARCHAR (50),
nif INT,
email VARCHAR (50),
telefone INT,
website VARCHAR (100)
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
pais VARCHAR (50)
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

CREATE TABLE estado_candidatura(
id_estado INT PRIMARY KEY,
descricao VARCHAR (50)
);

CREATE TABLE candidatura(
id_candidatura INT PRIMARY KEY,
data_candidatura DATE,
salario_pretendido DECIMAL (10,2),
carta_apresentacao VARCHAR (500),
id_candidato INT,
FK
id_vaga INT,
FK
id_estado INT,
FK
);

CREATE TABLE entrevista(
id_entrevista INT PRIMARY KEY,
data_entrevista DATE,
tipo VARCHAR (50),
observacoes VARCHAR (50),
avaliacao INT,
id_candidatura INT,
FK
);

CREATE TABLE qualificacao(
id_qualificacao INT PRIMARY KEY,
nome_qualificacao VARCHAR (50),
descricao VARCHAR (500)
);

CREATE TABLE candidato_qualificacao(
id_candidato INT,
FK
id_qualificacao INT,
FK
nivel VARCHAR (50)
);

CREATE TABLE vaga_qualificacao(
id_vaga INT,
FK
id_qualificacao INT,
FK
nivel_minimo VARCHAR (50)
);

CREATE TABLE experiencia_profissional(
id_experiencia INT PRIMARY KEY,
id_candidato INT,
FK
empresa VARCHAR (50),
data_inicio DATE,
data_fim DATE,
descricao VARCHAR (500)
);

CREATE TABLE formacao(
id_formacao INT PRIMARY KEY,
id_candidato INT,
FK
instituicao VARCHAR (50),
curso VARCHAR (50),
grau INT,
data_inicio DATE,
data_fim DATE
);

CREATE TABLE historico_candidatura(
id_historico INT PRIMARY KEY,
id_candidatura INT,
FK
id_estado INT,
FK
data_alteracao DATE,
observacao VARCHAR (100)
);