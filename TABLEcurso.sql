CREATE TABLE tbCurso (
      id SERIAL PRIMARY KEY,
	  nome VARCHAR(20) NOT NULL,
	  cargaHoraria INT,
	  valor FLOAT,
	  notaPrevista FLOAT,
	  notaMinima FLOAT
);

CREATE TABLE tbTurma (
      id SERIAL PRIMARY KEY,
	  numero INT,
	  inicio DATE,
	  vagas INT,
	  cursoId INT NOT NULL,
	  FOREIGN KEY(cursoId) REFERENCES tbCurso(id)
);

CREATE TABLE tbAluno (
      cpf VARCHAR(12) PRIMARY KEY,
	  nome VARCHAR(40) NOT NULL,
	  nascimeento DATE
);