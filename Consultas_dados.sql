/*»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»*/
                    /* Possíveis perguntas */
/*»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»*/

/* CRITÉRIO UMA TABELA */
/* Quais são as vagas do tipo de contrato "A Termo Certo"? */ 

CREATE VIEW vagas_com_contrato_termo_certo AS
SELECT titulo, tipo_contrato
FROM vaga
WHERE tipo_contrato = 'A Termo Certo';

SELECT * FROM vagas_com_contrato_termo_certo; /* RESPOSTA EM VIEW */

/* CRITÉRIO N TABELAS */
/* Quais as vagas que possuem contrato sem termo e seus respectivos distritos? */

CREATE VIEW vagas_contrato_sem_termo_por_distrito AS
SELECT titulo, distrito, tipo_contrato
FROM vaga v
INNER JOIN localizacao l
ON v.id_localizacao = l.id_localizacao
WHERE tipo_contrato = 'Sem Termo';

SELECT * FROM vagas_contrato_sem_termo_por_distrito;

/* CRITÉRIO GROUP BY (DISTINCT)*/
/* Quantos candidatos distintos se candidataram a cada vaga? */
CREATE VIEW candidatos_por_vaga AS 
SELECT v.id_vaga, v.titulo, COUNT(DISTINCT c.id_candidato) AS total_candidatos_distintos
FROM vaga v
JOIN candidatura c ON c.id_vaga = v.id_vaga
GROUP BY v.id_vaga, v.titulo;

SELECT * FROM candidatos_por_vaga;

/* CRITÉRIO GROUP BY (COM CRITÈRIOS)*/
/* Quais vagas receberam mais de 1 candidaturas? */

CREATE VIEW vagas_multiplas_candidaturas AS
SELECT v.id_vaga, v.titulo, COUNT(c.id_candidatura) AS total_candidaturas
FROM vaga v
JOIN candidatura c ON c.id_vaga = v.id_vaga
GROUP BY v.id_vaga, v.titulo
HAVING COUNT(c.id_candidatura) > 1;

SELECT * FROM vagas_multiplas_candidaturas;

/* CRITÉRIO NOT IN */
/* Quais empresas parceiras ainda não publicaram nenhuma vaga no sistema? */

CREATE VIEW empresas_nao_publicadas AS
SELECT e.nome_empresa, e.email, e.telefone
FROM empresa e
WHERE e.id_empresa NOT IN(SELECT v.id_empresa FROM vaga v);

SELECT * FROM empresas_nao_publicadas;

/* CRITÉRIO SUBQUERY */
/*Que outros candidatos se candidataram à mesma vaga que a Ana Beatriz Silva?*/

CREATE VIEW concorrencia_Ana_Beatriz AS
SELECT c.nome_candidato, v.titulo
FROM candidatura ca
INNER JOIN candidato c
ON ca.id_candidato = c.id_candidato
INNER JOIN vaga v
ON ca.id_vaga = v.id_vaga
WHERE ca.id_vaga IN(SELECT ca2.id_vaga
FROM candidatura ca2
INNER JOIN candidato c2
ON ca2.id_candidato = c2.id_candidato
WHERE c2.nome_candidato = 'Ana Beatriz Silva')
AND c.nome_candidato <> 'Ana Beatriz Silva';

SELECT * FROM concorrencia_Ana_Beatriz;

/* CRITÉRIO MAX MÍN */
/* Qual o salário mais baixo e o salário mais alto oferecidos entre todas as vagas publicadas?*/

CREATE VIEW salario_baixo_alto AS
SELECT MIN(v.salario_min) As salario_mais_baixo,
MAX(v. salario_max) AS salario_mais_alto
FROM vaga v;

SELECT * FROM salario_baixo_alto;

/* CRITÉRIO UNION */
/* A recrutadora Inês Pereira precisa de verificar: que candidaturas ou vagas pendentes no distrito do Porto, 
das vagas que ela gere, ainda estão em aberto?*/

CREATE VIEW vagas_pendentes_Porto_Ines_Pereira AS
SELECT c.nome_candidato, v.titulo, ec.descricao AS estado, 'Candidatura em aberto' AS situacao
FROM candidatura ca
INNER JOIN candidato c
ON ca.id_candidato = c.id_candidato
INNER JOIN vaga v
ON ca.id_vaga = v.id_vaga
INNER JOIN estado_candidatura ec
ON ca.id_estado = ec.id_estado
INNER JOIN localizacao l
ON v.id_localizacao = l.id_localizacao
INNER JOIN recrutador r
ON v.id_recrutador = r.id_recrutador
WHERE l.distrito = 'Porto'
AND r.nome_recrutador = 'Inês Filipa Pereira'
AND ec.descricao NOT IN('Aprovada / Contratado', 'Rejeitada', 'Candidato Desistiu')

UNION

SELECT NULL AS nome_candidato, v.titulo, NULL AS estado, 'Vaga sem candidaturas' AS situacao
FROM vaga v
INNER JOIN localizacao l
ON v.id_localizacao = l.id_localizacao
INNER JOIN recrutador r
ON v.id_recrutador = r.id_recrutador
WHERE l.distrito = 'Porto'
AND r.nome_recrutador = 'Inês Filipa Pereira'
AND v.id_vaga NOT IN(SELECT id_vaga FROM candidatura); 

SELECT * FROM vagas_pendentes_Porto_Ines_Pereira;

/* CRITÉRIO IF */
/* Quais candidatos foram aprovados na entrevista e quais precisam de reavaliação, com base na nota atribuída?
considere nota>= 4 aprovado e caso contrário reavaliação*/

CREATE VIEW situacao_candidatos_nota AS
SELECT c.nome_candidato, v.titulo, e.tipo AS tipo_entrevista, e.avaliacao,
IF(e.avaliacao >= 4, 'Aprovado', 'A reavaliar') AS resultado_entrevista
FROM entrevista e
INNER JOIN candidatura ca
ON e.id_candidatura = ca.id_candidatura
INNER JOIN candidato c
ON ca.id_candidato = c.id_candidato
INNER JOIN vaga v
ON ca.id_vaga = v.id_vaga
ORDER BY e.avaliacao DESC;

SELECT * FROM situacao_candidatos_nota;

/* CRITÉRIO SUBQUERY + CÁLCULO */
/* Quais vagas oferecem um salário máximo acima da média de todas as vagas? */

CREATE VIEW vagas_salario_max AS
SELECT id_vaga, titulo, salario_max
FROM vaga
WHERE salario_max > (
SELECT AVG(salario_max) FROM vaga
);

SELECT * FROM vagas_salario_max;
