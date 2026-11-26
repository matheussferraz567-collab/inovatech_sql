-- INOVATECH | Exclusoes condicionadas
-- Execute somente depois de conferir os dados.
-- A exclusao ocorre em tabelas dependentes; os pedidos permanecem.

-- 1. Excluir entrega 3 do pedido 4.
DELETE FROM entrega
WHERE id_entrega = 3 AND id_pedido = 4;

-- 2. Excluir item 8 do pedido 5.
DELETE FROM item_pedido
WHERE id_item = 8 AND id_pedido = 5;

-- 3. Excluir pagamento 4 do pedido 4.
DELETE FROM pagamento
WHERE id_pagamento = 4 AND id_pedido = 4;

-- Teste reversivel: use BEGIN antes dos DELETEs e ROLLBACK ao final.
-- Para confirmar definitivamente, use COMMIT em vez de ROLLBACK.
