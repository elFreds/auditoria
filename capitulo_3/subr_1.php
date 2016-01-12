<!doctype html>
<html lang='es'>
<head>
   <meta charset='utf-8'>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="css/styles.css "  type="text/css">

 
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
               <li><a href='subr_2.php'><span>OBJETIVOS DE LA ESTRUCTURA</span></a></li>
               <li><a href='subr_3.php'><span>NIVELES JERARQUICOS</span></a></li>
               <li><a href='subr_4.php'><span>DEPARTAMENTALIZACIÓN</span></a></li>
               <li><a href='subr_5.php'><span>PUESTOS</span></a></li>
               <li><a href='subr_6.php'><span>EXPECTATIVAS</span></a></li>
               <li><a href='subr_7.php'><span>AUTORIDAD</span></a></li>
            </ul>
         </li>

         <li class='has-sub'><a href='#'><span>FUNCIONES</span></a>
            <ul>
                <li ><a href='subr_8.php'><span>EXISTENCIAS DE FUNCIONES</span></a></li>
                <li><a href='subr_9.php'><span>COINCIDENCIAS</span></a></li>
                <li><a href='subr_10.php'><span>FUNCIONES ADECUADAS</span></a></li>
                <li><a href='subr_11.php'><span>CUMPLIMIENTO DE FUNCIONES</span></a></li>
                <li><a href='subr_12.php'><span>APOYOS</span></a></li>
                <li><a href='subr_13.php'><span>DUPLICIDAD</span></a></li>
               
            </ul>
         </li>


          <li class='has-sub'><a href='#'><span>OBJETIVOS</span></a>
            <ul>
              <li ><a href='subr_14.php'><span>EXISTENCIA DE OBJETIVOS</span></a></li>
              <li><a href='subr_15.php'><span>OBJETIVOS FORMALES</span></a></li>
              <li><a href='subr_16.php'><span>OBJETIVOS ADECUADOS</span></a></li>
              <li><a href='subr_17.php'><span>CUMPLIMIENTO DE OBJETIVOS</span></a></li>
              <li><a href='subr_18.php'><span>ACTUALIZACIÓN</span></a></li>
            </ul>
         </li>

          <li class='has-sub'><a href='#'><span>EVALUACIÓN DE RECURSOS HUMANOS</span></a>
            <ul>
               <li><a href='subr_19.php'><span>DESEMPEÑO Y CUMPLIMIENTO</span></a></li>
               <li ><a href='subr_20.php'><span>CAPACITACIÓN</span></a></li>
                <li ><a href='subr_21.php'><span>SUPERVISIÓN</span></a></li>
                 <li ><a href='subr_22.php'><span>LIMITACIONES</span></a></li>
                  <li ><a href='subr_23.php'><span>CONDICIONES DE TRABAJO</span></a></li>
                   <li ><a href='subr_24.php'><span>REMUNERACIONES</span></a></li>
                    <li ><a href='subr_25.php'><span>AMBIENTE</span></a></li>
                     <li ><a href='subr_26.php'><span>ORGANIZACIÓN DE TRABAJO</span></a></li>
                      <li ><a href='subr_27.php'><span>DESARROLLO Y MOTIVACION</span></a></li>


            </ul>
         </li>

           <li class='has-sub'><a href='#'><span>SITUACION PRESUPUESTAL</span></a>
            <ul>
               <li><a href='subr_28.php'><span>PRESUPUESTOS</span></a></li>
               <li ><a href='subr_29.php'><span>RECURSOS FINANCIEROS</span></a></li>
               <li ><a href='subr_30.php'><span>RECURSOS MATERIALES</span></a></li>
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


<div id="cabecera">ESTRUCTURA ORGÁNICA<br>Evaluación de Estructura</div>
    


    <div id="texto">

<?php 
include("conexion.php");
mysql_set_charset('utf8');


$result = mysql_query("SELECT id_preg, pregunt FROM preguntas WHERE id_subr=31 AND id_subsr=311", $connexion); 
echo "<form method=post action='insertar2.php'>";
echo "<table > \n"; 
echo "<tr><td><b>Clave de pregunta</b></td><td align='center'><b>Pregunta(s)</b></td> <td COLSPAN=2 align='center'><b>Respuestas<b></td></tr>\n"; 
$i = 1; 
while ($row = mysql_fetch_array($result)){ 

  echo " <tr>";
  echo "<td>" . $row["id_preg"] . "</td>";
  echo "<td>" . $row["pregunt"] . "</td>";
 
   echo "<td><input type='radio' value='1'   name='uno$i' onclick='uncheckRadio(this)'>SI</td>";   
   echo "<td><input type='radio'  value='2'   name='uno$i' onclick='uncheckRadio(this)'>NO</td>"; 
   echo "</tr>"; 
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
<a href='' style='color: #fff; font-family: Verdana; font-size: medium; ' >Regresar</a></td>

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
  <a href='subr_2.php' style='color: #fff; font-family: Verdana; font-size: medium; '>Siguiente</a></td>";
echo "</table>";echo "<p>";

echo "</form>";

?>


 <br>

</div>
</div>
</body>
</html>
