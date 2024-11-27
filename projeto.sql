CREATE TABLE PASSAGEIRO(
    Numero_CC TEXT PRIMARY KEY,
    Nome TEXT NOT NULL, 
    Data_de_Nascimento DATE NOT NULL, 
    Check_Vacinacao_Necessaria BOOLEAN NOT NULL,
    ID_Passaporte INT NOT NULL
    CHECK ((JULIANDAY('now') - JULIANDAY(Data_de_Nascimento)) / 365 >= 18)
);
SELECT Numero_CC, Data_de Nascimento, (JULIANDAY('now')-JULIANDAY(Data_de_Nascimento)) / 365 AS Idade FROM PASSASGEIRO;

--perguntar stor como fazer IDADE
--confirmar booleans
--unique
--constrain
--nulls
--drop table

CREATE TABLE CLIENTE(
    Numero_CC INT PRIMARY KEY,
    IBAN TEXT,
    NIF TEXT,
    Email TEXT NOT NULL,
    Numero_de_Telefone TEXT NOT NULL,
    Morada_de_Faturação TEXT ,
    FOREIGN KEY (Numero_CC) REFERENCES PASSAGEIRO(Numero_CC)
);
CHECK (Idade>=18);

CREATE TABLE AVIAO(
    ID_Aviao INT PRIMARY KEY,
    Modelo TEXT ,
    Companhia_Aerea TEXT NOT NULL,
    Capacidade INT NOT NULL,
    Ano_de_Produção INT NOT NULL
);


CREATE TABLE RESERVA(
    ID_da_Reserva INT PRIMARY KEY,
    Data_de_Inico DATE NOT NULL,
    Data_de_Fim DATE NOT NULL,
    Bagagem INT,
    ID_da_Rota INT NOT NULL,
    FOREIGN KEY (ID_da_Rota) REFERENCES VIAGEM(ID_da_Rota)
);

SELECT ID_da_Reserva, Data_de_Inicio,Data_de_Fim, (JULIANDAY(Data_de_Fim)-JULIANDAY(Data_de_Inicio)) AS DAYS FROM RESERVA;

--quartos disponiveis?
CREATE TABLE ALOJAMENTO(
    Endereço TEXT PRIMARY KEY,
    Check-in DATE NOT NULL,
    Check-out DATE NOT NULL,
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
):

SELECT (STRFTIME('%s', Hora_de_Partida) - STRFTIME('%s', Hora_de_Chegada)) / 60 AS Tempo_de_Espera FROM ESCALA;

CREATE TABLE FUNCIONARIO(
    ID_Empresa INT PRIMARY KEY,
    Anos_de_Serviço INT NOT NULL,
    Numero_de_Telefone Text NOT NULL,
    Nome TEXT NOT NULL,
    NIF TEXT NOT NULL,
    IBAN TEXT NOT NULL,
    Email TEXT NOT NULL,
    Salário TEXT NOT NULL,
);

CREATE TABLE GUIA(
    ID_Empresa INT,
    Idioma TEXT NOT NULL,
    ID_Diploma_de_Turismo INT PRIMARY KEY
    FOREIGN KEY (ID_Empresa) REFERENCES FUNCIONARIO(ID_Empresa)
);

CREATE TABLE HOSPEDEIRO(
    ID_Empresa INT PRIMARY KEY,
    ID_Certidão_De_Formação INT PRIMARY KEY,
    FOREIGN KEY (ID_Empresa) REFERENCES FUNCIONARIO(ID_Empresa)
);

CREATE TABLE PILOTO(
    ID_Empresa INT REFERENCES FUNCIONÁRIO(ID_Empresa) PRIMARY KEY,
    ID_Licensa INT PRIMARY KEY,
    FOREIGN KEY (ID_Empresa) REFERENCES FUNCIONARIO(ID_Empresa)
);

CREATE TABLE PNR(
    Numero_CC TEXT,
    ID_da_Reserva INT REFERENCES RESERVA(ID_da_Reserva),
    FOREIGN KEY (ID_Empresa) REFERENCES FUNCIONARIO(ID_Empresa)
);

CREATE TABLE AQUISIÇÃO(){
    IBAN INT REFERENCES CLIENTE(IBAN),
    ID_da_Reserva INT REFERENCES RESERVA(ID_da_Reserva) NOT NULL,
    Data_de_Pagamento DATE,
    Valor_Pago INT CHECK(Valor_Pago>0) NOT NULL,
    Estado_de_Pagamento BOOLEAN NOT NULL,

};

CREATE TABLE RESERVA_DE_ALOJAMENTO(){
    ID_da_Reserva INT REFERENCES RESERVA(ID_da_Reserva),
    Endereço INT REFERENCES ALOJAMENTO(Endereço)
};

CREATE TABLE ITINERÁRIO(){
    ID_da_Reserva INT REFERENCES RESERVA(ID_da_Reserva) PRIMARY KEY, 
    ID_da_Rota INT REFERENCES VIAGEM(ID_da_Rota) NOT NULL
};

CREATE TABLE VOO(){
    ID_da_Rota INT REFERENCES VIAGEM(ID_da_Rota) PRIMARY KEY, 
    ID_do_Avião INT REFERENCES AVIAO(ID_do_Aviao) NOT NULL
};


CREATE TABLE RESERVA_DE_TOUR(){
    ID_da_Reserva INT REFERENCES RESERVA(ID_da_Reserva) PRIMARY KEY, 
    Programa TEXT REFERENCES TOUR(Programa) PRIMARY KEY
};

CREATE TABLE ROTA(){
    ID_da_Rota INT,
    Aeroporto_Partida TEXT,
    Aeroporto_Chegada TEXT,
    Hora_de_Chegada TIME NOT NULL,
    Hora_de_Partida TIME NOT NULL,
    PRIMARY KEY (ID_da_Rota,Aeroporto_Partida,Aeroporto_Chegada),
    FOREIGN KEY (ID_da_Rota) REFERENCES VIAGEM(ID_da_Rota),
    FOREIGN KEY (Aeroporto_Chegada) REFERENCES AEROPORTO(Nome_do_Aeroporto),
    FOREIGN KEY (Aeroporto_Partida) REFERENCES AEROPORTO(Nome_do_Aeroporto)
};
--FALTA CALCULAR O TEMPO DE ESPERA NA ROTA
--seria SELECT (STRFTIME('%s', Hora_de_Chegada) - STRFTIME('%s', Hora_de_Partida)) / 60 AS Tempo_de_Espera FROM ROTA;

CREATE TABLE ORIENTAÇÃO(){
    Programa TEXT,
    ID_Diploma_de_Turismo INT,
    PRIMARY KEY (Programa, ID_Diploma_de_Turismo),
    FOREIGN KEY (Programa) REFERENCES TOUR(ID_da_Rota),
    FOREIGN KEY (ID_Diploma_de_Turismo) REFERENCES GUIA(ID_Diploma_de_Turismo)
    
};

CREATE TABLE EQUIPA_DE_BORDO_HOSPEDEIRO(){
    ID_da_Rota INT REFERENCES VIAGEM(ID_da_Rota) PRIMARY KEY,
    ID_Certidão_De_Formação INT REFERENCES HOSPEDEIRO(ID_Certidão_De_Formação) PRIMARY KEY,
    PRIMARY KEY (ID_da_Rota,ID_Certidão_De_Formação),
    FOREIGN KEY (ID_da_Rota) REFERENCES VIAGEM(ID_da_Rota),
    FOREIGN KEY (ID_Certidao_De_Formaçao) REFERENCES GUIA(ID_Certidao_De_Formação),
};

CREATE TABLE EQUIPA_DE_BORDO_PILOTO(){
    ID_da_Rota INT,
    ID_Licensa INT,
    PRIMARY KEY (ID_da_Rota,ID_Licensa),
    FOREIGN KEY (ID_da_Rota) REFERENCES VIAGEM(ID_da_Rota),
    FOREIGN KEY (ID_Licensa) REFERENCES PILOTO(ID_Licensa)
};

--ver isto do pagamento
CREATE TABLE PAGAMENTO(
    ID_Transação TEXT PRIMARY KEY,
    Data_de_Pagamento DATE,
    Valor_Pago INT CHECK (Valor_Pago>0),
    ESTADO_DE_PAGAMENTO BOOLEAN NOT NULL
    Número_CC TEXT,
    ID_da_Reserva TEXT,
    FOREIGN KEY (Numero_CC) REFERENCES CLIENTE(NÚMERO_CC),
    FOREIGN KEY (ID_da_Reserva) REFERENCES  RESERVA(ID_da_Reserva)
);

