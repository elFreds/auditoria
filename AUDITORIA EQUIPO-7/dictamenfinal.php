
<?php  
include("conexion.php");

$sql="SELECT * FROM auditores where id_audi=1";
$datos=mysql_query($sql,$connexion); 

$sql="SELECT * FROM empresaauditora where id_EmpresaAuditora=1";
$datos1=mysql_query($sql,$connexion); 

$sql="SELECT * FROM empresas where id_emp=1";
$datos2=mysql_query($sql,$connexion); 

$sql="SELECT * FROM dictamenfinal where id_DictamenFinal=1";
$datos3=mysql_query($sql,$connexion); 

?>
<html>
 <head>
  <title>  DICTAMEN AUDITORIA </title>
 <link rel="stylesheet" type="text/css" href="css/css.css"/>
 </head>
<body>
<center>
<MARQUEE BEHAVIOR=alternate WIDTH=70%>
<FONT FACE=arial COLOR=###### SIZE=8>
DICTAMEN FINAL
</MARQUEE>
<hr>

<table border="6" align="center">

<th> Empresa Auditora </th>
<th> Empresa Auditada </th>
   <th> Nombre del Auditor </th>
   <th> Apellido Paterno </th>
  <th> Apellido Materno </th>
  <th> Fecha Inicio </th>
  <th> Fecha Fin </th>
  <th> Fecha de Emicion </th>
   <th> Observaciones </th>
    <th> Recomendaciones </th>
	 <th> Dictamen </th>
 
<?php
while ($row=mysql_fetch_array($datos)) { 
?>
  <?php
while ($row1=mysql_fetch_array($datos1)) {
?>
<?php
while ($row2=mysql_fetch_array($datos2)) {
?>
<?php
while ($row3=mysql_fetch_array($datos3)) {
?>

<tr>
      <td> <?php echo $NombreComercial=$row1['NombreComercial']; ?> </td>
	  <td> <?php echo $NombreComercial=$row2['NombreComercial']; ?> </td>
   	  <td> <?php echo $Nombre=$row['Nombre']; ?> </td>
	  <td> <?php echo $ApellidoPaterno=$row['ApellidoPaterno']; ?> </td>	
      <td> <?php echo $ApellidoMaterno=$row['ApellidoMaterno']; ?> </td>	
      <td> <?php echo $FechaInicioAuditoria=$row3['FechaInicioAuditoria']; ?> </td> 
      <td> <?php echo $FechaFinAuditoria=$row3['FechaFinAuditoria']; ?> </td>	  
	  <td> 15-12-2015 </td>	
	  <td> <?php echo $Observaciones=$row3['Observaciones']; ?> </td>
	  <td> <?php echo $Recomendaciones=$row3['Recomendaciones']; ?> </td>
	  <td> <?php echo $Dictamen=$row3['Dictamen']; ?> </td>
	  <?php
      }}}
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
	echo"<input type=\"button\"class=\"boton\"value=\"REGRESAR\"onclick=\"window.location.href='index.php';\">";
	?>

	
</center>
</html>