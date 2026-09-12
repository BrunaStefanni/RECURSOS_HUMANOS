INSERT INTO candidato (nome_candidato, email, telefone, data_nascimento, data_registro)
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

