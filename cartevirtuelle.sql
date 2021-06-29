-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mar. 29 juin 2021 à 11:06
-- Version du serveur :  10.1.36-MariaDB
-- Version de PHP :  7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `cartevirtuelle`
--

-- --------------------------------------------------------

--
-- Structure de la table `ar_internal_metadata`
--

CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ar_internal_metadata`
--

INSERT INTO `ar_internal_metadata` (`key`, `value`, `created_at`, `updated_at`) VALUES
('environment', 'development', '2021-06-28 17:11:56.555191', '2021-06-28 17:11:56.555191');

-- --------------------------------------------------------

--
-- Structure de la table `card_states`
--

CREATE TABLE `card_states` (
  `id` bigint(20) NOT NULL,
  `carte_ID` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `cartes`
--

CREATE TABLE `cartes` (
  `id` bigint(20) NOT NULL,
  `card_id` varchar(255) DEFAULT NULL,
  `string` varchar(255) DEFAULT NULL,
  `masked_pan` varchar(255) DEFAULT NULL,
  `card_balance` decimal(10,0) DEFAULT NULL,
  `card_holder` varchar(255) DEFAULT NULL,
  `billing_name` varchar(255) DEFAULT NULL,
  `billing_address` varchar(255) DEFAULT NULL,
  `billing_city` varchar(255) DEFAULT NULL,
  `billing_country` varchar(255) DEFAULT NULL,
  `billing_zip_code` varchar(255) DEFAULT NULL,
  `card_currency` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `success` varchar(255) DEFAULT NULL,
  `billing_state` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `card_pan` varchar(255) DEFAULT NULL,
  `cvv` varchar(255) DEFAULT NULL,
  `cardbalance` decimal(10,0) DEFAULT NULL,
  `expiration` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `otps`
--

CREATE TABLE `otps` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `code` int(11) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `schema_migrations`
--

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20210628163632'),
('20210628163949'),
('20210628170541'),
('20210628170943'),
('20210628171534'),
('20210628172915'),
('20210628180323');

-- --------------------------------------------------------

--
-- Structure de la table `transaction`
--

CREATE TABLE `transaction` (
  `id` bigint(20) NOT NULL,
  `transaction_Id` varchar(255) DEFAULT NULL,
  `TransactionAmount` decimal(10,0) DEFAULT NULL,
  `Fee` decimal(10,0) DEFAULT NULL,
  `ProductName` varchar(255) DEFAULT NULL,
  `ProviderResponseCode` varchar(255) DEFAULT NULL,
  `ProviderResponseMessage` varchar(255) DEFAULT NULL,
  `ProviderReference` varchar(255) DEFAULT NULL,
  `UniqueReferenceDetails` varchar(255) DEFAULT NULL,
  `TransactionReference` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `ProductID` decimal(10,0) DEFAULT NULL,
  `UniqueReference` varchar(255) DEFAULT NULL,
  `PaymentReference` varchar(255) DEFAULT NULL,
  `PaymentType` varchar(255) DEFAULT NULL,
  `PaymentResponsiveCode` varchar(255) DEFAULT NULL,
  `PaymentResponsiveMessage` varchar(255) DEFAULT NULL,
  `AmountReference` decimal(10,0) DEFAULT NULL,
  `CurrencyId` int(11) DEFAULT NULL,
  `Narration` varchar(255) DEFAULT NULL,
  `Indicator` varchar(255) DEFAULT NULL,
  `DateCreated` varchar(255) DEFAULT NULL,
  `StatusName` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Currency` varchar(255) DEFAULT NULL,
  `MerchantName` varchar(255) DEFAULT NULL,
  `TransactionDescription` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `password_digest` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `ar_internal_metadata`
--
ALTER TABLE `ar_internal_metadata`
  ADD PRIMARY KEY (`key`);

--
-- Index pour la table `card_states`
--
ALTER TABLE `card_states`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cartes`
--
ALTER TABLE `cartes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `otps`
--
ALTER TABLE `otps`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `schema_migrations`
--
ALTER TABLE `schema_migrations`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `card_states`
--
ALTER TABLE `card_states`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `cartes`
--
ALTER TABLE `cartes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `otps`
--
ALTER TABLE `otps`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
