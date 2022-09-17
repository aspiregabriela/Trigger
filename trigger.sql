DELIMITADOR //

CREATE PROCEDURE insere_dados()
BEGIN
	DECLARE erro_sql TINYINT DEFAULT FALSE;
    DECLARE CONTINUE HANDLER PARA SQLEXCEPTION SET erro_sql = TRUE;

begin transaction
	INSERT INTO venda_produto(id_venda, id_produto, preco_unit, quantidade, total_produto) Values
	( 3 , 3 , 45 , 56 , preco_unit * quantidade);
    INSERT INTO venda_produto(id_venda, id_produto, preco_unit, quantidade, total_produto) VALUES
	( 1 , 4 , 39 , 1 , preco_unit * quantidade);

	if erro_sql = FALSE then
		COMPROMISSO ;
        SELECIONE  " DEU CERTO XD "  COMO Resultado;
    else
		RECUPERAÇÃO ;
        SELECT  " ERRO ;-; "  AS Resultado;
    end if;
end; //

DELIMITADOR ;