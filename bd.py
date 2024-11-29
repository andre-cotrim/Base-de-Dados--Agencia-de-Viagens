import random
from faker import Faker

# Inicializa o Faker
fake = Faker()

# Lista de cidades, regiões e países que iremos usar
cidades = [
    ('London', 'Inglaterra', 'Reino Unido'),
    ('Dubai', 'Emirados Árabes Unidos', 'Emirados Árabes Unidos'),
    ('Singapore', 'Sudeste Asiático', 'Singapura'),
    ('Paris', 'Île-de-France', 'França'),
    ('Madrid', 'Madrid', 'Espanha'),
    ('Sydney', 'Nova Gales do Sul', 'Austrália'),
    ('New York', 'Nova Iorque', 'Estados Unidos'),
    ('Berlin', 'Berlim', 'Alemanha'),
    ('Rio de Janeiro', 'Rio de Janeiro', 'Brasil'),
    ('Barcelona', 'Catalunha', 'Espanha'),
    ('Rome', 'Lazio', 'Itália'),
    ('Los Angeles', 'Califórnia', 'Estados Unidos')
]

# Gerar 12 tuplas para a tabela CIDADE
tuplas_cidades = []
for cidade, regiao, pais in cidades:
    tuplas_cidades.append((cidade, regiao, pais))

# Exibir as tuplas geradas
for tupla in tuplas_cidades:
    print(f"VALUES ('{tupla[0]}', '{tupla[1]}', '{tupla[2]}');")
