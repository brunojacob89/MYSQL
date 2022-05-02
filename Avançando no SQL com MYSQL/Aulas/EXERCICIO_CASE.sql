select * from tabela_de_clientes;

select nome, 
case
	when year(DATA_DE_NASCIMENTO) < 1990 THEN 'VELHOS'
    WHEN year(DATA_DE_NASCIMENTO)<= 1995 AND year(DATA_DE_NASCIMENTO) >= 1990 THEN 'JOVENS'
    ELSE 'CRIANCAS'
END AS TABELA_IDADE
FROM tabela_de_clientes
order by TABELA_IDADE;