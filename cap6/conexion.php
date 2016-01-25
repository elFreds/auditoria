<?php  
$connexion=mysql_connect("taguevar_auditoria","taguevar_123","Hola123*") or die('ERROR AL CONECTAR CON EL SERVIDOR'); 
mysql_select_db("auditoria",$connexion)or die('ERROR AL CONECTAR CON LA BASE DE DATOS');
?>