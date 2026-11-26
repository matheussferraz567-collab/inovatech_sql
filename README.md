InovaTech — Projeto de Modelagem de Banco de Dados
1. Apresentação
O InovaTech é um projeto acadêmico desenvolvido como atividade do módulo Modelagem de Banco de Dados, do curso de Análise e Desenvolvimento de Sistemas da Universidade Positivo.
O projeto consiste na modelagem e implementação de um banco de dados relacional para uma loja virtual fictícia de produtos eletrônicos e acessórios de informática.
A proposta é aplicar, na prática, os conceitos estudados no módulo, desde a identificação das entidades e seus relacionamentos até a criação das tabelas e a manipulação dos dados por meio de comandos SQL.
2. Objetivo do projeto
Desenvolver uma estrutura de banco de dados capaz de organizar as principais informações e operações de uma loja virtual, permitindo o armazenamento e a consulta de dados relacionados a:
Clientes;
Funcionários;
Categorias;
Produtos;
Estoque;
Pedidos;
Itens dos pedidos;
Pagamentos;
Entregas.
O projeto também busca demonstrar a aplicação de chaves primárias, chaves estrangeiras, integridade referencial e normalização de dados.
3. Tecnologias e ferramentas
PostgreSQL: sistema gerenciador de banco de dados relacional utilizado no projeto.
pgAdmin 4: ferramenta gráfica utilizada para administrar o banco e executar comandos SQL.
Visual Studio Code: editor utilizado para organizar e editar os arquivos SQL.
SQL: linguagem utilizada para definir a estrutura e manipular os dados do banco.
4. Estrutura do banco de dados
O banco de dados InovaTech é composto por nove tabelas:
Tabela	Descrição
`cliente`	Armazena os dados cadastrais dos clientes.
`funcionario`	Armazena os dados dos funcionários.
`categoria`	Organiza os produtos por categorias.
`produto`	Registra os produtos comercializados pela loja.
`estoque`	Controla a quantidade disponível de cada produto.
`pedido`	Registra os pedidos realizados pelos clientes.
`item_pedido`	Relaciona os produtos aos pedidos, registrando quantidade e preço unitário.
`pagamento`	Armazena as informações de pagamento dos pedidos.
`entrega`	Registra os dados de envio e destino dos pedidos.
5. Relacionamentos
Os principais relacionamentos definidos no modelo são:
Cliente 1:N Pedido: um cliente pode realizar vários pedidos.
Funcionário 1:N Pedido: um funcionário pode estar associado a vários pedidos; a associação do funcionário ao pedido é opcional.
Categoria 1:N Produto: uma categoria pode possuir vários produtos.
Produto 1:1 Estoque: cada produto possui um registro de estoque.
Pedido 1:N Item_Pedido: um pedido pode conter vários itens.
Produto 1:N Item_Pedido: um produto pode aparecer em vários itens de pedidos.
Pedido 1:0..1 Pagamento: um pedido pode possuir, no máximo, um registro de pagamento.
Pedido 1:0..1 Entrega: um pedido pode possuir, no máximo, um registro de entrega.
A tabela `item_pedido` resolve o relacionamento muitos-para-muitos entre `pedido` e `produto`.
6. Normalização
A estrutura foi analisada considerando as três primeiras formas normais:
1FN — Primeira Forma Normal: organização dos atributos em valores atômicos, incluindo a divisão dos campos de endereço em informações separadas.
2FN — Segunda Forma Normal: verificação de dependências parciais em relação às chaves primárias.
3FN — Terceira Forma Normal: análise de dependências transitivas e separação dos dados conforme suas entidades.
O atributo `subtotal` não foi armazenado na tabela `item_pedido`, pois seu valor pode ser obtido pelo cálculo:
`quantidade * preco_unitario`
7. Organização dos arquivos
Os arquivos do projeto estão organizados da seguinte maneira:
Arquivo	Finalidade
`00_criar_banco.sql`	Cria o banco de dados `inovatech`.
`01_criacao_tabelas.sql`	Cria as nove tabelas e define suas restrições e relacionamentos.
`02_insert.sql`	Insere os dados fictícios utilizados nos testes.
`03_select.sql`	Apresenta consultas para recuperar e relacionar informações.
`04_update.sql`	Demonstra a atualização de registros.
`05_delete.sql`	Demonstra a exclusão de registros.
`README.md`	Apresenta a documentação e as orientações do projeto.
`DER_InovaTech_3FN_final.png`	Apresenta o Diagrama Entidade-Relacionamento do modelo final.
8. Ordem de execução
Para executar o projeto em um ambiente PostgreSQL, siga esta sequência:
Abra o pgAdmin 4 e conecte-se ao servidor PostgreSQL.
Execute `00_criar_banco.sql` conectado ao banco padrão `postgres`, caso o banco `inovatech` ainda não exista.
Conecte-se ao banco de dados `inovatech`.
Execute `01_criacao_tabelas.sql` para criar a estrutura.
Execute `02_insert.sql` para inserir os dados.
Execute as consultas de `03_select.sql`.
Execute `04_update.sql` para testar atualizações.
Execute `05_delete.sql` para testar exclusões, após conferir os registros.
Atenção: os comandos de inserção utilizam identificadores fixos e foram preparados para uma carga inicial. Portanto, não execute o arquivo `02_insert.sql` repetidamente sobre as mesmas tabelas sem antes restaurar ou recriar a base de dados. Os comandos de `UPDATE` e `DELETE` também modificam os registros e devem ser executados conscientemente.
9. Considerações finais
O desenvolvimento do InovaTech permite aplicar os fundamentos de modelagem de banco de dados em um cenário prático, desde a identificação das entidades e definição dos relacionamentos até a implementação das tabelas e manipulação dos registros.
Como atividade acadêmica do módulo Modelagem de Banco de Dados, do curso de Análise e Desenvolvimento de Sistemas da Universidade Positivo, o projeto reúne conceitos de modelagem relacional, normalização, integridade referencial e linguagem SQL em uma única aplicação.
---
Projeto acadêmico — Universidade Positivo  
Curso: Análise e Desenvolvimento de Sistemas  
Módulo: Modelagem de Banco de Dados  
Projeto: InovaTech
