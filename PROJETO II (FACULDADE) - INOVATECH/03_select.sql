-- INOVATECH | Consultas exploratorias

-- 1. Produtos ativos, do menor para o maior preco.
SELECT id_produto, nome, preco
FROM produto
WHERE ativo = TRUE
ORDER BY preco ASC
LIMIT 5;

-- 2. Produtos e suas categorias.
SELECT p.id_produto, p.nome AS produto, c.nome AS categoria, p.preco
FROM produto p
INNER JOIN categoria c ON p.id_categoria = c.id_categoria
WHERE p.preco > 100
ORDER BY p.preco DESC
LIMIT 10;

-- 3. Pedidos e clientes.
SELECT pe.id_pedido, cl.nome AS cliente, pe.data_pedido, pe.status_pedido
FROM pedido pe
INNER JOIN cliente cl ON pe.id_cliente = cl.id_cliente
WHERE pe.status_pedido <> 'Concluido'
ORDER BY pe.data_pedido DESC
LIMIT 10;

-- 4. Itens, produtos e valor calculado.
SELECT ip.id_item, ip.id_pedido, pr.nome AS produto,
       ip.quantidade, ip.preco_unitario,
       ip.quantidade * ip.preco_unitario AS valor_item
FROM item_pedido ip
INNER JOIN pedido pe ON ip.id_pedido = pe.id_pedido
INNER JOIN produto pr ON ip.id_produto = pr.id_produto
WHERE ip.quantidade >= 1
ORDER BY valor_item DESC
LIMIT 10;

-- 5. Pedidos, clientes e pagamentos aprovados.
SELECT pe.id_pedido, cl.nome AS cliente, pg.valor,
       pg.metodo, pg.status_pagamento
FROM pedido pe
INNER JOIN cliente cl ON pe.id_cliente = cl.id_cliente
INNER JOIN pagamento pg ON pe.id_pedido = pg.id_pedido
WHERE pg.status_pagamento = 'Aprovado'
ORDER BY pg.valor DESC
LIMIT 10;
