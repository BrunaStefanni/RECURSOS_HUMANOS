/*»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»*/
                    /* Possíveis perguntas */
/*»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»*/

/* Quais são as vagas do tipo de contrato "A Termo Certo"? */ 
/* Pergunta só com critérios (uma tabela) */
CREATE VIEW vagas_com_contrato_termo_certo AS
SELECT titulo, tipo_contrato
FROM vaga
WHERE tipo_contrato = 'A Termo Certo';

SELECT * FROM vagas_com_contrato_termo_certo; /* RESPOSTA EM VIEW */

/*»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»*/
/* Quais as vagas que possuem contrato sem termo e seus respectivos distritos? */

CREATE VIEW vagas_contrato_sem_termo_por_distrito AS
SELECT titulo, distrito, tipo_contrato
FROM vaga v
INNER JOIN localizacao l
ON v.id_localizacao = l.id_localizacao
WHERE tipo_contrato = 'Sem Termo';

SELECT * FROM vagas_contrato_sem_termo_por_distrito; 

/*»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»GROUP BY (DISTINCT)»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»*/
/* Quantos candidatos distintos se candidataram a cada vaga? */
SELECT v.id_vaga, v.titulo, COUNT(DISTINCT c.id_candidato) AS total_candidatos_distintos
FROM vaga v
JOIN candidatura c ON c.id_vaga = v.id_vaga
GROUP BY v.id_vaga, v.titulo;

/*»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»GROUP BY (COM CRITÈRIOS)»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»*/
/* Quais vagas receberam mais de 3 candidaturas? */

SELECT v.id_vaga, v.titulo, COUNT(c.id_candidatura) AS total_candidaturas
FROM vaga v
JOIN candidatura c ON c.id_vaga = v.id_vaga
GROUP BY v.id_vaga, v.titulo
HAVING COUNT(c.id_candidatura) > 3;

/*»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»NOT IN»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»*/
/* Quais empresas parceiras ainda não publicaram nenhuma vaga no sistema? */

SELECT e.nome_empresa, e.email, e.telefone
FROM empresa e
WHERE e.id_empresa NOT IN(SELECT v.id_empresa FROM vaga v);

/*»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»SUBQUERY»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»*/
/*Que outros candidatos se candidataram à mesma vaga que a Ana Beatriz Silva?*/

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

/*»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»MAX/MIN»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»*/
/* Qual o salário mais alto e o salário mais baixo oferecidos entre todas as vagas publicadas?*/

SELECT MAX (v. salario_max) AS salario_mais_alto,
MIN (v.salario_min) As salario_mais_baixo
FROM vaga v;

/*»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»UNION»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»*/
/* A recrutadora Inês Pereira precisa de verificar: que candidaturas ou vagas pendentes no distrito do Porto, 
das vagas que ela gere, ainda estão em aberto?*/

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


/*»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»IF»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»*/
/* Quais candidatos foram aprovados na entrevista e quais precisam de reavaliação, com base na nota atribuída?
considere nota>= 4 aprovado e caso contrário reavaliação*/


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

/*»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»SUBQUERY + CÁLCULO»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»*/
/* Quais vagas oferecem um salário máximo acima da média de todas as vagas? */
SELECT id_vaga, titulo, salario_max
FROM vaga
WHERE salario_max > (
    SELECT AVG(salario_max) FROM vaga
);
