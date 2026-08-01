<?php

$ambiente = getenv('APP_ENV');

?>

<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <title>Projeto Final</title>
</head>

<body>

    <h1>Projeto Final Preparatório</h1>

    <p><strong>Ambiente:</strong> <?= $ambiente ?></p>

    <p>
        <a href="/api/docs">
            Documentação da API
        </a>
    </p>

    <p>
        Frontend rodando em um contêiner separado.
    </p>

</body>

</html>