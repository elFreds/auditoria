<!doctype html>
<html lang=''>
<head>
   <meta charset='utf-8'>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="css/styles.css">
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="script.js"></script>
   <title>Capítulo 7</title>
</head>
<body>
   <div id="lateral">
<div id='cssmenu'>
<ul>   
   <li><a href="index.php"><span> CAPÍTULO  #7</span></a></li>
   <li class='has-sub'><a href=''><span> INFORMACIÓN SOBRE AUDITORÍA</span></a>
     <ul>
         <li class='has-sub'><a href=''><span>EMPRESAS AUDITORAS</span></a>
            <ul>
               <li><a href='forNueEmpresaAuditora.php'><span>REGISTRAR</span></a></li>
               <li><a href='EmpresasAuditorasRegistradas.php'><span>CONSULTAR</span></a></li>
            </ul>
         </li>
		 
		 <li class='has-sub'><a href=''><span>EMPRESAS AUDITADAS</span></a>
            <ul>
               <li><a href='forNueEmpresa.php'><span>REGISTRAR</span></a></li>
               <li><a href='EmpresasAuditadasRegistradas.php'><span>CONSULTAR</span></a></li>
            </ul>
         </li>
		 
		 <li class='has-sub'><a href=''><span>AUDITORES</span></a>
            <ul>
               <li><a href='forNueAuditor.php'><span>REGISTRAR</span></a></li>
               <li><a href='AuditoresRegistrados.php'><span>CONSULTAR</span></a></li>
            </ul>
         </li>
    
		  <li class='has-sub'><a href=''><span>INFORMACIÓN POR CAPÍTULO</span></a>
            <ul>
               <li><a href='infocap3.php'><span>CAPÍTULO III</span></a></li>
               <li><a href='infocap4.php'><span>CAPÍTULO IV</span></a></li>
			   <li><a href='infocap5.php'><span>CAPÍTULO III</span></a></li>
               <li><a href='infocap6.php'><span>CAPÍTULO V</span></a></li>
			   <li><a href='dictamenfinal.php'><span>DICTAMEN FINAL DE LA AUDITORÍA</span></a></li>
            </ul>
         </li>
         
         </ul>
          <li class='has-sub'><a href=""><span>TEORIA CAPÍTULO #7</span></a>
            <ul>
               <li><a href="FunTeoTema1.php"><span>TÉCNICAS PARA LA INTERPRETACIÓN DE LA INFORMACIÓN</span></a></li>
               <li ><a href='FunTeoTema2.php' ><span>EVALUACIÓN DE LOS SISTEMAS</span></a></li>
               <li ><a href='FunTeoTema3.php'><span>EVALUACIÓN DE LOS SISTEMAS DE INFORMACIÓN</span></a></li>
               <li ><a href='FunTeoTema4.php'><span>CONTROLES</span></a></li>
               <li ><a href='FunTeoTema5.php'><span>PRESENTACIÓN</span></a></li>
			   <li ><a href='FunTeoPon.php'><span>PONDERACIÓN DE EVALUACIÓN POR CAPÍTULO</span></a></li>
            </ul>
         </li>          
   </li>
</ul>
</div>
<br></br>


<div id="cabecera">DICTAMEN FINAL DE LA AUDITORIA</div>
    <div id="texto">
</br>

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
<center>
<Textarea style="height: 200px !important; width: 500px !important;"> Comentarios </textarea>
<br> 

<?php
	echo"<input type=\"button\"class=\"boton\"value=\"REGRESAR\"onclick=\"window.location.href='index.php';\">";
	?>
</center>

 <br><br>

</div>
</div>
</body>
<html>
