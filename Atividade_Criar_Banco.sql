CREATE DATABASE bd_teste;
use bd_teste;

CREATE TABLE usuario(
id_user integer PRIMARY KEY,
usuario varchar(50),
login varchar(20),
senha varchar(20),
perfil varchar(20)
);

CREATE TABLE pessoa(
id integer PRIMARY KEY,
bi varchar(45),
nome varchar(45),
data_nasc DATE,
telefone varchar(45),
email varchar(45),
morada varchar(45)
);

CREATE TABLE funcionarios(
id integer,
nome varchar(50),
registro integer PRIMARY KEY,
guerra varchar(30),
gerencia varchar(20),
det varchar(20),
turno varchar(10),
cargo varchar(30),
atividade varchar(50),
funcao varchar(30),
vinculo varchar(30),
situacao varchar(30)
);

describe usuario;
describe pessoa;
describe funcionarios;

drop table usuario;
ALTER TABLE funcionarios RENAME TO tbfuncionario;
ALTER TABLE tbfuncionario RENAME COLUMN guerra TO area;
ALTER TABLE tbfuncionario RENAME COLUMN turno TO Turno;
ALTER TABLE tbfuncionario RENAME COLUMN funcao TO Funcao;
ALTER TABLE pessoa RENAME COLUMN data_nasc TO datanascimento;
ALTER TABLE pessoa DROP COLUMN morada;