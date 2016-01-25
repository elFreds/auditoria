<?php  
$connexion=mysql_connect("localhost","taguevar_123","Hola123*") or die('ERROR AL CONECTAR CON EL SERVIDOR WEB'); 
mysql_select_db("taguevar_auditoria",$connexion)or die('ERROR AL CONECTAR CON LA BASE DE DATOS');
?>
