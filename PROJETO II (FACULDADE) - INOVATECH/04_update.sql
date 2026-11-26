-- INOVATECH | Atualizacoes condicionadas
-- Os valores de WHERE correspondem a carga inicial.

-- 1. Atualizar preco do Mouse Logitech.
UPDATE produto
SET preco = 99.90
WHERE id_produto = 2 AND preco = 89.90;

-- 2. Alterar status do pedido 2.
UPDATE pedido
SET status_pedido = 'Concluido'
WHERE id_pedido = 2 AND status_pedido = 'Em processamento';

-- 3. Atualizar estoque do produto 4.
UPDATE estoque
SET quantidade_atual = 30,
    data_atualizacao = CURRENT_TIMESTAMP
WHERE id_produto = 4 AND quantidade_atual = 25;

-- Para conferir as linhas afetadas, acrescente RETURNING * a cada UPDATE.
