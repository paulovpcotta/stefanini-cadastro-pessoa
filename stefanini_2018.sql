-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: stefanini_2018.mysql.dbaas.com.br
-- Generation Time: 20-Jul-2018 às 00:15
-- Versão do servidor: 5.6.35-81.0-log
-- PHP Version: 5.6.30-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stefanini_2018`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `Cargo`
--

CREATE TABLE `Cargo` (
  `ID_CARGO` int(11) NOT NULL,
  `DS_CARGO` varchar(40) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `Linguagem`
--

CREATE TABLE `Linguagem` (
  `ID_LINGUAGEM` int(11) NOT NULL,
  `DS_LINGUAGEM` varchar(40) COLLATE latin1_general_ci NOT NULL,
  `SG_LINGUAGEM` varchar(3) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `Pessoa`
--

CREATE TABLE `Pessoa` (
  `ID_PESSOA` bigint(9) NOT NULL,
  `DS_NOME` varchar(300) COLLATE latin1_general_ci NOT NULL,
  `DS_EMAIL` varchar(300) COLLATE latin1_general_ci NOT NULL,
  `DS_CPF` varchar(11) COLLATE latin1_general_ci NOT NULL,
  `DS_TELEFONE` varchar(8) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `Profissao`
--

CREATE TABLE `Profissao` (
  `ID_PROFISSAO` int(11) NOT NULL,
  `ID_PESSOA` bigint(9) NOT NULL,
  `ID_CARGO` int(11) NOT NULL,
  `ID_LINGUAGEM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Cargo`
--
ALTER TABLE `Cargo`
  ADD PRIMARY KEY (`ID_CARGO`);

--
-- Indexes for table `Linguagem`
--
ALTER TABLE `Linguagem`
  ADD PRIMARY KEY (`ID_LINGUAGEM`);

--
-- Indexes for table `Pessoa`
--
ALTER TABLE `Pessoa`
  ADD PRIMARY KEY (`ID_PESSOA`);

--
-- Indexes for table `Profissao`
--
ALTER TABLE `Profissao`
  ADD PRIMARY KEY (`ID_PROFISSAO`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Cargo`
--
ALTER TABLE `Cargo`
  MODIFY `ID_CARGO` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Linguagem`
--
ALTER TABLE `Linguagem`
  MODIFY `ID_LINGUAGEM` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Pessoa`
--
ALTER TABLE `Pessoa`
  MODIFY `ID_PESSOA` bigint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Profissao`
--
ALTER TABLE `Profissao`
  MODIFY `ID_PROFISSAO` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
