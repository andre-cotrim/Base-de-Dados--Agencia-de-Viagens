PRAGMA foreign_keys=ON;
 
INSERT INTO PASSAGEIRO (Numero_CC, Nome, Data_de_Nascimento, Check_Vacinacao_Necessaria, ID_Passaporte)
VALUES ("123456789","André Cotrim","2005-03-20",TRUE,"123456"),
VALUES ("234567891","João Marques","2005-04-19",TRUE,"234561"),
VALUES ("345678912","Pedro Coelho","2004-05-19",TRUE,"345612"),
VALUES ("456789123","João Silva","1990-05-15",TRUE,"456123"),
VALUES ("567891234","Maria Oliveira","1982-08-22",TRUE,"561234"),
VALUES ("678912345","Carlos Santos","2000-12-01",TRUE,"561234"),
VALUES ("789123456","Ana Costa","1992-03-10",TRUE,"612345"),
VALUES ("891234567","Pedro Almeida","1960-07-25",TRUE,"123457"),
VALUES ("123456780","Rafael Mendes","1998-09-17",TRUE,"234571"),
VALUES ("234567801","Juliana Ribeiro","1967-04-03",TRUE,"345712"),
VALUES ("345678012","Bruno Carvalho","2001-11-28",TRUE,"457123"),
VALUES ("456780123","Fernanda Dias","1995-01-15",TRUE,"571234"),
VALUES ("917716737","Ivo da Rodrigues","1976-01-24",TRUE,"695623"),
VALUES ("621445376","Anita Esteves","1974-07-20",TRUE,"451431"),
VALUES ("952149249","Helena Guerreiro","1988-08-23",TRUE,"518343"),
VALUES ("171696152","Gonçalo Batista","1990-08-31",TRUE,"678691"),
VALUES ("461173781","Íris Mendes","1969-09-14",TRUE,"259159"),
VALUES ("584571174","Eduarda Faria","1976-12-02",TRUE,"123988"),
VALUES ("786248735","Valentina do Martins","1977-02-15",TRUE,"739171"),
VALUES ("497528742","William Borges","1980-09-25",TRUE,"455297"),
VALUES ("475272372","Duarte Tavares-Borges","1950-06-07",TRUE,"254462"),
VALUES ("265476152","Miriam Alves","1966-06-19",TRUE,"346418"),
VALUES ("659739645","Emma Borges","1973-10-26",TRUE,"282493"),
VALUES ("547124286","Vasco da Vicente","1946-02-28",TRUE,"545776"),
VALUES ("347735776","Enzo Tavares","1945-11-11",TRUE,"523914"),
VALUES ("725851781","Soraia Esteves","1965-12-09",TRUE,"823927"),
VALUES ("684793125","Ricardo da Barros","1959-02-25",TRUE,"145431"),
VALUES ("538449913","Débora Azevedo","1995-06-06",TRUE,"117954"),
VALUES ("388232721","Emília Matias","2000-01-17",TRUE,"256944"),
VALUES ("825332531","Caetana Matos","1952-03-25",TRUE,"279416"),
VALUES ("439493593","Íris-Constança Gomes","1983-01-05",TRUE,"735899"),
VALUES ("171112126","Victória Ferreira-Mota","1971-10-20",TRUE,"446168"),
VALUES ("755319768","Naiara-Marta Pires","1977-05-16",TRUE,"163167"),
VALUES ("729882559","Luca Pereira","1954-08-01",TRUE,"471635"),
VALUES ("263468558","Larissa Simões","1963-12-15",TRUE,"527996"),
VALUES ("141896798","Caetana Cunha","1996-10-17",TRUE,"521233"),
VALUES ("237588789","Larissa Fonseca","1972-10-02",TRUE,"947456"),
VALUES ("932231265","Noa Pinheiro","1961-09-16",TRUE,"719364"),
VALUES ("815445454","Wilson Batista","1998-11-28",TRUE,"363399"),
VALUES ("871164622","Anita Pinheiro","1958-12-30",TRUE,"781933"),
VALUES ("789191959","Tiago Moreira","1952-07-19",TRUE,"633343"),
VALUES ("263355728","Micael Nogueira","1986-06-16",TRUE,"683812"),
VALUES ("312144685","Isabel do Marques","1981-04-13",TRUE,"583216"),
VALUES ("551265332","Carolina-Francisca Rodrigues","1968-01-18",TRUE,"454431"),
VALUES ("832259435","Xavier da Machado","1981-09-15",TRUE,"887862"),
VALUES ("927769156","Gustavo Magalhães","1984-09-11",TRUE,"315593"),
VALUES ("251322343","Miriam Fonseca","1968-10-22",TRUE,"686458"),
VALUES ("576853676","Fernando Assunção","1969-01-25",TRUE,"498964"),
VALUES ("627151891","Núria-Yara Carneiro","2006-09-11",TRUE,"872254"),
VALUES ("776412539","Nádia Baptista","1987-08-18",TRUE,"663878");


INSERT INTO CLIENTE (Numero_CC, IBAN, NIF, Email, Numero_de_Telefone, Morada_de_Faturacao)  
VALUES ("123456789", 'PT63064897173090956175368', '832224800', 'hsoares@example.net', '964 392 966', 'Praça da Quinta de Santo António, 66, 8448-514 Lagoa');
VALUES ("234567891", 'PT74849349654977245442796', '736698095', 'simaoesteves@example.com', '(351) 299286036', 'Avenida Naiara Amorim, 517, 6739-616 Sines');
VALUES ("345678912", 'PT36171509054638085671963', '854727518', 'garciabianca@example.net', '919558119', 'R. Oliveira, 8, 3491-731 Queluz');
VALUES ('456789123', 'PT11839894616832546982277', '395420392', 'hugo53@example.net', '(351) 257424003', 'Alameda Salomé Sousa, 55, 5125-563 Queluz');
VALUES ('567891234', 'PT57791923740226766553567', '540041080', 'vaziris@example.org', '934627167', 'Av Barbosa, 4, 1017-810 Paredes');
VALUES ('678912345', 'PT03217774877475875922125', '818575130', 'saraneto@example.org', '+351911395296', 'R. Castro, S/N, 6917-268 Tomar');
VALUES ('789123456', 'PT29183857135530576630183', '744994471', 'ericamarques@example.com', '(351) 931712812', 'Rua de Faria, 9, 1125-506 Tavira');
VALUES ('123456780', 'PT63309798768666100099883', '557382811', 'angela66@example.com', '933 237 230', 'Largo de Castro, 91, 3709-142 Odivelas');
VALUES ('234567801', 'PT92802987635124605252616', '876372288', 'afonsocarneiro@example.net', '(351) 245377602', 'Alameda Andrade, 5, 8223-910 Porto Santo');
VALUES ('345678012', 'PT11048202404604777634114', '219871008', 'claudiomorais@example.net', '(351) 210276830', 'Largo Jorge Luis Borges, 74, 3394-545 Alcobaça');
VALUES ('456780123', 'PT83634415458902926751425', '394415379', 'lopesnuno@example.com', '+351298205166', 'Rua Teresa Simões, 385, 9050-181 Espinho');
VALUES ('891234567', 'PT18255716762684131647457', '950852776', 'ruivaz@example.net', '(351) 255502953', 'Rua Caetana Miranda, 26, 6483-340 Matosinhos');

INSERT INTO PNR(Numero_CC,ID_da_Reserva)
VALUES ('123456789', '607');
VALUES ('234567891', '849');
VALUES ('345678912', '650');
VALUES ('456789123', '513');
VALUES ('567891234', '697');
VALUES ('678912345', '315');
VALUES ('789123456', '57');
VALUES ('123456780', '374');
VALUES ('234567801', '841');
VALUES ('345678012', '66');
VALUES ('456780123', '251');
VALUES ('891234567', '250');
VALUES ("917716737", 607),
VALUES ("621445376", 849),
VALUES ("952149249", 650),
VALUES ("171696152", 513),
VALUES ("461173781", 697),
VALUES ("584571174", 315),
VALUES ("786248735", 57),
VALUES ("497528742", 374),
VALUES ("475272372", 841),
VALUES ("265476152", 66),
VALUES ("659739645", 251),
VALUES ("547124286", 250),
VALUES ("347735776", 607),
VALUES ("725851781", 849),
VALUES ("684793125", 650),
VALUES ("538449913", 513),
VALUES ("388232721", 697),
VALUES ("825332531", 315),
VALUES ("439493593", 57),
VALUES ("171112126", 374),
VALUES ("755319768", 841),
VALUES ("729882559", 66),
VALUES ("263468558", 251),
VALUES ("141896798", 250),
VALUES ("237588789", 607),
VALUES ("932231265", 849),
VALUES ("815445454", 650),
VALUES ("871164622", 513),
VALUES ("789191959", 697),
VALUES ("263355728", 315),
VALUES ("312144685", 57),
VALUES ("551265332", 374),
VALUES ("832259435", 841),
VALUES ("927769156", 66),
VALUES ("251322343", 251),
VALUES ("576853676", 250),
VALUES ("627151891", 607),
VALUES ("776412539", 849);

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
VALUES ('123456789', '607', '850d1824', '2024-01-28', 313, False);
VALUES ('234567891', '849', 'f6b784a0', '2024-01-24', 550, False);
VALUES ('345678912', '650', '3a5b5b4b', '2024-01-03', 578, True);
VALUES ('456789123', '513', '7956194f', '2024-01-02', 290, True);
VALUES ('567891234', '697', '79d655c5', '2024-01-12', 199, True);
VALUES ('678912345', '315', '3ecf6754', '2024-01-22', 667, True);
VALUES ('789123456', '57', '4c7c1c60', '2024-01-29', 588, False);
VALUES ('123456780', '374', 'c3955fcc', '2024-01-14', 550, False);
VALUES ('234567801', '841', '8d8b4867', '2024-01-18', 790, False);
VALUES ('345678012', '66', '8cc72823', '2024-01-11', 810, False);
VALUES ('456780123', '251', '49b5fb0a', '2024-01-18', 116, False);
VALUES ('891234567', '250', 'ad528ddb', '2024-01-25', 576, True);


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
--verificar tour com as cidades 

INSERT INTO AVIAO (ID_Aviao, Modelo, Companhia Aerea, Capacidade, Ano_de_Producao)
VALUES (2024, 'Boeing 737', 'TAP Air Portugal', 180, 2016)
VALUES (2023, 'Boeing 747', 'British Airways', 410, 2004);
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

INSERT INTO RESERVA_DE_TOUR(ID_da_Reserva,Programa)
VALUES ("607", );
VALUES ("849",);
VALUES ("650", );
VALUES ("513", );
VALUES ("697", );
VALUES ("315", );
VALUES ("57", );
VALUES ("374", );
VALUES ("841", );
VALUES ("66", );
VALUES ("251", );
VALUES ("250", );

INSERT INTO RESERVA_DE_ALOJAMENTO(ID_da_Reserva,ID_do_Alojamento)
VALUES ("607", );
VALUES ("849",);
VALUES ("650", );
VALUES ("513", );
VALUES ("697", );
VALUES ("315", );
VALUES ("57", );
VALUES ("374", );
VALUES ("841", );
VALUES ("66", );
VALUES ("251", );
VALUES ("250", );

INSERT INTO ORIENTACAO(Programa,ID_Diploma_de_Turismo)

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

INSERT INTO ROTA(ID_da_Rota, Aeroporto_Partida, Aeroporto_Chegada, Hora_de_Embarque, Hora_de_Chegada)
VALUES ('3e647c62-d449-4755-b702-7bb71cd628d0', 'LHR', 'DXB', '07:24:00', '09:21:00');
VALUES ('bbae8c8a-80c7-4a7f-b623-20304b200f75', 'LHR', 'SIN', '10:36:42', '13:53:00');
VALUES ('601a5df6-ac8a-4791-b08a-579cd57f5107', 'SIN', 'LHR', '02:05:59', '08:49:41');
VALUES ('b5a486c1-6230-416f-ac46-102c949a8d0a', 'DXB', 'CDG', '07:50:12', '12:29:13');
VALUES ('012db948-b26c-48b9-80f8-ebccb421fea6', 'SYD', 'CDG', '16:11:17', '18:45:29');
VALUES ('71cd0b80-1ba8-4a68-a411-4d97fb664e0c', 'JFK', 'GIG', '14:56:58', '06:54:36');
VALUES ('fb65fb58-9145-4fd3-bede-0622afb495d4', 'TXL', 'CDG', '17:20:13', '18:41:55');
VALUES ('d851c3b9-958b-4fbd-a52e-aaff4d0d4cd1', 'FCO', 'TXL', '11:21:20', '12:27:47');
VALUES ('b3098e9e-5ebc-4553-a2dd-0c2619807aed', 'GIG', 'SYD', '03:28:41', '17:02:16');
VALUES ('c464f144-56d8-4af0-a340-ecb90511153e', 'GIG', 'LAX', '06:38:51', '10:10:59');
VALUES ('92752d3f-b8eb-4c5d-9e82-f2f1d7653826', 'CDG', 'LAX', '20:42:37', '23:09:05');
VALUES ('8c52c7e1-3f1b-4f3a-afc5-de309a261750', 'BCN', 'JFK', '23:16:27', '17:29:42');

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

INSERT INTO CIDADE (Nome,Regiao,Pais)
VALUES ('London', 'Inglaterra', 'Reino Unido');
VALUES ('Dubai', 'Emirados Árabes Unidos', 'Emirados Árabes Unidos');
VALUES ('Singapore', 'Sudeste Asiático', 'Singapura');
VALUES ('Paris', 'Île-de-France', 'França');
VALUES ('Madrid', 'Madrid', 'Espanha');
VALUES ('Sydney', 'Nova Gales do Sul', 'Austrália');
VALUES ('New York', 'Nova Iorque', 'Estados Unidos');
VALUES ('Berlin', 'Berlim', 'Alemanha');
VALUES ('Rio de Janeiro', 'Rio de Janeiro', 'Brasil');
VALUES ('Barcelona', 'Catalunha', 'Espanha');
VALUES ('Rome', 'Lazio', 'Itália');
VALUES ('Los Angeles', 'Califórnia', 'Estados Unidos');
--rever 

INSERT INTO FUNCIONARIO (ID_Funcionario, Nome, Anos_de_Serviço, Salário, Numero_de_Telefone, Email, NIF, IBAN)
VALUES ('3195c0ba-ac5d-4aa7-840d-9c855d6ba85b', 'César Campos', 11, '€44462', '969024279', 'tomasandrade@example.org', '507995843', 'PT95333388154013248983692');
VALUES ('8b8daf39-19e7-4732-b003-cc71fb5a2fb4', 'Gil Valente', 26, '€43256', '(351) 938 542 570', 'filipelourenco@example.com', '627355494', 'PT20091391328235335690543');
VALUES ('b6a0e394-b051-4608-bbaa-d4526840af0f', 'Santiago Matos', 30, '€49684', '(351) 933 480 037', 'ocampos@example.com', '340928885', 'PT75487288776697140569162');
VALUES ('d4290269-7b44-41e0-a36c-cbfda1bf1c1d', 'Kelly Andrade', 5, '€64816', '+351926005857', 'rafael67@example.org', '80437796', 'PT91821895274008575431826');
VALUES ('431619cf-b487-4055-99ec-e0df66e5f347', 'Enzo Teixeira', 19, '€41044', '(351) 966829638', 'jorge63@example.org', '718672501', 'PT85048410733641643187770');
VALUES ('1db4c891-c05e-4039-be6c-90fb2ef181d9', 'Ivan do Vicente', 30, '€59455', '+351938394697', 'vera88@example.net', '762685415', 'PT05013049539009263188326');
VALUES ('9cd57f6b-f52b-490c-8904-2296da4b4aa4', 'Filipa Neves', 7, '€50170', '+351965460220', 'filipenascimento@example.com', '670549472', 'PT61796208636105408754264');
VALUES ('e2c959da-f939-4c50-8b79-daefa5861597', 'Afonso Fonseca', 12, '€53978', '(351) 287 745 924', 'dominguessamuel@example.org', '451143329', 'PT32346417639465944208967');
VALUES ('741dc207-6a48-473a-91af-0b6d431c2b78', 'Vítor Amorim', 2, '€74109', '(351) 966041124', 'jbaptista@example.org', '400958233', 'PT72412407967662683387950');
VALUES ('2bcc7ae4-cf19-4f7c-9ccf-dcfd10d463f2', 'Duarte do Garcia', 26, '€56299', '(351) 933735137', 'simaoleal@example.org', '148525734', 'PT25600408301480838035715');
VALUES ('c82c0a78-6d3b-4197-9bf8-36a6823760a8', 'Brian Andrade-Silva', 14, '€26284', '(351) 921 290 659', 'baptistaleonardo@example.org', '31341349', 'PT25182880254045629393784');
VALUES ('f936708a-44be-4834-9909-470e7ca85e23', 'Luca Sousa', 30, '€23822', '(351) 922 849 447', 'kyara51@example.com', '603060819', 'PT03051633705318997649211');
VALUES ('802a0a98-11d7-4a2d-8164-0822459229e1', 'Daniela-Soraia Silva', 10, '€44975', '(351) 932141726', 'ariana31@example.net', '797395557', 'PT08679269753882901163437');
VALUES ('839dbb00-4aad-4e31-9910-08c9f7734e51', 'Violeta Moura', 17, '€23683', '(351) 912 244 603', 'ccosta@example.com', '343746090', 'PT56675102575964821631512');
VALUES ('e9444ae5-402e-42ea-bb61-baf4cf9c4041', 'César Loureiro', 20, '€37903', '914440021', 'mendesgabriel@example.net', '360882920', 'PT98539244927852926974087');
VALUES ('ef7b3a2b-8781-4437-9e7d-f45529c137ee', 'Joel Lopes', 9, '€77074', '(351) 273 550 313', 'caetana99@example.org', '838163042', 'PT68037073741757845393563');
VALUES ('8a420b94-9149-4abd-beab-b6bc18ccab9d', 'Letícia Nascimento', 18, '€50954', '+351935978112', 'xmorais@example.com', '64416050', 'PT25857543454414290406582');
VALUES ('90d9a2dd-6c2a-4b00-adb5-976d80c1ff57', 'Cristiano Jesus', 20, '€24996', '961513076', 'deboraalves@example.com', '420856064', 'PT36846331242617292911949');
VALUES ('477a0f82-f5fa-4dcc-9e94-a2cd3ab0525d', 'Bryan Azevedo', 16, '€53618', '+351916125693', 'luciana90@example.com', '647607149', 'PT67494796600166551493486');
VALUES ('2deda703-117a-4cd4-85ff-77c13ae93687', 'Ana Nogueira', 16, '€77710', '924769568', 'maria70@example.org', '73408313', 'PT65599243367999768106970');
VALUES ('9982df07-9a39-4a19-a11e-48ae76aaf293', 'Lia Figueiredo', 26, '€55396', '+351926519094', 'duarteabreu@example.net', '21625496', 'PT47183283649003204456191');
VALUES ('2e0d3ea9-8f6d-446c-83d1-bd5f5e15827a', 'Rafaela Domingues', 3, '€60794', '(351) 916 549 065', 'castrogabriel@example.com', '225195377', 'PT03206603244529254690066');
VALUES ('75b2a87a-303c-47e2-afe8-00a8782b4b35', 'Camila Cunha', 13, '€79715', '(351) 932 650 144', 'madalena15@example.com', '714348072', 'PT19684027640872675422650');
VALUES ('e4c579a6-86a7-47cd-8984-fbdda06fa08e', 'Valentim da Ferreira', 8, '€58217', '938027781', 'gomesgaspar@example.org', '635914619', 'PT55285068679272330328039');
VALUES ('9dfba68b-e41f-4be5-b26a-86dcc03a8aa5', 'Renata Abreu', 25, '€47306', '926495880', 'juliana82@example.com', '472625602', 'PT23685601246446226968221');
VALUES ('a08a57e0-3ba0-48bb-9c11-c9396f896d57', 'Anita Leite-Brito', 16, '€72424', '(351) 914249958', 'zaraujo@example.net', '654816128', 'PT10541568233687528167584');
VALUES ('2b4280cb-d648-4d62-9260-06eafd4d973a', 'Miguel Neto', 1, '€45460', '257919879', 'henriqueazevedo@example.com', '706751114', 'PT06931164657030978987215');
VALUES ('6bde08d6-64be-4de1-a937-3a412ead9741', 'Ariana Esteves', 5, '€48747', '(351) 926 516 674', 'tatianaandrade@example.org', '954235551', 'PT24604110336600731448784');
VALUES ('f873d51e-3d94-45e5-aeac-be622acc63be', 'Bárbara do Pinho', 9, '€20619', '+351912904536', 'fredericogaspar@example.net', '600248367', 'PT76017323910959914234654');
VALUES ('95f2d3c7-0c13-46e1-9d16-33c215d922d6', 'Melissa Figueiredo', 27, '€26434', '932 117 496', 'torresnelson@example.com', '351347417', 'PT58025607834138301879590');
VALUES ('8b5ab8fa-40e3-454a-be9d-c67cc3d1a951', 'Helena Amaral', 26, '€54229', '+351925381898', 'kevinreis@example.org', '803300313', 'PT10791196184719131787292');
VALUES ('adc83591-f304-48e2-8029-35b03b028442', 'Marta Freitas', 21, '€27439', '(351) 248187975', 'goncalvesiris@example.net', '983034245', 'PT73574067648280935636667');
VALUES ('208a57af-19a2-4d1c-8a0f-260e4c294db9', 'Madalena-Yara Esteves', 22, '€45825', '+351917481550', 'xavierdomingues@example.org', '345291322', 'PT12777822203323165079057');
VALUES ('5894efb5-74bc-4c43-a489-d4e97eb75b4e', 'Núria Torres', 6, '€69029', '(351) 962 435 517', 'juliana41@example.net', '30468359', 'PT03753354198855441111754');
VALUES ('297f8ebd-abd2-4c7b-a36a-4e821d761f2f', 'Teresa-Nair Nogueira', 10, '€72667', '257958859', 'uamaral@example.com', '202982426', 'PT34111714469577402261124');
VALUES ('520eb888-6ade-48fd-bf3d-39fc5423ddd1', 'Leandro Carneiro', 25, '€30253', '(351) 914312261', 'nadia90@example.org', '482579319', 'PT73770274093057644761834')

INSERT INTO GUIA (ID_Funcionario, Idioma, ID_Diploma_em_Turismo)
VALUES ('3195c0ba-ac5d-4aa7-840d-9c855d6ba85b', 'Inglês', '4bbf0736-689d-4c7f-bcae-28fcda9e7994');
VALUES ('8b8daf39-19e7-4732-b003-cc71fb5a2fb4', 'Francês', 'f2d59a18-8393-46e1-8a72-517d62d4c650');
VALUES ('b6a0e394-b051-4608-bbaa-d4526840af0f', 'Alemão', 'a71634fa-59f4-48be-88b6-d5d2a3ed6ad5');
VALUES ('d4290269-7b44-41e0-a36c-cbfda1bf1c1d', 'Espanhol', 'b5e91bc7-0d35-4c9f-96ec-19e5768f6ea4');
VALUES ('431619cf-b487-4055-99ec-e0df66e5f347', 'Inglês', 'be2d83c7-07f4-46f0-b7da-71757e1a0282');
VALUES ('1db4c891-c05e-4039-be6c-90fb2ef181d9', 'Italiano', '689e8752-b4b9-4c85-a2de-58d9c8857cfd');
VALUES ('9cd57f6b-f52b-490c-8904-2296da4b4aa4', 'Francês', 'd412be75-92be-4296-b99d-54ed07f505ee');
VALUES ('e2c959da-f939-4c50-8b79-daefa5861597', 'Português', 'c357b7b2-351e-43a3-b2d2-76b89f7c37d0');
VALUES ('741dc207-6a48-473a-91af-0b6d431c2b78', 'Inglês', '3a3c9ef5-3159-401f-9245-438a30c20f30');
VALUES ('2bcc7ae4-cf19-4f7c-9ccf-dcfd10d463f2', 'Espanhol', '315c1fc2-d946-4a4b-b3cf-6b89bb68f6e0');
VALUES ('c82c0a78-6d3b-4197-9bf8-36a6823760a8', 'Português', 'e1b8b504-694d-4de0-8ad0-bd6947e29c0f');
VALUES ('f936708a-44be-4834-9909-470e7ca85e23', 'Francês', 'dbcdc0f4-c1ff-4b71-a80a-1537467a396f');

INSERT INTO HOSPEDEIRO (ID_Funcionario,ID_Certidao_De_Formacao)
VALUES ('802a0a98-11d7-4a2d-8164-0822459229e1', 'certificado-3721');
VALUES ('839dbb00-4aad-4e31-9910-08c9f7734e51', 'certificado-8156');
VALUES ('e9444ae5-402e-42ea-bb61-baf4cf9c4041', 'certificado-4732');
VALUES ('ef7b3a2b-8781-4437-9e7d-f45529c137ee', 'certificado-8471');
VALUES ('8a420b94-9149-4abd-beab-b6bc18ccab9d', 'certificado-1984');
VALUES ('90d9a2dd-6c2a-4b00-adb5-976d80c1ff57', 'certificado-9285');
VALUES ('477a0f82-f5fa-4dcc-9e94-a2cd3ab0525d', 'certificado-5621');
VALUES ('2deda703-117a-4cd4-85ff-77c13ae93687', 'certificado-3487');
VALUES ('9982df07-9a39-4a19-a11e-48ae76aaf293', 'certificado-6723');
VALUES ('2e0d3ea9-8f6d-446c-83d1-bd5f5e15827a', 'certificado-8235');
VALUES ('75b2a87a-303c-47e2-afe8-00a8782b4b35', 'certificado-1634');
VALUES ('e4c579a6-86a7-47cd-8984-fbdda06fa08e', 'certificado-4917');

INSERT INTO PILOTO(ID_Funcionario,ID_Licensa)
VALUES ('9dfba68b-e41f-4be5-b26a-86dcc03a8aa5', 'licensa-2197');
VALUES ('a08a57e0-3ba0-48bb-9c11-c9396f896d57', 'licensa-4715');
VALUES ('2b4280cb-d648-4d62-9260-06eafd4d973a', 'licensa-5884');
VALUES ('6bde08d6-64be-4de1-a937-3a412ead9741', 'licensa-6549');
VALUES ('f873d51e-3d94-45e5-aeac-be622acc63be', 'licensa-3246');
VALUES ('95f2d3c7-0c13-46e1-9d16-33c215d922d6', 'licensa-7724');
VALUES ('8b5ab8fa-40e3-454a-be9d-c67cc3d1a951', 'licensa-1959');
VALUES ('adc83591-f304-48e2-8029-35b03b028442', 'licensa-5123');
VALUES ('208a57af-19a2-4d1c-8a0f-260e4c294db9', 'licensa-6014');
VALUES ('5894efb5-74bc-4c43-a489-d4e97eb75b4e', 'licensa-3232');
VALUES ('297f8ebd-abd2-4c7b-a36a-4e821d761f2f', 'licensa-9572');
VALUES ('520eb888-6ade-48fd-bf3d-39fc5423ddd1', 'licensa-6801');
