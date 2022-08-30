-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15-Ago-2022 às 14:53
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `vocabulario`
--
CREATE DATABASE IF NOT EXISTS `vocabulario` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `vocabulario`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `palavras_comuns`
--

CREATE TABLE `palavras_comuns` (
  `id_palavra` int(11) NOT NULL,
  `palavra` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

-- --------------------------------------------------------

--
-- Estrutura da tabela `siglas`
--

CREATE TABLE `siglas` (
`id_palavra` int(11) NOT NULL,
  `palavra` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

-- --------------------------------------------------------

--
-- Estrutura da tabela `nomes_proprios`
--

CREATE TABLE `nomes_proprios` (
`id_palavra` int(11) NOT NULL,
  `palavra` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

-- --------------------------------------------------------

--
-- Estrutura da tabela `palavroes`
--

CREATE TABLE `palavroes` (
`id_palavra` int(11) NOT NULL,
  `palavra` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

-- --------------------------------------------------------

--
-- Estrutura da tabela `girias`
--

CREATE TABLE `girias` (
`id_palavra` int(11) NOT NULL,
  `palavra` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

-- --------------------------------------------------------

--
-- Estrutura da tabela `ditados_populares`
--

CREATE TABLE `ditados_populares` (
`id_palavra` int(11) NOT NULL,
  `palavra` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

-- --------------------------------------------------------

--
-- Estrutura da tabela `generalizacoes`
--

CREATE TABLE `generalizacoes` (
`id_palavra` int(11) NOT NULL,
  `palavra` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

-- --------------------------------------------------------

--
-- Estrutura da tabela `opiniao_politica`
--

CREATE TABLE `opiniao_politica` (
`id_palavra` int(11) NOT NULL,
  `palavra` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

-- --------------------------------------------------------

--
-- Estrutura da tabela `preconceito`
--

CREATE TABLE `preconceito` (
`id_palavra` int(11) NOT NULL,
  `palavra` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliches`
--

CREATE TABLE `cliches` (
`id_palavra` int(11) NOT NULL,
  `palavra` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------



--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `cpf` varchar(14) DEFAULT NULL,
  `tipo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`, `cpf`, `tipo`) VALUES
(1, 'ANDERSON VANIN', 'teste@email.com', '81dc9bdb52d04dc20036dbd8313ed055', '111.222.333-44', 1),
(2, 'ALUNO DA SILVA', 'aluno@email.com', '81dc9bdb52d04dc20036dbd8313ed055', '111.222.333-44', 2),
(3, 'CICLANO DA SILVA', 'ciclano@email.com', '81dc9bdb52d04dc20036dbd8313ed055', '111.222.333-44', 2),
(4, 'MARIAZINHA DA SILVA', 'maria@email.com', '81dc9bdb52d04dc20036dbd8313ed055', '111.222.333-44', 2),
(5, 'Julia', 'julia@email.com', '81dc9bdb52d04dc20036dbd8313ed055', '111.222.333-44', 2),
(6, 'aluno etec', 'aluno@email.com', 'd93591bdf7860e1e4ee2fca799911215', '111.222.333-44', 2),
(7, 'Criatura', 'criatura@email.com', '81dc9bdb52d04dc20036dbd8313ed055', '111.222.333-44', 2);

--
-- Índices para tabelas despejadas
--
ALTER TABLE `cliches`
  ADD PRIMARY KEY (`id_palavra`);

ALTER TABLE `ditados_populares`
  ADD PRIMARY KEY (`id_palavra`);

ALTER TABLE `generalizacoes`
  ADD PRIMARY KEY (`id_palavra`);

ALTER TABLE `girias`
  ADD PRIMARY KEY (`id_palavra`);

ALTER TABLE `nomes_proprios`
  ADD PRIMARY KEY (`id_palavra`);

ALTER TABLE `opiniao_politica`
  ADD PRIMARY KEY (`id_palavra`);

ALTER TABLE `palavras_comuns`
  ADD PRIMARY KEY (`id_palavra`);

ALTER TABLE `palavroes`
  ADD PRIMARY KEY (`id_palavra`);

ALTER TABLE `preconceito`
  ADD PRIMARY KEY (`id_palavra`);

ALTER TABLE `siglas`
  ADD PRIMARY KEY (`id_palavra`);

ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);


--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cliches`
--
ALTER TABLE `cliches`
  MODIFY `id_palavra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `ditados_populares`
--
ALTER TABLE `ditados_populares`
  MODIFY `id_palavra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `generalizacoes`
--
ALTER TABLE `generalizacoes`
  MODIFY `id_palavra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `girias`
--
ALTER TABLE `girias`
  MODIFY `id_palavra` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `nomes_proprios`
--
ALTER TABLE `nomes_proprios`
  MODIFY `id_palavra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;


--
-- AUTO_INCREMENT de tabela `opiniao_politica`
--
ALTER TABLE `opiniao_politica`
  MODIFY `id_palavra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `palavras_comuns`
--
ALTER TABLE `palavras_comuns`
  MODIFY `id_palavra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `palavroes`
--
ALTER TABLE `palavroes`
  MODIFY `id_palavra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `preconceito`
--
ALTER TABLE `preconceito`
  MODIFY `id_palavra` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `siglas`
--
ALTER TABLE `siglas`
  MODIFY `id_palavra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
