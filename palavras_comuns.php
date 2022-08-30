<?php 
    include 'conecta.php';
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
            <h1>Palavras Comuns</h1>
            <a href="adicionar_palavra.php" class="botaoadicionar">Adicionar novo vocabulário</a>
            <div class="espaco">
            </div>
            <table>
                <tr>
                    <th>ID</th>
                    <th>Palavra Comum</th>
                    <th>Editar</th>
                    <th>Deletar</th>
                </tr>
                <?php
                    // consulta em SQL que será executada na base de dados
                    $sql = "SELECT * FROM `palavras_comuns`;";
                    

                    // armazena o resultado da consulta
                    $resultado = mysqli_query($conexao, $sql);
        
                    if (mysqli_num_rows($resultado) > 0) {
                        // saída de dados de cada linha da tabela
                        while($linha = mysqli_fetch_assoc($resultado)) {
                ?>
                <tr>
                    <td><?php echo $linha["id_palavra"]; ?></td>
                    <td><?php echo $linha["palavra"]; ?></td>
                    <td>
                        <?php echo 
                        "<a href='editar_palavra.php?id=
                        " . $linha['id_palavra'] . "'>" 
                        ?>
                        <img src="./img/edit.png" alt="">
                        <?php echo "</a>";?>
                    </td>
                    <td>
                        <?php echo 
                        "<a href='deletar_palavra.php?id=
                        " . $linha['id_palavra'] . "'>" 
                        ?>
                        <img src="./img/delete.png" alt="">
                        <?php echo "</a>";?>
                    </td>
                    <?php 
            
        }
        } else {
            echo "<p style=\"font-family: 'coolvetica'; color:red\">Nenhuma palavra adicionada no vocabulário Palavras Comuns!</p>";
        }
    
        
?>     
                </tr>
            </table>
        </div>
    </div>
</body>
</html>
"; 