-- Inserção de Dados Randômicos na Coluna UF

UPDATE cliente
SET UF = (ARRAY['SP', 'RJ', 'MG', 'BA', 'PR', 'RS', 'SC', 'PE', 'CE', 'GO', 
                 'AM', 'PA', 'MA', 'ES', 'PB', 'RN', 'MT', 'AL', 'PI', 'DF', 
                 'SE', 'MS', 'TO', 'RO', 'AC', 'AP', 'RR'])[FLOOR(RANDOM() * 27) + 1]
WHERE UF IS NULL; 
