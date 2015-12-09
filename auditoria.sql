-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-12-2015 a las 01:15:12
-- Versión del servidor: 5.6.12-log
-- Versión de PHP: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;



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
  `auditor` varchar(100) NOT NULL,
  PRIMARY KEY (`id_audi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE IF NOT EXISTS `empresas` (
  `id_emp` int(5) NOT NULL AUTO_INCREMENT,
  `empresa` varchar(150) NOT NULL,
  PRIMARY KEY (`id_emp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
(3, 31, 311, 3111, '¿Se ajusta la estructura orgánica actual a las disposiciones jurídicas vigentes?'),
(3, 31, 312, 3122, '¿La estructura actual está encaminada a la consecución de los objetivos del área?'),
(3, 31, 312, 3123, '¿Se permite la estructura actual que se lleven a cabo con eficiencia (las atribuciones encomendadas)?'),
(3, 31, 312, 3124, '¿Se permite la estructura actual que se lleven a cabo con eficiencia (las funciones establecidas)?'),
(3, 31, 312, 3125, '¿Se permite la estructura actual que se lleven a cabo con eficiencia (la distribución del trabajo)?'),
(3, 31, 312, 3126, '¿Se permite la estructura actual que se lleven a cabo con eficiencia (el control interno)?'),
(3, 31, 313, 3137, '¿Los niveles jerárquicos establecidos actualmente son necesarios y suficientes para el desarrollo de las actividades del área?'),
(3, 31, 313, 3138, '¿Permiten los niveles jerárquicos actuales que se desarrolle la (operación)?'),
(3, 31, 313, 3139, '¿Permiten los niveles jerárquicos actuales que se desarrolle la (supervisión)?'),
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
(3, 32, 3210, 321042, '¿Son adecuadas a la realidad las funciones?'),
(3, 32, 3210, 321043, '¿Son adecuadas a las necesidades actuales?'),
(3, 32, 3210, 321044, '¿Son adecuadas a la carga de trabajo?'),
(3, 32, 3210, 321045, '¿Existen conflictos por las cargas de trabajo desequilibradas?'),
(3, 32, 3210, 321046, '¿Se tienen contemplada la desconcentración?'),
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
(3, 35, 'Situación presupuestal y financiera');

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
(3, 35, 3530, 'Recursos_materiales');

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
