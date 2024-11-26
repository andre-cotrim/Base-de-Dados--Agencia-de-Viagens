CREATE TABLE PASSAGEIRO(
Número_CC TEXT PRIMARY KEY,
Nome TEXT NOT NULL, 
Data_de_Nascimento DATE NOT NULL, 
Vacinação BOOLEAN,
Passaporte TEXT
);

SELECT Número_CC, Data_de_Nascimento, DATEDIFF(YY, Data_de_Nascimento, GETDATE()) as IDADE FROM PASSAGEIRO;

--restrigir text
--perguntar stor como fazer IDADE
--confirmar booleans

CREATE TABLE CLIENTE(
    Número_CC INT REFERENCESCREATE TABLE PASSAGEIRO(
Número_CC TEXT PRIMARY KEY,
Nome TEXT NOT NULL, 
Data_de_Nascimento DATE NOT NULL, 
Vacinação BOOLEAN,
Passaporte TEXT
);

SELECT Número_CC, Data_de_Nascimento, DATEDIFF(YY, Data_de_Nascimento, GETDATE()) as IDADE FROM PASSAGEIRO;

--restrigir text
--perguntar stor como fazer IDADE
--confirmar booleans

CREATE TABLE CLIENTE(
    Número_CC INT REFERENCES PASSAGEIRO(NÚMERO_CC) PRIMARY KEY,
    IBAN TEXT,
    NIF TEXT,
    Email TEXT,
    Número_de_Telefone TEXT,
    Morada_de_Faturação TEXT
);

CREATE TABLE AVIÃO(
    Modelo TEXT PRIMARY KEY,
    Capacidade INT,
    Ano_de_Produção INT,
    Companhia_Aérea TEXT
);

CREATE TABLE RESERVA(
    ID_da_Reserva TEXT PRIMARY KEY,
    Data_de_Iníco DATE,
    Data_de_Fim DATE,
    Bagagem TEXT,
    Número_de_Passageiros INT REFERENCES AVIÃO(Capacidade)
);

--não sei se ta fixe
--nao sei se tem que se por na tabela ou não
SELECT Data_de_Início, Data_De_Fim DATEDIFF(DD, Data_de_Início, Data_de_Fim) as Dias FROM RESERVA;

CREATE TABLE PAGAMENTO(
    ID_Transação TEXT PRIMARY KEY,
    Data_de_Pagamento DATE,
    Valor_Pago INT,
    ESTADO_DE_PAGAMENTO BOOLEAN
);
--quartos disponiveis?
CREATE TABLE ALOJAMENTO(
    ID_Alojamento TEXT PRIMARY KEY,
    Endereço TEXT,
    Check-in DATE,
    Check-out DATE,
    Número_de_Quartos INT,
    Número_de_Telefone TEXT,
    Avaliação FLOAT
);

CREATE TABLE TOUR(
    Programa INT PRIMARY KEY
);
--não sei derivar idioma

CREATE TABLE VIAGEM(
    ID_da_Rota TEXT PRIMARY KEY,
    Estado_da_Viagem BOOLEAN,
    Hora_de_Embarque TIME,
    Hora_de_Chegada TIME,
    Cidade_de_Embarque TEXT REFERENCES CIDADE(Nome),
    Cidade_de_Chegada TEXT REFERENCES CIDADE(Nome),
);

--acho que deviam ser todos derivados
CREATE TABLE CIDADE (
    Nome TEXT PRIMARY KEY,
    Região TEXT,
    País TEXT
):

CREATE TABLE AEROPORTO (
    Nome PRIMARY KEY,
    Porta_de_Embarque INT,
    Nome_Cidade TEXT REFERENCES Cidade(Nome),
);

CREATE TABLE ESCALA(
    Hora_de_Chegada INT,
    Hora_de_Partida INT
    ID_da_Rota TEXT REFERENCES VIAGEM(ID_da_Rota),
    Nome TEXT REFERENCES AEROPORTO(Nome), --pedro vai te fuder

);
SELECT Hora_de_Partida, Hora_de_Chegada DATEDIFF(DD, Hora_de_Chegada, Hora_de_Partida) as Tempo_de_Espera FROM ESCALA;

CREATE TABLE FUNCIONÁRIO(
    ID_Empresa TEXT PRIMARY KEY,
    Anos_de_Serviço INT,
    Número_de_Telefone Text,
    Nom PASSAGEIRO(NÚMERO_CC) PRIMARY KEY,
    IBAN TEXT,
    NIF TEXT,
    Email TEXT,
    Número_de_Telefone TEXT,
    Morada_de_Faturação TEXT
);

CREATE TABLE AVIÃO(
    Modelo TEXT PRIMARY KEY,
    Capacidade INT,
    Ano_de_Produção INT,
    Companhia_Aérea TEXT
);

CREATE TABLE RESERVA(
    ID_da_Reserva TEXT PRIMARY KEY,
    Data_de_Iníco DATE,
    Data_de_Fim DATE,
    Bagagem TEXT,
    Número_de_Passageiros INT REFERENCES AVIÃO(Capacidade)
);

--não sei se ta fixe
--nao sei se tem que se por na tabela ou não
SELECT Data_de_Início, Data_De_Fim DATEDIFF(DD, Data_de_Início, Data_de_Fim) as Dias FROM RESERVA;

CREATE TABLE PAGAMENTO(
    ID_Transação TEXT PRIMARY KEY,
    Data_de_Pagamento DATE,
    Valor_Pago INT,
    ESTADO_DE_PAGAMENTO BOOLEAN
);
--quartos disponiveis?
CREATE TABLE ALOJAMENTO(
    ID_Alojamento TEXT PRIMARY KEY,
    Endereço TEXT,
    Check-in DATE,
    Check-out DATE,
    Número_de_Quartos INT,
    Número_de_Telefone TEXT,
    Avaliação FLOAT
);

CREATE TABLE TOUR(
    Programa INT PRIMARY KEY
);
--não sei derivar idioma

CREATE TABLE VIAGEM(
    ID_da_Rota TEXT PRIMARY KEY,
    Estado_da_Viagem BOOLEAN,
    Hora_de_Embarque TIME,
    Hora_de_Chegada TIME,
    Cidade_de_Embarque TEXT REFERENCES CIDADE(Nome),
    Cidade_de_Chegada TEXT REFERENCES CIDADE(Nome),
);

--acho que deviam ser todos derivados
CREATE TABLE CIDADE (
    Nome TEXT PRIMARY KEY,
    Região TEXT,
    País TEXT
):

CREATE TABLE AEROPORTO (
    Nome PRIMARY KEY,
    Porta_de_Embarque INT,
    Nome_Cidade TEXT REFERENCES Cidade(Nome),
);

CREATE TABLE ESCALA(
    Hora_de_Chegada INT,
    Hora_de_Partida INT
    ID_da_Rota TEXT REFERENCES VIAGEM(ID_da_Rota),
    Nome TEXT REFERENCES AEROPORTO(Nome), --pedro vai te fuder

);
SELECT Hora_de_Partida, Hora_de_Chegada DATEDIFF(DD, Hora_de_Chegada, Hora_de_Partida) as Tempo_de_Espera FROM ESCALA;

CREATE TABLE FUNCIONÁRIO(
    ID_Empresa TEXT PRIMARY KEY,
    Anos_de_Serviço INT,
    Número_de_Telefone Text,
    Nome TEXT,
    NIF TEXT,
    IBAN TEXT,
    Email TEXT,
    Salário TEXT,
);

CREATE TABLE GUIA(
    ID_Empresa TEXT REFERENCES FUNCIONÁRIO(ID_Empresa),
    Idioma TEXT,
    ID_Diploma_de_Turismo TEXT
);

CREATE TABLE HOSPEDEIRO(
    ID_Certidão_De_Formação TEXT
);

CREATE TABLE PILOTO(
    ID_Empresa TEXT REFERENCES FUNCIONÁRIO(ID_Empresa),
    ID_Licensa TEXT
);
