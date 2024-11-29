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
DROP TABLE IF EXISTS EQUIPA_DE_BORDO;
DROP TABLE IF EXISTS AVIAO;
DROP TABLE IF EXISTS RESERVA_DE_TOUR;
DROP TABLE IF EXISTS RESERVA_DE_ALOJAMENTO;
DROP TABLE IF EXISTS ORIENTACAO;
--CONFIRMAR ESTES DROPS

CREATE TABLE PASSAGEIRO(
    Numero_CC TEXT PRIMARY KEY,
    Nome TEXT NOT NULL, 
    Data_de_Nascimento DATE NOT NULL, 
    Check_Vacinacao_Necessaria BOOLEAN NOT NULL,
    ID_Passaporte TEXT NOT NULL UNIQUE,
    CHECK ((JULIANDAY('now') - JULIANDAY(Data_de_Nascimento)) / 365 >= 18)
    CHECK (Check_Vacinacao_Necessaria=TRUE)
);
SELECT Numero_CC, Data_de Nascimento, (JULIANDAY('now')-JULIANDAY(Data_de_Nascimento)) / 365 AS Idade FROM PASSAGEIRO;

--perguntar stor como fazer IDADE
--confirmar booleans
--idade check passageiro cliente e empo espera
--fazer restricoes entre classes
--REVER NOT NULLS
--DEFAULT?
--ON FDELETE?
--NULL?
--CONFIRMAR TUDO
--CLASSES DE ASSOCIACAO PODEM SE/ RELACOES NAO SE PODE
--ON UPDATE CASCADE NOS FOREING KEYS
--rever relacoes de todos que tem 2 pk
--perguntar quais q devem ter data loading
--vai tar analisar dados?
--data de reserva depois de data de paga,emto
CREATE TABLE CLIENTE(
    Numero_CC TEXT PRIMARY KEY,
    IBAN TEXT UNIQUE,
    NIF TEXT UNIQUE,
    Email TEXT NOT NULL,
    Numero_de_Telefone TEXT NOT NULL,
    Morada_de_Faturação TEXT,
    FOREIGN KEY (Numero_CC) REFERENCES PASSAGEIRO(Numero_CC)
);

CREATE TABLE PNR(
    Numero_CC TEXT,
    ID_da_Reserva TEXT,
    PRIMARY KEY (Numero_CC, ID_da_Reserva),
    FOREIGN KEY (Numero_CC) REFERENCES PASSAGEIRO(Numero_CC),
    FOREIGN KEY (ID_da_Reserva) REFERENCES RESERVA(ID_da_Reserva)
);

--MODELO RELACIONAL NAO TEM ID DE ROTA (FOI ADICIONADO DEVIDO A MULTIPLICIDADES) QUE FAZER?
CREATE TABLE RESERVA(
    ID_da_Reserva TEXT PRIMARY KEY,
    Data_de_Inicio DATE NOT NULL,
    Data_de_Fim DATE NOT NULL,
    Bagagem_Total INT NOT NULL,
    ID_da_Rota TEXT NOT NULL,
    FOREIGN KEY (ID_da_Rota) REFERENCES ROTA(ID_da_Rota),
    CHECK (Data_de_Fim>Data_de_Inicio)
);

SELECT ID_da_Reserva, Data_de_Inicio,Data_de_Fim, (JULIANDAY(Data_de_Fim)-JULIANDAY(Data_de_Inicio)) AS DIAS FROM RESERVA;
--determinar numeros de passageiros


CREATE TABLE AQUISICAO(
    ID_Transacao TEXT PRIMARY KEY,
    Numero_CC TEXT,
    ID_da_Reserva TEXT,
    Data_de_Pagamento DATE,
    Valor_Pago INT NOT NULL CHECK (Valor_Pago>0),
    Estado_de_Pagamento BOOLEAN NOT NULL,
    PRIMARY KEY(Numero_CC,ID_da_Reserva,ID_Transacao),
    FOREIGN KEY (Numero_CC) REFERENCES CLIENTE(Numero_CC),
    FOREIGN KEY (ID_da_Reserva) REFERENCES  RESERVA(ID_da_Reserva),
    
);

CREATE TABLE ALOJAMENTO(
    Endereco TEXT PRIMARY KEY,
    Cidade TEXT NOT NULL,
    Check_in DATE NOT NULL,
    Check_out DATE NOT NULL,
    Numero_de_Quartos INT NOT NULL,
    Numero_de_Telefone INT NOT NULL,
    Avaliacao FLOAT,
    FOREIGN KEY (Cidade) REFERENCES CIDADE(Nome),
    CHECK(Check_in<Check_out)
);

CREATE TABLE TOUR(
    Programa TEXT,
    Cidade TEXT,
    ID_Guia TEXT,
    PRIMARY KEY (Programa,Idioma)
    FOREIGN KEY (Cidade) REFERENCES CIDADE(Nome),
    FOREIGN KEY (ID_Guia) REFERENCES FUNCIONARIO(ID_Funcionario)
);
--não sei derivar idioma || Pedro: eu vi no chatGPT como se faz mas nao tenho a certeza se demos nas aulas
--usa um TRIGGER mas nao sei se demos nas aulas


CREATE TABLE VIAGEM(
    ID_da_Rota TEXT PRIMARY KEY,
    Estado_da_Viagem BOOLEAN NOT NULL,
    Hora_de_Embarque TIME NOT NULL,
    Hora_de_Chegada TIME NOT NULL,
    Cidade_de_Embarque TEXT NOT NULL,
    Cidade_de_Chegada TEXT NOT NULL,
    ID_Aviao TEXT NOT NULL,
    FOREIGN KEY (Cidade_de_Embarque) REFERENCES CIDADE(Nome),
    FOREIGN KEY (Cidade_de_Chegada) REFERENCES CIDADE(Nome),
    FOREIGN KEY (ID_Aviao) REFERENCES AVIAO(ID_Aviao)
);

CREATE TABLE ROTA(
    ID_da_Rota TEXT,
    Aeroporto_Partida TEXT,
    Aeroporto_Chegada TEXT,
    Hora_de_Partida TIME NOT NULL,
    Hora_de_Chegada TIME NOT NULL,
    PRIMARY KEY (ID_da_Rota,Aeroporto_Partida,Aeroporto_Chegada),
    FOREIGN KEY (ID_da_Rota) REFERENCES VIAGEM(ID_da_Rota),
    FOREIGN KEY (Aeroporto_Chegada) REFERENCES AEROPORTO(Nome),
    FOREIGN KEY (Aeroporto_Partida) REFERENCES AEROPORTO(Nome)
    CHECK (((STRFTIME('%s', Hora_de_Chegada) - STRFTIME('%s', Hora_de_Partida)) / 60 > 0))
);
SELECT (STRFTIME('%s', Hora_de_Chegada) - STRFTIME('%s', Hora_de_Partida)) / 60 AS Tempo_de_Espera FROM ROTA;
--NO NOSSO MODELO RELACIONAL SO TEM UMA PRIMARY KEY E NAO 3 NA ROTA


CREATE TABLE AEROPORTO (
    Nome TEXT PRIMARY KEY,
    Porta_de_Embarque INT NOT NULL,
    Cidade TEXT NOT NULL,
    FOREIGN KEY (Cidade) REFERENCES CIDADE(Nome)
);

CREATE TABLE CIDADE (
    Nome TEXT PRIMARY KEY,
    Região TEXT NOT NULL,
    País TEXT NOT NULL
);

CREATE TABLE FUNCIONARIO(
    ID_Funcionario TEXT PRIMARY KEY,
    Nome TEXT NOT NULL,
    Anos_de_Serviço INT NOT NULL,
    Salário TEXT NOT NULL,
    Numero_de_Telefone Text NOT NULL UNIQUE,
    Email TEXT NOT NULL UNIQUE,
    NIF TEXT NOT NULL UNIQUE,
    IBAN TEXT NOT NULL UNIQUE,  
);

CREATE TABLE GUIA(
    ID_Funcionario TEXT,
    Idioma TEXT NOT NULL,
    ID_Diploma_em_Turismo TEXT,
    PRIMARY KEY (ID_Funcionario, ID_Diploma_em_Turismo),
    FOREIGN KEY (ID_Funcionario) REFERENCES FUNCIONARIO(ID_Funcionario)
);

CREATE TABLE HOSPEDEIRO(
    ID_Funcionario TEXT,
    ID_Certidao_De_Formacao TEXT,
    PRIMARY KEY (ID_Funcionario,ID_Certidao_De_Formacao)
    FOREIGN KEY (ID_Funcionario) REFERENCES FUNCIONARIO(ID_Funcionario)
);

CREATE TABLE PILOTO(
    ID_Funcionario TEXT,
    ID_Licensa TEXT,
    PRIMARY KEY (ID_Funcionario, ID_Licensa)
    FOREIGN KEY (ID_Funcionario) REFERENCES FUNCIONARIO(ID_Funcionario)
);

CREATE TABLE EQUIPA_DE_BORDO(
    ID_da_Rota TEXT,
    ID_Funcionario TEXT,
    FOREIGN KEY (ID_da_Rota) REFERENCES VIAGEM(ID_da_Rota),
    FOREIGN KEY (ID_Funcionario) REFERENCES FUNCIONARIO(ID_Funcionario)
    PRIMARY KEY( ID_da_Rota, ID_Funcionario)
);

CREATE TABLE AVIAO(
    ID_Aviao INT PRIMARY KEY,
    Modelo TEXT NOT NULL,
    Companhia_Aerea TEXT NOT NULL,
    Capacidade INT NOT NULL,
    Ano_de_Produção INT NOT NULL
);
--FALTA POR UM CHECK PARA VER SE O NR DE PASSAGEIROS É INFERIOR À CAPACIDADE DO AVIAO

CREATE TABLE RESERVA_DE_TOUR(
    ID_da_Reserva TEXT, 
    Programa TEXT,
    PRIMARY KEY (ID_da_Reserva,Programa)
    FOREIGN KEY (ID_da_Reserva) REFERENCES RESERVA(ID_da_Reserva),
    FOREIGN KEY (Programa) REFERENCES TOUR(Programa)
);

CREATE TABLE RESERVA_DE_ALOJAMENTO(
    ID_da_Reserva TEXT, 
    Programa TEXT,
    PRIMARY KEY (ID_da_Reserva,Endereco)
    FOREIGN KEY (ID_da_Reserva) REFERENCES RESERVA(ID_da_Reserva),
    FOREIGN KEY (Endereco) REFERENCES ALOJAMENTO(Endereco),
);

CREATE TABLE ORIENTACAO(
    Programa TEXT,
    ID_Diploma_em_Turismo TEXT,
    PRIMARY KEY (Programa, ID_Diploma_de_Turismo),
    FOREIGN KEY (Programa) REFERENCES TOUR(ID_da_Rota),
    FOREIGN KEY (ID_Diploma_em_Turismo) REFERENCES GUIA(ID_Diploma_em_Turismo)    
);

--Apaguei: Localização, equipa_de_bordo_piloto,equipa_de_bordo_hospedeiro,voo
--adicionei: equipa de bordo,
