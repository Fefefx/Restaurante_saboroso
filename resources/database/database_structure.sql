-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 21/09/2020 às 18:31
-- Versão do servidor: 10.4.14-MariaDB
-- Versão do PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `saboroso`
--
CREATE DATABASE IF NOT EXISTS `saboroso` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `saboroso`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_contacts`
--

DROP TABLE IF EXISTS `tb_contacts`;
CREATE TABLE IF NOT EXISTS `tb_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `message` text NOT NULL,
  `register` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_emails`
--

DROP TABLE IF EXISTS `tb_emails`;
CREATE TABLE IF NOT EXISTS `tb_emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(512) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_menus`
--

DROP TABLE IF EXISTS `tb_menus`;
CREATE TABLE IF NOT EXISTS `tb_menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `description` varchar(512) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `photo` varchar(256) NOT NULL,
  `register` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `tb_menus`
--

INSERT INTO `tb_menus` (`id`, `title`, `description`, `price`, `photo`, `register`) VALUES
(1, 'Bife de Costela com molho', 'Delicioso bife de costela com molho para matar a fome e se deliciar com o sabor.', '45.00', 'images/img_1.jpg', '2018-09-12 16:48:58'),
(2, 'Hambúrguer com Fritas', 'O pão do paraíso com o sabor maravilhoso da carne', '29.80', 'images/img_2.jpg', '2018-09-12 16:48:58'),
(3, 'Chili com Carne', 'Irresistível como nunca...', '29.40', 'images/img_3.jpg', '2018-09-12 16:48:58');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_reservations`
--

DROP TABLE IF EXISTS `tb_reservations`;
CREATE TABLE IF NOT EXISTS `tb_reservations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `people` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `register` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_users`
--

DROP TABLE IF EXISTS `tb_users`;
CREATE TABLE IF NOT EXISTS `tb_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `register` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `tb_users`
--

INSERT INTO `tb_users` (`id`, `name`, `email`, `password`, `register`) VALUES
(1, 'Felipe Pardim', 'felipe_pardim@gmail.com', '123456', '2020-09-21 16:00:12');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
