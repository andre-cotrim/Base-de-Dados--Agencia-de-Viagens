CREATE TABLE PASSAGEIRO(
    Numero_CC TEXT PRIMARY KEY,
    Nome TEXT NOT NULL, 
    Data_de_Nascimento DATE NOT NULL, 
    Check_Vacinacao_Necessaria BOOLEAN NOT NULL,
    ID_Passaporte INT NOT NULL
    CHECK ((JULIANDAY('now') - JULIANDAY(Data_de_Nascimento)) / 365 >= 18)
);
--SELECT Numero_CC, Data_de Nascimento, (JULIANDAY('now')-JULIANDAY(Data_de_Nascimento)) / 365 AS Idade FROM PASSASGEIRO;

--perguntar stor como fazer IDADE
--confirmar booleans
--unique
--constrain
--nulls
--drop table
--idade check passageiro cliente e empo espera
--fazer restricoes entre classes

CREATE TABLE CLIENTE(
    Numero_CC INT PRIMARY KEY,
    IBAN TEXT,
    NIF TEXT,
    Email TEXT NOT NULL,
    Numero_de_Telefone TEXT NOT NULL,
    Morada_de_Faturação TEXT ,
    FOREIGN KEY (Numero_CC) REFERENCES PASSAGEIRO(Numero_CC)
);
--CHECK (Idade>=18);

CREATE TABLE AVIAO(
    ID_Aviao INT PRIMARY KEY,
    Modelo TEXT ,
    Companhia_Aerea TEXT NOT NULL,
    Capacidade INT NOT NULL,
    Ano_de_Produção INT NOT NULL
);

CREATE TABLE RESERVA(
    ID_da_Reserva INT PRIMARY KEY,
    Data_de_Inicio DATE NOT NULL,
    Data_de_Fim DATE NOT NULL CHECK (Data_de_Fim>Data_de_Inicio),
    Bagagem INT,
    ID_da_Rota INT NOT NULL,
    FOREIGN KEY (ID_da_Rota) REFERENCES VIAGEM(ID_da_Rota)
);
--SELECT ID_da_Reserva, Data_de_Inicio,Data_de_Fim, (JULIANDAY(Data_de_Fim)-JULIANDAY(Data_de_Inicio)) AS DIAS FROM RESERVA;

CREATE TABLE ALOJAMENTO(
    Endereco TEXT PRIMARY KEY,
    Check_in DATE NOT NULL,
    Check_out DATE NOT NULL CHECK(Check_in<Check_out),
    Numero_de_Quartos INT,
    Numero_de_Telefone INT,
    Avaliaçao FLOAT
);

CREATE TABLE TOUR(
    Programa TEXT PRIMARY KEY,
    Duracao INT,
    Idioma TEXT,
    Cidade TEXT,
    FOREIGN KEY (Cidade) REFERENCES CIDADE(Nome_da_Cidade)
);

--não sei derivar idioma || Pedro: eu vi no chatGPT como se faz mas nao tenho a certeza se demos nas aulas
--usa um TRIGGER mas nao sei se demos nas aulas

CREATE TABLE VIAGEM(
    ID_da_Rota INT PRIMARY KEY,
    Hora_de_Embarque TIME NOT NULL,
    Hora_de_Chegada TIME NOT NULL,
    Cidade_de_Embarque TEXT NOT NULL,
    Cidade_de_Chegada TEXT NOT NULL,
    FOREIGN KEY (Cidade_de_Embarque) REFERENCES CIDADE(Nome_da_Cidade),
    FOREIGN KEY (Cidade_de_Chegada) REFERENCES CIDADE(Nome_da_Cidade)
);

CREATE TABLE AEROPORTO (
    Nome_do_Aeroporto TEXT PRIMARY KEY,
    Porta_de_Embarque INT NOT NULL,
    Cidade TEXT NOT NULL,
    FOREIGN KEY (Cidade) REFERENCES Cidade(Nome_da_Cidade)
);

CREATE TABLE CIDADE (
    Nome_da_Cidade TEXT PRIMARY KEY,
    Região TEXT,
    País TEXT
);


CREATE TABLE FUNCIONARIO(
    ID_Empresa TEXT PRIMARY KEY,
    Anos_de_Serviço INT NOT NULL,
    Numero_de_Telefone Text NOT NULL,
    Nome TEXT NOT NULL,
    NIF TEXT NOT NULL,
    IBAN TEXT NOT NULL,
    Email TEXT NOT NULL,--SELECT (STRFTIME('%s', Hora_de_Partida) - STRFTIME('%s', Hora_de_Chegada)) / 60 AS Tempo_de_Espera FROM ESCALA; 

    Salário TEXT NOT NULL
);

CREATE TABLE GUIA(
    ID_Empresa TEXT,
    Idioma TEXT NOT NULL,
    ID_Diploma_de_Turismo TEXT PRIMARY KEY,
    FOREIGN KEY (ID_Empresa) REFERENCES FUNCIONARIO(ID_Empresa)
);

CREATE TABLE HOSPEDEIRO(
    ID_Empresa TEXT,
    ID_Certidao_De_Formacao TEXT,
    PRIMARY KEY (ID_Empresa,ID_Certidao_De_Formacao)
    FOREIGN KEY (ID_Empresa) REFERENCES FUNCIONARIO(ID_Empresa)
);

CREATE TABLE PILOTO(
    ID_Empresa INT,
    ID_Licensa INT,
    PRIMARY KEY (ID_Empresa, ID_Licensa)
    FOREIGN KEY (ID_Empresa) REFERENCES FUNCIONARIO(ID_Empresa)
);

CREATE TABLE PNR(
    Numero_CC TEXT,
    ID_da_Reserva TEXT,
    PRIMARY KEY (Numero_CC, ID_da_Reserva),
    FOREIGN KEY (Numero_CC) REFERENCES PASSAGEIRO(Numero_CC),
    FOREIGN KEY (ID_da_Reserva) REFERENCES RESERVA(ID_da_Reserva)
);
--ver isto do pagamento
CREATE TABLE AQUISIÇÃO(
    Numero_CC TEXT,
    ID_da_Reserva TEXT,
    ID_Transação TEXT PRIMARY KEY,
    Data_de_Pagamento DATE,
    Valor_Pago INT CHECK (Valor_Pago>0),
    ESTADO_DE_PAGAMENTO BOOLEAN NOT NULL,
    FOREIGN KEY (Numero_CC) REFERENCES CLIENTE(Numero_CC),
    FOREIGN KEY (ID_da_Reserva) REFERENCES  RESERVA(ID_da_Reserva)
);

CREATE TABLE RESERVA_DE_ALOJAMENTO(
    ID_da_Reserva TEXT REFERENCES RESERVA(ID_da_Reserva),
    Endereço TEXT REFERENCES ALOJAMENTO(Endereço)
);

CREATE TABLE ITINERÁRIO(
    ID_da_Reserva TEXT REFERENCES RESERVA(ID_da_Reserva) PRIMARY KEY, 
    ID_da_Rota TEXT REFERENCES VIAGEM(ID_da_Rota) NOT NULL
);

CREATE TABLE VOO(
    ID_da_Rota TEXT REFERENCES VIAGEM(ID_da_Rota) PRIMARY KEY, 
    ID_do_Avião TEXT REFERENCES AVIAO(ID_do_Aviao) NOT NULL
);


CREATE TABLE RESERVA_DE_TOUR(
    ID_da_Reserva TEXT, 
    Programa TEXT,
    PRIMARY KEY (ID_da_Reserva,Programa)
    FOREIGN KEY (ID_da_Reserva) REFERENCES RESERVA(ID_da_Reserva),
    FOREIGN KEY (Programa) REFERENCES TOUR(Programa)
);

CREATE TABLE ROTA(
    ID_da_Rota TEXT,
    Aeroporto_Partida TEXT,
    Aeroporto_Chegada TEXT,
    Hora_de_Chegada TIME NOT NULL,
    Hora_de_Partida TIME NOT NULL,
    PRIMARY KEY (ID_da_Rota,Aeroporto_Partida,Aeroporto_Chegada),
    FOREIGN KEY (ID_da_Rota) REFERENCES VIAGEM(ID_da_Rota),
    FOREIGN KEY (Aeroporto_Chegada) REFERENCES AEROPORTO(Nome_do_Aeroporto),
    FOREIGN KEY (Aeroporto_Partida) REFERENCES AEROPORTO(Nome_do_Aeroporto)
);
SELECT (STRFTIME('%s', Hora_de_Chegada) - STRFTIME('%s', Hora_de_Partida)) / 60 AS Tempo_de_Espera FROM ROTA;
--CHECK(Tempo_de_Espera>0)

CREATE TABLE ORIENTAÇÃO(
    Programa TEXT,
    ID_Diploma_de_Turismo TEXT,
    PRIMARY KEY (Programa, ID_Diploma_de_Turismo),
    FOREIGN KEY (Programa) REFERENCES TOUR(ID_da_Rota),
    FOREIGN KEY (ID_Diploma_de_Turismo) REFERENCES GUIA(ID_Diploma_de_Turismo)    
);

CREATE TABLE EQUIPA_DE_BORDO_HOSPEDEIRO(
    ID_da_Rota TEXT,
    ID_Certidao_De_Formacao TEXT,
    PRIMARY KEY (ID_da_Rota,ID_Certidao_De_Formacao),
    FOREIGN KEY (ID_da_Rota) REFERENCES VIAGEM(ID_da_Rota),
    FOREIGN KEY (ID_Certidao_De_Formacao) REFERENCES GUIA(ID_Certidao_De_Formacao)
);

CREATE TABLE EQUIPA_DE_BORDO_PILOTO(
    ID_da_Rota TEXT,
    ID_Licensa TEXT,
    PRIMARY KEY (ID_da_Rota,ID_Licensa),
    FOREIGN KEY (ID_da_Rota) REFERENCES VIAGEM(ID_da_Rota),
    FOREIGN KEY (ID_Licensa) REFERENCES PILOTO(ID_Licensa)
);

CREATE TABLE LOCALIZACAO(
    Programa TEXT PRIMARY KEY,
    Nome_da_Cidade TEXT,
    FOREIGN KEY (Programa) REFERENCES TOUR(Programa),
    FOREIGN KEY (Nome_da_Cidade) REFERENCES Cidade(Nome)
);