select * from tabela_de_vendedores;
select*from notas_fiscais;

select * from tabela_de_vendedores A
inner join notas_fiscais B
on A.MATRICULA = B.MATRICULA;

SELECT A.MATRICULA,A.NOME, COUNT(*) FROM tabela_de_vendedores A
inner join notas_fiscais B
on A.MATRICULA = B.MATRICULA
group by A.MATRICULA, A.NOME;

