<?php  
$connexion=mysql_connect("localhost","root","") or die('ERROR AL CONECTAR CON EL SERVIDOR'); 
mysql_select_db("auditoria",$connexion)or die('ERROR AL CONECTAR CON LA BASE DE DATOS');
?>
