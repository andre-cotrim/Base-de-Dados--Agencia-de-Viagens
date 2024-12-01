PRAGMA foreign_keys = ON;
 
INSERT INTO PASSAGEIRO (Numero_CC, Nome, Data_de_Nascimento, Check_Vacinacao_Necessaria, ID_Passaporte)
VALUES 
('123456789', 'André Cotrim', '2005-03-20', 1, '123456'),
('234567891', 'João Marques', '2005-04-19', 1, '234561'),
('345678912', 'Pedro Coelho', '2004-05-19', 1, '345612'),
('456789123', 'João Silva', '1990-05-15', 1, '456123'),
('567891234', 'Maria Oliveira', '1982-08-22', 1, '561234'),
('678912345', 'Carlos Santos', '2000-12-01', 1, '561235'),
('789123456', 'Ana Costa', '1992-03-10', 1, '612345'),
('891234567', 'Pedro Almeida', '1960-07-25', 1, '123457'),
('123456780', 'Rafael Mendes', '1998-09-17', 1, '234571'),
('234567801', 'Juliana Ribeiro', '1967-04-03', 1, '345712'),
('345678012', 'Bruno Carvalho', '2001-11-28', 1, '457123'),
('456780123', 'Fernanda Dias', '1995-01-15', 1, '571234'),
('917716737', 'Ivo da Rodrigues', '1976-01-24', 1, '695623'),
('621445376', 'Anita Esteves', '1974-07-20', 1, '451431'),
('952149249', 'Helena Guerreiro', '1988-08-23', 1, '518343'),
('171696152', 'Gonçalo Batista', '1990-08-31', 1, '678691'),
('461173781', 'Íris Mendes', '1969-09-14', 1, '259159'),
('584571174', 'Eduarda Faria', '1976-12-02', 1, '123988'),
('786248735', 'Valentina do Martins', '1977-02-15', 1, '739171'),
('497528742', 'William Borges', '1980-09-25', 1, '455297'),
('475272372', 'Duarte Tavares-Borges', '1950-06-07', 1, '254462');

INSERT INTO CLIENTE (Numero_CC, IBAN, NIF, Email, Numero_de_Telefone, Morada_de_Faturacao)
VALUES 
('123456789', 'PT63064897173090956175368', '832224800', 'hsoares@example.net', '964 392 966', 'Praça da Quinta de Santo António, 66, 8448-514 Lagoa'),
('234567891', 'PT74849349654977245442796', '736698095', 'simaoesteves@example.com', '(351) 299286036', 'Avenida Naiara Amorim, 517, 6739-616 Sines'),
('345678912', 'PT36171509054638085671963', '854727518', 'garciabianca@example.net', '919558119', 'R. Oliveira, 8, 3491-731 Queluz'),
('456789123', 'PT11839894616832546982277', '395420392', 'hugo53@example.net', '(351) 257424003', 'Alameda Salomé Sousa, 55, 5125-563 Queluz'),
('567891234', 'PT57791923740226766553567', '540041080', 'vaziris@example.org', '934627167', 'Av Barbosa, 4, 1017-810 Paredes'),
('678912345', 'PT03217774877475875922125', '818575130', 'saraneto@example.org', '+351911395296', 'R. Castro, S/N, 6917-268 Tomar'),
('789123456', 'PT29183857135530576630183', '744994471', 'ericamarques@example.com', '(351) 931712812', 'Rua de Faria, 9, 1125-506 Tavira'),
('123456780', 'PT63309798768666100099883', '557382811', 'angela66@example.com', '933 237 230', 'Largo de Castro, 91, 3709-142 Odivelas'),
('234567801', 'PT92802987635124605252616', '876372288', 'afonsocarneiro@example.net', '(351) 245377602', 'Alameda Andrade, 5, 8223-910 Porto Santo'),
('345678012', 'PT11048202404604777634114', '219871008', 'claudiomorais@example.net', '(351) 210276830', 'Largo Jorge Luis Borges, 74, 3394-545 Alcobaça'),
('456780123', 'PT83634415458902926751425', '394415379', 'lopesnuno@example.com', '+351298205166', 'Rua Teresa Simões, 385, 9050-181 Espinho'),
('891234567', 'PT18255716762684131647457', '950852776', 'ruivaz@example.net', '(351) 255502953', 'Rua Caetana Miranda, 26, 6483-340 Matosinhos');

INSERT INTO CIDADE (Nome, Regiao, Pais)
VALUES
    ('London', 'Londres', 'Reino Unido'),
    ('Dubai', 'Dubai', 'Emirados Árabes Unidos'),
    ('Singapore', 'Singapura', 'Singapura'),
    ('Paris', 'Île-de-France', 'França'),
    ('Madrid', 'Madrid', 'Espanha'),
    ('Sydney', 'Nova Gales do Sul', 'Austrália'),
    ('New York', 'Nova Iorque', 'Estados Unidos'),
    ('Berlin', 'Berlim', 'Alemanha'),
    ('Rio de Janeiro', 'Rio de Janeiro', 'Brasil'),
    ('Barcelona', 'Catalunha', 'Espanha'),
    ('Rome', 'Lazio', 'Itália'),
    ('Los Angeles', 'Califórnia', 'Estados Unidos'),
    ('Amsterdam', 'Holanda do Norte', 'Países Baixos');

INSERT INTO AVIAO (ID_Aviao, Modelo, Companhia_Aerea, Capacidade, Ano_de_Producao)
VALUES 
  (2024, 'Boeing 737', 'TAP Air Portugal', 180, 2016),
  (2023, 'Boeing 747', 'British Airways', 410, 2004),
  (2022, 'Boeing 767', 'Lufthansa', 250, 1990),
  (2021, 'Boeing 777', 'Qatar Airways', 350, 1980),
  (2020, 'Boeing 787 Dreamliner', 'Singapore Airlines', 296, 1986),
  (2019, 'Airbus A320', 'Ryanair', 190, 2018),
  (2018, 'Airbus A330', 'Air France', 250, 1981),
  (2017, 'Airbus A350', 'Emirates', 280, 1987),
  (2016, 'Airbus A380', 'Qantas Airways', 550, 1993),
  (2015, 'Embraer E-Jet E2', 'Azul Linhas Aéreas', 120, 1999),
  (2014, 'Bombardier CRJ Series', 'Delta Airlines', 100, 1975),
  (2013, 'McDonnell Douglas MD-80', 'American Airlines', 155, 1998);

INSERT INTO ALOJAMENTO (ID_de_Alojamento, Endereco, Cidade, Check_in, Check_out, Numero_de_Quartos, Numero_de_Telefone, Avaliacao)
VALUES
    ('ALJ-20241130-001', '45658 Harold Orchard, North Susanfort, WA 88348', 'Dubai', '2024-08-23', '2024-09-04', 4, 920348695, 1.8),
    ('ALJ-20241130-002', '2680 Mclean Lodge Apt. 345, Carrollfurt, HI 08331', 'Singapore', '2024-02-15', '2024-02-21', 9, 919719723, 3.4),
    ('ALJ-20241130-003', '8004 Nicholas Trail Apt. 697, Whiteheadhaven, CO 54887', 'London', '2024-11-24', '2024-12-04', 4, 916225230, 4.7),
    ('ALJ-20241130-004', 'Unit 0409 Box 1737, DPO AE 49824', 'Paris', '2024-01-18', '2024-05-04', 3, 941761942, 2.9),
    ('ALJ-20241130-005', '7606 Briana Station, Port Teresa, ID 73050', 'Paris', '2024-05-10', '2024-09-20', 2, 968199306, 3.6),
    ('ALJ-20241130-0012', '286 Hoover Dam Suite 202, Lake Andrew, LA 16328', 'Rio de Janeiro', '2024-06-29', '2024-08-29', 5, 936801637, 4.5),
    ('ALJ-20241130-006', '0612 Mark Well Suite 989, Ramirezfort, GA 75941', 'Paris', '2024-01-06', '2024-09-15', 6, 910979785, 4.2),
    ('ALJ-20241130-007', '561 Arellano Court, North Matthewview, MP 56770', 'Berlin', '2024-10-16', '2024-11-06', 8, 952347133, 3.9),
    ('ALJ-20241130-008', '02526 Michelle Pine Apt. 918, East Patrick, GA 53642', 'Sydney', '2024-11-18', '2024-12-06', 8, 931976048, 3.6),
    ('ALJ-20241130-009', '51184 Brown Path Apt. 764, West Gregoryview, WI 97052', 'Los Angeles', '2024-05-17', '2024-06-28', 2, 936869602, 3.1),
    ('ALJ-20241130-010', '694 Justin Wall Apt. 367, West Luishaven, IL 67101', 'Paris', '2024-03-17', '2024-09-17', 5, 941013361, 1.5),
    ('ALJ-20241130-011', '92700 Casey Plain, Steelemouth, AK 53469', 'Barcelona', '2024-09-30', '2024-10-25', 10, 935705920, 1.3);

INSERT INTO AEROPORTO (ID_de_Aeroporto, Nome, Porta_de_Embarque, Cidade)
VALUES
    ('1', 'LHR', 41, 'London'),
    ('2', 'DXB', 34, 'Dubai'),
    ('3', 'SIN', 21, 'Singapore'),
    ('4', 'CDG', 49, 'Paris'),
    ('5', 'MAD', 4, 'Madrid'),
    ('6', 'SYD', 5, 'Sydney'),
    ('7', 'JFK', 24, 'New York'),
    ('8', 'TXL', 40, 'Berlin'),
    ('9', 'GIG', 4, 'Rio de Janeiro'),
    ('10', 'BCN', 13, 'Barcelona'),
    ('11', 'FCO', 37, 'Rome'),
    ('12', 'LAX', 9, 'Los Angeles');

INSERT INTO VIAGEM (ID_da_Rota, Estado_da_Viagem, Hora_de_Embarque, Hora_de_Chegada, Cidade_de_Embarque, Cidade_de_Chegada, ID_Aviao)
VALUES
    ('601a5df6-ac8a-4791-b08a-579cd57f5107', 1, '09:21:00', '11:21:00', 'London', 'Dubai', 2024),
    ('71cd0b80-1ba8-4a68-a411-4d97fb664e0c', 1, '15:08:00', '18:03:00', 'London', 'Singapore', 2023),
    ('3e647c62-d449-4755-b702-7bb71cd628d0', 1, '12:28:00', '14:28:00', 'Singapore', 'London', 2022),
    ('b5a486c1-6230-416f-ac46-102c949a8d0a', 1, '01:10:00', '03:10:00', 'London', 'Paris', 2021),
    ('012db948-b26c-48b9-80f8-ebccb421fea6', 1, '03:59:00', '06:59:00', 'Sydney', 'Paris', 2020),
    ('bbae8c8a-80c7-4a7f-b623-20304b200f75', 1, '19:27:00', '21:27:00', 'New York', 'Rio de Janeiro', 2019),
    ('fb65fb58-9145-4fd3-bede-0622afb495d4', 1, '01:30:00', '06:41:00', 'Berlin', 'Paris', 2018),
    ('d851c3b9-958b-4fbd-a52e-aaff4d0d4cd1', 1, '22:48:00', '23:48:00', 'Rome', 'Berlin', 2017),
    ('b3098e9e-5ebc-4553-a2dd-0c2619807aed', 1, '15:31:00', '22:11:00', 'Rio de Janeiro', 'Sydney', 2016),
    ('c464f144-56d8-4af0-a340-ecb90511153e', 1, '17:59:00', '18:59:00', 'Rio de Janeiro', 'Los Angeles', 2015),

INSERT INTO ROTA (ID_da_Escala,ID_da_Rota, Aeroporto_de_Partida, Aeroporto_de_Chegada, Hora_de_Partida, Hora_de_Chegada)
VALUES
    (1,'3e647c62-d449-4755-b702-7bb71cd628d0', '1', '2', '07:24:00', '09:21:00'),
    (2,'bbae8c8a-80c7-4a7f-b623-20304b200f75', '1', '3', '10:36:42', '13:53:00'),
    (3,'601a5df6-ac8a-4791-b08a-579cd57f5107', '3', '1', '02:05:59', '08:49:41'),
    (4,'b5a486c1-6230-416f-ac46-102c949a8d0a', '2', '4', '07:50:12', '12:29:13'),
    (5,'012db948-b26c-48b9-80f8-ebccb421fea6', '6', '4', '16:11:17', '18:45:29'),
    (6,'71cd0b80-1ba8-4a68-a411-4d97fb664e0c', '7', '9', '14:56:58', '16:54:36'),
    (7,'fb65fb58-9145-4fd3-bede-0622afb495d4', '8', '4', '17:20:13', '18:41:55'),
    (8,'d851c3b9-958b-4fbd-a52e-aaff4d0d4cd1', '11', '8', '11:21:20', '12:27:47'),
    (9,'b3098e9e-5ebc-4553-a2dd-0c2619807aed', '9', '6', '03:28:41', '17:02:16'),
    (10,'c464f144-56d8-4af0-a340-ecb90511153e', '9', '12', '06:38:51', '10:10:59');

INSERT INTO RESERVA (ID_da_Reserva, Data_de_Inicio, Data_de_Fim, Bagagem_Total, ID_da_Rota)
VALUES 
    ('607', '2024-10-01', '2024-10-06', 3, '601a5df6-ac8a-4791-b08a-579cd57f5107'),
    ('849', '2024-01-31', '2024-02-02', 4, '71cd0b80-1ba8-4a68-a411-4d97fb664e0c'),
    ('650', '2024-04-12', '2024-04-13', 1, '3e647c62-d449-4755-b702-7bb71cd628d0'),
    ('513', '2024-07-31', '2024-08-07', 3, 'b5a486c1-6230-416f-ac46-102c949a8d0a'),
    ('697', '2024-05-20', '2024-05-21', 2, '012db948-b26c-48b9-80f8-ebccb421fea6'),
    ('315', '2024-06-26', '2024-07-08', 4, 'bbae8c8a-80c7-4a7f-b623-20304b200f75'),
    ('57', '2024-07-09', '2024-07-13', 2, 'fb65fb58-9145-4fd3-bede-0622afb495d4'),
    ('374', '2024-08-16', '2024-08-24', 1, 'd851c3b9-958b-4fbd-a52e-aaff4d0d4cd1'),
    ('841', '2024-03-14', '2024-03-22', 3, 'b3098e9e-5ebc-4553-a2dd-0c2619807aed'),
    ('66', '2024-09-17', '2024-09-29', 3, 'c464f144-56d8-4af0-a340-ecb90511153e'),
    ('251', '2024-02-12', '2024-02-26', 1, '92752d3f-b8eb-4c5d-9e82-f2f1d7653826'),
    ('250', '2024-02-11', '2024-02-25', 2, '8c52c7e1-3f1b-4f3a-afc5-de309a261750');

INSERT INTO PNR (Numero_CC, ID_da_Reserva)
VALUES 
    ('123456789', '607'),
    ('234567891', '849'),
    ('345678912', '650'),
    ('456789123', '513'),
    ('567891234', '697'),
    ('678912345', '315'),
    ('789123456', '57'),
    ('123456780', '374'),
    ('234567801', '841'),
    ('345678012', '66'),
    ('456780123', '251'),
    ('891234567', '250'),
    ('917716737', '607'),
    ('621445376', '849'),
    ('952149249', '650'),
    ('171696152', '513'),
    ('461173781', '697'),
    ('584571174', '315'),
    ('786248735', '57'),
    ('497528742', '374'),
    ('475272372', '841');

INSERT INTO AQUISICAO (ID_Transacao, Numero_CC, ID_da_Reserva, Data_de_Pagamento, Valor_Pago, Estado_de_Pagamento)
VALUES
    ('850d1824', '123456789', '607', '2024-01-28', 313, 2),
    ('f6b784a0', '234567891', '849', '2024-01-24', 550, 2),
    ('3a5b5b4b', '345678912', '650', '2024-01-03', 578, 1),
    ('7956194f', '456789123', '513', '2024-01-02', 290, 1),
    ('79d655c5', '567891234', '697', '2024-01-12', 199, 1),
    ('3ecf6754', '678912345', '315', '2024-01-22', 667, 1),
    ('4c7c1c60', '789123456', '57', '2024-01-29', 588, 2),
    ('c3955fcc', '123456780', '374', '2024-01-14', 550, 2),
    ('8d8b4867', '234567801', '841', '2024-01-18', 790, 2),
    ('8cc72823', '345678012', '66', '2024-01-11', 810, 2),
    ('49b5fb0a', '456780123', '251', '2024-01-18', 116, 2),
    ('ad528ddb', '891234567', '250', '2024-01-25', 576, 1);


INSERT INTO FUNCIONARIO (ID_Funcionario, Nome, Anos_de_Servico, Salario, Numero_de_Telefone, Email, NIF, IBAN)
VALUES
    ('3195c0ba-ac5d-4aa7-840d-9c855d6ba85b', 'César Campos', 11, '€44462', '969024279', 'tomasandrade@example.org', '507995843', 'PT95333388154013248983692'),
    ('8b8daf39-19e7-4732-b003-cc71fb5a2fb4', 'Gil Valente', 26, '€43256', '(351) 938 542 570', 'filipelourenco@example.com', '627355494', 'PT20091391328235335690543'),
    ('b6a0e394-b051-4608-bbaa-d4526840af0f', 'Santiago Matos', 30, '€49684', '(351) 933 480 037', 'ocampos@example.com', '340928885', 'PT75487288776697140569162'),
    ('d4290269-7b44-41e0-a36c-cbfda1bf1c1d', 'Kelly Andrade', 5, '€64816', '+351926005857', 'rafael67@example.org', '80437796', 'PT91821895274008575431826'),
    ('431619cf-b487-4055-99ec-e0df66e5f347', 'Enzo Teixeira', 19, '€41044', '(351) 966829638', 'jorge63@example.org', '718672501', 'PT85048410733641643187770'),
    ('1db4c891-c05e-4039-be6c-90fb2ef181d9', 'Ivan do Vicente', 30, '€59455', '+351938394697', 'vera88@example.net', '762685415', 'PT05013049539009263188326'),
    ('9cd57f6b-f52b-490c-8904-2296da4b4aa4', 'Filipa Neves', 7, '€50170', '+351965460220', 'filipenascimento@example.com', '670549472', 'PT61796208636105408754264'),
    ('e2c959da-f939-4c50-8b79-daefa5861597', 'Afonso Fonseca', 12, '€53978', '(351) 287 745 924', 'dominguessamuel@example.org', '451143329', 'PT32346417639465944208967'),
    ('741dc207-6a48-473a-91af-0b6d431c2b78', 'Vítor Amorim', 2, '€74109', '(351) 966041124', 'jbaptista@example.org', '400958233', 'PT72412407967662683387950'),
    ('2bcc7ae4-cf19-4f7c-9ccf-dcfd10d463f2', 'Duarte do Garcia', 26, '€56299', '(351) 933735137', 'simaoleal@example.org', '148525734', 'PT25600408301480838035715'),
    ('c82c0a78-6d3b-4197-9bf8-36a6823760a8', 'Brian Andrade-Silva', 14, '€26284', '(351) 921 290 659', 'baptistaleonardo@example.org', '31341349', 'PT25182880254045629393784'),
    ('f936708a-44be-4834-9909-470e7ca85e23', 'Luca Sousa', 30, '€23822', '(351) 922 849 447', 'kyara51@example.com', '603060819', 'PT03051633705318997649211'),
    ('802a0a98-11d7-4a2d-8164-0822459229e1', 'Daniela-Soraia Silva', 10, '€44975', '(351) 932141726', 'ariana31@example.net', '797395557', 'PT08679269753882901163437'),
    ('839dbb00-4aad-4e31-9910-08c9f7734e51', 'Violeta Moura', 17, '€23683', '(351) 912 244 603', 'ccosta@example.com', '343746090', 'PT56675102575964821631512'),
    ('e9444ae5-402e-42ea-bb61-baf4cf9c4041', 'César Loureiro', 20, '€37903', '914440021', 'mendesgabriel@example.net', '360882920', 'PT98539244927852926974087'),
    ('ef7b3a2b-8781-4437-9e7d-f45529c137ee', 'Joel Lopes', 9, '€77074', '(351) 273 550 313', 'caetana99@example.org', '838163042', 'PT68037073741757845393563'),
    ('8a420b94-9149-4abd-beab-b6bc18ccab9d', 'Letícia Nascimento', 18, '€50954', '+351935978112', 'xmorais@example.com', '64416050', 'PT25857543454414290406582'),
    ('90d9a2dd-6c2a-4b00-adb5-976d80c1ff57', 'Cristiano Jesus', 20, '€24996', '961513076', 'deboraalves@example.com', '420856064', 'PT36846331242617292911949'),
    ('477a0f82-f5fa-4dcc-9e94-a2cd3ab0525d', 'Bryan Azevedo', 16, '€53618', '+351916125693', 'luciana90@example.com', '647607149', 'PT67494796600166551493486'),
    ('2deda703-117a-4cd4-85ff-77c13ae93687', 'Ana Nogueira', 16, '€77710', '924769568', 'maria70@example.org', '73408313', 'PT65599243367999768106970'),
    ('9982df07-9a39-4a19-a11e-48ae76aaf293', 'Lia Figueiredo', 26, '€55396', '+351926519094', 'duarteabreu@example.net', '21625496', 'PT47183283649003204456191'),
    ('2e0d3ea9-8f6d-446c-83d1-bd5f5e15827a', 'Rafaela Domingues', 3, '€60794', '(351) 916 549 065', 'castrogabriel@example.com', '225195377', 'PT03206603244529254690066'),
    ('75b2a87a-303c-47e2-afe8-00a8782b4b35', 'Camila Cunha', 13, '€79715', '(351) 932 650 144', 'madalena15@example.com', '714348072', 'PT19684027640872675422650'),
    ('e4c579a6-86a7-47cd-8984-fbdda06fa08e', 'Valentim da Ferreira', 8, '€58217', '938027781', 'gomesgaspar@example.org', '635914619', 'PT55285068679272330328039'),
    ('9dfba68b-e41f-4be5-b26a-86dcc03a8aa5', 'Renata Abreu', 25, '€47306', '926495880', 'juliana82@example.com', '472625602', 'PT23685601246446226968221'),
    ('a08a57e0-3ba0-48bb-9c11-c9396f896d57', 'Anita Leite-Brito', 16, '€72424', '(351) 914249958', 'zaraujo@example.net', '654816128', 'PT10541568233687528167584'),
    ('2b4280cb-d648-4d62-9260-06eafd4d973a', 'Miguel Neto', 1, '€45460', '257919879', 'henriqueazevedo@example.com', '706751114', 'PT06931164657030978987215'),
    ('6bde08d6-64be-4de1-a937-3a412ead9741', 'Ariana Esteves', 5, '€48747', '(351) 926 516 674', 'tatianaandrade@example.org', '954235551', 'PT24604110336600731448784'),
    ('f873d51e-3d94-45e5-aeac-be622acc63be', 'Bárbara do Pinho', 9, '€20619', '+351912904536', 'fredericogaspar@example.net', '600248367', 'PT76017323910959914234654'),
    ('95f2d3c7-0c13-46e1-9d16-33c215d922d6', 'Melissa Figueiredo', 27, '€26434', '932 117 496', 'torresnelson@example.com', '351347417', 'PT58025607834138301879590'),
    ('8b5ab8fa-40e3-454a-be9d-c67cc3d1a951', 'Helena Amaral', 26, '€54229', '+351925381898', 'kevinreis@example.org', '803300313', 'PT10791196184719131787292'),
    ('adc83591-f304-48e2-8029-35b03b028442', 'Marta Freitas', 21, '€27439', '(351) 248187975', 'goncalvesiris@example.net', '983034245', 'PT73574067648280935636667'),
    ('208a57af-19a2-4d1c-8a0f-260e4c294db9', 'Madalena-Yara Esteves', 22, '€45825', '+351917481550', 'xavierdomingues@example.org', '345291322', 'PT12777822203323165079057'),
    ('5894efb5-74bc-4c43-a489-d4e97eb75b4e', 'Núria Torres', 6, '€69029', '(351) 962 435 517', 'juliana41@example.net', '30468359', 'PT03753354198855441111754'),
    ('297f8ebd-abd2-4c7b-a36a-4e821d761f2f', 'Teresa-Nair Nogueira', 10, '€72667', '257958859', 'uamaral@example.com', '202982426', 'PT34111714469577402261124'),
    ('520eb888-6ade-48fd-bf3d-39fc5423ddd1', 'Leandro Carneiro', 25, '€30253', '(351) 914312261', 'nadia90@example.org', '482579319', 'PT73770274093057644761834');

INSERT INTO GUIA (ID_Funcionario, Idioma, ID_Diploma_em_Turismo)
VALUES 
  ('3195c0ba-ac5d-4aa7-840d-9c855d6ba85b', 'Inglês', '4bbf0736-689d-4c7f-bcae-28fcda9e7994'),
  ('8b8daf39-19e7-4732-b003-cc71fb5a2fb4', 'Francês', 'f2d59a18-8393-46e1-8a72-517d62d4c650'),
  ('b6a0e394-b051-4608-bbaa-d4526840af0f', 'Alemão', 'a71634fa-59f4-48be-88b6-d5d2a3ed6ad5'),
  ('d4290269-7b44-41e0-a36c-cbfda1bf1c1d', 'Espanhol', 'b5e91bc7-0d35-4c9f-96ec-19e5768f6ea4'),
  ('431619cf-b487-4055-99ec-e0df66e5f347', 'Inglês', 'be2d83c7-07f4-46f0-b7da-71757e1a0282'),
  ('1db4c891-c05e-4039-be6c-90fb2ef181d9', 'Italiano', '689e8752-b4b9-4c85-a2de-58d9c8857cfd'),
  ('9cd57f6b-f52b-490c-8904-2296da4b4aa4', 'Francês', 'd412be75-92be-4296-b99d-54ed07f505ee'),
  ('e2c959da-f939-4c50-8b79-daefa5861597', 'Português', 'c357b7b2-351e-43a3-b2d2-76b89f7c37d0'),
  ('741dc207-6a48-473a-91af-0b6d431c2b78', 'Inglês', '3a3c9ef5-3159-401f-9245-438a30c20f30'),
  ('2bcc7ae4-cf19-4f7c-9ccf-dcfd10d463f2', 'Espanhol', '315c1fc2-d946-4a4b-b3cf-6b89bb68f6e0'),
  ('c82c0a78-6d3b-4197-9bf8-36a6823760a8', 'Português', 'e1b8b504-694d-4de0-8ad0-bd6947e29c0f'),
  ('f936708a-44be-4834-9909-470e7ca85e23', 'Francês', 'dbcdc0f4-c1ff-4b71-a80a-1537467a396f');

INSERT INTO TOUR (ID_de_Tour, Programa, Cidade, ID_Guia)
VALUES 
    ('TOUR-20241130-001', '01', 'Rome', 'd4290269-7b44-41e0-a36c-cbfda1bf1c1d'),
    ('TOUR-20241130-002', '02', 'Rio de Janeiro', '1db4c891-c05e-4039-be6c-90fb2ef181d9'),
    ('TOUR-20241130-003', '03', 'London', 'b6a0e394-b051-4608-bbaa-d4526840af0f'),
    ('TOUR-20241130-004', '04', 'Barcelona',  '9cd57f6b-f52b-490c-8904-2296da4b4aa4'),
    ('TOUR-20241130-005', '05', 'Dubai', 'c82c0a78-6d3b-4197-9bf8-36a6823760a8'),
    ('TOUR-20241130-006', '06', 'New York','f936708a-44be-4834-9909-470e7ca85e23'),
    ('TOUR-20241130-007', '07', 'Berlin', 'e2c959da-f939-4c50-8b79-daefa5861597'),
    ('TOUR-20241130-008', '08', 'Los Angeles',  '2bcc7ae4-cf19-4f7c-9ccf-dcfd10d463f2'),
    ('TOUR-20241130-009', '09', 'Singapore', '8b8daf39-19e7-4732-b003-cc71fb5a2fb4'),
    ('TOUR-20241130-010', '10', 'Amsterdam', '3195c0ba-ac5d-4aa7-840d-9c855d6ba85b'),
    ('TOUR-20241130-011', '11', 'Sydney','741dc207-6a48-473a-91af-0b6d431c2b78'),
    ('TOUR-20241130-012', '12', 'Paris', '431619cf-b487-4055-99ec-e0df66e5f347');

INSERT INTO RESERVA_DE_TOUR (ID_da_Reserva, ID_de_Tour)
VALUES 
  ('607', 'TOUR-20241130-010'),
  ('849', 'TOUR-20241130-009'),
  ('650', 'TOUR-20241130-003'),
  ('513', 'TOUR-20241130-012'),
  ('697', 'TOUR-20241130-012'),
  ('315', 'TOUR-20241130-002'),
  ('57', 'TOUR-20241130-012'),
  ('374', 'TOUR-20241130-007'),
  ('841', 'TOUR-20241130-011'),
  ('66', 'TOUR-20241130-008'),
  ('251', 'TOUR-20241130-008'),
  ('250', 'TOUR-20241130-006');

INSERT INTO HOSPEDEIRO (ID_Funcionario, ID_Certidao_De_Formacao)
VALUES 
  ('802a0a98-11d7-4a2d-8164-0822459229e1', 'certificado-3721'),
  ('839dbb00-4aad-4e31-9910-08c9f7734e51', 'certificado-8156'),
  ('e9444ae5-402e-42ea-bb61-baf4cf9c4041', 'certificado-4732'),
  ('ef7b3a2b-8781-4437-9e7d-f45529c137ee', 'certificado-8471'),
  ('8a420b94-9149-4abd-beab-b6bc18ccab9d', 'certificado-1984'),
  ('90d9a2dd-6c2a-4b00-adb5-976d80c1ff57', 'certificado-9285'),
  ('477a0f82-f5fa-4dcc-9e94-a2cd3ab0525d', 'certificado-5621'),
  ('2deda703-117a-4cd4-85ff-77c13ae93687', 'certificado-3487'),
  ('9982df07-9a39-4a19-a11e-48ae76aaf293', 'certificado-6723'),
  ('2e0d3ea9-8f6d-446c-83d1-bd5f5e15827a', 'certificado-8235'),
  ('75b2a87a-303c-47e2-afe8-00a8782b4b35', 'certificado-1634'),
  ('e4c579a6-86a7-47cd-8984-fbdda06fa08e', 'certificado-4917');

INSERT INTO PILOTO (ID_Funcionario, ID_Licenca)
VALUES 
  ('9dfba68b-e41f-4be5-b26a-86dcc03a8aa5', 'licensa-2197'),
  ('a08a57e0-3ba0-48bb-9c11-c9396f896d57', 'licensa-4715'),
  ('2b4280cb-d648-4d62-9260-06eafd4d973a', 'licensa-5884'),
  ('6bde08d6-64be-4de1-a937-3a412ead9741', 'licensa-6549'),
  ('f873d51e-3d94-45e5-aeac-be622acc63be', 'licensa-3246'),
  ('95f2d3c7-0c13-46e1-9d16-33c215d922d6', 'licensa-7724'),
  ('8b5ab8fa-40e3-454a-be9d-c67cc3d1a951', 'licensa-1959'),
  ('adc83591-f304-48e2-8029-35b03b028442', 'licensa-5123'),
  ('208a57af-19a2-4d1c-8a0f-260e4c294db9', 'licensa-6014'),
  ('5894efb5-74bc-4c43-a489-d4e97eb75b4e', 'licensa-3232'),
  ('297f8ebd-abd2-4c7b-a36a-4e821d761f2f', 'licensa-9572'),
  ('520eb888-6ade-48fd-bf3d-39fc5423ddd1', 'licensa-6801');

INSERT INTO HOSPEDEIRO_VIAGEM(ID_da_Rota, ID_Funcionario)
VALUES 
    ('3e647c62-d449-4755-b702-7bb71cd628d0', '802a0a98-11d7-4a2d-8164-0822459229e1'),
    ('3e647c62-d449-4755-b702-7bb71cd628d0', '839dbb00-4aad-4e31-9910-08c9f7734e51'),
    ('3e647c62-d449-4755-b702-7bb71cd628d0', 'e9444ae5-402e-42ea-bb61-baf4cf9c4041'),
    ('3e647c62-d449-4755-b702-7bb71cd628d0', 'ef7b3a2b-8781-4437-9e7d-f45529c137ee'),   
    ('3e647c62-d449-4755-b702-7bb71cd628d0', '8a420b94-9149-4abd-beab-b6bc18ccab9d'),
    ('bbae8c8a-80c7-4a7f-b623-20304b200f75', '90d9a2dd-6c2a-4b00-adb5-976d80c1ff57'),
    ('bbae8c8a-80c7-4a7f-b623-20304b200f75', '477a0f82-f5fa-4dcc-9e94-a2cd3ab0525d'),
    ('bbae8c8a-80c7-4a7f-b623-20304b200f75', '2deda703-117a-4cd4-85ff-77c13ae93687'),
    ('bbae8c8a-80c7-4a7f-b623-20304b200f75', '9982df07-9a39-4a19-a11e-48ae76aaf293'),
    ('bbae8c8a-80c7-4a7f-b623-20304b200f75', '2e0d3ea9-8f6d-446c-83d1-bd5f5e15827a'),
    ('601a5df6-ac8a-4791-b08a-579cd57f5107', '75b2a87a-303c-47e2-afe8-00a8782b4b35'),
    ('601a5df6-ac8a-4791-b08a-579cd57f5107', 'e4c579a6-86a7-47cd-8984-fbdda06fa08e'),
    ('601a5df6-ac8a-4791-b08a-579cd57f5107', '802a0a98-11d7-4a2d-8164-0822459229e1'),
    ('601a5df6-ac8a-4791-b08a-579cd57f5107', '839dbb00-4aad-4e31-9910-08c9f7734e51'),
    ('601a5df6-ac8a-4791-b08a-579cd57f5107', 'e9444ae5-402e-42ea-bb61-baf4cf9c4041'),
    ('601a5df6-ac8a-4791-b08a-579cd57f5107', 'ef7b3a2b-8781-4437-9e7d-f45529c137ee'),
    ('601a5df6-ac8a-4791-b08a-579cd57f5107', '8a420b94-9149-4abd-beab-b6bc18ccab9d'),
    ('b5a486c1-6230-416f-ac46-102c949a8d0a', '802a0a98-11d7-4a2d-8164-0822459229e1'),
    ('b5a486c1-6230-416f-ac46-102c949a8d0a', '839dbb00-4aad-4e31-9910-08c9f7734e51'),
    ('b5a486c1-6230-416f-ac46-102c949a8d0a', 'e9444ae5-402e-42ea-bb61-baf4cf9c4041'),
    ('b5a486c1-6230-416f-ac46-102c949a8d0a', 'ef7b3a2b-8781-4437-9e7d-f45529c137ee'),
    ('b5a486c1-6230-416f-ac46-102c949a8d0a', '8a420b94-9149-4abd-beab-b6bc18ccab9d'),
    ('012db948-b26c-48b9-80f8-ebccb421fea6', '802a0a98-11d7-4a2d-8164-0822459229e1'),
    ('012db948-b26c-48b9-80f8-ebccb421fea6', '839dbb00-4aad-4e31-9910-08c9f7734e51'),
    ('012db948-b26c-48b9-80f8-ebccb421fea6', 'e9444ae5-402e-42ea-bb61-baf4cf9c4041'),
    ('012db948-b26c-48b9-80f8-ebccb421fea6', 'ef7b3a2b-8781-4437-9e7d-f45529c137ee'),
    ('012db948-b26c-48b9-80f8-ebccb421fea6', '8a420b94-9149-4abd-beab-b6bc18ccab9d'),
    ('71cd0b80-1ba8-4a68-a411-4d97fb664e0c', '802a0a98-11d7-4a2d-8164-0822459229e1'),   
    ('71cd0b80-1ba8-4a68-a411-4d97fb664e0c', '839dbb00-4aad-4e31-9910-08c9f7734e51'),
    ('71cd0b80-1ba8-4a68-a411-4d97fb664e0c', 'e9444ae5-402e-42ea-bb61-baf4cf9c4041'),
    ('71cd0b80-1ba8-4a68-a411-4d97fb664e0c', 'ef7b3a2b-8781-4437-9e7d-f45529c137ee'),
    ('71cd0b80-1ba8-4a68-a411-4d97fb664e0c', '8a420b94-9149-4abd-beab-b6bc18ccab9d'),
    ('fb65fb58-9145-4fd3-bede-0622afb495d4', '802a0a98-11d7-4a2d-8164-0822459229e1'),
    ('fb65fb58-9145-4fd3-bede-0622afb495d4', '839dbb00-4aad-4e31-9910-08c9f7734e51'),
    ('fb65fb58-9145-4fd3-bede-0622afb495d4', 'e9444ae5-402e-42ea-bb61-baf4cf9c4041'),
    ('fb65fb58-9145-4fd3-bede-0622afb495d4', 'ef7b3a2b-8781-4437-9e7d-f45529c137ee'),
    ('fb65fb58-9145-4fd3-bede-0622afb495d4', '8a420b94-9149-4abd-beab-b6bc18ccab9d'),
    ('d851c3b9-958b-4fbd-a52e-aaff4d0d4cd1', '802a0a98-11d7-4a2d-8164-0822459229e1'),
    ('d851c3b9-958b-4fbd-a52e-aaff4d0d4cd1', '839dbb00-4aad-4e31-9910-08c9f7734e51'),
    ('d851c3b9-958b-4fbd-a52e-aaff4d0d4cd1', 'e9444ae5-402e-42ea-bb61-baf4cf9c4041'),
    ('d851c3b9-958b-4fbd-a52e-aaff4d0d4cd1', 'ef7b3a2b-8781-4437-9e7d-f45529c137ee'),
    ('d851c3b9-958b-4fbd-a52e-aaff4d0d4cd1', '8a420b94-9149-4abd-beab-b6bc18ccab9d'),
    ('b3098e9e-5ebc-4553-a2dd-0c2619807aed', '802a0a98-11d7-4a2d-8164-0822459229e1'),
    ('b3098e9e-5ebc-4553-a2dd-0c2619807aed', '839dbb00-4aad-4e31-9910-08c9f7734e51'),
    ('b3098e9e-5ebc-4553-a2dd-0c2619807aed', 'e9444ae5-402e-42ea-bb61-baf4cf9c4041'),
    ('b3098e9e-5ebc-4553-a2dd-0c2619807aed', 'ef7b3a2b-8781-4437-9e7d-f45529c137ee'),
    ('b3098e9e-5ebc-4553-a2dd-0c2619807aed', '8a420b94-9149-4abd-beab-b6bc18ccab9d'),
    ('c464f144-56d8-4af0-a340-ecb90511153e', '802a0a98-11d7-4a2d-8164-0822459229e1'),
    ('c464f144-56d8-4af0-a340-ecb90511153e', '839dbb00-4aad-4e31-9910-08c9f7734e51'),
    ('c464f144-56d8-4af0-a340-ecb90511153e', 'e9444ae5-402e-42ea-bb61-baf4cf9c4041'),
    ('c464f144-56d8-4af0-a340-ecb90511153e', 'ef7b3a2b-8781-4437-9e7d-f45529c137ee'),
    ('c464f144-56d8-4af0-a340-ecb90511153e', '8a420b94-9149-4abd-beab-b6bc18ccab9d'),
    ('92752d3f-b8eb-4c5d-9e82-f2f1d7653826', '802a0a98-11d7-4a2d-8164-0822459229e1'),
    ('92752d3f-b8eb-4c5d-9e82-f2f1d7653826', '839dbb00-4aad-4e31-9910-08c9f7734e51'),
    ('92752d3f-b8eb-4c5d-9e82-f2f1d7653826', 'e9444ae5-402e-42ea-bb61-baf4cf9c4041'),
    ('92752d3f-b8eb-4c5d-9e82-f2f1d7653826', 'ef7b3a2b-8781-4437-9e7d-f45529c137ee'),
    ('92752d3f-b8eb-4c5d-9e82-f2f1d7653826', '8a420b94-9149-4abd-beab-b6bc18ccab9d'),
    ('8c52c7e1-3f1b-4f3a-afc5-de309a261750', '802a0a98-11d7-4a2d-8164-0822459229e1'),
    ('8c52c7e1-3f1b-4f3a-afc5-de309a261750', '839dbb00-4aad-4e31-9910-08c9f7734e51'),
    ('8c52c7e1-3f1b-4f3a-afc5-de309a261750', 'e9444ae5-402e-42ea-bb61-baf4cf9c4041'),
    ('8c52c7e1-3f1b-4f3a-afc5-de309a261750', 'ef7b3a2b-8781-4437-9e7d-f45529c137ee'),
    ('8c52c7e1-3f1b-4f3a-afc5-de309a261750', '8a420b94-9149-4abd-beab-b6bc18ccab9d');

INSERT INTO PILOTO_VIAGEM (ID_da_Rota, ID_Funcionario)
VALUES 
  ('601a5df6-ac8a-4791-b08a-579cd57f5107', '9dfba68b-e41f-4be5-b26a-86dcc03a8aa5'),
  ('601a5df6-ac8a-4791-b08a-579cd57f5107', 'a08a57e0-3ba0-48bb-9c11-c9396f896d57'),
  ('b5a486c1-6230-416f-ac46-102c949a8d0a', '9dfba68b-e41f-4be5-b26a-86dcc03a8aa5'),
  ('b5a486c1-6230-416f-ac46-102c949a8d0a', 'a08a57e0-3ba0-48bb-9c11-c9396f896d57'),
  ('012db948-b26c-48b9-80f8-ebccb421fea6', '9dfba68b-e41f-4be5-b26a-86dcc03a8aa5'),
  ('012db948-b26c-48b9-80f8-ebccb421fea6', 'a08a57e0-3ba0-48bb-9c11-c9396f896d57'),
  ('71cd0b80-1ba8-4a68-a411-4d97fb664e0c', '9dfba68b-e41f-4be5-b26a-86dcc03a8aa5'),
  ('71cd0b80-1ba8-4a68-a411-4d97fb664e0c', 'a08a57e0-3ba0-48bb-9c11-c9396f896d57'),
  ('fb65fb58-9145-4fd3-bede-0622afb495d4', '9dfba68b-e41f-4be5-b26a-86dcc03a8aa5'),
  ('fb65fb58-9145-4fd3-bede-0622afb495d4', 'a08a57e0-3ba0-48bb-9c11-c9396f896d57'),
  ('d851c3b9-958b-4fbd-a52e-aaff4d0d4cd1', '9dfba68b-e41f-4be5-b26a-86dcc03a8aa5'),
  ('d851c3b9-958b-4fbd-a52e-aaff4d0d4cd1', 'a08a57e0-3ba0-48bb-9c11-c9396f896d57'),
  ('b3098e9e-5ebc-4553-a2dd-0c2619807aed', '9dfba68b-e41f-4be5-b26a-86dcc03a8aa5'),
  ('b3098e9e-5ebc-4553-a2dd-0c2619807aed', 'a08a57e0-3ba0-48bb-9c11-c9396f896d57'),
  ('c464f144-56d8-4af0-a340-ecb90511153e', '9dfba68b-e41f-4be5-b26a-86dcc03a8aa5'),
  ('c464f144-56d8-4af0-a340-ecb90511153e', 'a08a57e0-3ba0-48bb-9c11-c9396f896d57'),
  ('92752d3f-b8eb-4c5d-9e82-f2f1d7653826', '9dfba68b-e41f-4be5-b26a-86dcc03a8aa5'),
  ('92752d3f-b8eb-4c5d-9e82-f2f1d7653826', 'a08a57e0-3ba0-48bb-9c11-c9396f896d57'),
  ('8c52c7e1-3f1b-4f3a-afc5-de309a261750', '9dfba68b-e41f-4be5-b26a-86dcc03a8aa5'),
  ('8c52c7e1-3f1b-4f3a-afc5-de309a261750', 'a08a57e0-3ba0-48bb-9c11-c9396f896d57');

INSERT INTO RESERVA_DE_ALOJAMENTO (ID_da_Reserva, ID_de_Alojamento)
VALUES 
  ('607', 'ALJ-20241130-001'),
  ('849', 'ALJ-20241130-002'),
  ('650', 'ALJ-20241130-003'),
  ('513', 'ALJ-20241130-004'),
  ('697', 'ALJ-20241130-005'),
  ('315', 'ALJ-20241130-0012'),
  ('57', 'ALJ-20241130-006'),
  ('374', 'ALJ-20241130-007'),
  ('841', 'ALJ-20241130-008'),
  ('66', 'ALJ-20241130-009'),
  ('251', 'ALJ-20241130-010'),
  ('250', 'ALJ-20241130-011');

INSERT INTO ORIENTACAO (ID_de_Tour, ID_Funcionario)
VALUES 
  ('TOUR-20241130-010', '3195c0ba-ac5d-4aa7-840d-9c855d6ba85b'),
  ('TOUR-20241130-009', '8b8daf39-19e7-4732-b003-cc71fb5a2fb4'),
  ('TOUR-20241130-003', 'b6a0e394-b051-4608-bbaa-d4526840af0f'),
  ('TOUR-20241130-001', 'd4290269-7b44-41e0-a36c-cbfda1bf1c1d'),
  ('TOUR-20241130-012', '431619cf-b487-4055-99ec-e0df66e5f347'),
  ('TOUR-20241130-002', '1db4c891-c05e-4039-be6c-90fb2ef181d9'),
  ('TOUR-20241130-004', '9cd57f6b-f52b-490c-8904-2296da4b4aa4'),
  ('TOUR-20241130-007', 'e2c959da-f939-4c50-8b79-daefa5861597'),
  ('TOUR-20241130-011', '741dc207-6a48-473a-91af-0b6d431c2b78'),
  ('TOUR-20241130-008', '2bcc7ae4-cf19-4f7c-9ccf-dcfd10d463f2'),
  ('TOUR-20241130-005', 'c82c0a78-6d3b-4197-9bf8-36a6823760a8'),
  ('TOUR-20241130-006', 'f936708a-44be-4834-9909-470e7ca85e23');
