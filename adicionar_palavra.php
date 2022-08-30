<?php

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
            <h1>Adicionar Vocabulário</h1>
            <?php
            if(isset($_SESSION['msg'])){
                echo $_SESSION['msg'];
                unset($_SESSION['msg']);
            }
            ?>
		<form method="POST" action="processa_add_palavra.php">
			<label class="labeltxt">Palavra</label>
			<input class="caixadetexto" type="text" name="nome" placeholder="Digite um novo vocabulário"><br><br>
			<input type="submit" value="Cadastrar" class="botao">
		</form>
        </div>
    </div>
</body>
</html>
