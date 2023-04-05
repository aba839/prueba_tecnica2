<?php
$hostname = "localhost:3306";
$user = "root";
$password = "root";
$db = "prueba3";
$connection = mysqli_connect($hostname , $user , $password);
mysqli_select_db ($connection, $db);
$sql = "SELECT alumno.nombre, alumno.apellido, empresas.nombre AS empresas FROM alumno
        INNER JOIN empresas ON alumno.empresa_asignada = id_empresas";

$resultado = mysqli_query($connection, $sql);

while ($fila = mysqli_fetch_assoc($resultado)) {
    echo $fila['nombre'] . ' ' . $fila['apellido'] . ' ----> ' . $fila['empresas'] . '<br>';
}

mysqli_close($connection);
?>