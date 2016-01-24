<?php
include("conexion.php");
?>
<?php
$id=$_GET['id'];
echo ("$id");
mysql_query("DELETE FROM auditores WHERE id_audi=$id",$connexion)
 or die ("problema al realizar la consulta delete".mysql_errno());
 header ("location:AuditoresRegistrados.php");
?>