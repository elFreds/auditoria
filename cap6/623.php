<?php 
include("css.php");
include("conexion.php");
mysql_set_charset('utf-8');


$result = mysql_query("SELECT id_preg, pregunt FROM preguntas WHERE id_subsr=623",$connexion); 
echo "<form method=post action='insertar.php'>";
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
<a href='622.php' style='color: #fff; font-family: Verdana; font-size: medium; ' >Regresar</a></td>

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
  <a href='631.php' style='color: #fff; font-family: Verdana; font-size: medium; '>Siguiente</a></td>";
echo "</table>";echo "<p>";

echo "</form>";

?>


 <br>

</div>
</div>
</body>
</html>

