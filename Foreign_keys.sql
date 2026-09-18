/* Recrutador  */

id_empresa INT,
FOREIGN KEY (id_empresa) REFERENCES empresa(id_empresa)


/* Vaga  */

id_empresa INT,
id_recrutador INT,
id_localizacao INT,
FOREIGN KEY (id_empresa) REFERENCES empresa(id_empresa)
FOREIGN KEY (id_recrutador) REFERENCES recrutador(id_recrutador)
FOREIGN KEY (id_localizacao) REFERENCES localizacao(id_localizacao)


/* Candidatura  */

id_candidato INT,
id_vaga INT,
id_estado INT,
FOREIGN KEY (id_candidato) REFERENCES candidato(id_candidato),
FOREIGN KEY (id_vaga) REFERENCES vaga(id_vaga),
FOREIGN KEY (id_estado) REFERENCES estado_candidatura(id_estado)


/* Entrevista  */
 
id_candidatura INT,
FOREIGN KEY (id_candidatura) REFERENCES candidatura(id_candidatura)


/* Candidato_Qualificacao  */

id_candidato INT,
id_qualificacao INT,
PRIMARY KEY (id_candidato, id_qualificacao),
FOREIGN KEY (id_candidato) REFERENCES candidato(id_candidato),
FOREIGN KEY (id_qualificacao) REFERENCES qualificacao(id_qualificacao)


/* Vaga_Qualificacao  */

id_vaga INT,
id_qualificacao INT,
PRIMARY KEY (id_vaga, id_qualificacao),
FOREIGN KEY (id_vaga) REFERENCES vaga(id_vaga),
FOREIGN KEY (id_qualificacao) REFERENCES qualificacao(id_qualificacao)


/* Experiencia_profissional  */

id_candidato INT,
FOREIGN KEY (id_candidato) REFERENCES candidato(id_candidato)


/* Formacao  */

id_candidato INT,
FOREIGN KEY (id_candidato) REFERENCES candidato(id_candidato)


/* Historico_Candidatura  */

id_candidatura INT,
id_estado INT,
FOREIGN KEY (id_candidatura) REFERENCES candidatura(id_candidatura),
FOREIGN KEY (id_estado) REFERENCES estado_candidatura(id_estado)