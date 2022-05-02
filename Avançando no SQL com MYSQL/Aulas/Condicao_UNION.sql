select bairro from tabela_de_clientes;

select bairro from tabela_de_vendedores;

select distinct bairro from tabela_de_clientes
union
select distinct bairro from tabela_de_vendedores;

select distinct bairro from tabela_de_clientes
union all
select distinct bairro from tabela_de_vendedores;

select distinct bairro,nome from tabela_de_clientes
union all
select distinct bairro,nome from tabela_de_vendedores;

select distinct bairro,nome, 'cliente' as TIPO from tabela_de_clientes
union all
select distinct bairro,nome, 'vendedor' AS TIPO from tabela_de_vendedores;

select distinct bairro,nome, 'cliente' as TIPO_CLIENTE from tabela_de_clientes
union all
select distinct bairro,nome, 'vendedor' AS TIPO_VENDEDOR from tabela_de_vendedores;

select distinct bairro,nome, 'cliente' as TIPO_CLIENTE, cpf from tabela_de_clientes
union all
select distinct bairro,nome, 'vendedor' AS TIPO_VENDEDOR, matricula from tabela_de_vendedores;