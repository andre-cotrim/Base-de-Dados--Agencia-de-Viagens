CREATE TABLE PASSAGEIRO(
    Número_CC TEXT PRIMARY KEY,
    Nome TEXT NOT NULL, 
    Data_de_Nascimento DATE NOT NULL, 
    Estado_de_Vacinação BOOLEAN NOT NULL,
    ID_Passaporte INT NOT NULL
);

--o chatgpt diz que essa função nao esta disponivel no sqlite
SELECT Número_CC, Data_de_Nascimento, DATEDIFF(YY, Data_de_Nascimento, GETDATE()) as IDADE FROM PASSAGEIRO; 
-- seria->  SELECT Número_CC, Data_de Nascimento, (JULIANDAY('now')-JULIANDAY(Data_de_Nascimento)) / 365 AS IDADE FROM PASSASGEIRO;

--restrigir text
--perguntar stor como fazer IDADE
--confirmar booleans
--unique

CREATE TABLE CLIENTE(
    Número_CC INT PRIMARY KEY,
    IBAN TEXT,
    NIF TEXT,
    Email TEXT NOT NULL,
    Número_de_Telefone TEXT NOT NULL,
    Morada_de_Faturação TEXT ,
    FOREIGN KEY (Número_CC) REFERENCES PASSAGEIRO(NÚMERO_CC)
);

CREATE TABLE AVIÃO(
    ID_Avião INT PRIMARY KEY,
    Modelo TEXT ,
    Companhia_Aérea TEXT NOT NULL,
    Capacidade INT NOT NULL,
    Ano_de_Produção INT NOT NULL
);


CREATE TABLE RESERVA(
    ID_da_Reserva INT PRIMARY KEY,
    Data_de_Iníco DATE NOT NULL,
    Data_de_Fim DATE NOT NULL,
    Bagagem TEXT, --ver tipo aqui
    ID_da_Rota INT REFERENCES VIAGEM(ID_da_Rota) NOT NULL
    
);

--nao sei se tem que se por na tabela ou não
SELECT Data_de_Início, Data_De_Fim DATEDIFF(DD, Data_de_Início, Data_de_Fim) as Dias FROM RESERVA;
-- seria -> SELECT ID_da_Reserva, Data_de_Inicio,Data_de_Fim, (JULIANDAY(Data_de_Fim)-JULIANDAY(Data_de_Inicio)) AS DAYS FROM RESERVA;



--quartos disponiveis?
CREATE TABLE ALOJAMENTO(
    Endereço TEXT PRIMARY KEY,
    Check-in DATE NOT NULL,
    Check-out DATE NOT NULL,
    Número_de_Quartos INT,
    Número_de_Telefone INT,
    Avaliação FLOAT
);

CREATE TABLE TOUR(
    Programa TEXT PRIMARY KEY,
    Duração INT,
    Idioma TEXT,
    Cidade TEXT REFERENCES CIDADE(Nome_da_Cidade)
);

--não sei derivar idioma || Pedro: eu vi no chatGPT como se faz mas nao tenho a certeza se demos nas aulas
--usa um TRIGGER mas nao sei se demos nas aulas

CREATE TABLE VIAGEM(
    ID_da_Rota INT PRIMARY KEY,
    Hora_de_Embarque TIME,
    Hora_de_Chegada TIME,
    Cidade_de_Embarque TEXT REFERENCES CIDADE(Nome_da_Cidade),
    Cidade_de_Chegada TEXT REFERENCES CIDADE(Nome_da_Cidade),
);

CREATE TABLE AEROPORTO (
    Nome_do_Aeroporto TEXT PRIMARY KEY,
    Porta_de_Embarque INT,
    Nome_Cidade TEXT REFERENCES Cidade(Nome_da_Cidade),
);

CREATE TABLE CIDADE (
    Nome_da_Cidade TEXT PRIMARY KEY,
    Região TEXT,
    País TEXT
):

CREATE TABLE ESCALA(
    ID_da_Rota TEXT REFERENCES VIAGEM(ID_da_Rota) PRIMARY KEY,
    Nome_do_Aeroporto TEXT REFERENCES AEROPORTO(Nome_do_Aeroporto) PRIMARY KEY, --pedro vai te fuder
    Hora_de_Chegada TIME,
    Hora_de_Partida TIME

);

--PROBLEMA IGUAL AO ANTERIOR 
SELECT Hora_de_Partida, Hora_de_Chegada DATEDIFF(DD, Hora_de_Chegada, Hora_de_Partida) as Tempo_de_Espera FROM ESCALA;
--seria -> SELECT (STRFTIME('%s', Hora_de_Partida) - STRFTIME('%s', Hora_de_Chegada)) / 60 AS Tempo_de_Espera FROM ESCALA;

CREATE TABLE FUNCIONÁRIO(
    ID_Empresa INT PRIMARY KEY,
    Anos_de_Serviço INT NOT NULL,
    Número_de_Telefone Text NOT NULL,
    Nome TEXT NOT NULL,
    NIF TEXT NOT NULL,
    IBAN TEXT NOT NULL,
    Email TEXT NOT NULL,
    Salário TEXT NOT NULL,
);

CREATE TABLE GUIA(
    ID_Empresa INT REFERENCES FUNCIONÁRIO(ID_Empresa) PRIMARY KEY,
    Idioma TEXT NOT NULL,
    ID_Diploma_de_Turismo INT PRIMARY KEY
    
);

CREATE TABLE HOSPEDEIRO(
    ID_Empresa INT REFERENCES FUNCIONÁRIO(ID_Empresa) PRIMARY KEY,
    ID_Certidão_De_Formação INT PRIMARY KEY
    
);

CREATE TABLE PILOTO(
    ID_Empresa INT REFERENCES FUNCIONÁRIO(ID_Empresa) PRIMARY KEY,
    ID_Licensa INT PRIMARY KEY,
    
);

CREATE TABLE PNR(
    Número_CC TEXT REFERENCES PASSAGEIRO(Número_CC) PRIMARY KEY,
    ID_da_Reserva INT REFERENCES RESERVA(ID_da_Reserva)
);

CREATE TABLE AQUISIÇÃO(){
    IBAN INT REFERENCES CLIENTE(IBAN),
    ID_da_Reserva INT REFERENCES RESERVA(ID_da_Reserva) NOT NULL,
    Data_de_Pagamento DATE,
    Valor_Pago INT CHECK(Valor_Pago>0) NOT NULL,
    Estado_de_Pagamento BOOLEAN NOT NULL
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
    ID_do_Avião INT REFERENCES AVIÃO(ID_do_Avião) NOT NULL
};


CREATE TABLE RESERVA_DE_TOUR(){
    ID_da_Reserva INT REFERENCES RESERVA(ID_da_Reserva) PRIMARY KEY, 
    Programa TEXT REFERENCES TOUR(Programa) PRIMARY KEY
};

CREATE TABLE ROTA(){
    ID_da_Rota INT REFERENCES VIAGEM(ID_da_Rota) PRIMARY KEY,
    Nome_do_Aeroporto TEXT REFERENCES AEROPORTO(Nome_do_Aeroporto) PRIMARY KEY,
    Hora_de_Chegada TIME NOT NULL,
    Hora_de_Partida TIME NOT NULL
};

--FALTA CALCULAR O TEMPO DE ESPERA NA ROTA
--seria SELECT (STRFTIME('%s', Hora_de_Chegada) - STRFTIME('%s', Hora_de_Partida)) / 60 AS Tempo_de_Espera FROM ROTA;

CREATE TABLE ORIENTAÇÃO(){
    Programa TEXT REFERENCES ROTA(ID_da_Rota) PRIMARY KEY,
    ID_Diploma_de_Turismo INT REFERENCES GUIA(ID_Diploma_de_Turismo)PRIMARY KEY
};

CREATE TABLE EQUIPA_DE_BORDO_HOSPEDEIRO(){
    ID_da_Rota INT REFERENCES VIAGEM(ID_da_Rota) PRIMARY KEY,
    ID_Certidão_De_Formação INT REFERENCES HOSPEDEIRO(ID_Certidão_De_Formação) PRIMARY KEY,
};

CREATE TABLE EQUIPA_DE_BORDO_PILOTO(){
    ID_da_Rota INT REFERENCES VIAGEM(ID_da_Rota) PRIMARY KEY,
    ID_Licensa INT REFERENCES PILOTO(ID_Licensa) PRIMARY KEY
};

--ver isto do pagamento
CREATE TABLE PAGAMENTO(
    ID_Transação TEXT PRIMARY KEY,
    Data_de_Pagamento DATE,
    Valor_Pago INT CHECK (Valor_Pago>0),
    ESTADO_DE_PAGAMENTO BOOLEAN NOT NULL
);

