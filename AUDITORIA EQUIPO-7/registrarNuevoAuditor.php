<?php
include("conexion.php");
$ApellidoPaterno=$_POST['ApellidoPaterno'];
$ApellidoMaterno=$_POST['ApellidoMaterno'];
$Nombre=$_POST['Nombre'];
$Edad=$_POST['Edad'];
$Pais=$_POST['Pais'];
$CiudadMunicipio=$_POST['CiudadMunicipio'];
$CodigoPostal=$_POST['CodigoPostal'];
$CalleAvenida=$_POST['CalleAvenida'];
$Telefono=$_POST['Telefono'];
$Email=$_POST['Email'];
$Sexo=$_POST['Sexo'];
$id_EmpresaAuditora=$_POST['id_EmpresaAuditora'];

mysql_query("INSERT INTO  auditores (
`ApellidoPaterno` ,
`ApellidoMaterno` ,
`Nombre` ,
`Edad` ,
`Pais` ,
`CiudadMunicipio` ,
`CodigoPostal` ,
`CalleAvenida` ,
`Telefono` ,
`Email` ,
`Sexo`,
`id_EmpresaAuditora`
)
VALUES ('$ApellidoPaterno',  '$ApellidoMaterno', '$Nombre', '$Edad', '$Pais', 
'$CiudadMunicipio',  '$CodigoPostal', '$CalleAvenida', '$Telefono', '$Email', '$Sexo', '$id_EmpresaAuditora' )",$connexion) 
or die ("Error al insertar datos");		
 $error=mysql_error();
 
 if(!empty($error)){
 echo "No se realizo el registro correctamente";
 }else{
 
 header("location:forNueAuditor.php");
 }
 ?>