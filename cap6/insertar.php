<?php 
mysql_set_charset('utf-8');
include ("conexion.php");
<html> 
<body> 
<?php 

// Recibimos por POST los datos procedentes del formulario 

$uno$i = $_POST["uno$i"]; 
$total_car = $n_nombre * $n_email;    // Si alguno de ellos vale 0, $total_car valdrá 0 

if (uno$i == 1)  
{  
    // Abrimos la conexion a la base de datos 
    include("abre_conexion.php"); 
     
    $_GRABAR_SQL = "INSERT INTO asignarresp (id_Pregunta,id_Respuesta) VALUES ('$id_Pregunta','$id_Respuesta','$fecha')";  
    mysql_query($_GRABAR_SQL); 
     
   // Confirmamos que el registro ha sido insertado con exito 
     
    echo " 
    <p>Los datos han sido guardados con exito.</p> 
        "; 
} 
if ($uno$i == 2)
{  
    // Abrimos la conexion a la base de datos 
    include("abre_conexion.php"); 
     
    $_GRABAR_SQL = "INSERT INTO asignarresp (id_Pregunta,id_Respuesta) VALUES ('$Pregunta','$id_Respuesta')";  
    mysql_query($_GRABAR_SQL); 
     
   // Confirmamos que el registro ha sido insertado con exito 
     
    echo " 
    <p>Los datos han sido guardados con exito.</p> 
        "; 
} 
?> 
</body> 
</html>
?>