<?php
include("conexion.php"); 

$id=$_POST['id'];
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


$editar="update empresaauditora set NombreComercial='$NombreComercial', NombreFiscal='$NombreFiscal', Domicilio='$Domicilio', CiudadMunicipio='$CiudadMunicipio', 
CodigoPostal='$CodigoPostal', Pais='$Pais', Telefono='$Telefono', Email='$Email', Web='$Web', RFC='$RFC' where id_EmpresaAuditora='$id'";
mysql_query($editar,$connexion) or die ("Error al actualizar datos");		
 $error=mysql_error();
 header ("location:EmpresasAuditorasRegistradas.php");

?>