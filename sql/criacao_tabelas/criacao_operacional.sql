-- Criação da Tabela `operacional`

CREATE TABLE operacional(
	clientes_id INT NOT NULL,
	servico_id INT NOT NULL,
	colaborador_id INT NOT NULL,
	prazo_entrega INT NOT NULL,
	data_entrega INT NOT NULL,
	CONSTRAINT fk_cliente FOREIGN KEY (clientes_id)
		REFERENCES cliente (clientes_id) ON DELETE CASCADE,
	CONSTRAINT fk_servico FOREIGN KEY (servico_id)
		REFERENCES servico (servico_id) ON DELETE CASCADE,
	CONSTRAINT fk_colaborador FOREIGN KEY (colaborador_id)
		REFERENCES colaborador (colaborador_id) ON DELETE CASCADE
);
