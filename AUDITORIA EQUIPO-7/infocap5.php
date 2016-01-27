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
               <li><a href='infocap6.php'><span>CAPÍTULO VI</span></a></li>
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


<div id="cabecera">INFORMACIÓN CAPITULO V</div>
    <div id="texto">
</br>

<?php  
include("conexion.php");
mysql_set_charset('utf8');
$sql="SELECT * FROM dictamen where id_Dictamen=1";
$datos=mysql_query($sql,$connexion); 

$sql="SELECT * FROM rubros where id_rubro=5";
$datos1=mysql_query($sql,$connexion); 

$sql="SELECT * FROM empresas where id_emp=1";
$datos2=mysql_query($sql,$connexion); 

$sql="SELECT * FROM auditores where id_audi=1";
$datos3=mysql_query($sql,$connexion); 

$sql="SELECT * FROM dictamencapitulo where id_DictamenCapitulo=3";
$datos4=mysql_query($sql,$connexion); 
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
	  ?>  
<br>
</table>
<br> 


<?php
$sql5="SELECT asignarresp.idAuditoria, auditores.Nombre, preguntas.pregunt, preguntas.id_preg, respuestas.resp, rubros.rubro, subrubro.subr, subsubrubro.subsr
FROM asignarresp
INNER JOIN auditores ON auditores.id_audi = asignarresp.idAuditor
INNER JOIN preguntas ON preguntas.id_preg = asignarresp.idPregunta
INNER JOIN respuestas ON respuestas.id_resp = asignarresp.idRespuesta
INNER JOIN rubros ON rubros.id_rubro=preguntas.id_rubro
INNER JOIN subrubro ON subrubro.id_subr=preguntas.id_subr
INNER JOIN subsubrubro ON subsubrubro.id_subsr=preguntas.id_subsr
WHERE preguntas.id_rubro=5 ORDER BY preguntas.id_preg ASC";
$datos5=mysql_query($sql5,$connexion); 
?>
<table border="6" align="center">

<th> N. AUDITORIA</th>
   <th> AUDITOR</th>
   <th> RUBRO (TEMA)</th>
   <th> SUBRUBRO (SUBTEMA)</th>
   <th> SUBSUBRUBRO (SUBSUBTEMA)</th>
   <th> PREGUNTA</th>
   <th> RESPUESTA </th>
      
   <?php
while ($row5=mysql_fetch_array($datos5)) { 
   ?>
<tr>
      <td> <?php echo $idAuditoria=$row5['idAuditoria']; ?> </td>
   	  <td> <?php echo $Nombre=$row5['Nombre']; ?> </td>
	  <td> <?php echo $rubro=$row5['rubro']; ?> </td>
	  <td> <?php echo $subr=$row5['subr']; ?> </td>
	  <td> <?php echo $subsr=$row5['subsr']; ?> </td>
	   <td> <?php echo $pregunt=$row5['pregunt']; ?> </td>
	   <td> <?php echo $resp=$row5['resp']; ?> </td>
	  
	 
	  <?php
      }
	 	  ?>
<br>
</table>
<center>

<?php
	echo"<input type=\"button\"class=\"boton\"value=\"REGRESAR\"onclick=\"window.location.href='index.php';\">";
	?>
</center>
 <br><br>

</div>
</div>
</body>
<html>
