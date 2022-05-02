select EMBALAGEM , max(PRECO_DE_LISTA) AS PRECO_MAXIMO FROM tabela_de_produtos group by EMBALAGEM;

SELECT X.EMBALAGEM,X.PRECO_MAXIMO FROM
(select EMBALAGEM , max(PRECO_DE_LISTA) AS PRECO_MAXIMO
 FROM tabela_de_produtos
 group by EMBALAGEM) X
 WHERE X.PRECO_MAXIMO >= 10;
 
 SELECT X.EMBALAGEM,X.PRECO_MAXIMO FROM
vw_maiores_embalagens x
 WHERE X.PRECO_MAXIMO >= 10;
 
 select a.nome_do_produto, a.embalagem,a.preco_de_lista,x.preco_maximo from
 tabela_de_produtos a
 inner join vw_maiores_embalagens x
 on a.EMBALAGEM = x.EMBALAGEM;
 
 select a.nome_do_produto, a.embalagem,a.preco_de_lista,x.preco_maximo,
 ((a.preco_de_lista / x.preco_maximo) -1) * 100 as percentual
 from tabela_de_produtos a
 inner join vw_maiores_embalagens x
 on a.EMBALAGEM = x.EMBALAGEM;