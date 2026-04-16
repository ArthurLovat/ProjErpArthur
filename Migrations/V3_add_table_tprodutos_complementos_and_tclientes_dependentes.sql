--drop table tclientes_dependentes
create table tclientes_dependentes(
	id serial primary key not null,
	tclientes_id integer not null references tclientes(id) on delete cascade, 
	ativo boolean default true not null,
	nome varchar(250),
	cpf_cnpj varchar(20),
	telefone varchar(20)
)

--drop table tprodutos_complementos
create table tprodutos_complementos(
	id serial not null primary key,
	tprodutos_id integer not null references tclientes(id) on delete cascade,
	ativo boolean default true not null,
	descricao varchar(250),
	valor_adicional numeric(10, 2)
)

--select * from tprodutos_complementos
--select * from tclientes_dependentes
