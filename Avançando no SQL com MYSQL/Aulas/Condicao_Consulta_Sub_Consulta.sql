select distinct bairro from tabela_de_vendedores;

select * from tabela_de_clientes
where bairro in (select distinct bairro from tabela_de_vendedores);

select EMBALAGEM , max(PRECO_DE_LISTA) AS PRECO_MAXIMO FROM tabela_de_produtos group by EMBALAGEM;

SELECT X.EMBALAGEM,X.PRECO_MAXIMO FROM
(select EMBALAGEM , max(PRECO_DE_LISTA) AS PRECO_MAXIMO
 FROM tabela_de_produtos
 group by EMBALAGEM) X
 WHERE X.PRECO_MAXIMO >= 10;