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
   
   <li><a href=""><span> CAPÍTULO  4</span></a></li>
  <li class='active has-sub'><a href='A_evaluacion_del_sistema.php'><span> EVALUACION DE LOS SISTEMAS (AUDITORIA)</span></a>
         <ul>

         <li class='has-sub'><a href='A_evaluacion_del_sistema.php'><span>EVALUACION DEL SISTEMA</span></a>     
         </li>

         <li class='has-sub'><a href='A_evaluacion_del_analisis.php'><span>EVALUACION DEL ANALIIS</span></a>
         </li>

         <li class='has-sub'><a href='A_evaluacion_del_diseno_logico_del_sistema.php'><span>EVALUACION DEL DISEÑO LOGICO DEL SISTEMA</span></a>
            <ul>
              <li ><a href='A_programas_de_desarrollo.php'><span>PROGRAMAS DE DESARROLLO</span></a></li>
              <li><a href='A_bases_de_datos.php'><span>BASES DE DATOS</span></a></li>
              <li><a href='A_administrador_de_base_de_datos.php'><span>ADMINISTRADOR DE BASES DE DATOS</span></a></li>
              <li><a href='A_comunicacion.php'><span>COMUNICACION</span></a></li>
              <li><a href='A_analisis_de_informes.php'><span>ANALISIS DE INFORMES</span></a></li>
               <li><a href='A_redundancia_ruido_entropia.php'><span>REDUNDANCIA, RUIDO, ENTROPIA</span></a></li>
            </ul>
         </li>

          <li class='has-sub'><a href='A_evaluacion_del_desarrollo_del_sistema.php'><span>EVALUACIÓN DEL DESARROLLO DEL SISTEMA</span></a>
            <ul>
               <li><a href='A_sistemas_distribuidos_internet_comunicacion_entre_oficinas.php'><span>SISTEMAS DISTRIBUIDOS, INTERNET, COMUNICACION ENTRE OFICINAS</span></a></li>
            </ul>
         </li>
         
         <li class='has-sub'><a href='A_control_de_proyectos.php'><span>CONTROL DE PROYECTOS</span></a>
         </li>

         <li class='has-sub'><a href='A_control_del_diseño_de_sistemas_y_progamacion.php'><span>CONTROL DEL DISEÑO DE SISTEMAS Y PROGRAMACION</span></a>
         </li>

         <li class='has-sub'><a href='A_instructivos_de_operacion.php'><span>INSTRUCTIVOS DE OPERACION</span></a>
         </li>

         <li class='has-sub'><a href='A_formas_de_implantacion.php'><span>FORMA DE IMPLANTACION</span></a>
         </li>          
         
         <li class='has-sub'><a href='A_equipo_y_facilidad_de_programacion.php'><span>EQUIPO Y FACILIDAD DE PROGRAMACION</span></a>
         </li>

         <li class='has-sub'><a href='A_entrevista_al_usuario.php'><span>ENTREVISTA AL USUARIO</span></a>
         </li>
               
            </ul>
         </li>     
</ul>

</div>

<br></br>


<div id="cabecera">cuestionario_1</div>
    <div id="texto">


<?php

$usuario=$_POST['usuario'];
$password=$_POST['password'];

$conexion=mysql_connect("localhost","root","")or die("error");

mysql_select_db("auditoria",$conexion) or die ("error en la busqueda de datos");
mysql_query("INSERT INTO usuario(usuario,password) values ('$usuario','$password')",$conexion) or die ("error");

$error=mysql_error();
if(!empty($error)){
echo "sin exito";
}else{
header("location:lisusu.php");
}
?>


 </div>
</div>
</body>
<html>
