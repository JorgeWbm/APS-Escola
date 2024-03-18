insert into professor(nomeProfessor, dataNascProfessor, emailProfessor) values ('Rita Elaine Rafaela Rezende', '1987-06-05','rita.elaine@professor.edu.br');
insert into professor(nomeProfessor, dataNascProfessor, emailProfessor) values ('Felipe Sérgio Jorge Nogueira', '1993-09-15','felipesergio@professor.edu.br');
insert into professor(nomeProfessor, dataNascProfessor, emailProfessor) values ('Levi Ruan da Cunha', '1978-11-25','leviruancunha@professor.edu.br');
insert into professor(nomeProfessor, dataNascProfessor, emailProfessor) values ('Luan Danilo de Paula', '1990-12-11','luandanilop@professor.edu.br');
insert into professor(nomeProfessor, dataNascProfessor, emailProfessor) values ('Elias Noah da Cunha', '1989-03-19','eliascunha@professor.edu.br');
insert into professor(nomeProfessor, dataNascProfessor, emailProfessor) values ('Giovana Benedita Lopes', '1982-06-09','giovanalopes@professor.edu.br');
insert into professor(nomeProfessor, dataNascProfessor, emailProfessor) values ('Eduardo Thiago Renato Batista', '1992-08-06','eduardobatista@professor.edu.br');
insert into professor(nomeProfessor, dataNascProfessor, emailProfessor) values ('André Manuel Sales', '1987-04-02','andremsales@professor.edu.br');
 
select * from professor;

UPDATE professor
SET nomeProfessor = 'Flavia Cristina de Almeida', dataNascProfessor = '1988-05-28', emailProfessor = 'flaviaalmeida@professor.edu.br'
WHERE matriculaProfessor = 202301;

UPDATE professor
SET nomeProfessor = 'João Braga Pinheiro', dataNascProfessor = '1990-09-14', emailProfessor = 'joaopinheiro@professor.edu.br'
WHERE matriculaProfessor = 202302;

UPDATE professor
SET nomeProfessor = 'Rafael Barreto Lopes', dataNascProfessor = '1979-03-31', emailProfessor = 'rafaelbarreto@professor.edu.br'
WHERE matriculaProfessor = 202303;

UPDATE professor
SET nomeProfessor = 'Willian Nobrega França', dataNascProfessor = '1995-05-11', emailProfessor = 'willianfranca@professor.edu.br'
WHERE matriculaProfessor = 202304;

UPDATE professor
SET nomeProfessor = 'Bianca Araujo da Silva', dataNascProfessor = '1987-10-22', emailProfessor = 'biancasilva@professor.edu.br'
WHERE matriculaProfessor = 202305;
