<?php
include "conecta.php";

$id = filter_input(INPUT_POST, 'id', FILTER_SANITIZE_NUMBER_INT);
$palavra = filter_input(INPUT_POST, 'palavra', FILTER_SANITIZE_STRING);

//echo "Nome: $nome <br>";
//echo "E-mail: $email <br>";

$result_usuario = "UPDATE palavras_comuns SET id_palavra='$id', palavra='$palavra', modified=NOW() WHERE id_palavra='$id'";
$resultado_usuario = mysqli_query($conexao, $result_usuario);

if(mysqli_affected_rows($conexao)){
	$_SESSION['msg'] = "<p style='color:green;'>Palavra editada com sucesso!</p>";
	header("Location: palavras_comuns.php");
}else{
	$_SESSION['msg'] = "<p style='color:red;'>Palavra não foi editado com sucesso</p>";
	header("Location: editar.php?id=$id");
}
