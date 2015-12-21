
<?php
include("conexion.php");

$datos=mysql_query("SELECT * FROM empresas", $connexion) or die ("No se puede consultar la tabla puesto");



$id=$_GET['id'];
$result=mysql_query("SELECT * FROM empresas");
$row=mysql_fetch_array($result);

?>


<html>
<head>
 <title> formulario editar Empresa </title>
<link rel="stylesheet" type="text/css" href="css/css.css"/>
		<script type="text/javascript" src="jvs/validarEditEmpNueva.js"></script>
</head>
<body bgcolor="#58FA58">

<center><MARQUEE BEHAVIOR=alternate WIDTH=70%>
<FONT FACE=arial COLOR=###### SIZE=8>
Actualizar Emplesa
</FONT>
</MARQUEE>
 <hr>
 
<form  method="POST" action="editarEmpresa.php">
</br>
</br>

 <table border="0" cellpadding="3" cellspacing="3" width="30%" align="center">
   
   <tr>
<td>
<input name="id" type="text" style="display:none" value="<?php echo $row['id_emp'];?>" />
<td>
</tr>

  <tr>
      <td align="right"> Nombre Comercial: </td>
	  <td><input name="NombreComercial" type="text" id="NombreComercial" value="<?php echo $row['NombreComercial'];?>"/>
	  </td>
 </tr>

<tr>
      <td align="right"> Nombre Fiscal </td>
	  <td><input name="NombreFiscal" type="text" id="NombreFiscal" value="<?php echo $row['NombreFiscal'];?>"   />
</td>
</tr>

<tr>
      <td align="right"> Calle Avenida </td>
	  <td><input name="CalleAvenida" type="text" id="CalleAvenida" value="<?php echo $row['CalleAvenida'];?>"   />
</td>
</tr>

<tr>
      <td align="right"> Ciudad Municipio </td>
	  <td><input name="CiudadMunicipio" type="text" id="CiudadMunicipio" value="<?php echo $row['CiudadMunicipio'];?>"   />
</td>
</tr>

<tr>
      <td align="right"> Codigo Postal </td>
	  <td><input name="CodigoPostal" type="text" id="CodigoPostal" value="<?php echo $row['CodigoPostal'];?>"   />
</td>
</tr>

<tr>
      <td align="right"> Pais </td>
	  <td><input name="Pais" type="text" id="Pais" value="<?php echo $row['Pais'];?>"   />
</td>
</tr>

<tr>
      <td align="right"> Telefono </td>
	  <td><input name="Telefono" type="text" id="Telefono" value="<?php echo $row['Telefono'];?>"   />
</td>
</tr>

<tr>
      <td align="right"> Giro </td>
	  <td><input name="Giro" type="text" id="Giro" value="<?php echo $row['Giro'];?>"   />
</td>
</tr>

<tr>
      <td align="right"> E-mail </td>
	  <td><input name="Email" type="text" id="Email" value="<?php echo $row['Email'];?>"   />
</td>
</tr>

<tr>
      <td align="right"> Web </td>
	  <td><input name="Web" type="text" id="Web" value="<?php echo $row['Web'];?>"   />
</td>
</tr>

</table>
</br>
</br>
	<?php
	echo"<input type=\"button\"class=\"boton\"value=\"CANCELAR\"onclick=\"window.location.href='EmpresasAuditadasRegistradas.php';\">";
	?>
	<input type="submit" value="ACEPTAR" class="boton" onclick="validaCampos();"/> 
	
</center>
	

	</body>
	</html>
