<?php
    include 'conecta.php';
    $id = filter_input(INPUT_GET, 'id', FILTER_SANITIZE_NUMBER_INT);
    $result_palavra = "DELETE FROM palavras_comuns WHERE id_palavra ='$id'";
    $resultado_palavra = mysqli_query($conexao, $result_palavra);
?>

    <script type="text/javascript">
        alert("Palavra deletada com suceso!");
        window.location.href = "palavras_comuns.php";
        
    </script> 
