

<?php  
include("conexion.php");

$sql="SELECT * from empresas";
$datos=mysql_query($sql,$connexion);
?>
<html>
 <head>
  <title>  EMPLESAS </title>
  <link rel="stylesheet" type="text/css" href="css/css.css"/>
  <link href="css/tabla.css" rel="stylesheet" type="text/css">
 </head>
<body>
<center>
<MARQUEE BEHAVIOR=alternate WIDTH=70%>
<FONT FACE=arial COLOR=###### SIZE=8>
EMPRESAS AUDITADAS
</MARQUEE>
<hr>
</br>
</br>
<table border="6" align="center">
<caption>EMPRESAS REGISTRADAS </caption>

  <th> Nombre Comercial </th>
  <th> Nombre Fiscal </th>
  <th> Calle Avenida </th>
  <th> Ciudad Municipio </th>   
   <th> Codigo Postal </th>
  <th> Pais </th>
   <th> Telefono </th>
  <th> Giro </th>
  <th> Email </th>
  <th> Web </th>


  
  
  
    
 <?php
while ($row=mysql_fetch_array($datos)) { 
?>

<tr>
      <td> <?php echo $NombreComercial=$row['NombreComercial']; ?> </td>
	  <td> <?php echo $NombreFiscal=$row['NombreFiscal']; ?> </td>	
      <td> <?php echo $CalleAvenida=$row['CalleAvenida']; ?> </td>		  
	  <td> <?php echo $CiudadMunicipio=$row['CiudadMunicipio'];?> </td> 
	  <td> <?php echo $CodigoPostal=$row['CodigoPostal'];?> </td> 
	  <td> <?php echo $Pais=$row['Pais'];?> </td>
      <td> <?php echo $Telefono=$row['Telefono'];?> </td>
	  <td> <?php echo $Giro=$row['Giro'];?> </td>
	  <td> <?php echo $Email=$row['Email'];?> </td>
	  <td> <?php echo $Web=$row['Web'];?> </td>
	
	  
	  
	  	  
	
	    


      
	  <?php
      }
	  mysql_close($connexion);
?>
<br>
</table>
<br> 
<?php
	echo"<input type=\"button\"class=\"boton\"value=\"REGRESAR\"onclick=\"window.location.href='index.php';\">";
	?>
	
	
</center>
</html>