-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11/04/2024 às 15:37
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sportnow`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) DEFAULT NULL,
  `subtitulo` varchar(255) DEFAULT NULL,
  `imagem` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `banner`
--

INSERT INTO `banner` (`id`, `titulo`, `subtitulo`, `imagem`) VALUES
(1, 'As melhores partidas são aqui!', '', '04-04-2024-15-25-01-banner1.jpg'),
(3, 'Acompanhe a NBA!', 'O seu basquete é aqui', '04-04-2024-16-51-38-banner2.jpg'),
(4, 'O melhor do TÊNIS!', 'Acompanhe os seus eventos com nós', '04-04-2024-16-53-46-banner4.jpg'),
(5, 'Todas as notícias da NFL!', 'É na SportNOW', '04-04-2024-16-56-21-banner3.jpg');

-- --------------------------------------------------------

--
-- Estrutura para tabela `config`
--

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `nome` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `senha` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `telefone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `endereco` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `logo` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `icone` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `instagram` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `twitter` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `linkedin` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `facebook` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `youtube` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `cor` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `titulo_servicos` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `subtitulo_servicos` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `titulo_trabalhos` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `subtitulo_trabalhos` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `titulo_equipe` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `subtitulo_equipe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `titulo_contato` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `subtitulo_contato` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `texto_rodape` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `config`
--

INSERT INTO `config` (`id`, `nome`, `email`, `senha`, `telefone`, `endereco`, `logo`, `icone`, `instagram`, `twitter`, `linkedin`, `facebook`, `youtube`, `cor`, `titulo_servicos`, `subtitulo_servicos`, `titulo_trabalhos`, `subtitulo_trabalhos`, `titulo_equipe`, `subtitulo_equipe`, `titulo_contato`, `subtitulo_contato`, `texto_rodape`) VALUES
(1, 'Sport NOW', 'joao@gmail.com', '123', '(11) 98765-4321', 'aadada', 'logo.png', 'icone.png', 'aaaaaaa', 'aa', 'aaaaa', 'aaaaaa', 'aaaaaa', '#2C6E49', 'As melhores partidas são aqui!', 'Para você e sua família', 'Acompanhe os seus esportes!', '', 'Nossa Equipe:', '', 'Contate-me', 'Preencha os Campos abaixo para entrar em contato comigo!', 'aaaaa');

-- --------------------------------------------------------

--
-- Estrutura para tabela `equipe`
--

CREATE TABLE `equipe` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cargo` varchar(50) NOT NULL,
  `imagem` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `equipe`
--

INSERT INTO `equipe` (`id`, `nome`, `cargo`, `imagem`) VALUES
(4, 'João Vitor Lira', 'CEO da SportNOW', '05-04-2024-11-30-23-Design-sem-nome-(3).png'),
(6, 'Kauã Moura Costa', 'Supervisor', '05-04-2024-11-30-53-Design-sem-nome-(4).png'),
(7, 'Pedro Henrique', 'Bicheiro', '05-04-2024-11-33-49-Design-sem-nome-(5).png'),
(8, 'Victor Gastardeli', 'Programador', '05-04-2024-11-34-42-Design-sem-nome-(6).png');

-- --------------------------------------------------------

--
-- Estrutura para tabela `servicos`
--

CREATE TABLE `servicos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `descricao` text NOT NULL,
  `imagem` varchar(100) DEFAULT NULL,
  `video` varchar(100) DEFAULT NULL,
  `exibir` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `servicos`
--

INSERT INTO `servicos` (`id`, `titulo`, `descricao`, `imagem`, `video`, `exibir`) VALUES
(2, '', '<font face=\"Söhne, ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Ubuntu, Cantarell, Noto Sans, sans-serif, Helvetica Neue, Arial, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji\" color=\"#000000\"><span style=\"white-space-collapse: preserve;\">O SportNOW é uma plataforma virtual indispensável para qualquer pessoa apaixonada por esportes. Com sua ampla cobertura, recursos interativos e comunidade engajada, o SportNOW oferece uma experiência completa que mantém os usuários informados, entretidos e conectados com o mundo do esporte.</span></font><br>', '05-04-2024-09-13-56-undraw_goal_0v5v.png', '', 'Imagem'),
(3, 'Basquete', '<font face=\"Söhne, ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Ubuntu, Cantarell, Noto Sans, sans-serif, Helvetica Neue, Arial, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji\" color=\"#000000\"><span style=\"white-space-collapse: preserve; background-color: rgb(255, 255, 255);\">Na SportNOW, o basquete é muito mais do que um esporte - é uma paixão que compartilhamos com nossos usuários. Estamos empenhados em oferecer a cobertura mais abrangente e emocionante do mundo do basquete, desde os grandes jogos da NBA até os torneios internacionais e ligas nacionais.</span></font><br>', '11-04-2024-09-21-00-undraw_greek_freak_j2qb.png', '', 'Imagem'),
(4, 'Champions League', 'Na SportNOW, a Champions League é o ápice do futebol europeu, e estamos comprometidos em trazer a emoção deste torneio para os nossos usuários de uma maneira incomparável. Com acesso exclusivo aos jogos ao vivo, análises especializadas, destaques empolgantes e entrevistas com jogadores e treinadores, oferecemos uma cobertura completa e imersiva deste prestigiado torneio.', 'sem-foto.jpg', 'https://www.youtube.com/embed/1c2HcD7VTrU?si=3p4oAeK9GNRS_o3D', 'Vídeo');

-- --------------------------------------------------------

--
-- Estrutura para tabela `sobre`
--

CREATE TABLE `sobre` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `subtitulo` varchar(255) DEFAULT NULL,
  `descricao` text NOT NULL,
  `imagem` varchar(100) DEFAULT NULL,
  `video` varchar(100) DEFAULT NULL,
  `exibir` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `sobre`
--

INSERT INTO `sobre` (`id`, `titulo`, `subtitulo`, `descricao`, `imagem`, `video`, `exibir`) VALUES
(1, 'Sobre Nós:', '', '<p style=\"text-align: justify;\"><font color=\"#000000\"><br></font></p><p style=\"text-align: justify;\"><font color=\"#000000\"><br></font></p><p style=\"text-align: justify;\"><font color=\"#000000\">Uma das características distintivas do SportNOW é a sua cobertura abrangente de uma ampla gama de esportes, desde os mais populares como futebol, basquete e tênis, até os mais nichados como rugby, esportes de inverno e até mesmo esportes eletrônicos. Isso permite que os usuários explorem e descubram novas modalidades, além de acompanharem de perto seus esportes favoritos.</font></p>', '05-04-2024-09-15-00-undraw_game_day_ucx9-(1).png', '', 'Imagem');

-- --------------------------------------------------------

--
-- Estrutura para tabela `trabalhos`
--

CREATE TABLE `trabalhos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `descricao` text DEFAULT NULL,
  `imagem` varchar(100) NOT NULL,
  `video` varchar(100) DEFAULT NULL,
  `exibir` varchar(20) NOT NULL,
  `link` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `trabalhos`
--

INSERT INTO `trabalhos` (`id`, `titulo`, `descricao`, `imagem`, `video`, `exibir`, `link`) VALUES
(3, 'Acompanhe a NBA!', '<font face=\"Söhne, ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Ubuntu, Cantarell, Noto Sans, sans-serif, Helvetica Neue, Arial, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji\" color=\"#000000\"><span style=\"white-space-collapse: preserve;\">Com acesso completo aos jogos ao vivo, análises detalhadas e destaques emocionantes, os usuários da SportNOW podem mergulhar de cabeça na ação da NBA. Esteja você torcendo por seu time favorito ou apenas acompanhando as grandes jogadas, nosso serviço oferece tudo o que você precisa para ficar por dentro do que está acontecendo na quadra.</span></font><br>', '05-04-2024-11-16-03-Design-sem-nome-(1).png', '', 'Imagem', 'https://www.lojanba.com/?gad_source=1&gclid=CjwKCAjwwr6wBhBcEiwAfMEQswSb1HzDbnByg7huh65UzZ-lup88Nw8S'),
(4, 'Acompanhe o Brasileirão!', '<font face=\"Söhne, ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Ubuntu, Cantarell, Noto Sans, sans-serif, Helvetica Neue, Arial, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji\" color=\"#000000\"><span style=\"white-space-collapse: preserve;\">Com acesso exclusivo aos jogos ao vivo, análises detalhadas e destaques emocionantes, os usuários da SportNOW podem mergulhar de cabeça na emoção do futebol brasileiro. Esteja você torcendo pelo seu time do coração ou acompanhando de perto a disputa pelo título, nosso serviço oferece tudo o que você precisa para ficar por dentro do que está acontecendo nos gramados.</span></font><br>', '05-04-2024-11-23-15-Design-sem-nome-(2).png', 'https://www.youtube.com/embed/E2F9IFytKHo?si=1u_9AE1W1-U7w0LC', 'Vídeo', 'https://www.youtube.com/embed/E2F9IFytKHo?si=1u_9AE1W1-U7w0LC'),
(5, 'Acompanhe a NFL!', 'Com acesso exclusivo aos jogos ao vivo, análises especializadas e destaques emocionantes, os usuários da SportNOW podem mergulhar de cabeça na intensidade e na emoção da NFL. Seja torcendo pelo seu time favorito ou acompanhando as maiores jogadas da liga, nossa plataforma oferece tudo o que você precisa para ficar por dentro do que está acontecendo nos campos de futebol americano.', '05-04-2024-11-54-08-Design-sem-nome-(7).png', '', 'Imagem', 'https://www.nfl.com/');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `equipe`
--
ALTER TABLE `equipe`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `servicos`
--
ALTER TABLE `servicos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `sobre`
--
ALTER TABLE `sobre`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `trabalhos`
--
ALTER TABLE `trabalhos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `equipe`
--
ALTER TABLE `equipe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `servicos`
--
ALTER TABLE `servicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `sobre`
--
ALTER TABLE `sobre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `trabalhos`
--
ALTER TABLE `trabalhos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
