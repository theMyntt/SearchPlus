<?php
if (isset($_GET['id']) && isset($_GET['datelcl'])) {
    $id = $_GET['id'];
    $datelcl = $_GET['datelcl'];

    if (preg_match('/^\d{4}\/\d{2}\/\d{2}$/', $datelcl)) {
        try {
            $db = new PDO('sqlite:../../data/banco.db'); 

            $query = "UPDATE Integrantes SET Participacao = Participacao + 1, Ult_Part = :datelcl WHERE ID_Integrante = :id";
            $stmt = $db->prepare($query);
            $stmt->bindParam(':id', $id, PDO::PARAM_INT);
            $stmt->bindParam(':datelcl', $datelcl);

            if ($stmt->execute()) {
                echo "Coluna atualizada com sucesso!";
            } else {
                echo "Erro ao atualizar a coluna.";
            }
        } catch (PDOException $e) {
            echo "Erro de conexão com o banco de dados: " . $e->getMessage();
        }
    } else {
        echo "Formato de data inválido. Use o formato yyyy/mm/dd.";
    }
} else {
    echo "ID ou data não fornecidos.";
}
?>

<style>
    * {
        font-family: "Segoe UI", sans-serif;
    }
</style>