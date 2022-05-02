select * from tabela_de_clientes;

select estado, limite_de_credito from tabela_de_clientes;

select estado, sum(limite_de_credito) as limite_total from tabela_de_clientes group by estado;

SELECT EMBALAGEM,PRECO_DE_LISTA FROM tabela_de_produtos;

SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS MAIOR_PRECO FROM tabela_de_produtos group by EMBALAGEM;

SELECT EMBALAGEM, count(*) AS CONTADOR FROM tabela_de_produtos group by EMBALAGEM;

SELECT BAIRRO, SUM(LIMITE_DE_CREDITO) FROM tabela_de_clientes group by BAIRRO;

SELECT BAIRRO, SUM(LIMITE_DE_CREDITO) FROM tabela_de_clientes
where CIDADE = 'RIO DE JANEIRO' group by BAIRRO;

SELECT ESTADO,BAIRRO, SUM(LIMITE_DE_CREDITO) FROM tabela_de_clientes
where CIDADE = 'RIO DE JANEIRO' group by ESTADO, BAIRRO;

SELECT ESTADO,BAIRRO, SUM(LIMITE_DE_CREDITO) FROM tabela_de_clientes
where CIDADE = 'RIO DE JANEIRO'
group by ESTADO, BAIRRO
ORDER BY BAIRRO;