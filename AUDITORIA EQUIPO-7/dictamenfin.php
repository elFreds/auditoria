
<?php  
include("conexion.php");

$sql="SELECT * FROM dictamen where id_Dictamen=1";
$datos=mysql_query($sql,$connexion); 

$sql="SELECT * FROM rubros where id_rubro=1";
$datos1=mysql_query($sql,$connexion); 

$sql="SELECT * FROM empresas where id_emp=1";
$datos2=mysql_query($sql,$connexion); 

$sql="SELECT * FROM auditores where id_audi=1";
$datos3=mysql_query($sql,$connexion); 

$sql="SELECT * FROM dictamencapitulo where id_DictamenCapitulo=1";
$datos4=mysql_query($sql,$connexion); 

?>
<html>
 <head>
  <title>  dictamenfinal </title>
  <link rel="stylesheet" type="text/css" href="css/css.css"/>
 </head>
<body>
<center>
<MARQUEE BEHAVIOR=alternate WIDTH=70%>
<FONT FACE=arial COLOR=###### SIZE=8>
CAPITULO 3
</MARQUEE>
<hr>

<table border="6" align="center">
<caption>CAPITULO 3 </caption>
<th> NUMERO DE DICTAMEN </th>
   <th> CAPITULO AUDITADO </th>
   <th> EMPRESA AUDITADA </th>
   <th> AUDITOR RESPONSABLE </th>
   <th> FECHA DE INICIO DE EVALUACION </th>
   <th> FECHA FIN EVALUACION </th>
   <th> OBSERVACIONES </th>
   <th> RECOMENDACION </th>
   <th> DICTAMEN </th>

 
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

<?php
while ($row4=mysql_fetch_array($datos4)) { 
?>



<tr>
      <td> <?php echo $id_Dictamen=$row['id_Dictamen']; ?> </td>
   	  <td> <?php echo $rubro=$row1['rubro']; ?> </td>
	   <td> <?php echo $NombreComercial=$row2['NombreComercial']; ?> </td>
	   <td> <?php echo $Nombre=$row3['Nombre']; ?> </td>
	  <td> <?php echo $FechaInicioEvaluacion=$row4['FechaInicioEvaluacion']; ?> </td>	
	  <td> <?php echo $FechaFinEvaluacion=$row4['FechaFinEvaluacion']; ?> </td>
      <td> <?php echo $Observaciones=$row4['Observaciones']; ?> </td>	  
      <td> <?php echo $Recomendaciones=$row4['Recomendaciones']; ?> </td>	
	  <td> <?php echo $Dictamen=$row4['Dictamen']; ?> </td>
     
	 
	  <?php
      }}}}}
	  
	  mysql_close($connexion);
?>
<br>
</table>

<Textarea style="height: 200px !important; width: 500px !important;"> Comentarios </textarea>
<br> 
<?php
	echo"<input type=\"button\"class=\"boton\"value=\"REGRESAR\"onclick=\"window.location.href='index.php';\">";
	?>

	
</center>
</html>