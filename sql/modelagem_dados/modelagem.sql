-- Lucratividade: Financeiro + Serviços

SELECT s.nome_servico, 
SUM(f.receita) AS receita_total, 
SUM(f.despesa) AS despesa_total,
SUM(f.receita - f.despesa) AS lucro_total
FROM financeiro f
INNER JOIN servico S
ON f.servico_id = s.servico_id
GROUP BY s.nome_servico
ORDER BY lucro_total DESC;

-- Clientes + Marketing

SELECT COUNT(c.nome) AS total_clientes, m.canal_aquisicao
FROM cliente c
INNER JOIN marketing m
ON c.cliente_id = m.cliente_id
GROUP BY m.canal_aquisicao;

-- Eficiência Operacional: Operacional + Colaboradores

SELECT col.primeiro_nome, col.segundo_nome, COUNT(op.cliente_id) AS total_servicos,
op.tempo_atraso_entrega,
col.salario
FROM operacional op
INNER JOIN colaborador col
ON op.colaborador_id = col.colaborador_id
GROUP BY col.primeiro_nome, col.segundo_nome, op.tempo_atraso_entrega,col.salario
ORDER BY COUNT(op.cliente_id) DESC;

-- Desempenho Estratégico: Financeiro + Marketing

SELECT 
    m.nome_campanha,
    SUM(f.receita) AS receita_total,
    COUNT(f.cliente_id) AS total_clientes
FROM 
    financeiro f
INNER JOIN 
    marketing m
ON 
    f.cliente_id = m.cliente_id
GROUP BY 
    m.nome_campanha
ORDER BY 
    receita_total DESC;
