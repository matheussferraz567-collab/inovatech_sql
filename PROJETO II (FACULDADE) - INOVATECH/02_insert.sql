-- INOVATECH | Carga inicial de dados ficticios
-- Execute uma unica vez, depois de criar todas as tabelas.

-- CLIENTE
INSERT INTO cliente VALUES
(1,'Lucas Ferreira','123.456.789-01','lucas@email.com','(41) 99911-2233','Rua das Flores','120','Apto 21','Centro','Curitiba','Parana','80010-000'),
(2,'Mariana Costa','234.567.890-12','mariana@email.com','(41) 98822-3344','Avenida Brasil','450',NULL,'Portao','Curitiba','Parana','80610-000'),
(3,'Rafael Martins','345.678.901-23','rafael@email.com','(42) 97733-4455','Rua XV de Novembro','80',NULL,'Centro','Ponta Grossa','Parana','84010-000'),
(4,'Camila Souza','456.789.012-34','camila@email.com','(41) 96644-5566','Rua das Araucarias','300','Casa','Afonso Pena','Sao Jose dos Pinhais','Parana','83045-000'),
(5,'Pedro Almeida','567.890.123-45','pedro@email.com','(43) 95555-6677','Rua Parana','75',NULL,'Centro','Londrina','Parana','86010-000');

-- FUNCIONARIO
INSERT INTO funcionario VALUES
(1,'Ana Ribeiro','111.222.333-44','ana@inovatech.com','Vendedora'),
(2,'Carlos Mendes','222.333.444-55','carlos@inovatech.com','Gerente'),
(3,'Juliana Alves','333.444.555-66','juliana@inovatech.com','Estoquista');

-- CATEGORIA
INSERT INTO categoria VALUES
(1,'Informatica','Computadores e acessorios'),
(2,'Perifericos','Equipamentos de entrada e saida'),
(3,'Armazenamento','Dispositivos para armazenamento de dados'),
(4,'Componentes','Pecas para montagem de computadores');

-- PRODUTO
INSERT INTO produto VALUES
(1,1,'Notebook Lenovo','Notebook Intel Core i5, 8GB RAM',3299.90,TRUE),
(2,2,'Mouse Logitech','Mouse sem fio USB',89.90,TRUE),
(3,2,'Teclado Mecanico','Teclado mecanico RGB',249.90,TRUE),
(4,3,'SSD Kingston 480GB','SSD SATA de 480GB',219.90,TRUE),
(5,4,'Memoria RAM 16GB','Memoria DDR4 16GB',299.90,TRUE),
(6,1,'Monitor Samsung','Monitor LED 24 polegadas',899.90,TRUE);

-- ESTOQUE
INSERT INTO estoque VALUES
(1,1,10,CURRENT_TIMESTAMP),(2,2,35,CURRENT_TIMESTAMP),
(3,3,20,CURRENT_TIMESTAMP),(4,4,25,CURRENT_TIMESTAMP),
(5,5,18,CURRENT_TIMESTAMP),(6,6,12,CURRENT_TIMESTAMP);

-- PEDIDO
INSERT INTO pedido VALUES
(1,1,1,'2026-11-10 10:30:00','Concluido'),
(2,2,1,'2026-11-11 14:15:00','Em processamento'),
(3,3,2,'2026-11-12 09:45:00','Enviado'),
(4,4,2,'2026-11-13 16:20:00','Concluido'),
(5,5,NULL,'2026-11-14 11:00:00','Pendente');

-- ITEM_PEDIDO
INSERT INTO item_pedido VALUES
(1,1,1,1,3299.90),(2,1,2,2,89.90),
(3,2,3,1,249.90),(4,2,4,2,219.90),
(5,3,5,2,299.90),(6,3,2,1,89.90),
(7,4,6,1,899.90),(8,5,4,1,219.90);

-- PAGAMENTO
INSERT INTO pagamento VALUES
(1,1,'2026-11-10 10:40:00',3479.70,'Cartao de credito','Aprovado'),
(2,2,'2026-11-11 14:30:00',689.70,'PIX','Aprovado'),
(3,3,'2026-11-12 10:00:00',689.70,'Cartao de debito','Aprovado'),
(4,4,'2026-11-13 16:30:00',899.90,'PIX','Aprovado');

-- ENTREGA
INSERT INTO entrega VALUES
(1,1,'Rua das Flores','120','Apto 21','Centro','Curitiba','Parana','80010-000','2026-11-11 08:00:00','BR123456789','Entregue'),
(2,3,'Rua XV de Novembro','80',NULL,'Centro','Ponta Grossa','Parana','84010-000','2026-11-13 09:00:00','BR987654321','Em transporte'),
(3,4,'Rua das Araucarias','300','Casa','Afonso Pena','Sao Jose dos Pinhais','Parana','83045-000','2026-11-14 10:00:00','BR456789123','Entregue');

-- Total: 44 registros nas nove tabelas.
