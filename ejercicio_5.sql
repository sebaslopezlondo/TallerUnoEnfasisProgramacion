-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-04-2019 a las 02:16:53
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `ejercicio_5`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
  `CC` int(12) NOT NULL,
  `Nombres` varchar(60) NOT NULL,
  `Edad` int(2) NOT NULL,
  `Correo` varchar(30) NOT NULL,
  `Fecha_nac` date NOT NULL,
  PRIMARY KEY (`CC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE IF NOT EXISTS `factura` (
  `Id  Factura` int(12) NOT NULL AUTO_INCREMENT,
  `CC` int(12) NOT NULL,
  `Ref` int(15) NOT NULL,
  PRIMARY KEY (`Id  Factura`),
  KEY `productos_factura_ibfk_1` (`CC`),
  KEY `productos_factura_ibfk_2` (`Ref`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE IF NOT EXISTS `producto` (
  `Ref` int(15) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(60) NOT NULL,
  `Precio` int(15) NOT NULL,
  `NIT` int(15) NOT NULL,
  PRIMARY KEY (`Ref`),
  KEY `producto_ibfk_1` (`NIT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE IF NOT EXISTS `proveedor` (
  `Nit` int(15) NOT NULL DEFAULT '0',
  `Nombres` varchar(60) NOT NULL,
  `Telefono` int(12) NOT NULL,
  `Fecha_Nac` date NOT NULL,
  PRIMARY KEY (`Nit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `productos_factura_ibfk_1` FOREIGN KEY (`CC`) REFERENCES `cliente` (`CC`),
  ADD CONSTRAINT `productos_factura_ibfk_2` FOREIGN KEY (`Ref`) REFERENCES `producto` (`Ref`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`NIT`) REFERENCES `proveedor` (`Nit`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
