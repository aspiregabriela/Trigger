INSERT INTO produto(descricao, preco, estoque) VALUES
("Pessoas Normais", 35, 5), ("Lady Killers", 40, 4),
("Little Women", 45, 5), ("Aristóteles e Dante Descobrem os Segredos do Universo", 39, 10),
("November 9", 45, 5), ("Assim Que Acaba", 38, 10),
("Verity", 50 , 2), ("Cardigan", 25, 10),
("August", 15, 10);
                                                      
INSERT INTO venda(cliente, data_venda) VALUES 
("Geovane Martins de Moraes", current_timestamp()), ("Gabriel Enrico", current_timestamp()),
("Livia Zaffani", current_timestamp()), ("Manuela de Paula", current_timestamp()),
("Vitoria Rosa", current_timestamp()), ("Alex Turner", current_timestamp()),
("Taylor Swift", current_timestamp()), ("Jax Teller", current_timestamp());
                                              
INSERT INTO venda_produto(id_venda, id_produto, preco_unit, quantidade, total_produto) VALUES
(3, 3, 45, 2, 56), (1, 4, 39, 1, 39),
 (8, 9, 15, 2, 25), (4, 5, 45, 2, 90);