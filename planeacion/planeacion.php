<!DOCTYPE html>
<html lang=''>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
   		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link href="css/tabla.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="css/styles.css" type="text/css">
		<title>PLANEACION</title>
		<?php 
    $conexion=  mysql_connect("127.0.0.1","root","");
    mysql_select_db("auditoria",$conexion);
    $capitulo =  mysql_query("SELECT * FROM rubros",$conexion);
    $temas =  mysql_query("SELECT * FROM temas",$conexion);
    $subtemas =  mysql_query("SELECT * FROM subtemas",$conexion);
    $actividades =  mysql_query("SELECT * FROM actividades",$conexion);
    $fechas =  mysql_query("SELECT * FROM fechas",$conexion);
    $auditores =  mysql_query("SELECT * FROM auditores",$conexion);
    $empresas =  mysql_query("SELECT * FROM empresas",$conexion);
$asignacion = mysql_query("SELECT * FROM asignacion");
		    ?>
	</head>
<body>
<div id="cssmenu">
<ul>
<li><a href="#"><span> CAPITULO # 2</span></a>
 <li><a href="#"><span> PLANEACION DE LA AUDITORIA INFORMATICA</span></a>
<li><li><li class="active has-sub"><a href="#"><span> FUNDAMENTO TEORICO</span></a>
<ul>
         <li><a href="fundamento/RevisionPreliminar.php" target="cont"><span>Revision preliminar</span></a></li>
         <li><a href="fundamento/RevisionDetallada.php" target="cont"><span>Revision detallada</span></a></li>
         <li><a href="fundamento/Examen.php" target="cont"><span>Examen y evaluacion de la informacion</span></a></li>
         <li><a href="fundamento/Prueba.php" target="cont"><span>Pruebas de consentimiento</span></a></li>
         <li><a href="fundamento/Usuario.php" target="cont"><span>Pruebas de control del usuario</span></a></li>
         <li><a href="fundamento/Sustantivas.php" target="cont"><span>Pruebas sustantivas</span></a></li>
            </ul>
         </li>
</div>
<div id="cont">
    <form method=POST action="asignar.php" name="index">
	<table>
<tr>
        <td width="15%"> CAPITULOS:
        <td>
	<select name='rubro'>
        <option value="0"> Elige el capitulo</option>
			<?php
			while($arreglo1=mysql_fetch_array($capitulo))
			{
			?>
	<option value="<?php echo $arreglo1['rubro'];?>">
			<?php echo $arreglo1['rubro'];?>
	</option>
			<?php
			}
			?>
	</select><br><p>
</tr><tr>
	<td width="20%"> TEMAS:
        <td>
	<select name='nomtema'>
        <option value="0"> Elige el tema</option>
			<?php
			while($arreglo2=mysql_fetch_array($temas))
			{
			?>
	<option value="<?php echo $arreglo2['tema'];?>">
			<?php echo $arreglo2['tema'];?>
	</option>
			<?php
			}
			?>
	</select><br><p>
</tr><tr>
<td width="15%"> SUBTEMAS:
        <td>
	<select name='nomsubtema'>
        <option value="0"> Elige el subtema</option>
			<?php
			while($arreglo3=mysql_fetch_array($subtemas))
			{
			?>
	<option value="<?php echo $arreglo3['nom_subtema'];?>">
			<?php echo $arreglo3['nom_subtema'];?>
	</option>
			<?php
			}
			?>
	</select><br><p>
</tr><tr>
<td width="15%"> ACTIVIDADES:
        <td>
	<select name='nomact'>
        <option value="0"> Elige la actividad</option>
			<?php
			while($arreglo4=mysql_fetch_array($actividades))
			{
			?>
	<option value="<?php echo $arreglo4['actividades'];?>">
			<?php echo $arreglo4['actividades'];?>
	</option>
			<?php
			}
			?>
	</select><br><p>
</tr><tr>
<td width="15%"> TIEMPO ESTIMADO:
        <td>
	<select name='fechas'>
        <option value="0"> Elige la fecha</option>
			<?php
			while($arreglo5=mysql_fetch_array($fechas))
			{
			?>
	<option value="<?php echo $arreglo5['tiempo'];?>">
			<?php echo $arreglo5['tiempo'];?>
	</option>
			<?php
			}
			?>
	</select><br><p><p>
</tr><tr>				
<td width="15%"> AUDITORES:
        <td>
	<select name='nomaudi'>
        <option value="0"> Elige el auditor</option>
			<?php
			while($arreglo6=mysql_fetch_array($auditores))
			{
			?>
	<option value="<?php echo $arreglo6['auditor'];?>">
			<?php echo $arreglo6['auditor'];?>
	</option>
			<?php
			}
			?>
	</select><br><p>
</tr><tr>
<p><td width="15%"> EMPRESAS AUDITORAS:
        <td>
	<select name='nomemp'>
        <option value="0"> Elige la empresa</option>
			<?php
			while($arreglo7=mysql_fetch_array($empresas))
			{
			?>
	<option value="<?php echo $arreglo7['empresa'];?>">
			<?php echo $arreglo7['empresa'];?>
	</option>
			<?php
			}
			?>
	</select><br><p>
<td><INPUT TYPE="submit" value="GUARDAR" id='save'></td>							
</tr>
</table>
</div>
<div id="tabla">
	<table class = "borde">
	<thead>
		<tr>
			<th>CAPITULO</th>
			<th>TEMA</th>
			<th>SUBTEMA</th>
			<th>ACTIVIDAD</th>
			<th>TIEMPO ESTIMADO</th>
			<th>NOMBRE AUDITOR</th>
			<th>EMPRESA AUDITORA</th>
			
		</tr>
	</thead>
			<?php
			while($arreglo8=mysql_fetch_array($asignacion))
			{?>
	<tr>
		<td>
		<?php
		echo $arreglo8['capitulo'];
		?>
	</td>
	<td>
		<?php
		echo $arreglo8['tema'];		
		?>
	</td>
	<td>
		<?php
		echo $arreglo8['subtema'];		
		?>
	</td>
	<td>
		<?php
		echo $arreglo8['actividad'];		
		?>
	</td>
	<td>
		<?php
		echo $arreglo8['tiempo'];		
		?>
	</td>
	<td>
		<?php
		echo $arreglo8['nom_audi'];		
		?>
	</td>
	<td>
		<?php
		echo $arreglo8['emp_auditora'];		
		}?>
	</td>
</tr>
</div>
</body>
</html>
