DELIMITER // 
CREATE TRIGGER tgr_venda_produto_delete AFTER DELETE ON venda_produto
FOR EACH ROW
BEGIN
	UPDATE produto SET estoque = estoque + old.quantidade
    WHERE id = old.id_produto;
END;

// 