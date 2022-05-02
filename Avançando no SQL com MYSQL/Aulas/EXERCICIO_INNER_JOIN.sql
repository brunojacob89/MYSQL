select year(DATA_VENDA),sum(QUANTIDADE*PRECO) AS FATURAMENTO
FROM notas_fiscais NF 
inner join itens_notas_fiscais INF
on NF.NUMERO = INF.NUMERO
group by year(DATA_VENDA);
