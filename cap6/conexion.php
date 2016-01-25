<?php  
$connexion=mysql_connect("127.0.0.1","taguevar_123","Hola123*") or die('ERROR AL CONECTAR CON EL SERVIDOR'); 
mysql_select_db("taguevar_auditoria",$connexion)or die('ERROR AL CONECTAR CON LA BASE DE DATOS');
?>