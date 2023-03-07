CREATE DATABASE projetoPi;
USE projetoPi;
CREATE TABLE tbContato(
    idContato INT PRIMARY KEY AUTO_INCREMENT,
    numeroTelefone VARCHAR (30) NOT NULL,
    enderecoEmail VARCHAR(45) NOT NULL
) auto_increment = 1;
CREATE TABLE tbEndereco(
    idEndereco INT PRIMARY KEY AUTO_INCREMENT,
    CEP CHAR (8),
    País VARCHAR (35),
    Estado VARCHAR (35),
    Cidade VARCHAR (35),
    Bairro VARCHAR (35),
    Logradouro VARCHAR(35),
    NumeroEndereco VARCHAR(35)
) auto_increment = 1;
CREATE TABLE tbProduto (
    idProduto INT PRIMARY KEY AUTO_INCREMENT,
    nomeProduto VARCHAR(50),
    DescricaoProduto VARCHAR(50),
    loteProduto VARCHAR (50),
    valorProduto DECIMAL,
    categoriaProduto VARCHAR (50),
    temperaturaProduto VARCHAR(50)
) auto_increment = 1;
CREATE TABLE tbDadosArduino(
    idArduino INT PRIMARY KEY AUTO_INCREMENT,
    tipoSensor VARCHAR (35),
    modeloSensor VARCHAR(35),
    modeloArduino VARCHAR(35),
    espacoRadar VARCHAR(50),
    Datahora DATETIME,
    StatusSensor VARCHAR (50)
) auto_increment = 1;
CREATE TABLE tbLogin(
    idLogin INT PRIMARY KEY AUTO_INCREMENT,
    emailCliente VARCHAR (50),
    senhaCliente VARCHAR (20)
) auto_increment = 1;
CREATE TABLE tbFonecedor(
    idFonecedor INT PRIMARY KEY AUTO_INCREMENT,
    endereco VARCHAR(50),
    nomeColaborador VARCHAR (50),
    nomeProduto VARCHAR (50),
    nomeEmpresaTransporte varchar(50),
    contatoEmail VARCHAR(50)
) auto_increment = 1;
CREATE TABLE tbEmpresa(
    idEmpresa INT PRIMARY KEY AUTO_INCREMENT,
    endereco VARCHAR(50),
    nomeEmpresa VARCHAR(50),
    nomeFonecedor VARCHAR(50),
    nomeColaborador VARCHAR(50),
    contatoEmail VARCHAR(50),
    nomeEmpresaTransporte VARCHAR (50),
    nomeProduto VARCHAR(50)
) auto_increment = 1;
CREATE TABLE tbEmpresaTransporte(
    idEmpresaTransporte INT PRIMARY KEY AUTO_INCREMENT,
    nomeEmpresaTransporte VARCHAR(50),
    nomeColaborador VARCHAR(50),
    contatoEmail VARCHAR(50),
    nomeEmpresasClientes VARCHAR(50),
    tipoTransporte VARCHAR(50),
    valorTransporte DECIMAL,
    endereco VARCHAR(50)
) auto_increment = 1;
CREATE TABLE tbColaborador (
    idColaborador INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR (50),
    contatoEmail VARCHAR(50),
    funcao VARCHAR(50),
    nomeEmpresa VARCHAR(50),
    endereco VARCHAR(50)
) auto_increment = 1;
CREATE TABLE tbTipoTransporte(
    idTransporte INT PRIMARY KEY AUTO_INCREMENT,
    placa VARCHAR (20),
    modelo VARCHAR(50),
    cor VARCHAR(20),
    tipoEntrega VARCHAR (50),
    nomeEmpresaTransporte VARCHAR(50)
) auto_increment = 1;
-- INICIO DE INSERIR DADOS 
DESC tbContato;
SELECT *
FROM tbContato;
INSERT INTO tbContato
VALUES (
        NULL,
        '(11) 3922-8794',
        'joana_lima@lajescobre.com'
    ),
    (
        NULL,
        '(31) 3739-5551',
        'samueltheorezende@raffinimobiliario.com.br'
    ),
    (
        NULL,
        '(67) 2981-8471',
        'gustavo_damota@globomail.com'
    ),
    (
        NULL,
        '(63) 3687-8620',
        'tereza.carla.ferreira@fiorecomunicacao.com.br'
    ),
    (
        NULL,
        '(68) 2945-9042',
        'rayssa.mirella.castro@iahoo.com'
    ),
    (
        NULL,
        '(75) 2809-4980',
        'paulo.oliver.santos@saa.com.br'
    ),
    (
        NULL,
        '(82) 3886-3611',
        'luna_esther_caldeira@fk1.com.br'
    );
DESC tbEndereco;
SELECT *
FROM tbEndereco;
INSERT INTO tbEndereco
VALUES (
        NULL,
        '78721526',
        'Brasil',
        'MT',
        'Rondonópolis',
        'Residencial Vila Mineira',
        'Rua paraíso',
        '496'
    ),
    (
        NULL,
        '76875730',
        'Brasil',
        'RO',
        'Ariquemes',
        'Jardim Primavera',
        'Rua Tulipa',
        '173'
    ),
    (
        NULL,
        '69921431',
        'Brasil',
        'AC',
        'Rio Branco',
        'Montanhês',
        'Travessa Melancia',
        '690'
    );
DESC tbProduto;
SELECT *
FROM tbProduto;
INSERT INTO tbProduto
VALUES (
        NULL,
        'Vacina COVID-19',
        'A vacina contra o covid-19',
        '12544-560',
        250.00,
        'Saúde',
        '2°'
    ),
    (
        NULL,
        'Suco',
        'Suco de maçã verde',
        '15484843-64235',
        12.0,
        'Comida',
        '12°'
    ),
    (
        NULL,
        'Chocolate',
        'Chocolate ao leite',
        '124005-456',
        24.50,
        'Doce/Comida',
        '10°'
    );
DESC tbDadosArduino;
INSERT INTO tbDadosArduino
VALUES (
        NULL,
        'Sensor de temperatura',
        'LM35',
        'UNO',
        'X metros',
        '2023-02-28 12:52:42',
        '30°C'
    ),
    (
        NULL,
        'Sensor de umidade e temperatura',
        'DHT11',
        'UNO',
        'Y metros',
        '2019-12-20 14:12:01',
        '15°C e 75 porcento de umidade'
    ),
    (
        NULL,
        'sensor de proximidade',
        'TRC5000',
        'UNO',
        '45cm',
        '2021-10-13 12:45:00',
        'Objeto dectado'
    ),
    (
        NULL,
        'sensor de luminosidade',
        'LDR',
        'UNO',
        '15cm',
        '2023-03-03 15:06:12',
        'Escuro'
    );
DESC tbLogin;
SELECT *
FROM tbLogin;
INSERT INTO tbLogin
VALUES (
        NULL,
        'renataisadoraribeiro@boll.com.br',
        '12345678'
    ),
    (
        NULL,
        'jenniferayladasneves@ieee.org',
        '1245785214'
    ),
    (
        NULL,
        'laura.stella.almada@transicao.com',
        'S&nh@F@rt&123456789'
    );
DESC tbFonecedor;
SELECT *
FROM tbFonecedor;
INSERT INTO tbFonecedor
VALUES (
        NULL,
        'Rua Vaz Gondim',
        'Melo',
        'Vacina covid-19',
        'Sedex',
        'filipe-melo77@fojsc.unesp.br'
    ),
    (
        NULL,
        'Avenida Recanto Verde',
        'Caio',
        'Chocolates',
        'Sedex',
        'caio-vieira88@zk.arq.br'
    ),
    (
        NULL,
        'Rua Clementino Fraga',
        'Giovanni',
        'Mercadoria Congelada',
        'Mercado Livre',
        'giovannimarcioramos@aguianet.com.br'
    );
DESC tbEmpresa;
INSERT INTO tbEmpresa
VALUES (
        NULL,
        'Rua Juaperi',
        'MedMais',
        'Melo',
        'Marcio',
        'marcio@gmail.com',
        'Roda+',
        'Vacina covid-19'
    ),
    (
        NULL,
        'Rua das flores',
        'BomBom',
        'Caio',
        'Diana',
        'dianareis@gmail',
        'Roda+',
        'Chocolates'
    ),
    (
        NULL,
        'Rua da alegria',
        'Mercado Polo',
        'Paulo',
        'Gio',
        'paulonorte@outlook.com',
        'correr',
        'Produtos frios'
    );
SELECT *
FROM tbEmpresaTransporte;
DESC tbEmpresaTransporte;
INSERT INTO tbEmpresaTransporte
VALUES (
        NULL,
        'Roda+',
        'Mariana',
        'marianasolar@rodamais.com',
        'BomBom',
        'caminhão',
        200.000,
        'Rua Juaperi'
    ),
    (
        NULL,
        'Rodar',
        'Bruno',
        'brunocardoso@rodar.com.br',
        'MedMAIS',
        'caminhão',
        500.000,
        'Rua das flores'
    );
DESC tbColaborador;
INSERT INTO tbColaborador
VALUES (
        NULL,
        'Vanessa',
        'vanessa@gmail.com',
        'Gerente',
        'BomBom',
        'Rua folia'
    ),
    (
        NULL,
        'Bruna',
        'bruna@outlook.com',
        'Programadora',
        'MedMAIS',
        'Rua das cores'
    );
DESC tbTipoTransporte;
INSERT INTO tbTipoTransporte
VALUES (
        NULL,
        '55215DOK',
        'Caminhão',
        'dwc',
        'preto',
        'frios'
    ),
    (
        NULL,
        '42575JSL',
        'Caminhão',
        'jdh',
        'Branca',
        'Rápida'
    );