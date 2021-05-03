-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 03-Maio-2021 às 15:21
-- Versão do servidor: 8.0.21
-- versão do PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `livros`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `autores`
--

DROP TABLE IF EXISTS `autores`;
CREATE TABLE IF NOT EXISTS `autores` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Autor` varchar(250) NOT NULL,
  `DataDeNascimento` date NOT NULL,
  `PaisDeOrigem` varchar(250) NOT NULL,
  `EnderecoDoAutor` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `autores`
--

INSERT INTO `autores` (`ID`, `Autor`, `DataDeNascimento`, `PaisDeOrigem`, `EnderecoDoAutor`) VALUES
(1, 'J. K. Rowling', '1971-08-14', 'Inglattera', '3227  Fairmont Avenue'),
(2, 'J. K. Rowling\r\n', '1971-08-14', 'Inglattera\r\n', '3227  Fairmont Avenue\r\n'),
(3, 'J. K. Rowling', '1971-08-14', 'Inglattera\r\n', '3227  Fairmont Avenue'),
(4, 'J. K. Rowling', '1971-08-14', 'Inglattera', '3227  Fairmont Avenue'),
(5, 'Gillian Flynn\r\n', '2000-07-17', 'Estados Unidos\r\n', '2103  Randall Drive\r\n'),
(6, 'Veríssimo\r\n', '2016-01-03', 'Brasil\r\n', 'Rocky Mount, 27801\r\n'),
(7, 'Neil Gaiman\r\n', '2010-09-23', 'Inglattera\r\n', 'Cut And Shoot, 77301\r\n'),
(8, 'Clive Baker\r\n', '2006-06-28', 'Estados Unidos\r\n', '2496 Rose Avenue\r\n'),
(9, 'Rodrigo Polesso\r\n', '2001-02-17', 'Brasil\r\n', '3788 Wetzel Lane\r\n'),
(10, 'Ruy Ohtake\r\n', '2016-01-03', 'Brasil\r\n', '2710 Bobcat Drive\r\n');

-- --------------------------------------------------------

--
-- Estrutura da tabela `compra`
--

DROP TABLE IF EXISTS `compra`;
CREATE TABLE IF NOT EXISTS `compra` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `JaComprei` bit(1) NOT NULL,
  `DataDeCompra` date DEFAULT NULL,
  `Valor` float(11,2) DEFAULT NULL,
  `Rating` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `compra`
--

INSERT INTO `compra` (`ID`, `JaComprei`, `DataDeCompra`, `Valor`, `Rating`) VALUES
(1, b'1', '2005-02-03', 20.90, 'Muito Bom'),
(2, b'1', '2005-02-04', 18.79, 'gostei'),
(3, b'0', '0000-00-00', 50.36, NULL),
(4, b'0', '0000-00-00', 15.21, NULL),
(5, b'0', '0000-00-00', 60.23, NULL),
(6, b'0', '0000-00-00', 10.00, NULL),
(7, b'1', '2005-02-03', 20.90, 'muito bom \r\n'),
(8, b'1', '2004-02-03', 17.16, 'gostei \r\n'),
(9, b'1', '2019-01-25', 9.81, 'Maravilhoso\r\n'),
(10, b'0', '0000-00-00', 20.55, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `editoras`
--

DROP TABLE IF EXISTS `editoras`;
CREATE TABLE IF NOT EXISTS `editoras` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Editora` varchar(250) NOT NULL,
  `TelefoneDaEditora` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `editoras`
--

INSERT INTO `editoras` (`ID`, `Editora`, `TelefoneDaEditora`) VALUES
(1, 'Rocco', '202-555-0171'),
(2, 'Rocco', '202-555-0171'),
(3, 'Rocco', '202-555-0171'),
(4, 'Rocco', '202-555-0171'),
(5, 'Intriseca\r\n', '202-555-0187'),
(6, 'Lero-lero\r\n', '202-555-0154'),
(7, 'Rocco\r\n', '202-555-0171'),
(8, 'Editora Dark Sense\r\n', '202-555-0185'),
(9, 'Editora Gente\r\n', '202-555-0110'),
(10, 'Instituto Tomie Ohtake\r\n', '202-555-0134');

-- --------------------------------------------------------

--
-- Estrutura da tabela `livros`
--

DROP TABLE IF EXISTS `livros`;
CREATE TABLE IF NOT EXISTS `livros` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nomes` varchar(250) NOT NULL,
  `genero` varchar(250) NOT NULL,
  `NumeroDePaginas` int NOT NULL,
  `DataDePublicacao` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `livros`
--

INSERT INTO `livros` (`id`, `nomes`, `genero`, `NumeroDePaginas`, `DataDePublicacao`) VALUES
(1, 'Harry Potter e a Pedra Filosofal\r\n', 'Fantasia\r\n', 368, '2007-03-02'),
(2, 'Harry Potter e o Prisioneiro de Azkaban\r\n', 'Fantasia\r\n', 598, '2012-02-04'),
(3, 'Harry Potter e a Ordem da Fênix\r\n', 'Fantasia\r\n', 798, '2005-08-20'),
(4, 'Harry Potter e a Câmara Secreta\r\n', 'Fantasia\r\n', 328, '2019-01-25'),
(5, 'Garota Exemplar\r\n', 'Suspense\r\n', 5, '2009-10-12'),
(6, 'Diálogos Impossíveis\r\n', 'Comédia\r\n', 208, '2005-10-11'),
(7, 'Harry Potter e o Prisioneiro de Azkaban\r\n', 'Fantasia\r\n', 368, '2005-02-03'),
(8, 'Arafat \r\n', 'Suspense\r\n', 158, '2020-02-03'),
(9, 'Este não é mais um livro de dieta\r\n', 'Auto-Ajuda\r\n', 988, '2012-02-04'),
(10, 'Atenção Plena: Mindfulness\r\n', 'Ficção Científica\r\n', 122, '2005-08-20');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
