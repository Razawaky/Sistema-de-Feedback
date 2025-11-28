-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 28/11/2025 às 17:16
-- Versão do servidor: 8.0.43-0ubuntu0.24.04.2
-- Versão do PHP: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `FeedbackEmpresas`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `acoes_moderacao`
--

CREATE TABLE `acoes_moderacao` (
  `id_acao` int NOT NULL,
  `id_sinalizacao` int NOT NULL,
  `id_moderador` int NOT NULL,
  `acao` enum('Removido','Advertência','Banimento','Nenhuma ação') COLLATE utf8mb4_general_ci NOT NULL,
  `data_acao` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `avaliacoes`
--

CREATE TABLE `avaliacoes` (
  `id_avaliacao` int NOT NULL,
  `id_usuario` int DEFAULT NULL,
  `ip_usuario` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `id_categoria` int NOT NULL,
  `id_empresa` int DEFAULT NULL,
  `conteudo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `nota` int DEFAULT NULL,
  `data_avaliacao` datetime DEFAULT CURRENT_TIMESTAMP,
  `anonima` tinyint(1) DEFAULT '0',
  `emoji` varchar(4) COLLATE utf8mb4_general_ci DEFAULT NULL
) ;

--
-- Despejando dados para a tabela `avaliacoes`
--

INSERT INTO `avaliacoes` (`id_avaliacao`, `id_usuario`, `ip_usuario`, `id_categoria`, `id_empresa`, `conteudo`, `nota`, `data_avaliacao`, `anonima`, `emoji`) VALUES
(18, 2, '12ca17b49af2289436f303e0166030a21e525d266e209267433801a8fd4071a0', 1, NULL, 'O serviço foi excepcional, desde o primeiro contato até a entrega final. Todos os funcionários foram muito atenciosos e demonstraram conhecimento técnico profundo. Recomendo a todos que buscam qualidade e eficiência.', 5, '2025-01-15 10:32:21', 0, NULL),
(19, 4, '12ca17b49af2289436f303e0166030a21e525d266e209267433801a8fd4071a0', 2, NULL, 'Infelizmente o produto demorou muito a chegar e quando chegou estava com pequenos defeitos. O atendimento ao cliente demorou a responder e não solucionou meu problema rapidamente, o que gerou frustração.', NULL, '2025-02-20 14:15:42', 0, '😠'),
(20, 5, '12ca17b49af2289436f303e0166030a21e525d266e209267433801a8fd4071a0', 1, NULL, 'Recebi o produto muito antes do esperado e tudo estava funcionando perfeitamente. A comunicação da equipe foi clara e objetiva, e eu me senti muito bem atendido durante todo o processo.', 5, '2025-03-12 09:47:11', 0, NULL),
(21, 6, '12ca17b49af2289436f303e0166030a21e525d266e209267433801a8fd4071a0', 3, NULL, 'O serviço prestado não atendeu minhas expectativas. O suporte demorou a responder e a solução apresentada não resolveu meu problema. Esperava mais atenção e eficiência.', NULL, '2025-04-01 18:32:55', 0, '😐'),
(22, 9, '12ca17b49af2289436f303e0166030a21e525d266e209267433801a8fd4071a0', 2, NULL, 'Tudo funcionou de maneira muito satisfatória. Desde a compra até o recebimento do produto, percebi cuidado e atenção aos detalhes. Fiquei impressionado com a rapidez e a qualidade do atendimento.', 5, '2025-05-05 11:20:43', 0, NULL),
(23, 10, '12ca17b49af2289436f303e0166030a21e525d266e209267433801a8fd4071a0', 1, NULL, 'O produto chegou com falhas e não correspondeu à descrição. Tentei contato diversas vezes e não obtive resposta imediata. Fiquei bastante desapontado com a experiência.', NULL, '2025-06-18 13:55:29', 0, '😠'),
(24, 11, '12ca17b49af2289436f303e0166030a21e525d266e209267433801a8fd4071a0', 3, NULL, 'Gostei muito da experiência de compra. O suporte foi muito prestativo, esclareceu todas as minhas dúvidas e me ajudou a escolher a melhor opção. Produto de ótima qualidade e entrega dentro do prazo.', 5, '2025-07-02 15:42:10', 0, NULL),
(25, 12, '12ca17b49af2289436f303e0166030a21e525d266e209267433801a8fd4071a0', 2, NULL, NULL, NULL, '2025-08-11 09:12:34', 0, '😊'),
(26, 13, '12ca17b49af2289436f303e0166030a21e525d266e209267433801a8fd4071a0', 1, NULL, 'O produto chegou no prazo e em ótimo estado. Fiquei satisfeito com a forma como tudo foi organizado e com a comunicação clara durante o processo de compra. Recomendo sem dúvidas.', 5, '2025-09-23 17:25:50', 0, NULL),
(27, 14, '12ca17b49af2289436f303e0166030a21e525d266e209267433801a8fd4071a0', 2, NULL, 'O atendimento foi bom, mas tive alguns problemas com a entrega que demorou mais do que o esperado. Precisa melhorar a logística e o acompanhamento das entregas.', NULL, '2025-10-05 12:48:21', 0, '😐'),
(28, 15, '12ca17b49af2289436f303e0166030a21e525d266e209267433801a8fd4071a0', 3, NULL, 'Produto de excelente qualidade, muito bem embalado e entregue rapidamente. A experiência de compra foi muito satisfatória, recomendo para quem busca confiança e bom atendimento.', 5, '2025-11-19 14:33:12', 0, NULL),
(29, 16, '12ca17b49af2289436f303e0166030a21e525d266e209267433801a8fd4071a0', 1, NULL, 'A equipe demorou a responder minhas dúvidas e o produto não correspondeu às minhas expectativas. Infelizmente, a experiência foi frustrante e deixo como crítica construtiva.', NULL, '2025-12-08 16:05:47', 0, '😐'),
(30, 18, '12ca17b49af2289436f303e0166030a21e525d266e209267433801a8fd4071a0', 2, NULL, 'Tudo ocorreu perfeitamente, o produto era exatamente como descrito, a entrega foi rápida e o atendimento foi impecável. Fiquei muito satisfeito e pretendo comprar novamente.', 5, '2025-03-15 10:15:29', 0, NULL),
(31, 19, '12ca17b49af2289436f303e0166030a21e525d266e209267433801a8fd4071a0', 3, NULL, 'Produto chegou com problemas, tive dificuldade para contactar o suporte e a solução demorou a aparecer. Uma experiência frustrante que precisa ser melhorada.', NULL, '2025-04-21 13:42:12', 0, '😠'),
(32, 20, '12ca17b49af2289436f303e0166030a21e525d266e209267433801a8fd4071a0', 1, NULL, NULL, 4, '2025-05-18 15:55:33', 0, NULL),
(33, 21, '12ca17b49af2289436f303e0166030a21e525d266e209267433801a8fd4071a0', 2, NULL, 'Gostei muito da atenção da equipe e da qualidade do produto. Tudo dentro do esperado, muito satisfeito com a experiência.', 5, '2025-06-10 10:20:44', 0, NULL),
(34, 22, '12ca17b49af2289436f303e0166030a21e525d266e209267433801a8fd4071a0', 3, NULL, 'Entrega atrasou, produto chegou parcialmente danificado e o suporte demorou a responder. Não fiquei satisfeito.', NULL, '2025-07-15 17:05:12', 0, '😠'),
(35, 23, '12ca17b49af2289436f303e0166030a21e525d266e209267433801a8fd4071a0', 1, NULL, 'Excelente atendimento, equipe muito simpática e atenciosa. Produto chegou rápido e em perfeito estado. Recomendo fortemente.', 5, '2025-08-23 11:48:55', 0, NULL),
(36, 24, '12ca17b49af2289436f303e0166030a21e525d266e209267433801a8fd4071a0', 2, NULL, NULL, NULL, '2025-09-10 09:55:21', 0, '😊'),
(37, 25, '12ca17b49af2289436f303e0166030a21e525d266e209267433801a8fd4071a0', 3, NULL, 'Produto chegou antes do prazo, muito bem embalado e funcionando corretamente. Experiência excelente.', 5, '2025-10-05 16:32:33', 0, NULL),
(38, 26, '12ca17b49af2289436f303e0166030a21e525d266e209267433801a8fd4071a0', 1, NULL, 'Não gostei da experiência, demorou muito e o suporte não foi eficaz. Esperava mais.', NULL, '2025-11-12 14:12:22', 0, '😐'),
(39, 27, '12ca17b49af2289436f303e0166030a21e525d266e209267433801a8fd4071a0', 2, NULL, 'Tudo certo com a compra, produto de qualidade e entrega rápida. Fiquei muito satisfeito.', 5, '2025-12-01 12:55:44', 0, NULL),
(40, 28, '12ca17b49af2289436f303e0166030a21e525d266e209267433801a8fd4071a0', 3, NULL, 'Produto danificado na entrega, equipe demorou a resolver e não fiquei satisfeito com o atendimento.', NULL, '2025-01-29 15:44:33', 0, '😠'),
(41, 29, '12ca17b49af2289436f303e0166030a21e525d266e209267433801a8fd4071a0', 1, NULL, NULL, NULL, '2025-02-18 11:30:22', 0, '😃'),
(42, 31, '12ca17b49af2289436f303e0166030a21e525d266e209267433801a8fd4071a0', 2, NULL, 'Produto muito bom, entrega rápida, equipe prestativa e ótima experiência de compra.', 5, '2025-03-05 14:12:11', 0, NULL),
(43, 32, '12ca17b49af2289436f303e0166030a21e525d266e209267433801a8fd4071a0', 3, NULL, 'Não fiquei satisfeito, produto chegou com defeito e suporte demorou.', NULL, '2025-04-20 09:55:33', 0, '😠'),
(44, 33, '12ca17b49af2289436f303e0166030a21e525d266e209267433801a8fd4071a0', 1, NULL, 'Muito bom, recomendo fortemente a todos que desejam qualidade e bom atendimento.', 5, '2025-05-15 16:20:44', 0, NULL),
(45, 34, '12ca17b49af2289436f303e0166030a21e525d266e209267433801a8fd4071a0', 2, NULL, NULL, NULL, '2025-06-12 11:32:12', 0, '😃'),
(46, 35, '12ca17b49af2289436f303e0166030a21e525d266e209267433801a8fd4071a0', 3, NULL, 'Produto excelente, atendimento rápido e equipe muito simpática.', 5, '2025-07-05 14:55:33', 0, NULL),
(47, 36, '12ca17b49af2289436f303e0166030a21e525d266e209267433801a8fd4071a0', 1, NULL, 'Demorou muito para entregar e o suporte não respondeu rápido. Decepcionante.', NULL, '2025-08-23 12:22:11', 0, '😠'),
(50, 47, '12ca17b49af2289436f303e0166030a21e525d266e209267433801a8fd4071a0', 4, NULL, 'O ambiente de restaurante, está parecendo mais um chiqueiro, nunca vi igual.... Péssimo.', 1, '2025-10-25 21:22:41', 0, NULL),
(51, 4, '12ca17b49af2289436f303e0166030a21e525d266e209267433801a8fd4071a0', 3, NULL, 'Ai que lugar maravilhoso, sério, e com preços esplêndidos! Vale muito a pena galera, de verdade! Estou estupefado com tantas melhorias!', NULL, '2025-10-25 21:25:01', 0, '😍'),
(52, 4, '12ca17b49af2289436f303e0166030a21e525d266e209267433801a8fd4071a0', 4, NULL, 'abulele', NULL, '2025-10-25 21:46:45', 0, '😠'),
(53, 4, '12ca17b49af2289436f303e0166030a21e525d266e209267433801a8fd4071a0', 1, NULL, 'bleble', 3, '2025-10-25 21:47:10', 0, NULL),
(55, 47, '12ca17b49af2289436f303e0166030a21e525d266e209267433801a8fd4071a0', 4, NULL, 'muito quente', 1, '2025-10-26 13:30:43', 0, NULL),
(56, 47, '12ca17b49af2289436f303e0166030a21e525d266e209267433801a8fd4071a0', 2, NULL, 'ruim >:c', NULL, '2025-10-28 15:23:37', 0, '😠'),
(59, NULL, '12ca17b49af2289436f303e0166030a21e525d266e209267433801a8fd4071a0', 4, NULL, 'lsasndkasjdhajsaskd', 3, '2025-10-31 16:00:00', 1, NULL),
(60, 57, '12ca17b49af2289436f303e0166030a21e525d266e209267433801a8fd4071a0', 4, 36, 'p', 1, '2025-11-28 13:11:49', 0, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `categorias_avaliacao`
--

CREATE TABLE `categorias_avaliacao` (
  `id_categoria` int NOT NULL,
  `nome_categoria` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `categorias_avaliacao`
--

INSERT INTO `categorias_avaliacao` (`id_categoria`, `nome_categoria`) VALUES
(1, 'Atendimento'),
(2, 'Qualidade do serviço'),
(3, 'Preço'),
(4, 'Ambiente'),
(5, 'Outros');

-- --------------------------------------------------------

--
-- Estrutura para tabela `config_selos`
--

CREATE TABLE `config_selos` (
  `id_config` int NOT NULL,
  `id_selo` int NOT NULL,
  `regra` text COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `credenciais`
--

CREATE TABLE `credenciais` (
  `id_credencial` int NOT NULL,
  `id_usuario` int NOT NULL,
  `senha_hash` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `ultimo_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `credenciais`
--

INSERT INTO `credenciais` (`id_credencial`, `id_usuario`, `senha_hash`, `ultimo_login`) VALUES
(2, 2, '$2y$10$PxonKzM7bj8P9fjbJTwME.3yunFHNg4Vl.SZKh3RGmjG8xg2GYgi6', '2025-09-12 14:02:39'),
(3, 4, '$2y$10$9VaDBj8KZE5TVtrZojaUWubOwA9I7sozN0KKkdaZmxXTtOjgO/RNC', '2025-10-25 21:30:23'),
(4, 5, '$2y$10$bUk9R23C5OXcL6X3MosLqOUPyJxji2NuBcS5ZM4J0F1LMG2Kk/03y', '2025-09-06 15:10:41'),
(5, 6, '$2y$10$8u8FEsV5I0VMlk3Wl4TlI.IwgpHIRb6l.LwzMm/SraMrBli3UI5oC', NULL),
(6, 9, '$2y$10$3euMIveaIxwS9otc8yLA8..hVrIPQD9ZbIEJvxyXDZMFx1EzMcVk6', NULL),
(7, 10, '$2y$10$pXI2OzNDXySR38hu2Hq3su900hWt/pP680gGLVEaBdmhOS3PLWVHG', NULL),
(8, 11, '$2y$10$B3hntXjhNuepubIIOZgOEO5PbsireQp2/YOZlq5MQtOAs/3h.muhS', NULL),
(9, 12, '$2y$10$kDBFZNLT4rx//wW/oD8pe.lwVRksJYtzC139QIascoH0/4WjadZF2', NULL),
(10, 13, '$2y$10$BxgRmjp5uWuXfsKlsG6fP.Es5OwRyY1y2/y5Fa/5e5JHqY2l9SetO', NULL),
(11, 14, '$2y$10$aF1fm4xYOzycPNBPwlG3HOihGR5Ftg/9PfMWO6rGlYx22HiciMNQa', NULL),
(12, 15, '$2y$10$3MaNKXSZDMQvAqJ.KZQABuxnViE2KfKutydxgxgoUTZKm0xAMRZg.', '2025-09-18 12:11:01'),
(13, 16, '$2y$10$JJciT3nAL9YX5loXEbuygu8MLLjefAt5rYyOQLyhD4Ffp82EerQx6', NULL),
(14, 18, '$2y$10$VeiHNqHOvzAY6OR0C/V1.u88/hsWWaGiGkDlxKYChdP0MLxtsv0R2', NULL),
(15, 19, '$2y$10$jWYLXk0meEV4IM49ZMtE6.Z0.RXm7qDAsdDgRl10CbWTfwslbYhwC', NULL),
(16, 20, '$2y$10$Eg5Q6BWpZyE7ksh/he3guuVBL7GB5UeH.iLJZFFFBRd2GzVCu6sqy', NULL),
(17, 21, '$2y$10$c38aVG968Ia60NBCDMqsZenZfiHv7eiYcYlHB5J8Fl1.wWE4lawh2', NULL),
(18, 22, '$2y$10$5WJorM/umZNSdO69bw85Q.41EfosEXoTW59fDO2Sl3IRKh.reXExm', NULL),
(19, 23, '$2y$10$/cGnPgTFdzYUgFTIq0TeBu2NPp7/bnF/ET.qyDFfMaEObR8BdCAwi', NULL),
(20, 24, '$2y$10$6aBiQKMw24hI4AqVBAw1f.6Jo3pa9VU0NwbGs9.Ygp8CUYLK4M0ii', NULL),
(21, 25, '$2y$10$nGrp48R7.HrDgis42BX.0es.nT92KaKtVLJbVtCom1HlCsuI/HF0i', NULL),
(22, 26, '$2y$10$eQhgtSlhgpk3HzKBszUlxe6IhzbjWLmcF3qHmfuQlf5D4fs6N90tS', NULL),
(23, 27, '$2y$10$xvw6WatHHJiulBUorpSDVO5FSrR8wMoOipDyw.MEXn0lxTH2I9HG2', NULL),
(24, 28, '$2y$10$.eyo/DAz3VguJHSVSWHIT.xlu3Q/E5QambQEnGbAK1tnb.yzQoaQ6', NULL),
(25, 29, '$2y$10$mETIwFe3YZQpNntwmfq2ier2YEoenLh1LKVbv0adaFzZ29zQb.jhW', NULL),
(26, 31, '$2y$10$twf2oJ00HD132k4ppFf.TuIy2rdyoutvbBlROKNpMeZr1yVgq1XSC', NULL),
(27, 32, '$2y$10$v0dGVZoZJZTg7xe0SM1Txe/9TS0kr.rS/nRTt7WHSmvomdZh7Cir.', NULL),
(28, 33, '$2y$10$WvK8cSN72RnV8rGyvzACJ.kbntC/l8LbO4L.0gDYA5H6/8E3n1tky', NULL),
(29, 34, '$2y$10$CaEyRL0gp8DppltDbI0mqOUVrLeah7DKnHKnsCOQrsXzirki0FBym', '2025-09-18 22:32:19'),
(30, 35, '$2y$10$0S0pmoqhNGyDHmR1squpZuinKtFOlF1BqYkcgBLwk3pWDiQzk8cVO', NULL),
(31, 36, '$2y$10$YgDrnvDAAnARmAZaj0b56etr348q9xXfTTl/Ty3ax7vKJAYE5w4dO', NULL),
(32, 37, '$2y$10$78hGKb1BENExFB40zsVgK.RUfESkljhXiffQgEBzkeg9uuThqScJe', NULL),
(33, 38, '$2y$10$GqaRXv0tvfTcUIqWDN1pDuWM3Xn5SNy9kH12fjJYbJXrdnEA2ZOva', NULL),
(34, 39, '$2y$10$3ywecFo0wHI9Eqdx1lvdPe9W0k3.M7sHCPjbTk29OKr2MyxH3Q9XO', NULL),
(35, 40, '$2y$10$o1LHi0oyepqRNKs09wTRYuGSFASMuieUliLI7SBmtEwKnbC2uZV.m', NULL),
(36, 41, '$2y$10$6.Bihx4sQYNtBbONhIWV0.3lJqMISROSvAOfDbT9bWdR209DXaCjC', NULL),
(37, 42, '$2y$10$QA6a3.MjI9OKodCgzzrZKesb69B5HAOKqPig6H2rDD27AC6JuY5VC', NULL),
(38, 45, '$2y$10$rVKtAQc.hsfeIwMcuqTaX.zMiSGgGiziqFxh10BYq2xeSAYH1jyP6', NULL),
(39, 46, '$2y$10$T5NG.MYgRuzLA/LCsrolwugTMhas58tXBz47mnBJr7BCw8t0vgT22', NULL),
(40, 47, '$2y$10$8Oambm9Ti249NsUBQHmnaecsWYc0hjgTUyhLXAmaESpBFDGyDzTaO', '2025-10-31 16:00:26'),
(41, 48, '$2y$10$jvyzyQxH1BLFskcBPyvfguEIvAvW7DGfFEicfhvVReciVOhyUjMhu', NULL),
(42, 54, '$2y$10$eKI9rumD6Z9KeNCRnLbpzu0HHnwQmqu9/wYnZnryuDVQpn/2SNuY2', '2025-10-17 14:10:07'),
(43, 55, '$2y$10$G83xIZvYj.wVSJ1nABj8YeY8uVzGh2XcxsLuzk.YEAtzm56R28jY2', '2025-10-22 15:39:58'),
(44, 56, '$2y$10$ga33Kohp4PE/SZk74TJ.9.yulJ/VQnZ5puMsy1zplGKbTcTCKA/wO', '2025-10-31 16:21:05'),
(45, 57, '$2y$10$/ghKXO8hrevgIQ8Hee9v4uf6m6/cK1cDNYNPS1PVlWTUGYE5pYYRm', '2025-11-28 13:11:35'),
(46, 58, '$2y$10$QZ76Q1qbOMmXE5fhmZQDE.IuM1LXtECBF42JpkU/Jzgk1cV7Wwqpm', '2025-11-28 14:16:04');

-- --------------------------------------------------------

--
-- Estrutura para tabela `dados_grafico`
--

CREATE TABLE `dados_grafico` (
  `id_dado` int NOT NULL,
  `id_relatorio` int NOT NULL,
  `chave` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `denuncias`
--

CREATE TABLE `denuncias` (
  `id_denuncia` int NOT NULL,
  `id_avaliacao` int NOT NULL,
  `id_denunciante` int NOT NULL,
  `motivo` text COLLATE utf8mb4_general_ci,
  `data_denuncia` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` enum('pendente','analisada') COLLATE utf8mb4_general_ci DEFAULT 'pendente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `denuncias`
--

INSERT INTO `denuncias` (`id_denuncia`, `id_avaliacao`, `id_denunciante`, `motivo`, `data_denuncia`, `status`) VALUES
(1, 19, 4, 'Conteúdo ofensivo', '2025-02-21 10:15:32', 'pendente'),
(2, 21, 4, 'Spam ou propaganda', '2025-04-02 12:42:11', 'analisada'),
(3, 23, 4, 'Conteúdo inapropriado', '2025-06-19 09:35:50', 'pendente'),
(4, 25, 4, 'Não condiz com a avaliação', '2025-08-12 15:22:44', 'analisada'),
(5, 28, 4, 'Informações falsas', '2025-11-20 11:10:33', 'pendente'),
(6, 30, 4, 'Ofensa pessoal', '2025-03-16 14:42:21', 'pendente'),
(7, 33, 47, 'Conteúdo ofensivo', '2025-06-11 10:55:12', 'pendente'),
(8, 36, 47, 'Spam ou propaganda', '2025-09-11 09:20:44', 'analisada'),
(9, 40, 47, 'Não condiz com a avaliação', '2025-02-01 16:45:33', 'pendente'),
(10, 43, 47, 'Informações falsas', '2025-04-21 13:12:55', 'analisada'),
(11, 32, 47, 'fala né djabo', '2025-10-28 15:24:12', 'pendente'),
(12, 29, 47, 'nao concordo', '2025-10-31 16:01:43', 'pendente');

-- --------------------------------------------------------

--
-- Estrutura para tabela `feedback_respostas`
--

CREATE TABLE `feedback_respostas` (
  `id_feedback` int NOT NULL,
  `id_avaliacao` int NOT NULL,
  `id_usuario` int NOT NULL,
  `id_tipo` int NOT NULL,
  `comentario` text COLLATE utf8mb4_general_ci,
  `data_feedback` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `flags_proibidas`
--

CREATE TABLE `flags_proibidas` (
  `id_flag` int NOT NULL,
  `descricao` varchar(150) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `historico_avaliacoes`
--

CREATE TABLE `historico_avaliacoes` (
  `id_historico` int NOT NULL,
  `id_avaliacao` int NOT NULL,
  `id_usuario` int NOT NULL,
  `acao` enum('Criada','Editada','Removida','Restaurada') COLLATE utf8mb4_general_ci NOT NULL,
  `data_historico` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `historico_verificacao`
--

CREATE TABLE `historico_verificacao` (
  `id_historico` int NOT NULL,
  `id_usuario` int NOT NULL,
  `id_solicitacao` int NOT NULL,
  `resultado` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `data_historico` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `log_moderacao`
--

CREATE TABLE `log_moderacao` (
  `id_log` int NOT NULL,
  `id_acao` int NOT NULL,
  `detalhes` text COLLATE utf8mb4_general_ci,
  `data_log` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `log_sistema`
--

CREATE TABLE `log_sistema` (
  `id_log` int NOT NULL,
  `id_usuario` int DEFAULT NULL,
  `evento` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `data_log` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `metricas`
--

CREATE TABLE `metricas` (
  `id_metrica` int NOT NULL,
  `id_usuario` int DEFAULT NULL,
  `nome` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `data_metrica` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `notificacoes_empresas`
--

CREATE TABLE `notificacoes_empresas` (
  `id_notificacao` int NOT NULL,
  `id_resposta_empresa` int DEFAULT NULL,
  `mensagem` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lida` enum('Sim','Não') COLLATE utf8mb4_general_ci DEFAULT 'Não',
  `data_notificacao` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `perfis_usuario`
--

CREATE TABLE `perfis_usuario` (
  `id_perfil` int NOT NULL,
  `id_usuario` int NOT NULL,
  `bio` text COLLATE utf8mb4_general_ci,
  `foto_perfil` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `relatorios`
--

CREATE TABLE `relatorios` (
  `id_relatorio` int NOT NULL,
  `id_usuario` int NOT NULL,
  `titulo` varchar(150) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `data_relatorio` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `respostas_empresas`
--

CREATE TABLE `respostas_empresas` (
  `id_resposta_empresa` int NOT NULL,
  `id_avaliacao` int NOT NULL,
  `resposta` text COLLATE utf8mb4_general_ci NOT NULL,
  `data_resposta` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `selos`
--

CREATE TABLE `selos` (
  `id_selo` int NOT NULL,
  `nome` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `descricao` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `selos_usuario`
--

CREATE TABLE `selos_usuario` (
  `id_selo_usuario` int NOT NULL,
  `id_selo` int NOT NULL,
  `id_usuario` int NOT NULL,
  `data_concessao` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sessoes`
--

CREATE TABLE `sessoes` (
  `id_sessao` int NOT NULL,
  `id_usuario` int NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `expiracao` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `sessoes`
--

INSERT INTO `sessoes` (`id_sessao`, `id_usuario`, `token`, `expiracao`) VALUES
(3, 2, '44e9d1252128e2e86b23f0900a7c358a85e5ed71430d11cc7563be358f13d838', '2025-09-06 14:49:46'),
(5, 4, 'b47f8537e2adb56f1d0633d20d949cf684a0f54682daae66ead65e5363e43e44', '2025-09-06 14:50:49'),
(7, 5, '3ed1f140f97c462c915f3c56c19a9a4026c3dea77cf66ba3e979afef63ca1f53', '2025-09-06 14:51:51'),
(21, 4, '2f612704117828ab8a64274c67aa8a5320526ed75498a6e6537ae01368cc866b', '2025-09-12 13:42:46'),
(23, 6, '7ab2f9f695376b6763697e9d6fc0d22995d95692647d3099ad482563c20cd4dd', '2025-09-18 12:19:40'),
(24, 9, '627e76c88d31a21ef3b08d1954a3840fa26e0d2b1198d500fca0d9c538e3e229', '2025-09-18 12:22:01'),
(25, 10, '1d3637d92a586e8e9cbf5333f311e4c119fda315a02e684c7e666b6fe34cd21f', '2025-09-18 12:23:08'),
(26, 11, 'eadf008a8e2684b22255af2317640365c1a16298ce07b31e11d9032baf08dc14', '2025-09-18 12:30:06'),
(27, 12, '5ff659c1e78067699a72eb0607afc935ca38aa7bd3728632adc70139a5a62400', '2025-09-18 12:33:17'),
(28, 13, '3de40562bb9af5bda120ab6101afbec3c26bb4d2425b3a2f83ba8c758471b592', '2025-09-18 12:36:14'),
(29, 14, '4377ed0419fa7946859f06eca3343c174c8b10c53e3bf8d3aa4f746b4a5122a1', '2025-09-18 12:38:12'),
(30, 15, 'c1aaf3e3809192603e9974216fee8286a4740b886eddb29652b3881e94fc7385', '2025-09-18 12:40:14'),
(32, 16, 'b530376ce8eaa953409ed6899e101481860e47072c1930f43bb4a3c1c552cbb6', '2025-09-18 13:45:43'),
(33, 18, '756aa1eb8fb29bba9d0876b0edebbf05a2be676add9c65393650be0e4228367e', '2025-09-18 14:01:52'),
(34, 19, '3512e0750494ddb3ef64b1c6847ade0715799edf8c063e3ec06f1b7b4cdf07af', '2025-09-18 14:02:37'),
(35, 20, 'fedf10da0af0b9331feb8df0c500dc7dc9639ee6953d6255c21e03e0370e482f', '2025-09-18 14:05:18'),
(36, 21, 'fd9b12bdae7f35f8f94d9885ae39eb028f2beb62ead5858b5781837ea4b2b5b4', '2025-09-18 14:09:05'),
(37, 22, '9ff7cf7191eefe2bfe27ef3a6acbb628e3ae1c0b6b651e9055d9cd27267f2bac', '2025-09-18 14:09:47'),
(38, 23, 'db515f26f90fb165e30b146c912582ed42ff58e1636a3ac203085425e1fafdcf', '2025-09-18 14:10:22'),
(39, 24, 'f5bf4dd12af853fd7d9009f35c19a837020d9a1c222d9bb9cbb5fc12cc2c70e4', '2025-09-18 14:13:16'),
(40, 25, '917de5f7871323eb5f341d0d6d51d08e77c5f49541dc3315cff013d49c4dace3', '2025-09-18 14:15:05'),
(41, 26, '5d2663bf2c1fa74bb531eaa62960e265cb99947eecf0b44997c50372684384d3', '2025-09-18 14:15:58'),
(42, 27, 'fb43f1394324c45671cbe617c3d2d1c86fd1a32ca109b5704f919b6eb1ff769a', '2025-09-18 14:18:15'),
(44, 4, '3ddf3911332e970f8fd0939930794fdd9fb2a6adf3002f65107b63ea9be52f53', '2025-09-18 17:08:46'),
(45, 4, '217c03e253ee27fa99a4cf0ff22c85e41e69d6fb43ea5f08718fb4a83e558705', '2025-09-18 18:02:50'),
(46, 4, 'ddbf0291ef4a64ae43da14a7ac40bdaf442c5b90321fcb5b1c2a7998757c80bd', '2025-09-18 18:05:33'),
(47, 4, 'b2aa5d99cb8404fe44747cb3fbee9fe91a02a0de89a461ca7bfef28464104d0b', '2025-09-18 18:05:33'),
(48, 28, '3151bc07e42d1634f0d3c112d477e718a3c6496c4577c4032bb35af6ef79b918', '2025-09-18 19:10:03'),
(49, 29, '121378fe2b7f7d02ae06e8c451d1e65856f34378481c5b33e509d2956c7af075', '2025-09-18 19:11:11'),
(50, 31, '987141c7c545ff494886c941a999139a2451e6ccb732592cc37ee665859ae069', '2025-09-18 19:13:52'),
(51, 32, 'b712a404f5371c827b6b88e05a59765f56fb4e3f40afc275a59227e012cc2898', '2025-09-18 19:14:16'),
(53, 33, 'fe7a19effb036652c1cfcf6a1c3426c21bb256caf519f8185fa9ae38fcac87b5', '2025-09-18 22:58:05'),
(54, 34, '868493df6d40828b445d294879568bb6be5b997421fe484b4190877c1e02e118', '2025-09-18 23:02:03'),
(56, 35, '3ca778153cf4f854e9bf3b72d707bb1388e2b072b0d46dcbf22230d4bee94e1c', '2025-09-18 23:07:29'),
(57, 36, '47914046369bf5665931e29c27ed114c46543208da4dbc0e029eb212c54b32e8', '2025-09-18 23:11:03'),
(58, 37, '89e85848bf9c27751d3a24859071927d2f09c67fd68650be780fe024dbdd9bc7', '2025-09-18 23:13:59'),
(59, 38, '7c52bd383f1b1c4148aa00574de674150e54e2073d0988ba372a89f489f36774', '2025-09-18 23:19:15'),
(60, 39, '83f11c5f7559efee1cfceee5117f4a3cae5cf10c10b503de9cbf73794454d149', '2025-09-18 23:24:07'),
(61, 40, 'f148888b9898ffda5ace0cf54ab983461597e11665bdeedbdfcd27dc6fdcdbf8', '2025-09-18 23:25:22'),
(62, 41, '9260dc09a5c558c5001ce835d491fe651dda3755acdaab6f6cc961efbfa88373', '2025-09-30 14:57:01'),
(63, 42, '16e816a2e3e5c436ec460401e89083129916c0439d57433b64be8e90ae7d12a3', '2025-10-10 15:13:55'),
(64, 45, 'e46ca9443fddbe02fb8571071d2ffcf49ef6da00acbf83afb6aed56a2a393f90', '2025-10-10 15:15:58'),
(65, 46, '769267314387041c94a06d04a33498aa1b6c509b3757305f5877639f5b39a4f9', '2025-10-10 15:20:01'),
(66, 47, 'bb77ec70c28f6f205a3781d8ecc0069ecadd0305e667103c534c5ad7b7f55d09', '2025-10-14 19:16:36'),
(68, 48, 'e31b9a5983c1a13060f9d5ead705d9c508daea021a2af5a78f3e9753843116a3', '2025-10-17 14:33:27'),
(69, 54, '8118f0368c08143567307c93a9ea449d785042acc26418c6944aaf097daae8c4', '2025-10-17 14:39:02'),
(72, 55, '4ff338aadc31567b7521ebdf4962fda13e39287777ccf2db0da2010fa8a93553', '2025-10-22 16:09:42'),
(76, 47, 'fbecac00b13a5fa2f9418e428853a0390cd8251935bac2e246fcc63e1cac9250', '2025-10-24 10:41:30'),
(85, 47, 'ed8d10df629f8e99a722c4992a8d52e974a710de7e80f1a86d2a0d551cfedadb', '2025-10-25 19:56:14'),
(95, 56, '3669fe3829ff5e5357de9be2510cafcf6130ea601b5f32c8063051e9a0cf54ae', '2025-10-31 16:50:52'),
(97, 57, '40e6de4b0dbb64ab6953603268f657abe56a79e5cdadc607c6fe4ddad77272b9', '2025-11-28 13:41:21'),
(99, 58, '8d58c0f3d67b92ff4fc090976c7df8cb68391faae37704f547a70865d4923a60', '2025-11-28 14:32:14'),
(100, 58, '1b37ab977796ee5c7c926190c253a4bff3e5faf1b6c86bbfd7fe8f3687eab7aa', '2025-11-28 14:46:06');

-- --------------------------------------------------------

--
-- Estrutura para tabela `sinalizacoes_usuario`
--

CREATE TABLE `sinalizacoes_usuario` (
  `id_sinalizacao` int NOT NULL,
  `id_usuario` int NOT NULL,
  `id_avaliacao` int NOT NULL,
  `id_flag` int NOT NULL,
  `data_sinalizacao` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `solicitacoes_verificacao`
--

CREATE TABLE `solicitacoes_verificacao` (
  `id_solicitacao` int NOT NULL,
  `id_usuario` int NOT NULL,
  `status` enum('Pendente','Aprovado','Rejeitado') COLLATE utf8mb4_general_ci DEFAULT 'Pendente',
  `data_solicitacao` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tipos_feedback`
--

CREATE TABLE `tipos_feedback` (
  `id_tipo` int NOT NULL,
  `nome_tipo` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tipos_usuario`
--

CREATE TABLE `tipos_usuario` (
  `id_tipo` int NOT NULL,
  `nome_tipo` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tipos_usuario`
--

INSERT INTO `tipos_usuario` (`id_tipo`, `nome_tipo`) VALUES
(3, 'Administrador'),
(1, 'Cliente'),
(2, 'Empresa');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int NOT NULL,
  `id_tipo` int NOT NULL,
  `nome` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `data_cadastro` datetime DEFAULT CURRENT_TIMESTAMP,
  `cnpj` varchar(18) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `id_tipo`, `nome`, `email`, `data_cadastro`, `cnpj`) VALUES
(2, 3, 'Duarte', 'duarte@gmail.com', '2025-09-06 14:19:46', NULL),
(4, 1, 'Santana', 'santana@gmail.com', '2025-09-06 14:20:49', NULL),
(5, 2, 'Uilton', 'uilton@gmail.com', '2025-09-06 14:21:51', '12.123.123/0001-99'),
(6, 1, 'Juliel', 'juliel@yahoo.com.br', '2025-09-18 11:49:40', NULL),
(9, 1, 'Mariana', 'mariana@yahoo.com.br', '2025-09-18 11:52:01', NULL),
(10, 1, 'Marcelo', 'marcelo@gmail.com', '2025-09-18 11:53:08', NULL),
(11, 1, 'Luiza', 'luiza@gmail.com', '2025-09-18 12:00:06', NULL),
(12, 1, 'Juliana', 'juliana@gmail.com', '2025-09-18 12:03:17', NULL),
(13, 1, 'Glório', 'glorio@gmail.com', '2025-09-18 12:06:13', NULL),
(14, 1, 'Heitor', 'heitor@gmail.com', '2025-09-18 12:08:12', NULL),
(15, 1, 'Katia', 'katia@gmail.com', '2025-09-18 12:10:14', NULL),
(16, 2, 'Amanda Soluções', 'amdsol@gmail.com', '2025-09-18 13:15:43', '00.000.000/0000-01'),
(18, 1, 'Gabriel', 'gabs@gmail.com', '2025-09-18 13:31:52', NULL),
(19, 1, 'Herick', 'herick@gmail.com', '2025-09-18 13:32:37', NULL),
(20, 1, 'Leticia', 'leticia@gmail.com', '2025-09-18 13:35:18', NULL),
(21, 1, 'Augusto', 'augusto@gmail.com', '2025-09-18 13:39:05', NULL),
(22, 1, 'Guibor', 'guibor@gmail.com', '2025-09-18 13:39:47', NULL),
(23, 2, 'Guibor', 'guibor1@gmail.com', '2025-09-18 13:40:22', '11.111.112/1222-22'),
(24, 1, 'Vinícius', 'vinicius@gmail.com', '2025-09-18 13:43:16', NULL),
(25, 1, 'Vinícius Gabriel', 'viniciusgabriel@gmail.com', '2025-09-18 13:45:05', NULL),
(26, 1, 'Vinícius Gabriel Santos', 'viniciusgabrielsantos@gmail.com', '2025-09-18 13:45:58', NULL),
(27, 1, 'Vinícius Gabriel Santos Almeida', 'viniciusgabrielsantosalmeida@gmail.com', '2025-09-18 13:48:15', NULL),
(28, 1, 'Jurandir', 'jurandir@gmail.com', '2025-09-18 18:40:03', NULL),
(29, 1, 'Kael', 'kael@g.com', '2025-09-18 18:41:11', NULL),
(31, 1, 'Kael', 'kaela@g.com', '2025-09-18 18:43:52', NULL),
(32, 1, 'AAAA', 'aaa@aa.com', '2025-09-18 18:44:16', NULL),
(33, 2, 'a', 'a@g.com', '2025-09-18 22:28:05', '12.312.312/3123-12'),
(34, 2, 'f', 'f@d.com', '2025-09-18 22:32:03', '55.555.555/5555-55'),
(35, 2, 'f', 'f@ff.com', '2025-09-18 22:37:29', '11.111.111/1111-12'),
(36, 2, '7', '7@7.com', '2025-09-18 22:41:03', '77.777.777/7777-77'),
(37, 2, 'capeta', 'capeta@capeta.com', '2025-09-18 22:43:59', '66.666.666/6666-66'),
(38, 1, 'andressa', 'andressa2@and.com', '2025-09-18 22:49:15', NULL),
(39, 3, 'a', 'a@g.comoom', '2025-09-18 22:54:07', NULL),
(40, 1, 'aadasd', 'asdasdad@asdasd.com', '2025-09-18 22:55:22', NULL),
(41, 2, 'Jade Soluções e Biju', 'jadebijus@solucoes.com', '2025-09-30 14:27:01', '44.466.699/0001-77'),
(42, 2, 'Uilton Empresas', 'uilton@empresas.com.br', '2025-10-10 14:43:55', '89.234.982/3749-23'),
(45, 2, 'Uilton Empresas', 'uiltodn@empresas.com.br', '2025-10-10 14:45:58', '89.234.982/3749-23'),
(46, 1, 'a', 'a@aaaaa.com', '2025-10-10 14:50:01', NULL),
(47, 1, 'Root', 'root@gmail.com', '2025-10-14 18:46:36', NULL),
(48, 3, 'uel', 'uel@gmail.com', '2025-10-17 14:03:27', NULL),
(54, 3, 'uel', 'ueQl@gmail.com', '2025-10-17 14:09:02', NULL),
(55, 1, 'Jadiena', 'jadegamer@gmail.com', '2025-10-22 15:39:42', NULL),
(56, 2, 'jahsjhasd', 'ajhsgjahsd@gmail.com', '2025-10-31 16:20:52', '11.111.111/1111-11'),
(57, 1, 'p', 'p@p.com', '2025-11-28 13:11:21', NULL),
(58, 2, 'pp', 'pp@gmail.com', '2025-11-28 14:02:14', '11.111.111/1111-11');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `acoes_moderacao`
--
ALTER TABLE `acoes_moderacao`
  ADD PRIMARY KEY (`id_acao`),
  ADD KEY `id_sinalizacao` (`id_sinalizacao`),
  ADD KEY `id_moderador` (`id_moderador`);

--
-- Índices de tabela `avaliacoes`
--
ALTER TABLE `avaliacoes`
  ADD PRIMARY KEY (`id_avaliacao`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Índices de tabela `categorias_avaliacao`
--
ALTER TABLE `categorias_avaliacao`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Índices de tabela `config_selos`
--
ALTER TABLE `config_selos`
  ADD PRIMARY KEY (`id_config`),
  ADD KEY `id_selo` (`id_selo`);

--
-- Índices de tabela `credenciais`
--
ALTER TABLE `credenciais`
  ADD PRIMARY KEY (`id_credencial`),
  ADD UNIQUE KEY `id_usuario` (`id_usuario`);

--
-- Índices de tabela `dados_grafico`
--
ALTER TABLE `dados_grafico`
  ADD PRIMARY KEY (`id_dado`),
  ADD KEY `id_relatorio` (`id_relatorio`);

--
-- Índices de tabela `denuncias`
--
ALTER TABLE `denuncias`
  ADD PRIMARY KEY (`id_denuncia`),
  ADD KEY `fk_denuncia_avaliacao` (`id_avaliacao`),
  ADD KEY `fk_denuncia_usuario` (`id_denunciante`);

--
-- Índices de tabela `feedback_respostas`
--
ALTER TABLE `feedback_respostas`
  ADD PRIMARY KEY (`id_feedback`),
  ADD KEY `id_avaliacao` (`id_avaliacao`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_tipo` (`id_tipo`);

--
-- Índices de tabela `flags_proibidas`
--
ALTER TABLE `flags_proibidas`
  ADD PRIMARY KEY (`id_flag`);

--
-- Índices de tabela `historico_avaliacoes`
--
ALTER TABLE `historico_avaliacoes`
  ADD PRIMARY KEY (`id_historico`),
  ADD KEY `id_avaliacao` (`id_avaliacao`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Índices de tabela `historico_verificacao`
--
ALTER TABLE `historico_verificacao`
  ADD PRIMARY KEY (`id_historico`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_solicitacao` (`id_solicitacao`);

--
-- Índices de tabela `log_moderacao`
--
ALTER TABLE `log_moderacao`
  ADD PRIMARY KEY (`id_log`),
  ADD KEY `id_acao` (`id_acao`);

--
-- Índices de tabela `log_sistema`
--
ALTER TABLE `log_sistema`
  ADD PRIMARY KEY (`id_log`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Índices de tabela `metricas`
--
ALTER TABLE `metricas`
  ADD PRIMARY KEY (`id_metrica`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Índices de tabela `notificacoes_empresas`
--
ALTER TABLE `notificacoes_empresas`
  ADD PRIMARY KEY (`id_notificacao`),
  ADD KEY `id_resposta_empresa` (`id_resposta_empresa`);

--
-- Índices de tabela `perfis_usuario`
--
ALTER TABLE `perfis_usuario`
  ADD PRIMARY KEY (`id_perfil`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Índices de tabela `relatorios`
--
ALTER TABLE `relatorios`
  ADD PRIMARY KEY (`id_relatorio`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Índices de tabela `respostas_empresas`
--
ALTER TABLE `respostas_empresas`
  ADD PRIMARY KEY (`id_resposta_empresa`),
  ADD KEY `id_avaliacao` (`id_avaliacao`);

--
-- Índices de tabela `selos`
--
ALTER TABLE `selos`
  ADD PRIMARY KEY (`id_selo`);

--
-- Índices de tabela `selos_usuario`
--
ALTER TABLE `selos_usuario`
  ADD PRIMARY KEY (`id_selo_usuario`),
  ADD KEY `id_selo` (`id_selo`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Índices de tabela `sessoes`
--
ALTER TABLE `sessoes`
  ADD PRIMARY KEY (`id_sessao`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Índices de tabela `sinalizacoes_usuario`
--
ALTER TABLE `sinalizacoes_usuario`
  ADD PRIMARY KEY (`id_sinalizacao`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_avaliacao` (`id_avaliacao`),
  ADD KEY `id_flag` (`id_flag`);

--
-- Índices de tabela `solicitacoes_verificacao`
--
ALTER TABLE `solicitacoes_verificacao`
  ADD PRIMARY KEY (`id_solicitacao`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Índices de tabela `tipos_feedback`
--
ALTER TABLE `tipos_feedback`
  ADD PRIMARY KEY (`id_tipo`);

--
-- Índices de tabela `tipos_usuario`
--
ALTER TABLE `tipos_usuario`
  ADD PRIMARY KEY (`id_tipo`),
  ADD UNIQUE KEY `nome_tipo` (`nome_tipo`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `id_tipo` (`id_tipo`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `acoes_moderacao`
--
ALTER TABLE `acoes_moderacao`
  MODIFY `id_acao` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `avaliacoes`
--
ALTER TABLE `avaliacoes`
  MODIFY `id_avaliacao` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `categorias_avaliacao`
--
ALTER TABLE `categorias_avaliacao`
  MODIFY `id_categoria` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `config_selos`
--
ALTER TABLE `config_selos`
  MODIFY `id_config` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `credenciais`
--
ALTER TABLE `credenciais`
  MODIFY `id_credencial` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de tabela `dados_grafico`
--
ALTER TABLE `dados_grafico`
  MODIFY `id_dado` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `denuncias`
--
ALTER TABLE `denuncias`
  MODIFY `id_denuncia` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `feedback_respostas`
--
ALTER TABLE `feedback_respostas`
  MODIFY `id_feedback` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `flags_proibidas`
--
ALTER TABLE `flags_proibidas`
  MODIFY `id_flag` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `historico_avaliacoes`
--
ALTER TABLE `historico_avaliacoes`
  MODIFY `id_historico` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `historico_verificacao`
--
ALTER TABLE `historico_verificacao`
  MODIFY `id_historico` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `log_moderacao`
--
ALTER TABLE `log_moderacao`
  MODIFY `id_log` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `log_sistema`
--
ALTER TABLE `log_sistema`
  MODIFY `id_log` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `metricas`
--
ALTER TABLE `metricas`
  MODIFY `id_metrica` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `notificacoes_empresas`
--
ALTER TABLE `notificacoes_empresas`
  MODIFY `id_notificacao` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `perfis_usuario`
--
ALTER TABLE `perfis_usuario`
  MODIFY `id_perfil` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `relatorios`
--
ALTER TABLE `relatorios`
  MODIFY `id_relatorio` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `respostas_empresas`
--
ALTER TABLE `respostas_empresas`
  MODIFY `id_resposta_empresa` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `selos`
--
ALTER TABLE `selos`
  MODIFY `id_selo` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `selos_usuario`
--
ALTER TABLE `selos_usuario`
  MODIFY `id_selo_usuario` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `sessoes`
--
ALTER TABLE `sessoes`
  MODIFY `id_sessao` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de tabela `sinalizacoes_usuario`
--
ALTER TABLE `sinalizacoes_usuario`
  MODIFY `id_sinalizacao` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `solicitacoes_verificacao`
--
ALTER TABLE `solicitacoes_verificacao`
  MODIFY `id_solicitacao` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tipos_feedback`
--
ALTER TABLE `tipos_feedback`
  MODIFY `id_tipo` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tipos_usuario`
--
ALTER TABLE `tipos_usuario`
  MODIFY `id_tipo` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `acoes_moderacao`
--
ALTER TABLE `acoes_moderacao`
  ADD CONSTRAINT `acoes_moderacao_ibfk_1` FOREIGN KEY (`id_sinalizacao`) REFERENCES `sinalizacoes_usuario` (`id_sinalizacao`),
  ADD CONSTRAINT `acoes_moderacao_ibfk_2` FOREIGN KEY (`id_moderador`) REFERENCES `usuarios` (`id_usuario`);

--
-- Restrições para tabelas `avaliacoes`
--
ALTER TABLE `avaliacoes`
  ADD CONSTRAINT `avaliacoes_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`),
  ADD CONSTRAINT `avaliacoes_ibfk_2` FOREIGN KEY (`id_categoria`) REFERENCES `categorias_avaliacao` (`id_categoria`);

--
-- Restrições para tabelas `config_selos`
--
ALTER TABLE `config_selos`
  ADD CONSTRAINT `config_selos_ibfk_1` FOREIGN KEY (`id_selo`) REFERENCES `selos` (`id_selo`);

--
-- Restrições para tabelas `credenciais`
--
ALTER TABLE `credenciais`
  ADD CONSTRAINT `credenciais_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Restrições para tabelas `dados_grafico`
--
ALTER TABLE `dados_grafico`
  ADD CONSTRAINT `dados_grafico_ibfk_1` FOREIGN KEY (`id_relatorio`) REFERENCES `relatorios` (`id_relatorio`);

--
-- Restrições para tabelas `denuncias`
--
ALTER TABLE `denuncias`
  ADD CONSTRAINT `fk_denuncia_avaliacao` FOREIGN KEY (`id_avaliacao`) REFERENCES `avaliacoes` (`id_avaliacao`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_denuncia_usuario` FOREIGN KEY (`id_denunciante`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE;

--
-- Restrições para tabelas `feedback_respostas`
--
ALTER TABLE `feedback_respostas`
  ADD CONSTRAINT `feedback_respostas_ibfk_1` FOREIGN KEY (`id_avaliacao`) REFERENCES `avaliacoes` (`id_avaliacao`),
  ADD CONSTRAINT `feedback_respostas_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`),
  ADD CONSTRAINT `feedback_respostas_ibfk_3` FOREIGN KEY (`id_tipo`) REFERENCES `tipos_feedback` (`id_tipo`);

--
-- Restrições para tabelas `historico_avaliacoes`
--
ALTER TABLE `historico_avaliacoes`
  ADD CONSTRAINT `historico_avaliacoes_ibfk_1` FOREIGN KEY (`id_avaliacao`) REFERENCES `avaliacoes` (`id_avaliacao`),
  ADD CONSTRAINT `historico_avaliacoes_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Restrições para tabelas `historico_verificacao`
--
ALTER TABLE `historico_verificacao`
  ADD CONSTRAINT `historico_verificacao_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`),
  ADD CONSTRAINT `historico_verificacao_ibfk_2` FOREIGN KEY (`id_solicitacao`) REFERENCES `solicitacoes_verificacao` (`id_solicitacao`);

--
-- Restrições para tabelas `log_moderacao`
--
ALTER TABLE `log_moderacao`
  ADD CONSTRAINT `log_moderacao_ibfk_1` FOREIGN KEY (`id_acao`) REFERENCES `acoes_moderacao` (`id_acao`);

--
-- Restrições para tabelas `log_sistema`
--
ALTER TABLE `log_sistema`
  ADD CONSTRAINT `log_sistema_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Restrições para tabelas `metricas`
--
ALTER TABLE `metricas`
  ADD CONSTRAINT `metricas_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Restrições para tabelas `notificacoes_empresas`
--
ALTER TABLE `notificacoes_empresas`
  ADD CONSTRAINT `notificacoes_empresas_ibfk_1` FOREIGN KEY (`id_resposta_empresa`) REFERENCES `respostas_empresas` (`id_resposta_empresa`);

--
-- Restrições para tabelas `perfis_usuario`
--
ALTER TABLE `perfis_usuario`
  ADD CONSTRAINT `perfis_usuario_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Restrições para tabelas `relatorios`
--
ALTER TABLE `relatorios`
  ADD CONSTRAINT `relatorios_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Restrições para tabelas `respostas_empresas`
--
ALTER TABLE `respostas_empresas`
  ADD CONSTRAINT `respostas_empresas_ibfk_1` FOREIGN KEY (`id_avaliacao`) REFERENCES `avaliacoes` (`id_avaliacao`);

--
-- Restrições para tabelas `selos_usuario`
--
ALTER TABLE `selos_usuario`
  ADD CONSTRAINT `selos_usuario_ibfk_1` FOREIGN KEY (`id_selo`) REFERENCES `selos` (`id_selo`),
  ADD CONSTRAINT `selos_usuario_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Restrições para tabelas `sessoes`
--
ALTER TABLE `sessoes`
  ADD CONSTRAINT `sessoes_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Restrições para tabelas `sinalizacoes_usuario`
--
ALTER TABLE `sinalizacoes_usuario`
  ADD CONSTRAINT `sinalizacoes_usuario_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`),
  ADD CONSTRAINT `sinalizacoes_usuario_ibfk_2` FOREIGN KEY (`id_avaliacao`) REFERENCES `avaliacoes` (`id_avaliacao`),
  ADD CONSTRAINT `sinalizacoes_usuario_ibfk_3` FOREIGN KEY (`id_flag`) REFERENCES `flags_proibidas` (`id_flag`);

--
-- Restrições para tabelas `solicitacoes_verificacao`
--
ALTER TABLE `solicitacoes_verificacao`
  ADD CONSTRAINT `solicitacoes_verificacao_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Restrições para tabelas `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_tipo`) REFERENCES `tipos_usuario` (`id_tipo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
