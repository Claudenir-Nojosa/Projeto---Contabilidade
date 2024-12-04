-- Criação da Coluna Tempo de Adesão do cliente

ALTER TABLE cliente
ADD COLUMN tempo_de_adesao text;

UPDATE cliente
SET tempo_de_adesao = ((data_cancelamento - data_adesao) * 1) || ' dias';

-- Criação da Coluna de Lucro e Prejuízo Financeiro

ALTER TABLE financeiro
ADD COLUMN lucro numeric,
ADD COLUMN prejuizo numeric;

UPDATE financeiro
SET lucro = CASE 
              WHEN (receita - despesa) > 0 THEN (receita - despesa)
              ELSE 0
            END,
    prejuizo = CASE 
                WHEN (receita - despesa) < 0 THEN ABS(receita - despesa)
                ELSE 0
              END;

-- Criação da Coluna do Tempo de Atraso de Entrega

ALTER TABLE operacional
ADD COLUMN tempo_atraso_entrega numeric,

UPDATE operacional
SET tempo_atraso_entrega = CASE
	WHEN data_entrega - prazo_entrega > 0 THEN data_entrega - prazo_entrega
	ELSE 0
END;
