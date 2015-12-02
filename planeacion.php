<!DOCTYPE html>
	<head>
		<link href="css/stilo.css" rel="stylesheet" type="text/css">
		<link href="css/tabla.css" rel="stylesheet" type="text/css">
		<title>PLANEACION</title>
		<?php 
    $conexion=  mysql_connect("127.0.0.1","root","");
    mysql_select_db("auditoria",$conexion);
    $capitulo =  mysql_query("SELECT * FROM capitulos",$conexion);
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
<div id="encabezado"><img src="images/auditoria.jpg"/></div>
<div id="cont">
    <form method=POST action="asignar.php" name="index">
	<table>
<tr>
        <td width="15%"> CAPITULOS:
        <td>
	<select name='nomcap'>
        <option value="0"> Elige el capitulo</option>
			<?php
			while($arreglo1=mysql_fetch_array($capitulo))
			{
			?>
	<option value="<?php echo $arreglo1['nomcap'];?>">
			<?php echo $arreglo1['nomcap'];?>
	</option>
			<?php
			}
			?>
	</select><br><p>
	<td width="15%"> TEMAS:
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
	</select><br>
</tr><tr>
<p>
<td width="15%"> TIEMPO ESTIMADO:
        <td>
	<select name='fechas'>
        <option value="0"> ELIGE LA FECHA</option>
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
