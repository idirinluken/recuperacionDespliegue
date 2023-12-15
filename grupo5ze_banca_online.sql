-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 18-05-2023 a las 11:01:15
-- Versión del servidor: 10.3.39-MariaDB-log
-- Versión de PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `grupo5ze_banca_online`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuenta_bancaria`
--

CREATE TABLE `cuenta_bancaria` (
  `iban` varchar(28) NOT NULL,
  `saldo` int(11) NOT NULL,
  `dni` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `cuenta_bancaria`
--

INSERT INTO `cuenta_bancaria` (`iban`, `saldo`, `dni`) VALUES
('ES12 2090 0000 29 1000000003', -1715, '87654321B'),
('ES12 2090 0000 29 1000000004', 124, '87654321B'),
('ES12 2090 0000 29 1000000005', 0, '23456789L'),
('ES12 2090 0000 29 1000000007', 0, '23456789L'),
('ES12 2090 0000 29 1000000009', 0, '23456789L'),
('ES12 2090 0000 29 1000000010', 2222, '45678912G'),
('ES12 2090 0000 29 1000000011', 0, '45678912G'),
('ES12 2090 0000 29 1000000012', 0, '67524866S'),
('ES12 2090 0000 29 1000000013', 0, '67524866S'),
('ES12 2090 0000 29 1000000014', 500, '87425368H'),
('ES12 2090 0000 29 1000000015', 500, '87425368H'),
('ES12 2090 0000 29 1000000016', 9949559, '33333333G'),
('ES12 2090 0000 29 1000000017', 112, '33333333G'),
('ES12 2090 0000 29 1000000022', 0, '99999999A'),
('ES12 2090 0000 29 1000000023', 0, '99999999A'),
('ES12 2090 0000 29 1000000024', 0, '23456789L'),
('ES12 2090 0000 29 1000000025', 99999999, '12345678A'),
('ES12 2090 0000 29 1000000026', 0, '12345678A'),
('ES12 2090 0000 29 1000000027', 0, '24665634E'),
('ES12 2090 0000 29 1000000028', 0, '24665634E'),
('ES12 2090 0000 29 1000000029', 0, '12345678A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuenta_mov`
--

CREATE TABLE `cuenta_mov` (
  `id_movimiento` int(11) NOT NULL,
  `iban` varchar(28) NOT NULL,
  `fecha` date NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `cuenta_mov`
--

INSERT INTO `cuenta_mov` (`id_movimiento`, `iban`, `fecha`, `cantidad`) VALUES
(21, 'ES12 2090 0000 29 1000000016', '2023-01-25', 54),
(22, 'ES12 2090 0000 29 1000000016', '2023-01-25', 22),
(23, 'ES12 2090 0000 29 1000000017', '2023-01-25', 6),
(24, 'ES12 2090 0000 29 1000000017', '2023-01-25', 6),
(25, 'ES12 2090 0000 29 1000000016', '2023-01-25', 2),
(45, 'ES12 2090 0000 29 1000000016', '2023-01-25', 10000),
(47, 'ES12 2090 0000 29 1000000003', '2023-01-25', 77),
(48, 'ES12 2090 0000 29 1000000003', '2023-01-25', 50),
(49, 'ES12 2090 0000 29 1000000003', '2023-01-25', 50),
(50, 'ES12 2090 0000 29 1000000003', '2023-01-25', 80),
(51, 'ES12 2090 0000 29 1000000004', '2023-01-25', 80),
(56, 'ES12 2090 0000 29 1000000017', '2023-01-26', 100),
(57, 'ES12 2090 0000 29 1000000003', '2023-01-27', 500),
(58, 'ES12 2090 0000 29 1000000003', '2023-01-27', 5),
(59, 'ES12 2090 0000 29 1000000003', '2023-01-27', 2222),
(60, 'ES12 2090 0000 29 1000000010', '2023-01-27', 2222),
(64, 'ES12 2090 0000 29 1000000015', '2023-01-31', 500),
(65, 'ES12 2090 0000 29 1000000003', '2023-02-03', 500),
(66, 'ES12 2090 0000 29 1000000003', '2023-02-03', 500),
(67, 'ES12 2090 0000 29 1000000014', '2023-02-03', 500),
(68, 'ES12 2090 0000 29 1000000025', '2023-03-23', 99999999);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimientos`
--

CREATE TABLE `movimientos` (
  `id_movimiento` int(11) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `concepto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `movimientos`
--

INSERT INTO `movimientos` (`id_movimiento`, `tipo`, `concepto`) VALUES
(1, 'retiro', 'prueba'),
(2, 'retiro', 'prueba'),
(3, 'ingreso', 'prueba'),
(4, 'ingreso', 'prueba'),
(5, 'ingreso', 'prueba'),
(6, 'ingreso', 'prueba'),
(7, 'ingreso', 'prueba'),
(8, 'ingreso', 'Ha ingresado dinero'),
(9, 'ingreso', 'Ha ingresado dinero'),
(10, 'ingreso', 'Ha ingresado dinero'),
(11, 'ingreso', 'Ha ingresado dinero'),
(12, 'ingreso', 'Ha ingresado dinero'),
(13, 'ingreso', 'Ha ingresado dinero'),
(15, 'ingreso', 'Ha ingresado dinero'),
(16, 'ingreso', 'Ha ingresado dinero'),
(17, 'ingreso', 'Ha ingresado dinero'),
(18, 'ingreso', 'Ha ingresado dinero'),
(19, 'ingreso', 'Ha ingresado dinero'),
(20, 'ingreso', 'Ha ingresado dinero'),
(21, 'ingreso', 'Ha ingresado dinero'),
(22, 'ingreso', 'Ha ingresado dinero'),
(23, 'ingreso', 'Ha ingresado dinero'),
(24, 'ingreso', 'Ha ingresado dinero'),
(25, 'ingreso', 'Ha retirado dinero'),
(26, 'Realizar tranferencia', 'toma dinero fiera'),
(27, 'Recibir tranferencia', 'toma dinero fiera'),
(28, 'Realizar tranferencia', 'rgd'),
(29, 'Recibir tranferencia', 'rgd'),
(30, 'Realizar tranferencia', 'rgd'),
(31, 'Recibir tranferencia', 'rgd'),
(32, 'Realizar tranferencia', 'rgd'),
(33, 'Recibir tranferencia', 'rgd'),
(34, 'Realizar tranferencia', 'rgd'),
(35, 'Recibir tranferencia', 'rgd'),
(36, 'Realizar tranferencia', 'rgd'),
(37, 'Recibir tranferencia', 'rgd'),
(38, 'Realizar tranferencia', 'aaa'),
(39, 'Recibir tranferencia', 'aaa'),
(40, 'Realizar tranferencia', 'aaa'),
(41, 'Recibir tranferencia', 'aaa'),
(42, 'Realizar tranferencia', 'po'),
(43, 'Recibir tranferencia', 'po'),
(44, 'Realizar tranferencia', 'po'),
(45, 'Realizar tranferencia', 'po'),
(47, 'ingreso', 'Ha ingresado dinero'),
(48, 'ingreso', 'Ha ingresado dinero'),
(49, 'ingreso', 'Ha retirado dinero'),
(50, 'Realizar tranferencia', 'pobre'),
(51, 'Recibir tranferencia', 'pobre'),
(54, 'ingreso', 'Ha ingresado dinero'),
(55, 'Realizar tranferencia', 'cena'),
(56, 'Recibir tranferencia', 'cena'),
(57, 'ingreso', 'Ha ingresado dinero'),
(58, 'ingreso', 'Ha ingresado dinero'),
(59, 'Realizar tranferencia', 'cdfg'),
(60, 'Recibir tranferencia', 'cdfg'),
(61, 'ingreso', 'Ha ingresado dinero'),
(62, 'ingreso', 'Ha retirado dinero'),
(63, 'Realizar tranferencia', 'dfhgf'),
(64, 'Recibir tranferencia', 'dfhgf'),
(65, 'ingreso', 'Ha ingresado dinero'),
(66, 'Realizar tranferencia', 'qqq'),
(67, 'Recibir tranferencia', 'qqq'),
(68, 'ingreso', 'Ha ingresado dinero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `dni` varchar(9) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `pasahitza` varchar(50) NOT NULL,
  `admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`dni`, `nombre`, `apellido`, `pasahitza`, `admin`) VALUES
('12345678A', 'Hodei', 'Axpe', 'hodei123', 1),
('23456789L', 'Jokin', 'Cadinanos', 'jokin123', 1),
('24665634E', 'uwu', 'owo', '1234', 0),
('33333333G', 'Yo', 'Yo', 'yo123', 1),
('45678912G', 'Unatz', 'Garcia', 'unatz123', 1),
('67524866S', 'Fernando', 'Garcia', 'fernando123', 0),
('87425368H', 'Alfredo', 'Duro', 'alfredo123', 0),
('87654321B', 'Pepe', 'Viyuela', 'pepe', 0),
('99999999A', 'a', 'a', 'a', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cuenta_bancaria`
--
ALTER TABLE `cuenta_bancaria`
  ADD PRIMARY KEY (`iban`),
  ADD KEY `dni` (`dni`);

--
-- Indices de la tabla `cuenta_mov`
--
ALTER TABLE `cuenta_mov`
  ADD PRIMARY KEY (`id_movimiento`,`iban`),
  ADD KEY `iban` (`iban`);

--
-- Indices de la tabla `movimientos`
--
ALTER TABLE `movimientos`
  ADD PRIMARY KEY (`id_movimiento`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`dni`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `movimientos`
--
ALTER TABLE `movimientos`
  MODIFY `id_movimiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cuenta_bancaria`
--
ALTER TABLE `cuenta_bancaria`
  ADD CONSTRAINT `cuenta_bancaria_ibfk_1` FOREIGN KEY (`dni`) REFERENCES `usuarios` (`dni`);

--
-- Filtros para la tabla `cuenta_mov`
--
ALTER TABLE `cuenta_mov`
  ADD CONSTRAINT `cuenta_mov_ibfk_1` FOREIGN KEY (`id_movimiento`) REFERENCES `movimientos` (`id_movimiento`) ON DELETE CASCADE,
  ADD CONSTRAINT `cuenta_mov_ibfk_2` FOREIGN KEY (`iban`) REFERENCES `cuenta_bancaria` (`iban`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
