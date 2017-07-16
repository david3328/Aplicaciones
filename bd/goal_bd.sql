-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-05-2017 a las 19:02:46
-- Versión del servidor: 10.1.10-MariaDB
-- Versión de PHP: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `goal_bd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `company`
--

CREATE TABLE `company` (
  `id_company` int(11) NOT NULL,
  `ruc` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `business_name` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `address` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `mail` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `company`
--

INSERT INTO `company` (`id_company`, `ruc`, `business_name`, `address`, `phone`, `mail`, `latitude`, `longitude`) VALUES
(1, '12345678911', 'La Pichanga', 'Av. Grau #156', '(074)1235678', 'showGoal@gmail.com', -6.7821473, -79.8453856),
(2, '45678912345', 'The Champions', 'Av. Chinachaysuyo #1315', '123456789', 'champions@hotmail.com', -6.7886401, -79.8455431);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `field`
--

CREATE TABLE `field` (
  `id_field` int(11) NOT NULL,
  `price` double NOT NULL,
  `status` char(1) COLLATE utf8_spanish_ci NOT NULL,
  `id_company` int(11) NOT NULL,
  `id_sizeField` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `field`
--

INSERT INTO `field` (`id_field`, `price`, `status`, `id_company`, `id_sizeField`) VALUES
(1, 10.5, 'd', 1, 1),
(2, 15, 'd', 1, 2),
(3, 10, 'd', 2, 1),
(4, 14, 'd', 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservation_field`
--

CREATE TABLE `reservation_field` (
  `num_reservation` int(11) NOT NULL,
  `hour` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `total_price` double NOT NULL,
  `id_field` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `size_field`
--

CREATE TABLE `size_field` (
  `id_sizeField` int(11) NOT NULL,
  `size` varchar(8) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `size_field`
--

INSERT INTO `size_field` (`id_sizeField`, `size`) VALUES
(1, 'futbol6'),
(2, 'furtbol8');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `user` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `name` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `app` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `apm` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `age` int(11) NOT NULL,
  `phone` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `mail` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `latitude` char(18) COLLATE utf8_spanish_ci NOT NULL,
  `longitude` char(18) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id_company`),
  ADD UNIQUE KEY `ruc` (`ruc`);

--
-- Indices de la tabla `field`
--
ALTER TABLE `field`
  ADD PRIMARY KEY (`id_field`);

--
-- Indices de la tabla `reservation_field`
--
ALTER TABLE `reservation_field`
  ADD PRIMARY KEY (`num_reservation`);

--
-- Indices de la tabla `size_field`
--
ALTER TABLE `size_field`
  ADD PRIMARY KEY (`id_sizeField`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `user` (`user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `company`
--
ALTER TABLE `company`
  MODIFY `id_company` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `field`
--
ALTER TABLE `field`
  MODIFY `id_field` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `reservation_field`
--
ALTER TABLE `reservation_field`
  MODIFY `num_reservation` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `size_field`
--
ALTER TABLE `size_field`
  MODIFY `id_sizeField` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
