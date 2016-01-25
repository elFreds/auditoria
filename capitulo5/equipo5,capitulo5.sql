-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-12-2015 a las 09:12:27
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `auditoria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividades`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignacion`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignarresp`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auditores`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fechas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--


--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`id_rubro`, `id_subr`, `id_subsr`, `id_preg`, `pregunt`) VALUES
(0, 0, 0, 0, ''),
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
(5, 51, 5110, 511020, 'Estos procedimientos los conocen los operadores?');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuestas`
--


--
-- Volcado de datos para la tabla `respuestas`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rubros`
--

--
-- Volcado de datos para la tabla `rubros`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subrubro`
--


--
-- Volcado de datos para la tabla `subrubro`
--

INSERT INTO `subrubro` (`id_rubro`, `id_subr`, `subr`) VALUES
(5, 51, 'Control'),
(5, 52, 'Orden en el centro de computo'),
(5, 53, 'Evaluacion de la configuracion del siste'),
(5, 54, 'Productividad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subsubrubro`
--

--
-- Volcado de datos para la tabla `subsubrubro`
--

INSERT INTO `subsubrubro` (`id_rubro`, `id_subr`, `id_subsr`, `subsr`) VALUES
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
(5, 51, 5110, 'Control de medios de almacenamiento masi'),
(5, 51, 5111, 'Control de mantenimiento'),
(5, 51, 5112, 'Evaluavion del mantenimiento');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subtemas`
--


--
-- Volcado de datos para la tabla `subtemas`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `temas`
--


--
-- Volcado de datos para la tabla `temas`
--


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
