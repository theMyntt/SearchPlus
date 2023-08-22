<!DOCTYPE html>
<html>
<head>
    <title>Search+ | Procurar</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-width=1.0">
    <link rel="stylesheet" href="../css/style.css">
</head>
<body>
    <div id="wrapper">
        <header>
            <div class="nav">
                <h1><a href="../index.html">Search+</a></h1>
            </div>
        </header>
        <main>
            <h2>Todos os Resultados na tabela Integrantes:</h2>
            <br>
            <?php

                try {
                    $conn = new PDO("sqlite:../data/banco.db");

                    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

                    $query = "SELECT * FROM Integrantes";
                    $result = $conn->query($query);

                    if ($result->rowCount() >= 0) {
                        echo "<table>";
                        
                        $row = $result->fetch(PDO::FETCH_ASSOC);
                        echo "<tr>";
                        foreach ($row as $colName => $colValue) {
                            echo "<th>{$colName}</th>";
                        }
                        echo "</tr>";

                        do {
                            echo "<tr>";
                            foreach ($row as $colValue) {
                                echo "<td>{$colValue}</td>";
                            }
                            echo "</tr>";
                        } while ($row = $result->fetch(PDO::FETCH_ASSOC));

                        echo "</table>";
                    } else {
                        echo "<p>Nenhum resultado encontrado para a tabela Gestores.</p>";
                    }

                } catch (PDOException $e) {
                    echo "Falha ao conectar ao banco de dados";
                }
            ?> <br>
            <section>
                <button onclick="window.history.back();">Voltar</button>
            </section>
        </main>
    </div>
</body>
</html>
