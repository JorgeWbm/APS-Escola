-- Tabela Notas
insert into notas(matriculaAluno, matriculaProfessor, disciplina, nota) values (2023000001, 202301, 1, 10);
insert into notas(matriculaAluno, matriculaProfessor, disciplina, nota) values (2023000002, 202302, 2, 5.4);
insert into notas(matriculaAluno, matriculaProfessor, disciplina, nota) values (2023000003, 202303, 3, 9);
insert into notas(matriculaAluno, matriculaProfessor, disciplina, nota) values (2023000004, 202304, 4, 8);
insert into notas(matriculaAluno, matriculaProfessor, disciplina, nota) values (2023000005, 202305, 5, 2);
insert into notas(matriculaAluno, matriculaProfessor, disciplina, nota) values (2023000006, 202306, 6, 8);
insert into notas(matriculaAluno, matriculaProfessor, disciplina, nota) values (2023000007, 202307, 7, 1);
insert into notas(matriculaAluno, matriculaProfessor, disciplina, nota) values (2023000008, 202308, 8, 2);
insert into notas(matriculaAluno, matriculaProfessor, disciplina, nota) values (2023000009, 202301, 1, 6);
insert into notas(matriculaAluno, matriculaProfessor, disciplina, nota) values (2023000010, 202302, 2, 10);

UPDATE notas
SET nota = '8'
WHERE idnotas = 1;

UPDATE notas
SET nota = '6.5'
WHERE idnotas = 2;

UPDATE notas
SET nota = '7'
WHERE idnotas = 3;

UPDATE notas
SET nota = '5'
WHERE idnotas = 4;

UPDATE notas
SET nota = '9'
WHERE idnotas = 5;