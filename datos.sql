-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
-- Script BBDD
-- Miguel Sierra y Rubén Domínguez
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-03-2019 a las 14:07:55
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
(3, 'Limpieza', 'Lavado completo de tu vehiculo en Taller LUIS', 1, 'Lavado coche', 10, 3),
(4, 'Carpintería', 'Armario de madera de pino a medida', 1, 'Armario a medida', 150, 5),
(5, 'Peluquería', 'Mechas californianas o como más le guste', 1, 'Mechas', 20, 4),
(6, 'Carpintería', 'Cajoneras, zapateros, muebles... Y todo a medida', 1, 'Mobiliario a medida', 145, 5),
(7, 'Fontanería', 'Revisión de las tuberías de tu baño', 1, 'Inspección de tuberías', 20, 5),
(8, 'Fontanería', '¿Tuberías en mal estado?, contratame', 1, 'Inspección de tuberías', 18, 4),
(9, 'Fontanería', 'Revisamos sus tuberías y presupuestamos la avería sin compromiso', 1, 'Inspección de tuberías', 30, 6),
(10, 'Gastronomía', 'Catering para bodas, cumpleaños...', 1, 'Catering de calidad', 40, 9),
(11, 'Ropa y moda', 'Crea tu equipación de fútbol completa al gusto', 1, 'Equipaciones de fútbol', 30, 4),
(12, 'Imprenta', 'Crea tu publicidad al mejor precio y con los mejores diseños', 1, 'Folletos y publicidad', 20, 5);

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
  `fecha_solicitud` date DEFAULT NULL,
  `fecha_servicio` date DEFAULT NULL,
  `importe_cobrado` int(11) NOT NULL,
  `servicio_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `solicitud`
--

INSERT INTO `solicitud` (`id_solicitud`, `descrp_estado`, `dir_calle`, `dir_num`, `dir_poblacion`, `estado`, `fecha_solicitud`, `fecha_servicio`, `importe_cobrado`, `servicio_id`, `usuario_id`) VALUES
(1, '', 'Calle del Foso', '20', 'Madrid', 'PENDIENTE', '2019-02-10', NULL, 10, 1, 1),
(2, '', 'Paseo de la Castellana', '150', 'Madrid', 'CONFIRMADA', '2019-02-20', '2019-02-21', 40, 2, 2),
(3, '', 'Calle Totana', '10', 'Madrid', 'COMPLETADA', '2019-03-20', NULL, 40, 1, 2),
(4, '', 'Avenida Rinoceronte', '17', 'Getafe', 'COMPLETADA', '2019-01-18', '2019-01-20', 150, 4, 6),
(5, 'El cliente quería únicamente la reparación', 'Paseo de la Castellana', '150', 'Madrid', 'CANCELADA', '2019-02-19', NULL, 0, 3, 2),
(6, '', 'Calle Gobernador', '17', 'Getafe', 'COMPLETADA', '2019-03-20', '2019-03-29', 40, 10, 1),
(7, '', 'Avenida Andalucía', '20', 'Valdemoro', 'COMPLETADA', '2019-02-01', '2019-02-05', 40, 10, 2),
(8, '', 'Calle Botoneras', '150', 'Getafe', 'PENDIENTE', '2019-03-15', NULL, 20, 12, 1),
(9, '', 'Calle de la Libertad', '147', 'Getafe', 'COMPLETADA', '2019-01-18', '2019-01-27', 20, 12, 2),
(10, 'Cancelación pedido', 'Calle Río Cuervo', '40', 'Getafe', 'CANCELADA', '2019-01-18', NULL, 0, 12, 8),
(11, '', 'Calle Moreras', '12', 'Getafe', 'COMPLETADA', '2019-01-19', '2019-01-20', 20, 12, 10),
(12, '', 'Paseo de la estación', '92', 'Pinto', 'COMPLETADA', '2019-03-19', '2019-03-20', 30, 11, 8),
(13, '', 'Calle Hermanos López', '80', 'Ciempozuelos', 'COMPLETADA', '2019-03-20', '2019-03-21', 30, 11, 10),
(14, '', 'Calle Carretas', '57', 'Madrid', 'CONFIRMADA', '2019-03-20', '2019-03-30', 145, 6, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `iduser` int(11) NOT NULL,
  `apellidos` varchar(255) DEFAULT NULL,
  `ciudad` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fecha_nac` date DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `perfil` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`iduser`, `apellidos`, `ciudad`, `email`, `fecha_nac`, `nombre`, `pass`, `perfil`) VALUES
(1, 'Pérez Sierra', 'Madrid', 'josepe@gmail.com', '1966-05-15', 'José', 'pass', 'COSTUMER'),
(2, 'Rodriguez ', 'Madrid', 'luismi@gmail.com', '1994-02-16', 'Luis Miguel', 'pass', 'COSTUMER'),
(3, 'Martinez Fernandez', 'Seseña', 'lmfos@gmail.com', '1990-08-10', 'Luis', 'pass', 'PROFESSIONAL'),
(4, 'Undiano Mallenco', 'Fuenlabrada', 'undiAlber@gmail.com', '1973-10-18', 'Alberto', 'pass', 'PROFESSIONAL'),
(5, 'García Montes', 'Aranjuez', 'garmon@gmail.com', '1995-02-21', 'Patricia', 'pass', 'PROFESSIONAL'),
(6, 'Martinez Munuera', 'Las Rozas', 'silvano@gmail.com', '1973-10-18', 'Silvano', 'pass', 'PROFESSIONAL'),
(7, 'de Burgos Bengoetxea', 'Valdemoro', 'rbbengoetxea@gmail.com', '1986-08-15', 'Ricardo', 'pass', 'ANALYIST'),
(8, 'Iturralde García', 'Alcalá de Henares', 'itu@gmail.com', '1978-05-23', 'Eduardo', 'pass', 'COSTUMER'),
(9, 'Muñíz Fernández', 'Madrid', 'cesarmf@gmail.com', '1970-12-25', 'César', 'pass', 'PROFESSIONAL'),
(10, 'Zarco Garcá', 'Madrid', 'evar@gmail.com', '1970-12-25', 'Evaristo', 'pass', 'COSTUMER');

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
  MODIFY `id_service` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `solicitud`
--
ALTER TABLE `solicitud`
  MODIFY `id_solicitud` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
