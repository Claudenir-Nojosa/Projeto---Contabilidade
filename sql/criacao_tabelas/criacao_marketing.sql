-- Criação da Tabela `marketing`

CREATE TABLE marketing(
	cliente_id INT NOT NULL,
	canal_aquisicao VARCHAR(150) NOT NULL,
	nome_campanha VARCHAR(150),
	CONSTRAINT fk_cliente FOREIGN KEY (cliente_id)
		REFERENCES cliente (cliente_id) ON DELETE CASCADE
);