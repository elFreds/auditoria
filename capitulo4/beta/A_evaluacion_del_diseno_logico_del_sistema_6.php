
<!doctype html>
<html lang=''>
<head>
   <meta charset='utf-8'>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="css/styles.css">
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="script.js"></script>
   <title>Capítulo 4</title>
</head>
<body>
   <div id="lateral">
<div id='cssmenu'>
<ul>
   
   <li><a href=''><span>CAPÍTULO 4</span></a></li>
   
 <li class='active has-sub'><a href='A_evaluacion_del_sistema.php'><span> EVALUACION DE LOS SISTEMAS (AUDITORIA)</span></a>
         <ul>

         <li class='has-sub'><a href='A_evaluacion_del_sistema.php'><span>EVALUACION DEL SISTEMA</span></a>     
         </li>

         <li class='has-sub'><a href='A_evaluacion_del_analisis.php'><span>EVALUACION DEL ANALIIS</span></a>
         </li>

         <li class='has-sub'><a href='A_evaluacion_del_diseno_logico_del_sistema.php'><span>EVALUACION DEL DISEÑO LOGICO DEL SISTEMA</span></a>
            <ul>
              <li ><a href='A_evaluacion_del_diseno_logico_del_sistema_1.php'><span>PROGRAMAS DE DESARROLLO</span></a></li>
              <li><a href='A_evaluacion_del_diseno_logico_del_sistema_2.php'><span>BASES DE DATOS</span></a></li>
              <li><a href='A_evaluacion_del_diseno_logico_del_sistema_4.php'><span>COMUNICACION</span></a></li>
              <li><a href='A_evaluacion_del_diseno_logico_del_sistema_6.php'><span>ANALISIS DE INFORMES</span></a></li>
               <li><a href='A_evaluacion_del_diseno_logico_del_sistema_7.php'><span>REDUNDANCIA, RUIDO, ENTROPIA</span></a></li>
            </ul>
         </li>

          <li class='has-sub'><a href='A_evaluacion_del_desarrollo_del_sistema.php'><span>EVALUACIÓN DEL DESARROLLO DEL SISTEMA</span></a>
            <ul>
               <li><a href='A_sistemas_distribuidos_internet_comunicacion_entre_oficinas.php'><span>SISTEMAS DISTRIBUIDOS, INTERNET, COMUNICACION ENTRE OFICINAS</span></a></li>
            </ul>
         </li>
         
         <li class='has-sub'><a href='A_control_de_proyectos.php'><span>CONTROL DE PROYECTOS</span></a>
         </li>

         <li class='has-sub'><a href='A_control_del_diseno_de_sistemas_y_progamacion.php'><span>CONTROL DEL DISEÑO DE SISTEMAS Y PROGRAMACION</span></a>
         </li>

         <li class='has-sub'><a href='A_instructivos_de_operacion.php'><span>INSTRUCTIVOS DE OPERACION</span></a>
         </li>

         <li class='has-sub'><a href='A_formas_de_implantacion.php'><span>FORMA DE IMPLANTACION</span></a>
         </li>          
         
         <li class='has-sub'><a href='A_equipo_y_facilidad_de_programacion.php'><span>EQUIPO Y FACILIDAD DE PROGRAMACION</span></a>
         </li>

         <li class='has-sub'><a href='A_entrevista_al_usuario.php'><span>ENTREVISTA AL USUARIO</span></a>
         </li>

</ul>

</div>

<?php
$connexion=mysql_connect("localhost","taguevar_123","Hola123*") or die('ERROR AL CONECTAR CON EL SERVIDOR'); 
mysql_select_db("taguevar_auditoria",$connexion)or die('ERROR AL CONECTAR CON LA BASE DE DATOS');
$datos=mysql_query("SELECT * FROM preguntas where id_subr = 3 and id_subsr = 7 ",$conexion) or die ("error consulta");
?>

<div id="cabecera"> EVALUACION DEL DISEÑO LOGICO DEL SISTEMA 
<p> ANALISIS DE INFORMES</p>
</div>

<center><table >
<td class="titulos">RUBRO: </td>
  <td class="titulos">ID SUBRUBRO: </td>
  <td class="titulos">ID SUBSUBRUBRO: </td>
  <td class="titulos">ID PREGUNTA: </td>
  <td class="titulos">NOMBRE DEL PREGUNTA:</td>
  <td class="titulos">OPCION</td>
  
  <?php
  while($datosarray=mysql_fetch_array($datos)){
  ?>

<tr>
<td><?php echo $datosarray['id_rubro'];?> </td>
<td><?php echo $datosarray['id_subr']; ?> </td>
<td><?php echo $datosarray['id_subsr']; ?> </td>
<td><?php echo $datosarray['id_preg']; ?> </td>
<td><?php echo $datosarray['pregunt']; ?> </td>

<td>
<form name="datos" method="post" action="registrares.php">
</select>
<input type="text" name="res"/>
</td>



<?php }?></table>         

<?php
echo "</table> \n"; 
echo "<br>";

echo "<center><input type='submit' class='boton' value='Guardar' 
style='
background: #3498db;
  background-image: -webkit-linear-gradient(top, #3498db, #2980b9);
  background-image: -moz-linear-gradient(top, #3498db, #2980b9);
  background-image: -ms-linear-gradient(top, #3498db, #2980b9);
  background-image: -o-linear-gradient(top, #3498db, #2980b9);
  background-image: linear-gradient(to bottom, #3498db, #2980b9);
  -webkit-border-radius: 10;
  -moz-border-radius: 10;
  border-radius: 10px;
  font-family: Arial;
  color: #ffffff;
  font-size: 15px;
  padding: 10px 20px 10px 20px;
  text-decoration: none;'
  width: 50px;' /></center>";echo "<p>";
echo "<table border ='0'> \n";


echo "<tr><td  id='h' align='right'
 style='
background: #3498db;
  background-image: -webkit-linear-gradient(top, #3498db, #2980b9);
  background-image: -moz-linear-gradient(top, #3498db, #2980b9);
  background-image: -ms-linear-gradient(top, #3498db, #2980b9);
  background-image: -o-linear-gradient(top, #3498db, #2980b9);
  background-image: linear-gradient(to bottom, #3498db, #2980b9);
  -webkit-border-radius: 10;
  -moz-border-radius: 10;
  border-radius: 10px;
  font-family: Arial;
  color: #ffffff;
  font-size: 15px;
  padding: 10px 20px 10px 20px;
  text-decoration: none;'
  width: 50px;' >
<a href='A_evaluacion_del_diseno_logico_del_sistema_4.php' style='color: #fff; font-family: Verdana; font-size: medium; ' >Regresar</a></td>

<td  width='700'></td>

<td  align='left' style='
background: #3498db;
  background-image: -webkit-linear-gradient(top, #3498db, #2980b9);
  background-image: -moz-linear-gradient(top, #3498db, #2980b9);
  background-image: -ms-linear-gradient(top, #3498db, #2980b9);
  background-image: -o-linear-gradient(top, #3498db, #2980b9);
  background-image: linear-gradient(to bottom, #3498db, #2980b9);
  -webkit-border-radius: 10;
  -moz-border-radius: 10;
  border-radius: 10px;
  font-family: Arial;
  color: #ffffff;
  font-size: 15px;
  padding: 10px 20px 10px 20px;
  text-decoration: none;
  width: 50px;' >
  <a href='A_evaluacion_del_diseno_logico_del_sistema_7.php' style='color: #fff; font-family: Verdana; font-size: medium; '>Siguiente</a></td>";
echo "</table>";echo "<p>";

echo "</form>";

?>

</div>
</div>
</body>
</html>