<!doctype html>
<html lang=''>
<head>
   <meta charset='utf-8'>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="css/styles.css">
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="script.js"></script>
   <title>Capítulo 3</title>
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


<div id="cabecera">PONDERACION DE EVALUACION POR CAPITULO</div>
    <div id="texto">
<p style=”text-align:justify;”> El capitulo es evaluado de acuerdo a las preguntas correspondientes y de acuerdo a la toma de desiciones se puede determinar si
el capitulo es acreditado o en su defecto no acredita.</p>
</p>
<p style=”text-align:justify;”>
Una vez evaluados todos los capitulos se determina si la auditoria realizada acredita o no, la forma de determinarlo es evaluando los resultados de cada capitulo,
y asi poder entregar el dictamen final, que a su vez contendra informacion de la empresa auditora, la empresa auditada, el auditor responsable, fecha de inicio y final de la auditoria, asi como recomendacines y comentarios.</p>

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
