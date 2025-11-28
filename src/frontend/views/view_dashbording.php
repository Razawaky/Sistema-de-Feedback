<?php
session_start();

// Verificação de sessão
if (!isset($_SESSION['perfil']) || $_SESSION['perfil'] !== "empresa") {
    header("Location: view_login.php");
    exit;
}

// Carrega os dados do painel a partir do model
require_once __DIR__ . "../../backend/model/dashbording.php";
$dados = obterDadosDoPainel();

// Dados recebidos do model
$mediaGeral = $dados['mediaGeral'];
$totalAvaliacoes = $dados['totalAvaliacoes'];
$totalDenuncias = $dados['totalDenuncias'];
$ultimasAvaliacoes = $dados['ultimasAvaliacoes'];
?>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Dashboard - Empresa</title>

    <script src="https://cdn.tailwindcss.com"></script>

    <style>
        body {
            background: #f3f4f6;
        }
    </style>
</head>

<body>

<!-- HEADER -->
<header class="bg-white shadow p-4 flex justify-between items-center">
    <h1 class="text-2xl font-semibold">Dashboard da Empresa</h1>
    
    <a href="logout.php" class="px-4 py-2 bg-red-600 text-white rounded-lg hover:bg-red-700 transition">
        Sair
    </a>
</header>

<!-- CONTEÚDO -->
<div class="max-w-6xl mx-auto mt-10">

    <!-- CARDS -->
    <div class="grid grid-cols-1 md:grid-cols-3 gap-6">

        <!-- Média Geral -->
        <div class="bg-white p-6 rounded-xl shadow border-l-4 border-indigo-600">
            <h2 class="text-lg font-semibold text-gray-700">Média Geral</h2>
            <p class="text-5xl font-bold text-indigo-600 mt-2">
                <?= $mediaGeral ?: "0.0" ?>
            </p>
        </div>

        <!-- Total Avaliações -->
        <div class="bg-white p-6 rounded-xl shadow border-l-4 border-green-600">
            <h2 class="text-lg font-semibold text-gray-700">Total de Avaliações</h2>
            <p class="text-5xl font-bold text-green-600 mt-2">
                <?= $totalAvaliacoes ?>
            </p>
        </div>

        <!-- Total Denúncias -->
        <div class="bg-white p-6 rounded-xl shadow border-l-4 border-red-600">
            <h2 class="text-lg font-semibold text-gray-700">Denúncias Recebidas</h2>
            <p class="text-5xl font-bold text-red-600 mt-2">
                <?= $totalDenuncias ?>
            </p>
        </div>

    </div>

    <!-- Últimas avaliações -->
    <div class="bg-white shadow rounded-xl p-6 mt-12">
        <h2 class="text-2xl font-semibold mb-6">Últimas Avaliações</h2>

        <?php if (empty($ultimasAvaliacoes)): ?>
            <p class="text-gray-500">Nenhuma avaliação encontrada.</p>

        <?php else: ?>
            <div class="divide-y">
                <?php foreach ($ultimasAvaliacoes as $av): ?>
                    <div class="py-4">
                        <p class="font-semibold text-gray-700">
                            Nota:
                            <span class="text-indigo-600"><?= $av['nota'] ?></span>
                        </p>

                        <p class="mt-1 text-gray-800">
                            <?= $av['comentario'] ?: "<i>Sem comentário</i>" ?>
                        </p>

                        <p class="mt-1 text-sm text-gray-500">
                            <?= $av['data'] ?> — <?= $av['avaliador'] ?>
                        </p>
                    </div>
                <?php endforeach; ?>
            </div>
        <?php endif; ?>

    </div>

</div>

</body>
</html>
