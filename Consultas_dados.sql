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
