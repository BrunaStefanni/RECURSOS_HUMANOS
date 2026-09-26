CREATE DATABASE next_people;
USE next_people;

/* Criação de base de dados para trabalho de SQL - Empresa de RH Next People */

CREATE TABLE candidato(
id_candidato INT PRIMARY KEY AUTO_INCREMENT,
nome_candidato VARCHAR (50),
email VARCHAR (50),
telefone VARCHAR (50),
data_nascimento DATE,
data_registro DATE,
morada VARCHAR (100)
);

CREATE TABLE empresa(
id_empresa INT PRIMARY KEY AUTO_INCREMENT,
nome_empresa VARCHAR (50),
nif INT,
email VARCHAR (50),
telefone VARCHAR (50),
morada VARCHAR (100),
website VARCHAR (100)
);

CREATE TABLE recrutador(
id_recrutador INT PRIMARY KEY AUTO_INCREMENT,
nome_recrutador VARCHAR (50),
email VARCHAR (50),
telefone VARCHAR (50),
id_empresa INT,
FOREIGN KEY (id_empresa) REFERENCES empresa(id_empresa)
);

CREATE TABLE localizacao(
id_localizacao INT PRIMARY KEY AUTO_INCREMENT,
cidade VARCHAR (50),
distrito VARCHAR (50),
pais VARCHAR (50)
);

CREATE TABLE vaga(
id_vaga INT PRIMARY KEY AUTO_INCREMENT,
titulo VARCHAR (50),
descricao VARCHAR (200),
data_publicacao DATE,
data_limite DATE,
salario_min DECIMAL (10,2),
salario_max  DECIMAL (10,2),
tipo_contrato VARCHAR (50),
id_empresa INT,
id_recrutador INT,
id_localizacao INT,

FOREIGN KEY (id_empresa) REFERENCES empresa(id_empresa),
FOREIGN KEY (id_recrutador) REFERENCES recrutador(id_recrutador),
FOREIGN KEY (id_localizacao) REFERENCES localizacao(id_localizacao)
);

CREATE TABLE estado_candidatura(
id_estado INT PRIMARY KEY AUTO_INCREMENT,
descricao VARCHAR (50)
);

CREATE TABLE candidatura(
id_candidatura INT PRIMARY KEY AUTO_INCREMENT,
data_candidatura DATE,
salario_pretendido DECIMAL (10,2),
carta_apresentacao VARCHAR (500),
id_candidato INT,
id_vaga INT,
id_estado INT,

FOREIGN KEY (id_candidato) REFERENCES candidato(id_candidato),
FOREIGN KEY (id_vaga) REFERENCES vaga(id_vaga),
FOREIGN KEY (id_estado) REFERENCES estado_candidatura(id_estado)
);

CREATE TABLE entrevista(
id_entrevista INT PRIMARY KEY AUTO_INCREMENT,
data_entrevista DATE,
tipo VARCHAR (50),
observacoes VARCHAR (50),
avaliacao INT,
id_candidatura INT,
FOREIGN KEY (id_candidatura) REFERENCES candidatura(id_candidatura)
);

CREATE TABLE qualificacao(
id_qualificacao INT PRIMARY KEY AUTO_INCREMENT,
nome_qualificacao VARCHAR (50),
descricao VARCHAR (500)
);

CREATE TABLE candidato_qualificacao(
id_candidato_qualificacao INT PRIMARY KEY AUTO_INCREMENT,
id_candidato INT, 
id_qualificacao INT, 
nivel VARCHAR (50),

FOREIGN KEY (id_candidato) REFERENCES candidato (id_candidato), 
FOREIGN KEY (id_qualificacao) REFERENCES qualificacao (id_qualificacao)
);

CREATE TABLE vaga_qualificacao(
id_vaga_qualificacao INT PRIMARY KEY AUTO_INCREMENT,
id_vaga INT,
id_qualificacao INT,
nivel_minimo VARCHAR (50),

FOREIGN KEY (id_vaga) REFERENCES vaga(id_vaga),
FOREIGN KEY (id_qualificacao) REFERENCES qualificacao(id_qualificacao)
);

CREATE TABLE experiencia_profissional(
id_experiencia INT PRIMARY KEY AUTO_INCREMENT,
id_candidato INT,
empresa VARCHAR (50),
data_inicio DATE,
data_fim DATE,
descricao VARCHAR (500),

FOREIGN KEY (id_candidato) REFERENCES candidato(id_candidato)
);

CREATE TABLE formacao(
id_formacao INT PRIMARY KEY AUTO_INCREMENT,
id_candidato INT,
instituicao VARCHAR (50),
curso VARCHAR (50),
grau INT,
data_inicio DATE,
data_fim DATE,

FOREIGN KEY (id_candidato) REFERENCES candidato(id_candidato)
);

CREATE TABLE historico_candidatura(
id_historico INT PRIMARY KEY AUTO_INCREMENT,
id_candidatura INT,
id_estado INT,
data_alteracao DATE,
observacao VARCHAR (100),

FOREIGN KEY (id_candidatura) REFERENCES candidatura(id_candidatura),
FOREIGN KEY (id_estado) REFERENCES estado_candidatura(id_estado)
);