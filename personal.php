<?php
	//Conexión a la BD
	$connect = mysqli_connect("127.0.0.1","root","admin123","admision");
	$cod_postulante = $_POST['codigo'];
	//Variable para almacenar el resultado de la primera tabla.
	$tabla1 = "
	<table class='bordered'>
		<tr>
			<th><p>CODIGO</p></th>
			<th colspan='2'><p>NOMBRES Y APELLIDOS</p></th>
		</tr>";
	//Variable para almacenar el resultado de la segunda tabla.
	$tabla2 = "
	<table class='bordered'>
	<tr>
		<th><p>CARRERA</p></th>
		<th><p>PUNTAJE</p></th>
		<th><p>PUESTO</p></th>
	</tr>";
	
	//Consulta a la base de datos y concatenación de las variables de tabla.
		if ($connect) {
			$resultado = mysqli_query($connect,"SELECT postulante.idpostulante, postulante.nombres, postulante.apellidos, postulante.imagen,postulante.especialidad_idcarrera, especialidad.especialidad_nombre, omr.puntaje FROM postulante INNER JOIN especialidad ON postulante.especialidad_idcarrera = especialidad.idcarrera INNER JOIN omr ON postulante.omr_idomr = omr.idomr WHERE idpostulante = ".$cod_postulante.";");

			while ($registro = mysqli_fetch_assoc($resultado)) {
				$tabla1 .= "<tr><td><p>".$registro['idpostulante']."</p></td>
						<td><p>".$registro['nombres']."</p><p>".$registro['apellidos']."</p></td>
						<td><p><img src='".$registro['imagen']."'></p></td></tr>";

						//Query para obtener array que ayuda a obtener el puesto
						$array = mysqli_query($connect,"SELECT postulante.idpostulante, postulante.nombres, postulante.apellidos, postulante.imagen, especialidad.especialidad_nombre, especialidad.numero_vacantes, omr.puntaje FROM postulante INNER JOIN especialidad ON postulante.especialidad_idcarrera = especialidad.idcarrera INNER JOIN omr ON postulante.omr_idomr = omr.idomr WHERE especialidad.idcarrera = ".$registro['especialidad_idcarrera']." ORDER BY omr.puntaje DESC;");
						//
						$contador = 0 ;
						while ($a = mysqli_fetch_assoc($array)) {
							$contador++;
							if ($cod_postulante == $a['idpostulante']) {
								$mensaje = "Ingresó";
								$puesto = $contador;
							}
						}

				$tabla2 .= "<tr><td><p>".$registro['especialidad_nombre']."</p></td>
						<td><p>".$registro['puntaje']."</p></td>
						<td><p>".$puesto."</p></td></tr>";
			}
		}
		else {
			printf('Error %d : %s.<br/>',mysqli_connect_errno(), mysqli_connect_errno());
		}

		$tabla1 .= "</table>";
		$tabla2 .= "</table>";


?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta charset="utf-8">
	<link rel="shortcut icon" href="imagenes/icono.png">
	<link rel="stylesheet" type="text/css" href="css/personal.css">
</head>
<body>
	<div>
		<?php echo $tabla1 ?>
		<?php echo $tabla2 ?>
	</div>
</body>
</html>