DELIMITER // 
CREATE TRIGGER tgr_venda_produto_insert AFTER INSERT ON venda_produto
FOR EACH ROW
BEGIN
	UPDATE produto SET estoque = estoque - new.quantidade
    WHERE id = new.id_produto;
END;

// 
