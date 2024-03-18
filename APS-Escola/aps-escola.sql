CREATE TABLE aluno (
	matriculaAluno int NOT NULL AUTO_INCREMENT UNIQUE,
	nomeAluno varchar(50) NOT NULL,
	dataNascAluno DATE NOT NULL,
	emailAluno varchar(40) NOT NULL UNIQUE,
	turmaAluno varchar(15) NOT NULL,
	PRIMARY KEY (matriculaAluno)
) AUTO_INCREMENT = 2023000001;

CREATE TABLE professor (
	matriculaProfessor INT NOT NULL AUTO_INCREMENT UNIQUE,
	nomeProfessor varchar(50) NOT NULL,
	dataNascProfessor DATE NOT NULL,
	emailProfessor varchar(30) NOT NULL UNIQUE,
	PRIMARY KEY (matriculaProfessor)
) AUTO_INCREMENT = 202301;

CREATE TABLE disciplinas (
	idDisciplina INT NOT NULL AUTO_INCREMENT UNIQUE,
	nomeDisciplina varchar(30) NOT NULL,
	matriculaProfessor INT NOT NULL,
	PRIMARY KEY (idDisciplina)
) AUTO_INCREMENT = 001;

CREATE TABLE notas (
	idnotas INT NOT NULL AUTO_INCREMENT,
	matriculaAluno INT NOT NULL,
	matriculaProfessor INT NOT NULL,
	disciplina INT NOT NULL,
	nota INT NOT NULL,
	PRIMARY KEY (idnotas)
) AUTO_INCREMENT = 0001;

CREATE TABLE frequencia (
	idFrequencia INT NOT NULL AUTO_INCREMENT UNIQUE,
	matriculaAluno INT NOT NULL,
	matriculaProfessor INT NOT NULL,
	disciplina INT NOT NULL,
	faltas INT NOT NULL,
	PRIMARY KEY (idFrequencia)
) AUTO_INCREMENT = 000001;

ALTER TABLE disciplinas ADD CONSTRAINT disciplinas_fk0 FOREIGN KEY (`matriculaProfessor`) REFERENCES `professor`(`matriculaProfessor`);

ALTER TABLE notas ADD CONSTRAINT notas_fk0 FOREIGN KEY (matriculaAluno) REFERENCES aluno(matriculaAluno);

ALTER TABLE notas ADD CONSTRAINT notas_fk1 FOREIGN KEY (matriculaProfessor) REFERENCES professor(matriculaProfessor);

ALTER TABLE notas ADD CONSTRAINT notas_fk2 FOREIGN KEY (disciplina) REFERENCES disciplinas(iddisciplina);

ALTER TABLE frequencia ADD CONSTRAINT frequencia_fk0 FOREIGN KEY (matriculaAluno) REFERENCES aluno(matriculaAluno);

ALTER TABLE frequencia ADD CONSTRAINT frequencia_fk1 FOREIGN KEY (matriculaProfessor) REFERENCES professor(matriculaProfessor);

ALTER TABLE frequencia ADD CONSTRAINT frequencia_fk2 FOREIGN KEY (disciplina) REFERENCES disciplinas(iddisciplina);






