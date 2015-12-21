<?php
$conexion = mysql_connect("localhost","root","") or die ("error servidor");
mysql_select_db("auditoria",$conexion) or die ("error seleccion");
$datos=mysql_query("SELECT * FROM pregunta where id_subrub=616",$conexion) or die ("error consulta");
?>

<center><font color="RED" size= 6>PISO ELEVADO O CÁMARA PLANA</font></a><BR><BR>
<center><table border="2" width="90%">
	<td class="titulos">ID RUBRO: </td>
	<td class="titulos">ID SUBRUBRO: </td>
	<td class="titulos">ID PREGUNTA: </td>
	<td class="titulos">NOMBRE DEL PREGUNTA:</td>
	<td class="titulos">RESPUESTA:</td>
		<td class="titulos">OPCION</td>
	<?php
	while($datosarray=mysql_fetch_array($datos)){
	?>
<tr>
<td><?php echo $datosarray['id_rub']; ?> </td>
<td><?php echo $datosarray['id_subrub']; ?> </td>
<td><?php echo $datosarray['id_pre']; ?> </td>
<td><?php echo $datosarray['pre']; ?> </td>
<td><?php echo $datosarray['res']; ?> </td>

<td>
<form name="datos" method="post" action="registrares.php">
</select>
<input type="text" name="res"/>
<input type="submit">
</td>

<?php }?>
<a href="sistema.php"><font color="black" size= 3>Regresar</font></a><br>