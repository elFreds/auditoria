<!doctype html>
<html lang='es'>
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
   
   <li><a href="index.php"><span> CAPÍTULO  #3</span></a></li>
   <li class='active has-sub'><a href=''><span> CUESTIONARIOS AUDITORÍA DE LA FUNCIÓN INFORMATICA</span></a>
      <ul>
         <li class='has-sub'><a href=''><span>ESTRUCTURA ORGÁNICA</span></a>
            <ul>
               <li><a href='subr_1.php'><span>ESTRUCTURA ORGÁNICA</span></a></li>
               <li><a href='estructura_org.php'><span>OBJETIVOS DE LA ESTRUCTURA</span></a></li>
               <li><a href='#'><span>NIVELES JERARQUICOS</span></a></li>
               <li><a href='#'><span>DEPARTAMENTALIZACIÓN</span></a></li>
               <li><a href='#'><span>PUESTOS</span></a></li>
               <li><a href='#'><span>EXPECTATIVAS</span></a></li>
               <li><a href='#'><span>AUTORIDAD</span></a></li>
            </ul>
         </li>

         <li class='has-sub'><a href='#'><span>FUNCIONES</span></a>
            <ul>
                <li ><a href='#'><span>EXISTENCIAS DE FUNCIONES</span></a></li>
                <li><a href='#'><span>COINCIDENCIAS</span></a></li>
                <li><a href='#'><span>FUNCIONES ADECUADAS</span></a></li>
                <li><a href='#'><span>CUMPLIMIENTO DE FUNCIONES</span></a></li>
                <li><a href='#'><span>APOYOS</span></a></li>
                <li><a href='#'><span>DUPLICIDAD</span></a></li>
               
            </ul>
         </li>


          <li class='has-sub'><a href='#'><span>OBJETIVOS</span></a>
            <ul>
              <li ><a href='#'><span>EXISTENCIA DE OBJETIVOS</span></a></li>
              <li><a href='#'><span>OBJETIVOS FORMALES</span></a></li>
              <li><a href='#'><span>OBJETIVOS ADECUADOS</span></a></li>
              <li><a href='#'><span>CUMPLIMIENTO DE OBJETIVOS</span></a></li>
              <li><a href='#'><span>ACTUALIZACIÓN</span></a></li>
            </ul>
         </li>

          <li class='has-sub'><a href='#'><span>EVALUACIÓN DE RECURSOS HUMANOS</span></a>
            <ul>
               <li><a href='#'><span>DESEMPEÑO Y CUMPLIMIENTO</span></a></li>
               <li ><a href='#'><span>CAPACITACIÓN</span></a></li>
                <li ><a href='#'><span>SUPERVISIÓN</span></a></li>
                 <li ><a href='#'><span>LIMITACIONES</span></a></li>
                  <li ><a href='#'><span>CONDICIONES DE TRABAJO</span></a></li>
                   <li ><a href='#'><span>REMUNERACIONES</span></a></li>
                    <li ><a href='#'><span>AMBIENTE</span></a></li>
                     <li ><a href='#'><span>ORGANIZACIÓN DE TRABAJO</span></a></li>
                      <li ><a href='#'><span>DESARROLLO Y MOTIVACION</span></a></li>


            </ul>
         </li>

           <li class='has-sub'><a href='#'><span>SITUACION PRESUPUESTAL</span></a>
            <ul>
               <li><a href='#'><span>PRESUPUESTOS</span></a></li>
               <li ><a href='#'><span>RECURSOS FINANCIEROS</span></a></li>
               <li ><a href='#'><span>RECURSOS MATERIALES</span></a></li>
            </ul>
         </li>

      </ul>

       <li class='has-sub'><a href=""><span>TEORIA CAPÍTULO #3</span></a>
            <ul>
               <li><a href="estructura_org.php"><span>ESTRUCTURA ORGÁNICA</span></a></li>
               <li ><a href='funciones.php' ><span>FUNCIONES</span></a></li>
               <li ><a href='objetivos.php'><span>OBJETIVOS</span></a></li>
               <li ><a href='evaluacion_rh.php'><span>EVALUACIÓN DE RECURSOS HUMANOS</span></a></li>
               <li ><a href='situacion_pf.php'><span>SITUACIÓN PRESUPUESTAL Y FINANCIERA</span></a></li>
            </ul>
         </li>

          
   </li>


</ul>

</div>

<br></br>


<div id="cabecera">ESTRUCTURA ORGÁNICA<br>Autoridad<br></div>
    <div id="texto">



<?php 
include("conexion.php");
mysql_set_charset('utf8');


$result = mysql_query("SELECT id_preg, pregunt FROM preguntas WHERE id_subr=31 AND id_subsr=317", $connexion); 
echo "<form method=post action='insertar2.php'>";
echo "<table border = '0'> \n"; 
echo "<tr><td><b>Clave de pregunta</b></td><td align='center'><b>Pregunta(s)</b></td> <td COLSPAN='4' align='center'><b>Respuestas<b></td></tr>\n"; 
$i = 1; 
while ($row = mysql_fetch_array($result)){ 

  echo " <tr>";
  echo "<td>" . $row["id_preg"] . "</td>";
  echo "<td>" . $row["pregunt"] . "</td>";
 
  $result2 = mysql_query("SELECT * FROM respuestas", $connexion); 
while ($row=mysql_fetch_array($result2)) {
 $resp=$row["resp"];
 $idresp=$row["id_resp"];

?>


 <td ><input type="radio" name= <?php echo"'cuestion.$i' "?> value="<?php echo $idresp;?>"> </td> <td ><?php echo $resp; ?></td>

<?php }
$i++; 
}
   
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
<a href='subr_6.php' style='color: #fff; font-family: Verdana; font-size: medium; ' >Regresar</a></td>

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
  <a href='subr_8.php' style='color: #fff; font-family: Verdana; font-size: medium; '>Siguiente</a></td>";
echo "</table>";echo "<p>";

echo "</form>";

?>


 <br>

</div>
</div>
</body>
</html>