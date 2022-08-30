<?php
include "conecta.php";

$palavra = filter_input(INPUT_POST, 'nome', FILTER_SANITIZE_STRING);


//echo "Nome: $nome <br>";
//echo "E-mail: $email <br>";

$result_palavra = "INSERT INTO palavras_comuns (palavra, created) VALUES ('$palavra', NOW())";
$resultado_palavra = mysqli_query($conexao, $result_palavra);

if(mysqli_insert_id($conexao)){
	$_SESSION['msg'] = "<p style='color:green;'>Palavra adicionada com sucesso!</p>";
	header("Location: palavras_comuns.php");
}else{
	$_SESSION['msg'] = "<p style='color:red;'>Palavra não foi adicionada com sucesso</p>";
	header("Location: cad_usuario.php");
}
