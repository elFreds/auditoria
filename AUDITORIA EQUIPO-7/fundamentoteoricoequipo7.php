<?php	
session_start();
if(empty($_SESSION['usuario'])){
header("location:index.html?errorlogin");
}
?>

<html>
 <head>
  <title>  INFORMACION CAPITULO 3 </title>
  <link rel="stylesheet" href="css/style.css">
 </head>
<body bgcolor="#58FA58">
<center>
<MARQUEE BEHAVIOR=alternate WIDTH=70%>
<FONT FACE=arial COLOR=###### SIZE=8>
FUNDAMENTO TEORICO EQUIPO 7
</MARQUEE>
<hr>

<h3>Tecnicas para la interpretacion de la informacion </h3>
<p>El analisis critico de los hechos sirve para discriminar y evaluar la informacion, se basa en las siguientes preguntas:
Pregunta </p>
Que </br>
Donde </br>
Cuando </br>
Quien </br>
Como </br>
Cuanto </br>

<h4>finalidad que determina</h4>

el proposito</br>
el lugar</br>
el orden y el momento</br>
la persona responsable</br>
los medios</br>
la cantidad</br>

<h3>Evaluacion de los sistemas</h3>
Se debe evaluar la informacion obtenida en los sistemas para poder:</br>
Determinar el objetivo y compararlo con lo obtenido</br>
Buscar la interrelacion con otros sistemas</br>
Evaluar la secuencia y flujo de las interacciones</br></br></br>


<h3>Ponderacion de evaluacion por capitulo</h3>
<p> El capitulo es evaluado de acuerdo a las preguntas correspondientes y de acuerdo a la toma de desiciones se puede determinar si
el capitulo es acreditado o en su defecto no acredita.</p>
<p>
Una vez evaluados todos los capitulos se determina si la auditoria realizada acredita o no, la forma de determinarlo es evaluando los resultados de cada capitulo,
y asi poder entregar el dictamen final, que a su vez contendra informacion de la empresa auditora, la empresa auditada, el auditor responsable, fecha de inicio y final de la auditoria, asi como recomendacines y comentarios.</p>



<br> 
<?php
	echo"<input type=\"button\"class=\"boton\"value=\"REGRESAR\"onclick=\"window.location.href='index.html';\">";
	?>

	
</center>
</html>