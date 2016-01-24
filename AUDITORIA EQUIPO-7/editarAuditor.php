<?php
include("conexion.php"); 
$id=$_POST['id'];
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
$NombreFiscal=$_POST['NombreFiscal'];


$editar="update auditores set ApellidoPaterno='$ApellidoPaterno', ApellidoMaterno='$ApellidoMaterno', Nombre='$Nombre', Edad='$Edad',
 Pais='$Pais', CiudadMunicipio='$CiudadMunicipio', CodigoPostal='$CodigoPostal', CalleAvenida='$CalleAvenida', Telefono='$Telefono', 
 Email='$Email', Sexo='$Sexo', id_EmpresaAuditora='$NombreFiscal' where id_audi='$id'";
mysql_query($editar,$connexion) or die ("Error al actualizar datos");		
 $error=mysql_error();
 header ("location:AuditoresRegistrados.php");

?>