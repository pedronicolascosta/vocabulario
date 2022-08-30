<?php
include "conecta.php";
$id = filter_input(INPUT_GET, 'id', FILTER_SANITIZE_NUMBER_INT);
$result_palavra = "SELECT * FROM palavras_comuns WHERE id_palavra = '$id' ";
$resultado_palavra = mysqli_query($conexao, $result_palavra);
$row_palavra = mysqli_fetch_assoc($resultado_palavra);

?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/estilo.css">
    <title>Vocabulário</title>
</head>
<body>
    <div class="container">
        <div class="box">
            <h1>Editar vocabulário "<?php echo $row_palavra['palavra'] ?>"</h1>
            <form method="POST" action="processa_edit_palavra.php">
			<input type="hidden" name="id" value="<?php echo $row_palavra['id_palavra']; ?>">
			
			<label class="labeltxt">Atualize a palavra: </label>
			<input class="caixadetexto" type="text" name="palavra" placeholder="Digite aqui" value="<?php echo $row_palavra['palavra']; ?>"><br><br>
		
			<input type="submit" value="Editar" class="botao">
		</form>
        </div>
    </div>
</body>
</html>
