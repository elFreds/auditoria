<?php
include("conexion.php"); 

$id=$_POST['id'];

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
$Auditor=$_POST['Auditor'];



$editar="update empresas set NombreComercial='$NombreComercial', NombreFiscal='$NombreFiscal', CalleAvenida='$CalleAvenida', 
CiudadMunicipio='$CiudadMunicipio', CodigoPostal='$CodigoPostal', Pais='$Pais', Telefono='$Telefono', Giro='$Giro', 
Email='$Email', Web='$Web', id_audi='$Auditor'
where id_emp='$id'";
mysql_query($editar,$connexion) or die ("Error al actualizar datos");		
 $error=mysql_error();
 header ("location:EmpresasAuditadasRegistradas.php");

?>