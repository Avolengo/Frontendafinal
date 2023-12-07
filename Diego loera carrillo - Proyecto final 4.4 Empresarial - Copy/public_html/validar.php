<?php
$nombre=$_POST['nombre'];
$contra=$_POST['contra'];
session_start();
$_SESSION['nombre']=$nombre;

$conexion=mysqli_connect("localhost","root","","ghost", "3305");

$consulta="SELECT*FROM usuarios where nombre='$nombre' and contra='$contra'";
$resultado=mysqli_query($conexion,$consulta);

$filas=mysqli_num_rows($resultado);

if($filas){
    header("Location: index2.html");
}else{
    ?>
    <?php
    include("login.php");
    ?>
    <h1 class="bad"> ERROR EN LA AUTENTICACION</h1>
    <?php
}
mysqli_free_result($resultado);
mysqli_close($conexion);