INSERT INTO [tabela_de_produtos]
	([CODIGO_PRODUTO], [NOME_PRODUTO], [EMBALAGEM], [TAMANHO], [SABOR], [PRECO_LISTA])
VALUES
	('544931', 'Frescor do Ver�o - 350 ml - Lim�o', 'PET', '350 ml','Lim�o',3.20)

INSERT INTO [tabela_de_produtos]
	([CODIGO_PRODUTO], [NOME_PRODUTO], [EMBALAGEM], [TAMANHO], [SABOR], [PRECO_LISTA])
VALUES
	('1078680', 'Frescor do Ver�o - 470 ml - Manga', 'Lata', '470 ml','Manga',5.18)

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