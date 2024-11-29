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
VALUES ("123456789", 'PT63064897173090956175368', '832224800', 'hsoares@example.net', '964 392 966', 'Praça da Quinta de Santo António, 66, 8448-514 Lagoa');
VALUES ("234567891", 'PT74849349654977245442796', '736698095', 'simaoesteves@example.com', '(351) 299286036', 'Avenida Naiara Amorim, 517, 6739-616 Sines');
VALUES ("345678912", 'PT36171509054638085671963', '854727518', 'garciabianca@example.net', '919558119', 'R. Oliveira, 8, 3491-731 Queluz');
VALUES ('351523289', 'PT11839894616832546982277', '395420392', 'hugo53@example.net', '(351) 257424003', 'Alameda Salomé Sousa, 55, 5125-563 Queluz');
VALUES ('328131147', 'PT57791923740226766553567', '540041080', 'vaziris@example.org', '934627167', 'Av Barbosa, 4, 1017-810 Paredes');
VALUES ('607626875', 'PT03217774877475875922125', '818575130', 'saraneto@example.org', '+351911395296', 'R. Castro, S/N, 6917-268 Tomar');
VALUES ('189645502', 'PT29183857135530576630183', '744994471', 'ericamarques@example.com', '(351) 931712812', 'Rua de Faria, 9, 1125-506 Tavira');
VALUES ('717521058', 'PT63309798768666100099883', '557382811', 'angela66@example.com', '933 237 230', 'Largo de Castro, 91, 3709-142 Odivelas');
VALUES ('497562612', 'PT92802987635124605252616', '876372288', 'afonsocarneiro@example.net', '(351) 245377602', 'Alameda Andrade, 5, 8223-910 Porto Santo');
VALUES ('345063557', 'PT11048202404604777634114', '219871008', 'claudiomorais@example.net', '(351) 210276830', 'Largo Jorge Luis Borges, 74, 3394-545 Alcobaça');
VALUES ('510159178', 'PT83634415458902926751425', '394415379', 'lopesnuno@example.com', '+351298205166', 'Rua Teresa Simões, 385, 9050-181 Espinho');
VALUES ('236213971', 'PT18255716762684131647457', '950852776', 'ruivaz@example.net', '(351) 255502953', 'Rua Caetana Miranda, 26, 6483-340 Matosinhos');

INSERT INTO RESERVA (ID_da_Reserva,Data_de_Inicio,Data_de_Fim,Bagagem_Total)
VALUES ("607", '2024-10-01', '2024-10-06', 3);
VALUES ("849", '2024-01-31', '2024-02-02', 4);
VALUES ("650", '2024-04-12', '2024-04-13', 1);
VALUES ("513", '2024-07-31', '2024-08-07', 3);
VALUES ("697", '2024-05-20', '2024-05-21', 2);
VALUES ("315", '2024-06-26', '2024-07-08', 4);
VALUES ("57", '2024-07-09', '2024-07-13', 2);
VALUES ("374", '2024-08-16', '2024-08-24', 1);
VALUES ("841", '2024-03-14', '2024-03-22', 3);
VALUES ("66", '2024-09-17', '2024-09-29', 3);
VALUES ("251", '2024-02-12', '2024-02-26', 1);
VALUES ("250", '2024-02-11', '2024-02-25', 2);

INSERT INTO AQUISICAO(Numero_CC,ID_da_Reserva,ID_Transacao,Data_de_Pagamento,Valor_Pago,Estado_de_Pagamento)
VALUES ('355334', '607', '850d1824', '2024-03-28', 313, False);
VALUES ('388323', '849', 'f6b784a0', '2024-07-24', 550, False);
VALUES ('470555', '650', '3a5b5b4b', '2024-05-03', 578, True);
VALUES ('908804', '513', '7956194f', '2024-04-02', 290, True);
VALUES ('118459', '697', '79d655c5', '2024-11-12', 199, True);
VALUES ('110658', '315', '3ecf6754', '2024-02-22', 667, True);
VALUES ('565579', '57', '4c7c1c60', '2024-03-29', 588, False);
VALUES ('720893', '374', 'c3955fcc', '2024-01-14', 550, False);
VALUES ('115156', '841', '8d8b4867', '2024-07-18', 790, False);
VALUES ('811896', '66', '8cc72823', '2024-02-11', 810, False);
VALUES ('483927', '251', '49b5fb0a', '2024-08-18', 116, False);
VALUES ('141716', '250', 'ad528ddb', '2024-09-25', 576, True);

INSERT INTO ALOJAMENTO(Endereco, Cidade, Check_in, Check_out, Numero_de_Quartos, Numero_de_Telefone, Avaliacao)
VALUES 
('45658 Harold Orchard, North Susanfort, WA 88348', 'Davisbury', '2024-08-23', '2024-09-04', 4, 920348695, 1.8);
('2680 Mclean Lodge Apt. 345, Carrollfurt, HI 08331', 'Lake Lori', '2024-02-15', '2024-02-21', 9, 919719723, 3.4);
('8004 Nicholas Trail Apt. 697, Whiteheadhaven, CO 54887', 'West Daniel', '2024-11-24', '2024-12-04', 4, 916225230, 4.7);
('Unit 0409 Box 1737, DPO AE 49824', 'South Deantown', '2024-01-18', '2024-05-04', 3, 941761942, 2.9);
('7606 Briana Station, Port Teresa, ID 73050', 'North Ashley', '2024-05-10', '2024-09-20', 2, 968199306, 3.6);
('286 Hoover Dam Suite 202, Lake Andrew, LA 16328', 'South Adamburgh', '2024-06-29', '2024-08-29', 5, 936801637, 4.5);
('0612 Mark Well Suite 989, Ramirezfort, GA 75941', 'Port Brentberg', '2024-01-06', '2024-09-15', 6, 910979785, 4.2);
('561 Arellano Court, North Matthewview, MP 56770', 'Christinastad', '2024-10-16', '2024-11-06', 8, 952347133, 3.9);
('02526 Michelle Pine Apt. 918, East Patrick, GA 53642', 'New Sara', '2024-11-18', '2024-12-06', 8, 931976048, 3.6);
('51184 Brown Path Apt. 764, West Gregoryview, WI 97052', 'Garciaside', '2024-05-17', '2024-06-28', 2, 936869602, 3.1);
('694 Justin Wall Apt. 367, West Luishaven, IL 67101', 'Port Georgeland', '2024-03-17', '2024-09-17', 5, 941013361, 1.5);
('92700 Casey Plain, Steelemouth, AK 53469', 'East Aprilside', '2024-09-30', '2024-10-25', 10, 935705920, 1.3);

INSERT INTO TOUR (Programa, Cidade, ID_Guia)
VALUES ('01', 'Rome', 'GUIDE005');
VALUES ('02', 'Rio de Janeiro', 'GUIDE010');
VALUES ('03', 'London', 'GUIDE006');
VALUES ('04', 'Barcelona', 'GUIDE011');
VALUES ('05', 'Rome', 'GUIDE009');
VALUES ('06', 'New York', 'GUIDE012');
VALUES ('07', 'Rome', 'GUIDE009');
VALUES ('08','Madrid', 'GUIDE011');
VALUES ('09','Tokyo', 'GUIDE005');
VALUES ('10','Amsterdam', 'GUIDE005');
VALUES ('11','Sydney', 'GUIDE011');
VALUES ('12','Amsterdam', 'GUIDE010');

INSERT INTO AVIAO (ID_Aviao, Modelo, Companhia Aerea, Capacidade, Ano_de_Producao)
VALUES (2024, 'Boeing 737', 'TAP Air Portugal', 180, 2016)
VALUES (2023, 'Boeing 747', 'British Airways', 410JFK, 2004);
VALUES (2022, 'Boeing 767', 'Lufthansa', 250, 1990);
VALUES (2021, 'Boeing 777', 'Qatar Airways', 350, 1980),
VALUES (2020, 'Boeing 787 Dreamliner', 'Singapore Airlines', 296, 1986);
VALUES (2019, 'Airbus A320', 'Ryanair', 190, 2018);
VALUES (2018, 'Airbus A330', 'Air France', 250, 1981);
VALUES (2017, 'Airbus A350', 'Emirates', 280, 1987);
VALUES (2016, 'Airbus A380', 'Qantas Airways', 550, 1993);
VALUES (2015, 'Embraer E-Jet E2', 'Azul Linhas Aéreas', 120, 1999);
VALUES (2014, 'Bombardier CRJ Series', 'Delta Airlines', 100, 1975);
VALUES (2013, 'McDonnell Douglas MD-80', 'American Airlines', 155, 1998);

INSERT INTO VIAGEM(ID_da_Rota, Estado_da_Viagem, Hora_de_Embarque, Hora_de_Chegada, Cidade_de_Embarque, Cidade_de_Chegada)
VALUES ('3e647c62-d449-4755-b702-7bb71cd628d0', True, '09:21:00', '11:21:00', 'London', 'Dubai');
VALUES ('bbae8c8a-80c7-4a7f-b623-20304b200f75', False, '15:08:00', '18:03:00', 'London', 'Singapore');
VALUES ('601a5df6-ac8a-4791-b08a-579cd57f5107', False, '12:28:00', '14:28:00', 'Sigapore', 'London');
VALUES ('b5a486c1-6230-416f-ac46-102c949a8d0a', False, '01:10:00', '03:10:00', 'London', 'Paris');
VALUES ('012db948-b26c-48b9-80f8-ebccb421fea6', False, '03:59:00', '06:59:00', 'Sydney', 'Paris');
VALUES ('71cd0b80-1ba8-4a68-a411-4d97fb664e0c', False, '19:27:00', '21:27:00', 'New York', 'Rio de Janeiro');
VALUES ('fb65fb58-9145-4fd3-bede-0622afb495d4', True, '01:30:00', '06:41:00', 'Berlin', 'Paris');
VALUES ('d851c3b9-958b-4fbd-a52e-aaff4d0d4cd1', False, '22:48:00', '23:48:00', 'Rome', 'Berlin');
VALUES ('b3098e9e-5ebc-4553-a2dd-0c2619807aed', True, '15:31:00', '22:11:00', 'Rio de Janeiro', 'Sydney');
VALUES ('c464f144-56d8-4af0-a340-ecb90511153e', True, '17:59:00', '18:59:00', 'Rio de Janeiro', 'Los Angeles');
VALUES ('92752d3f-b8eb-4c5d-9e82-f2f1d7653826', True, '05:05:00', '16:04:00', 'Paris', 'Los Angeles');
VALUES ('8c52c7e1-3f1b-4f3a-afc5-de309a261750', True, '04:28:00', '21:00:00', 'Barcelona', 'New York');

INSERT INTO ROTA(ID_da_Rota,Aeroporto_Partida,Aeroporto_Chegada,Hora_de_Embarque, Hora_de_Chegada)
VALUES ('3e647c62-d449-4755-b702-7bb71cd628d0', 'LHR', 'DXB', '09:21:00', '07:24:00');
VALUES ('bbae8c8a-80c7-4a7f-b623-20304b200f75', 'LHR', 'SIN', '13:53:00', '10:36:42');
VALUES ('601a5df6-ac8a-4791-b08a-579cd57f5107', 'SIN', 'LHR', '08:49:41', '02:05:59');
VALUES ('b5a486c1-6230-416f-ac46-102c949a8d0a', 'DXB', 'CDG', '12:29:13', '07:50:12');
VALUES ('012db948-b26c-48b9-80f8-ebccb421fea6', 'SYD', 'CDG', '18:45:29', '16:11:17');
VALUES ('71cd0b80-1ba8-4a68-a411-4d97fb664e0c', 'JFK', 'GIG', '06:54:36', '14:56:58');
VALUES ('fb65fb58-9145-4fd3-bede-0622afb495d4', 'TXL', 'CDG', '18:41:55', '17:20:13');
VALUES ('d851c3b9-958b-4fbd-a52e-aaff4d0d4cd1', 'FCO', 'TXL', '12:27:47', '11:21:20');
VALUES ('b3098e9e-5ebc-4553-a2dd-0c2619807aed', 'GIG', 'SYD', '17:02:16', '03:28:41');
VALUES ('c464f144-56d8-4af0-a340-ecb90511153e', 'GIG', 'LAX', '10:10:59', '06:38:51');
VALUES ('92752d3f-b8eb-4c5d-9e82-f2f1d7653826', 'CDG', 'LAX', '23:09:05', '20:42:37');
VALUES ('8c52c7e1-3f1b-4f3a-afc5-de309a261750', 'BCN', 'JFK', '17:29:42', '23:16:27');

INSERT INTO AEROPORTO (Nome_do_Aeroporto, Porta_de_Embarque, Cidade)
VALUES ('LHR', 41, 'London');
VALUES ('DXB', 34, 'Dubai');
VALUES ('SIN', 21, 'Singapore');
VALUES ('CDG', 49, 'Paris');
VALUES ('MAD', 4, 'Madrid');
VALUES ('SYD', 5, 'Sydney');
VALUES ('JFK', 24, 'New York');
VALUES ('TXL', 40, 'Berlin');
VALUES ('GIG', 4, 'Rio de Janeiro');
VALUES ('BCN', 13, 'Barcelona');
VALUES ('FCO', 37, 'Rome');
VALUES ('LAX', 9, 'Los Angeles');


