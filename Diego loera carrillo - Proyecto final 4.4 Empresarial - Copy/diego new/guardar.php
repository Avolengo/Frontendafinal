<?php
include('conection.php'); //conexion db localhost
$nom = $_POST['nombre'];
$apellidos = $_POST['apellidos'];
$email = $_POST['email'];
$contra = $_POST['contra'];
$sql = "INSERT INTO usuarios (nombre,apellidos,email,contra) VALUES ('$nom','$apellidos','$email','$contra')";
$resultado = mysqli_query($conex, $sql);
if ($resultado) {
    ?> 
    <h3 class="ok">¡Te has registrado correctamente!</h3>
   <?php
} else {
    ?> 
    <h3 class="bad">¡Ups ha ocurrido un error!</h3>
   <?php
}
header("location: inicio sesion.html")
?>