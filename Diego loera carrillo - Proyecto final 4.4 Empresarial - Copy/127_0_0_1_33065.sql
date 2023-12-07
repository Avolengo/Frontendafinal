-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:33065
-- Tiempo de generación: 21-10-2022 a las 07:11:25
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inicio sesion`
--
CREATE DATABASE IF NOT EXISTS `inicio sesion` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `inicio sesion`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inicio sesion`
--
-- Creación: 18-10-2022 a las 06:08:27
--

CREATE TABLE `inicio sesion` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `inicio sesion`
--

INSERT INTO `inicio sesion` (`username`, `password`) VALUES
('diego1', '1234');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `inicio sesion`
--
ALTER TABLE `inicio sesion`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
