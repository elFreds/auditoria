<?php
	$capitulo=$_POST['nomcap'];
	$tema=$_POST['nomtema'];
        $subtema=$_POST['nomsubtema'];
        $actividad=$_POST['nomact'];
        $fechas=$_POST['fechas'];
        $auditor=$_POST['nomaudi'];
        $empresa=$_POST['nomemp'];
             
        
        $conexion=mysql_connect("http://tescha-aguevara.cidwebmex.com","taguevar_123","Hola123*")or die("ERROR DE CONEXION");

mysql_select_db("taguevar_auditoria",$conexion) or die ("errror al conectar con la base de datos");
mysql_query("INSERT INTO asignacion (capitulo,tema,subtema,actividad,tiempo,nom_audi,emp_auditora) 
	values ( '$capitulo', '$tema', '$subtema', '$actividad', '$fechas','$auditor','$empresa')", $conexion) or die ("ERROR AL INSERTAR DATOS");

$error=mysql_error();
if(empty($error)){
header("location:planeacion.php");
}else{
echo"NO SE REALIZO EL REGISTRO";    
}
?>
