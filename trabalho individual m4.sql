CREATE TABLE `cursos` (
  `id_curso` int PRIMARY KEY,
  `nome_curso` varchar(45),
  `categoria` varchar(45),
  `valor_curso` int,
  `duracao_curso` int
);

CREATE TABLE `turmas` (
  `id_turma` int PRIMARY KEY,
  `id_aluno` int,
  `id_professor` int,
  `id_materia` int
);

CREATE TABLE `alunos` (
  `id_aluno` int PRIMARY KEY,
  `nome_aluno` varchar(45),
  `cpf_aluno` int,
  `numero_aluno` varchar(11),
  `data_nascimento_aluno` datetime
);

CREATE TABLE `materia` (
  `id_materia` int PRIMARY KEY,
  `id_curso` int,
  `nome_materia` varchar(30),
  `duracao_materia` int,
  `conteudo_materia` blob
);

CREATE TABLE `notas` (
  `id_aluno` int PRIMARY KEY,
  `id_materia` int,
  `nota` int
);

CREATE TABLE `professores` (
  `id_professor` int PRIMARY KEY,
  `nome_professor` varchar(45),
  `cpf_professor` int,
  `numero_professor` varchar(11)
);

ALTER TABLE `materia` ADD FOREIGN KEY (`id_curso`) REFERENCES `cursos` (`id_curso`);

ALTER TABLE `turmas` ADD FOREIGN KEY (`id_aluno`) REFERENCES `alunos` (`id_aluno`);

ALTER TABLE `turmas` ADD FOREIGN KEY (`id_professor`) REFERENCES `professores` (`id_professor`);

ALTER TABLE `notas` ADD FOREIGN KEY (`id_aluno`) REFERENCES `alunos` (`id_aluno`);

ALTER TABLE `notas` ADD FOREIGN KEY (`id_materia`) REFERENCES `materia` (`id_materia`);

ALTER TABLE `turmas` ADD FOREIGN KEY (`id_turma`) REFERENCES `materia` (`id_materia`);
