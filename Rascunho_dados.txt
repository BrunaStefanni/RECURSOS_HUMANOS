INSERT INTO Candidato (nome, email, telefone, data\_nascimento, data\_registo) VALUES

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



INSERT INTO Empresa (nome, nif, email, telefone, website) VALUES

('TechVision Soluções Digitais', '501234567', 'contacto@techvision.pt', '213456789', 'www.techvision.pt'),

('Inovação \& Logística Global', '502345678', 'geral@inovacaolog.pt', '224567890', 'www.inovacaolog.pt'),

('Sustentável Consultoria', '503456789', 'info@sustentavel.pt', '239123456', 'www.sustentavel.pt'),

('DataPulse Analytics', '504567890', 'comercial@datapulse.pt', '218901234', 'www.datapulse.pt'),

('Norte Saúde Integrada', '505678901', 'atendimento@nortesaude.pt', '229012345', 'www.nortesaude.pt'),

('Vanguarda Engenharia', '506789012', 'projetos@vanguardaeng.pt', '234567890', 'www.vanguardaeng.pt'),

('EcoEnergia do Futuro', '507890123', 'suporte@ecoenergia.pt', '217654321', 'www.ecoenergia.pt'),

('Lumina Design Studio', '508901234', 'hello@luminadesign.pt', '223456789', 'www.luminadesign.pt'),

('Atlas Recursos Humanos', '509012345', 'recrutamento@atlasrh.pt', '210123456', 'www.atlasrh.pt'),

('Horizonte Varejo e Distribuição', '510123456', 'vendas@horizontevd.pt', '221234567', 'www.horizontevd.pt');



INSERT INTO Recrutador (nome, email, telefone) VALUES

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



INSERT INTO Localizacao (cidade, distrito, pais) VALUES

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



INSERT INTO Vaga (titulo, descricao, data\_publicacao, data\_limite, salario\_min, salario\_max, tipo\_contrato) VALUES

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



INSERT INTO Competencia (nome, categoria) VALUES

('Programação C#', 'Técnica'),

('SQL \& Modelação de Dados', 'Técnica'),

('Análise Estatística em R', 'Técnica'),

('Administração de Sistemas Linux', 'Técnica'),

('Trabalho em Equipa', 'Comportamental'),

('Comunicação Interpessoal', 'Comportamental'),

('Gestão do Tempo e Organização', 'Comportamental'),

('Resolução de Problemas', 'Comportamental'),

('Inglês Técnico', 'Línguas'),

('Gestão de Projetos', 'Gestão');



INSERT INTO CompetenciaCandidato (id\_candidato, id\_competencia, nivel, anos\_experiencia) VALUES

(1, 1, 'Avançado', 4),

(1, 2, 'Intermediário', 3),

(2, 2, 'Avançado', 6),

(3, 3, 'Avançado', 5),

(3, 9, 'Avançado', 8),

(4, 4, 'Intermediário', 2),

(5, 5, 'Avançado', 7),

(6, 10, 'Avançado', 10),

(7, 6, 'Intermediário', 3),

(8, 1, 'Iniciante', 1);



INSERT INTO CompetenciaExigida (id\_vaga, id\_competencia, nivel\_minimo, obrigatoria) VALUES

(1, 1, 'Avançado', TRUE),       -- Desenvolvedor C# Senior exige C# Avançado

(1, 2, 'Intermediário', TRUE),  -- Desenvolvedor C# Senior exige SQL Intermediário

(2, 3, 'Avançado', TRUE),       -- Analista de Dados exige R Avançado

(3, 4, 'Intermediário', TRUE),  -- Suporte TI exige Linux Intermediário

(4, 10, 'Avançado', TRUE),      -- Gestor HealthTech exige Gestão de Projetos Avançado

(5, 9, 'Intermediário', FALSE), -- Frontend tem Inglês Técnico como preferencial (Não obrigatório)

(6, 4, 'Avançado', TRUE),       -- Segurança da Informação exige Linux Avançado

(7, 6, 'Avançado', TRUE),       -- Recrutamento exige Comunicação Avançada

(8, 8, 'Intermediário', TRUE),  -- Sustentabilidade exige Resolução de Problemas

(9, 5, 'Intermediário', FALSE); -- Automação tem Trabalho em Equipa como desejável



INSERT INTO ExperienciaProfissional (id\_candidato, empresa, cargo, data\_inicio, data\_fim, descricao) VALUES

(1, 'SoftSystems Portugal', 'Desenvolvedora Junior C#', '2022-03-01', '2024-05-31', 'Desenvolvimento de APIs RESTful e manutenção de bases de dados SQL Server.'),

(1, 'Inovação Digital Tech', 'Desenvolvedora C#', '2024-06-01', NULL, 'Construção de arquiteturas orientadas a objetos e otimização de consultas SQL.'),

(2, 'DataCorp Consultoria', 'Analista de Dados', '2018-01-15', '2022-12-31', 'Tratamento de dados, criação de dashboards e modelação preditiva.'),

(3, 'Instituto BioSaúde', 'Investigadora Científica', '2019-09-01', '2024-08-31', 'Análise estatística de dados biológicos utilizando R e processamento de dados experimentais.'),

(4, 'Rede Global Serviços', 'Técnico de Suporte Junior', '2023-01-10', NULL, 'Administração básica de servidores Linux, redes e atendimento ao utilizador.'),

(5, 'Consultoria Sustentável', 'Gestora de Projetos Ambientais', '2016-04-01', '2023-11-30', 'Coordenação de equipas multidisciplinares e submissão de relatórios ambientais.'),

(6, 'HealthTech Solutions', 'Gestor de Projetos de Inovação', '2015-02-01', NULL, 'Planeamento e liderança de projetos tecnológicos focados na área da saúde.'),

(7, 'RH Conecta', 'Assistente de Recrutamento', '2021-05-15', '2024-01-31', 'Triagem de perfis técnicos, agendamento de entrevistas e contacto com candidatos.'),

(8, 'Logística \& Automação S.A.', 'Engenheiro de Processos', '2020-10-01', NULL, 'Implementação de sistemas automatizados e controlo de qualidade fabril.'),

(9, 'Estúdio Criativo Web', 'UX/UI Designer Junior', '2022-07-01', '2024-06-30', 'Criação de wireframes, prototipagem de interfaces e condução de testes de usabilidade.');



INSERT INTO Formacao (id\_candidato, instituicao, curso, grau, data\_inicio, data\_fim) VALUES

(1, 'IEFP - Instituto do Emprego e Formação Profissional', 'Técnico/a de Desenvolvimento de Software', 'Nível 5 (CTeSP/Técnico)', '2025-09-15', NULL),

(1, 'Universidade de Coimbra', 'Engenharia Informática', 'Licenciatura', '2019-09-01', '2022-06-30'),

(2, 'Universidade do Porto', 'Ciência de Dados e Estatística', 'Mestrado', '2016-09-01', '2018-07-15'),

(3, 'Universidade de Lisboa', 'Biologia', 'Doutoramento', '2018-09-01', '2022-11-20'),

(4, 'Instituto Politécnico de Leiria', 'Redes e Sistemas Informáticos', 'Licenciatura', '2020-09-01', '2023-06-30'),

(5, 'Universidade de Aveiro', 'Engenharia do Ambiente', 'Mestrado', '2011-09-01', '2016-06-25'),

(6, 'Universidade do Minho', 'Gestão de Sistemas de Informação', 'Licenciatura', '2010-09-01', '2014-06-30'),

(7, 'Universidade Católica Portuguesa', 'Gestão de Recursos Humanos', 'Licenciatura', '2017-09-01', '2020-07-10'),

(8, 'Instituto Superior Técnico', 'Engenharia Eletrotécnica e de Computadores', 'Mestrado Integrado', '2014-09-01', '2019-07-20'),

(9, 'Instituto Politécnico do Porto', 'Design de Comunicação e Multimédia', 'Licenciatura', '2018-09-01', '2021-06-30');



INSERT INTO Candidatura (id\_candidato, id\_vaga, data\_candidatura, salario\_pretendido, carta\_apresentacao, estado) VALUES

(1, 1, '2026-08-05', 2800.00, 'Tenho sólida experiência em desenvolvimento C# e bases de dados SQL Server, com interesse em arquiteturas orientadas a objetos.', 'Em Análise'),

(2, 2, '2026-08-08', 2100.00, 'Tenho grande interesse em aplicar modelação preditiva e análise de dados para otimização de processos de negócio.', 'Entrevista Agendada'),

(3, 2, '2026-08-10', 2300.00, 'Apresento vasta experiência no processamento e análise estatística de dados complexos em R, além de metodologia rigorosa.', 'Em Análise'),

(4, 3, '2026-08-11', 1250.00, 'Procuro uma oportunidade para aplicar os meus conhecimentos na administração de sistemas Linux e redes em ambiente fabril.', 'Aceite'),

(5, 8, '2026-08-23', 2000.00, 'Com formação na área ambiental e anos de gestão de equipas, posso acrescentar rigor e planeamento aos projetos da empresa.', 'Em Análise'),

(6, 4, '2026-08-15', 3200.00, 'Lidero equipas multidisciplinares no setor da saúde há vários anos e tenho interesse em impulsionar o projeto HealthTech.', 'Entrevista Agendada'),

(7, 7, '2026-08-21', 1100.00, 'Entusiasta pelo contacto humano e recrutamento técnico, gostaria de integrar a equipa de RH para dinamizar triagens de perfis.', 'Rejeitado'),

(8, 9, '2026-08-26', 2500.00, 'Possuo forte bagagem técnica em sistemas automatizados e procura constante por otimização de processos industriais.', 'Em Análise'),

(9, 10, '2026-08-29', 1900.00, 'Foco a minha atuação na criação de protótipos funcionais e na melhoria contínua da experiência do utilizador.', 'Em Análise'),

(10, 1, '2026-08-14', 3000.00, 'Apresento sólidos conhecimentos de engenharia de software e interesse em evoluir na criação de serviços de alto desempenho.', 'Rejeitado');



INSERT INTO EstadoCandidatura (descricao) VALUES

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



INSERT INTO Entrevista (id\_candidatura, id\_recrutador, data\_entrevista, tipo, observacoes, avaliacao) VALUES

(1, 2, '2026-08-12 10:00:00', 'Técnica', 'Demonstrou forte domínio de Programação Orientada a Objetos em C# e boas práticas de arquitetura SQL.', 5),

(2, 3, '2026-08-14 14:30:00', 'Presencial', 'Apresentou excelente raciocínio lógico e experiência sólida em análise preditiva de dados.', 4),

(3, 3, '2026-08-18 11:00:00', 'Online', 'Perfil com rigor metodológico exemplar e grande autonomia em processamento estatístico de dados.', 5),

(4, 4, '2026-08-19 15:00:00', 'Presencial', 'Bons conhecimentos em comandos e administração Linux. Demonstrou boa atitude e vontade de aprender.', 4),

(5, 5, '2026-08-27 09:30:00', 'Online', 'Sólida experiência em gestão ambiental e facilidade de comunicação. Alinhada com a cultura da empresa.', 4),

(6, 6, '2026-08-20 16:00:00', 'Presencial', 'Perfil lider e estruturado. Apresentou visões claras sobre gestão de equipas no setor da saúde.', 5),

(7, 1, '2026-08-24 10:30:00', 'Online', 'Conhece bem os processos de RH, mas o perfil pretendido exige maior apetência para triagem técnica intensiva.', 3),

(8, 7, '2026-08-28 14:00:00', 'Técnica', 'Conhecimentos práticos sólidos de automação e instrumentação industrial. Boa capacidade de resolução de problemas.', 4),

(9, 9, '2026-09-02 11:30:00', 'Online', 'Apresentou um portfólio de UX/UI consistente, com boa fundamentação em testes de usabilidade.', 4),

(10, 2, '2026-08-17 15:30:00', 'Técnica', 'Respondeu bem às questões teóricas de engenharia de software, contudo o perfil de pretensão salarial ficou desalinhado.', 3);

