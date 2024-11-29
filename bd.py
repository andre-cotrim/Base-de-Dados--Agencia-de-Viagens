from faker import Faker

# Inicializar o objeto Faker
fake = Faker('pt_PT')

# Gerar 12 tuplas para a tabela FUNCIONARIO
for _ in range(36):
    ID_Funcionario = fake.uuid4()  # Gerar um ID único para o funcionário
    Nome = fake.name()  # Gerar um nome aleatório
    Anos_de_Serviço = fake.random_int(min=1, max=30)  # Gerar anos de serviço entre 1 e 30
    Salário = f"€{fake.random_int(min=20000, max=80000)}"  # Gerar um salário aleatório entre 20k e 80k euros
    Numero_de_Telefone = fake.phone_number()  # Gerar um número de telefone aleatório
    Email = fake.email()  # Gerar um email aleatório
    NIF = fake.unique.random_number(digits=9)  # Gerar um NIF (número fiscal) único de 9 dígitos
    IBAN = fake.iban()  # Gerar um IBAN válido

    # Imprimir a tupla de valores no formato SQL
    print(f"VALUES ('{ID_Funcionario}', '{Nome}', {Anos_de_Serviço}, '{Salário}', '{Numero_de_Telefone}', '{Email}', '{NIF}', '{IBAN}');")
