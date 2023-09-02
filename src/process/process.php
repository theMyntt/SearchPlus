<?php
if (isset($_GET['id']) && isset($_GET['datelcl'])) {
    $id = $_GET['id'];
    $datelcl = $_GET['datelcl'];

    if (preg_match('/^\d{4}\/\d{2}\/\d{2}$/', $datelcl)) {
        try {
            $host = 'localhost';
            $dbname = 'CDL';
            $user = 'root';
            $password = '';

            $db = new PDO("mysql:host=$host;dbname=$dbname", $user, $password); 

            $query = "UPDATE Integrantes SET Participacao = Participacao - 1, Ult_Part = :datelcl WHERE ID_Integrante = :id";
            $stmt = $db->prepare($query);
            $stmt->bindParam(':id', $id, PDO::PARAM_INT);
            $stmt->bindParam(':datelcl', $datelcl);

            if ($stmt->execute()) {
                echo "<p>Coluna atualizada com sucesso!</p>";
            } else {
                echo "<p>Erro ao atualizar a coluna.</p>";
            }
        } catch (PDOException $e) {
            echo "<p>Erro de conexão com o banco de dados: " . $e->getMessage() . "</p>";
        }
    } else {
        echo "<p>Formato de data inválido. Use o formato yyyy/mm/dd.</p>";
    }
} else {
    echo "<p>ID ou data não fornecidos.</p>";
}
?>

<style>
    * {
        font-family: "Segoe UI", sans-serif;
    }
</style>

<a href="../search.php">Ir para a tabela de Integrantes.</a>
