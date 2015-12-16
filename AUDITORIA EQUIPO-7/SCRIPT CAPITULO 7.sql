--
-- Estructura de tabla para la tabla `dictamen`
--

CREATE TABLE IF NOT EXISTS `dictamen` (
  `id_Dictamen` int(11) NOT NULL AUTO_INCREMENT,
  `Dictamen` int(11) NOT NULL,
  PRIMARY KEY (`id_Dictamen`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `dictamen`
--

INSERT INTO `dictamen` (`id_Dictamen`, `Dictamen`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- -------------------------------------------------------- 

--
-- Estructura de tabla para la tabla `dictamencapitulo`
--

CREATE TABLE IF NOT EXISTS `dictamencapitulo` (
  `id_DictamenCapitulo` int(11) NOT NULL AUTO_INCREMENT,
  `id_dictamen` int(11) NOT NULL,
  `id_rubro` int(11) NOT NULL,
  `id_emp` int(11) NOT NULL,
  `id_audi` int(11) NOT NULL,
  `FechaInicioEvaluacion` date NOT NULL,
  `FechaFinEvaluacion` date NOT NULL,
  `Observaciones` varchar(600) NOT NULL,
  `Recomendaciones` varchar(600) NOT NULL,
  `Dictamen` varchar(18) NOT NULL,
  PRIMARY KEY (`id_DictamenCapitulo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `dictamencapitulo`
--

INSERT INTO `dictamencapitulo` (`id_DictamenCapitulo`, `id_dictamen`, `id_rubro`, `id_emp`, `id_audi`, `FechaInicioEvaluacion`, `FechaFinEvaluacion`, `Observaciones`, `Recomendaciones`, `Dictamen`) VALUES
(1, 1, 3, 1, 1, '2015-12-01', '2015-12-04', '', '', 'acredita'),
(2, 1, 4, 1, 1, '2015-12-07', '2015-12-11', '', '', 'acredita');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dictamenfinal`
--

CREATE TABLE IF NOT EXISTS `dictamenfinal` (
  `id_DictamenFinal` int(11) NOT NULL AUTO_INCREMENT,
  `id_dictamen` int(11) NOT NULL,
  `id_emp` int(11) NOT NULL,
  `id_audi` int(11) NOT NULL,
  `FechaInicioAuditoria` date NOT NULL,
  `FechaFinAuditoria` date NOT NULL,
  `Observaciones` varchar(900) NOT NULL,
  `Recomendaciones` varchar(900) NOT NULL,
  `Dictamen` varchar(18) NOT NULL,
  PRIMARY KEY (`id_DictamenFinal`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `dictamenfinal`
--

INSERT INTO `dictamenfinal` (`id_DictamenFinal`, `id_dictamen`, `id_emp`, `id_audi`, `FechaInicioAuditoria`, `FechaFinAuditoria`, `Observaciones`, `Recomendaciones`, `Dictamen`) VALUES
(1, 1, 1, 1, '2015-12-01', '2015-12-11', 'La auditoria tubo un retraso de 2 dias', 'incrementar la seguridad en sus sistemas de informacion', 'acredita');

-- ---------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE IF NOT EXISTS `empresas` (
  `id_emp` int(5) NOT NULL AUTO_INCREMENT,
  `NombreComercial` varchar(40) NOT NULL,
  `NombreFiscal` varchar(40) NOT NULL,
  `CalleAvenida` varchar(45) NOT NULL,
  `CiudadMunicipio` char(15) NOT NULL,
  `CodigoPostal` int(9) NOT NULL,
  `Pais` char(15) NOT NULL,
  `Telefono` varchar(12) NOT NULL,
  `Giro` varchar(12) NOT NULL,
  `Email` varchar(35) NOT NULL,
  `Web` varchar(30) NOT NULL,
  `id_audi` int(11) NOT NULL,
  PRIMARY KEY (`id_emp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;
--
-- Volcado de datos para la tabla `empresas`
--

INSERT INTO `empresas` (`id_emp`, `NombreComercial`, `NombreFiscal`, `CalleAvenida`, `CiudadMunicipio`, `CodigoPostal`, `Pais`, `Telefono`, `Giro`, `Email`, `Web`, `id_audi`) VALUES
(1, 'COMPUMAS', 'COMPUMAS', 'Avenida Aldama #76', 'Valle de chalco', 56093, 'Mexico', '5609385673', 'Industrial', 'compumas@gmail.com', 'www.compumas.com.mx', 1),
(2, 'KYO', 'KYO NETWORKS', 'Avenida Ignacio Zaragoza #121', 'Coyoacan DF', 76450, 'Mexico', '6739490023', 'Industrial', 'kyonetworks@gmail.com', 'www.kyonetworks.com.mx', 1),
(3, 'SISTEMAX', 'SISTEMAX', 'Avenida Reforma #197', 'Queretaro', 54987, 'Mexico', '6456728390', 'Comercial', 'sistemax@hotmail.com', 'www.sistemax.com', 2),
(4, 'WEBSERVICE', 'WEBSERVICE', 'Avenida 5 de Febrero #129', 'Monterrey', 89034, 'Mexico', '5645090078', 'Comercial', 'wenservice@gmail.com', 'www.webservice.com.mx', 5);

-- ---------------------------------------------------------

--
-- Estructura de tabla para la tabla `auditores`
--

CREATE TABLE IF NOT EXISTS `auditores` (
  `id_audi` int(5) NOT NULL AUTO_INCREMENT,
  `ApellidoPaterno` varchar(15) NOT NULL,
  `ApellidoMaterno` varchar(15) NOT NULL,
  `Nombre` varchar(25) NOT NULL,
  `Edad` int(2) NOT NULL,
  `Pais` varchar(15) NOT NULL,
  `CiudadMunicipio` varchar(45) NOT NULL,
  `CodigoPostal` varchar(9) NOT NULL,
  `CalleAvenida` varchar(40) NOT NULL,
  `Telefono` varchar(15) NOT NULL,
  `Email` varchar(35) NOT NULL,
  `Sexo` varchar(9) NOT NULL,
  `id_emp` int(11) NOT NULL,
  PRIMARY KEY (`id_audi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=6;

--
-- Volcado de datos para la tabla `auditores`
--

INSERT INTO `auditores` (`id_audi`, `ApellidoPaterno`, `ApellidoMaterno`,`Nombre`, `Edad`, `Pais`, `CiudadMunicipio`, `CodigoPostal`, `CalleAvenida`, `Telefono`, `Email`, `Sexo`, `id_emp`) VALUES
(1, 'Avaroa', 'Garcia', 'Javier', 21, 'Mexico', 'Tepetlixpa Estado de Mexico', '56880', 'Avenida Guerrero #34', '5546938723', 'javier@gmail.com', 'Masculino', 1),
(2, 'Villegas', 'Fernandez', 'Abigail', 21, 'Mexico', 'Chalco Estado de Mexico', '54670', 'Avenida Ferrocarril #21', '5543563214', 'abigail@gmail.com', 'Femenino', 1),
(3, 'Castillo', 'Hernandez', 'Roberto Carlos', 22, 'Mexico', 'Tepetlixpa Estado de Mexico', '56880', 'Calle Felipe Angeles #12', '5587230944', 'skimo@gmail.com', 'Masculino', 1),
(4, 'Lopez', 'Robledo', 'Diana', 23, 'Mexico', 'Ozumba Estado de Mexico', '56860', 'Avenida Alzate #23', '5587230918', 'diana@gmail.com', 'Femenino', 2),
(5, 'Garcia', 'Rivera', 'Carla', 37, 'Mexico', 'Mexico distrito federal', '57640', 'Avenida 20 de Noviembre #65', '5546982305', 'carla@gmail.com', 'Femenino', 2);

-- ---------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresaauditora`
--

CREATE TABLE IF NOT EXISTS `empresaauditora` (
  `id_EmpresaAuditora` int(11) NOT NULL AUTO_INCREMENT,
  `NombreComercial` varchar(40) NOT NULL,
  `NombreFiscal` varchar(40) NOT NULL,
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

INSERT INTO `empresaauditora` (`id_EmpresaAuditora`, `NombreComercial`, `NombreFiscal`, `Domicilio`, `CiudadMunicipio`, `CodigoPostal`, `Pais`, `Telefono`, `Email`, `Web`, `RFC`) VALUES
(1, 'TESCHA AUDITORA', 'TESCHA', 'Avenida Zaragoza #43', 'Chalco', '56790', 'Mexico', '5979735492', 'thescha@gmail.com', 'www.tescha.com.mx', '4593782016734936'),
(2, 'AUDITORA MX', 'AUDITORA', 'Avenida Nacional #57', 'Cuautla Morelos', '45327', 'Mexico', '7353576394', 'auditoramx@gmail.com', 'www.auditoramx.com.mx', '5349274509267349');

-- --------------------------------------------------------