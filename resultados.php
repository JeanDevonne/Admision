<?php
	$connect = mysqli_connect("127.0.0.1","root","admin123","admision");
	$listacarreras = mysqli_query($connect,"SELECT * FROM admision.especialidad ORDER BY especialidad_nombre;");
?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta charset="utf-8">
	<link rel="shortcut icon" href="imagenes/icono.png">
	<link rel="stylesheet" type="text/css" href="css/estilos2.css">
	<script src="js/script.js"></script>
</head>
<body>
	<div class="container">
		<div class="formulario">
			<form action="valida.php" method="post">
				<select name="select">
					<option value="00" selected>Selecciona tu carrera</option>
					<?php
					while ($carreras = mysqli_fetch_assoc($listacarreras)) {
						echo "<option value=".$carreras['idcarrera'].">".$carreras['especialidad_nombre']."</option>";
					}
					?>
				</select>
				<input type="submit" name="Enviar"/><br/>
			</form>
			<form action="personal.php" method="post">
				<input id="codigo" type="number" name="codigo" placeholder="código de postulante">
				<input type="submit" value="Enviar" onclick="validarNumero(document.getElementById('codigo'),'Codigo inválido')"/>
			</form>
		</div>
	</div>
</body>
</html>