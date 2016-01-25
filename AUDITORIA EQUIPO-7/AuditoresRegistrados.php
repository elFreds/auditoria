<!doctype html>
<html lang=''>
<head>
   <meta charset='utf-8'>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="css/styles.css">
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="script.js"></script>
   <title>Capítulo 3</title>
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

<div id="cabecera">AUDITORES REGISTRADOS</div>
    <div id="texto">
<?php  
include("conexion.php");
?>
<?php
$sql="SELECT * from auditores inner join empresaauditora on empresaauditora.id_EmpresaAuditora=auditores.id_EmpresaAuditora";
$datos1=mysql_query($sql,$connexion);

?>
</br>
</br>
<table border="6" align="center">
  <th> Apellido Paterno </th>
  <th> Apellido Materno </th>
  <th> Nombre </th>
  <th> Edad </th>
  <th> Pais </th>
  <th> Ciudad Municipio </th>   
  <th> Codigo Postal </th>
  <th> Calle o Avenida </th>
  <th> Telefono </th>
  <th> Email </th>
  <th> Sexo </th>
  <th> Empresa Responsable de Auditor </th>
  <th> Editar </th>
  <th> Eliminar </th>
    
 <?php
while($row=Mysql_Fetch_Array($datos1)) { 
?>

<tr>
      <td> <?php echo $ApellidoPaterno=$row['ApellidoPaterno']; ?> </td>
	  <td> <?php echo $ApellidoMaterno=$row['ApellidoMaterno']; ?> </td>	
      <td> <?php echo $Nombre=$row['Nombre']; ?> </td>	
      <td> <?php echo $Edad=$row['Edad']; ?> </td>	
	  <td> <?php echo $Pais=$row['Pais'];?> </td>	  
	  <td> <?php echo $CiudadMunicipio=$row['CiudadMunicipio'];?> </td> 
	  <td> <?php echo $CodigoPostal=$row['CodigoPostal'];?> </td> 
	  <td> <?php echo $CalleAvenida=$row['CalleAvenida'];?> </td>
      <td> <?php echo $Telefono=$row['Telefono'];?> </td>
	  <td> <?php echo $Email=$row['Email'];?> </td>
	  <td> <?php echo $Sexo=$row['Sexo'];?> </td>
	  <td> <?php echo $id_EmpresaAuditora=$row['NombreFiscal'];?> </td>
	  <th><a href="formEditAuditor.php?id=<?php echo $id_emp=$row['id_audi'];?>">EDITAR</a></th>
	  <th><a href="eliminarAuditor.php?id=<?php echo $id_emp=$row['id_audi'];?>">ELIMINAR</a></th>

      
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
