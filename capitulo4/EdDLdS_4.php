<?php
$conexion = mysql_connect("localhost","root","") or die ("error servidor");
mysql_select_db("capitulo4_auditoria",$conexion) or die ("error seleccion");
$datos=mysql_query("SELECT * FROM preguntas where id_subr = 3 and id_subsr = 6 ",$conexion) or die ("error consulta");
?>
<html lang="es">
	<head>
	<title>Roger</title>
	<meta charset="utf-8">
	
	<link rel="stylesheet" type="text/css" href="css/css.css" />
	</head>
	<body>
		
	<div id="principal">
	<div id="cabecera">
	<div id="logo">
		<img src="tescha2.jpg" alt="logotipo" width="300px" height="100px" />
	</div>
	</div>
	<div id="lateral">
					<div id="menu">
						<ul>
							<li><a href="evaluacion_del_analisis.php">Regresar</a></li>
							<li><a href="EdDdS.php">Siguiente</a></li>
							
							<!--Aqui debes poner los links para cada tema el efecto se hace automáticamente -->
						</ul>
					</div>
	</div>
	<div id="contenido">
	
		<center><font color="black" size= 6>EVALUACIÓN DEL DISEÑO LOGICO DEL SISTEMA </font></a><BR><BR>
<center><table border="2" width="70%">
	<td class="titulos">RUBRO: </td>
	<td class="titulos">ID SUBRUBRO: </td>
	<td class="titulos">ID SUBSUBRUBRO: </td>
	<td class="titulos">ID PREGUNTA: </td>
	<td class="titulos">NOMBRE DEL PREGUNTA:</td>
	<td class="titulos">OPCION</td>
	
	<?php
	while($datosarray=mysql_fetch_array($datos)){
	?>

<tr>
<td><?php echo $datosarray['id_rubro'];?> </td>
<td><?php echo $datosarray['id_subr']; ?> </td>
<td><?php echo $datosarray['id_subsr']; ?> </td>
<td><?php echo $datosarray['id_preg']; ?> </td>
<td><?php echo $datosarray['pregunt']; ?> </td>

<td>
<form name="datos" method="post" action="registrares.php">
</select>
<input type="text" name="res"/>
<input type="submit">
</td>

<?php }?></table>					
<a href="EdDLdS_5.php"><font color="black" size= 3>Siguiente</font></a><br>
<a href="EdDLdS_3.php"><font color="black" size= 3>Regresar</font></a><br>
<!--Aqui debes colocar todo lo relacionado a tu tema -->			
	
	</div>	
	
	<div class="nofloat">
	</div>
	<div class="pie">
	<h2>Ingenio y Creacion en Movimiento</h2>
	</div>
	</div>
	</body>
	</html>