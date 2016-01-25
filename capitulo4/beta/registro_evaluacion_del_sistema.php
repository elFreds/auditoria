<?php

$usuario=$_POST['usuario'];
$password=$_POST['password'];

$conexion=mysql_connect("localhost","root","")or die("error");

mysql_select_db("auditoria",$conexion) or die ("error en la busqueda de datos");
mysql_query("INSERT INTO usuario(usuario,password) values ('$usuario','$password')",$conexion) or die ("error");

$error=mysql_error();
if(!empty($error)){
echo "sin exito";
}else{
header("location:lisusu.php");
}
?>