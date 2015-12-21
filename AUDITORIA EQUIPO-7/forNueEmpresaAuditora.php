
<?php
include("conexion.php");
?>

<html>
<head>
<title> FORMULARIO NUEVO EMPRESA AUDITORA </title>
<link rel="stylesheet" type="text/css" href="css/css.css"/>
<link href="css/tabla.css" rel="stylesheet" type="text/css">
</head>

<script type="text/javascript" src="jvs/validarRegEmpreAuditora.js"></script>

<body>
<center>
<MARQUEE BEHAVIOR=alternate WIDTH=70% BGCOLOR="#58FA58">
<FONT FACE=arial COLOR=###### SIZE=8>
EMPRESA AUDITORA
</FONT>
</MARQUEE>
<hr>

<form name="datos" method="POST" action="registrarEmpresaAuditora.php">
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
	<td><input type="text" name="Domicilio" id="Domicilio"/></td>
</tr>
<tr>
        <td align="right"> Ciudad o Municipio: </td>
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
        <td align="right"> E-mail: </td>
	<td><input type="text" name="Email" id="Email"/></td>
</tr>

<tr>
        <td align="right"> Web: </td>
	<td><input type="text" name="Web" id="Web"/></td>
</tr>

<tr>
        <td align="right"> RFC: </td>
	<td><input type="text" name="RFC" id="RFC"/></td>
</tr>

</table>

	<?php
	echo"<input type=\"button\"class=\"boton\"value=\"CANCELAR\"onclick=\"window.location.href='index.php';\">";
	?>
	</tr>
	
	<input type="button" value="REGISTRAR" class="boton" onclick="validaCampos();"/> 
	</body>
	</html>