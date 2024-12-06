-- Criação da Tabela `cliente`

CREATE TABLE cliente (
	cliente_id SERIAL PRIMARY KEY,
	nome VARCHAR(250),
	data_adesao DATE,
	data_cancelamento DATE,
	ticket_medio DECIMAL(10,2),
	feedback VARCHAR(250)
);