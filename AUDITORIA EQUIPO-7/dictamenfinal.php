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
			   <li><a href='infocap5.php'><span>CAPÍTULO V</span></a></li>
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
	  <td> 19-12-2015 </td>	
	  <td> <?php echo $Observaciones=$row3['Observaciones']; ?> </td>
	  <td> <?php echo $Recomendaciones=$row3['Recomendaciones']; ?> </td>
	  <td> <?php echo $Dictamen=$row3['Dictamen']; ?> </td>
	  <?php
      }}}
	  }
	  mysql_close($connexion);
?>
<br>

<?php  
include("conexion.php");
mysql_set_charset('utf8');
$sql="SELECT * FROM dictamen where id_Dictamen=1";
$datos=mysql_query($sql,$connexion); 

$sql="SELECT * FROM rubros where id_rubro=3";
$datos1=mysql_query($sql,$connexion); 

$sql="SELECT * FROM empresas where id_emp=1";
$datos2=mysql_query($sql,$connexion); 

$sql="SELECT * FROM auditores where id_audi=1";
$datos3=mysql_query($sql,$connexion); 

$sql="SELECT * FROM dictamencapitulo where id_DictamenCapitulo=1";
$datos4=mysql_query($sql,$connexion); 



$sql="SELECT * FROM dictamen where id_Dictamen=1";
$datos5=mysql_query($sql,$connexion); 

$sql="SELECT * FROM rubros where id_rubro=4";
$datos6=mysql_query($sql,$connexion); 

$sql="SELECT * FROM empresas where id_emp=1";
$datos7=mysql_query($sql,$connexion); 

$sql="SELECT * FROM auditores where id_audi=1";
$datos8=mysql_query($sql,$connexion); 

$sql="SELECT * FROM dictamencapitulo where id_DictamenCapitulo=2";
$datos9=mysql_query($sql,$connexion); 



$sql="SELECT * FROM dictamen where id_Dictamen=1";
$datos10=mysql_query($sql,$connexion); 

$sql="SELECT * FROM rubros where id_rubro=5";
$datos11=mysql_query($sql,$connexion); 

$sql="SELECT * FROM empresas where id_emp=1";
$datos12=mysql_query($sql,$connexion); 

$sql="SELECT * FROM auditores where id_audi=1";
$datos13=mysql_query($sql,$connexion); 

$sql="SELECT * FROM dictamencapitulo where id_DictamenCapitulo=3";
$datos14=mysql_query($sql,$connexion); 




$sql="SELECT * FROM dictamen where id_Dictamen=1";
$datos15=mysql_query($sql,$connexion); 

$sql="SELECT * FROM rubros where id_rubro=6";
$datos16=mysql_query($sql,$connexion); 

$sql="SELECT * FROM empresas where id_emp=1";
$datos17=mysql_query($sql,$connexion); 

$sql="SELECT * FROM auditores where id_audi=1";
$datos18=mysql_query($sql,$connexion); 

$sql="SELECT * FROM dictamencapitulo where id_DictamenCapitulo=4";
$datos19=mysql_query($sql,$connexion); 
?>

<table border="6" align="center">

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




<?php
while ($row5=mysql_fetch_array($datos5)) { 
?>

<?php
while ($row6=mysql_fetch_array($datos6)) { 
?>

<?php
while ($row7=mysql_fetch_array($datos7)) { 
?>

<?php
while ($row8=mysql_fetch_array($datos8)) { 
?>

<?php
while ($row9=mysql_fetch_array($datos9)) { 
?>


<?php
while ($row10=mysql_fetch_array($datos10)) { 
?>

<?php
while ($row11=mysql_fetch_array($datos11)) { 
?>

<?php
while ($row12=mysql_fetch_array($datos12)) { 
?>

<?php
while ($row13=mysql_fetch_array($datos13)) { 
?>

<?php
while ($row14=mysql_fetch_array($datos14)) { 
?>


<?php
while ($row15=mysql_fetch_array($datos15)) { 
?>

<?php
while ($row16=mysql_fetch_array($datos16)) { 
?>

<?php
while ($row17=mysql_fetch_array($datos17)) { 
?>

<?php
while ($row18=mysql_fetch_array($datos18)) { 
?>

<?php
while ($row19=mysql_fetch_array($datos19)) { 
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
</tr>  

<tr>
      <td> <?php echo $id_Dictamen=$row5['id_Dictamen']; ?> </td>
   	  <td> <?php echo $rubro=$row6['rubro']; ?> </td>
	   <td> <?php echo $NombreComercial=$row7['NombreComercial']; ?> </td>
	   <td> <?php echo $Nombre=$row8['Nombre']; ?> </td>
	  <td> <?php echo $FechaInicioEvaluacion=$row9['FechaInicioEvaluacion']; ?> </td>	
	  <td> <?php echo $FechaFinEvaluacion=$row9['FechaFinEvaluacion']; ?> </td>
      <td> <?php echo $Observaciones=$row9['Observaciones']; ?> </td>	  
      <td> <?php echo $Recomendaciones=$row9['Recomendaciones']; ?> </td>	
	  <td> <?php echo $Dictamen=$row9['Dictamen']; ?> </td>
</tr>  

<tr>
      <td> <?php echo $id_Dictamen=$row10['id_Dictamen']; ?> </td>
   	  <td> <?php echo $rubro=$row11['rubro']; ?> </td>
	   <td> <?php echo $NombreComercial=$row12['NombreComercial']; ?> </td>
	   <td> <?php echo $Nombre=$row13['Nombre']; ?> </td>
	  <td> <?php echo $FechaInicioEvaluacion=$row14['FechaInicioEvaluacion']; ?> </td>	
	  <td> <?php echo $FechaFinEvaluacion=$row14['FechaFinEvaluacion']; ?> </td>
      <td> <?php echo $Observaciones=$row14['Observaciones']; ?> </td>	  
      <td> <?php echo $Recomendaciones=$row14['Recomendaciones']; ?> </td>	
	  <td> <?php echo $Dictamen=$row14['Dictamen']; ?> </td>
</tr>    



<tr>
      <td> <?php echo $id_Dictamen=$row15['id_Dictamen']; ?> </td>
   	  <td> <?php echo $rubro=$row16['rubro']; ?> </td>
	   <td> <?php echo $NombreComercial=$row17['NombreComercial']; ?> </td>
	   <td> <?php echo $Nombre=$row18['Nombre']; ?> </td>
	  <td> <?php echo $FechaInicioEvaluacion=$row19['FechaInicioEvaluacion']; ?> </td>	
	  <td> <?php echo $FechaFinEvaluacion=$row19['FechaFinEvaluacion']; ?> </td>
      <td> <?php echo $Observaciones=$row19['Observaciones']; ?> </td>	  
      <td> <?php echo $Recomendaciones=$row19['Recomendaciones']; ?> </td>	
	  <td> <?php echo $Dictamen=$row19['Dictamen']; ?> </td>
</tr>    
	 
	 
	  <?php
      }}}}}
	  }}}}}
	  }}}}}
	  }}}}}
	  ?>  
<br>
</table>
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
<br> 




<?php
include("conexion.php");
$datos30=mysql_query("SELECT * FROM dictamencapitulo WHERE id_DictamenCapitulo=1", $connexion) or die ("No se puede consultar la tabla auditores");
$row30=mysql_fetch_array($datos30);

include("conexion.php");
$datos31=mysql_query("SELECT * FROM dictamencapitulo WHERE id_DictamenCapitulo=2", $connexion) or die ("No se puede consultar la tabla auditores");
$row31=mysql_fetch_array($datos31);

include("conexion.php");
$datos32=mysql_query("SELECT * FROM dictamencapitulo WHERE id_DictamenCapitulo=3", $connexion) or die ("No se puede consultar la tabla auditores");
$row32=mysql_fetch_array($datos32);

include("conexion.php");
$datos33=mysql_query("SELECT * FROM dictamencapitulo WHERE id_DictamenCapitulo=4", $connexion) or die ("No se puede consultar la tabla auditores");
$row33=mysql_fetch_array($datos33);

?>


<form  method="POST" action="evaluarAuditoria.php">
</br>
</br>

 <table border="4" cellpadding="3" cellspacing="3" width="30%" align="center">
   
   <tr>

  <tr>
      <td align="right"> DICTAMEN CAPITULO III: </td>
	  <td><input name="DicCap3" type="text" id="DicCap3" value="<?php echo $row30['Dictamen'];?>"/>
	  </td>
 </tr>

<tr>
      <td align="right"> DICTAMEN CAPITULO IV </td>
	  <td><input name="DicCap4" type="text" id="DicCap4" value="<?php echo $row31['Dictamen'];?>"   />
</td>
</tr>

<tr>
      <td align="right"> DICTAMEN CAPITULO V </td>
	  <td><input name="DicCap5" type="text" id="DicCap5" value="<?php echo $row32['Dictamen'];?>"   />
</td>
</tr>

<tr>
      <td align="right"> DICTAMEN CAPITULO VI </td>
	  <td><input name="DicCap6" type="text" id="DicCap6" value="<?php echo $row33['Dictamen'];?>"   />
</td>
</tr>
</table>
<input type="submit" value="EVALUAR" class="boton" onclick="validaCampos();"/> 
<?php
	echo"<input type=\"button\"class=\"boton\"value=\"REGRESAR\"onclick=\"window.location.href='index.php';\">";
	?>
</center>

 <br><br>

</div>
</div>
</body>
<html>
