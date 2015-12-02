-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 25-11-2015 a las 17:01:46
-- Versión del servidor: 5.6.12-log
-- Versión de PHP: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `auditoriainformatica`
--
CREATE DATABASE IF NOT EXISTS `auditoriainformatica` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `auditoriainformatica`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auditores`
--

CREATE TABLE IF NOT EXISTS `auditores` (
  `id_Auditor` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(25) NOT NULL,
  `ApellidoPaterno` varchar(15) NOT NULL,
  `ApellidoMaterno` varchar(15) NOT NULL,
  `Edad` int(2) NOT NULL,
  `Domicilio` varchar(40) NOT NULL,
  `CiudadMunicipio` varchar(45) NOT NULL,
  `CodigoPostal` varchar(9) NOT NULL,
  `Pais` varchar(15) NOT NULL,
  `Telefono` varchar(15) NOT NULL,
  `Email` varchar(35) NOT NULL,
  `Sexo` varchar(9) NOT NULL,
  `id_EmpresaAuditora` int(11) NOT NULL,
  PRIMARY KEY (`id_Auditor`),
  KEY `id_EmpresaAuditora` (`id_EmpresaAuditora`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `auditores`
--

INSERT INTO `auditores` (`id_Auditor`, `Nombre`, `ApellidoPaterno`, `ApellidoMaterno`, `Edad`, `Domicilio`, `CiudadMunicipio`, `CodigoPostal`, `Pais`, `Telefono`, `Email`, `Sexo`, `id_EmpresaAuditora`) VALUES
(1, 'Javier', 'Avaroa', 'Garcia', 21, 'Avenida Guerrero #34', 'Tepetlixpa Estado de Mexi', '56880', 'Mexico', '5546938723', 'javier@gmail.com', 'Masculino', 1),
(2, 'Abigail', 'Villegas', 'Fernandez', 21, 'Avenida Ferrocarril #21', 'Chalco Estado de Mexico', '54670', 'Mexico', '5543563214', 'abigail@gmail.com', 'Femenino', 1),
(3, 'Roberto Carlos', 'Castillo', 'Hernandez', 22, 'Calle Felipe Angeles #12', 'Tepetlixpa Estado de Mexico', '56880', 'Mexico', '5587230944', 'skimo@gmail.com', 'Masculino', 1),
(4, 'Diana', 'Lopez', 'Robledo', 23, 'Avenida Alzate #23', 'Ozumba Estado de Mexico', '56860', 'Mexico', '5587230918', 'diana@gmail.com', 'Femenino', 2),
(5, 'Carla', 'Garcia', 'Rivera', 37, 'Avenida 20 de Noviembre #65', 'Mexico distrito federal', '57640', 'Mexico', '5546982305', 'carla@gmail.com', 'Femenino', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresaauditada`
--

CREATE TABLE IF NOT EXISTS `empresaauditada` (
  `id_EmpresaAuditada` int(11) NOT NULL AUTO_INCREMENT,
  `NombreComercial` varchar(40) NOT NULL,
  `NombreFiscal` varchar(40) NOT NULL,
  `NIF` varchar(20) NOT NULL,
  `Domicilio` varchar(45) NOT NULL,
  `CiudadMunicipio` char(15) NOT NULL,
  `CodigoPostal` int(9) NOT NULL,
  `Pais` char(15) NOT NULL,
  `Telefono` varchar(12) NOT NULL,
  `Giro` varchar(12) NOT NULL,
  `Email` varchar(35) NOT NULL,
  `Web` varchar(30) NOT NULL,
  `id_Auditor` int(11) NOT NULL,
  PRIMARY KEY (`id_EmpresaAuditada`),
  KEY `id_Auditor` (`id_Auditor`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `empresaauditada`
--

INSERT INTO `empresaauditada` (`id_EmpresaAuditada`, `NombreComercial`, `NombreFiscal`, `NIF`, `Domicilio`, `CiudadMunicipio`, `CodigoPostal`, `Pais`, `Telefono`, `Giro`, `Email`, `Web`, `id_Auditor`) VALUES
(1, 'COMPUMAS', 'COMPUMAS', 'A-348723409', 'Avenida Aldama #76', 'Valle de chalco', 56093, 'Mexico', '5609385673', 'Industrial', 'compumas@gmail.com', 'www.compumas.com.mx', 1),
(2, 'KYO', 'KYO NETWORKS', 'C-4520845012', 'Avenida Ignacio Zaragoza #121', 'Coyoacan DF', 76450, 'Mexico', '6739490023', 'Industrial', 'kyonetworks@gmail.com', 'www.kyonetworks.com.mx', 1),
(3, 'SISTEMAX', 'SISTEMAX', 'D-345-45069', 'Avenida Reforma #197', 'Queretaro', 54987, 'Mexico', '6456728390', 'Comercial', 'sistemax@hotmail.com', 'www.sistemax.com', 2),
(4, 'WEBSERVICE', 'WEBSERVICE', 'A-764452983', 'Avenida 5 de Febrero #129', 'Monterrey', 89034, 'Mexico', '5645090078', 'Comercial', 'wenservice@gmail.com', 'www.webservice.com.mx', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresaauditora`
--

CREATE TABLE IF NOT EXISTS `empresaauditora` (
  `id_EmpresaAuditora` int(11) NOT NULL AUTO_INCREMENT,
  `NombreComercial` varchar(40) NOT NULL,
  `NombreFiscal` varchar(40) NOT NULL,
  `NIF` varchar(20) NOT NULL,
  `Domicilio` varchar(45) NOT NULL,
  `CiudadMunicipio` varchar(15) NOT NULL,
  `CodigoPostal` varchar(9) NOT NULL,
  `Pais` varchar(15) NOT NULL,
  `Telefono` varchar(12) NOT NULL,
  `Email` varchar(35) NOT NULL,
  `Web` varchar(35) NOT NULL,
  `RFC` varchar(20) NOT NULL,
  PRIMARY KEY (`id_EmpresaAuditora`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `empresaauditora`
--

INSERT INTO `empresaauditora` (`id_EmpresaAuditora`, `NombreComercial`, `NombreFiscal`, `NIF`, `Domicilio`, `CiudadMunicipio`, `CodigoPostal`, `Pais`, `Telefono`, `Email`, `Web`, `RFC`) VALUES
(1, 'TESCHA AUDITORA', 'TESCHA', 'A-04783364', 'Avenida Zaragoza #43', 'Chalco', '56790', 'Mexico', '5979735492', 'thescha@gmail.com', 'www.tescha.com.mx', '4593782016734936'),
(2, 'AUDITORA MX', 'AUDITORA', 'A-459278450', 'Avenida Nacional #57', 'Cuautla Morelos', '45327', 'Mexico', '7353576394', 'auditoramx@gmail.com', 'www.auditoramx.com.mx', '5349274509267349');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluacioncapitulo`
--

CREATE TABLE IF NOT EXISTS `evaluacioncapitulo` (
  `id_EvaluacionCapitulo` int(11) NOT NULL AUTO_INCREMENT,
  `id_Capitulo` int(11) NOT NULL,
  `EvaluacionCapitulo` varchar(25) NOT NULL,
  `FechaInicioEvaluacion` date NOT NULL,
  `FechaFinEvaluacion` date NOT NULL,
  `Recomendacion` varchar(365) NOT NULL,
  PRIMARY KEY (`id_EvaluacionCapitulo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `evaluacioncapitulo`
--

INSERT INTO `evaluacioncapitulo` (`id_EvaluacionCapitulo`, `id_Capitulo`, `EvaluacionCapitulo`, `FechaInicioEvaluacion`, `FechaFinEvaluacion`, `Recomendacion`) VALUES
(1, 3, 'Acredita', '2015-11-03', '2015-11-05', 'Integrar Mayor información en cuanto al departamento de recursos humanos'),
(2, 4, 'no acredita', '2015-11-06', '2015-11-09', 'Fundamentar los procesos del sistema así como estructurar de manera adecuada el diseño de la base de datos');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auditores`
--
ALTER TABLE `auditores`
  ADD CONSTRAINT `auditores_ibfk_1` FOREIGN KEY (`id_EmpresaAuditora`) REFERENCES `empresaauditora` (`id_EmpresaAuditora`);

--
-- Filtros para la tabla `empresaauditada`
--
ALTER TABLE `empresaauditada`
  ADD CONSTRAINT `empresaauditada_ibfk_1` FOREIGN KEY (`id_Auditor`) REFERENCES `auditores` (`id_Auditor`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
