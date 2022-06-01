INSERT INTO [tabela_de_produtos] (
	[codigo_produto],
	[nome_produto],
	[embalagem],
	[tamanho],
	[sabor],
	[preco_lista])
VALUES (
	'1040107',
	'Light - 350 ml - Melancia',
	'Lata',
	'350 ml',
	'Melancia',
	4.56);

INSERT INTO [tabela_de_vendedores] (
	[matricula],
	[nome],
	[percentual_comissao])
VALUES (
	'00235',
	'Márcio Almeida da Silva',
	8)

INSERT INTO [tabela_de_vendedores] (
	[matricula],
	[nome],
	[percentual_comissao])
VALUES (
	'00236',
	'Cláudia Morais',
	8)

UPDATE [tabela_de_vendedores] SET [percentual_comissao] = 0.08 WHERE [matricula] = '00235'
UPDATE [tabela_de_vendedores] SET [percentual_comissao] = 0.08 WHERE [matricula] = '00236'

SELECT * FROM [tabela_de_vendedores]

INSERT INTO [tabela_de_produtos] (
	[codigo_produto],
	[nome_produto],
	[embalagem],
	[tamanho],
	[sabor],
	[preco_lista])
VALUES (
	'1017797',
	'Clean - 2 litros - Laranja',
	'PET',
	'2 litros',
	'Laranja',
	16.01);

INSERT INTO [tabela_de_produtos] (
	[codigo_produto],
	[nome_produto],
	[embalagem],
	[tamanho],
	[sabor],
	[preco_lista])
VALUES (
	'1000889',
	'Sabor da Montanha - 700 ml - Uva',
	'Garrafa',
	'700 ml',
	'Uva',
	6.31);

SELECT * FROM [tabela_de_produtos]

TRUNCATE TABLE [tabela_de_vendedores]
SELECT * FROM [tabela_de_vendedores]

INSERT INTO [tabela_de_vendedores] (
	[matricula],
	[nome],
	[percentual_comissao])
VALUES
	('00235', 'Márcio Almeida da Silva', 0.08),
	('00236', 'Cláudia Morais', 0.08)

SELECT * FROM [tabela_de_vendedores]

SELECT * FROM [tabela_de_produtos]

UPDATE [tabela_de_vendedores]
	SET [percentual_comissao] = 0.11
	WHERE [matricula] = '00235'

UPDATE [tabela_de_vendedores]
	SET [nome] = 'Cláudia Morais Souza'
	WHERE [matricula] = '00236'

SELECT * FROM [tabela_de_vendedores]

DELETE FROM [tabela_de_vendedores]
	WHERE [matricula] = '00235'

SELECT * FROM [tabela_de_vendedores]

INSERT INTO [tabela_de_produtos]
VALUES (
	'788975',
	'Pedaços de Frtas - 1,5 Litros - Maça',
	'PET',
	'1,5 Litros',
	'Maçã',
	10.01);

SELECT * FROM [tabela_de_produtos]

INSERT INTO [tabela_de_vendedores] (
	[matricula],
	[nome],
	[percentual_comissao])
VALUES
	('00239', 'Alberto de Sá Verneck', 0.08)

SELECT * FROM [tabela_de_vendedores]

INSERT INTO [tabela_de_produtos] (
	[codigo_produto],
	[nome_produto],
	[embalagem],
	[tamanho],
	[sabor],
	[preco_lista])
VALUES (
	'1002767',
	'Videira do Campo - 700 ml - Cereja/Maçã',
	'Garrafa',
	'700 ml',
	'Cereja/Maçã',
	8.41);

SELECT * FROM [tabela_de_produtos]

DELETE FROM [tabela_de_produtos] WHERE [codigo_produto] = '1002767'

ALTER TABLE [tabela_de_produtos]
	ALTER COLUMN [codigo_produto]
	VARCHAR(20) NOT NULL

ALTER TABLE [tabela_de_produtos]
	ADD CONSTRAINT [pk_tabela_de_produtos]
	PRIMARY KEY CLUSTERED ([codigo_produto])

ALTER TABLE [tabela_de_vendedores]
	ALTER COLUMN [matricula]
	VARCHAR(5) NOT NULL

ALTER TABLE [tabela_de_vendedores]
	ADD CONSTRAINT [pk_tabela_de_vendedores]
	PRIMARY KEY CLUSTERED ([matricula])

INSERT INTO [tabela_de_produtos] (
	[codigo_produto],
	[nome_produto],
	[embalagem],
	[tamanho],
	[sabor],
	[preco_lista])
VALUES (
	'1002767',
	'Videira do Campo - 700 ml - Cereja/Maçã',
	'Garrafa',
	'700 ml',
	'Cereja/Maçã',
	8.41);

SELECT * FROM [tabela_de_produtos]

ALTER TABLE [tabela_de_vendedores]
	ALTER COLUMN [percentual_comissao]
	FLOAT NOT NULL

ALTER TABLE [tabela_de_clientes]
	ALTER COLUMN [cpf]
	CHAR(11) NOT NULL

ALTER TABLE [tabela_de_clientes]
	ADD CONSTRAINT [pk_tabela_de_clientes]
	PRIMARY KEY CLUSTERED ([cpf])

USE [sucos_vendas]
GO

INSERT INTO [dbo].[tabela_de_clientes]
           ([cpf]
           ,[nome]
           ,[endereco1]
           ,[endereco2]
           ,[bairro]
           ,[cidade]
           ,[estado]
           ,[cep]
           ,[data_nascimento]
           ,[idade]
           ,[genero]
           ,[limite_credito]
           ,[volume_compra]
           ,[primeira_compra])
     VALUES
           ('00383454802'
           ,'João da Silva'
           ,'Rua Projetada A'
           ,'Número 235'
           ,'Copacabana'
           ,'Rio de Janeiro'
           ,'RJ'
           ,'20000000'
           ,'1965-03-21'
           ,55
           ,'M'
           ,14985.00
           ,34.06
           ,1)
GO

SELECT * FROM [tabela_de_clientes]

DROP TABLE [tabela_de_vendedores]

CREATE TABLE [tabela_de_vendedores] (
	[matricula] VARCHAR(5) NOT NULL PRIMARY KEY,
	[nome] VARCHAR(100),
	[percentual_comissao] FLOAT NOT NULL)

INSERT INTO [tabela_de_vendedores] (
	[matricula],
	[nome],
	[percentual_comissao])
VALUES (
	'00239',
	'Alberto de Sá Verneck',
	0.08)

SELECT * FROM [tabela_de_vendedores]

SELECT * FROM [TABELA DE CLIENTES]

SELECT	[matricula] AS Identificador,
		[nome]		AS [Nome do vendedor]
FROM [tabela_de_vendedores]

UPDATE [tabela_de_vendedores] SET [percentual_comissao] = ([percentual_comissao]*1.1) WHERE [matricula] = '00239'

SELECT * FROM [tabela_de_vendedores]

SELECT * FROM [TABELA DE PRODUTOS] WHERE [EMBALAGEM] = 'PET'
SELECT * FROM [TABELA DE PRODUTOS] WHERE [PRECO DE LISTA] = 8.008
SELECT * FROM [TABELA DE PRODUTOS] WHERE [PRECO DE LISTA] < 10
SELECT * FROM [TABELA DE PRODUTOS] WHERE [PRECO DE LISTA] > 10
SELECT * FROM [TABELA DE PRODUTOS] WHERE [PRECO DE LISTA] > 13.312
SELECT * FROM [TABELA DE PRODUTOS] WHERE [PRECO DE LISTA] >= 13.312
SELECT * FROM [TABELA DE PRODUTOS] WHERE [EMBALAGEM] <= 'Lata' -- Ordem alfabética (embalagem começa com letra que vem antes do L)
SELECT * FROM [TABELA DE PRODUTOS] WHERE [EMBALAGEM] >= 'Lata'
SELECT * FROM [TABELA DE PRODUTOS] WHERE [EMBALAGEM] != 'Lata'

SELECT * FROM [tabela_de_vendedores] WHERE [percentual_comissao] > 0.10

SELECT * FROM [TABELA DE CLIENTES]
SELECT * FROM [TABELA DE CLIENTES] WHERE [DATA DE NASCIMENTO] = '1995-09-11'
SELECT * FROM [TABELA DE CLIENTES] WHERE [DATA DE NASCIMENTO] >= '1995-09-11' -- Ordem cronológica (todos que nasceram depois dessa data inclusive)
SELECT * FROM [TABELA DE CLIENTES] WHERE [DATA DE NASCIMENTO] <= '1995-09-11'
SELECT * FROM [TABELA DE CLIENTES] WHERE YEAR([DATA DE NASCIMENTO]) = 1995
SELECT * FROM [TABELA DE CLIENTES] WHERE MONTH([DATA DE NASCIMENTO]) = 12
SELECT * FROM [TABELA DE CLIENTES] WHERE MONTH([DATA DE NASCIMENTO]) = 9
SELECT * FROM [TABELA DE CLIENTES] WHERE DAY([DATA DE NASCIMENTO]) = 12

SELECT * FROM [TABELA DE CLIENTES] WHERE DAY([DATA DE NASCIMENTO]) = 12 AND [BAIRRO] = 'Tijuca'
SELECT * FROM [TABELA DE CLIENTES] WHERE DAY([DATA DE NASCIMENTO]) = 12 OR [BAIRRO] = 'Tijuca'
SELECT * FROM [TABELA DE CLIENTES] WHERE YEAR([DATA DE NASCIMENTO]) = 1995 AND [SEXO] = 'F'
SELECT * FROM [TABELA DE CLIENTES] WHERE YEAR([DATA DE NASCIMENTO]) = 1995 AND [SEXO] = 'M'