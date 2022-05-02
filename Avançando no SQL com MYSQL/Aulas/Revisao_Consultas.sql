select * from tabela_de_clientes;

select CPF,NOME from tabela_de_clientes;

select CPF AS IDENTIFICADOR, NOME AS CLIENTE FROM tabela_de_clientes;

SELECT * FROM tabela_de_produtos;

SELECT * FROM tabela_de_produtos WHERE CODIGO_DO_PRODUTO = '1000889';

SELECT * FROM tabela_de_produtos WHERE SABOR= 'UVA';

SELECT * FROM tabela_de_produtos WHERE SABOR= 'LARANJA';

SELECT * FROM tabela_de_produtos WHERE PRECO_DE_LISTA BETWEEN 19.51 AND 19.52;