<!doctype html>
<html lang=''>
<head>
   <meta charset='utf-8'>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="css/styles.css">
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="script.js"></script>
   <title>Capítulo 7</title>
   </head>
<body>
   <div id="lateral">
<div id='cssmenu'>
<ul>   
   <li><a href="index.php"><span> CAPÍTULO  #7</span></a></li>
   <li class='has-sub'><a href=''><span> INFORMACIÓN SOBRE AUDITORÍA</span></a>
     <ul>
         <li class='has-sub'><a href=''><span>EMPRESAS AUDITORAS</span></a>
            <ul>
               <li><a href='forNueEmpresaAuditora.php'><span>REGISTRAR</span></a></li>
               <li><a href='EmpresasAuditorasRegistradas.php'><span>CONSULTAR</span></a></li>
            </ul>
         </li>
		 
		 <li class='has-sub'><a href=''><span>EMPRESAS AUDITADAS</span></a>
            <ul>
               <li><a href='forNueEmpresa.php'><span>REGISTRAR</span></a></li>
               <li><a href='EmpresasAuditadasRegistradas.php'><span>CONSULTAR</span></a></li>
            </ul>
         </li>
		 
		 <li class='has-sub'><a href=''><span>AUDITORES</span></a>
            <ul>
               <li><a href='forNueAuditor.php'><span>REGISTRAR</span></a></li>
               <li><a href='AuditoresRegistrados.php'><span>CONSULTAR</span></a></li>
            </ul>
         </li>
    
		  <li class='has-sub'><a href=''><span>INFORMACIÓN POR CAPÍTULO</span></a>
            <ul>
               <li><a href='infocap3.php'><span>CAPÍTULO III</span></a></li>
               <li><a href='infocap4.php'><span>CAPÍTULO IV</span></a></li>
			   <li><a href='infocap5.php'><span>CAPÍTULO III</span></a></li>
               <li><a href='infocap6.php'><span>CAPÍTULO V</span></a></li>
			   <li><a href='dictamenfinal.php'><span>DICTAMEN FINAL DE LA AUDITORÍA</span></a></li>
            </ul>
         </li>
         
         </ul>
          <li class='has-sub'><a href=""><span>TEORIA CAPÍTULO #7</span></a>
            <ul>
               <li><a href="FunTeoTema1.php"><span>TÉCNICAS PARA LA INTERPRETACIÓN DE LA INFORMACIÓN</span></a></li>
               <li ><a href='FunTeoTema2.php' ><span>EVALUACIÓN DE LOS SISTEMAS</span></a></li>
               <li ><a href='FunTeoTema3.php'><span>EVALUACIÓN DE LOS SISTEMAS DE INFORMACIÓN</span></a></li>
               <li ><a href='FunTeoTema4.php'><span>CONTROLES</span></a></li>
               <li ><a href='FunTeoTema5.php'><span>PRESENTACIÓN</span></a></li>
			   <li ><a href='FunTeoPon.php'><span>PONDERACIÓN DE EVALUACIÓN POR CAPÍTULO</span></a></li>
            </ul>
         </li>          
   </li>
</ul>
</div>
<br></br>

<div id="cabecera">REGISTROS DE EMPRESAS AUDITORAS</div>
    <div id="texto">
<?php  
include("conexion.php");

$sql="SELECT * from empresaauditora";
$datos=mysql_query($sql,$connexion);
?>
</br>
</br>
<table border="6" align="center">
  <th> Nombre Comercial </th>
  <th> Nombre Fiscal </th>
  <th> Calle Avenida </th>
  <th> Ciudad Municipio </th>   
  <th> Codigo Postal </th>
  <th> Pais </th>
  <th> Telefono </th>
  <th> Email </th>
  <th> Web </th>
  <th> RFC </th> 
  <th> Editar </th>
  <th> Eliminar </th> 
  
    
<?php
while ($row=mysql_fetch_array($datos)) { 
?>

<tr>
      <td> <?php echo $NombreComercial=$row['NombreComercial']; ?> </td>
	  <td> <?php echo $NombreFiscal=$row['NombreFiscal']; ?> </td>	
      <td> <?php echo $Domicilio=$row['Domicilio']; ?> </td>		  
	  <td> <?php echo $CiudadMunicipio=$row['CiudadMunicipio'];?> </td> 
	  <td> <?php echo $CodigoPostal=$row['CodigoPostal'];?> </td> 
	  <td> <?php echo $Pais=$row['Pais'];?> </td>
      <td> <?php echo $Telefono=$row['Telefono'];?> </td>
	  <td> <?php echo $Email=$row['Email'];?> </td>
	  <td> <?php echo $Web=$row['Web'];?> </td>
	  <td> <?php echo $RFC=$row['RFC'];?> </td>
	  <th><a href="formEditEmpAuditora.php?id=<?php echo $id_EmpresaAuditora=$row['id_EmpresaAuditora'];?>">EDITAR</a></th>
	  <th><a href="eliminarEmpresaAuditora.php?id=<?php echo $id_EmpresaAuditora=$row['id_EmpresaAuditora'];?>">ELIMINAR</a></th>
	  
      
	  <?php
      }
	  mysql_close($connexion);
      ?>
<br>

</table>
	<br> 
</center>
<center>
<?php
	echo"<input type=\"button\"class=\"boton\"value=\"REGRESAR\"onclick=\"window.location.href='index.php';\">";
?>
</center>

 <br><br>

</div>
</div>
</body>
<html>
