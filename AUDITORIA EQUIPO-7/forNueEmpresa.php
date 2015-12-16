
<?php
include("conexion.php");


$datos2=mysql_query("SELECT * FROM auditores", $connexion) or die ("No se puede consultar la tabla grupo");
?>
<html>
<head>
<title> FORMULARIO NUEVO EMPRESA AUDITADA </title>
<link rel="stylesheet" type="text/css" href="css/css.css"/>
<link href="css/tabla.css" rel="stylesheet" type="text/css">
</head>

<script type="text/javascript" src="jvs/validarRegEmpre.js"></script>

<body>
<center>
<MARQUEE BEHAVIOR=alternate WIDTH=70% BGCOLOR="#58FA58">
<FONT FACE=arial COLOR=###### SIZE=8>
NUEVA EMPRESA
</FONT>
</MARQUEE>
<hr>

<form name="datos" method="POST" action="registrarEmpresaAuditada.php">
<br>

<br>
	 <table border="4" cellpadding="3" cellspacing="3" width="0%" align="center">
	 
    <tr>
        <td align="right"> Nombre Comercial: </td>
	<td><input type="text" name="NombreComercial" id="NombreComercial"/></td>
</tr>

<tr>
        <td align="right"> Nombre Fiscal: </td>
	<td><input type="text" name="NombreFiscal" id="NombreFiscal"/></td>
</tr>

<tr>
        <td align="right"> Calle o Avenida: </td>
	<td><input type="text" name="CalleAvenida" id="CalleAvenida"/></td>
</tr>
<tr>
        <td align="right"> Ciudad o municipio: </td>
	<td><input type="text" name="CiudadMunicipio" id="CiudadMunicipio"/></td>
</tr>

<tr>
        <td align="right"> Codigo Postal: </td>
	<td><input type="text" name="CodigoPostal" id="CodigoPostal"/></td>
</tr>

<tr>
        <td align="right"> Pais: </td>
	<td><input type="text" name="Pais" id="Pais"/></td>
</tr>

<tr>
        <td align="right"> Telefono: </td>
	<td><input type="text" name="Telefono" id="Telefono"/></td>
</tr>

<tr>
        <td align="right"> Giro: </td>
	<td><input type="text" name="Giro" id="Giro"/></td>
</tr>

<tr>
        <td align="right"> E-mail: </td>
	<td><input type="text" name="Email" id="Email"/></td>
</tr>

<tr>
        <td align="right"> Web: </td>
	<td><input type="text" name="Web" id="Web"/></td>
</tr>



<tr>
<td align="right"> Auditor </td>
<td><select name="id_audi" id="id_audi">
<option value="0">Selecciona Auditor </option>
<?php
while($datosArray=mysql_fetch_array($datos2)){
?>
<option value="<?php echo $datosArray['id_audi'];?>">
	<?php echo $datosArray['Nombre'];?>
	</option>
	<?php
	}	
	?>
</select>
</td>
</tr>
</table>
	<?php
	echo"<input type=\"button\"class=\"boton\"value=\"CANCELAR\"onclick=\"window.location.href='index.php';\">";
	?>
	</tr>
	
	<input type="button" value="REGISTRAR" class="boton" onclick="validaCampos();"/> 
	</body>
	</html>