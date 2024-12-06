-- Criação da Tabela `marketing`

CREATE TABLE marketing(
	clientes_id INT NOT NULL,
	canal_aquisicao VARCHAR(150) NOT NULL,
	nome_campanha VARCHAR(150),
	CONSTRAINT fk_cliente FOREIGN KEY (clientes_id)
		REFERENCES cliente (clientes_id) ON DELETE CASCADE
);