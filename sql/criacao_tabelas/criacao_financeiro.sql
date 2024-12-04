-- Criação da Tabela `financeiro`

CREATE TABLE financeiro(
	cliente_id INT NOT NULL,
	servico_id INT NOT NULL,
	receita DECIMAL (10,2) NOT NULL,
	despesa DECIMAL (10,2) NOT NULL,
	CONSTRAINT fk_cliente FOREIGN KEY (cliente_id)
		REFERENCES cliente (cliente_id) ON DELETE CASCADE,
	CONSTRAINT fk_servico FOREIGN KEY (servico_id)
		REFERENCES servico (servico_id) ON DELETE CASCADE
);
