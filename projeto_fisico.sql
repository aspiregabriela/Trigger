/* DDL */

create database db_trigger;
use db_trigger;

CREATE TABLE produto(
	id int auto_increment not null,
    descricao varchar(45) not null,
    preco double not null,
    estoque int not null,
    primary key(id)
);

CREATE TABLE venda(
	id int auto_increment not null,
    cliente varchar(45) not null,
    data_venda timestamp not null,
    primary key(id)
);

CREATE TABLE venda_produto(
	id_venda int not null,
    id_produto int not null,
    preco_unit double not null,
    quantidade int not null,
    total_produto double not null,
    primary key(id_venda, id_produto),
    foreign key(id_venda) references venda(id),
	foreign key(id_produto) references produto(id)
);