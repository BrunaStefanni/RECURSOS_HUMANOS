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