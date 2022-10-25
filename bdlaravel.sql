-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 04-Out-2022 às 14:52
-- Versão do servidor: 5.7.36
-- versão do PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bdlaravel`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbcategoria`
--

DROP TABLE IF EXISTS `tbcategoria`;
CREATE TABLE IF NOT EXISTS `tbcategoria` (
  `idCategoria` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(100) NOT NULL,
  PRIMARY KEY (`idCategoria`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbcategoria`
--

INSERT INTO `tbcategoria` (`idCategoria`, `categoria`) VALUES
(1, 'Tecnologia'),
(3, 'Alimento');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbcliente`
--

DROP TABLE IF EXISTS `tbcliente`;
CREATE TABLE IF NOT EXISTS `tbcliente` (
  `idCliente` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `dtNasc` date NOT NULL,
  `estadoCivil` varchar(10) NOT NULL,
  `endereco` varchar(200) NOT NULL,
  `numero` int(4) NOT NULL,
  `complemento` varchar(20) NOT NULL,
  `cep` int(10) NOT NULL,
  `cidade` varchar(200) NOT NULL,
  `estado` varchar(300) NOT NULL,
  `rg` int(15) NOT NULL,
  `cpf` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `fone` int(15) NOT NULL,
  `celular` int(15) NOT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbcliente`
--

INSERT INTO `tbcliente` (`idCliente`, `nome`, `dtNasc`, `estadoCivil`, `endereco`, `numero`, `complemento`, `cep`, `cidade`, `estado`, `rg`, `cpf`, `email`, `fone`, `celular`) VALUES
(1, 'nicjan', '2022-08-20', 'solteira', 'avenida pasteur', 745, 'apart 38', 98763555, 'são paulo', 'sp', 767789876, 234567891, 'nicjan@gmail.com', 987654321, 67898765);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbcontato`
--

DROP TABLE IF EXISTS `tbcontato`;
CREATE TABLE IF NOT EXISTS `tbcontato` (
  `idContato` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(40) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `fone` varchar(40) DEFAULT NULL,
  `assunto` varchar(40) DEFAULT NULL,
  `mensagem` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`idContato`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbcontato`
--

INSERT INTO `tbcontato` (`idContato`, `nome`, `email`, `fone`, `assunto`, `mensagem`) VALUES
(1, 'Ana', 'ana@gmail.com', '1199999-9999', 'Assunto ana', 'msg ana');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbpedido`
--

DROP TABLE IF EXISTS `tbpedido`;
CREATE TABLE IF NOT EXISTS `tbpedido` (
  `codigo_compra` int(11) NOT NULL AUTO_INCREMENT,
  `data_hora` datetime NOT NULL,
  `cpf_cliente` varchar(11) NOT NULL,
  `valor_total` varchar(45) NOT NULL,
  `tipo_pagamento` varchar(20) NOT NULL,
  PRIMARY KEY (`codigo_compra`),
  KEY `cpf_cliente` (`cpf_cliente`)
) ENGINE=MyISAM AUTO_INCREMENT=87584376 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbpedido`
--

INSERT INTO `tbpedido` (`codigo_compra`, `data_hora`, `cpf_cliente`, `valor_total`, `tipo_pagamento`) VALUES
(1, '2022-05-15 22:05:45', '234567891', '3500', 'dinheiro');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbproduto`
--

DROP TABLE IF EXISTS `tbproduto`;
CREATE TABLE IF NOT EXISTS `tbproduto` (
  `idProduto` int(11) NOT NULL AUTO_INCREMENT,
  `idCategoria` int(11) NOT NULL,
  `produto` varchar(100) NOT NULL,
  `valor` varchar(100) NOT NULL,
  PRIMARY KEY (`idProduto`),
  KEY `idCategoria` (`idCategoria`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbproduto`
--

INSERT INTO `tbproduto` (`idProduto`, `idCategoria`, `produto`, `valor`) VALUES
(1, 1, 'Monitor', '3500'),
(2, 2, 'Mouse', '100'),
(3, 3, 'Banana', '10');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
