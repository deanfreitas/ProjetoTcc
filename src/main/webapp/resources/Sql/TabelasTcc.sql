USE projetotcc;

CREATE TABLE Identificacao
(
  Id_identificacao             INTEGER      NOT NULL AUTO_INCREMENT,
  Ident_DATADAPRIMEIRACONSULTA VARCHAR(10)  NULL,
  Ident_Nome                   VARCHAR(50)  NOT NULL,
  Ident_Email                  VARCHAR(50)  NULL,
  Ident_Datanascimento         VARCHAR(10)  NULL,
  Ident_Idade                  INTEGER      NOT NULL,
  Ident_MotivodaConsulta       VARCHAR(100) NULL,
  Ident_Obs                    VARCHAR(100) NULL,
  Ident_TelefoneResidencial    VARCHAR(20)  NULL,
  Ident_Celular                VARCHAR(50)  NULL,
  Ident_Endereco               VARCHAR(50)  NULL,
  Ident_Bairro                 VARCHAR(50)  NULL,
  Ident_Cidade                 VARCHAR(30)  NULL,
  Ident_Sexo                   ENUM ('Masculino', 'Feminino', ''),
  Ident_EstadoCivil            ENUM ('Casado(a)', 'Solteiro(a)', 'Divorciado(a)', 'viúvo(a)', ''),
  Ident_Raca                   ENUM ('Branca', 'Preta', 'Parda', 'Amarela', 'Indígena', ''),
  Ident_Numero                 VARCHAR(20)  NULL,
  Ident_Estado                 ENUM ('SP', 'RJ', 'AC', 'AL', 'AP', 'AM', 'BA', 'CE', 'DF', 'ES', 'GO', 'MA', 'MT', 'MS', 'MG', 'PA', 'PB', 'PR', 'PE', 'PI', 'RN', 'RS', 'RO', 'RR', 'SC', 'SE', 'TO', ''),

  PRIMARY KEY (Id_identificacao)
);

CREATE TABLE Historico_Social_e_Familiar
(
  Id_HistoricoSocialeFamiliar    INTEGER      NOT NULL AUTO_INCREMENT,
  Hist_Profissao                 VARCHAR(50)  NULL,
  Hist_CargaHoraria              VARCHAR(20)  NULL,
  Hist_ComposicaoFamiliar        VARCHAR(100) NULL,
  Hist_QuemCompraOsAlimentos     VARCHAR(100) NULL,
  Hist_ACompraFeita              ENUM ('Diariamente', 'Semanalmente', 'Mensalmente', ''),
  Hist_QuemPreparaRefeicoes      VARCHAR(100) NULL,
  Hist_FazUsoDeBebidasAlcoolicas ENUM ('Não', 'Sim, uma vez por mês ou menos', 'Sim, 2 a 4 vezes por mês', 'Sim, 2 a 3 vezes por semana', 'Sim, 4 ou mais vezes por semana', ''),
  Hist_FumaOuJaFumou             ENUM ('Não', 'Sim, já fumei mas parei', 'Sim, até 5 cigarros por dia', 'Sim, até 3 maços por semana', 'Sim, até 7 maços por semana', 'Sim, mais de 7 maços por semana', ''),
  Hist_ComQuemRealizaRefeicoes   VARCHAR(100) NULL,

  PRIMARY KEY (Id_HistoricoSocialeFamiliar)
);

CREATE TABLE Historico_Alimentar_Nutricional
(
  Id_HistoricoAlimentarNutricional INTEGER     NOT NULL AUTO_INCREMENT,
  Hist_IntoleranciaAlimentar       VARCHAR(50) NOT NULL,
  Hist_PreferenciaAlimentar        VARCHAR(50) NOT NULL,
  Hist_AlteracoesDoApetite         ENUM ('Sim', 'Não', ''),
  Hist_OBSAlteracoesDoApetite      VARCHAR(50) NULL,
  Hist_IniciouObesidadePerdaDePeso VARCHAR(50) NULL,
  Hist_SegueDietaEspecial          VARCHAR(50) NULL,
  Hist_RefeicoesPorDia             VARCHAR(20) NULL,
  Hist_ConsumoDeAgua               VARCHAR(20) NULL,
  Hist_ConsumoDeSal                VARCHAR(20) NULL,
  Hist_ConsumoDeOleo               VARCHAR(20) NULL,
  Hist_FazUsoDeSuplemento          VARCHAR(20) NULL,
  Hist_QuemIndicou                 VARCHAR(20) NULL,

  PRIMARY KEY (Id_HistoricoAlimentarNutricional)
);

CREATE TABLE Dados_Clinicos
(
  Id_DadosClinicos                   INTEGER     NOT NULL AUTO_INCREMENT,
  Dad_Vomito                         TINYINT(1)  NULL,
  Dad_Nausea                         TINYINT(1)  NULL,
  Dad_Mastigacao                     TINYINT(1)  NULL,
  Dad_Degluticao                     TINYINT(1)  NULL,
  Dad_Digestao                       TINYINT(1)  NULL,
  Dad_Pirose                         TINYINT(1)  NULL,
  Dad_Refluxo                        TINYINT(1)  NULL,
  Dad_Diarreia                       TINYINT(1)  NULL,
  Dad_Obstipacao                     TINYINT(1)  NULL,
  Dad_Insonia                        TINYINT(1)  NULL,
  Dad_Estresse                       TINYINT(1)  NULL,
  Dad_Cancaso                        TINYINT(1)  NULL,
  Dad_Ansiedade                      TINYINT(1)  NULL,
  Dad_PossuiLesoesOuProblemasNaPele  VARCHAR(20) NULL,
  Dad_JaPassouPorAlgumTipoDeCirurgia VARCHAR(20) NULL,
  Dad_HabitoIntestinal               ENUM ('Diário', 'Até 3 dias', 'Mais 3 dias', 'Outro', ''),
  Dad_ConsistenciaDasFezes           ENUM ('Normal', 'Amolecidas', 'Duras', 'Outro', ''),
  Dad_DiureseColoracaoQuantidade     VARCHAR(20) NULL,
  Dad_PossuiAlgumaPatologia          VARCHAR(20) NULL,
  Dad_OBSHabitoIntestinal            VARCHAR(20) NULL,
  Dad_OBSConsistenciaDasFezes        VARCHAR(20) NULL,
  Dad_OBSvomito                      VARCHAR(20) NULL,
  Dad_OBSnausea                      VARCHAR(20) NULL,
  Dad_OBSmastigacao                  VARCHAR(20) NULL,
  Dad_OBSdegluticao                  VARCHAR(20) NULL,
  Dad_OBSdigestao                    VARCHAR(20) NULL,
  Dad_OBSpirose                      VARCHAR(20) NULL,
  Dad_OBSrefluxo                     VARCHAR(20) NULL,
  Dad_OBSdiarreia                    VARCHAR(20) NULL,
  Dad_OBSobstipacao                  VARCHAR(20) NULL,
  Dad_OBSinsonia                     VARCHAR(20) NULL,
  Dad_OBSestresse                    VARCHAR(20) NULL,
  Dad_OBScancaso                     VARCHAR(20) NULL,
  Dad_OBSansiedade                   VARCHAR(20) NULL,

  PRIMARY KEY (Id_DadosClinicos)
);

CREATE TABLE Antecedentes_Familiares
(
  Id_AntecedentesFamiliares INTEGER     NOT NULL AUTO_INCREMENT,
  Ant_Dm                    TINYINT(1)  NULL,
  Ant_Ha                    TINYINT(1)  NULL,
  Ant_Ca                    TINYINT(1)  NULL,
  Ant_Dislipidemia          TINYINT(1)  NULL,
  Ant_Obesidade             TINYINT(1)  NULL,
  Ant_Magreza               TINYINT(1)  NULL,
  Ant_Outros                TINYINT(1)  NULL,
  Ant_OBSDm                 VARCHAR(20) NULL,
  Ant_OBSHa                 VARCHAR(20) NULL,
  Ant_OBSCa                 VARCHAR(20) NULL,
  Ant_OBSDislipedemia       VARCHAR(20) NULL,
  Ant_OBSObesidade          VARCHAR(20) NULL,
  Ant_OBSMagreza            VARCHAR(20) NULL,
  Ant_OBSOutros             VARCHAR(20) NULL,

  PRIMARY KEY (Id_AntecedentesFamiliares)
);

CREATE TABLE Atividade_Fisica
(
  Id_AtividadeFisica           INTEGER      NOT NULL AUTO_INCREMENT,
  Ativ_TipoDeAtividadeFisica   VARCHAR(100) NOT NULL,
  Ativ_Frequencia              VARCHAR(50)  NULL,
  Ativ_Duracao                 VARCHAR(20)  NULL,
  Ativ_VocePraticaAsAtividades ENUM ('Alimentado', 'Jejum', ''),
  Ativ_HoraPreferido           VARCHAR(20)  NOT NULL,

  PRIMARY KEY (Id_AtividadeFisica)
);

CREATE TABLE Frequencia_Alimentar
(
  Id_FrequenciaAlimentar        INTEGER      NOT NULL,
  Freq_Arroz                    ENUM ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
  OBSFreq_Arroz                 VARCHAR(100),
  Freq_Macarrao                 ENUM ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
  OBSFreq_Macarrao              VARCHAR(100),
  Freq_BatataMandioca           ENUM ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
  OBSFreq_BatataMandioca        VARCHAR(100),
  Freq_Pao                      ENUM ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
  OBSFreq_Pao                   VARCHAR(100),
  Freq_PaodeQueijo              ENUM ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
  OBSFreq_PaodeQueijo           VARCHAR(100),
  Freq_Farinhas                 ENUM ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
  OBSFreq_Farinhas              VARCHAR(100),
  Freq_CerealMatinal            ENUM ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
  OBSFreq_CerealMatinal         VARCHAR(100),
  Freq_HortalicasCruas          ENUM ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
  OBSFreq_HortalicasCruas       VARCHAR(100),
  Freq_HortalicasCozidas        ENUM ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
  OBSFreq_HortalicasCozidas     VARCHAR(100),
  Freq_Frutas                   ENUM ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
  OBSFreq_Frutas                VARCHAR(100),
  Freq_LeiteIntegral            ENUM ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
  OBSFreq_LeiteIntegral         VARCHAR(100),
  Freq_LeiteDesnatado           ENUM ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
  OBSFreq_LeiteDesnatado        VARCHAR(100),
  Freq_Iorgute                  ENUM ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
  OBSFreq_Iorgute               VARCHAR(100),
  Freq_IorguteDesnatado         ENUM ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
  OBSFreq_IorguteDesnatado      VARCHAR(100),
  Freq_Queijos                  ENUM ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
  OBSFreq_Queijos               VARCHAR(100),
  Freq_CarneVermelha            ENUM ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
  OBSFreq_CarneVermelha         VARCHAR(100),
  Freq_Embutidos                ENUM ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
  OBSFreq_Embutidos             VARCHAR(100),
  Freq_Enlatados                ENUM ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
  OBSFreq_Enlatados             VARCHAR(100),
  Freq_Ovos                     ENUM ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
  OBSFreq_Ovos                  VARCHAR(100),
  Freq_Leguminosas              ENUM ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
  OBSFreq_Leguminosas           VARCHAR(100),
  Freq_MargarinaComum           ENUM ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
  OBSFreq_MargarinaComum        VARCHAR(100),
  Freq_MargarinaLight           ENUM ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
  OBSFreq_MargarinaLight        VARCHAR(100),
  Freq_Manteiga                 ENUM ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
  OBSFreq_Manteiga              VARCHAR(100),
  Freq_RequeijaoComum           ENUM ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
  OBSFreq_RequeijaoComum        VARCHAR(100),
  Freq_RequeijaoLight           ENUM ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
  OBSFreq_RequeijaoLight        VARCHAR(100),
  Freq_MaioneseComum            ENUM ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
  OBSFreq_MaioneseComum         VARCHAR(100),
  Freq_MaioneseLight            ENUM ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
  OBSFreq_MaioneseLight         VARCHAR(100),
  Freq_Cremedeleite             ENUM ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
  OBSFreq_Cremedeleite          VARCHAR(100),
  Freq_Frituras                 ENUM ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
  OBSFreq_Frituras              VARCHAR(100),
  Freq_Acucar                   ENUM ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
  OBSFreq_Acucar                VARCHAR(100),
  Freq_Adocante                 ENUM ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
  OBSFreq_Adocante              VARCHAR(100),
  Freq_Mel                      ENUM ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
  OBSFreq_Mel                   VARCHAR(100),
  Freq_BarradeCereal            ENUM ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
  OBSFreq_BarradeCereal         VARCHAR(100),
  Freq_Doces                    ENUM ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
  OBSFreq_Doces                 VARCHAR(100),
  Freq_BolachaRecheada          ENUM ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
  OBSFreq_BolachaRecheada       VARCHAR(100),
  Freq_BoloBiscoito             ENUM ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
  OBSFreq_BoloBiscoito          VARCHAR(100),
  Freq_ChicleteBalas            ENUM ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
  OBSFreq_ChicleteBalas         VARCHAR(100),
  Freq_Chocolate                ENUM ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
  OBSFreq_Chocolate             VARCHAR(100),
  Freq_Sanduichepizza           ENUM ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
  OBSFreq_Sanduichepizza        VARCHAR(100),
  Freq_Salgadinhos              ENUM ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
  OBSFreq_Salgadinhos           VARCHAR(100),
  Freq_SalgadinhosPacote        ENUM ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
  OBSFreq_SalgadinhosPacote     VARCHAR(100),
  Freq_RefrigeranteComum        ENUM ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
  OBSFreq_RefrigeranteComum     VARCHAR(100),
  Freq_RefrigeranteDietLight    ENUM ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
  OBSFreq_RefrigeranteDietLight VARCHAR(100),
  Freq_SucoNatural              ENUM ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
  OBSFreq_SucoNatural           VARCHAR(100),
  Freq_SucoArtificial           ENUM ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
  OBSFreq_SucoArtificial        VARCHAR(100),
  Freq_Cafe                     ENUM ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
  OBSFreq_Cafe                  VARCHAR(100),
  Freq_Cha                      ENUM ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
  OBSFreq_Cha                   VARCHAR(100),
  Freq_DiagnosticoNutricional   VARCHAR(50)  NOT NULL,
  Freq_CondutaDietoterapica     VARCHAR(30)  NULL,
  Freq_RelatosDeCaso            VARCHAR(100) NOT NULL,

  PRIMARY KEY (Id_FrequenciaAlimentar)
);

CREATE TABLE Login
(
  Id_Login    INTEGER      NOT NULL AUTO_INCREMENT,
  Log_Usuario VARCHAR(100) NULL,
  Log_Senha   VARCHAR(100) NULL,

  PRIMARY KEY (Id_Login)
);

CREATE TABLE Nutricionista
(
  id_nutricionista       INTEGER      NOT NULL AUTO_INCREMENT,
  Nutri_NomeCompleto     VARCHAR(100) NOT NULL,
  Nutri_Crn              VARCHAR(50)  NOT NULL,
  Nutri_CPF              VARCHAR(14)  NULL,
  Nutri_DataDeNascimento VARCHAR(10)  NULL,
  Nutri_Endereco         VARCHAR(50)  NULL,
  Nutri_Numero           INTEGER      NULL,
  Nutri_Complemento      VARCHAR(20)  NULL,
  Nutri_Telefone         VARCHAR(20)  NULL,
  Nutri_Celular          VARCHAR(20)  NULL,
  Nutri_Comercial        VARCHAR(20)  NULL,
  Nutri_Email            VARCHAR(50)  NULL,
  Nutri_Sexo             ENUM ('Masculino', 'Feminino', ''),
  Id_Login               INTEGER      NOT NULL      UNIQUE,

  PRIMARY KEY (id_nutricionista),

  CONSTRAINT foreign_nutricionista_Id_Login FOREIGN KEY (Id_Login) REFERENCES Login (Id_Login)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

CREATE TABLE Paciente
(
  id_Paciente                      INTEGER      NOT NULL AUTO_INCREMENT,
  Pac_Responsavel                  VARCHAR(100) NULL,
  Pac_Sexo                         ENUM ('Masculino', 'Feminino', ''),
  Id_Login                         INTEGER      NULL     UNIQUE,
  id_nutricionista                 INTEGER      NULL,
  Id_HistoricoAlimentarNutricional INTEGER      NULL     UNIQUE,
  Id_DadosAntropometricos          INTEGER      NULL,
  Id_DadosClinicos                 INTEGER      NULL     UNIQUE,
  Id_AntecedentesFamiliares        INTEGER      NULL     UNIQUE,
  Id_AtividadeFisica               INTEGER      NULL     UNIQUE,
  Id_FrequenciaAlimentar           INTEGER      NULL     UNIQUE,
  Id_HistoricoSocialeFamiliar      INTEGER      NULL     UNIQUE,
  Id_identificacao                 INTEGER      NULL     UNIQUE,

  PRIMARY KEY (id_Paciente),

  CONSTRAINT foreign_Paciente_Id_Nutricionista FOREIGN KEY (id_nutricionista) REFERENCES Nutricionista (id_nutricionista)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT foreign_Paciente_Id_Login FOREIGN KEY (Id_Login) REFERENCES Login (Id_Login)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT foreign_Paciente_Id_HistoricoAlimentarNutricional FOREIGN KEY (Id_HistoricoAlimentarNutricional) REFERENCES Historico_Alimentar_Nutricional (Id_HistoricoAlimentarNutricional)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT foreign_Paciente_Id_DadosAntropometricos FOREIGN KEY (Id_DadosAntropometricos) REFERENCES Dados_Antropometricos (Id_DadosAntropometricos)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT foreign_Paciente_Id_DadosClinicos FOREIGN KEY (Id_DadosClinicos) REFERENCES Dados_Clinicos (Id_DadosClinicos)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT foreign_Paciente_Id_AntecedentesFamiliares FOREIGN KEY (Id_AntecedentesFamiliares) REFERENCES Antecedentes_Familiares (Id_AntecedentesFamiliares)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT foreign_Paciente_Id_AtividadeFisica FOREIGN KEY (Id_AtividadeFisica) REFERENCES Atividade_Fisica (Id_AtividadeFisica)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT foreign_Paciente_Id_FrequenciaAlimentar FOREIGN KEY (Id_FrequenciaAlimentar) REFERENCES Frequencia_Alimentar (Id_FrequenciaAlimentar)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT foreign_Paciente_Id_HistoricoSocialeFamiliar FOREIGN KEY (Id_HistoricoSocialeFamiliar) REFERENCES Historico_Social_e_Familiar (Id_HistoricoSocialeFamiliar)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT foreign_Paciente_Id_identificacao FOREIGN KEY (Id_identificacao) REFERENCES Identificacao (Id_identificacao)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

CREATE TABLE Role
(
  Id_Role          INTEGER      NOT NULL AUTO_INCREMENT,
  Role_Name        VARCHAR(100) NOT NULL,
  id_nutricionista INTEGER      NULL,
  id_Paciente      INTEGER      NULL,

  PRIMARY KEY (Id_Role),

  CONSTRAINT foreign_Role_id_Paciente FOREIGN KEY (id_Paciente) REFERENCES Paciente (id_Paciente)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT foreign_Role_id_Nutricionista FOREIGN KEY (id_nutricionista) REFERENCES Nutricionista (id_nutricionista)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

CREATE TABLE Ceia
(
  Id_Ceia         INTEGER     NOT NULL AUTO_INCREMENT,
  Ceia_Horario    VARCHAR(10) NULL,
  Ceia_Local      VARCHAR(50) NULL,
  Ceia_Humor      VARCHAR(20) NULL,
  Ceia_Alimento   VARCHAR(20) NULL,
  Ceia_Quantidade VARCHAR(20) NULL,

  PRIMARY KEY (Id_Ceia)
);

CREATE TABLE Colacao
(
  Id_Colacao       INTEGER     NOT NULL AUTO_INCREMENT,
  Colac_Horario    VARCHAR(10) NULL,
  Colac_Local      VARCHAR(50) NULL,
  Colac_Humor      VARCHAR(20) NULL,
  Colac_Alimento   VARCHAR(20) NULL,
  Colac_Quantidade VARCHAR(20) NULL,

  PRIMARY KEY (Id_Colacao)
);

CREATE TABLE Jantar
(
  Id_Jant         INTEGER     NOT NULL AUTO_INCREMENT,
  Jant_Horario    VARCHAR(10) NULL,
  Jant_Local      VARCHAR(50) NULL,
  Jant_Humor      VARCHAR(20) NULL,
  Jant_Alimento   VARCHAR(20) NULL,
  Jant_Quantidade VARCHAR(20) NULL,

  PRIMARY KEY (Id_Jant)
);

CREATE TABLE Lanche
(
  Id_Lanche      INTEGER     NOT NULL AUTO_INCREMENT,
  Lan_Horario    VARCHAR(10) NULL,
  Lan_Local      VARCHAR(50) NULL,
  Lan_Humor      VARCHAR(20) NULL,
  Lan_Alimento   VARCHAR(20) NULL,
  Lan_Quantidade VARCHAR(20) NULL,

  PRIMARY KEY (Id_Lanche)
);

CREATE TABLE Almoco
(
  Id_Almoco      INTEGER     NOT NULL AUTO_INCREMENT,
  Alm_Horario    VARCHAR(10) NULL,
  Alm_Local      VARCHAR(50) NULL,
  Alm_Humor      VARCHAR(20) NULL,
  Alm_Alimento   VARCHAR(20) NULL,
  Alm_Quantidade VARCHAR(20) NULL,

  PRIMARY KEY (Id_Almoco)
);

CREATE TABLE Desjejum
(
  Id_Desj         INTEGER     NOT NULL AUTO_INCREMENT,
  Desj_Horario    VARCHAR(10) NULL,
  Desj_Local      VARCHAR(50) NULL,
  Desj_Humor      VARCHAR(20) NULL,
  Desj_Alimento   VARCHAR(20) NULL,
  Desj_Quantidade VARCHAR(20) NULL,

  PRIMARY KEY (Id_Desj)
);

CREATE TABLE Fora_de_Hora
(
  Id_Foradehora  INTEGER     NOT NULL AUTO_INCREMENT,
  For_Horario    VARCHAR(10) NULL,
  For_Local      VARCHAR(20) NULL,
  For_Humor      VARCHAR(20) NULL,
  For_Alimento   VARCHAR(50) NULL,
  For_Quantidade INTEGER     NULL,

  PRIMARY KEY (Id_Foradehora)
);

CREATE TABLE Data
(
  id_data       INTEGER NOT NULL AUTO_INCREMENT,
  Id_Ceia       INTEGER NULL     UNIQUE,
  Id_Colacao    INTEGER NULL     UNIQUE,
  Id_Jant       INTEGER NULL     UNIQUE,
  Id_Lanche     INTEGER NULL     UNIQUE,
  Id_Almoco     INTEGER NULL     UNIQUE,
  Id_Desj       INTEGER NULL     UNIQUE,
  Id_Foradehora INTEGER NULL     UNIQUE,
  id_Paciente   INTEGER NOT NULL,

  PRIMARY KEY (id_data),

  CONSTRAINT foreign_Data_Id_Ceia FOREIGN KEY (Id_Ceia) REFERENCES Ceia (Id_Ceia)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT foreign_Data_Id_Colacao FOREIGN KEY (Id_Colacao) REFERENCES Colacao (Id_Colacao)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT foreign_Data_Id_Jant FOREIGN KEY (Id_Jant) REFERENCES Jantar (Id_Jant)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT foreign_Data_Id_Lanche FOREIGN KEY (Id_Lanche) REFERENCES Lanche (Id_Lanche)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT foreign_Data_Id_Almoco FOREIGN KEY (Id_Almoco) REFERENCES Almoco (Id_Almoco)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT foreign_Data_Id_Desj FOREIGN KEY (Id_Desj) REFERENCES Desjejum (Id_Desj)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT foreign_Data_id_Paciente FOREIGN KEY (id_Paciente) REFERENCES Paciente (id_Paciente)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT foreign_Data_Id_Foradehora FOREIGN KEY (Id_Foradehora) REFERENCES Fora_de_Hora (Id_Foradehora)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

CREATE TABLE Faz_uso_de_medicamento
(
  Id_FazUsodeMedicamento INTEGER     NOT NULL AUTO_INCREMENT,
  Med_Nome               VARCHAR(50) NULL,
  Med_Dose               VARCHAR(20) NULL,
  Med_Horario            VARCHAR(10) NULL,
  Med_Motivo             VARCHAR(20) NULL,
  Med_Inter              VARCHAR(20) NULL,
  id_Paciente            INTEGER     NOT NULL,

  PRIMARY KEY (Id_FazUsodeMedicamento),

  CONSTRAINT foreign_Faz_uso_de_medicamento_id_Paciente FOREIGN KEY (id_Paciente) REFERENCES Paciente (id_Paciente)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

CREATE TABLE Exames_Bioquimicos
(
  Id_ExamesBioquimicos INTEGER     NOT NULL AUTO_INCREMENT,
  id_Paciente          INTEGER     NOT NULL,
  Bio_Data             VARCHAR(10) NULL,
  Bio_Vlrderefe        VARCHAR(20) NULL,
  Bio_GLI              VARCHAR(20) NULL,
  Bio_Hg               VARCHAR(20) NULL,
  Bio_Tg               VARCHAR(20) NULL,
  Bio_Ct               VARCHAR(20) NULL,
  Bio_Ldl              VARCHAR(20) NULL,
  Bio_Hdl              VARCHAR(20) NULL,
  Bio_Sodio            VARCHAR(50) NULL,
  Bio_Potassio         VARCHAR(50) NULL,
  Bio_Creatina         VARCHAR(50) NULL,
  Bio_Tgo              VARCHAR(50) NULL,
  Bio_Tgp              VARCHAR(50) NULL,
  Bio_GGT              VARCHAR(50) NULL,
  Bio_Ferritina        VARCHAR(50) NULL,
  Bio_Vitaminab12      VARCHAR(50) NULL,
  Bio_Acidofolico      VARCHAR(50) NULL,
  Bio_Naohdl           VARCHAR(50) NULL,
  Bio_Vldl             VARCHAR(50) NULL,
  Bio_Ureia            VARCHAR(50) NULL,
  Bio_Fosforo          VARCHAR(50) NULL,
  Bio_Calcio           VARCHAR(50) NULL,
  Bio_Acidourico       VARCHAR(50) NULL,

  PRIMARY KEY (Id_ExamesBioquimicos),

  CONSTRAINT foreign_Exames_Bioquimicos_id_Paciente FOREIGN KEY (id_Paciente) REFERENCES Paciente (id_Paciente)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

CREATE TABLE Dados_Antropometricos
(
  Id_DadosAntropometricos INTEGER     NOT NULL AUTO_INCREMENT,
  Ant_PesoUsual           VARCHAR(10) NULL,
  Ant_PesoIdeal           VARCHAR(10) NULL,
  Ant_Data                VARCHAR(10) NULL,
  Ant_PA                  VARCHAR(20) NULL,
  Ant_Peso                VARCHAR(10) NULL,
  Ant_Altura              VARCHAR(10) NULL,
  Ant_IMC                 VARCHAR(10) NULL,
  Ant_PCT                 VARCHAR(10) NULL,
  Ant_PCB                 VARCHAR(10) NULL,
  Ant_PCSE                VARCHAR(10) NULL,
  Ant_Peitoral            VARCHAR(10) NULL,
  Ant_PCAB                VARCHAR(10) NULL,
  Ant_PCSI                VARCHAR(10) NULL,
  Ant_PCCOXA              VARCHAR(10) NULL,
  Ant_PCpant              VARCHAR(10) NULL,
  Ant_Braco               VARCHAR(10) NULL,
  Ant_Antebraco           VARCHAR(10) NULL,
  Ant_punho               VARCHAR(10) NULL,
  Ant_Torax               VARCHAR(10) NULL,
  Ant_Cintura             VARCHAR(10) NULL,
  Ant_Coxa                VARCHAR(10) NULL,
  Ant_Panturrilha         VARCHAR(10) NULL,
  Ant_Comple              VARCHAR(10) NULL,
  Ant_EM                  VARCHAR(10) NULL,
  Ant_porcentG            VARCHAR(10) NULL,
  Ant_porcentMM           VARCHAR(10) NULL,
  id_Paciente             INTEGER     NOT NULL,

  PRIMARY KEY (Id_DadosAntropometricos),

  CONSTRAINT foreign_Dados_Antropometricos_id_Paciente FOREIGN KEY (id_Paciente) REFERENCES Paciente (id_Paciente)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);