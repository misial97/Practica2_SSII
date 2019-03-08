-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
-- Script BBDD
-- @authors Miguel Sierra y Rubén Domínguez
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-03-2019 a las 17:42:20
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `test`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE `servicio` (
  `id_service` int(11) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `hours` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `servicio`
--

INSERT INTO `servicio` (`id_service`, `category`, `description`, `hours`, `name`, `price`, `usuario_id`) VALUES
(1, 'Peluquería', 'Corte y peinado de cabello en la peluquería de moda', 1, 'Corte y peinado', 10, 4),
(2, 'Mecanica', 'Reparación de tu vehículo en Taller LUIS', 2, 'Reparación coche', 40, 3),
(3, 'Limpieza', 'Lavado completo de tu vehiculo en Taller LUIS', 1, 'Lavado coche', 10, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud`
--

CREATE TABLE `solicitud` (
  `id_solicitud` int(11) NOT NULL,
  `descrp_estado` varchar(255) DEFAULT NULL,
  `dir_calle` varchar(255) DEFAULT NULL,
  `dir_num` varchar(255) DEFAULT NULL,
  `dir_poblacion` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `fecha_solicitud` varchar(255) DEFAULT NULL,
  `importe_cobrado` int(11) NOT NULL,
  `servicio_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `solicitud`
--

INSERT INTO `solicitud` (`id_solicitud`, `descrp_estado`, `dir_calle`, `dir_num`, `dir_poblacion`, `estado`, `fecha_solicitud`, `importe_cobrado`, `servicio_id`, `usuario_id`) VALUES
(1, '', 'Calle del Foso', '20', 'Madrid', 'PENDIENTE', '20/02/2019', 10, 1, 1),
(2, '', 'Paseo de la Castellana', '150', 'Madrid', 'CONFIRMADA', '27/02/2019', 40, 2, 2),
(3, 'El cliente quería únicamente la reparación', 'Paseo de la Castellana', '150', 'Madrid', 'CANCELADA', '27/02/2019', 10, 3, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `iduser` int(11) NOT NULL,
  `apellidos` varchar(255) DEFAULT NULL,
  `ciudad` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fecha_nac` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `perfil` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`iduser`, `apellidos`, `ciudad`, `email`, `fecha_nac`, `nombre`, `pass`, `perfil`) VALUES
(1, 'Pérez Sierra', 'Madrid', 'josepe@gmail.com', '15/05/1966', 'José', 'pass1234', 'COSTUMER'),
(2, 'Rodriguez ', 'Madrid', 'luismi@gmail.com', '16/02/1994', 'Luis Miguel', 'calamar', 'COSTUMER'),
(3, 'Martinez Fernandez', 'Seseña', 'lmfos@gmail.com', '10/08/1990', 'Luis', 'pass1234', 'PROFESSIONAL'),
(4, 'Undiano Mallenco', 'Fuenlabrada', 'undiAlber@gmail.com', '18/10/1973', 'Alberto', 'pass5678', 'PROFESSIONAL'),
(5, 'de Burgos Bengoetxea', 'Valdemoro', 'rbbengoetxea@gmail.com', '15/08/1986', 'Ricardo', 'pass9012', 'ANALYIST');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD PRIMARY KEY (`id_service`),
  ADD KEY `FK_gtxdpurs69mepalocpfp55n0w` (`usuario_id`);

--
-- Indices de la tabla `solicitud`
--
ALTER TABLE `solicitud`
  ADD PRIMARY KEY (`id_solicitud`),
  ADD KEY `FK_a3umq2dhjolpg94ly2x87a7al` (`servicio_id`),
  ADD KEY `FK_3m5gh2gw8pp8hjum88t05evsq` (`usuario_id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`iduser`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `servicio`
--
ALTER TABLE `servicio`
  MODIFY `id_service` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `solicitud`
--
ALTER TABLE `solicitud`
  MODIFY `id_solicitud` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD CONSTRAINT `FK_gtxdpurs69mepalocpfp55n0w` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`iduser`);

--
-- Filtros para la tabla `solicitud`
--
ALTER TABLE `solicitud`
  ADD CONSTRAINT `FK_3m5gh2gw8pp8hjum88t05evsq` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`iduser`),
  ADD CONSTRAINT `FK_a3umq2dhjolpg94ly2x87a7al` FOREIGN KEY (`servicio_id`) REFERENCES `servicio` (`id_service`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
