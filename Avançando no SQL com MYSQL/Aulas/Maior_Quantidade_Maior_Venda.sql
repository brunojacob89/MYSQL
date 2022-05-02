select * from itens_notas_fiscais;

select max(quantidade) as quantidade_maxima from itens_notas_fiscais where CODIGO_DO_PRODUTO = '1101035';

select count(*) from itens_notas_fiscais  where CODIGO_DO_PRODUTO = '1101035' and quantidade = 99;