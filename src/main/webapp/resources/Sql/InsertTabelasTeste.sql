USE projetotcc;

INSERT INTO login (Log_Usuario, Log_Senha) VALUES ('administrador', 12345);
INSERT INTO nutricionista (Nutri_NomeCompleto, Nutri_Crn, Id_Login) VALUES ('teste', 12345, 1);
INSERT INTO role (Role_Name, id_nutricionista) VALUES ('ROLE_administrador', 1);

INSERT INTO identificacao (Ident_Nome, Ident_Idade, Ident_Sexo) VALUES ('Marcia', 22, 'Feminino');
INSERT INTO login (Log_Usuario, Log_Senha) VALUES ('administrador1', 12345);
INSERT INTO paciente (Id_identificacao, id_nutricionista, Id_Login) VALUES (1, 1, 2);
INSERT INTO role (Role_Name, id_Paciente) VALUES ('ROLE_administrador', 1);

INSERT INTO ceia (Ceia_Horario, Ceia_Local, Ceia_Humor, Ceia_Alimento, Ceia_Quantidade)
VALUES ('8:30', 'Test', 'Feliz', 'Arroz', '1');
INSERT INTO colacao (Colac_Horario, Colac_Local, Colac_Humor, Colac_Alimento, Colac_Quantidade)
VALUES ('9:30', 'Test', 'Feliz', 'Arroz', '1');
INSERT INTO jantar (Jant_Horario, Jant_Local, Jant_Humor, Jant_Alimento, Jant_Quantidade)
VALUES ('10:30', 'Test', 'Feliz', 'Arroz', '1');
INSERT INTO lanche (Lan_Horario, Lan_Local, Lan_Humor, Lan_Alimento, Lan_Quantidade)
VALUES ('12:30', 'Test', 'Feliz', 'Arroz', '1');
INSERT INTO almoco (Alm_Horario, Alm_Local, Alm_Humor, Alm_Alimento, Alm_Quantidade)
VALUES ('15:30', 'Test', 'Feliz', 'Arroz', '1');
INSERT INTO desjejum (Desj_Horario, Desj_Local, Desj_Humor, Desj_Alimento, Desj_Quantidade)
VALUES ('18:30', 'Test', 'Feliz', 'Arroz', '1');
INSERT INTO fora_de_hora (For_Horario, For_Local, For_Humor, For_Alimento, For_Quantidade)
VALUES ('20:30', 'Test', 'Feliz', 'Arroz', '1');
INSERT INTO data (d_data, Id_Ceia, Id_Colacao, Id_Jant, Id_Lanche, Id_Almoco, Id_Desj, Id_Foradehora, id_Paciente)
VALUES ('20171128', 1, 1, 1, 1, 1, 1, 1, 1);

INSERT INTO ceia (Ceia_Horario, Ceia_Local, Ceia_Humor, Ceia_Alimento, Ceia_Quantidade)
VALUES ('8:30', 'Test1', 'Triste', 'Arroz', '2');
INSERT INTO colacao (Colac_Horario, Colac_Local, Colac_Humor, Colac_Alimento, Colac_Quantidade)
VALUES ('9:30', 'Test1', 'Triste', 'Arroz', '2');
INSERT INTO jantar (Jant_Horario, Jant_Local, Jant_Humor, Jant_Alimento, Jant_Quantidade)
VALUES ('10:30', 'Test1', 'Triste', 'Arroz', '2');
INSERT INTO lanche (Lan_Horario, Lan_Local, Lan_Humor, Lan_Alimento, Lan_Quantidade)
VALUES ('12:30', 'Test1', 'Triste', 'Arroz', '2');
INSERT INTO almoco (Alm_Horario, Alm_Local, Alm_Humor, Alm_Alimento, Alm_Quantidade)
VALUES ('15:30', 'Test1', 'Triste', 'Arroz', '2');
INSERT INTO desjejum (Desj_Horario, Desj_Local, Desj_Humor, Desj_Alimento, Desj_Quantidade)
VALUES ('18:30', 'Test1', 'Triste', 'Arroz', '2');
INSERT INTO fora_de_hora (For_Horario, For_Local, For_Humor, For_Alimento, For_Quantidade)
VALUES ('20:30', 'Test1', 'Triste', 'Arroz', '2');
INSERT INTO data (d_data, Id_Ceia, Id_Colacao, Id_Jant, Id_Lanche, Id_Almoco, Id_Desj, Id_Foradehora, id_Paciente)
VALUES ('20171120', 2, 2, 2, 2, 2, 2, 2, 1);

INSERT INTO Exames_Bioquimicos (id_Paciente, Bio_Data, Bio_Vlrderefe, Bio_GLI, Bio_Hg, Bio_Tg, Bio_Ct, Bio_Ldl, Bio_Hdl, Bio_Sodio, Bio_Potassio, Bio_Creatina, Bio_Tgo, Bio_Tgp, Bio_GGT, Bio_Ferritina, Bio_Vitaminab12, Bio_Acidofolico, Bio_Naohdl, Bio_Vldl, Bio_Ureia, Bio_Fosforo, Bio_Calcio, Bio_Acidourico)
VALUES
  (1, '20171120', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19',
                                                                '20',
   '21', '22', '23');

INSERT INTO Exames_Bioquimicos (id_Paciente, Bio_Data, Bio_Vlrderefe, Bio_GLI, Bio_Hg, Bio_Tg, Bio_Ct, Bio_Ldl, Bio_Hdl, Bio_Sodio, Bio_Potassio, Bio_Creatina, Bio_Tgo, Bio_Tgp, Bio_GGT, Bio_Ferritina, Bio_Vitaminab12, Bio_Acidofolico, Bio_Naohdl, Bio_Vldl, Bio_Ureia, Bio_Fosforo, Bio_Calcio, Bio_Acidourico)
VALUES
  (1, '20171128', '20', '30', '40', '50', '60', '70', '80', '90', '100', '110', '120', '130', '140', '150', '160',
                                                                         '170',
                                                                         '180', '190', '200',
   '210', '220', '230');