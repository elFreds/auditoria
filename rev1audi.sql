-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 25-01-2016 a las 03:15:27
-- Versión del servidor: 5.6.12-log
-- Versión de PHP: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `rev1audi`
--
CREATE DATABASE IF NOT EXISTS `rev1audi` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `rev1audi`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividades`
--

CREATE TABLE IF NOT EXISTS `actividades` (
  `id_act` int(5) NOT NULL AUTO_INCREMENT,
  `actividades` varchar(200) NOT NULL,
  PRIMARY KEY (`id_act`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignacion`
--

CREATE TABLE IF NOT EXISTS `asignacion` (
  `id_asig` int(5) NOT NULL AUTO_INCREMENT,
  `capitulo` varchar(100) NOT NULL,
  `tema` varchar(100) NOT NULL,
  `subtema` varchar(100) NOT NULL,
  `actividad` varchar(100) NOT NULL,
  `tiempo` varchar(50) NOT NULL,
  `nom_audi` varchar(100) NOT NULL,
  `emp_auditora` varchar(100) NOT NULL,
  PRIMARY KEY (`id_asig`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignarresp`
--

CREATE TABLE IF NOT EXISTS `asignarresp` (
  `idAsignacion` int(11) NOT NULL AUTO_INCREMENT,
  `idAuditoria` int(11) DEFAULT NULL,
  `idAuditor` int(11) DEFAULT NULL,
  `idPregunta` int(11) DEFAULT NULL,
  `idRespuesta` int(11) DEFAULT NULL,
  PRIMARY KEY (`idAsignacion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

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
  `id_EmpresaAuditora` int(11) NOT NULL,
  PRIMARY KEY (`id_audi`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Volcado de datos para la tabla `auditores`
--

INSERT INTO `auditores` (`id_audi`, `ApellidoPaterno`, `ApellidoMaterno`, `Nombre`, `Edad`, `Pais`, `CiudadMunicipio`, `CodigoPostal`, `CalleAvenida`, `Telefono`, `Email`, `Sexo`, `id_EmpresaAuditora`) VALUES
(1, 'Avaroa', 'Garcia', 'Javier', 22, 'Mexico', 'Monterrey', '', 'Avenida Guerrero #34', '54687649027', 'deloitte@gmail.com', 'Masculino', 3),
(2, 'flores', 'aguirre', 'rosa', 20, 'Mexico', 'Monterrey', '54987', 'Avenida Ferrocarril #21', '54687649027', 'deloitte@gmail.com', 'Femenino', 1),
(4, 'Lopez', 'Robledo', 'Diana', 23, 'Mexico', 'Cuautla Morelos', '453270', 'Avenida Alzate #23', '7353576394', 'auditoramx@gmail.com', 'Femenino', 2);

-- --------------------------------------------------------

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

-- --------------------------------------------------------

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `empresas`
--

INSERT INTO `empresas` (`id_emp`, `NombreComercial`, `NombreFiscal`, `CalleAvenida`, `CiudadMunicipio`, `CodigoPostal`, `Pais`, `Telefono`, `Giro`, `Email`, `Web`, `id_audi`) VALUES
(1, 'COMPUMAS', 'COMPUMAS', 'Avenida Aldama #76', 'Valle de chalco', 56093, 'Mexico', '5609385673', 'Industrial', 'compumas@gmail.com', 'www.compumas.com.mx', 1),
(2, 'KYO', 'KYO NETWORKS', 'Avenida Ignacio Zaragoza #121', 'Coyoacan DF', 76450, 'Mexico', '6739490023', 'Industrial', 'kyonetworks@gmail.com', 'www.kyonetworks.com.mx', 1),
(3, 'SISTEMAX', 'SISTEMAX', 'Avenida Reforma #197', 'Queretaro', 54987, 'Mexico', '6456728390', 'Comercial', 'sistemax@hotmail.com', 'www.sistemax.com', 2),
(4, 'WEBSERVICE', 'WEBSERVICE', 'Avenida 5 de Febrero #129', 'Monterrey', 89034, 'Mexico', '5645090078', 'Comercial', 'wenservice@gmail.com', 'www.webservice.com.mx', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fechas`
--

CREATE TABLE IF NOT EXISTS `fechas` (
  `id_fecha` int(11) NOT NULL AUTO_INCREMENT,
  `tiempo` varchar(50) NOT NULL,
  PRIMARY KEY (`id_fecha`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `fechas`
--

INSERT INTO `fechas` (`id_fecha`, `tiempo`) VALUES
(3, '11/12/2015 - 20/12/2015'),
(4, '25/12/2015 - 31/12/2015');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE IF NOT EXISTS `preguntas` (
  `id_rubro` int(11) DEFAULT NULL,
  `id_subr` int(11) DEFAULT NULL,
  `id_subsr` int(11) DEFAULT NULL,
  `id_preg` int(11) NOT NULL,
  `pregunt` varchar(150) NOT NULL,
  PRIMARY KEY (`id_preg`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`id_rubro`, `id_subr`, `id_subsr`, `id_preg`, `pregunt`) VALUES
(3, 31, 311, 3111, '¿Se ajusta la estructura orgánica actual a las disposiciones jurídicas vigentes?'),
(3, 31, 312, 3122, '¿La estructura actual está encaminada a la consecución de los objetivos del área?'),
(3, 31, 312, 3123, '¿Se permite la estructura actual que se lleven a cabo con eficiencia (las atribuciones encomendadas)?'),
(3, 31, 312, 3124, '¿Se permite la estructura actual que se lleven a cabo con eficiencia (las funciones establecidas)?'),
(3, 31, 312, 3125, '¿Se permite la estructura actual que se lleven a cabo con eficiencia (la distribución del trabajo)?'),
(3, 31, 312, 3126, '¿Se permite la estructura actual que se lleven a cabo con eficiencia (el control interno)?'),
(3, 31, 313, 3137, '¿Los niveles jerárquicos establecidos actualmente son necesarios y suficientes para el desarrollo de las actividades del área?'),
(3, 31, 313, 3138, '¿Permiten los niveles jerárquicos actuales que se desarrolle la (operación)?'),
(3, 31, 313, 3139, '¿Permiten los niveles jerárquicos actuales que se desarrolle la (supervisión)?'),
(5, 51, 511, 5111, 'La responsabilidad de los datos es compartida?'),
(5, 51, 511, 5112, 'Quienes son los propietarios o usuarios encargados del sistema?'),
(5, 51, 511, 5113, 'Los datos estan clasificados de manera estandar?'),
(5, 51, 511, 5114, 'Los datos estan relacionados con lo que se pide en la B.D.?'),
(5, 51, 511, 5115, 'cuenta con politicas formales por escrito?'),
(5, 51, 511, 5116, 'Los medios de respaldo estan almacenados en el mismo lugar?'),
(5, 51, 511, 5117, 'Existe un acceso restringido en los medios de almacenamiento?'),
(5, 51, 511, 5118, 'Estan identificadas por fecha,concepto y consecutivo las cintas?'),
(5, 51, 511, 5119, 'Cuenta con una politica de procedimientos para los respaldos?'),
(5, 51, 512, 5121, 'Tiene una seguridad logica y fisica dentro de la informacion?'),
(5, 51, 512, 5122, 'Cuenta con el hardware y software necesario?'),
(5, 51, 512, 5123, 'Es operacional el centro de computo?'),
(5, 51, 513, 5131, 'Tiene bases para el rastreo de errores?'),
(5, 51, 513, 5132, 'Evaluacion respecto al al funcionamiento del equipo?'),
(5, 51, 513, 5133, 'Existe un seguimiento de problemas?'),
(5, 51, 513, 5134, 'Es frecuente la existencia de errores?'),
(5, 51, 514, 5141, 'Esta actualizado el inventario de softare y hardware?'),
(5, 51, 514, 5142, 'Es original el software?'),
(5, 51, 514, 5143, 'Existe un responsable de las licencias del software?'),
(5, 51, 515, 5151, 'El site se encuentra en un lugar restringido?'),
(5, 51, 515, 5152, 'Existe una proteccion en los servidores?'),
(5, 51, 515, 5153, 'Existe normas de seguridad dentro del site?'),
(5, 51, 515, 5154, 'Existe una seguridad fisica dentro del equipo de computo?'),
(5, 51, 515, 5155, 'Se tiene un plan contra contengenias?'),
(5, 51, 516, 5161, 'El progreso del trabajo es congruente con el calendario de produccion?'),
(5, 51, 516, 5162, 'Se anota que persona recibe la informacion y su volumen?'),
(5, 51, 516, 5163, 'Se anota a que capturista se le entrega la informacion,el volumen y la hora?'),
(5, 51, 516, 5164, 'Se verica la calidad de la informacion recibida para su captura?'),
(5, 51, 516, 5165, 'Se revisan las cifras de control antes de enviarlas a capturar?'),
(5, 51, 516, 5166, 'Existe un procedimiento escrito que indique como tratar la informacion invalida?'),
(5, 51, 516, 5167, 'En caso de resguardo de informacion de entrada en sistema¿se custodian en un lugar seguro?'),
(5, 51, 516, 5168, 'Existe un registro de anomalias en la informacion debido a la mala codificacion?'),
(5, 51, 516, 5169, 'Se verifica que cifras de las validaciones concuerden con los documentos de entrada?'),
(5, 51, 517, 5171, 'Existe procedimientos formales para la operacion del sistema de computo?'),
(5, 51, 517, 5172, 'Estan actualizados los procedimientos?'),
(5, 51, 517, 5173, 'Existen ordenes de proceso para cada corrida en computadora(incluyendo pruebas, compiilaciones y produccion)?'),
(5, 51, 517, 5174, 'Son suficientemente claras para los operadores estas ordenes?'),
(5, 51, 517, 5175, 'Existe un control que asegure la justificacion de los procesos en el computador?'),
(5, 51, 517, 5176, 'Los retrasos o incumplimiento del programa de operacion diaria, se revisa y analiza?'),
(5, 51, 517, 5177, 'Exi procedimientos escritos para la recuperacion del sistema en caso de fallas?'),
(5, 51, 517, 5178, 'Existen instrucciones especificas para cada proceso, con las indicaciones pertinentes?'),
(5, 51, 517, 5179, 'Puede el opreador modificar los datos de entrada?'),
(5, 51, 518, 5181, 'Setiene copias de los archivos magneticos en otros locales?'),
(5, 51, 518, 5182, 'Se tiene un responsable de la informacion de cada sistema en linea y en lotes?'),
(5, 51, 519, 5191, 'Opera la sala de maquinas sobre la base de programas de trabajo?'),
(5, 51, 519, 5192, 'Se cambian frecuentemente los programas de trabajo?'),
(5, 51, 519, 5193, 'Se comunica oportunamente a los usuarios las modificaciones a los programas de trabajo?'),
(5, 52, 521, 5211, 'Existe un lugar asignado a las cintas y discos magneticos?'),
(5, 52, 521, 5212, 'Se tiene asignado un lugar especifico para papeleria y utensilios de trabajo?'),
(5, 52, 521, 5213, 'Son funcionales los muebles asignados para la cintoteca y discoteca?'),
(5, 52, 521, 5214, 'Se tienen disposiciones para que se acomoden en su lugar correspondiente, despues de su uso, las cintas, los discos magneticos, la papeleria,etc.?'),
(5, 52, 521, 5215, 'Existen prohibiciones para fumar,tomar alimentos y refrescos en la sala de maquinas?'),
(5, 52, 521, 5216, 'Se cuenta con carteles en lugares visibles que recuerden dicha prohibicion?'),
(5, 52, 521, 5217, 'Se tiene restringida la operacion del sistema de computo unicamente al personal especializado de la direccion de informatica?'),
(5, 53, 531, 5311, 'El sistema de computo tiene capacidad de red?'),
(5, 53, 531, 5312, 'Se utiliza la capacidad de red?'),
(5, 53, 531, 5313, 'Se a investigado si el tiempo de respuesta satisface a los usuarios?'),
(5, 53, 531, 5314, 'El almacenamiento maximo del sistema de computo es suficiente para atender proceso por lotes y en linea?'),
(5, 54, 541, 5411, 'Se tiene un programa de trabajo diario,semana,anual?'),
(5, 54, 541, 5412, 'Se tiene una programacion del mantenimiento previo?'),
(5, 54, 541, 5413, 'Se tiene un plan definido de respaldo de la informacion?'),
(5, 54, 541, 5414, 'Se revisa el cumplimiento de los programas de produccion establecidas?'),
(5, 54, 541, 5415, 'Verifique que se tenga conocimiento de los proximos sistemas que entraran en produccion, con objeto de que se programe su incorporacion.'),
(5, 54, 541, 5416, 'Se cumplen generalmente estos planes?'),
(5, 54, 541, 5417, 'Se cumplen generalmente estos planes?'),
(5, 54, 541, 5418, 'Se repiten con frecuencia corridas por anomalias?'),
(6, 61, 611, 6111, '¿El edificio donde se encuentra la computadora está situado a salvo de: Inundación?'),
(6, 61, 611, 6112, '¿El edificio donde se encuentra la computadora está situado a salvo de: Fuego?'),
(6, 61, 611, 6113, '¿El edificio donde se encuentra la computadora está situado a salvo de: Terremoto?'),
(6, 61, 611, 6114, '¿El edificio donde se encuentra la computadora está situado a salvo de: Sabotaje? '),
(6, 61, 611, 6115, '¿El centro de cómputo da al exterior? '),
(6, 61, 611, 6116, '¿Tiene el cuarto de máquinas una instalación de escaparate y pueden ser rotos los vidrios con facilidad?'),
(6, 61, 611, 6117, '¿Está el centro de cómputo en un lugar de alto tráfico de personas?'),
(6, 61, 611, 6118, '¿Se tiene materiales o paredes inflamables dentro del centro de cómputo?'),
(6, 61, 611, 6119, '¿Se tiene paredes que despiden polvo?'),
(6, 61, 612, 6121, '¿Se tiene piso elevado?'),
(6, 61, 612, 6122, '¿Está limpia la cámara plena?'),
(6, 61, 612, 6123, '¿Es de fácil limpieza?'),
(6, 61, 612, 6125, '¿El piso es antiestático?'),
(6, 61, 613, 6131, '¿La temperatura en la que trabajan los equipos es la recomendada por el proveedor?'),
(6, 61, 613, 6132, '¿Los ductos de aire acondicionado cuentan con alarmas contra intrusos?'),
(6, 61, 613, 6133, '¿Los ductos de aire acondicionado están limpios?'),
(6, 61, 613, 6134, '¿Se controla la humedad de acuerdo con las especificadores del proveedor?'),
(6, 61, 614, 6141, '¿Se cuenta con tierra física?'),
(6, 61, 614, 6142, '¿La tierra física cumple con las disposiciones del proveedor de equipos de cómputo?'),
(6, 61, 614, 6143, '¿El cableado se encuentra debidamente instalado?'),
(6, 61, 614, 6144, '¿Los cables se encuentran debidamente identificados (positivo, negativo y tierra física)?'),
(6, 61, 614, 6145, '¿Los contactos de equipo de cómputo están debidamente identificados?'),
(6, 61, 614, 6146, '¿En los contactos, está identificado el positivo, negativo y tierra física?'),
(6, 61, 614, 6147, '¿Se cuenta con los planos de instalación eléctrica actualizados?'),
(6, 61, 614, 6148, '¿Se tiene conectado a  los contactos de equipo de cómputo otro equipo electrónico?'),
(6, 61, 614, 6149, '¿Se tiene instalación eléctrica de equipo de cómputo independiente de otras instalaciones eléctricas?'),
(6, 61, 615, 6151, '¿Se cuenta con alarmas contra inundaciones?'),
(6, 61, 616, 6161, '¿Se han adoptado medidas de seguridad en la dirección de informática?'),
(6, 61, 616, 6162, '¿Existe una persona responsable de la seguridad?'),
(6, 61, 616, 6163, '¿Existe personal de vigilancia en la institución?'),
(6, 61, 616, 6164, '¿Se investiga a los vigilantes cuando son contratados directamente?'),
(6, 61, 616, 6165, '¿Se controla el trabajo fuera de horario?'),
(6, 61, 616, 6166, '¿Se registran las acciones de los operadores para evitar que realicen alguna que pueda dañar el sistema?'),
(6, 61, 616, 6167, '¿Se identifica a la persona que ingresa?'),
(6, 61, 616, 6168, 'Se controla el acceso con: Tarjeta de control de acceso '),
(6, 61, 616, 6169, 'Se controla el acceso con: Puerta de combinación '),
(6, 61, 617, 6171, 'Existe alarma para: Detectar fuego (calor o humo) en forma automática '),
(6, 61, 617, 6172, 'Existe alarma para: Avisar en forma manual la presencia del fuego '),
(6, 61, 617, 6173, 'Existe alarma para: Detectar una fuga de agua '),
(6, 61, 617, 6174, 'Existe alarma para: Detectar magnetos '),
(6, 61, 617, 6175, 'Éstas alarmas están: En el cuarto de máquinas '),
(6, 61, 617, 6176, 'Éstas alarmas están: En la cintoteca y discoteca'),
(6, 61, 617, 6177, 'Éstas alarmas están: En las bodegas'),
(6, 61, 617, 6178, 'Existe alarmas para detectar condiciones anormales de ambiente: En el cuarto de máquinas'),
(6, 61, 617, 6179, 'Existe alarmas para detectar condiciones anormales de ambiente: En al cintoteca y discoteca'),
(6, 61, 618, 6181, 'Se controla el préstamo de: Elementos magnéticos'),
(6, 61, 618, 6182, 'Se controla el préstamo de: Equipo'),
(6, 61, 618, 6183, 'Se controla el préstamo de: Software'),
(6, 61, 618, 6184, '¿Se cuenta con copias de los archivos en un lugar distinto al de la computadora?'),
(6, 61, 618, 6185, '¿Se tienen establecidos procedimientos de actualización para estas copias?'),
(6, 61, 618, 6186, '¿Existe departamento de auditoria interna en la institución?'),
(6, 61, 618, 6187, '¿Este departamento de auditoria interna conoce todos los aspectos de los sistemas?'),
(6, 61, 618, 6188, '¿Se auditan los sistemas en operación?'),
(6, 61, 618, 6189, 'Con frecuencia de: Cada seis meses'),
(6, 62, 621, 6211, '¿Existen procedimientos relativos a la restauración y repetición de procesos en el sistema de cómputo?'),
(6, 62, 621, 6212, '¿Cuentan los operadores con alguna documentación en donde se guarden las instrucciones actualizadas para el manejo de restauraciones?'),
(6, 62, 622, 6221, 'La frecuencia realizada de cada función es: Anual'),
(6, 62, 622, 6222, 'La frecuencia realizada de cada función es: Mensual'),
(6, 62, 622, 6223, 'La frecuencia realizada de cada función es: Semanal'),
(6, 62, 622, 6224, 'La frecuencia realizada de cada función es: Diario'),
(6, 62, 622, 6225, '¿La vida humana es puesta en riesgo si esta función no se realiza?'),
(6, 62, 622, 6226, '¿La organización tendrá conflicto si esta función no se realiza?'),
(6, 62, 622, 6227, '¿Esto impactaría a la operación eficiente dentro de la organización?'),
(6, 62, 622, 6228, '¿El servicio a los clientes es afectado por la no realización de esta función?'),
(6, 62, 622, 6229, '¿Los requerimientos legales pueden no ser cumplidos sin esta función?'),
(6, 62, 623, 6231, '¿El impacto de una hora de interrupción en el centro de cómputo: la mayor interrupción operacional en el servicio al cliente es tener grupos de person'),
(6, 62, 623, 6232, '¿El impacto de una hora de interrupción en el centro de cómputo: inconveniente pero el centro de las actividades de negocio continuo intacto?'),
(6, 62, 623, 6233, '¿El impacto de una hora de interrupción en el centro de cómputo: es esencialmente insignificante?'),
(6, 62, 623, 6234, '¿El impacto de una interrupción total en el centro de cómputo, durante dos o tres semanas: o es  fatal, no hay fuentes de respaldo?'),
(6, 62, 623, 6235, '¿El impacto de una interrupción total en el centro de cómputo, durante dos o tres semanas: facilidades  de respaldo externas, menores ingresos y mayor'),
(6, 62, 623, 6236, '¿El impacto de una interrupción total en el centro de cómputo, durante dos o tres semanas: caro, algunos procesos pueden ser preservados?'),
(6, 62, 623, 6237, '¿Aptitud del personal observado en caso de emergencia: en el centro de cómputo la fuerza de trabajo es organizada?'),
(6, 62, 623, 6238, '¿Aptitud del personal observado en caso de emergencia: son inexpertos?'),
(6, 62, 623, 6239, '¿Aptitud del personal observado en caso de emergencia: son desorganizados?'),
(6, 63, 631, 6311, 'Equipo principal (Equipo, canal de comunicación, memoria, etc): Equipo fabricante'),
(6, 63, 631, 6312, 'Equipo principal (Equipo, canal de comunicación, memoria, etc): Proyecto en el equipo'),
(6, 63, 631, 6313, 'Equipo principal (Equipo, canal de comunicación, memoria, etc): ¿Es esencial para procesar?'),
(6, 63, 631, 6314, 'Unidades de disco (Incluyendo controladores, número de unidades, paquetes de discos, numero de discos por paquetes): Paquetes'),
(6, 63, 631, 6315, 'Unidades de disco (Incluyendo controladores, número de unidades, paquetes de discos, numero de discos por paquetes): Numero de unidades'),
(6, 63, 631, 6316, 'Unidades de disco (Incluyendo controladores, número de unidades, paquetes de discos, numero de discos por paquetes): Capacidad'),
(6, 63, 631, 6317, 'Unidades de disco (Incluyendo controladores, número de unidades, paquetes de discos, numero de discos por paquetes): Proyectos'),
(6, 63, 631, 6318, 'Unidades de disco (Incluyendo controladores, número de unidades, paquetes de discos, numero de discos por paquetes): ¿Es esencial para procesar?'),
(6, 63, 631, 6319, 'Equipo adicional: Electricidad KVA'),
(6, 63, 632, 6321, 'En caso de emergencia, ¿Es esencial el uso de la red de comunicación?'),
(6, 63, 632, 6322, 'Se cuenta con los programas necesarios para la comunicación'),
(6, 63, 632, 6323, 'Se debe contar con: Copia de programas de producción'),
(6, 63, 632, 6324, 'Se debe contar con: Copia de archivos maestros de las aplicaciones clave y sistemas operativos'),
(6, 63, 632, 6325, 'Se debe contar con: Copia de la documentación de los sistemas e instructivos de operación'),
(6, 63, 632, 6327, 'Se debe contar con: Copia de los archivos necesarios para procesar las transacciones'),
(6, 63, 632, 6328, 'Se debe contar con: Inventario de formas especiales utilizadas en la operación normal'),
(6, 63, 632, 6329, 'Se debe contar con: Un local con las instalaciones necesarias  (Energía, aire acondicionado, piso adecuado, etc)'),
(3, 31, 313, 31310, '¿Permiten los niveles jerárquicos actuales que se desarrolle la (control)?'),
(3, 31, 313, 31311, '¿Permiten los niveles actuales que se tenga una ágil (comunicación ascendente)?'),
(3, 31, 313, 31312, '¿Permiten los niveles actuales que se tenga una ágil (comunicación descendente)?'),
(3, 31, 313, 31313, '¿Permiten los niveles actuales que se tenga una ágil (toma de decisiones)?'),
(3, 31, 313, 31314, '¿Considera que algunas áreas deberían tener (mayor jerarquía)?'),
(3, 31, 313, 31315, '¿Considera que algunas áreas deberían tener (menor jerarquía)?'),
(3, 31, 314, 31416, '¿Se considera adecuados los departamentos, áreas y oficinas en que está dividida actualmente la estructura de la dirección?'),
(3, 31, 314, 31417, '¿El área y sus subáreas tienen delimitadas con claridad sus responsabilidades?'),
(3, 31, 315, 31518, '¿Los puestos actuales son adecuados a las necesidades que tiene el área para llevar a cabo sus funciones?'),
(3, 31, 315, 31519, '¿Cuentan con manual de descripción de puestos de (Análisis)?'),
(3, 31, 315, 31520, '¿Cuentan con manual de descripción de puestos de (Programación)?'),
(3, 31, 315, 31521, '¿Cuentan con manual de descripción de puestos de (Técnicos)?'),
(3, 31, 315, 31522, '¿Cuentan con manual de descripción de puestos de (Operación)?'),
(3, 31, 315, 31523, '¿Cuentan con manual de descripción de puestos de (Captura)?'),
(3, 31, 315, 31524, '¿Cuentan con manual de descripción de puestos de (Administrador de bases de datos)?'),
(3, 31, 315, 31525, '¿Cuentan con manual de descripción de puestos de (Comunicación y redes)?'),
(3, 31, 315, 31526, '¿Cuentan con manual de descripción de puestos de (Dirección)?'),
(3, 31, 315, 31527, '¿Cuentan con manual de descripción de puestos de (Administrativos)?'),
(3, 31, 315, 31528, '¿Cuentan con manual de descripción de puestos de (Otros)?'),
(3, 31, 315, 31529, '¿El número de personas es adecuado en cada uno de los puestos?'),
(3, 31, 316, 31630, '¿Considera que debe revisarse la estructura actual, a fin de hacerla más eficiente?'),
(3, 31, 317, 31731, '¿Se encuentra definida adecuadamente la línea de autoridad?'),
(3, 31, 317, 31732, '¿Su autoridad va de acuerdo a su responsabilidad?'),
(3, 31, 317, 31733, '¿En su área se han presentado conflictos por el ejercicio de la autoridad?'),
(3, 31, 317, 31734, '¿Existe en el área algún sistema de sugerencias y quejas por parte del personal?'),
(3, 32, 328, 32835, '¿Se han establecido funciones del área?'),
(3, 32, 328, 32836, '¿Las funciones están de acuerdo con las atribuciones legales?'),
(3, 32, 328, 32837, '¿Están por escrito en algún documento las funciones del área? '),
(3, 32, 329, 32938, '¿Las funciones están encaminadas a la consecución de los objetivos institucionales e internos?'),
(3, 32, 329, 32939, '¿Las funciones del área están acordes al reglamento interior?'),
(3, 32, 329, 32940, '¿Conocen otras áreas las funciones del área?'),
(3, 32, 329, 32941, '¿Considera que se deben de dar a conocer?'),
(5, 51, 5110, 51101, 'Tienen el almacen de archivos proteccion automatica contra fuego?'),
(5, 51, 5110, 51102, 'Se verifican con frecuencia la validez de los inventarios de los archivos magneticos?'),
(5, 51, 5110, 51103, 'En caso de existir discrepacia entre archivos y su contenido,¿se resuelven y explican satisfactoriamente las discrepancias?'),
(5, 51, 5110, 51104, 'Se tienen procedimientos que permitan la reconstruccions de un archivo en cinta o disco, el cual fue inadvertidamente destruido?'),
(5, 51, 5110, 51105, 'Se tiene identificados los archivos con informacion confidencial y se cuenta con claves de acceso?'),
(5, 51, 5110, 51106, 'Existe un control estricto de las copias de estos archivos?'),
(5, 51, 5110, 51107, 'Se borran los archivos de los dispositivos de almacenamiento, cuando se desechan estos?'),
(5, 51, 5110, 51108, 'Se certifica la destruccion o baja de los archivos defectuosos?'),
(5, 51, 5110, 51109, 'Se registran como parte del inventario los nuevos elementos magnetico que se reciben en la biblioteca?'),
(5, 51, 5111, 51111, 'Esiste un programa de mantenimiento preventivo para cada dispositivo del sistema de computo?'),
(5, 51, 5111, 51112, 'Se lleva a cabo tal programa?'),
(5, 51, 5111, 51113, 'Existen tiempos de respuesta y de compostura estipulados en los contratos?'),
(5, 51, 5111, 51114, 'Existe algun tipo de mantenimiento preventivo que pueda dar el operador auttorizado por el proveedor?'),
(5, 51, 5111, 51115, 'Es posible identificar por medio de estos registros los problemas mas recurrentes o las fallas mayores que afectan en forma determinada el funcionamie'),
(5, 51, 516, 51610, 'Se hace una relacion de cuando y a quien fueron distribuidos los listados?'),
(5, 51, 516, 51611, 'Se controlan separadamente los documentos confienciales?'),
(5, 51, 516, 51612, 'Se aprovecha adecuadamente el papel de los listados inservibles?'),
(5, 51, 516, 51613, 'existe un registro de los documentos que entran a captura?'),
(5, 51, 516, 51614, 'se hace un reporte diario, semanal o mensual de captura?'),
(5, 51, 516, 51615, 'se lleva un control de la produccion por persona?'),
(5, 51, 517, 51710, 'Prohibe a analista y otro personal ajeno al area la operacion de la maquina?'),
(5, 51, 517, 51711, 'Se prohibe al operador modificar informacion de archivos o biblioteca de programas?'),
(5, 51, 517, 51712, 'El operador realiza funciones de mantenimiento diario en dispositivos que asi lo requieran?'),
(5, 51, 517, 51713, 'Se tiene un control adecuado sobre los sistemas que estan en operacion?'),
(5, 51, 517, 51714, 'Verifican que exista un registro de funcionamiento que muestre el tiempo de de paros y mantenimiento o instalacion de software?'),
(5, 51, 517, 51715, 'Existen procedimientos para evitar las corridas de programas no autorizados?'),
(5, 51, 517, 51716, 'Exiate un plan definido para el cambio de turno de operacion que evite el desconntrol y discontinuidad de la operacion?'),
(5, 51, 517, 51717, 'Verifican que sea razonable el plan para coordinar el cambio de turno?'),
(5, 51, 517, 51718, 'Se hacen inspecciones periodicas de muestreo?'),
(5, 51, 517, 51719, 'Se controla estrictamente el acceso a la documentacion de las aplicaciones rutinarias?'),
(5, 51, 517, 51720, 'Existe un lugar para archivar las bitacoras del sistema del equipo de computo?'),
(5, 51, 517, 51721, 'Se tienen seguros sobre todos los equipos?'),
(6, 61, 611, 61110, '¿Se tiene paredes que no están adecuadamente selladas?'),
(6, 61, 611, 61111, '¿Se tiene grandes ventanales orientados a  la salida o entrada del sol?'),
(6, 61, 611, 61112, '¿Existe lugar suficiente para los equipos?'),
(6, 61, 611, 61113, '¿Está sobresaturada la instalación?'),
(6, 61, 611, 61114, '¿Se tiene lugar previsto? Este es el adecuado para: Almacenamiento de equipos magnéticos'),
(6, 61, 611, 61115, '¿Se tiene lugar previsto? Este es el adecuado para: Formatos y papel para impresora'),
(6, 61, 611, 61116, '¿Se tiene lugar previsto? Este es el adecuado para: Mesas de trabajo y muebles'),
(6, 61, 611, 61117, '¿Se tiene lugar previsto? Este es el adecuado para: Área y mobiliario para mantenimiento '),
(6, 61, 611, 61118, '¿Se tiene lugar previsto? Este es el adecuado para: Equipo de telecomunicaciones'),
(6, 61, 611, 61119, '¿Se tiene lugar previsto? Este es el adecuado para: Área de programación '),
(6, 61, 611, 61120, '¿Se tiene lugar previsto? Este es el adecuado para: Consolas de operador '),
(6, 61, 611, 61121, '¿Se tiene lugar previsto? Este es el adecuado para: Área de recepción'),
(6, 61, 611, 61122, '¿Se tiene lugar previsto? Este es el adecuado para: Microcomputadoras '),
(6, 61, 611, 61123, '¿Se tiene lugar previsto? Este es el adecuado para: Fuentes de poder '),
(6, 61, 611, 61124, '¿Se tiene lugar previsto? Este es el adecuado para: Bóveda de seguridad (bóveda antincendios bajo máxima protección)'),
(6, 61, 614, 61410, '¿Se tiene precaución contra fauna nociva?'),
(6, 61, 614, 61411, '¿El equipo contra fauna nociva está debidamente protegido y cuidado para no producir problemas al personal?'),
(6, 61, 614, 61412, '¿Se utiliza material antiestático?'),
(6, 61, 614, 61413, '¿Se tiene reguladores para los equipos de cómputo?'),
(6, 61, 614, 61414, '¿Se verifica la regulación de las cargas máximas y mínimas? '),
(6, 61, 614, 61415, '¿Se tiene equipo interrumpible?'),
(6, 61, 614, 61416, '¿Dura el tiempo suficiente para respaldar los archivos o para continuar el proceso?'),
(6, 61, 614, 61417, '¿Se tiene generadores de corriente interrumpida? '),
(6, 61, 614, 61418, '¿Se prueba su funcionamiento? '),
(6, 61, 614, 61419, '¿Se tiene switch de apagado en caso de emergencia en lugar visible?'),
(6, 61, 614, 61420, '¿Los cables están dentro de paneles y canales eléctricos?'),
(6, 61, 614, 61421, '¿Existen tableros de distribución eléctrica?'),
(6, 61, 616, 61610, 'Se controla el acceso con: Puerta con cerradura '),
(6, 61, 616, 61611, 'Se controla el acceso con: Puerta electrónica'),
(6, 61, 616, 61612, 'Se controla el acceso con: Puerta sensorial '),
(6, 61, 616, 61613, 'Se controla el acceso con: Registro de entradas '),
(6, 61, 616, 61614, 'Se controla el acceso con: Puertas dobles '),
(6, 61, 616, 61615, 'Se controla el acceso con: Escolta controlada '),
(6, 61, 616, 61616, 'Se controla el acceso con: Alarmas '),
(6, 61, 616, 61617, 'Se controla el acceso con: Tarjetas magnéticas'),
(6, 61, 616, 61618, 'Se controla el acceso con: Control biométrico '),
(6, 61, 616, 61619, 'Se controla el acceso con: Identificación personal  '),
(6, 61, 616, 61620, '¿Existe vigilancia en el centro de máquinas las 24 horas?'),
(6, 61, 616, 61621, '¿Se ha instruido a estas personas sobre qué medidas tomar en caso de que alguien pretenda entrar sin autorización?'),
(6, 61, 616, 61622, '¿Son controladas las visitas y demostraciones en el centro de cómputo?'),
(6, 61, 616, 61623, '¿Se registra el acceso al cuarto de las personas ajenas a la dirección de informática?'),
(6, 61, 617, 61710, 'Existe alarmas para detectar condiciones anormales de ambiente: En la bodega '),
(6, 61, 617, 61711, '¿La alarma es perfectamente audible?'),
(6, 61, 617, 61712, 'La alarma está conectada: Al puesto de guardias'),
(6, 61, 617, 61713, 'La alarma está conectada: A la estación de bomberos '),
(6, 61, 617, 61714, 'La alarma está conectada: A algún otro lado'),
(6, 61, 617, 61715, 'Existen extintores de fuego: Manuales '),
(6, 61, 617, 61716, 'Existen extintores de fuego: Automáticos'),
(6, 61, 617, 61717, '¿Se ha adiestrado al personal en el manejo de los extintores?'),
(6, 61, 617, 61718, 'Los extintores, manuales o automáticos, funcionan a base de: Agua'),
(6, 61, 617, 61719, 'Los extintores, manuales o automáticos, funcionan a base de: Gas '),
(6, 61, 617, 61720, '¿Se revisa de acuerdo con el proveedor el funcionamiento de los extintores?'),
(6, 61, 617, 61721, 'Si es que existen extintores automáticos, ¿son activados por los detectores automáticos de fuego?'),
(6, 61, 617, 61722, 'Si los extintores automáticos son a base de agua ¿se han tomado medidas  para evitar que el agua cause más daño que el fuego?'),
(6, 61, 617, 61723, 'Si los extintores automáticos son a base de gas, ¿se han tomado medidas para evitar que el gas cause más daño que el fuego?'),
(6, 61, 617, 61724, 'Existe un lapso de tiempo suficiente, antes de que funcione los extintores automáticos, para que el personal: Corte la acción de los extintores por tr'),
(6, 61, 617, 61725, 'Existe un lapso de tiempo suficiente, antes de que funcione los extintores automáticos, para que el personal: Pueda cortar la energía eléctrica'),
(6, 61, 617, 61726, 'Existe un lapso de tiempo suficiente, antes de que funcione los extintores automáticos, para que el personal: Pueda abandonar el local sin peligro de '),
(6, 61, 617, 61727, '¿Es inmediata su acción?'),
(6, 61, 617, 61728, '¿Los interruptores de energía están debidamente protegidos, etiquetados y sin obstáculos para alcanzarlos?'),
(6, 61, 617, 61729, '¿Saben que hacer los operadores del cuarto de máquinas en caso de que ocurra una emergencia ocasionada por fuego?'),
(6, 61, 617, 61730, '¿El personal ajeno a operación sabe qué hacer en el caso de una emergencia (incendio)?'),
(6, 61, 617, 61731, '¿Existe salida de emergencia?'),
(6, 61, 617, 61732, 'Ésta puerta solo es posible abrirla: Desde el interior'),
(6, 61, 617, 61733, 'Ésta puerta solo es posible abrirla: Desde el exterior '),
(6, 61, 617, 61734, 'Ésta puerta solo es posible abrirla: Por ambos lados'),
(6, 61, 617, 61735, '¿Se revisa frecuentemente que no esté abierta o descompuesta la cerradura de esta puerta y de las ventanas, si es que existen?'),
(6, 61, 617, 61736, '¿Se ha adiestrado a todo el personal en la forma en que se deben desalojar las instalaciones en caso de emergencia?'),
(6, 61, 617, 61737, 'Se han tomado medidas para minimizar la posibilidad de fuego: Evitando artículos inflamables en el cuarto de maquinas'),
(6, 61, 617, 61738, 'Se han tomado medidas para minimizar la posibilidad de fuego: Prohibiendo fumar'),
(6, 61, 617, 61739, 'Se han tomado medidas para minimizar la posibilidad de fuego: Vigilando y manteniendo el sistema eléctrico'),
(6, 61, 617, 61740, '¿No se ha previsto?'),
(6, 61, 617, 61741, '¿Se tiene identificadas y señaladas las salidas de emergencia?'),
(6, 61, 617, 61742, '¿Se encuentran las señalizaciones en la parte inferior y superior de los  pasillos?'),
(6, 61, 617, 61743, '¿Se cuenta con máscaras contra gases o sistemas portátiles de oxigeno?'),
(6, 61, 617, 61744, '¿Se tiene bóveda contra incendio?'),
(6, 61, 618, 61810, 'Con frecuencia de: Cada año'),
(6, 61, 618, 61811, 'Cuándo se efectúan modificaciones a los programas, es a iniciativa de: Usuario '),
(6, 61, 618, 61812, 'Cuándo se efectúan modificaciones a los programas, es a iniciativa de: Director de informática'),
(6, 61, 618, 61813, 'Cuándo se efectúan modificaciones a los programas, es a iniciativa de: Jefe de análisis'),
(6, 61, 618, 61814, 'Cuándo se efectúan modificaciones a los programas, es a iniciativa de: Programador '),
(6, 61, 618, 61815, 'Cuándo se efectúan modificaciones a los programas, es a iniciativa de: Otra'),
(6, 61, 618, 61816, 'La solicitud  a los programas se hace en forma: Oral '),
(6, 61, 618, 61817, 'La solicitud  a los programas se hace en forma: Escrita'),
(6, 61, 618, 61818, 'Una vez efectuadas las modificaciones, ¿se muestran las pruebas a los interesados?'),
(6, 61, 618, 61819, '¿Existe control estricto en las modificaciones?'),
(6, 61, 618, 61820, '¿Se revisa que tengan la fecha de las modificaciones cuando se hayan efectuado?'),
(6, 61, 618, 61821, 'Se verifica identificación: De la terminal'),
(6, 61, 618, 61822, 'Se verifica identificación: Del usuario'),
(6, 61, 618, 61823, 'No se pide identificación'),
(6, 61, 618, 61824, '¿Se ha establecido el nivel de usuario de la información?'),
(6, 61, 618, 61825, '¿Se ha establecido un número máximo de violaciones en sucesión para para que la computadora cierre esa terminal y se le aviso al responsable de ella?'),
(6, 61, 618, 61826, '¿Se registra cada violación a los procedimientos con el fin de llevar estadísticas y frenar las tendencias mayores?'),
(6, 61, 618, 61827, 'Existen controles y medidas de seguridad sobre: Recepción de documentos '),
(6, 61, 618, 61828, 'Existen controles y medidas de seguridad sobre: Información confidencial '),
(6, 61, 618, 61829, 'Existen controles y medidas de seguridad sobre: Captación de documentos '),
(6, 61, 618, 61830, 'Existen controles y medidas de seguridad sobre: Computo electrónico '),
(6, 61, 618, 61831, 'Existen controles y medidas de seguridad sobre: Programas '),
(6, 61, 618, 61832, 'Existen controles y medidas de seguridad sobre: Discotecas y cintotecas'),
(6, 61, 618, 61833, 'Existen controles y medidas de seguridad sobre: Documentos de salida'),
(6, 61, 618, 61834, 'Existen controles y medidas de seguridad sobre: Archivos magnéticos'),
(6, 61, 618, 61835, 'Existen controles y medidas de seguridad sobre: Operación del equipo de computación '),
(6, 61, 618, 61836, 'Existen controles y medidas de seguridad sobre: al acceso de personal'),
(6, 61, 618, 61837, 'Existen controles y medidas de seguridad sobre: Identificación del personal '),
(6, 61, 618, 61838, 'Existen controles y medidas de seguridad sobre: Policía'),
(6, 61, 618, 61839, 'Existen controles y medidas de seguridad sobre: Seguros contra incendio'),
(6, 61, 618, 61840, 'Existen controles y medidas de seguridad sobre: Cajas de seguridad'),
(6, 62, 623, 62310, '¿El número de operaciones críticas en sistema o línea o en sistema en batch es de 10 o más?'),
(6, 62, 623, 62311, '¿El número de operaciones críticas en sistema o línea o en sistema en batch es de 6-9?'),
(6, 62, 623, 62312, '¿El número de operaciones críticas en sistema o línea o en sistema en batch es de 3-5?'),
(6, 62, 623, 62313, '¿El número de operaciones críticas en sistema o línea o en sistema en batch es de 0-2?'),
(6, 62, 623, 62314, '¿La localización de los sistemas está en un área específica?'),
(6, 62, 623, 62315, '¿La localización de los sistemas esta en dos o tres áreas?'),
(6, 62, 623, 62316, '¿La localización de los sistemas corre por múltiples departamentos?'),
(6, 62, 623, 62317, '¿Es de fácil recuperación después de la interpretación es de 3 a 4 días en sistemas críticos?'),
(6, 62, 623, 62318, '¿Es de fácil recuperación después de la interpretación es de 12 o 24 horas en sistemas críticos?'),
(6, 62, 623, 62319, '¿Es de fácil recuperación después de la interpretación es sin problemas es de recuperación inmediatamente?'),
(6, 62, 623, 62320, '¿El control  de recuperación después de la interrupción es de mucho tiempo consumido y costoso por los sistemas interrelacionados?'),
(6, 62, 623, 62321, '¿El control  de recuperación después de la interrupción es alguna interrupción?'),
(6, 62, 623, 62322, '¿El control  de recuperación después de la interrupción es relativamente rápido, daño controlado?'),
(6, 62, 623, 62323, '¿El control  de recuperación después de la interrupción es parcialidad de copias manuales?'),
(6, 62, 623, 62324, '¿El control  de recuperación después de la interrupción es imposible?'),
(6, 62, 623, 62325, '¿El control  de recuperación después de la interrupción es algo posible?'),
(6, 62, 623, 62326, '¿El control  de recuperación después de la interrupción es relativamente fácil?'),
(6, 63, 631, 63110, 'Equipo adicional: Aire acondicionado BTU '),
(6, 63, 631, 63111, 'Equipo adicional: Temperatura requerida'),
(6, 63, 631, 63112, 'Equipo adicional: Húmeda requerida'),
(6, 63, 632, 63210, 'Se debe contar con: Convenios para el uso de computadoras compatibles '),
(3, 32, 3210, 321042, '¿Son adecuadas a la realidad las funciones?'),
(3, 32, 3210, 321043, '¿Son adecuadas a las necesidades actuales?'),
(3, 32, 3210, 321044, '¿Son adecuadas a la carga de trabajo?'),
(3, 32, 3210, 321045, '¿Existen conflictos por las cargas de trabajo desequilibradas?'),
(3, 32, 3210, 321046, '¿Se tienen contemplada la desconcentración?'),
(3, 32, 3210, 321047, '¿Participo la dirección de informática en su elaboración? '),
(3, 32, 3211, 321148, '¿Están delimitadas las funciones?'),
(3, 32, 3211, 321149, '¿A nivel de departamento?'),
(3, 32, 3211, 321150, '¿A nivel de puesto?'),
(3, 32, 3211, 321151, '¿Las actividades que realiza actualmente cumplen en su totalidad con las funciones conferidas?'),
(3, 32, 3211, 321152, '¿La falta de cumplimiento de las funciones es por (Falta de personal)?'),
(3, 32, 3211, 321153, '¿La falta de cumplimiento de las funciones es por (Personal no capacitado)?'),
(3, 32, 3211, 321154, '¿La falta de cumplimiento de las funciones es por (Cargas de trabajo excesiva)?'),
(3, 32, 3211, 321155, '¿La falta de cumplimiento de las funciones es por (Porque realiza otras actividades)?'),
(3, 32, 3211, 321156, '¿La falta de cumplimiento de las funciones es por (La forma en que las ordena)?'),
(3, 32, 3211, 321157, '¿Tienen programas y tareas encomendadas?'),
(3, 32, 3211, 321158, '¿Permiten cumplir con los programas y tareas encomendadas(necesidades de operación) '),
(3, 32, 3212, 321259, '¿Para cumplir con sus funciones requiere apoyo de otras áreas?'),
(3, 32, 3212, 321260, '¿Los apoyos se proporcionan con oportunidad?'),
(3, 32, 3212, 321261, 'Para cumplir con las funciones, ¿Proporcionan otros apoyos a otras áreas? '),
(3, 32, 3213, 321362, '¿Existen duplicidad de funciones en la misma área?'),
(3, 32, 3213, 321363, '¿Existen duplicidad de funciones en otras áreas?'),
(3, 32, 3213, 321364, '¿La duplicidad de funciones se debe a que el área no puede realizarlas?'),
(3, 32, 3213, 321365, '¿Las actividades que realiza actualmente cumplir con su totalidad con las funciones conferidas?'),
(3, 32, 3213, 321366, '¿La falta de cumplimiento de las funciones es por (falta de personal)?'),
(3, 32, 3213, 321367, '¿La falta de cumplimiento de las funciones es por (personal no capacitado)?'),
(3, 32, 3213, 321368, '¿La falta de cumplimiento de las funciones es por (cargas de trabajo excesivas)?'),
(3, 32, 3213, 321369, '¿La falta de cumplimiento de las funciones es por (por que realiza otras actividades)?'),
(3, 32, 3213, 321370, '¿La falta de cumplimiento de las funciones es por (la forma en que las ordena)?'),
(3, 32, 3213, 321371, '¿Se tiene programas  y tareas encomendadas?'),
(3, 32, 3213, 321372, '¿Permiten cumplir con los programas y tareas encomendadas (necesidades de operación)?'),
(3, 32, 3213, 321373, '¿Se pueden eliminar funciones?'),
(3, 32, 3213, 321374, '¿Se pueden transferir funciones?'),
(3, 32, 3213, 321375, '¿Permite la duplicidad que se dé el control interno?'),
(3, 33, 3314, 331476, '¿Se han establecido objetivos para el área?'),
(3, 33, 3314, 331477, '¿Los objetivos establecidos son congruentes con(los de la dirección)?'),
(3, 33, 3314, 331478, '¿Los objetivos establecidos son congruentes con(los de la subdirección)?'),
(3, 33, 3314, 331479, '¿Los objetivos establecidos son congruentes con(los del departamento/oficina)?'),
(3, 33, 3314, 331480, '¿Los objetivos establecidos son congruentes con(los de  otros departamentos/oficinas)?'),
(3, 33, 3314, 331481, '¿Nadie exige establecer los objetivos?'),
(3, 33, 3314, 331482, '¿Considera importante que se establezcan los objetivos?'),
(3, 33, 3314, 331483, '¿Es responsabilidad de otra área establecer los objetivos?'),
(3, 33, 3315, 331584, '¿Se ha definido por escrito los objetivos del área?'),
(3, 33, 3315, 331585, '¿Se han dado conocer los objetivos'),
(3, 33, 3315, 331586, '¿Considera importante que el personal conozca los objetivos?'),
(3, 33, 3316, 331687, '¿Abarcan los objetivos toda la operación del área?'),
(3, 33, 3316, 331688, '¿Los objetivos son claros y precisos?'),
(3, 33, 3316, 331689, '¿Se pueden alcanzar los objetivos?'),
(3, 33, 3316, 331690, '¿Están de  acuerdo con las funciones del área?'),
(3, 33, 3316, 331691, '¿Señalan cuáles son las realizaciones esperadas?'),
(3, 33, 3316, 331692, '¿Son congruentes con los objetivos institucionales?'),
(3, 33, 3316, 331693, '¿Sirve de guía al personal?'),
(3, 33, 3316, 331694, '¿Sirven para motivar el personal?'),
(3, 33, 3316, 331695, '¿Se han establecido para el corto, mediano y largo plazos?'),
(3, 33, 3317, 331796, '¿Existen mecanismos para conocer el grado de cumplimiento de los objetivos?'),
(3, 33, 3317, 331797, '¿Se elaboran algún reporte sobre el grado de avance el cumplimiento de los objetivos?'),
(3, 33, 3318, 331898, '¿Se revisa los objetivos?'),
(3, 33, 3318, 331899, '¿Participa  el área en la actualización de los objetivos? '),
(5, 51, 5110, 511010, 'Se tiene un responsable, por turno, de los archivos magneticos?'),
(5, 51, 5110, 511011, 'Se realiza auditoria periodicas a los medios de almacenamiento?'),
(5, 51, 5110, 511012, 'Se restringe el acceso a los lugares asignados para guardar los dispositivos de almacenamiento, a cargo de personal autorizado?'),
(5, 51, 5110, 511013, 'Se tiene relacion del personal autorizado para firmar la salida de archivos confidenciales?'),
(5, 51, 5110, 511014, 'Existe un procedimiento para registrar los archivos que se prestan y la fecha en que se fecha se devolveran?'),
(5, 51, 5110, 511015, 'Se lleva control sobre los archivos presentados por la instalacion?'),
(5, 51, 5110, 511016, 'El cintotecario  controla la cinta maestra anterior previendo su uso incorrecto o su eliminacion prematura?'),
(5, 51, 5110, 511017, 'La operacion de remplazo es controlada por el cintotecario?'),
(5, 51, 5110, 511018, 'Se utiliza la politica de conservacion de archivos hijo-padre-abuelo?'),
(5, 51, 5110, 511019, 'en los procesos que manejan archivos en linea. ¿existen procedimientos para recuperacion de archivos?'),
(5, 51, 5110, 511020, 'Estos procedimientos los conocen los operadores?'),
(3, 34, 3419, 3319100, '¿Es suficientemente el número de personal para el desarrollo de las funciones del área?'),
(3, 34, 3419, 3419101, '¿Se deja de realizar alguna actividad por falta de personal?'),
(3, 34, 3419, 3419102, '¿Está capacitado el personal para realizar con eficacia sus funciones?'),
(3, 34, 3419, 3419103, '¿Es eficaz en el cumplimiento de sus funciones?'),
(3, 34, 3419, 3419104, '¿Es adecuada la calidad del trabajo del personal?'),
(3, 34, 3419, 3419105, '¿Es frecuente la repetición de los trabajos encomendados?'),
(3, 34, 3419, 3419106, '¿El personal es discreto en el manejo de información confidencial?'),
(3, 34, 3419, 3419107, 'En general, ¿acata el personal las políticas, sistemas y procedimientos establecidos?'),
(3, 34, 3419, 3419108, '¿Alguna de las situaciones anteriores provoca un desequilibrio de las cargas de trabajo?'),
(3, 34, 3419, 3419109, '¿Respecta el personal la autoridad establecida?'),
(3, 34, 3419, 3419110, '¿Existe cooperación por parte del personal para la realización del trabajo?'),
(3, 34, 3419, 3419111, '¿El personal tiene afán de superación?'),
(3, 34, 3419, 3419112, '¿Presenta el personal sugerencias para mejorar el desempeño actual?'),
(3, 34, 3419, 3419113, '¿Se toman en cuenta las sugerencias de los empleados?'),
(3, 34, 3420, 3420114, 'Los programas de capacitación incluyen al personal de (Dirección) '),
(3, 34, 3420, 3420115, 'Los programas de capacitación incluyen al personal de (Análisis)'),
(3, 34, 3420, 3420116, 'Los programas de capacitación incluyen al personal de (Programación)'),
(3, 34, 3420, 3420117, 'Los programas de capacitación incluyen al personal de (Operación)'),
(3, 34, 3420, 3420118, 'Los programas de capacitación incluyen al personal de (Administración)'),
(3, 34, 3420, 3420119, 'Los programas de capacitación incluyen al personal de (Administración de bases de datos)'),
(3, 34, 3420, 3420120, 'Los programas de capacitación incluyen al personal de (Comunicaciones redes)'),
(3, 34, 3420, 3420121, 'Los programas de capacitación incluyen al personal de (Captura)'),
(3, 34, 3420, 3420122, 'Los programas de capacitación incluyen al personal de (Otros)'),
(3, 34, 3420, 3420123, '¿Se han identificado las necesidades actuales y futuras de capacitación del personal del área? '),
(3, 34, 3420, 3420124, '¿Se desarrollan programas de capacitación para el personal del área?'),
(3, 34, 3420, 3420125, '¿Apoya la superioridad la realización de estos programas?'),
(3, 34, 3420, 3420126, '¿Se evalúan los resultados de los programas de capacitación? '),
(3, 34, 3421, 3421127, '¿Se lleva a cabo la supervisión del personal?'),
(3, 34, 3421, 3421128, '¿Se  controla el ausentismo y los retardos del personal?'),
(3, 34, 3421, 3421129, '¿Se evalúa el desempeño del personal?'),
(3, 34, 3422, 3422130, 'En términos generales, ¿se adapta el personal al mejoramiento administrativo (resistencia al cambio)?'),
(3, 34, 3422, 3422131, '¿Se cuenta con un grado de disciplina del personal? '),
(3, 34, 3422, 3422132, '¿Se cuenta con un grado de asistencia y puntualidad del personal?'),
(3, 34, 3422, 3422133, '¿Existe una política uniforme y consistente para sancionar la indisciplina del personal?'),
(3, 34, 3422, 3422134, '¿Puede el personal presentar quejas y/o problemas?'),
(3, 34, 3422, 3422135, '¿Se otorgan los ascensos, promociones y aumentos salariales?'),
(3, 34, 3422, 3422136, '¿Se otorgan los ascensos, promociones y aumentos salariales?'),
(3, 34, 3423, 3423137, '¿Conoce el reglamento interior de trabajo el personal del área? '),
(3, 34, 3423, 3423138, '¿Se apoyan en él para solucionar los conflictos laborales?'),
(3, 34, 3423, 3423139, '¿Se presentan problemas con frecuencia? '),
(3, 34, 3424, 3424140, '¿Está el personal adecuadamente remunerado respecto a (Trabajo desempeñado)'),
(3, 34, 3424, 3424141, '¿Está el personal adecuadamente remunerado respecto a (Puestos similares en otras organizaciones)'),
(3, 34, 3424, 3424142, '¿Está el personal adecuadamente remunerado respecto a (Puestos similares en otras áreas)'),
(3, 34, 3425, 3425143, '¿El personal está integrado como grupo de trabajo?'),
(3, 34, 3425, 3425144, '¿Existe un grado de convivencia con el personal?'),
(3, 34, 3425, 3425145, '¿Son adecuadas las condiciones ambientales con respecto a (Espacio del área)'),
(3, 34, 3425, 3425146, '¿Son adecuadas las condiciones ambientales con respecto a (Iluminación)'),
(3, 34, 3425, 3425147, '¿Son adecuadas las condiciones ambientales con respecto a (Ventilación)'),
(3, 34, 3425, 3425148, '¿Son adecuadas las condiciones ambientales con respecto a (Equipo de oficina)'),
(3, 34, 3425, 3425149, '¿Son adecuadas las condiciones ambientales con respecto a (Mobiliario)'),
(3, 34, 3425, 3425150, '¿Son adecuadas las condiciones ambientales con respecto a (Ruido)'),
(3, 34, 3425, 3425151, '¿Son adecuadas las condiciones ambientales con respecto a (Limpieza y/o aseo)'),
(3, 34, 3425, 3425152, '¿Son adecuadas las condiciones ambientales con respecto a (Instalaciones sanitarias)'),
(3, 34, 3425, 3425153, '¿Son adecuadas las condiciones ambientales con respecto a (Instalaciones de comunicación)'),
(3, 34, 3426, 3426154, '¿Participa en la selección del personal?'),
(3, 34, 3426, 3426155, '¿Se prevén las necesidades del personal con anterioridad? (En cantidad)'),
(3, 34, 3426, 3426156, '¿Se prevén las necesidades del personal con anterioridad? (En calidad)'),
(3, 34, 3426, 3426157, '¿Está prevista la sustitución del personal clave? '),
(3, 34, 3427, 3427158, '¿Se lleva a cabo  la introducción y desarrollo del personal del área? '),
(3, 34, 3427, 3427159, '¿Se realiza la motivación del personal del área? '),
(3, 34, 3427, 3427160, '¿Se estimula y se recompensa al personal del área? '),
(3, 34, 3427, 3427161, '¿Existe oportunidad de ascensos y promociones? '),
(3, 35, 3528, 3528162, '¿Existe un sistema de contabilidad de costos por (Usuario)?'),
(3, 35, 3528, 3528163, '¿Existe un sistema de contabilidad de costos por (Por aplicación)?'),
(3, 35, 3528, 3528164, '¿Conocen los usuarios los costos de sus aplicaciones?'),
(3, 35, 3528, 3528165, '¿Los reportes de costo permiten la comparación de los gastos en la dirección de informática contra lo presupuestado?'),
(3, 35, 3528, 3528166, '¿Existen cargos adicionales que se manejan por separado fuera del contrato? (Utilización del equipo)'),
(3, 35, 3528, 3528167, '¿Existen cargos adicionales que se manejan por separado fuera del contrato? (Servicio de mantenimiento)'),
(3, 35, 3528, 3528168, '¿Existen cargos adicionales que se manejan por separado fuera del contrato? (Capacitación del personal)'),
(3, 35, 3528, 3528169, '¿Existen cargos adicionales que se manejan por separado fuera del contrato? (Asesoría en sistemas de cómputo)'),
(3, 35, 3528, 3528170, '¿Existen cargos adicionales que se manejan por separado fuera del contrato? (Gastos de instalación del equipo)'),
(3, 35, 3528, 3528171, '¿Existen cargos adicionales que se manejan por separado fuera del contrato? (Impuestos federales, estatales, municipales y especiales)'),
(3, 35, 3528, 3528172, '¿Existen cargos adicionales que se manejan por separado fuera del contrato? (Seguros de transporte y compra de equipo)'),
(3, 35, 3528, 3528173, '¿Existen cargos adicionales que se manejan por separado fuera del contrato? (otros)'),
(3, 35, 3528, 3528174, '¿Existe una situación jurídica en (Compra de equipo)?'),
(3, 35, 3528, 3528175, '¿Existe una situación jurídica en (Renta del equipo)?'),
(3, 35, 3528, 3528176, '¿Existe una situación jurídica en (Renta con opción a compra)?'),
(3, 35, 3528, 3528177, '¿Existe una situación jurídica en (Renta de tiempo máquina)?'),
(3, 35, 3528, 3528178, '¿Existe una situación jurídica en (Maquila)?'),
(3, 35, 3528, 3528179, '¿Existe una situación jurídica en (Otros)?'),
(3, 35, 3528, 3528180, '¿Existe una situación jurídica del software en cuanto a (Compra)?'),
(3, 35, 3528, 3528181, '¿Existe una situación jurídica del software en cuanto a (Renta)?'),
(3, 35, 3528, 3528182, '¿Existe una situación jurídica del software en cuanto a (Elaborado internamente)?'),
(3, 35, 3528, 3528183, '¿Existe una situación jurídica del software en cuanto a (Maquila)?'),
(3, 35, 3529, 3529184, '¿Se realiza una formulación del presupuesto del área? '),
(3, 35, 3529, 3529185, '¿Se respetan los planteamientos presupuestales del área?'),
(3, 35, 3529, 3529186, '¿Los recursos financieros con que cuenta el área, son suficientes para alcanzar los objetivos y metas establecidos? '),
(3, 35, 3530, 3530187, '¿Existe un programa sobre requerimientos del área?'),
(3, 35, 3530, 3530188, '¿Se respetan los planteamientos del área? '),
(3, 35, 3530, 3530189, '¿Los recursos materiales que se le proporcionan al área, son suficientes para cumplir con las funciones encomendadas?'),
(3, 35, 3530, 3530190, '¿Los recursos se proporcionan oportunamente? '),
(3, 35, 3530, 3530191, '¿Existe un programa sobre los servicios generales que  requiere el área? '),
(3, 35, 3530, 3530192, '¿Considera los servicios generales que se proporcionan al área son (Adecuados)?'),
(3, 35, 3530, 3530193, '¿Considera los servicios generales que se proporcionan al área son (Suficientes)?'),
(3, 35, 3530, 3530194, '¿Considera los servicios generales que se proporcionan al área son (Oportunos)?'),
(3, 35, 3530, 3530195, '¿Se cuenta con el equipo y mobiliario adecuados y en cantidad suficiente para desarrollar su trabajo?'),
(3, 35, 3530, 3530196, '¿Están adecuadamente distribuidos en el área de trabajo?'),
(3, 35, 3530, 3530197, '¿Actualmente se están dejando de realizar actividades por falta de material y equipo?'),
(3, 35, 3530, 3530198, '¿Existe el servicio de mantenimiento del equipo?'),
(3, 35, 3530, 3530199, '¿Existen medidas de seguridad?'),
(3, 35, 3530, 3530200, '¿Se reciclan o se reutilizan el equipo en desuso? ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuestas`
--

CREATE TABLE IF NOT EXISTS `respuestas` (
  `id_resp` int(11) NOT NULL,
  `resp` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id_resp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `respuestas`
--

INSERT INTO `respuestas` (`id_resp`, `resp`) VALUES
(1, 'Si'),
(2, 'No');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rubros`
--

CREATE TABLE IF NOT EXISTS `rubros` (
  `id_rubro` int(11) NOT NULL,
  `rubro` varchar(50) NOT NULL,
  PRIMARY KEY (`id_rubro`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `rubros`
--

INSERT INTO `rubros` (`id_rubro`, `rubro`) VALUES
(1, 'Concepto de Auditoria en Informatica'),
(2, 'Planeacion de la Auditoria en Informatica'),
(3, 'Auditoria de la Funcion en Informatica'),
(4, 'Evaluacion de los Sistemas'),
(5, 'Evalauacion del Proceso de los Datos'),
(6, 'Evaluacion de la Seguridad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subrubro`
--

CREATE TABLE IF NOT EXISTS `subrubro` (
  `id_rubro` int(11) NOT NULL,
  `id_subr` int(11) NOT NULL,
  `subr` varchar(40) NOT NULL,
  PRIMARY KEY (`id_subr`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `subrubro`
--

INSERT INTO `subrubro` (`id_rubro`, `id_subr`, `subr`) VALUES
(3, 31, 'Estructura Orgánica'),
(3, 32, 'Funciones'),
(3, 33, 'Objetivos'),
(3, 34, 'Evaluación de Recursos Humanos'),
(3, 35, 'Situación presupuestal y financiera'),
(5, 51, 'Control'),
(5, 52, 'Orden en el centro de computo'),
(5, 53, 'Evaluacion de la configuracion del siste'),
(5, 54, 'Productividad'),
(6, 61, 'Seguridad logica y confidencialidad'),
(6, 62, 'Seguridad en contra de virus'),
(6, 63, 'Seleccion de la estrategia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subsubrubro`
--

CREATE TABLE IF NOT EXISTS `subsubrubro` (
  `id_rubro` int(11) NOT NULL,
  `id_subr` int(11) NOT NULL,
  `id_subsr` int(11) NOT NULL,
  `subsr` varchar(40) NOT NULL,
  PRIMARY KEY (`id_subsr`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `subsubrubro`
--

INSERT INTO `subsubrubro` (`id_rubro`, `id_subr`, `id_subsr`, `subsr`) VALUES
(3, 31, 311, 'Estructura orgánica (Bases Jurídicas)'),
(3, 31, 312, 'Objetivos de la estructura'),
(3, 31, 313, 'Niveles jerárquicos'),
(3, 31, 314, 'Departamentalización'),
(3, 31, 315, 'Puestos'),
(3, 31, 316, 'Expectativas'),
(3, 31, 317, 'Autoridad'),
(3, 32, 328, 'Existencias_de_funciones'),
(3, 32, 329, 'Coincidencias'),
(5, 51, 511, 'Politica de respaldos'),
(5, 51, 512, 'Politicas y procedimientos'),
(5, 51, 513, 'Politica de revision de bitacora'),
(5, 51, 514, 'Control de las licencias del software'),
(5, 51, 515, 'Politica de seguridad fisica del site'),
(5, 51, 516, 'Control de datos fuente y manejo de cifr'),
(5, 51, 517, 'Control de operacion'),
(5, 51, 518, 'Control de salida'),
(5, 51, 519, 'Control de asignacion de trabajo'),
(5, 54, 541, 'Puntos a evaluar en los equipos'),
(5, 54, 542, 'renta,renta con opcion a compra o compra'),
(5, 54, 543, 'Centralizacion vs. descentralizacion'),
(6, 61, 611, 'Ubicación y construcción del centro de c'),
(6, 61, 612, 'Piso elevado o camara lenta'),
(6, 61, 613, 'Aire acondicionado'),
(6, 61, 614, 'Instalacion electrica y suministro de en'),
(6, 61, 615, 'Seguridad contra desastres provocados po'),
(6, 61, 616, 'Seguridad de autorizacion de accesos'),
(6, 61, 617, 'Deteccion de humo y fuego. Extintores'),
(6, 61, 618, 'Seguridad en general'),
(6, 62, 621, 'Seguridad del equipo'),
(6, 62, 622, 'Cuestionario de funciones criticas'),
(6, 62, 623, 'Cuestionario de operacion'),
(6, 63, 631, 'Plan de contingencias'),
(6, 63, 632, 'Red de comunicacion'),
(3, 32, 3210, 'Funciones_adecuadas'),
(3, 32, 3211, 'Cumplimiento_de_funciones'),
(3, 32, 3212, 'Apoyo'),
(3, 32, 3213, 'Duplicidad'),
(3, 33, 3314, 'Existencias_de_objetivos'),
(3, 33, 3315, 'Formales'),
(3, 33, 3316, 'Objetivos_Adecuados'),
(3, 33, 3317, 'Cumplimiento_de_objetivos'),
(3, 33, 3318, 'Actualización'),
(3, 34, 3419, 'Desempeño_y_cumplimiento'),
(3, 34, 3420, 'Capacitación'),
(3, 34, 3421, 'Supervisión'),
(3, 34, 3422, 'Limitantes'),
(3, 34, 3423, 'Condiciones_ de_trabajo'),
(3, 34, 3424, 'Remuneraciones'),
(3, 34, 3425, 'Ambiente'),
(3, 34, 3426, 'organizacion_de_trabajo'),
(3, 34, 3427, 'Desarrollo_y_motivacion'),
(3, 35, 3528, 'Presupuestos'),
(3, 35, 3529, 'Recursos_ financieros'),
(3, 35, 3530, 'Recursos_materiales'),
(5, 51, 5110, 'Control de medios de almacenamiento masi'),
(5, 51, 5111, 'Control de mantenimiento'),
(5, 51, 5112, 'Evaluavion del mantenimiento');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subtemas`
--

CREATE TABLE IF NOT EXISTS `subtemas` (
  `id_subtema` int(5) NOT NULL AUTO_INCREMENT,
  `nom_subtema` varchar(100) NOT NULL,
  `id_tema` int(5) NOT NULL,
  `id_capitulo` int(5) NOT NULL,
  PRIMARY KEY (`id_subtema`),
  UNIQUE KEY `id_subtema` (`id_subtema`),
  KEY `id_tema` (`id_tema`),
  KEY `id_capitulo` (`id_capitulo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=59 ;

--
-- Volcado de datos para la tabla `subtemas`
--

INSERT INTO `subtemas` (`id_subtema`, `nom_subtema`, `id_tema`, `id_capitulo`) VALUES
(1, 'Planeacion de la auditoria en informatica', 1, 1),
(2, 'Revision preliminar', 1, 1),
(3, 'Revision detallada', 1, 1),
(4, 'Examen y evaluacion de la informacion', 1, 1),
(5, 'Pruebas de Consentimiento', 1, 1),
(6, 'Pruebas de controles de usuarios', 1, 1),
(7, 'Pruebas sustantivas', 1, 1),
(8, 'Principales planes que se requieren dentro de la organizacion de informatica', 5, 2),
(9, 'Estructura organica', 6, 2),
(10, 'Funciones', 6, 2),
(11, 'Objetivos', 6, 2),
(12, 'Analisis de organizaciones', 6, 2),
(13, 'Presupuestos', 9, 2),
(14, 'Recursos financieros', 9, 2),
(15, 'Recursos materiales', 9, 2),
(16, 'Analisis y diseño estructurado', 11, 3),
(17, 'Programas de desarrollo', 12, 3),
(18, 'Bases de datos', 12, 3),
(19, 'El administrador de bases de datos', 12, 3),
(20, 'Comunicacion', 12, 3),
(21, 'Informes', 12, 3),
(22, 'Analisis de informes', 12, 3),
(23, 'Ruido, redundancia, entropia', 12, 3),
(24, 'Sistemas distribuidos, internet, comunicacion entre oficinas', 13, 3),
(25, 'Entrevistas', 19, 3),
(26, 'Cuestionarios', 19, 3),
(27, 'Internet', 20, 3),
(28, 'Proteccion de los derechos de autor', 20, 3),
(29, 'Secretos industriales', 20, 3),
(30, 'Control de datos de fuente y manejo de cifras de control', 21, 4),
(31, 'Control de operacion', 21, 4),
(32, 'Control de salida', 21, 4),
(33, 'Control de asignacion de trabajo', 21, 4),
(34, 'Control de medios de almacenamiento masivo', 21, 4),
(35, 'Control de mantenimiento', 21, 4),
(36, 'Puntos a evaluar en los equipos', 24, 4),
(37, 'Seguridad logica', 25, 5),
(38, 'Riesgos y controles a auditar', 25, 5),
(39, 'Encriptamiento', 25, 5),
(40, 'Ubicacion y contruccion del centro de computo', 27, 5),
(41, 'Piso elevado o camara plena', 27, 5),
(42, 'Aire acondicionado', 27, 5),
(43, 'Instalacion electrica y suministro de energia', 27, 5),
(44, 'Seguridad contra desastres provocados por agua', 27, 5),
(45, 'Seguridad de autorizacion de accesos', 27, 5),
(46, 'Deteccion de humo y fuego, extintores', 27, 5),
(47, 'Temperatura y humedad', 27, 5),
(48, 'Proteccion contra virus y elementos a auditar', 28, 5),
(49, 'Condiciones generales del seguro de equipo electronico', 29, 5),
(50, 'Plan de contingencias', 32, 5),
(51, 'Seleccion de estrategia', 32, 5),
(52, 'Analisis critico de los hechos', 33, 6),
(53, 'Metodologia para obtener el grado de madurez del sistema', 33, 6),
(54, 'Analisis', 34, 6),
(55, 'Evaluacion de la ejecucion', 35, 6),
(56, 'Evaluacion en el impacto', 35, 6),
(57, 'Evaluacion economica', 35, 6),
(58, 'Evaluacion subjetiva', 35, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `temas`
--

CREATE TABLE IF NOT EXISTS `temas` (
  `id_tema` int(11) NOT NULL AUTO_INCREMENT,
  `tema` varchar(100) NOT NULL,
  `id_capitulo` int(11) NOT NULL,
  PRIMARY KEY (`id_tema`),
  KEY `id_capitulo` (`id_capitulo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Volcado de datos para la tabla `temas`
--

INSERT INTO `temas` (`id_tema`, `tema`, `id_capitulo`) VALUES
(1, 'Fases de la auditoría', 1),
(2, 'Evaluación de los sistemas de acuerdo al riesgo', 1),
(3, 'Investigación preliminar', 1),
(4, 'Personal participante', 1),
(5, 'Recopilación de la información organizacional', 2),
(6, 'Evaluación de la estructura orgánica', 2),
(7, 'Evaluación de los recursos humanos', 2),
(8, 'Entrevista con el personal de informática', 2),
(9, 'Situación presupuestal y financiera', 2),
(10, 'Evaluación de sistemas', 3),
(11, 'Evaluación del análisis', 3),
(12, 'Evaluación del diseño lógico del sistema', 3),
(13, 'Evaluación del desarrollo del sistema', 3),
(14, 'Control de proyectos', 3),
(15, 'Control de diseño de sistemas y programación', 3),
(16, 'Instructivos de operación', 3),
(17, 'Forma de implementación', 3),
(18, 'Equipo y factibilidades de programación', 3),
(19, 'Entrevistas a usuarios', 3),
(20, 'derechos de autor y secretos industriales', 3),
(21, 'Controles', 4),
(22, 'Orden en el centro de cómputo', 4),
(23, 'Evaluación de la configuración del sistema de cómputo', 4),
(24, 'Productividad', 4),
(25, 'Seguridad lógica y confidencial', 5),
(26, 'Seguridad en el personal', 5),
(27, 'Seguridad física', 5),
(28, 'Seguridad en contra de virus', 5),
(29, 'Seguros', 5),
(30, 'Seguridad en la utilización del equipo', 5),
(31, 'Seguridad al restaurar el equipo', 5),
(32, 'Plan de contingencia y procedimientos de respaldo para casos de desastre', 5),
(33, 'Técnicas para la  interpretación de la informacion', 6),
(34, 'Evaluación de los sistemas', 6),
(35, 'Evaluación de los sistemas de información', 6),
(36, 'Controles', 6),
(37, 'Presentación', 6);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
