<?php
include("conexion.php");
?>
<?php
$id=$_GET['id'];
echo ("$id");
mysql_query("DELETE FROM empresaauditora WHERE id_EmpresaAuditora=$id",$connexion)
 or die ("problema al realizar la consulta delete".mysql_errno());
 header ("location:EmpresasAuditorasRegistradas.php");
?>