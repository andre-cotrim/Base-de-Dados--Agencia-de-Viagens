# Definir os IDs das rotas e dos funcionários (hospedeiros)
rotas_ids = [
    '601a5df6-ac8a-4791-b08a-579cd57f5107',
    'b5a486c1-6230-416f-ac46-102c949a8d0a',
    '012db948-b26c-48b9-80f8-ebccb421fea6',
    '71cd0b80-1ba8-4a68-a411-4d97fb664e0c',
    'fb65fb58-9145-4fd3-bede-0622afb495d4',
    'd851c3b9-958b-4fbd-a52e-aaff4d0d4cd1',
    'b3098e9e-5ebc-4553-a2dd-0c2619807aed',
    'c464f144-56d8-4af0-a340-ecb90511153e',
    '92752d3f-b8eb-4c5d-9e82-f2f1d7653826',
    '8c52c7e1-3f1b-4f3a-afc5-de309a261750'
]

funcionarios_ids = [
'9dfba68b-e41f-4be5-b26a-86dcc03a8aa5',
'a08a57e0-3ba0-48bb-9c11-c9396f896d57',
'2b4280cb-d648-4d62-9260-06eafd4d973a',
'6bde08d6-64be-4de1-a937-3a412ead9741',
'f873d51e-3d94-45e5-aeac-be622acc63be',
'95f2d3c7-0c13-46e1-9d16-33c215d922d6',
'8b5ab8fa-40e3-454a-be9d-c67cc3d1a951',
'adc83591-f304-48e2-8029-35b03b028442',
'208a57af-19a2-4d1c-8a0f-260e4c294db9',
'5894efb5-74bc-4c43-a489-d4e97eb75b4e',
'297f8ebd-abd2-4c7b-a36a-4e821d761f2f',
'520eb888-6ade-48fd-bf3d-39fc5423ddd1'
]

# Número de funcionários por rota
hospedeiros_por_rota = 2

# Gerar os inserts para HOSPEDEIRO_VIAGEM
for rota_id in rotas_ids:
    # Selecionar 5 funcionários aleatórios (pode ser ajustado conforme necessário)
    hospedeiros_selecionados = funcionarios_ids[:hospedeiros_por_rota]

    # Gerar os inserts para cada rota
    for hospedeiro_id in hospedeiros_selecionados:
        print(f"VALUES ('{rota_id}', '{hospedeiro_id}');")

