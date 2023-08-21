<?php
try {
    $conn = new PDO("sqlite:../data/banco.db");

    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $query = "SELECT * FROM Integrantes";
    $result = pdo->query($query);

} catch (PDOException $e) {
    echo "Falha ao conectar ao banco de dados";
}
?>