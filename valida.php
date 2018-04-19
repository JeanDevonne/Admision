<?php
	//Conexión a la BD
	$connect = mysqli_connect("127.0.0.1","root","admin123","admision");
	$cod_carrera = $_POST['select'];

	//Obtiene el nombre de la carrera seleccionada
	$nombre_carrera = mysqli_query($connect,"SELECT especialidad.especialidad_nombre, numero_vacantes FROM admision.especialidad where idcarrera = $cod_carrera");
	$nombre = mysqli_fetch_assoc($nombre_carrera);

	$tabla = "
	<table class='bordered'>
		<caption>".$nombre['especialidad_nombre']."</caption>
		<tr>
			<th>Código</th>
			<th>Nombre</th>
			<th>Apellidos</th>
			<th>Imagen</th>
			<th>Puntaje</th>
			<th>Estado</th>
			<th>Mérito</th>
		</tr>";
		if ($connect) {
			$resultado = mysqli_query($connect,"SELECT postulante.idpostulante, postulante.nombres, postulante.apellidos, postulante.imagen, especialidad.especialidad_nombre, especialidad.numero_vacantes, omr.puntaje FROM postulante INNER JOIN especialidad ON postulante.especialidad_idcarrera = especialidad.idcarrera INNER JOIN omr ON postulante.omr_idomr = omr.idomr WHERE especialidad.idcarrera = ".$cod_carrera." ORDER BY omr.puntaje DESC;");
			$merito = 0;
			$vacantes = 0;
			while ($registro = mysqli_fetch_assoc($resultado)) {
				$merito++;
				if ($merito <= $registro['numero_vacantes']) {
					$estado = "Ingreso";
				}
				else {
					$estado = "No Ingreso";
				}
				$tabla .= "<tr><td>".$registro['idpostulante']."</td>
						<td>".$registro['nombres']."</td>
						<td>".$registro['apellidos']."</td>
						<td><img src='".$registro['imagen']."'></td>
						<td>".$registro['puntaje']."</td>
						<td>".$estado."</td>
						<td>".$merito."</td></tr>";
			}
		}
		else {
			printf('Error %d : %s.<br/>',mysqli_connect_errno(), mysqli_connect_errno());
		}

		$tabla .= "</table>";

?>
<!DOCTYPE html>
<html>
<head>
	<title>Resultados por Carrera</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="shortcut icon" href="imagenes/icono.png">
</head>
<body>
	<?php
		echo $tabla;
	?>
	<p><a href="resultados.php">Volver</a></p>
</body>
</html>