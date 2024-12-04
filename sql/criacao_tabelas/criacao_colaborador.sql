-- Criação da Tabela `colaborador`

CREATE TABLE colaborador(
	colaborador_id SERIAL PRIMARY KEY NOT NULL,
	primeiro_nome VARCHAR(100) NOT NULL,
	segundo_nome VARCHAR(100) NOT NULL,
	cargo VARCHAR(100) NOT NULL,
	salario DECIMAL(6,0) NOT NULL
);