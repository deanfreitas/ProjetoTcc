INSERT INTO login (Log_Usuario, Log_Senha) VALUES ('administrador', 12345);
INSERT INTO nutricionista (Nutri_NomeCompleto, Nutri_Crn, Id_Login) VALUES ('teste', 12345, 1);
INSERT INTO role (Role_Name, id_nutricionista) VALUES ('ROLE_administrador', 1);

INSERT INTO identificacao (Ident_Nome, Ident_Idade) VALUES ('Marcia', 22);
INSERT INTO login(Log_Usuario, Log_Senha) VALUES ('administrador1', 12345);
INSERT INTO paciente (Id_identificacao, id_nutricionista, Id_Login) VALUES (1, 1, 2);
INSERT INTO role (Role_Name, id_Paciente) VALUES ('ROLE_administrador', 1);