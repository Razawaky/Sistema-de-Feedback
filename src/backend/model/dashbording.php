<?php

require_once __DIR__ . "../database/db.php";

function obterDadosDoPainel()
{
    // ----------------------------------------------------
    // 1. Conexão com o Banco
    // ----------------------------------------------------
    $db = new Database();
    $conn = $db->getConnection();

    $dados = [
        "mediaGeral"        => 0,
        "totalAvaliacoes"   => 0,
        "totalDenuncias"    => 0,
        "ultimasAvaliacoes" => []
    ];

    // ----------------------------------------------------
    // 2. MÉDIA GERAL DAS AVALIAÇÕES
    // ----------------------------------------------------
    $sql = "SELECT AVG(nota_estabelecimento) AS media FROM avaliacao WHERE avaliacao_aprovada = 1";
    $stmt = $conn->prepare($sql);
    $stmt->execute();

    $media = $stmt->fetch(PDO::FETCH_ASSOC)['media'];
    $dados["mediaGeral"] = $media ? round($media, 2) : 0;

    // ----------------------------------------------------
    // 3. TOTAL DE AVALIAÇÕES
    // ----------------------------------------------------
    $sql = "SELECT COUNT(*) AS total FROM avaliacao WHERE avaliacao_aprovada = 1";
    $stmt = $conn->prepare($sql);
    $stmt->execute();

    $dados["totalAvaliacoes"] = $stmt->fetch(PDO::FETCH_ASSOC)['total'];

    // ----------------------------------------------------
    // 4. TOTAL DE DENÚNCIAS
    // ----------------------------------------------------
    $sql = "SELECT COUNT(*) AS total FROM denuncia";
    $stmt = $conn->prepare($sql);
    $stmt->execute();

    $dados["totalDenuncias"] = $stmt->fetch(PDO::FETCH_ASSOC)['total'];

    // ----------------------------------------------------
    // 5. ÚLTIMAS AVALIAÇÕES
    // ----------------------------------------------------
    $sql = "
        SELECT 
            a.nota_estabelecimento AS nota,
            a.comentario AS comentario,
            a.data_avaliacao AS data,
            av.nome_avaliador AS avaliador
        FROM avaliacao a
        JOIN avaliador av ON av.id_avaliador = a.id_avaliador
        WHERE a.avaliacao_aprovada = 1
        ORDER BY a.data_avaliacao DESC
        LIMIT 10
    ";

    $stmt = $conn->prepare($sql);
    $stmt->execute();

    $dados["ultimasAvaliacoes"] = $stmt->fetchAll(PDO::FETCH_ASSOC);

    // ----------------------------------------------------
    // 6. Retorna os dados organizados
    // ----------------------------------------------------
    return $dados;
}
