<?php 
    include "conexion.inc.php"

?>
<html>
<link rel="stylesheet" href="css/styles.css"/>
  <!-- Fonts-style -->
<link rel="stylesheet" href="css/font-awesome.min.css"/>
<link rel="stylesheet" href="css/style.css"/>
<div class="col-md-4">
    <center><h1 class="intro-text">CONSULTA TUS NOTAS</h1>
<form method="POST" action="consultanotas.php">
    <div class="form-group">
        <label for="ci">Carnet de Identidad</label>
        <input type="text" name="ci" value="" placeholder="Ingrese su carnet..">
        <input type="submit" name="consulta" value="CONSULTAR" >
    </div>

</form>

</div>
</center>
<center><table border='1px'>

<tr>
    <td>NOMBRE</td>
    <td>SIGLA - MATERIA</td>
    <td>NOTA 1</td>
    <td>NOTA 2</td>
    <td>NOTA 3</td>
    <td>NOTA FINAL</td>
</tr>
<?php 
include ("conexion.inc.php");
if(isset($_POST['consulta'])){
    
    $ci = $_POST['ci'];
    $sql="select  p.nombrecompleto, i.sigla, i.nota1, i.nota2, i.nota3, i.notafinal  from inscripcion i inner JOIN persona p ON i.ciestudiante=p.ci WHERE i.ciestudiante = '".$ci."' ";

    $resultado = mysqli_query($con,$sql);
   
    while($fila = mysqli_fetch_array($resultado)){
    echo "<tr>";
        echo "<td>".$fila['nombrecompleto']."</td>";
        echo "<td>".$fila['sigla']."</td>";
        echo"<td>".$fila['nota1']."</td>";
        echo"<td>".$fila['nota2']."</td>";
        echo"<td>".$fila['nota3']."</td>";
        echo"<td>".$fila['notafinal']."</td>"; 
     echo " </tr>";
    }

}

?>

</table>
<span>o  <a href="index.php">Regresar</a></span>
</center>
</html>