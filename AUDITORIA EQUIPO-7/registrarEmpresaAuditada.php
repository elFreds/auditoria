<?php
include("conexion.php");
$NombreComercial=$_POST['NombreComercial'];
$NombreFiscal=$_POST['NombreFiscal'];
$CalleAvenida=$_POST['CalleAvenida'];
$CiudadMunicipio=$_POST['CiudadMunicipio'];
$CodigoPostal=$_POST['CodigoPostal'];
$Pais=$_POST['Pais'];
$Telefono=$_POST['Telefono'];
$Giro=$_POST['Giro'];
$Email=$_POST['Email'];
$Web=$_POST['Web'];
$id_audi=$_POST['id_audi'];

mysql_query("INSERT INTO  empresas (
`id_emp` ,
`NombreComercial` ,
`NombreFiscal` ,
`CalleAvenida` ,
`CiudadMunicipio` ,
`CodigoPostal` ,
`Pais` ,
`Telefono` ,
`Giro`,
`Email` ,
`Web`,
`id_audi`
)
VALUES (NULL , '$NombreComercial',  '$NombreFiscal',  '$CalleAvenida',  '$CiudadMunicipio',  '$CodigoPostal',  
'$Pais', '$Telefono', '$Giro', '$Email', '$Web', '$id_audi')",$connexion) 
or die ("Error al insertar datos");		
 $error=mysql_error();
 
 if(!empty($error)){
 echo "No se realizo el registro correctamente";
 }else{
 
 header("location:EmpresasAuditadasRegistradas.php");
 }
 ?>