<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="css/css.css">

</head>
<body>
	<?php
			if (isset($_GET['errorLogIn'])){
			echo "<h1>Debes Loguearte para poder ingresar al sistema</h1>";
			}
		?>
	<div id="principal">
	<div id="cabecera">
	<div id="logo">
		<img src="imagenes/redes2.jpg" alt="logotipo" width="100px" height="100px" />
	</div>
	</div>
	<div id="lateral">
					<div id="menu">
						<ul>
							<li><a href="index.php">Regresar</a></li>
							<li><a href="index.php">Ingresar Registros</a></li>
						</ul>
					</div>
	</div>
	<div id="contenido">
	<iframe name ="cont" width="927px" height="700" scrolling="yes"></iframe>
	<!--Aqui debes colocar todo lo relacionado a tu tema -->			
	
	</div>	
	<div class="nofloat">
	</div>
	<div class="pie">
	<h2>Ingenio y Creacion en Movimiento</h2>
	</div>
	</div>
</body>
</html>