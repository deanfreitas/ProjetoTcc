use projetotcc;

CREATE TABLE Identificacao

(
	Id_identificacao             INTEGER NOT NULL AUTO_INCREMENT,
    Ident_DATADAPRIMEIRACONSULTA VARCHAR (10) NULL,
	Ident_Nome                   VARCHAR (50) NOT NULL,
	Ident_Email                  VARCHAR (50) NULL,
	Ident_Datanascimento         VARCHAR (10) NULL,  
	Ident_Idade                  INTEGER NOT NULL,
	Ident_MotivodaConsulta       VARCHAR (100) NULL,
	Ident_Obs                    VARCHAR (100) NULL,
	Ident_TelefoneResidencial    VARCHAR (20) NULL,   
	Ident_Celular                VARCHAR (50) NULL, 
	Ident_Endereco               VARCHAR (50) NULL,
	Ident_Bairro                 VARCHAR (50) NULL,
	Ident_Cidade                 VARCHAR (30) NULL,
	Ident_Sexo                   enum ('Masculino', 'Feminino', ''),
	Ident_EstadoCivil            enum ('Casado(a)','Solteiro(a)','Divorciado(a)','viúvo(a)', ''),
	Ident_Raca                   enum ('Branca', 'Preta', 'Parda', 'Amarela', 'Indígena', ''),
	Ident_Numero                 VARCHAR (20) NULL,
	Ident_Estado                 enum ('SP', 'RJ', 'AC', 'AL', 'AP', 'AM', 'BA', 'CE', 'DF', 'ES', 'GO', 'MA', 'MT', 'MS', 'MG', 'PA', 'PB', 'PR', 'PE', 'PI', 'RN', 'RS', 'RO', 'RR', 'SC', 'SE', 'TO', ''),
    

PRIMARY KEY (Id_identificacao)


 );

CREATE TABLE Historico_Social_e_Familiar 
( 
              Id_HistoricoSocialeFamiliar INTEGER NOT NULL AUTO_INCREMENT, 
              Hist_Profissao       VARCHAR (50) NULL, 
              Hist_CargaHoraria    VARCHAR (20) NULL,
              Hist_ComposicaoFamiliar VARCHAR (100) NULL, 
              Hist_QuemCompraOsAlimentos VARCHAR (100) NULL, 
              Hist_ACompraFeita enum ('Diariamente', 'Semanalmente', 'Mensalmente', ''),
              Hist_QuemPreparaRefeicoes VARCHAR (100) NULL, 
              Hist_FazUsoDeBebidasAlcoolicas enum ('NÃO', 'Sim, uma vez por mês ou menos', 'Sim, 2 a 4 vezes por mês', 'Sim, 2 a 3 vezes por semana', 'Sim, 4 ou mais vezes por semana', ''),
              Hist_FumaOuJaFumou   enum ('Não', 'Sim, já fumei mas parei', 'Sim, até 5 cigarros por dia', 'Sim, até 3 maços por semana', 'Sim, até 7 maços por semana', 'Sim, mais de 7 maços por semana', ''),
              Hist_ComQuemRealizaRefeicoes VARCHAR (100) NULL, 

PRIMARY KEY (Id_HistoricoSocialeFamiliar)
);

CREATE TABLE Historico_Alimentar_Nutricional 
( 
              Id_HistoricoAlimentarNutricional INTEGER NOT NULL AUTO_INCREMENT, 
              Hist_IntoleranciaAlimentar VARCHAR (50) NOT NULL, 
              Hist_PreferenciaAlimentar VARCHAR (50) NOT NULL, 
              Hist_AlteracoesDoApetite enum ('Sim', 'Não', ''),
              Hist_IniciouObesidadePerdaDePeso VARCHAR (50) NULL, 
              Hist_SegueDietaEspecial VARCHAR (50) NULL, 
              Hist_RefeicoesPorDia VARCHAR (20) NULL, 
              Hist_ConsumoDeAgua   VARCHAR (20) NULL, 
              Hist_ConsumoDeSal    VARCHAR (20) NULL, 
              Hist_ConsumoDeOleo   VARCHAR (20) NULL, 
              Hist_FazUsoDeSuplemento VARCHAR (20) NULL, 
              Hist_QuemIndicou     VARCHAR (20) NULL, 
PRIMARY KEY (Id_HistoricoAlimentarNutricional)
);

CREATE TABLE Dados_Clinicos 
( 
              Id_DadosClinicos     INTEGER NOT NULL AUTO_INCREMENT, 
              Dad_Vomito           TINYINT (1) NULL, 
              Dad_Nausea           TINYINT (1) NULL, 
              Dad_Mastigacao       TINYINT (1) NULL, 
              Dad_Degluticao       TINYINT (1) NULL, 
              Dad_Digestao         TINYINT (1) NULL, 
              Dad_Pirose           TINYINT (1) NULL, 
              Dad_Refluxo          TINYINT (1) NULL, 
              Dad_Diarreia         TINYINT (1) NULL, 
              Dad_Obstipacao       TINYINT (1) NULL, 
              Dad_Insonia          TINYINT (1) NULL, 
              Dad_Estresse         TINYINT (1) NULL, 
              Dad_Cancaso          TINYINT (1) NULL, 
              Dad_Ansiedade        TINYINT (1) NULL, 
              Dad_PossuiLesoesOuProblemasNaPele VARCHAR (20) NULL, 
              Dad_JaPassouPorAlgumTipoDeCirurgia VARCHAR (20) NULL, 
              Dad_HabitoIntestinal enum ('Diário', 'Até 3 dias', 'Mais 3 dias', 'Outro', ''),
              Dad_ConsistenciaDasFezes enum ('Normal', 'Amolecidas', 'Duras', 'Outro', ''), 
              Dad_DiureseColoracaoQuantidade VARCHAR (20) NULL, 
              Dad_PossuiAlgumaPatologia VARCHAR (20) NULL, 
              Dad_OBSvomito        VARCHAR (20) NULL, 
              Dad_OBSnausea        VARCHAR (20) NULL, 
              Dad_OBSmastigacao    VARCHAR (20) NULL, 
              Dad_OBSdegluticao    VARCHAR (20) NULL, 
              Dad_OBSdigestao      VARCHAR (20) NULL, 
              Dad_OBSpirose        VARCHAR (20) NULL, 
              Dad_OBSrefluxo       VARCHAR (20) NULL, 
              Dad_OBSdiarreia      VARCHAR (20) NULL, 
              Dad_OBSobstipacao    VARCHAR (20) NULL, 
              Dad_OBSinsonia       VARCHAR (20) NULL, 
              Dad_OBSestresse      VARCHAR (20) NULL, 
              Dad_OBScancaso       VARCHAR (20) NULL, 
              Dad_OBSansiedade     VARCHAR (20) NULL, 

PRIMARY KEY (Id_DadosClinicos)
);

CREATE TABLE Antecedentes_Familiares 
( 
              Id_AntecedentesFamiliares INTEGER NOT NULL AUTO_INCREMENT, 
              Ant_Dm               TINYINT (1)  NULL, 
              Ant_Ha               TINYINT (1)  NULL, 
              Ant_Ca               TINYINT (1)  NULL, 
              Ant_Dislipidemia     TINYINT (1)  NULL, 
              Ant_Obesidade        TINYINT (1)  NULL, 
              Ant_Magreza          TINYINT (1)  NULL, 
              Ant_Outros           TINYINT (1)  NULL, 
              Ant_OBSDm            VARCHAR (20) NULL, 
              Ant_OBSHa            VARCHAR (20) NULL, 
              Ant_OBSCa            VARCHAR (20) NULL, 
              Ant_OBSDislipedemia  VARCHAR (20) NULL, 
              Ant_OBSObesidade     VARCHAR (20) NULL, 
              Ant_OBSMagreza       VARCHAR (20) NULL, 
              Ant_OBSOutros        VARCHAR (20) NULL, 

PRIMARY KEY (Id_AntecedentesFamiliares) 
);


CREATE TABLE Atividade_Fisica 
( 
              Id_AtividadeFisica   INTEGER NOT NULL AUTO_INCREMENT, 
              Ativ_TipoDeAtividadeFisica VARCHAR(100) NOT NULL, 
              Ativ_Frequencia      VARCHAR(50) NULL, 
              Ativ_Duracao         VARCHAR(20) NULL, 
              Ativ_VocePraticaAsAtividades enum ('Alimentado', 'Jejum', ''),
              Ativ_HoraPreferido   VARCHAR(20) NOT NULL, 
              Ativ_Suplemento      enum ('Sim', 'Não', ''), 
              Ativ_OBSsuplemento   VARCHAR(50) NULL, 

PRIMARY KEY (Id_AtividadeFisica) 
);

CREATE TABLE Frequencia_Alimentar 
( 
              Id_FrequenciaAlimentar INTEGER NOT NULL, 
              Freq_Arroz enum ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
              OBSFreq_Arroz varchar (100),
              Freq_Macarrao enum ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
              OBSFreq_Macarrao varchar (100),
              Freq_BatataMandioca enum ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
              OBSFreq_BatataMandioca varchar (100),
              Freq_Pao enum ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
              OBSFreq_Pao varchar(100),
              Freq_PaodeQueijo     enum ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
              OBSFreq_PaodeQueijo varchar (100),     
              Freq_Farinhas enum ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
              OBSFreq_Farinhas varchar (100),
              Freq_CerealMatinal   enum ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
              OBSFreq_CerealMatinal varchar (100),
              Freq_HortalicasCruas enum ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
              OBSFreq_HortalicasCruas varchar (100),
              Freq_HortalicasCozidas enum ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
              OBSFreq_HortalicasCozidas varchar (100),
              Freq_Frutas   enum ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
              OBSFreq_Frutas varchar (100),
              Freq_LeiteIntegral   enum ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
              OBSFreq_LeiteIntegral varchar (100),
              Freq_LeiteDesnatado enum ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
              OBSFreq_LeiteDesnatado varchar (100),
              Freq_Iorgute    enum ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
              OBSFreq_Iorgute varchar (100),
              Freq_IorguteDesnatado enum ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
              OBSFreq_IorguteDesnatado varchar (100), 
              Freq_Queijos enum ('Nulo', 'Eventual', 'Semanal', 'Diária', ''), 
			  OBSFreq_Queijos varchar (100), 
              Freq_CarneVermelha   enum ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
              OBSFreq_CarneVermelha varchar (100), 
              Freq_Embutidos   enum ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
              OBSFreq_Embutidos varchar (100),
              Freq_Enlatados    enum ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
              OBSFreq_Enlatados varchar (100),
              Freq_Ovos   enum ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
              OBSFreq_Ovos varchar (100),
              Freq_Leguminosas   enum ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
              OBSFreq_Leguminosas varchar (100),
              Freq_MargarinaComum enum ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
              OBSFreq_MargarinaComum varchar (100),
              Freq_MargarinaLight enum ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
              OBSFreq_MargarinaLight varchar (100),
              Freq_Manteiga  enum ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
              OBSFreq_Manteiga varchar (100),
              Freq_RequeijaoComum enum ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
              OBSFreq_RequeijaoComum varchar (100),
              Freq_RequeijaoLight enum ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
              OBSFreq_RequeijaoLight varchar (100),
              Freq_MaioneseComum enum ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
              OBSFreq_MaioneseComum  varchar (100),
              Freq_MaioneseLight   enum ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
              OBSFreq_MaioneseLight   varchar (100),
              Freq_Cremedeleite    enum ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
              OBSFreq_Cremedeleite   varchar (100),
              Freq_Frituras   enum ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
              OBSFreq_Frituras   varchar (100),
              Freq_Acucar   enum ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
              OBSFreq_Acucar varchar (100),
              Freq_Adocante  enum ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
              OBSFreq_Adocante     varchar (100),
              Freq_Mel  enum ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
              OBSFreq_Mel    varchar (100),
              Freq_BarradeCereal   enum ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
              OBSFreq_BarradeCereal    varchar (100),
              Freq_Doces  enum ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
              OBSFreq_Doces    varchar (100),
              Freq_BolachaRecheada enum ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
              OBSFreq_BolachaRecheada   varchar (100),
              Freq_BoloBiscoito    enum ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
			  OBSFreq_BoloBiscoito   varchar (100),
              Freq_ChicleteBalas   enum ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
              OBSFreq_ChicleteBalas   varchar (100),
              Freq_Chocolate   enum ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
              OBSFreq_Chocolate   varchar (100),
              Freq_Sanduichepizza   enum ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
              OBSFreq_Sanduichepizza   varchar (100),
              Freq_Salgadinhos     enum ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
			  OBSFreq_Salgadinhos   varchar (100),
              Freq_SalgadinhosPacote enum ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
              OBSFreq_SalgadinhosPacote   varchar (100),
              Freq_RefrigeranteComum enum ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
              OBSFreq_RefrigeranteComum   varchar (100),
              Freq_RefrigeranteDietLight enum('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
              OBSFreq_RefrigeranteDietLight   varchar (100),
              Freq_SucoNatural   enum ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
              OBSFreq_SucoNatural   varchar (100),
              Freq_SucoArtificial enum ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
              OBSFreq_SucoArtificial   varchar (100),
              Freq_Cafe    enum ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
              OBSFreq_Cafe   varchar (100),
              Freq_Cha     enum ('Nulo', 'Eventual', 'Semanal', 'Diária', ''),
              OBSFreq_Cha    varchar (100),
              Freq_DiagnosticoNutricional  VARCHAR(50) NOT NULL,
              Freq_CondutaDietoterapica     VARCHAR(30) NULL,       
              Freq_RelatosDeCaso  VARCHAR (100) NOT NULL,

PRIMARY KEY (Id_FrequenciaAlimentar)
);


CREATE TABLE Login 
( 
              Id_Login             INTEGER NOT NULL AUTO_INCREMENT, 
              Log_Usuario          VARCHAR (100) NULL, 
              Log_Senha            VARCHAR (100) NULL, 
PRIMARY KEY (Id_Login)
);



CREATE TABLE Nutricionista

(
	id_nutricionista     INTEGER NOT NULL AUTO_INCREMENT,
	Nutri_NomeCompleto   VARCHAR (100) NOT NULL,
	Nutri_Crn            VARCHAR (50) NOT NULL,
	Nutri_CPF            VARCHAR (14) NULL,
	Nutri_DataDeNascimento VARCHAR (10) NULL,
	Nutri_Endereco       VARCHAR (50) NULL,
	Nutri_Numero         INTEGER NULL,
	Nutri_Complemento    VARCHAR (20) NULL,
	Nutri_Telefone       VARCHAR (20) NULL,
	Nutri_Celular        VARCHAR (20) NULL,
	Nutri_Comercial      VARCHAR (20) NULL, 
	Nutri_Email          VARCHAR (50) NULL,	
	Nutri_Sexo           enum ('Masculino', 'Feminino', ''), 
    Id_Login             INTEGER NOT NULL,	
    
PRIMARY KEY (id_nutricionista),

		constraint foreign_nutricionista_Id_Login foreign key (Id_Login) references Login(Id_Login) ON DELETE CASCADE ON UPDATE CASCADE
 );

CREATE TABLE Paciente 
( 
			  id_Paciente          INTEGER NOT NULL AUTO_INCREMENT,
              Pac_Responsavel      VARCHAR (100) NULL, 
              Pac_Sexo             enum ('Masculino', 'Feminino', ''), 
              Id_Login                           INTEGER NULL, 
              id_nutricionista                   INTEGER NULL,
              Id_HistoricoAlimentarNutricional   INTEGER NULL, 
              Id_DadosAntropometricos            INTEGER NULL, 
              Id_DadosClinicos                   INTEGER NULL, 
              Id_AntecedentesFamiliares          INTEGER NULL, 
              Id_AtividadeFisica                 INTEGER NULL, 
              Id_FrequenciaAlimentar             INTEGER NULL, 
              Id_HistoricoSocialeFamiliar        INTEGER NULL, 
              Id_identificacao                   INTEGER NULL, 

PRIMARY KEY (id_Paciente),
constraint foreign_Paciente_Id_Nutricionista foreign key (id_nutricionista) references Nutricionista(id_nutricionista) ON DELETE CASCADE ON UPDATE CASCADE,
constraint foreign_Paciente_Id_Login foreign key (Id_Login) references Login(Id_Login) ON DELETE CASCADE ON UPDATE CASCADE,
constraint foreign_Paciente_Id_HistoricoAlimentarNutricional foreign key (Id_HistoricoAlimentarNutricional) references Historico_Alimentar_Nutricional(Id_HistoricoAlimentarNutricional) ON DELETE CASCADE ON UPDATE CASCADE,
constraint foreign_Paciente_Id_DadosClinicos foreign key (Id_DadosClinicos) references Dados_Clinicos(Id_DadosClinicos) ON DELETE CASCADE ON UPDATE CASCADE,
constraint foreign_Paciente_Id_AntecedentesFamiliares foreign key (Id_AntecedentesFamiliares) references Antecedentes_Familiares(Id_AntecedentesFamiliares) ON DELETE CASCADE ON UPDATE CASCADE,
constraint foreign_Paciente_Id_AtividadeFisica foreign key (Id_AtividadeFisica) references Atividade_Fisica(Id_AtividadeFisica) ON DELETE CASCADE ON UPDATE CASCADE,
constraint foreign_Paciente_Id_FrequenciaAlimentar foreign key (Id_FrequenciaAlimentar) references Frequencia_Alimentar(Id_FrequenciaAlimentar) ON DELETE CASCADE ON UPDATE CASCADE,
constraint foreign_Paciente_Id_HistoricoSocialeFamiliar foreign key (Id_HistoricoSocialeFamiliar) references Historico_Social_e_Familiar(Id_HistoricoSocialeFamiliar) ON DELETE CASCADE ON UPDATE CASCADE,
constraint foreign_Paciente_Id_identificacao foreign key (Id_identificacao) references Identificacao(Id_identificacao) ON DELETE CASCADE ON UPDATE CASCADE
);
           


CREATE TABLE Role 
( 
              Id_Role              INTEGER NOT NULL AUTO_INCREMENT, 
              Role_Name            VARCHAR (100) NOT NULL,
              id_nutricionista     INTEGER 	NULL, 
              id_Paciente          INTEGER NULL, 
               
PRIMARY KEY (Id_Role),

constraint foreign_Role_Id_Login foreign key (id_Paciente) references Paciente(id_Paciente) ON DELETE CASCADE ON UPDATE CASCADE,
constraint foreign_Role_Id_Nutricionista foreign key (id_nutricionista) references Nutricionista(id_nutricionista) ON DELETE CASCADE ON UPDATE CASCADE
);



CREATE TABLE Ceia 
( 
              Id_Ceia              INTEGER NOT NULL AUTO_INCREMENT, 
              Ceia_Horario         VARCHAR(10) NULL, 
              Ceia_Local           VARCHAR(50) NULL, 
              Ceia_Humor           VARCHAR(20) NULL, 
              Ceia_Alimento        VARCHAR(20) NULL, 
              Ceia_Quantidade      VARCHAR(20) NULL, 
              id_Paciente          INTEGER NOT NULL, 
               
PRIMARY KEY (Id_Ceia),

constraint foreign_Ceia_Id_Login foreign key (id_Paciente) references Paciente(id_Paciente) ON DELETE CASCADE ON UPDATE CASCADE 
);


CREATE TABLE Colacao 
( 
              Id_Colacao           INTEGER NOT NULL AUTO_INCREMENT, 
              Colac_Horario        VARCHAR(10) NULL, 
              Colac_Local          VARCHAR(50) NULL, 
              Colac_Humor          VARCHAR(20) NULL, 
              Colac_Alimento       VARCHAR(20) NULL, 
              Colac_Quantidade     VARCHAR(20) NULL, 
              id_Paciente          INTEGER NOT NULL, 
              
PRIMARY KEY (Id_Colacao),

constraint foreign_Colacao_Id_Login foreign key (id_Paciente) references Paciente(id_Paciente) ON DELETE CASCADE ON UPDATE CASCADE 
           
);

CREATE TABLE Faz_uso_de_medicamento 
( 
              Id_FazUsodeMedicamento INTEGER NOT NULL AUTO_INCREMENT, 
              Med_Nome             VARCHAR(50) NULL, 
              Med_Dose             VARCHAR(20) NULL, 
              Med_Horario          VARCHAR(10) NULL, 
              Med_Motivo           VARCHAR(20) NULL, 
              Med_Inter            VARCHAR(20) NULL, 
              id_Paciente          INTEGER NOT NULL, 
              
PRIMARY KEY (Id_FazUsodeMedicamento),

constraint foreign_Faz_uso_de_medicamento_Id_Login foreign key (id_Paciente) references Paciente(id_Paciente) ON DELETE CASCADE ON UPDATE CASCADE
);


 CREATE TABLE Jantar 
( 
              Id_Jant              INTEGER NOT NULL AUTO_INCREMENT, 
              Jant_Horario         VARCHAR (10) NULL, 
              Jant_Local           VARCHAR (50) NULL, 
              Jant_Humor           VARCHAR (20) NULL, 
              Jant_Alimento        VARCHAR (20) NULL, 
              Jant_Quantidade      VARCHAR (20) NULL, 
              id_Paciente INTEGER NOT NULL, 
PRIMARY KEY (Id_Jant),

constraint foreign_Jantar_Id_Login foreign key (id_Paciente) references Paciente(id_Paciente) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Lanche 
( 
              Id_Lanche            INTEGER NOT NULL AUTO_INCREMENT, 
              Lan_Horario          VARCHAR (10) NULL, 
              Lan_Local            VARCHAR (50) NULL, 
              Lan_Humor            VARCHAR (20) NULL, 
              Lan_Alimento         VARCHAR (20) NULL, 
              Lan_Quantidade       VARCHAR (20) NULL, 
              id_Paciente          INTEGER NOT NULL, 

PRIMARY KEY (Id_Lanche),

constraint foreign_Lanche_Id_Login foreign key (id_Paciente) references Paciente(id_Paciente) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Almoco 
( 
              Id_Almoco            INTEGER NOT NULL AUTO_INCREMENT, 
              Alm_Horario          VARCHAR (10) NULL, 
              Alm_Local            VARCHAR (50) NULL, 
              Alm_Humor            VARCHAR (20) NULL, 
              Alm_Alimento         VARCHAR (20) NULL, 
              Alm_Quantidade       VARCHAR (20) NULL, 
              id_Paciente          INTEGER NOT NULL, 

Primary key (Id_Almoco),

constraint foreign_Almoco_Id_Login foreign key (id_Paciente) references Paciente(id_Paciente) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Desjejum 
( 
              Id_Desj              INTEGER NOT NULL AUTO_INCREMENT, 
              Desj_Horario         VARCHAR (10) NULL, 
              Desj_Local           VARCHAR (50) NULL, 
              Desj_Humor           VARCHAR (20) NULL, 
              Desj_Alimento        VARCHAR (20) NULL, 
              Desj_Quantidade      VARCHAR (20) NULL, 
              id_Paciente          INTEGER NOT NULL, 
PRIMARY KEY (Id_Desj),

constraint foreign_Desjejum_Id_Login foreign key (id_Paciente) references Paciente(id_Paciente) ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE Fora_de_Hora 
( 
              Id_Foradehora        INTEGER NOT NULL AUTO_INCREMENT, 
              For_Horario          VARCHAR(10) NULL, 
              For_Local            VARCHAR(20) NULL, 
              For_Humor            VARCHAR(20) NULL, 
              For_Alimento         VARCHAR(50) NULL, 
              For_Quantidade       INTEGER NULL, 
              id_Paciente          INTEGER NOT NULL, 
              
PRIMARY KEY (Id_Foradehora),

constraint foreign_Fora_de_Hora_Id_Login foreign key (id_Paciente) references Paciente(id_Paciente) ON DELETE CASCADE ON UPDATE CASCADE 
);

CREATE TABLE Exames_Bioquimicos 
( 
              Id_ExamesBioquimicos INTEGER NOT NULL AUTO_INCREMENT, 
              id_Paciente          INTEGER NOT NULL,
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

constraint foreign_Exames_Bioquimicos_Id_Paciente foreign key (id_Paciente) references Paciente(id_Paciente) ON DELETE CASCADE ON UPDATE CASCADE

);

CREATE TABLE Dados_Antropometricos 

( 

              Id_DadosAntropometricos INTEGER NOT NULL AUTO_INCREMENT,
              Ant_PesoUsual    VARCHAR(10) NULL,
                Ant_PesoIdeal     VARCHAR(10) NULL,
              Ant_Data             VARCHAR(10) NULL, 
              Ant_PA               VARCHAR(20) NULL, 
              Ant_Peso             VARCHAR(10) NULL, 
              Ant_Altura           VARCHAR(10) NULL,
              Ant_IMC              VARCHAR(10) NULL, 
              Ant_PCT              VARCHAR(10) NULL, 
              Ant_PCB              VARCHAR(10) NULL, 
              Ant_PCSE             VARCHAR(10) NULL, 
              Ant_Peitoral         VARCHAR(10) NULL, 
              Ant_PCAB             VARCHAR(10) NULL, 
              Ant_PCSI             VARCHAR(10) NULL, 
              Ant_PCCOXA           VARCHAR(10) NULL, 
              Ant_PCpant           VARCHAR(10) NULL, 
              Ant_Braco            VARCHAR(10) NULL, 
              Ant_Antebraco        VARCHAR(10) NULL, 
              Ant_punho            VARCHAR(10) NULL, 
              Ant_Torax            VARCHAR(10) NULL, 
              Ant_Cintura          VARCHAR(10) NULL, 
              Ant_Coxa             VARCHAR(10) NULL, 
              Ant_Panturrilha      VARCHAR(10) NULL, 
              Ant_Comple           VARCHAR(10) NULL, 
              Ant_EM               VARCHAR(10) NULL, 
              Ant_porcentG         VARCHAR(10) NULL, 
              Ant_porcentMM        VARCHAR(10) NULL,
              id_Paciente          INTEGER NOT NULL,
                
PRIMARY KEY (Id_DadosAntropometricos),

constraint foreign_Dados_Antropometricos_Id_Paciente foreign key (id_Paciente) references Paciente(id_Paciente) ON DELETE CASCADE ON UPDATE CASCADE

);