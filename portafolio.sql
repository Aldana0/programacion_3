-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-11-2025 a las 15:53:06
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `portafolio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(120) NOT NULL,
  `telefono` varchar(30) NOT NULL,
  `email` varchar(120) NOT NULL,
  `pais_id` int(11) NOT NULL,
  `mensaje` text NOT NULL,
  `archivo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`id`, `nombre`, `telefono`, `email`, `pais_id`, `mensaje`, `archivo`, `created_at`) VALUES
(1, 'Ludmila Torres', '541166031210', 'ludmilazchanz@gmail.com', 10, '123456789', NULL, '2025-10-03 22:06:04'),
(2, 'Ludmila Torres', '541166031210', 'ludmilazchanz@gmail.com', 1, '123456789', NULL, '2025-10-03 22:07:52'),
(3, 'Ludmila Torres', '541166031210', 'ludmila.t.2002@gmail.com', 1, '123456789', NULL, '2025-10-03 22:08:12'),
(4, 'Ludmila Torres Ludmila Torres', '541166031210', 'ludmilazchanz@gmail.com', 6, '123456789', NULL, '2025-10-03 22:12:36'),
(5, 'Ludmila Torres Ludmila Torres', '541166031210', 'ludmilazchanz@gmail.com', 5, '123456789', NULL, '2025-10-03 22:34:17'),
(6, 'Ludmila Torres Ludmila Torres', '541166031210', 'ludmilazchanz@gmail.com', 5, '123456789', NULL, '2025-10-03 22:39:03'),
(7, 'Ludmila Torres', '541166031210', 'ludmilazchanz@gmail.com', 3, '123456789', NULL, '2025-10-03 22:40:40'),
(8, 'Ludmila Torres', '541166031210', 'ludmilazchanz@gmail.com', 3, '123456789', NULL, '2025-10-03 22:43:21'),
(9, 'Ludmila Torres', '541166031210', 'ludmilazchanz@gmail.com', 3, '123456789', NULL, '2025-10-03 22:51:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`id`, `nombre`) VALUES
(1, 'Argentina'),
(2, 'Uruguay'),
(3, 'Chile'),
(4, 'Paraguay'),
(5, 'Bolivia'),
(6, 'Brasil'),
(7, 'Perú'),
(8, 'Colombia'),
(9, 'México'),
(10, 'España');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pais_id` (`pais_id`);

--
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `pais`
--
ALTER TABLE `pais`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD CONSTRAINT `contacto_ibfk_1` FOREIGN KEY (`pais_id`) REFERENCES `pais` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
