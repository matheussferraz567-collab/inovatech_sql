-- INOVATECH | Criacao das nove tabelas | PostgreSQL
-- Conecte-se ao banco inovatech antes de executar este arquivo.

CREATE TABLE cliente (
 id_cliente INTEGER PRIMARY KEY,
 nome VARCHAR(100) NOT NULL,
 cpf VARCHAR(14) UNIQUE,
 email VARCHAR(150) UNIQUE,
 telefone VARCHAR(20),
 logradouro VARCHAR(150),
 numero VARCHAR(15),
 complemento VARCHAR(80),
 bairro VARCHAR(80),
 cidade VARCHAR(100),
 estado VARCHAR(50),
 cep VARCHAR(10)
);

CREATE TABLE funcionario (
 id_funcionario INTEGER PRIMARY KEY,
 nome VARCHAR(100) NOT NULL,
 cpf VARCHAR(14) UNIQUE,
 email VARCHAR(150) UNIQUE,
 cargo VARCHAR(80)
);

CREATE TABLE categoria (
 id_categoria INTEGER PRIMARY KEY,
 nome VARCHAR(100) NOT NULL,
 descricao TEXT
);

CREATE TABLE produto (
 id_produto INTEGER PRIMARY KEY,
 id_categoria INTEGER NOT NULL REFERENCES categoria(id_categoria),
 nome VARCHAR(120) NOT NULL,
 descricao TEXT,
 preco NUMERIC(10,2) NOT NULL CHECK (preco >= 0),
 ativo BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE estoque (
 id_estoque INTEGER PRIMARY KEY,
 id_produto INTEGER NOT NULL UNIQUE REFERENCES produto(id_produto),
 quantidade_atual INTEGER NOT NULL CHECK (quantidade_atual >= 0),
 data_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE pedido (
 id_pedido INTEGER PRIMARY KEY,
 id_cliente INTEGER NOT NULL REFERENCES cliente(id_cliente),
 id_funcionario INTEGER REFERENCES funcionario(id_funcionario),
 data_pedido TIMESTAMP NOT NULL,
 status_pedido VARCHAR(30) NOT NULL
);

CREATE TABLE item_pedido (
 id_item INTEGER PRIMARY KEY,
 id_pedido INTEGER NOT NULL REFERENCES pedido(id_pedido),
 id_produto INTEGER NOT NULL REFERENCES produto(id_produto),
 quantidade INTEGER NOT NULL CHECK (quantidade > 0),
 preco_unitario NUMERIC(10,2) NOT NULL CHECK (preco_unitario >= 0)
);
-- subtotal nao e armazenado: calcular quantidade * preco_unitario.

CREATE TABLE pagamento (
 id_pagamento INTEGER PRIMARY KEY,
 id_pedido INTEGER NOT NULL UNIQUE REFERENCES pedido(id_pedido),
 data_pagamento TIMESTAMP,
 valor NUMERIC(10,2) NOT NULL CHECK (valor >= 0),
 metodo VARCHAR(40) NOT NULL,
 status_pagamento VARCHAR(30) NOT NULL
);

CREATE TABLE entrega (
 id_entrega INTEGER PRIMARY KEY,
 id_pedido INTEGER NOT NULL UNIQUE REFERENCES pedido(id_pedido),
 logradouro_destino VARCHAR(150),
 numero_destino VARCHAR(15),
 complemento_destino VARCHAR(80),
 bairro_destino VARCHAR(80),
 cidade_destino VARCHAR(100),
 estado_destino VARCHAR(50),
 cep_destino VARCHAR(10),
 data_envio TIMESTAMP,
 codigo_rastreio VARCHAR(60),
 status_entrega VARCHAR(30)
);
