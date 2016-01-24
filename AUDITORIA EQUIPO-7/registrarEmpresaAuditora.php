<?php
include("conexion.php");
$NombreComercial=$_POST['NombreComercial'];
$NombreFiscal=$_POST['NombreFiscal'];
$Domicilio=$_POST['Domicilio'];
$CiudadMunicipio=$_POST['CiudadMunicipio'];
$CodigoPostal=$_POST['CodigoPostal'];
$Pais=$_POST['Pais'];
$Telefono=$_POST['Telefono'];
$Email=$_POST['Email'];
$Web=$_POST['Web'];
$RFC=$_POST['RFC'];

mysql_query("INSERT INTO empresaauditora (
`id_EmpresaAuditora` ,
`NombreComercial` ,
`NombreFiscal` ,
`Domicilio` ,
`CiudadMunicipio` ,
`CodigoPostal` ,
`Pais` ,
`Telefono` ,
`Email` ,
`Web`,
`RFC`
)
VALUES (NULL , '$NombreComercial',  '$NombreFiscal',  '$Domicilio',  '$CiudadMunicipio',  '$CodigoPostal',  
'$Pais', '$Telefono', '$Email', '$Web', '$RFC')",$connexion) 
or die ("Error al insertar datos en la tabla empresa auditora");		
 $error=mysql_error();
 
 if(!empty($error)){
 echo "No se realizo el registro correctamente";
 }else{
 
 header("location:forNueEmpresaAuditora.php");
 }
 ?>