PRAGMA foreign_keys=ON;

INSERT INTO PASSAGEIRO (Numero_CC, Nome, Data_de_Nascimento, Check_Vacinacao_Necessaria, ID_Passaporte) 
VALUES ("123456789","André Cotrim","20-03-2005",TRUE,"123456");
VALUES ("234567891","João Marques","19-04-2005",TRUE,"234561");
VALUES ("345678912","Pedro Coelho","19-05-2004",TRUE,"345612");
VALUES ("456789123","João Silva","15-05-1990",TRUE,"456123");
VALUES ("567891234","Maria Oliveira","22-08-1982",TRUE,"561234");
VALUES ("678912345","Carlos Santos","01-12-2000",TRUE,"561234");
VALUES ("789123456","Ana Costa","10-03-1992",TRUE,"612345");
VALUES ("891234567","Pedro Almeida","25-07-1960",TRUE,"123457");
VALUES ("123456780","Rafael Mendes","17-09-1998",TRUE,"234571");
VALUES ("234567801","Juliana Ribeiro","03-04-1967",TRUE,"345712");
VALUES ("345678012","Bruno Carvalho","28-11-2001",TRUE,"457123");
VALUES ("456780123","Fernanda Dias","15-01-1995",TRUE,"571234");


INSERT INTO CLIENTE (Numero_CC, IBAN, NIF, Email, Numero_de_Telefone, Morada_de_Faturacao)  
VALUES ("123456789", 'PT63064897173090956175368', '832224800', 'hsoares@example.net', '964 392 966', 'Praça da Quinta de Santo António, 66, 8448-514 Lagoa')
VALUES ("234567891", 'PT74849349654977245442796', '736698095', 'simaoesteves@example.com', '(351) 299286036', 'Avenida Naiara Amorim, 517, 6739-616 Sines')
VALUES ("345678912", 'PT36171509054638085671963', '854727518', 'garciabianca@example.net', '919558119', 'R. Oliveira, 8, 3491-731 Queluz')
VALUES ('351523289', 'PT11839894616832546982277', '395420392', 'hugo53@example.net', '(351) 257424003', 'Alameda Salomé Sousa, 55, 5125-563 Queluz')
VALUES ('328131147', 'PT57791923740226766553567', '540041080', 'vaziris@example.org', '934627167', 'Av Barbosa, 4, 1017-810 Paredes')
VALUES ('607626875', 'PT03217774877475875922125', '818575130', 'saraneto@example.org', '+351911395296', 'R. Castro, S/N, 6917-268 Tomar')
VALUES ('189645502', 'PT29183857135530576630183', '744994471', 'ericamarques@example.com', '(351) 931712812', 'Rua de Faria, 9, 1125-506 Tavira')
VALUES ('717521058', 'PT63309798768666100099883', '557382811', 'angela66@example.com', '933 237 230', 'Largo de Castro, 91, 3709-142 Odivelas')
VALUES ('497562612', 'PT92802987635124605252616', '876372288', 'afonsocarneiro@example.net', '(351) 245377602', 'Alameda Andrade, 5, 8223-910 Porto Santo')
VALUES ('345063557', 'PT11048202404604777634114', '219871008', 'claudiomorais@example.net', '(351) 210276830', 'Largo Jorge Luis Borges, 74, 3394-545 Alcobaça')
VALUES ('510159178', 'PT83634415458902926751425', '394415379', 'lopesnuno@example.com', '+351298205166', 'Rua Teresa Simões, 385, 9050-181 Espinho')
VALUES ('236213971', 'PT18255716762684131647457', '950852776', 'ruivaz@example.net', '(351) 255502953', 'Rua Caetana Miranda, 26, 6483-340 Matosinhos')


INSERT INTO AVIAO (ID_Aviao, Modelo, Companhia Aerea, Capacidade, Ano_de_Producao)
VALUES (2024, 'Boeing 737', 'TAP Air Portugal', 180, 2016),
VALUES (2023, 'Boeing 747', 'British Airways', 410, 2004),
VALUES (2022, 'Boeing 767', 'Lufthansa', 250, 1990),
VALUES (2021, 'Boeing 777', 'Qatar Airways', 350, 1980),
VALUES (2020, 'Boeing 787 Dreamliner', 'Singapore Airlines', 296, 1986),
VALUES (2019, 'Airbus A320', 'Ryanair', 190, 2018),
VALUES (2018, 'Airbus A330', 'Air France', 250, 1981),
VALUES (2017, 'Airbus A350', 'Emirates', 280, 1987),
VALUES (2016, 'Airbus A380', 'Qantas Airways', 550, 1993),
VALUES (2015, 'Embraer E-Jet E2', 'Azul Linhas Aéreas', 120, 1999),
VALUES (2014, 'Bombardier CRJ Series', 'Delta Airlines', 100, 1975),
VALUES (2013, 'McDonnell Douglas MD-80', 'American Airlines', 155, 1998);

INSERT INTO RESERVA (ID_da_Reserva,Data_de_Inicio,Data_de_Fim,Bagagem_Total)
VALUES ("607", '2024-10-01', '2024-10-06', 3),
VALUES ("849", '2024-01-31', '2024-02-02', 4),
VALUES ("650", '2024-04-12', '2024-04-13', 1),
VALUES ("513", '2024-07-31', '2024-08-07', 3),
VALUES ("697", '2024-05-20', '2024-05-21', 2),
VALUES ("315", '2024-06-26', '2024-07-08', 4),
VALUES ("57", '2024-07-09', '2024-07-13', 2),
VALUES ("374", '2024-08-16', '2024-08-24', 1),
VALUES ("841", '2024-03-14', '2024-03-22', 3),
VALUES ("66", '2024-09-17', '2024-09-29', 3),
VALUES ("251", '2024-02-12', '2024-02-26', 1);

/* INSERT INTO AQUISICAO(Numero_CC,ID_da_Reserva,ID_Transacao,Data_de_Pagamento,Valor_Pago,Estado_de_Pagamento)
('355334', '392', '850d1824', datetime.date(2024, 3, 28), 313, False)
('388323', '932', 'f6b784a0', datetime.date(2024, 7, 24), 550, False)
('470555', '9', '3a5b5b4b', datetime.date(2024, 5, 3), 578, True)
('908804', '15', '7956194f', datetime.date(2024, 4, 2), 290, True)
('118459', '752', '79d655c5', datetime.date(2024, 11, 12), 199, True)
('110658', '770', '3ecf6754', datetime.date(2024, 2, 22), 667, True)
('565579', '340', '4c7c1c60', datetime.date(2024, 3, 29), 588, False)
('720893', '89', 'c3955fcc', datetime.date(2024, 1, 14), 550, False)
('115156', '252', '8d8b4867', datetime.date(2024, 7, 18), 790, False)
('811896', '313', '8cc72823', datetime.date(2024, 2, 11), 810, False)
('483927', '268', '49b5fb0a', datetime.date(2024, 8, 18), 116, False)
('141716', '759', 'ad528ddb', datetime.date(2024, 9, 25), 576, True) */