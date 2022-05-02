select CPF, count(*) from notas_fiscais where year(DATA_VENDA) = 2016
GROUP BY CPF
HAVING count(*) > 2000;