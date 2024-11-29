DROP TABLE IF EXISTS PASSAGEIRO;
DROP TABLE IF EXISTS CLIENTE;
DROP TABLE IF EXISTS PNR;
DROP TABLE IF EXISTS RESERVA;
DROP TABLE IF EXISTS AQUISIÇAO;
DROP TABLE IF EXISTS ALOJAMENTO;
DROP TABLE IF EXISTS TOUR;
DROP TABLE IF EXISTS VIAGEM;
DROP TABLE IF EXISTS ROTA;
DROP TABLE IF EXISTS AEROPORTO;
DROP TABLE IF EXISTS CIDADE;
DROP TABLE IF EXISTS FUNCIONARIO;
DROP TABLE IF EXISTS GUIA;
DROP TABLE IF EXISTS HOSPEDEIRO;
DROP TABLE IF EXISTS PILOTO;
DROP TABLE IF EXISTS HOSPEDEIRO_VIAGEM;
DROP TABLE IF EXISTS PILOTO_VIAGEM;
DROP TABLE IF EXISTS AVIAO;
DROP TABLE IF EXISTS RESERVA_DE_TOUR;
DROP TABLE IF EXISTS RESERVA_DE_ALOJAMENTO;
DROP TABLE IF EXISTS ORIENTACAO;

CREATE TABLE PASSAGEIRO(
    Numero_CC TEXT PRIMARY KEY,
    Nome TEXT NOT NULL, 
    Data_de_Nascimento DATE NOT NULL, 
    Check_Vacinacao_Necessaria BOOLEAN NOT NULL,
    ID_Passaporte TEXT NOT NULL UNIQUE,
    CHECK ((JULIANDAY('now') - JULIANDAY(Data_de_Nascimento)) / 365 >= 18),
    CHECK (Check_Vacinacao_Necessaria=TRUE)
);

SELECT Numero_CC, Data_de Nascimento, (JULIANDAY('now')-JULIANDAY(Data_de_Nascimento)) / 365 AS Idade FROM PASSAGEIRO;

--Default

CREATE TABLE CLIENTE(
    Numero_CC TEXT PRIMARY KEY,
    IBAN TEXT UNIQUE,
    NIF TEXT UNIQUE,
    Email TEXT NOT NULL,
    Numero_de_Telefone TEXT NOT NULL,
    Morada_de_Faturacao TEXT,
    FOREIGN KEY (Numero_CC) REFERENCES PASSAGEIRO(Numero_CC) ON DELETE CASCADE
);

CREATE TABLE PNR(
    Numero_CC TEXT,
    ID_da_Reserva TEXT,
    PRIMARY KEY (Numero_CC, ID_da_Reserva),
    FOREIGN KEY (Numero_CC) REFERENCES PASSAGEIRO(Numero_CC) ON DELETE CASCADE,
    FOREIGN KEY (ID_da_Reserva) REFERENCES RESERVA(ID_da_Reserva) ON DELETE CASCADE ON UPDATE CASCADE 
);

CREATE TABLE RESERVA(
    ID_da_Reserva TEXT PRIMARY KEY,
    Data_de_Inicio DATE NOT NULL,
    Data_de_Fim DATE NOT NULL,
    Bagagem_Total INT NOT NULL CHECK(Bagagem_Total>=0),
    ID_da_Rota TEXT NOT NULL,
    FOREIGN KEY (ID_da_Rota) REFERENCES ROTA(ID_da_Rota) ON DELETE CASCADE ON UPDATE CASCADE,
    CHECK (Data_de_Fim>Data_de_Inicio)
);

SELECT ID_da_Reserva, Data_de_Inicio,Data_de_Fim, (JULIANDAY(Data_de_Fim)-JULIANDAY(Data_de_Inicio)) AS DIAS FROM RESERVA;

CREATE TABLE AQUISICAO(
    ID_Transacao TEXT PRIMARY KEY,
    Numero_CC TEXT,
    ID_da_Reserva TEXT,
    Data_de_Pagamento DATE,
    Valor_Pago INT NOT NULL CHECK (Valor_Pago>0),
    Estado_de_Pagamento BOOLEAN NOT NULL,
    FOREIGN KEY (Numero_CC) REFERENCES CLIENTE(Numero_CC) ON DELETE CASCADE,
    FOREIGN KEY (ID_da_Reserva) REFERENCES  RESERVA(ID_da_Reserva) ON DELETE CASCADE ON UPDATE CASCADE,
);

CREATE TABLE ALOJAMENTO(
    ID_de_Alojamento TEXT PRIMARY KEY,
    Endereco TEXT NOT NULL,
    Cidade TEXT NOT NULL,
    Check_in DATE NOT NULL,
    Check_out DATE NOT NULL,
    Numero_de_Quartos INT NOT NULL,
    Numero_de_Telefone INT NOT NULL,
    Avaliacao FLOAT,
    FOREIGN KEY (Cidade) REFERENCES CIDADE(Nome) ON DELETE CASCADE ON UPDATE CASCADE,
    CHECK(Check_in<Check_out)
);

CREATE TABLE TOUR(
    ID_de_Tour TEXT PRIMARY KEY,
    Programa TEXT NOT NULL,
    Cidade TEXT NOT NULL,
    ID_Guia TEXT,
    FOREIGN KEY (Cidade) REFERENCES CIDADE(Nome) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (ID_Guia) REFERENCES GUIA(ID_Funcionario) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE VIAGEM(
    ID_da_Rota TEXT PRIMARY KEY,
    Estado_da_Viagem BOOLEAN NOT NULL,
    Hora_de_Embarque TIME NOT NULL,
    Hora_de_Chegada TIME NOT NULL,
    Cidade_de_Embarque TEXT NOT NULL,
    Cidade_de_Chegada TEXT NOT NULL,
    ID_Aviao TEXT NOT NULL,
    FOREIGN KEY (Cidade_de_Embarque) REFERENCES CIDADE(Nome) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (Cidade_de_Chegada) REFERENCES CIDADE(Nome) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (ID_Aviao) REFERENCES AVIAO(ID_Aviao) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE ROTA(
    ID_da_Rota TEXT PRIMARY KEY,
    Aeroporto_de_Partida TEXT NOT NULL,
    Aeroporto_de_Chegada TEXT NOT NULL,
    Hora_de_Partida TIME NOT NULL,
    Hora_de_Chegada TIME NOT NULL,
    FOREIGN KEY (ID_da_Rota) REFERENCES VIAGEM(ID_da_Rota) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (Aeroporto_de_Partida) REFERENCES AEROPORTO(ID_de_Aeroporto) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (Aeroporto_de_Chegada) REFERENCES AEROPORTO(ID_de_Aeroporto) ON DELETE CASCADE ON UPDATE CASCADE,
    CHECK (((STRFTIME('%s', Hora_de_Chegada) - STRFTIME('%s', Hora_de_Partida)) / 60 > 0))
);
SELECT (STRFTIME('%s', Hora_de_Chegada) - STRFTIME('%s', Hora_de_Partida)) / 60 AS Tempo_de_Espera FROM ROTA;

CREATE TABLE AEROPORTO (
    ID_de_Aeroporto TEXT PRIMARY KEY,
    Nome TEXT NOT NULL,
    Porta_de_Embarque INT NOT NULL,
    Cidade TEXT NOT NULL,
    FOREIGN KEY (Cidade) REFERENCES CIDADE(Nome) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE CIDADE (
    Nome TEXT,
    Regiao TEXT,
    Pais TEXT NOT NULL,
    PRIMARY KEY(Nome, Pais)
);

CREATE TABLE FUNCIONARIO(
    ID_Funcionario TEXT PRIMARY KEY,
    Nome TEXT NOT NULL,
    Anos_de_Servico INT NOT NULL,
    Salario TEXT NOT NULL,
    Numero_de_Telefone Text NOT NULL UNIQUE,
    Email TEXT NOT NULL UNIQUE,
    NIF TEXT NOT NULL UNIQUE,
    IBAN TEXT NOT NULL UNIQUE,  
);

CREATE TABLE GUIA(
    ID_Funcionario TEXT PRIMARY KEY,
    Idioma TEXT NOT NULL,
    ID_Diploma_em_Turismo TEXT NOT NULL,
    FOREIGN KEY (ID_Funcionario) REFERENCES FUNCIONARIO(ID_Funcionario) ON DELETE CASCADE 
);

CREATE TABLE HOSPEDEIRO(
    ID_Funcionario TEXT PRIMARY KEY,
    ID_Certidao_De_Formacao TEXT NOT NULL,
    FOREIGN KEY (ID_Funcionario) REFERENCES FUNCIONARIO(ID_Funcionario) ON DELETE CASCADE 
);

CREATE TABLE PILOTO(
    ID_Funcionario TEXT PRIMARY KEY,
    ID_Licensa TEXT NOT NULL,
    FOREIGN KEY (ID_Funcionario) REFERENCES FUNCIONARIO(ID_Funcionario) ON DELETE CASCADE 
);

CREATE TABLE HOSPEDEIRO_VIAGEM(
    ID_da_Rota TEXT,
    ID_Funcionario TEXT,
    FOREIGN KEY (ID_da_Rota) REFERENCES VIAGEM(ID_da_Rota) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (ID_Funcionario) REFERENCES HOSPEDEIRO(ID_Funcionario) ON DELETE CASCADE ON UPDATE CASCADE
    PRIMARY KEY(ID_da_Rota, ID_Funcionario)
);

CREATE TABLE PILOTO_VIAGEM(
    ID_da_Rota TEXT,
    ID_Funcionario TEXT,
    FOREIGN KEY (ID_da_Rota) REFERENCES VIAGEM(ID_da_Rota) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (ID_Funcionario) REFERENCES PILOTO(ID_Funcionario) ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY(ID_da_Rota, ID_Funcionario)
);

CREATE TABLE AVIAO(
    ID_Aviao INT PRIMARY KEY,
    Modelo TEXT NOT NULL,
    Companhia_Aerea TEXT NOT NULL,
    Capacidade INT NOT NULL,
    Ano_de_Producao INT NOT NULL
);


CREATE TABLE RESERVA_DE_TOUR(
    ID_da_Reserva TEXT, 
    ID_de_Tour TEXT,
    PRIMARY KEY (ID_da_Reserva,ID_de_Tour)
    FOREIGN KEY (ID_da_Reserva) REFERENCES RESERVA(ID_da_Reserva) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (ID_de_Tour) REFERENCES TOUR(ID_de_Tour) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE RESERVA_DE_ALOJAMENTO(
    ID_da_Reserva TEXT, 
    ID_de_Alojamento TEXT,
    PRIMARY KEY (ID_da_Reserva, ID_de_Alojamento)
    FOREIGN KEY (ID_da_Reserva) REFERENCES RESERVA(ID_da_Reserva) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (ID_de_Alojamento) REFERENCES ALOJAMENTO(ID_de_Alojamento) ON DELETE CASCADE ON UPDATE CASCADE,
);

CREATE TABLE ORIENTACAO(
    ID_de_Tour TEXT,
    ID_Funcionario TEXT,
    PRIMARY KEY (ID_de_Tour, ID_Funcionario),
    FOREIGN KEY (ID_de_Tour) REFERENCES TOUR(ID_de_Tour) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (ID_Funcionario) REFERENCES GUIA(ID_Funcionario) ON DELETE CASCADE ON UPDATE CASCADE  
);
