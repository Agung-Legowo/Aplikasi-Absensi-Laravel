-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Jan 2024 pada 17.23
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokosurat`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `namecategory` varchar(45) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `namecategory`, `description`, `created_at`, `updated_at`) VALUES
(1, 'pernytaan', 'Vero tenetur sunt cupiditate assumenda qui libero. Et doloremque perferendis voluptatum dolorem.', '2023-12-03 22:28:14', '2023-12-03 22:28:14'),
(2, 'undangan', 'Eligendi ut ea non vel rerum. Ratione sapiente dolorem necessitatibus aut delectus quis.', '2023-12-03 22:28:15', '2023-12-03 22:28:15'),
(3, 'kantoran', 'Blanditiis amet illum incidunt sunt iusto molestiae veritatis. Ut at enim animi et.', '2023-12-03 22:28:15', '2023-12-03 22:28:15'),
(4, 'pernytaan', 'Id et voluptatem nisi est. Quo at totam amet ad laudantium harum delectus.', '2023-12-03 22:28:15', '2023-12-03 22:28:15'),
(5, 'izin', 'Sed non quia exercitationem quibusdam fugiat ea et magnam. Quod quasi dolorem et voluptatum cumque. Voluptatem porro debitis quidem autem.', '2023-12-03 22:28:15', '2023-12-03 22:28:15'),
(6, 'undangan', 'Quas minus ut fugiat. Alias odit maiores molestiae nihil omnis. Reiciendis dolor officia et.', '2023-12-03 22:28:15', '2023-12-03 22:28:15'),
(7, 'pernytaan', 'Est ut ad quia fugiat quae voluptatem. Error et dolor eligendi.', '2023-12-03 22:28:15', '2023-12-03 22:28:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `letters`
--

CREATE TABLE `letters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nameletter` varchar(255) NOT NULL,
  `descriptionletter` text NOT NULL,
  `typeletter` enum('formal','nonformal') NOT NULL DEFAULT 'formal',
  `fileletter` varchar(255) NOT NULL,
  `coverletter` varchar(255) DEFAULT NULL,
  `categories_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `letters`
--

INSERT INTO `letters` (`id`, `nameletter`, `descriptionletter`, `typeletter`, `fileletter`, `coverletter`, `categories_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'ipsum aut sit', 'Aliquid qui consequatur quis ut sunt magni. Dicta repellat praesentium quo provident laborum autem minus veniam. A eveniet est molestiae ut amet. Ut reiciendis nemo doloremque voluptatem.\n\nRecusandae deserunt veritatis asperiores veritatis aliquid et voluptatem assumenda. Sunt magnam minus aut neque. Nesciunt et vel voluptatem consectetur ea odit laudantium rerum. Numquam assumenda nam ab dicta. Molestiae accusamus quia porro omnis rem cum.', 'formal', 'http://mccullough.com/et-atque-est-earum-minima-eum-nihil-facere.html', 'https://runolfsson.info/nostrum-laudantium-culpa-et-aut-quia.html', 6, 3, '2023-12-03 22:28:18', '2023-12-03 22:28:18'),
(2, 'molestias minus sed', 'Voluptatem sapiente molestiae omnis animi facere. Autem expedita iste deleniti et libero. Et est doloribus ea possimus nesciunt neque at. Ea animi nam voluptatibus repellendus perspiciatis.\n\nNostrum vero est voluptate et veritatis iure quibusdam. Laborum laboriosam sint id consequuntur aut voluptas nam. Non qui consectetur et dolores.', 'nonformal', 'http://mckenzie.net/', 'http://sporer.com/', 1, 3, '2023-12-03 22:28:18', '2023-12-03 22:28:18'),
(3, 'provident reprehenderit et', 'Autem corporis facere qui. Sed aliquam provident temporibus tempora sequi autem magni. Dignissimos maxime molestiae non consectetur exercitationem id.\n\nOfficiis distinctio aut veniam neque. Sed veniam porro atque exercitationem id dolorem. Et et asperiores natus molestiae maxime aut ducimus. Est tempore quisquam cupiditate.', 'formal', 'http://bergstrom.com/non-dignissimos-porro-quo-rem-dolore', 'http://www.bartoletti.com/omnis-dolor-sunt-nihil-dolorem-tempore.html', 5, 3, '2023-12-03 22:28:18', '2023-12-03 22:28:18'),
(4, 'veritatis est quia', 'Suscipit consectetur est temporibus mollitia quia. Neque nostrum quasi nihil ab facere magni deserunt. Et et vel atque aut reprehenderit doloribus id.\n\nRerum ea dolor minus tenetur dolor non beatae. Quos reprehenderit a enim veritatis. Sed suscipit id molestiae et. Dolores praesentium suscipit consequatur aut sed autem.', 'nonformal', 'http://www.murphy.com/quia-enim-eaque-fugiat-qui-cum-quis', 'http://www.terry.com/velit-eius-ut-et-ipsam.html', 3, 3, '2023-12-03 22:28:18', '2023-12-03 22:28:18'),
(5, 'voluptatem dolorum eum', 'Dolorum porro fuga et officia aut dignissimos. Eos sunt nobis dolor qui quidem aspernatur. Molestias minus reiciendis minus aperiam voluptatem maxime blanditiis. Inventore impedit eos iusto quisquam repellat.\n\nAssumenda suscipit eum sunt dolores corporis omnis. Numquam id iure et nobis ratione minus. Reiciendis aut eaque in voluptates velit praesentium.', 'formal', 'http://klocko.com/consequatur-nihil-qui-repellendus', 'http://www.beahan.com/non-cupiditate-quo-labore-voluptate-non', 6, 3, '2023-12-03 22:28:18', '2023-12-03 22:28:18'),
(6, 'ea commodi recusandae', 'Facilis et repellat nam ut aut maiores porro. Laudantium at sit provident nostrum recusandae non rerum asperiores. Iste illo unde excepturi voluptatem minima amet sed.\n\nDolorem ea suscipit veniam a modi qui. Asperiores error cum quod rerum est vel aut. Voluptatem fugiat quo et unde pariatur sint commodi id.', 'nonformal', 'http://hudson.com/illum-quia-molestiae-et-quos-et-non.html', 'https://franecki.com/quae-et-dignissimos-cumque-pariatur.html', 7, 2, '2023-12-03 22:28:18', '2023-12-03 22:28:18'),
(7, 'vitae labore alias', 'Voluptatem quam est modi illum dignissimos nisi qui beatae. Quo et quisquam quia error aut similique aut ut. Aut ut officiis magnam. Laudantium qui enim at accusantium.\n\nSint occaecati porro ullam dolor. Dolor culpa iste odio. Voluptatibus quia voluptas voluptatibus repudiandae magni deserunt adipisci. Consequatur itaque provident est.', 'nonformal', 'http://www.marks.biz/at-autem-rerum-et-aut', 'http://haley.com/est-reprehenderit-quis-et.html', 6, 2, '2023-12-03 22:28:18', '2023-12-03 22:28:18'),
(8, 'minus voluptatibus eos', 'Nemo laudantium et vel et aut et praesentium. Repudiandae a aut in a cupiditate et illum. Sed consequatur eum aut nobis. Tenetur perspiciatis impedit et delectus ab optio aperiam.\n\nEum ipsam laboriosam esse neque nam similique. Ipsam nam deleniti illum corrupti culpa vel. Ut temporibus perferendis reprehenderit sit omnis. Rem similique reiciendis aut maiores. Qui voluptas voluptatibus excepturi adipisci totam tempora earum.', 'formal', 'http://www.torphy.com/', 'http://pfannerstill.org/architecto-consequatur-dolorem-omnis-et-sed-quos-suscipit', 7, 1, '2023-12-03 22:28:18', '2023-12-03 22:28:18'),
(9, 'molestias molestiae cumque', 'Harum ipsum consequatur cum voluptatem ratione. Non consequatur labore id et culpa ullam. Sint aut ab non qui. Nemo amet et eligendi reprehenderit aut.\n\nPlaceat quidem consequuntur hic modi voluptatum est in. Doloremque qui impedit voluptas ratione in repellendus nam. Omnis necessitatibus qui sit ut alias.', 'formal', 'http://murray.com/temporibus-consectetur-incidunt-ut-quo', 'http://www.trantow.com/', 5, 3, '2023-12-03 22:28:18', '2023-12-03 22:28:18'),
(10, 'aut fuga modi', 'Reiciendis qui saepe est sunt doloremque id. Vero velit et et incidunt ipsum consequatur cupiditate excepturi. Veritatis placeat enim esse nam quaerat eius nam. Minima molestias sunt omnis magnam quisquam vero assumenda. Vel architecto voluptatem id repudiandae veniam ducimus.\n\nUllam explicabo quae mollitia sapiente. Ut suscipit omnis sequi harum praesentium eius. Accusantium recusandae adipisci ut ratione id in. Qui sunt aliquid accusamus harum inventore.', 'formal', 'http://ortiz.com/voluptatem-aut-et-doloremque-et', 'http://www.brakus.info/', 2, 3, '2023-12-03 22:28:18', '2023-12-03 22:28:18'),
(11, 'reiciendis molestias recusandae', 'Dolores omnis necessitatibus praesentium voluptas quam ut vitae consequatur. Quas aut sed quia est qui. Id debitis quas voluptas molestiae corrupti. Vitae non impedit et impedit.\n\nQuia vero quo debitis est in. Ab nemo et non quae quia qui saepe. Eum repellat unde temporibus saepe rerum.', 'formal', 'http://www.dach.com/molestiae-placeat-quo-facilis-quasi-vitae.html', 'http://www.hirthe.biz/itaque-accusantium-qui-dignissimos-accusamus-dolor-ea.html', 7, 3, '2023-12-03 22:28:18', '2023-12-03 22:28:18'),
(12, 'voluptas amet eaque', 'Quae consequatur voluptas sed numquam soluta. Ipsam consequuntur labore quisquam sed fugiat minus. Omnis et eveniet facilis sunt ducimus sed quidem. Quis ea praesentium excepturi veritatis vel natus consequatur.\n\nEarum sit temporibus velit sit et cupiditate. Nisi quia possimus alias atque sed velit corporis. Ut placeat et qui.', 'nonformal', 'http://schowalter.org/error-ipsum-error-dicta-architecto-eos-sequi-blanditiis-iure', 'http://www.rempel.org/culpa-qui-suscipit-atque-ut', 6, 3, '2023-12-03 22:28:19', '2023-12-03 22:28:19'),
(13, 'quia est aliquam', 'Officia consectetur quis quisquam dignissimos et dolore placeat. Perferendis nesciunt commodi natus temporibus temporibus. Voluptatem repellendus aliquam quod labore. Iste consequatur architecto est maiores.\n\nQuisquam nostrum numquam possimus ipsum quas neque ducimus. Dolores facere ex facilis eaque. Aliquam impedit placeat laboriosam officia nihil aut reprehenderit. Soluta aut qui autem similique corporis fugit omnis. Culpa occaecati est sint id qui.', 'formal', 'http://fadel.biz/voluptatem-quia-voluptas-repellendus-asperiores.html', 'http://graham.biz/officia-pariatur-optio-odit-hic', 2, 2, '2023-12-03 22:28:19', '2023-12-03 22:28:19'),
(14, 'id voluptate distinctio', 'Repellat quo totam inventore. Nostrum sit numquam rerum maiores corrupti illo. Explicabo et nobis quo minima.\n\nNulla eum fuga optio soluta nihil sint. Cumque et in omnis placeat culpa.', 'formal', 'http://www.ernser.com/', 'http://runolfsson.com/', 1, 2, '2023-12-03 22:28:19', '2023-12-03 22:28:19'),
(15, 'rem ipsam qui', 'Sequi blanditiis in iste laborum quia quae. Tenetur rerum et quibusdam ipsam quas unde eum laboriosam. Temporibus iste ut neque ea ex.\n\nPorro dignissimos est molestiae repellendus minima. Harum delectus expedita delectus quidem sed reiciendis consectetur. Tenetur exercitationem temporibus molestiae omnis. Saepe et perferendis hic.', 'formal', 'http://www.blanda.net/', 'http://www.russel.net/', 5, 3, '2023-12-03 22:28:19', '2023-12-03 22:28:19'),
(16, 'aut rerum temporibus', 'Animi a eveniet eos fugiat sequi tempora totam. At voluptatem veniam beatae exercitationem et. Suscipit sunt nam ipsam delectus fuga. Vel non et fugit dolor libero. Quisquam nulla dolor necessitatibus perferendis omnis est.\n\nVel dignissimos pariatur rerum beatae laborum. Vel qui sed explicabo. Nihil cupiditate beatae doloribus ex eum.', 'formal', 'http://www.will.com/fuga-vero-omnis-molestiae-omnis-esse-delectus', 'http://stroman.com/et-inventore-impedit-animi-sit-sint', 7, 2, '2023-12-03 22:28:19', '2023-12-03 22:28:19'),
(17, 'rerum nam tempore', 'Magnam voluptatem ut dolor et provident quod. Corrupti velit fugiat quia consequatur culpa ex minima. Animi consectetur sint et.\n\nEius praesentium labore et sunt autem rerum magnam. Qui pariatur aut nemo nostrum. Voluptatibus dolore nobis officia nihil est nihil quae. Dolor occaecati autem facilis ducimus possimus ad.', 'formal', 'https://www.carroll.biz/modi-quas-quae-eveniet-vero-autem-enim-numquam', 'https://kunde.biz/perspiciatis-ut-provident-non-iure-laudantium-inventore-in.html', 2, 2, '2023-12-03 22:28:19', '2023-12-03 22:28:19'),
(18, 'et voluptas vitae', 'Accusantium saepe facere incidunt maiores voluptatem soluta sint. Ut ipsum fuga nostrum error ut quisquam rerum. Beatae soluta aut est consequatur qui.\n\nIpsum quis occaecati harum minima. Quibusdam iusto eius et molestiae illum consectetur. Rerum aut dolorum ipsum numquam enim.', 'formal', 'http://www.bashirian.com/', 'http://schowalter.com/voluptas-ullam-et-cum-dolor-labore-dignissimos', 1, 3, '2023-12-03 22:28:19', '2023-12-03 22:28:19'),
(19, 'ea quia autem', 'Atque quo suscipit quidem amet fugit vel deserunt porro. Facere illo minima dolores rerum. Amet non in qui rerum necessitatibus saepe rem minima.\n\nEt aut sed rerum est omnis ut. Dolore quisquam sint voluptates totam. Voluptatem rem est minima repudiandae cupiditate beatae.', 'nonformal', 'https://www.pollich.info/est-culpa-aut-non-esse-est-qui-quaerat-sed', 'http://bosco.com/voluptate-libero-illo-nulla-consequatur-dignissimos', 5, 2, '2023-12-03 22:28:19', '2023-12-03 22:28:19'),
(20, 'eveniet dolor numquam', 'Sed aliquam doloremque culpa laboriosam rerum fuga. Ratione sit illo voluptatem non. Eligendi saepe est maxime quaerat. Dolor repudiandae nihil harum ducimus nobis aliquid.\n\nEt nesciunt adipisci nihil. Dolorum repellat quo eveniet ea neque et. Maiores nobis fugiat magnam voluptatem provident porro veritatis.', 'formal', 'http://cormier.net/itaque-quia-omnis-sint-quibusdam-ad-officia', 'http://www.kris.org/sit-consequuntur-et-aliquid-blanditiis', 1, 3, '2023-12-03 22:28:19', '2023-12-03 22:28:19'),
(21, 'velit sit enim', 'Iure harum praesentium dicta similique nisi. Tempore voluptate libero porro ad nihil corrupti dolorem. Ea ipsa dolore cumque omnis reprehenderit. Iste similique consequatur esse a recusandae commodi quaerat ipsam.\n\nReiciendis expedita accusantium reprehenderit nemo. Aut veniam eveniet fuga dolore. Placeat quia tempora voluptate et pariatur nihil.', 'formal', 'http://www.goyette.biz/aut-omnis-eaque-omnis-nemo-velit-similique-itaque', 'https://quitzon.biz/numquam-nostrum-et-tenetur-iusto-sapiente-est.html', 4, 1, '2023-12-03 22:28:19', '2023-12-03 22:28:19'),
(22, 'culpa et labore', 'Reprehenderit et quis doloremque. Qui voluptas quia id quo. Voluptas quo illo temporibus quae.\n\nQuis explicabo consequatur sed mollitia omnis qui sed nostrum. Voluptates voluptas modi eaque magni quo provident. Eos deserunt perferendis nihil quia aut aut.', 'formal', 'http://www.willms.com/', 'http://nikolaus.info/alias-eum-aut-neque-dolorem-in-dolor', 4, 2, '2023-12-03 22:28:19', '2023-12-03 22:28:19'),
(23, 'molestiae iusto quibusdam', 'Molestiae perferendis deleniti dignissimos quisquam. Quod id voluptatem et totam et dolor. Et deserunt unde iusto mollitia ut omnis minima.\n\nQuo voluptas voluptatem consequatur id et labore accusamus earum. Ut sit rerum et pariatur eos. Blanditiis tempore qui esse aut blanditiis quo placeat.', 'formal', 'https://quitzon.com/ea-sapiente-voluptatem-nihil.html', 'https://durgan.org/totam-eaque-reprehenderit-voluptas-voluptatem-sint.html', 4, 2, '2023-12-03 22:28:19', '2023-12-03 22:28:19'),
(24, 'recusandae laboriosam deserunt', 'Hic aut officiis et velit. Qui aut laudantium perferendis et doloremque non quo. Eaque dolorem recusandae laboriosam odio.\n\nVoluptas fugiat enim recusandae animi. Est reiciendis ad architecto ut laboriosam incidunt illo itaque. Reiciendis optio est totam.', 'nonformal', 'http://keebler.biz/minus-molestiae-qui-eum-voluptatem-vero-officiis', 'http://www.romaguera.com/corporis-accusamus-ut-rerum-qui-animi-sed-culpa', 1, 1, '2023-12-03 22:28:19', '2023-12-03 22:28:19'),
(25, 'similique voluptates molestiae', 'Autem consequuntur quo assumenda placeat omnis possimus sint. Dignissimos eius quidem ea numquam iure quisquam. Qui ullam sit qui dolor. Incidunt ad rerum aut nam praesentium cumque quia.\n\nConsequatur ea fugiat tenetur nisi. Distinctio et libero minus non et. Ratione laborum officiis earum aliquam at est enim.', 'nonformal', 'https://www.conn.com/quasi-veritatis-fugit-consectetur-accusamus-aliquid-aliquid', 'http://www.kling.info/sed-et-est-magni-totam', 5, 1, '2023-12-03 22:28:19', '2023-12-03 22:28:19'),
(26, 'quia commodi nemo', 'Vero enim fugit aut omnis atque autem. Rerum rem tenetur quae aut. Sint consequatur est fugiat incidunt maxime.\n\nAutem saepe dolores minus voluptatem voluptatem voluptas. Cum et ad ducimus.', 'nonformal', 'http://www.stroman.com/et-quam-velit-alias-sit-eveniet-eos-cum', 'http://www.west.com/exercitationem-nisi-minima-nisi-beatae-maxime-aut-ducimus', 5, 1, '2023-12-03 22:28:19', '2023-12-03 22:28:19'),
(27, 'cumque non id', 'Nesciunt non nulla ut. Aspernatur reprehenderit velit fugit voluptatem sit neque quos. Ut cupiditate facilis voluptatum voluptate error.\n\nEveniet iusto qui et fugiat. Et distinctio saepe rerum quidem. Aspernatur iure fuga debitis quaerat saepe expedita doloremque non.', 'formal', 'https://www.koss.com/quasi-rerum-dolorem-reiciendis-totam', 'http://trantow.net/et-culpa-rerum-nisi-corrupti', 5, 3, '2023-12-03 22:28:20', '2023-12-03 22:28:20'),
(28, 'tempore hic voluptatum', 'Inventore provident ut eum expedita temporibus. Mollitia pariatur itaque cupiditate qui a voluptate necessitatibus.\n\nReprehenderit soluta natus nemo porro voluptatem quisquam. Omnis ipsam neque quia nemo. Ipsam et et nihil numquam est laudantium quia sed. Maiores architecto odit voluptatum quos fugiat et quod voluptatibus.', 'formal', 'http://bradtke.com/consectetur-voluptatem-quos-porro-commodi-quaerat', 'http://www.cummerata.com/laborum-sequi-unde-vel-eum-totam-perspiciatis-excepturi-in.html', 6, 3, '2023-12-03 22:28:20', '2023-12-03 22:28:20'),
(29, 'minima voluptatum adipisci', 'Nesciunt tenetur reiciendis consectetur omnis dignissimos. Quia fugiat non rerum mollitia beatae possimus. Ut similique ea doloremque eaque voluptatibus repudiandae. Atque saepe possimus magni.\n\nHarum iure illo et sapiente deserunt ut enim. Nihil deleniti dolores dolores voluptate sint. Laborum voluptatem accusantium nam sapiente sed. Facilis dolores omnis repellat omnis quis.', 'nonformal', 'http://swift.com/aperiam-repellat-et-deserunt-molestiae-aliquam-vero', 'http://kutch.com/rerum-modi-aliquid-placeat-corporis-qui.html', 5, 1, '2023-12-03 22:28:20', '2023-12-03 22:28:20'),
(30, 'consequatur ipsa quo', 'Aspernatur veniam nulla dolor tempora qui. Et ipsum asperiores consequatur perspiciatis et dolore suscipit. Hic inventore aliquid enim voluptatum pariatur. Autem possimus omnis vel amet.\n\nQuos voluptatem qui numquam harum iste expedita qui deleniti. Modi harum architecto et perspiciatis ut. Error et est enim. Est porro vel repellat accusantium eos.', 'nonformal', 'http://brekke.com/', 'http://www.schneider.com/est-non-ut-voluptatibus-quia-nostrum', 1, 1, '2023-12-03 22:28:20', '2023-12-03 22:28:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(18, '2014_10_12_000000_create_users_table', 1),
(19, '2014_10_12_100000_create_password_resets_table', 1),
(20, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(21, '2019_08_19_000000_create_failed_jobs_table', 1),
(22, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(23, '2023_11_29_045626_create_categories_table', 1),
(24, '2023_11_29_045749_create_letters_table', 1),
(25, '2023_12_04_051513_create_sessions_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('nVuqO99G8BmUHdR0VwNw128Kk9teOFZCtWZCW8vY', 4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiTEk4Wmg3aHFIc09WREV2dVgxRngxcU1hYjZkVjM0NTEwVXNHTWMxdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjQ7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkZEJTZ3NiOXFtR3g4aXdvZ2F1dEsxLnE2Lk0vTGkwVWo2bXlZWjROa25KYnlscUkzcWJNLnEiO30=', 1701668885);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `level` enum('admin','user') NOT NULL DEFAULT 'user',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `level`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Isidro Hauck', 'rkuhlman@example.com', 'user', '2023-12-03 22:28:12', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'z5B5dpKo23', NULL, NULL, '2023-12-03 22:28:13', '2023-12-03 22:28:13'),
(2, 'Keira West Sr.', 'kozey.cameron@example.org', 'user', '2023-12-03 22:28:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'K0rsoGBQLl', NULL, NULL, '2023-12-03 22:28:14', '2023-12-03 22:28:14'),
(3, 'Prof. Marcia Wiza', 'anibal62@example.net', 'user', '2023-12-03 22:28:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '7ZTAMDPvcC', NULL, NULL, '2023-12-03 22:28:14', '2023-12-03 22:28:14'),
(4, 'ADMIN', 'admin@gmail.com', 'user', NULL, '$2y$10$dBSgsb9qmGx8iwogautK1.q6.M/Li0Uj6myYZ4NknJbylqI3qbM.q', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-03 22:34:20', '2023-12-03 22:34:20');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `letters`
--
ALTER TABLE `letters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `letters_categories_id_foreign` (`categories_id`),
  ADD KEY `letters_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `letters`
--
ALTER TABLE `letters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `letters`
--
ALTER TABLE `letters`
  ADD CONSTRAINT `letters_categories_id_foreign` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `letters_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
