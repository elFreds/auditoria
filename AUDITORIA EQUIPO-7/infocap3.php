<?php	
session_start();
if(empty($_SESSION['usuario'])){
header("location:index.html?errorlogin");
}
?>
<?php  
include("conexion.php");

$sql="SELECT * FROM evaluacioncapitulo where id_EvaluacionCapitulo=1";
$datos=mysql_query($sql,$connexion); 

?>
<html>
 <head>
  <title>  INFORMACION CAPITULO 3 </title>
  <link rel="stylesheet" href="css/style.css">
 </head>
<body bgcolor="#58FA58">
<center>
<MARQUEE BEHAVIOR=alternate WIDTH=70%>
<FONT FACE=arial COLOR=###### SIZE=8>
CAPITULO 3
</MARQUEE>
<hr>

<table border="6" align="center">
<caption>CAPITULO 3 </caption>
<th> NUMERO DE CAPITULO </th>
   <th> EVALUACION DEL CAPITULO </th>
   <th> FECHA DE INICIO DE EVALUACION </th>
  <th> FECHA FIN EVALUACION </th>
  <th> RECOMENDACION </th>

 
<?php
while ($row=mysql_fetch_array($datos)) { 
?>


<tr>
      <td> <?php echo $id_Capitulo=$row['id_Capitulo']; ?> </td>
   	  <td> <?php echo $EvaluacionCapitulo=$row['EvaluacionCapitulo']; ?> </td>
	  <td> <?php echo $FechaInicioEvaluacion=$row['FechaInicioEvaluacion']; ?> </td>	
	  <td> <?php echo $FechaFinEvaluacion=$row['FechaFinEvaluacion']; ?> </td>	
      <td> <?php echo $Recomendacion=$row['Recomendacion']; ?> </td>	
     
	 
	  <?php
      }
	  
	  mysql_close($connexion);
?>
<br>
</table>

<Textarea style="height: 200px !important; width: 500px !important;"> Comentarios </textarea>
<br> 
<?php
	echo"<input type=\"button\"class=\"boton\"value=\"REGRESAR\"onclick=\"window.location.href='index.html';\">";
	?>

	
</center>
</html>