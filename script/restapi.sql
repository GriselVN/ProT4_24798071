-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-08-2024 a las 18:13:32
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `restapi`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `autor` varchar(30) NOT NULL,
  `categoria` varchar(30) NOT NULL,
  `año_publicacion` year(4) NOT NULL,
  `ISBN` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`id`, `nombre`, `autor`, `categoria`, `año_publicacion`, `ISBN`) VALUES
(1, 'Gaturro en Halloween', 'Nik', 'infantil', 2014, '9789500748568'),
(4, 'Diario de un verano Alienigena', 'Juan josé Dimilta', 'infantil', 2015, '9789876095433'),
(5, 'Gaturro y el misterio de las 5', 'Nik', 'infantil', 2007, '9789500728355'),
(6, 'Te alabamos Señor 1', 'Paulinas', 'religión', 2011, '9500913763'),
(7, 'Abba papá del cielo 2', 'Paulinas', 'religión', 2012, '9500913798'),
(8, 'Hablamos de Dios 3', 'Consudec', 'religión', 2011, '9789875735682'),
(11, 'Aritmética y álgebra', 'Repetto, Linskens, Fesquet', 'matemática moderna', 1940, '23508'),
(13, 'Literatura 6', 'Los conocedores', 'literatura', 2010, '9789876420372');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
