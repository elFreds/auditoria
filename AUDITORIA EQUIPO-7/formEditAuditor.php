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

<div id="cabecera">ACTUALIZAR DATOS AUDITOR</div>
    <div id="texto">
<?php
include("conexion.php");
$datos=mysql_query("SELECT * FROM empresaauditora") or die ("No se puede consultar la tabla puesto");
$id=$_GET['id'];
$result=mysql_query("SELECT * FROM auditores inner join empresaauditora on empresaauditora.id_EmpresaAuditora=auditores.id_EmpresaAuditora where id_audi=$id");
$row=mysql_fetch_array($result);
?>

<form  method="POST" action="editarAuditor.php">
</br>
</br>

 <table border="4" cellpadding="3" cellspacing="3" width="30%" align="center">
   
   <tr>

  <tr>
      <td align="right"> Apellido Paterno: </td>
	  <td><input name="ApellidoPaterno" type="text" id="ApellidoPaterno" value="<?php echo $row['ApellidoPaterno'];?>"/>
	  </td>
 </tr>

<tr>
      <td align="right"> Apellido Materno </td>
	  <td><input name="ApellidoMaterno" type="text" id="ApellidoMaterno" value="<?php echo $row['ApellidoMaterno'];?>"   />
</td>
</tr>

<tr>
      <td align="right"> Nombre (s) </td>
	  <td><input name="Nombre" type="text" id="Nombre" value="<?php echo $row['Nombre'];?>"   />
</td>
</tr>

<tr>
      <td align="right"> Edad </td>
	  <td><input name="Edad" type="text" id="Edad" value="<?php echo $row['Edad'];?>"   />
</td>
</tr>

<tr>
      <td align="right"> Pais </td>
	  <td><input name="Pais" type="text" id="Pais" value="<?php echo $row['Pais'];?>"   />
</td>
</tr>

<tr>
      <td align="right"> Ciudad Municipio </td>
	  <td><input name="CiudadMunicipio" type="text" id="CiudadMunicipio" value="<?php echo $row['CiudadMunicipio'];?>"   />
</td>
</tr>

<tr>
      <td align="right"> Codigo Postal </td>
	  <td><input name="CodigoPostal" type="text" id="CodigoPostal" value="<?php echo $row['CodigoPostal'];?>"   />
</td>
</tr>

<tr>
      <td align="right"> Calle Avenida </td>
	  <td><input name="CalleAvenida" type="text" id="CalleAvenida" value="<?php echo $row['CalleAvenida'];?>"   />
</td>
</tr>

<tr>
      <td align="right"> Telefono </td>
	  <td><input name="Telefono" type="text" id="Telefono" value="<?php echo $row['Telefono'];?>"   />
</td>
</tr>

<tr>
      <td align="right"> E-mail </td>
	  <td><input name="Email" type="text" id="Email" value="<?php echo $row['Email'];?>"   />
</td>
</tr>

<tr>
      <td align="right"> Sexo </td>
	  <td><input name="Sexo" type="text" id="Sexo" value="<?php echo $row['Sexo'];?>"   />
</td>
</tr>

<tr>
        <td align="right"> Empresa Responsable de Auditor</td>
        <td><select name="NombreFiscal">
<option value="<?php echo $row['id_EmpresaAuditora'];?>">
               <?php echo $row['NombreFiscal'];?> 
               </option>
<?php
while($datosArray1=mysql_fetch_array($datos)){
?>
<option value="<?php echo $datosArray1['id_EmpresaAuditora'];?>">
	<?php echo $datosArray1['NombreFiscal'];?>
	</option>
	<?php
	}
	?>
</select>
</td>
</tr>

<td>
<input name="id" type="text" style="display:none" value="<?php echo $row['id_audi'];?>" />
<td>
</tr>

</table>
</br>
</br>
<center>
	<?php
	echo"<input type=\"button\"class=\"boton\"value=\"CANCELAR\"onclick=\"window.location.href='AuditoresRegistrados.php';\">";
	?>
	<input type="submit" value="ACEPTAR" class="boton" onclick="validaCampos();"/> 
	
</center>

 <br><br>

</div>
</div>
</body>
<html>
