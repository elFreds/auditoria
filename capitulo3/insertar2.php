<?php 

include ("conexion.php");
$err=isset($_GET['error']) ? $_GET['error'] : null;




$iAsg=10;
$iA=12;
$iAu=32;
$iP=56;
$i=67;


$datos=mysql_query("INSERT INTO asignarresp ('idAsignacion','idAuditoria','idAuditor','idPregunta','idRespuesta')         
VALUES ('$iAsg','$iA','$iAu','$iP','$i')",$connexion) or die ("Error al insertar datos");	        


?>