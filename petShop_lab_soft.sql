CREATE DATABASE petShop;
USE petShop;

CREATE TABLE admnistrador(
	nome VARCHAR(100),
	cpf CHAR(11) NOT NULL UNIQUE,
	telefone CHAR(10), 
	email VARCHAR(100) UNIQUE,
	senha VARCHAR(50) NOT NULL
);

CREATE TABLE cliente (
	id_cliente INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(100),
	cpf CHAR(11) NOT NULL UNIQUE,
	telefone CHAR(10),
	email VARCHAR(100) UNIQUE,
	senha VARCHAR(50) NOT NULL
);

CREATE TABLE supervisor(
	nome VARCHAR(100),
	cpf CHAR(11) NOT NULL UNIQUE,
	telefone CHAR(10),
	email VARCHAR(100) UNIQUE,
	senha VARCHAR(50) NOT NULL
);

CREATE TABLE repositor(
	nome VARCHAR(100),
	cpf CHAR(11) NOT NULL UNIQUE,
	telefone CHAR(10),
	email VARCHAR(100) UNIQUE,
	senha VARCHAR(50) NOT NULL
);

CREATE TABLE caixa(
	caixa_id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(100),
	cpf CHAR(11) NOT NULL UNIQUE,
	telefone CHAR(10),
	email VARCHAR(100) UNIQUE,
	senha VARCHAR(50) NOT NULL
);

CREATE TABLE produto(
	id_produto INT NOT NULL,
	nome_produto VARCHAR(150),
	estoque INT,
	preco DECIMAL (10, 2) NOT NULL DEFAULT 0.00
);

CREATE TABLE vendas(
	valor_compra DECIMAL(5,2),
	valor_pago DECIMAL (7,2),
	caixa_id INT,
	FOREIGN KEY (caixa_id) REFERENCES caixa (caixa_id),
	id_cliente INT,
	FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

CREATE TABLE pet(
	nome_pet VARCHAR(100) NOT NULL,
	cor VARCHAR(50),
	idade INT,
	especie ENUM('gato, cachorro') NOT NULL,
	cpf_dono CHAR(11),
	FOREIGN KEY (cpf_dono) REFERENCES cliente(cpf)
);

