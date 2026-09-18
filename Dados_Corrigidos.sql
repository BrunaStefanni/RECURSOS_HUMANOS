/* INSERINDO DADOS */
INSERT INTO candidato ( nome_candidato, email, telefone, data_nascimento, data_registro)
VALUES 
('Ana Beatriz Silva', 'ana.silva@emailficticio.com', '(11) 98765-4321', '1992-04-15', '2026-01-10'),
('Carlos Eduardo Santos', 'carlos.santos@emailficticio.com', '(21) 97123-8901', '1988-11-23', '2026-01-12'),
('Mariana Rocha Oliveira', 'mariana.rocha@emailficticio.com', '(31) 99812-3456', '1995-08-03', '2026-01-15'),
('Lucas Gabriel Pereira', 'lucas.pereira@emailficticio.com', '(41) 98456-7890', '2001-02-19', '2026-01-18'),
('Fernanda Lima Costa', 'fernanda.costa@emailficticio.com', '(51) 99321-6547', '1990-12-30', '2026-01-20'),
('Rafael Ribeiro Alves', 'rafael.alves@emailficticio.com', '(61) 98111-2233', '1985-06-12', '2026-02-01'),
('Camila Rodrigues Martins', 'camila.martins@emailficticio.com', '(71) 99222-3344', '1998-09-27', '2026-02-03'),
('Rodrigo Ferreira Lima', 'rodrigo.lima@emailficticio.com', '(81) 98333-4455', '1993-01-08', '2026-02-05'),
('Beatriz Mendes Castro', 'beatriz.castro@emailficticio.com', '(85) 99444-5566', '1997-05-14', '2026-02-10'),
('Thiago Henrique Souza', 'thiago.souza@emailficticio.com', '(19) 98555-6677', '1989-10-02', '2026-02-12');

/* Durante a inserção de dados, foi preciso fazer alterações no formato de alguns dados */

INSERT INTO empresa (nome_empresa, nif, email, telefone, website)
VALUES
('TechVision Soluções Digitais', '501234567', 'contacto@techvision.pt', '213456789', 'www.techvision.pt'),
('Inovação & Logística Global', '502345678', 'geral@inovacaolog.pt', '224567890', 'www.inovacaolog.pt'),
('Sustentável Consultoria', '503456789', 'info@sustentavel.pt', '239123456', 'www.sustentavel.pt'),
('DataPulse Analytics', '504567890', 'comercial@datapulse.pt', '218901234', 'www.datapulse.pt'),
('Norte Saúde Integrada', '505678901', 'atendimento@nortesaude.pt', '229012345', 'www.nortesaude.pt'),
('Vanguarda Engenharia', '506789012', 'projetos@vanguardaeng.pt', '234567890', 'www.vanguardaeng.pt'),
('EcoEnergia do Futuro', '507890123', 'suporte@ecoenergia.pt', '217654321', 'www.ecoenergia.pt'),
('Lumina Design Studio', '508901234', 'hello@luminadesign.pt', '223456789', 'www.luminadesign.pt'),
('Atlas Recursos Humanos', '509012345', 'recrutamento@atlasrh.pt', '210123456', 'www.atlasrh.pt'),
('Horizonte Varejo e Distribuição', '510123456', 'vendas@horizontevd.pt', '221234567', 'www.horizontevd.pt');

INSERT INTO recrutador (nome_recrutador, email, telefone)
VALUES
('Sofia Isabel Martins', 'sofia.martins@atlasrh.pt', '210123488'),
('Gonçalo Maria Santos', 'goncalo.santos@techvision.pt', '213456711'),
('Inês Filipa Pereira', 'ines.pereira@datapulse.pt', '218901299'),
('João Pedro Costa', 'joao.costa@inovacaolog.pt', '224567833'),
('Mariana Fonseca Silva', 'mariana.silva@sustentavel.pt', '239123477'),
('Diogo Alexandre Neves', 'diogo.neves@nortesaude.pt', '229012388'),
('Catarina Beatriz Lima', 'catarina.lima@vanguardaeng.pt', '234567811'),
('Tiago Emanuel Rocha', 'tiago.rocha@ecoenergia.pt', '217654399'),
('Beatriz Alexandra Carvalho', 'beatriz.carvalho@luminadesign.pt', '223456722'),
('Rui Miguel Ferreira', 'rui.ferreira@horizontevd.pt', '221234544');

INSERT INTO localizacao (cidade, distrito, pais)
VALUES
('Lisboa', 'Lisboa', 'Portugal'),
('Porto', 'Porto', 'Portugal'),
('Marinha Grande', 'Leiria', 'Portugal'),
('Braga', 'Braga', 'Portugal'),
('Coimbra', 'Coimbra', 'Portugal'),
('Faro', 'Faro', 'Portugal'),
('Aveiro', 'Aveiro', 'Portugal'),
('Madrid', 'Madrid', 'Espanha'),
('São Paulo', 'São Paulo', 'Brasil'),
('Londres', 'Grande Londres', 'Reino Unido');

INSERT INTO vaga (titulo, descricao, data_publicacao, data_limite, salario_min, salario_max, tipo_contrato)
VALUES
('Desenvolvedor C# Senior', 'Desenvolvimento e manutenção de serviços backend utilizando .NET e SQL Server.', '2026-08-01', '2026-09-30', 2500.00, 3500.00, 'Sem Termo'),
('Analista de Dados', 'Análise de métricas, modelagem de dados e criação de relatórios em Python e R.', '2026-08-05', '2026-09-15', 1800.00, 2400.00, 'Sem Termo'),
('Técnico de Suporte TI', 'Configuração de sistemas Linux, suporte ao utilizador e resolução de incidentes.', '2026-08-10', '2026-09-20', 1100.00, 1400.00, 'A Termo Certo'),
('Gestor de Projeto HealthTech', 'Gestão de projetos de inovação em saúde, coordenação de equipas e prazos.', '2026-08-12', '2026-10-01', 2800.00, 3800.00, 'Sem Termo'),
('Engenheiro de Software Frontend', 'Criação de interfaces web responsivas utilizando JavaScript, HTML5 e CSS3.', '2026-08-15', '2026-09-25', 2000.00, 2800.00, 'Sem Termo'),
('Especialista em Segurança de Informação', 'Definição e aplicação de políticas de segurança, auditoria e hardening de redes.', '2026-08-18', '2026-10-05', 2700.00, 3600.00, 'Sem Termo'),
('Assistente de Recrutamento e Seleção', 'Triagem de currículos, agendamento de entrevistas e contacto com candidatos.', '2026-08-20', '2026-09-18', 1000.00, 1250.00, 'Estágio Profissional'),
('Consultor de Sustentabilidade Ambiental', 'Análise de impacto ambiental e elaboração de relatórios técnicos de conformidade.', '2026-08-22', '2026-10-10', 1600.00, 2200.00, 'A Termo Certo'),
('Engenheiro de Automação', 'Programação de PLCs e acompanhamento de processos industriais automatizados.', '2026-08-25', '2026-10-15', 2200.00, 3000.00, 'Sem Termo'),
('UX/UI Designer', 'Prototipagem de ecrãs, realização de testes de usabilidade e design de produto.', '2026-08-28', '2026-09-30', 1700.00, 2300.00, 'A Termo Certo');

INSERT INTO estado_candidatura (descricao) 
VALUES
('Recebida'),
('Em Análise'),
('Triagem Telefónica'),
('Entrevista Técnica Agendada'),
('Entrevista RH Agendada'),
('Em Avaliação Final'),
('Proposta Enviada'),
('Aprovada / Contratado'),
('Rejeitada'),
('Candidato Desistiu');

INSERT INTO candidatura (data_candidatura, salario_pretendido, carta_apresentacao, id_candidato, id_vaga, id_estado) 
VALUES
('2026-08-05', 2800.00, 'Tenho sólida experiência em desenvolvimento C# e bases de dados SQL Server, com interesse em arquiteturas orientadas a objetos.', 1, 1, 1),
('2026-08-08', 2100.00, 'Tenho grande interesse em aplicar modelação preditiva e análise de dados para otimização de processos de negócio.', 2, 2, 2),
('2026-08-10', 2300.00, 'Apresento vasta experiência no processamento e análise estatística de dados complexos em R, além de metodologia rigorosa.', 3, 2, 3),
('2026-08-11', 1250.00, 'Procuro uma oportunidade para aplicar os meus conhecimentos na administração de sistemas Linux e redes em ambiente fabril.', 4, 3, 4),
('2026-08-23', 2000.00, 'Com formação na área ambiental e anos de gestão de equipas, posso acrescentar rigor e planeamento aos projetos da empresa.', 5, 8, 5),
('2026-08-15', 3200.00, 'Lidero equipas multidisciplinares no setor da saúde há vários anos e tenho interesse em impulsionar o projeto HealthTech.', 6, 4, 4),
('2026-08-21', 1100.00, 'Entusiasta pelo contacto humano e recrutamento técnico, gostaria de integrar a equipa de RH para dinamizar triagens de perfis.', 7, 7, 2),
('2026-08-26', 2500.00, 'Possuo forte bagagem técnica em sistemas automatizados e procura constante por otimização de processos industriais.', 8, 9, 3),
('2026-08-29', 1900.00, 'Foco a minha atuação na criação de protótipos funcionais e na melhoria contínua da experiência do utilizador.', 9, 10, 4),
('2026-08-14', 3000.00, 'Apresento sólidos conhecimentos de engenharia de software e interesse em evoluir na criação de serviços de alto desempenho.', 10, 1, 5);

/* comandos que foram precisos para correções */
SELECT * FROM entrevista;
DELETE FROM entrevista
WHERE id_entrevista > 0;
ALTER TABLE entrevista AUTO_INCREMENT = 1;
SELECT * FROM qualificacao;

/* Continuação dados */
INSERT INTO entrevista (id_candidatura, data_entrevista, tipo, observacoes, avaliacao) 
VALUES
(1, '2026-08-12', 'Técnica', 'Demonstrou forte domínio de Programação Orientada a Objetos em C# e boas práticas de arquitetura SQL.', 5),
(2, '2026-08-14', 'Presencial', 'Apresentou excelente raciocínio lógico e experiência sólida em análise preditiva de dados.', 4),
(3, '2026-08-18', 'Online', 'Perfil com rigor metodológico exemplar e grande autonomia em processamento estatístico de dados.', 5),
(4, '2026-08-19', 'Presencial', 'Bons conhecimentos em comandos e administração Linux. Demonstrou boa atitude e vontade de aprender.', 4),
(5, '2026-08-27', 'Online', 'Sólida experiência em gestão ambiental e facilidade de comunicação. Alinhada com a cultura da empresa.', 4),
(6, '2026-08-20', 'Presencial', 'Perfil lider e estruturado. Apresentou visões claras sobre gestão de equipas no setor da saúde.', 5),
(7, '2026-08-24', 'Online', 'Conhece bem os processos de RH, mas o perfil pretendido exige maior apetência para triagem técnica intensiva.', 3),
(8, '2026-08-28', 'Técnica', 'Conhecimentos práticos sólidos de automação e instrumentação industrial. Boa capacidade de resolução de problemas.', 4),
(9, '2026-09-02', 'Online', 'Apresentou um portfólio de UX/UI consistente, com boa fundamentação em testes de usabilidade.', 4),
(10, '2026-08-17', 'Técnica', 'Respondeu bem às questões teóricas de engenharia de software, contudo o perfil de pretensão salarial ficou desalinhado.', 3);

INSERT INTO qualificacao (nome_qualificacao, descricao) 
VALUES
('Programação C#', 'Técnica'),
('SQL & Modelação de Dados', 'Técnica'),
('Análise Estatística em R', 'Técnica'),
('Administração de Sistemas Linux', 'Técnica'),
('Trabalho em Equipa', 'Comportamental'),
('Comunicação Interpessoal', 'Comportamental'),
('Gestão do Tempo e Organização', 'Comportamental'),
('Resolução de Problemas', 'Comportamental'),
('Inglês Técnico', 'Línguas'),
('Gestão de Projetos', 'Gestão');

/* Consertando dados das tabelas de relação candidato_qualificacao e vaga_qualificacao */
DELETE FROM vaga_qualificacao
WHERE id_vaga_qualificacao > 0;
ALTER TABLE vaga_qualificacao AUTO_INCREMENT = 1;
SELECT * FROM vaga_qualificacao;

/* Continuação insert dados */
INSERT INTO candidato_qualificacao (id_candidato, id_qualificacao, nivel)
VALUES
(1, 1, 'Avançado'),
(2, 2, 'Intermediário'),
(3, 3, 'Avançado'),
(4, 4, 'Avançado'),
(5, 5, 'Avançado'),
(6, 6, 'Intermediário'),
(7, 7, 'Avançado'),
(8, 8, 'Avançado'),
(9, 9, 'Intermediário'),
(10, 10, 'Iniciante');

INSERT INTO vaga_qualificacao (id_vaga, id_qualificacao, nivel_minimo)
VALUES
(1, 1, 'Avançado'),
(2, 2, 'Intermediário'),
(3, 4, 'Avançado'),
(4, 10, 'Intermediário'),
(5, 1, 'Avançado'),
(6, 8, 'Intermediário'),
(7, 6, 'Avançado'),
(8, 5, 'Avançado'),
(9, 8, 'Avançado'),
(10, 5, 'Intermediário');

/*`a partir deste ponto, percebemos que os dados inseridos não estavam sendo relacionados
com nenhuma outra informação, pois o AUTO_INCREMENT não estava indicando um número para iniciar.
os candidatos, recrutadores e afins, tem as informações mas não estão relacionados ao id increment */

/* exemplo do que foi feito */
SELECT * FROM candidato;
DELETE FROM candidato
WHERE id_candidato > 0;
ALTER TABLE candidato AUTO_INCREMENT = 1;

/* a seguir estão dados que precisaram ser inseridos para conseguir relacionar os 
recrutadores com as empresas e as vagas com os candidatos */

UPDATE recrutador
SET id_empresa = 1
WHERE id_recrutador = 1;

UPDATE recrutador
SET id_empresa = 2
WHERE id_recrutador = 2;

UPDATE recrutador
SET id_empresa = 4
WHERE id_recrutador = 3;

UPDATE recrutador
SET id_empresa = 2
WHERE id_recrutador = 4;

UPDATE recrutador
SET id_empresa = 3
WHERE id_recrutador = 5;

UPDATE recrutador
SET id_empresa = 5
WHERE id_recrutador = 6;

UPDATE recrutador
SET id_empresa = 6
WHERE id_recrutador = 7;

UPDATE recrutador
SET id_empresa = 7
WHERE id_recrutador = 8;

UPDATE recrutador
SET id_empresa = 8
WHERE id_recrutador = 9;

UPDATE recrutador
SET id_empresa = 10
WHERE id_recrutador = 10;


/* A seguir UPDATES em vaga  */

UPDATE vaga
SET id_empresa = 1,
    id_recrutador = 2,
    id_localizacao = 1
WHERE id_vaga = 1;

UPDATE vaga
SET id_empresa = 4,
    id_recrutador = 3,
    id_localizacao = 2
WHERE id_vaga = 2;

UPDATE vaga
SET id_empresa = 6,
    id_recrutador = 7,
    id_localizacao = 3
WHERE id_vaga = 3;

UPDATE vaga
SET id_empresa = 5,
    id_recrutador = 6,
    id_localizacao = 4
WHERE id_vaga = 4;

UPDATE vaga
SET id_empresa = 1,
    id_recrutador = 2,
    id_localizacao = 1
WHERE id_vaga = 5;

UPDATE vaga
SET id_empresa = 7,
    id_recrutador = 8,
    id_localizacao = 10
WHERE id_vaga = 6;

UPDATE vaga
SET id_empresa = 9,
    id_recrutador = 1,
    id_localizacao = 1
WHERE id_vaga = 7;

UPDATE vaga
SET id_empresa = 3,
    id_recrutador = 5,
    id_localizacao = 5
WHERE id_vaga = 8;

UPDATE vaga
SET id_empresa = 6,
    id_recrutador = 7,
    id_localizacao = 7
WHERE id_vaga = 9;

UPDATE vaga
SET id_empresa = 8,
    id_recrutador = 9,
    id_localizacao = 2
WHERE id_vaga = 10;

/* Fim da inserção de dados */

ALTER TABLE formacao
MODIFY grau VARCHAR(100);
DESCRIBE formacao;
ALTER TABLE formacao
MODIFY instituicao VARCHAR(100);


INSERT INTO formacao (id_candidato, instituicao, curso, grau, data_inicio, data_fim)
VALUES
(1, 'IEFP - Instituto do Emprego e Formação Profissional', 'Técnico/a de Desenvolvimento de Software', 'Nível 5 (CTeSP/Técnico)', '2025-09-15', NULL),
(2, 'Universidade de Coimbra', 'Engenharia Informática', 'Licenciatura', '2019-09-01', '2022-06-30'),
(3, 'Universidade do Porto', 'Ciência de Dados e Estatística', 'Mestrado', '2016-09-01', '2018-07-15'),
(4, 'Universidade de Lisboa', 'Biologia', 'Doutoramento', '2018-09-01', '2022-11-20'),
(5, 'Instituto Politécnico de Leiria', 'Redes e Sistemas Informáticos', 'Licenciatura', '2020-09-01', '2023-06-30'),
(6, 'Universidade de Aveiro', 'Engenharia do Ambiente', 'Mestrado', '2011-09-01', '2016-06-25'),
(7, 'Universidade do Minho', 'Gestão de Sistemas de Informação', 'Licenciatura', '2010-09-01', '2014-06-30'),
(8, 'Universidade Católica Portuguesa', 'Gestão de Recursos Humanos', 'Licenciatura', '2017-09-01', '2020-07-10'),
(9, 'Instituto Superior Técnico', 'Engenharia Eletrotécnica e de Computadores', 'Mestrado Integrado', '2014-09-01', '2019-07-20'),
(10, 'Instituto Politécnico do Porto', 'Design de Comunicação e Multimédia', 'Licenciatura', '2018-09-01', '2021-06-30');

INSERT INTO historico_candidatura (id_candidatura, id_estado, data_alteracao, observacao)
VALUES
(1, 1, '2026-08-05', 'Candidatura submetida com sucesso pelo portal de recrutamento.'),
(2, 2, '2026-08-06', 'CV validado pelos recursos humanos e encaminhado para a chefia técnica.'),
(3, 3, '2026-08-08', 'Candidatura registada e validada para triagem inicial.'),
(4, 4, '2026-08-10', 'Entrevista presencial agendada com o departamento de analítica.'),
(5, 1, '2026-08-10', 'Receção do processo e verificação de requisitos académicos e profissionais.'),
(6, 1, '2026-08-11', 'Submissão de candidatura recebida pelo sistema.'),
(7, 7, '2026-08-15', 'Candidato aprovado no processo seletivo e proposta de contrato emitida.'),
(8, 2, '2026-08-23', 'Candidatura inserida na base de dados para avaliação curricular.'),
(9, 1, '2026-08-15', 'Candidatura recebida para o projeto HealthTech.'),
(10, 5, '2026-08-18', 'Entrevista de liderança confirmada com a gestão de topo.');

/* fim da inserção de dados parte 2 */
