<?php	
session_start();
if(empty($_SESSION['usuario'])){
header("location:index.html?errorlogin");
}
?>
<?php  
include("conexion.php");

$sql="SELECT * FROM auditores where id_Auditor=1";
$datos=mysql_query($sql,$connexion); 

$sql="SELECT * FROM empresaauditora where id_EmpresaAuditora=1";
$datos1=mysql_query($sql,$connexion); 

$sql="SELECT * FROM empresaauditada where id_EmpresaAuditada=1";
$datos2=mysql_query($sql,$connexion); 


?>
<html>
 <head>
  <title>  DICTAMEN AUDITORIA </title>
  <link rel="stylesheet" href="css/style.css">
 </head>
<body bgcolor="#58FA58">
<center>
<MARQUEE BEHAVIOR=alternate WIDTH=70%>
<FONT FACE=arial COLOR=###### SIZE=8>
DICTAMEN FINAL
</MARQUEE>
<hr>

<table border="6" align="center">
<caption>AUDITOR </caption>
<th> Empresa Auditora </th>
<th> Empresa Auditada </th>
   <th> Nombre del Auditor </th>
   <th> Apellido Paterno </th>
  <th> Apellido Materno </th>
  <th> Fecha Inicio </th>
  <th> Fecha Fin </th>
  <th> Fecha de Emicion </th>
 
<?php
while ($row=mysql_fetch_array($datos)) { 
?>
  <?php
while ($row1=mysql_fetch_array($datos1)) {
?>
<?php
while ($row2=mysql_fetch_array($datos2)) {
?>

<tr>
      <td> <?php echo $NombreComercial=$row1['NombreComercial']; ?> </td>
	  <td> <?php echo $NombreComercial=$row2['NombreComercial']; ?> </td>
   	  <td> <?php echo $Nombre=$row['Nombre']; ?> </td>
	  <td> <?php echo $ApellidoPaterno=$row['ApellidoPaterno']; ?> </td>	
      <td> <?php echo $ApellidoMaterno=$row['ApellidoMaterno']; ?> </td>	
      <td> 19-01-2015 </td>	  
	  <td> 19-02-2015 </td>	
	  <td> 20-02-2015 </td>	
	  <?php
      }}
	  }
	  mysql_close($connexion);
?>
<br>
</table>
<table align="center" border="8px">
<tr>
<td rowspan="2">Secuencia</strong></td>
  <td rowspan="2">Punto de Observacion</strong></td>
  <td rowspan="2">Recomendacion</strong></td>
  <td rowspan="2">Responsable</strong></td>
  <td rowspan="2"><strong>Riesgo</strong></td> 
  <td colspan="4" align="center">Categorizacion (Impacto)</td>
  
 <tr>
  
  <td>Critico</td>
  <td>Mayor</td>
  <td>Menor</td>
  <td>Sin Impacto</td>
</tr>
 
<tr>
  <td></td>
  <td></td>
  <td></td>
  <td></td>
  <td></td>
  <td></td>
  <td></td>
  <td></td>
  <td></td>
</tr>
 
<tr>
  <td></td>
  <td></td>
  <td></td>
  <td></td>
  <td></td>
  <td></td>
  <td></td>
  <td></td>
  <td></td>
</tr>
<tr>
  <td></td>
  <td></td>
  <td></td>
  <td></td>
  <td></td>
  <td></td>
  <td></td>
  <td></td>
  <td></td>
</tr>

<tr>
  <td></td>
  <td></td>
  <td></td>
  <td></td>
  <td></td>
  <td></td>
  <td></td>
  <td></td>
  <td></td>
</tr>
  
</table>

<Textarea style="height: 200px !important; width: 500px !important;"> Comentarios </textarea>
<br> 
<?php
	echo"<input type=\"button\"class=\"boton\"value=\"REGRESAR\"onclick=\"window.location.href='index.html';\">";
	?>

	
</center>
</html>