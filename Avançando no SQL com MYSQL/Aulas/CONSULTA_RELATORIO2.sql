SELECT * FROM tabela_de_produtos AS TP
INNER JOIN itens_notas_fiscais AS INF
ON TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
INNER JOIN notas_fiscais AS NF
ON NF.NUMERO = INF.NUMERO;

SELECT TP.SABOR, NF.DATA_VENDA, INF.QUANTIDADE FROM tabela_de_produtos AS TP
INNER JOIN itens_notas_fiscais AS INF
ON TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
INNER JOIN notas_fiscais AS NF
ON NF.NUMERO = INF.NUMERO;

SELECT TP.SABOR, YEAR(NF.DATA_VENDA) AS ANO, SUM(INF.QUANTIDADE) AS QUANTIDADE FROM tabela_de_produtos AS TP
INNER JOIN itens_notas_fiscais AS INF
ON TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
INNER JOIN notas_fiscais AS NF
ON NF.NUMERO = INF.NUMERO
GROUP BY TP.SABOR, YEAR(NF.DATA_VENDA);

SELECT TP.SABOR, YEAR(NF.DATA_VENDA) AS ANO, SUM(INF.QUANTIDADE) AS QUANTIDADE FROM tabela_de_produtos AS TP
INNER JOIN itens_notas_fiscais AS INF
ON TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
INNER JOIN notas_fiscais AS NF
ON NF.NUMERO = INF.NUMERO
WHERE YEAR(NF.DATA_VENDA) = 2016
GROUP BY TP.SABOR, YEAR(NF.DATA_VENDA);

/*QUANTIDA VENDIDA POR SABOR ANO 2016*/
SELECT TP.SABOR, YEAR(NF.DATA_VENDA) AS ANO, SUM(INF.QUANTIDADE) AS QUANTIDADE FROM tabela_de_produtos AS TP
INNER JOIN itens_notas_fiscais AS INF
ON TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
INNER JOIN notas_fiscais AS NF
ON NF.NUMERO = INF.NUMERO
WHERE YEAR(NF.DATA_VENDA) = 2016
GROUP BY TP.SABOR, YEAR(NF.DATA_VENDA)
ORDER BY SUM(INF.QUANTIDADE) DESC;

/* VENDAS TOTAL NO ANO 2016*/
SELECT  YEAR(NF.DATA_VENDA) AS ANO, SUM(INF.QUANTIDADE) AS QUANTIDADE FROM tabela_de_produtos AS TP
INNER JOIN itens_notas_fiscais AS INF
ON TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
INNER JOIN notas_fiscais AS NF
ON NF.NUMERO = INF.NUMERO
WHERE YEAR(NF.DATA_VENDA) = 2016
GROUP BY YEAR(NF.DATA_VENDA)
ORDER BY SUM(INF.QUANTIDADE) DESC;


SELECT * FROM
(SELECT TP.SABOR, YEAR(NF.DATA_VENDA) AS ANO, SUM(INF.QUANTIDADE) AS QUANTIDADE FROM tabela_de_produtos AS TP
INNER JOIN itens_notas_fiscais AS INF
ON TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
INNER JOIN notas_fiscais AS NF
ON NF.NUMERO = INF.NUMERO
WHERE YEAR(NF.DATA_VENDA) = 2016
GROUP BY TP.SABOR, YEAR(NF.DATA_VENDA)
ORDER BY SUM(INF.QUANTIDADE) DESC) AS VENDAS_SABOR
INNER JOIN
(SELECT  YEAR(NF.DATA_VENDA) AS ANO, SUM(INF.QUANTIDADE) AS QUANTIDADE FROM tabela_de_produtos AS TP
INNER JOIN itens_notas_fiscais AS INF
ON TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
INNER JOIN notas_fiscais AS NF
ON NF.NUMERO = INF.NUMERO
WHERE YEAR(NF.DATA_VENDA) = 2016
GROUP BY YEAR(NF.DATA_VENDA)
ORDER BY SUM(INF.QUANTIDADE) DESC) AS VENDAS_TOTAL
ON VENDAS_SABOR.ANO = VENDAS_TOTAL.ANO;

SELECT VENDAS_SABOR.SABOR, VENDAS_SABOR.ANO, VENDAS_SABOR.QUANTIDADE, ROUND((VENDAS_SABOR.QUANTIDADE/VENDAS_TOTAL.QUANTIDADE)*100,2) AS PARTICIPACAO FROM
(SELECT TP.SABOR, YEAR(NF.DATA_VENDA) AS ANO, SUM(INF.QUANTIDADE) AS QUANTIDADE FROM tabela_de_produtos AS TP
INNER JOIN itens_notas_fiscais AS INF
ON TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
INNER JOIN notas_fiscais AS NF
ON NF.NUMERO = INF.NUMERO
WHERE YEAR(NF.DATA_VENDA) = 2016
GROUP BY TP.SABOR, YEAR(NF.DATA_VENDA)
ORDER BY SUM(INF.QUANTIDADE) DESC) AS VENDAS_SABOR
INNER JOIN
(SELECT  YEAR(NF.DATA_VENDA) AS ANO, SUM(INF.QUANTIDADE) AS QUANTIDADE FROM tabela_de_produtos AS TP
INNER JOIN itens_notas_fiscais AS INF
ON TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
INNER JOIN notas_fiscais AS NF
ON NF.NUMERO = INF.NUMERO
WHERE YEAR(NF.DATA_VENDA) = 2016
GROUP BY YEAR(NF.DATA_VENDA)
ORDER BY SUM(INF.QUANTIDADE) DESC) AS VENDAS_TOTAL
ON VENDAS_SABOR.ANO = VENDAS_TOTAL.ANO
ORDER BY VENDAS_SABOR.QUANTIDADE DESC;
