ALTER TABLE tabela_de_vendedores
ADD primary key (MATRICULA);

ALTER Table tabela_de_vendedores
add column (DATA_ADMISSAO date, DE_FERIAS bit(1));

select *from tabela_de_vendedores;


update tabela_de_vendedores
set DATA_ADMISSAO = '2014-08-15', DE_FERIAS = 0
WHERE MATRICULA = '00235';

update tabela_de_vendedores
set DATA_ADMISSAO = '2013-09-17', DE_FERIAS = 1
WHERE MATRICULA = '00236';

insert INTO tabela_de_vendedores (MATRICULA, NOME, PERCENTUAL_COMISSAO, DATA_ADMISSAO,DE_FERIAS)
values(
'00237','Roberta Martins',0.11,'2017-03-18',1),
('00238','Péricles Alves',0.11,'2016-01-28',0);





