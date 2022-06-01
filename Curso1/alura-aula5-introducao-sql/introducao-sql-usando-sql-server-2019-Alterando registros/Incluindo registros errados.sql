INSERT INTO [tabela_de_produtos]
	([CODIGO_PRODUTO], [NOME_PRODUTO], [EMBALAGEM], [TAMANHO], [SABOR], [PRECO_LISTA])
VALUES
	('544931', 'Frescor do Verão - 350 ml - Limão', 'PET', '350 ml','Limão',3.20)

INSERT INTO [tabela_de_produtos]
	([CODIGO_PRODUTO], [NOME_PRODUTO], [EMBALAGEM], [TAMANHO], [SABOR], [PRECO_LISTA])
VALUES
	('1078680', 'Frescor do Verão - 470 ml - Manga', 'Lata', '470 ml','Manga',5.18)

UPDATE [tabela_de_produtos]
	SET
		[embalagem] = 'Lata',
		[preco_lista] = 2.46
	WHERE [codigo_produto] = '544931'

UPDATE [tabela_de_produtos]
	SET
		[embalagem] = 'Garrafa'
	WHERE [codigo_produto] = '1078680'

SELECT * FROM [tabela_de_produtos]

DELETE FROM [tabela_de_produtos] WHERE [codigo_produto] = '1078680'

SELECT * FROM [tabela_de_produtos]