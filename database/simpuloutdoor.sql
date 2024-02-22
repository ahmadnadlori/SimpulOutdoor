-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Jan 2022 pada 05.32
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simpuloutdoor`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_bank`
--

CREATE TABLE `tbl_bank` (
  `id_bank` int(11) NOT NULL,
  `nama_pemilik_rekening` varchar(50) NOT NULL,
  `nama_bank` varchar(50) NOT NULL,
  `nomor_rekening` varchar(50) NOT NULL,
  `logo_bank` text NOT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_bank`
--

INSERT INTO `tbl_bank` (`id_bank`, `nama_pemilik_rekening`, `nama_bank`, `nomor_rekening`, `logo_bank`, `id_user`, `tanggal_update`) VALUES
(1, 'Ahmad Nadlori', 'DANA', '085223456506', 'dana.png', 1, '2022-01-13 13:40:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_banner`
--

CREATE TABLE `tbl_banner` (
  `id` int(11) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_banner`
--

INSERT INTO `tbl_banner` (`id`, `gambar`) VALUES
(1, 'Slide2.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_data_pengiriman`
--

CREATE TABLE `tbl_data_pengiriman` (
  `id_pengiriman` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `tanggal_pembelian` datetime NOT NULL,
  `deadline_pembayaran` datetime NOT NULL,
  `status_pembelian` varchar(30) NOT NULL,
  `alasan_ditolak` text NOT NULL,
  `promo` int(11) NOT NULL,
  `total_belanja` int(11) NOT NULL,
  `total_ongkir` int(11) NOT NULL,
  `total_pembelian` int(11) NOT NULL,
  `catatan` text NOT NULL,
  `provinsi` varchar(50) NOT NULL,
  `distrik` varchar(150) NOT NULL,
  `tipe` varchar(50) NOT NULL,
  `kodepos_pengiriman` varchar(10) NOT NULL,
  `ekspedisi_pengiriman` varchar(100) NOT NULL,
  `paket_pengiriman` varchar(100) NOT NULL,
  `lama_pengiriman` int(50) NOT NULL,
  `nama_penerima` varchar(50) NOT NULL,
  `telepon_penerima` varchar(15) NOT NULL,
  `alamat_penerima` text NOT NULL,
  `tanggal_pengiriman` datetime NOT NULL,
  `tanggal_diterima` datetime NOT NULL,
  `resi_pengiriman` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_data_pengiriman`
--

INSERT INTO `tbl_data_pengiriman` (`id_pengiriman`, `id_pelanggan`, `tanggal_pembelian`, `deadline_pembayaran`, `status_pembelian`, `alasan_ditolak`, `promo`, `total_belanja`, `total_ongkir`, `total_pembelian`, `catatan`, `provinsi`, `distrik`, `tipe`, `kodepos_pengiriman`, `ekspedisi_pengiriman`, `paket_pengiriman`, `lama_pengiriman`, `nama_penerima`, `telepon_penerima`, `alamat_penerima`, `tanggal_pengiriman`, `tanggal_diterima`, `resi_pengiriman`) VALUES
(12, 4, '2021-08-04 02:56:18', '2021-08-05 02:56:18', 'Barang return disetujui', '', 0, 105000, 39000, 144000, '', 'Kalimantan Selatan', 'Banjarbaru', 'Kota', '70712', 'JNE', 'REG', 2, 'Rastafarcode', '089531290044', 'Jl. Sekumpul Gg. Purnama RT/RW 002/001 Kec. Martapura Kab. Banjar Kalimantan Selatan', '2021-08-03 22:01:46', '0000-00-00 00:00:00', '123456789'),
(13, 5, '2021-08-04 05:09:59', '2021-08-05 05:09:59', 'Barang return disetujui', '', 19950, 86000, 47000, 113050, '', 'Kalimantan Selatan', 'Banjar', 'Kabupaten', '70619', 'JNE', 'REG', 5, 'Alwi Ahmad', '082158408140', 'Banjarbaru', '2021-08-04 00:11:53', '0000-00-00 00:00:00', '1234986498895'),
(14, 5, '2021-08-04 07:19:23', '2021-08-05 07:19:23', 'Selesai', '', 23250, 119000, 36000, 131750, '', 'Kalimantan Selatan', 'Banjarbaru', 'Kota', '70712', 'JNE', 'OKE', 4, 'Alwi Ahmad', '082158408140', 'Banjarbaru', '2021-08-04 02:20:35', '2021-08-17 09:50:51', '1234986498895'),
(15, 5, '2021-08-17 14:38:26', '2021-08-18 14:38:26', 'Barang return disetujui', '', 18000, 105000, 15000, 102000, '', 'Jawa Timur', 'Gresik', 'Kabupaten', '61115', 'TIKI', 'ECO', 5, 'Alwi Ahmad', '082158408140', 'Banjarbaru', '2021-08-17 09:42:07', '0000-00-00 00:00:00', '1234986498895'),
(16, 6, '2021-08-18 07:56:37', '2021-08-19 07:56:37', 'Dikirim', '', 1678500, 10290000, 900000, 9511500, '', 'Kalimantan Selatan', 'Banjarbaru', 'Kota', '70712', 'JNE', 'OKE', 4, 'Raisa', '082158408140', 'Banjarbaru', '2021-08-18 03:01:59', '0000-00-00 00:00:00', '1234986498895'),
(18, 0, '2022-01-04 00:00:00', '0000-00-00 00:00:00', 'Selesai', '', 0, 0, 0, 1050000, '', '', '', '', '', '', '', 0, 'Aris', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(19, 7, '2022-01-13 20:48:38', '2022-01-14 20:48:38', 'Selesai', '', 0, 1500000, 100000, 1600000, '', 'Jawa Barat', 'Kuningan', 'Kabupaten', '45511', 'TIKI', 'REG', 2, 'Ahmad Nadlori', '085223456506', 'Dusun Pahing Desa Cihideunggirang Kecamatan Cidahu', '2022-01-13 14:50:16', '2022-01-13 14:51:07', '13812403481230'),
(20, 7, '2022-01-24 10:43:50', '2022-01-25 10:43:50', 'Selesai', '', 0, 129000, 7000, 136000, '', 'Jawa Barat', 'Kuningan', 'Kabupaten', '45511', 'JNE', 'CTC', 1, 'Ahmad Nadlori', '085223456506', 'Dusun Pahing Desa Cihideunggirang Kecamatan Cidahu', '2022-01-24 04:53:33', '2022-01-24 04:56:54', 'JNE121083183712'),
(21, 0, '2022-01-24 00:00:00', '0000-00-00 00:00:00', 'Selesai', '', 0, 0, 0, 120000, '', '', '', '', '', '', '', 0, 'Ahmad Nadlori', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_gambar`
--

CREATE TABLE `tbl_gambar` (
  `id_gambar` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `judul` varchar(150) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_gambar`
--

INSERT INTO `tbl_gambar` (`id_gambar`, `id_produk`, `judul`, `gambar`) VALUES
(1, 15, 'Baju Gamis Wanita Tania Set Setelan Celana Muslim Muslimah', 'batch-upload_e8977e53-fba5-4dd6-b982-a217298a28b9.jpg'),
(2, 15, 'Baju Gamis Wanita Tania Set Setelan Celana Muslim Muslimah', 'batch-upload_a27f2f57-2b8f-4a51-8710-0f0395f4fa2c.jpg'),
(3, 15, 'Baju Gamis Wanita Tania Set Setelan Celana Muslim Muslimah', 'batch-upload_44f4d942-6850-4837-b4b3-40c7a229e003.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_instansi`
--

CREATE TABLE `tbl_instansi` (
  `id_instansi` int(11) NOT NULL,
  `nama_instansi` varchar(50) NOT NULL,
  `pimpinan_instansi` varchar(50) NOT NULL,
  `email_instansi` varchar(50) NOT NULL,
  `telepon_instansi` varchar(15) NOT NULL,
  `facebook` varchar(50) NOT NULL,
  `instagram` varchar(50) NOT NULL,
  `website` varchar(50) NOT NULL,
  `logo_instansi` text NOT NULL,
  `alamat_instansi` text NOT NULL,
  `maps` text NOT NULL,
  `tentang` text NOT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_instansi`
--

INSERT INTO `tbl_instansi` (`id_instansi`, `nama_instansi`, `pimpinan_instansi`, `email_instansi`, `telepon_instansi`, `facebook`, `instagram`, `website`, `logo_instansi`, `alamat_instansi`, `maps`, `tentang`, `id_user`, `tanggal_update`) VALUES
(1, 'Simpul Outodoor', 'Ahmad Nadlori', 'ahmadnadlori8@gmail.com', '085223456506', 'https://www.facebook.com/doyscout43', 'https://www.instagram.com/nadlori8', 'https://www.simpuloutdoor.com', 'sok.png', 'Dusun Pahing Desa CIhideunggirang Kecamatan Cidahu Kabupaten Kuningan - Jawa Barat(45595)', '<iframe src=\"https://goo.gl/maps/7ZBt47FspjNpxYTz9\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'Simpul Outdoor Merupakan Perusahaan yang menyediakan Perlengakapan OUtdoor Seperti Tenda , Tas , Sepatu , Pakaian dan masih banyak yang lainnya.', 1, '2022-01-13 18:57:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(30) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `nama_kategori`, `id_user`, `tanggal_update`) VALUES
(23, 'Tenda', 1, '2022-01-13 13:15:33'),
(24, 'Sepatu', 1, '2022-01-13 13:15:40'),
(25, 'Carriel', 1, '2022-01-13 13:15:47'),
(26, 'Sleeping Bag', 1, '2022-01-13 13:16:06'),
(27, 'Hammock', 1, '2022-01-13 13:16:13'),
(28, 'Tas', 1, '2022-01-13 16:19:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_logo`
--

CREATE TABLE `tbl_logo` (
  `id` int(11) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_logo`
--

INSERT INTO `tbl_logo` (`id`, `gambar`) VALUES
(1, 'LOGO.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_notifikasi`
--

CREATE TABLE `tbl_notifikasi` (
  `id_notifikasi` int(11) NOT NULL,
  `id_pengiriman` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_notifikasi`
--

INSERT INTO `tbl_notifikasi` (`id_notifikasi`, `id_pengiriman`, `id_pelanggan`, `status`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 0),
(3, 3, 1, 0),
(4, 4, 1, 0),
(5, 5, 3, 1),
(6, 6, 3, 1),
(7, 7, 3, 1),
(8, 8, 3, 1),
(9, 9, 3, 1),
(10, 10, 3, 1),
(11, 11, 3, 1),
(12, 12, 4, 0),
(13, 13, 5, 1),
(14, 14, 5, 0),
(15, 15, 5, 0),
(16, 16, 6, 1),
(17, 19, 7, 1),
(18, 20, 7, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pelanggan`
--

CREATE TABLE `tbl_pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(50) NOT NULL,
  `email_pelanggan` varchar(50) NOT NULL,
  `password_pelanggan` varchar(60) NOT NULL,
  `telepon_pelanggan` varchar(15) NOT NULL,
  `foto_pelanggan` text NOT NULL,
  `alamat_pelanggan` text NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_pelanggan`
--

INSERT INTO `tbl_pelanggan` (`id_pelanggan`, `nama_pelanggan`, `email_pelanggan`, `password_pelanggan`, `telepon_pelanggan`, `foto_pelanggan`, `alamat_pelanggan`, `tanggal_update`) VALUES
(7, 'Ahmad Nadlori', '20190910007@uniku.ac.id', '0986e3b17e6cbc534620fc8d0bbe2e69be72962e', '085223456506', 'DSC_0088.JPG', 'Dusun Pahing Desa Cihideunggirang Kecamatan Cidahu', '2022-01-13 13:55:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pembayaran`
--

CREATE TABLE `tbl_pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `id_pengiriman` int(11) NOT NULL,
  `tgl_konfirmasi` datetime NOT NULL,
  `tgl_verifikasi` datetime NOT NULL,
  `bukti` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_pembayaran`
--

INSERT INTO `tbl_pembayaran` (`id_pembayaran`, `id_pengiriman`, `tgl_konfirmasi`, `tgl_verifikasi`, `bukti`) VALUES
(19, 20, '2022-01-24 00:00:00', '2022-01-24 00:00:00', 'WhatsApp Image 2021-12-14 at 11.36.07.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pembelian`
--

CREATE TABLE `tbl_pembelian` (
  `id_pembelian` int(11) NOT NULL,
  `id_pengiriman` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `nama_produk` tinytext NOT NULL,
  `harga_produk` int(11) NOT NULL,
  `berat_produk` int(11) NOT NULL,
  `jumlah_produk` int(11) NOT NULL,
  `subberat_produk` int(11) NOT NULL,
  `subharga_produk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_pembelian`
--

INSERT INTO `tbl_pembelian` (`id_pembelian`, `id_pengiriman`, `id_produk`, `nama_produk`, `harga_produk`, `berat_produk`, `jumlah_produk`, `subberat_produk`, `subharga_produk`) VALUES
(7, 12, 18, 'Rok plisket panjang / rok plisket mayung - Cokelat, all size', 105000, 250, 1, 250, 105000),
(8, 13, 17, 'Baju Atasan Tunik Bahan Tebal Muslimah', 86000, 250, 1, 250, 86000),
(9, 14, 14, 'Viona Baju Atasan Muslimah', 119000, 250, 1, 250, 119000),
(10, 15, 18, 'Rok plisket panjang / rok plisket mayung - Cokelat, all size', 105000, 250, 1, 250, 105000),
(11, 16, 18, 'Rok plisket panjang / rok plisket mayung - Cokelat, all size', 105000, 250, 98, 24500, 10290000),
(13, 18, 18, 'Rok plisket panjang / rok plisket mayung - Cokelat, all size', 105000, 250, 10, 250, 0),
(14, 19, 20, 'Eiger Equator', 1500000, 5000, 1, 5000, 1500000),
(15, 20, 35, 'Hammock Single V3', 129000, 500, 1, 500, 129000),
(16, 21, 36, 'HAMMOCK ULTRALIGHT', 120000, 500, 1, 500, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengadaan_produk`
--

CREATE TABLE `tbl_pengadaan_produk` (
  `id_pengadaan` int(11) NOT NULL,
  `nomor_transaksi` varchar(30) NOT NULL,
  `nama_supplier` varchar(50) NOT NULL,
  `total` int(11) NOT NULL,
  `tanggal_transaksi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_pengadaan_produk`
--

INSERT INTO `tbl_pengadaan_produk` (`id_pengadaan`, `nomor_transaksi`, `nama_supplier`, `total`, `tanggal_transaksi`) VALUES
(6, 'PBRG001', 'Avtech Indonesia', 360000, '2022-01-24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengadaan_produk_detail`
--

CREATE TABLE `tbl_pengadaan_produk_detail` (
  `id_pengadaan_detail` int(11) NOT NULL,
  `id_pengadaan` int(11) NOT NULL,
  `nama_produk` varchar(150) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_pengadaan_produk_detail`
--

INSERT INTO `tbl_pengadaan_produk_detail` (`id_pengadaan_detail`, `id_pengadaan`, `nama_produk`, `nama_kategori`, `jumlah`, `harga_beli`, `subtotal`) VALUES
(7, 6, 'HAMMOCK ULTRALIGHT', 'Hammock', 3, 120000, 360000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_produk`
--

CREATE TABLE `tbl_produk` (
  `id_produk` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_produk` tinytext NOT NULL,
  `harga_produk` int(11) NOT NULL DEFAULT 0,
  `berat_produk` int(11) NOT NULL,
  `deskripsi_produk` text NOT NULL,
  `gambar_produk` text NOT NULL,
  `terjual` int(11) NOT NULL DEFAULT 0,
  `stok` int(11) NOT NULL DEFAULT 0,
  `id_user` int(11) NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_produk`
--

INSERT INTO `tbl_produk` (`id_produk`, `id_kategori`, `nama_produk`, `harga_produk`, `berat_produk`, `deskripsi_produk`, `gambar_produk`, `terjual`, `stok`, `id_user`, `tanggal_update`) VALUES
(19, 23, 'Eiger Rendezvous', 2800000, 5000, '<p>Tenda Eiger berukuran 6 Orang</p>\r\n', 'eiger_eiger-equator-4p-tent_full04.jpg', 0, 50, 1, '2022-01-13 13:47:59'),
(20, 23, 'Eiger Equator', 1500000, 5000, '<p>Tenda Eiger berukuran 4 Person</p>\r\n', 'eiger equator.jpg', 1, 49, 1, '2022-01-13 13:49:50'),
(21, 28, 'EIGER PARAVEL 12 SHOES BAG', 159000, 500, '<p>Paravel 12 adalah tas sepatu dengan kapasitas 12 liter yang dapat memuat sepasang sepatu dan perlengkapan olahraga ringan lainnya. Adanya lubang udara pada bagian samping tas dapat membantu mengeringkan dan mengurangi bau sepatu Anda. Tas ini juga dilengkapi tali webbing yang dapat disesuaikan menjadi tas backpack dan tas jinjing.</p>\r\n\r\n<p>Dimension: 27 x 15 x 37 cm<br />\r\nMaterial: Polyester 300D, Polyester 600D</p>\r\n\r\n<p>Fitur:<br />\r\nKompartemen utama yang dapat memuat sepasang sepatu.<br />\r\nSaku depan.<br />\r\nTali webbing yang dapat disesuaikan untuk memudahkan tas dibawa sebagai tas jinjing dan sebagai backpack.<br />\r\nLubang ventilasi untuk sirkulasi udara sehingga mengurangi bau dan menjaga sepatu tetap kering.<br />\r\nBukaan yang lebar untuk memudahkan mengakses tas.</p>\r\n', 'eiger.jpg', 0, 30, 1, '2022-01-13 16:22:03'),
(22, 26, 'EIGER LAKE SIDE', 499000, 1200, '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th scope=\"row\">SKU</th>\r\n			<td>910003821</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Weight</th>\r\n			<td>1.20</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Type</th>\r\n			<td>Regular</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Activity</th>\r\n			<td>Mountaineering</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Gender</th>\r\n			<td>Male</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Material</th>\r\n			<td>43439.5625</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Dimension</th>\r\n			<td>220 x 75 x 30</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Brand</th>\r\n			<td>Eiger</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'SB eiger.jpg', 0, 20, 1, '2022-01-13 16:26:41'),
(23, 26, 'EIGER SLEEP SACK 600', 599, 1200, '<p>Bagi Anda penggemar kegiatan outdoor, kantong tidur (sleeping bag) adalah salah satu kebutuhan utama yang tidak boleh dilewatkan. Maka dari itu, Eiger menghadirkan produk Sleep Sack 600 untuk kenyamanan dan keamanan saat tidur di alam terbuka. Terbuat dari bahan polyester, produk ini memiliki daya tahan yang kuat namun tetap ringan ketika dibawa.<br />\r\n<br />\r\nDilengkapi dengan teknologi Tropic Insulation, produk ini dapat menjaga tubuh tetap hangat ketika suhu menjadi dingin terutama ketika Anda sedang berada di alam terbuka, khususnya di daerah tropis dengan suhu 15 sehingga Anda bisa tetap merasa aman dan nyaman pada saat tidur. Kantong tidur ini dilengkapi dengan tas praktis yang memudahkan Anda untuk membawanya saat berpergian. Ukuran: 215x75cm<br />\r\n<br />\r\nFitur:<br />\r\n- Dilengkapi insulasi yang efektif menjaga suhu tubuh tetap hangat<br />\r\n- Ringan<br />\r\n- Dilengkapi resleting dua arah yang menambah kenyamanan<br />\r\n- Dapat digunakan untuk Anda yang memiliki tinggi badan maksimal 180 cm.<br />\r\n- Nyaman digunakan di suhu 15C, namun dapat digunakan juga pada suhu 10C, dan paling ekstrem hingga 5C<br />\r\n- Ringkas dan tidak memakan banyak tempat<br />\r\n- Saku dalam untuk menyimpan perlengkapan ringan<br />\r\n- Dapat menahan angin agar tidak mudah masuk untuk menjaga kehangatan<br />\r\n- Dilengkapi tas praktis untuk memudahkan dibawa kemana pun<br />\r\n- Teknologi: Tropic Lite, Tropic Insulation</p>\r\n', 'EIGER SLEEP SACK 600.jpg', 0, 0, 1, '2022-01-13 16:31:48'),
(24, 24, 'EIGER S.BOOT POLLOCK', 1500000, 1500, '<p>Sepatu hiking Pollock dirancang untuk petualangan outdoor di berbagai medan seperti tanah. lumpur, curam batu, kerikil, rumput dll. Materi Suede di bagian atas terdapat campuran dengan kain polyester dan sistem konstruksi booties memungkinkan boot untuk tetap karakter yang kuat dan tahan air yang selalu tetap kering. Sol Vibram akan membuat tumit Anda lebih nyaman dan kaki tidak cepat letih. The Tecnology heel shield system akan membantu pergelangan kaki dan kaki menjadi lebih kokoh dan lebih stabil dalam setiap jenis medan.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>SKU910001077</p>\r\n\r\n<p>Weight1.50</p>\r\n\r\n<p>Type Mid Cut Shoes</p>\r\n\r\n<p>Activity Mountaineering</p>\r\n\r\n<p>Gender Male</p>\r\n\r\n<p>Material Suede Genuine Leather</p>\r\n\r\n<p>Size 42</p>\r\n\r\n<p>Brand Eiger</p>\r\n\r\n<p>Fabric Suede Genuine Leather</p>\r\n', 'EIGER SBOOT POLLOCK.jpg', 0, 30, 1, '2022-01-13 16:43:11'),
(25, 24, 'EIGER CYPRESS TX', 1200000, 1200, '<p>Cypress TX adalah mid-cut shoes yang dirancang untuk kegiatan hiking dan trekking. Dengan material utama Nubuck leather pada bagian upper yang nyaman dipakai, sepatu ini menggunakan outsole Vibram Tubava dan insole Ortholite untuk bantalan yang lebih baik.<br />\r\n<br />\r\nFitur:<br />\r\n- Terbuat dari bahan Nubuck.<br />\r\n- Menggunakan Vibram Tubava outsole untuk traksi dan kenyamanan.<br />\r\n- Insole Ortholite.<br />\r\n- Teknologi Tropic Shell dengan booties construction untuk mencegah langsung masuknya air sehingga memungkinkan permukaan kulit kaki terhindar dari basah<br />\r\n- Teknologi Heel Support System untuk stabilitas dan impak.<br />\r\n- Pelindung jari kaki dari karet</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>SKU 910004134</p>\r\n\r\n<p>Weight 1.50</p>\r\n\r\n<p>Type Mid Cut Shoes</p>\r\n\r\n<p>Activity Mountaineering</p>\r\n\r\n<p>Gender Male</p>\r\n\r\n<p>Material Upper: Nubuck, Midsole: EVA Phylon, Outsole: Vibram Tubava Compound</p>\r\n\r\n<p>Size 42</p>\r\n\r\n<p>Brand Eiger</p>\r\n\r\n<p>Fabric Upper: Nubuck, Midsole: EVA Phylon, Outsole: Vibram Tubava Compound</p>\r\n', 'EIGER CYPRESS TX.jpg', 0, 50, 1, '2022-01-13 16:49:15'),
(26, 27, 'COGHLANS SPORTSMANS', 119000, 100, 'Hammock yang ringkas, ringan, namun juga kuat. Berukuran 2,4 meter dari ujung ke ujung dengan tali berbahan polypropylene sepanjang 1,7 meter. Dengan hammock ini, Anda dapat menaikkan kaki Anda dan bersantai sejenak. Hammock yang cocok digunakan di rumah atau saat sedang berkemah, saat sedang tidak digunakan, hammock dapat dilipat dan mudah dibawa. Kuat menampung hingga 100kg.', 'COGHLANS SPORTSMANS HAMMOCK HAMMOCK.jpg', 0, 30, 1, '2022-01-13 17:11:47'),
(27, 23, 'Tenda Bromo A 2P', 925000, 3600, '<p>Tenda Bromo cocok digunakan untuk camping maupun aktifitas outdoor lainnya, dilengkapi dengan fitur double layer dan bahan waterproof yang membuat Areingers tidak perlu khawatir menghadapi cuaca hujan. Tenda Bromo siap menemani petualangan Areingers.</p>\r\n', 'Tenda Bromo A 2P.jpg', 0, 30, 1, '2022-01-13 17:20:15'),
(28, 23, 'Tenda Rinjani A 2P', 745000, 4600, '<p>Tenda Rinjani cocok digunakan untuk camping maupun aktifitas outdoor lainnya, dilengkapi dengan fitur double layer dan bahan waterproof yang membuat Areingers tidak perlu khawatir menghadapi cuaca hujan. Tenda Rinjani siap menemani petualangan Areingers.</p>\r\n\r\n<p><strong>Spesifikasi</strong></p>\r\n\r\n<ul>\r\n	<li>Size : 220 x 150 + 60 x 115 cm</li>\r\n	<li>Outer Fabrics : 210T Polyester , PU 2000mm , Ripstop</li>\r\n	<li>Inner : 210T Polyester, PU 2000mm , Ripstop</li>\r\n	<li>RL : 190T Polyester Breatheable</li>\r\n	<li>Floor : 120gr PE</li>\r\n	<li>Fiber Glass pole 8.5mm x 2 pcs, Rope , 55mm orange pegs 20cm x 6mm</li>\r\n	<li>Gross Weight : 4.6Kg</li>\r\n	<li>Carry Bag 50 x 20 x 20 cm</li>\r\n</ul>\r\n', 'Tenda Rinjani A 2P.jpg', 0, 15, 1, '2022-01-13 17:25:51'),
(29, 26, 'Sleeping Pad Chenille', 425000, 1000, '<p>Sleeping Pad Chenille cocok digunakan sebagai Alas tidur outdoor saat sedang piknik, tamasya, liburan dipantai, maupun kegiatan outdoor lainnya. Dapat dilipat menjadi seukuran tas saat tidak digunakan sehingga mudah dibawa oleh Areingers.</p>\r\n\r\n<p><strong>Spesifikasi</strong></p>\r\n\r\n<ul>\r\n	<li>Bahan : 20D Nylon Compound TPU</li>\r\n	<li>Ukuran : 8cm (Diameter) x 20cm (Height)</li>\r\n	<li>Ukuran Pad : 190 X 60 X 6 cm</li>\r\n	<li>Berat : 1000 gram</li>\r\n</ul>\r\n', 'Sleeping Pad Chenille.jpg', 0, 15, 1, '2022-01-13 17:32:21'),
(30, 28, 'Carrier Amazon 50L', 699000, 1500, '<p>Carrier Amazon 50L dirancang untuk kegiatan Pendakian&nbsp; selama 2-3 hari.Dilengkapi kompartement utama dan kompartement tambahan seperti saku depan, organizer, saku samping, dan raincover. Tas ini juga dilengkapi Air Ventilation System yang membuat sirkulasi udara pada punggung Areingers lebih optimal.</p>\r\n\r\n<p><strong>Spesifikasi</strong></p>\r\n\r\n<ul>\r\n	<li>Bahan : Polyester</li>\r\n	<li>Berat : 1500gr</li>\r\n	<li>1 Compartement</li>\r\n	<li>Single Frame</li>\r\n	<li>Organizer</li>\r\n	<li>1 saku bagian atas</li>\r\n	<li>1 saku bagian depan</li>\r\n	<li>2 saku samping</li>\r\n	<li>2 saku bagian hip belt</li>\r\n	<li>Include Raincover</li>\r\n	<li>Ukuran 62 x 30 x 18 cm</li>\r\n	<li>Kapasitas 50L</li>\r\n</ul>\r\n', 'Carrier Amazon 50L.jpg', 0, 15, 1, '2022-01-13 17:46:40'),
(31, 28, 'Carrier Merapi 50+5L', 745000, 1700, '<p>Carrier Merapi 50+5L dirancang untuk kegiatan Pendakian&nbsp; selama 2-3 hari.Dilengkapi kompartement utama dan kompartement tambahan seperti saku depan, organizer, saku samping, dan raincover. Tas ini juga dilengkapi Air Ventilation System yang membuat sirkulasi udara pada punggung Areingers lebih optimal.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Spesifikasi</strong></p>\r\n\r\n<ul>\r\n	<li>Bahan : Nylon</li>\r\n	<li>Berat : 1700gr</li>\r\n	<li>1 Compartement</li>\r\n	<li>Single Frame</li>\r\n	<li>Organizer</li>\r\n	<li>2 saku bagian atas</li>\r\n	<li>1 saku bagian dalam</li>\r\n	<li>2 saku samping</li>\r\n	<li>1 saku bagian hip belt</li>\r\n	<li>Include Raincover</li>\r\n	<li>Ukuran 57 x 28 x 18 cm</li>\r\n	<li>Kapasitas 55L</li>\r\n</ul>\r\n', 'Carrier Merapi 50+5L.jpg', 0, 30, 1, '2022-01-13 17:48:10'),
(32, 24, 'Thunder Shoes', 799000, 1000, '<p>Thunder shoes dirancang untuk kegiatan hiking dan treking dengan potongan mid cut yang memberikan proteksi lebih pada kaki Areingers saat beraktifitas. Dibuat dengan material terbaik Thunder Shoes siap menemani petualangan Areingers</p>\r\n\r\n<p><strong>Spesifikasi</strong></p>\r\n\r\n<ul>\r\n	<li>Bahan upper : Genuine leather and polyester mesh membrane</li>\r\n	<li>Mid sole : EVA</li>\r\n	<li>Outsole : Rubber</li>\r\n</ul>\r\n', 'Thunder Shoes.jpg', 0, 30, 1, '2022-01-13 17:51:45'),
(33, 24, 'Tracking Shoes', 699000, 1000, '<p>Tracking shoes dirancang untuk kegiatan hiking ringan yang memberikan proteksi lebih pada kaki Areingers saat beraktifitas.&nbsp;Dibuat dengan material terbaik. Tracking Shoes siap menemani petualangan Areingers</p>\r\n\r\n<p><strong>Fitur</strong></p>\r\n\r\n<ul>\r\n	<li>Outstanding Air Ventilation</li>\r\n	<li>High Flexibility</li>\r\n	<li>Light and Comfort</li>\r\n	<li>Breathable</li>\r\n</ul>\r\n\r\n<p><strong>Spesifikasi</strong></p>\r\n\r\n<ul>\r\n	<li>Insole : Removsable</li>\r\n</ul>\r\n', 'Tracking Shoes.jpg', 0, 30, 1, '2022-01-13 17:53:57'),
(34, 27, 'Hammock SIngle Kelambu', 199000, 500, '<p>Cocok digunakan untuk aktifitas outdoor seperti bersantai maupun beristirahat saat camping dan trekking. Dilengkapi kelambu untuk perlindungan yang lebih. Praktis dipasang dalam waktu singkat dan mudah dibawa oleh Areingers.</p>\r\n\r\n<p><strong>Spesifikasi</strong></p>\r\n\r\n<ul>\r\n	<li>Bahan : Polyester Nylon</li>\r\n	<li>Ukuran : 150 X 250 cm (Single Size)</li>\r\n	<li>Kapasitas Max : 120 Kg</li>\r\n</ul>\r\n\r\n<p><strong>Fitur</strong></p>\r\n\r\n<ul>\r\n	<li>Dilengkapi packing pouch praktis</li>\r\n</ul>\r\n', 'Hammock SIngle Kelambu.jpg', 0, 40, 1, '2022-01-13 18:25:50'),
(35, 27, 'Hammock Single V3', 129000, 500, '<p>Cocok digunakan untuk aktifitas outdoor seperti bersantai maupun beristirahat saat camping dan trekking. Praktis dipasang dalam waktu singkat dan mudah dibawa oleh Areingers.</p>\r\n\r\n<p><strong>Spesifikasi</strong></p>\r\n\r\n<ul>\r\n	<li>Bahan : Nylon</li>\r\n	<li>Panjang : 193 cm</li>\r\n	<li>Lebar : 138 cm</li>\r\n	<li>Berat : 800gr</li>\r\n	<li>Kapasitas Max 100 Kg</li>\r\n</ul>\r\n', 'Hammock Single V3.jpg', 1, 9, 1, '2022-01-24 03:52:24'),
(36, 27, 'HAMMOCK ULTRALIGHT', 120000, 500, '', 'produk__4689.jpg', 0, 13, 1, '2022-01-24 04:03:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_promo`
--

CREATE TABLE `tbl_promo` (
  `id_promo` int(11) NOT NULL,
  `kode_promo` varchar(20) NOT NULL,
  `tgl_promo` date NOT NULL,
  `diskon` int(11) NOT NULL,
  `foto_promo` text NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_return`
--

CREATE TABLE `tbl_return` (
  `id_retur` int(11) NOT NULL,
  `id_pengiriman` int(11) NOT NULL,
  `alasan` text NOT NULL,
  `bukti` text NOT NULL,
  `jenis_retur` enum('Tukar Barang','Uang Kembali','Kirim Kembali','') NOT NULL,
  `status` enum('Disetujui','Ditolak','Pending','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_supplier`
--

CREATE TABLE `tbl_supplier` (
  `id_supplier` int(11) NOT NULL,
  `nama_supplier` varchar(50) NOT NULL,
  `telepon_supplier` varchar(15) NOT NULL,
  `alamat_supplier` text NOT NULL,
  `keterangan` text NOT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_supplier`
--

INSERT INTO `tbl_supplier` (`id_supplier`, `nama_supplier`, `telepon_supplier`, `alamat_supplier`, `keterangan`, `id_user`, `tanggal_update`) VALUES
(5, 'Eiger Adventure', '08112311632', ' JL.SULTAN ISKANDAR MUDA NO.8 PLAZA GANDARIA CITY LT.1, UNIT MGC-000-01-000-022, Kebayoran lama, RT.6/RW.1, Kby. Lama Sel., Kby. Lama, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta', 'Supply All Product', 1, '2022-01-13 16:07:03'),
(6, 'Arei Outdoor Gear', '087876158272', 'Jl. Cihampelas No.19, Pasir Kaliki Bandung, Jawa Barat 40171.', 'Supply All Product', 1, '2022-01-13 16:09:13'),
(7, 'Consina Adventure', '081388883515', 'Jl.Raya Narogong KM.12 Kel. Bantargebang, Bekasi', 'Supply All Product', 1, '2022-01-13 16:10:30'),
(8, 'Avtech Indonesia', '0811944222', 'Jl. Setu Raya No.26, Setu-Cipayung , Jakarta Timur 13880', 'Supply All Product', 1, '2022-01-13 16:16:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_testimoni`
--

CREATE TABLE `tbl_testimoni` (
  `id_testimoni` int(11) NOT NULL,
  `id_pengiriman` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `testimoni` text NOT NULL,
  `gambar` text NOT NULL,
  `tanggal_ulasan` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_testimoni`
--

INSERT INTO `tbl_testimoni` (`id_testimoni`, `id_pengiriman`, `id_pelanggan`, `testimoni`, `gambar`, `tanggal_ulasan`) VALUES
(10, 19, 7, 'Tenda nya bagus sekali dan harga nya terjangkau', 'eiger equator.jpg', '0000-00-00 00:00:00'),
(11, 20, 7, '', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(60) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `jk` enum('Laki-Laki','Perempuan','','') NOT NULL,
  `foto` text NOT NULL,
  `alamat` text NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nama`, `username`, `password`, `telepon`, `jk`, `foto`, `alamat`, `tanggal_update`) VALUES
(1, 'Ahmad Nadlori', 'Nadlori', '0986e3b17e6cbc534620fc8d0bbe2e69be72962e', '085223456506', 'Laki-Laki', 'Ahmad Nadlori (1).jpg', 'Dusun Pahing Desa Cihideunggirang Kecamatan Cidahu', '2022-01-13 13:10:46');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_bank`
--
ALTER TABLE `tbl_bank`
  ADD PRIMARY KEY (`id_bank`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `tbl_banner`
--
ALTER TABLE `tbl_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_data_pengiriman`
--
ALTER TABLE `tbl_data_pengiriman`
  ADD PRIMARY KEY (`id_pengiriman`),
  ADD KEY `id_pelanggan` (`id_pelanggan`);

--
-- Indeks untuk tabel `tbl_gambar`
--
ALTER TABLE `tbl_gambar`
  ADD PRIMARY KEY (`id_gambar`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indeks untuk tabel `tbl_instansi`
--
ALTER TABLE `tbl_instansi`
  ADD PRIMARY KEY (`id_instansi`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id_kategori`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `tbl_logo`
--
ALTER TABLE `tbl_logo`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_notifikasi`
--
ALTER TABLE `tbl_notifikasi`
  ADD PRIMARY KEY (`id_notifikasi`),
  ADD KEY `id_pengiriman` (`id_pengiriman`),
  ADD KEY `id_pelanggan` (`id_pelanggan`);

--
-- Indeks untuk tabel `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indeks untuk tabel `tbl_pembayaran`
--
ALTER TABLE `tbl_pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD KEY `id_pengiriman` (`id_pengiriman`);

--
-- Indeks untuk tabel `tbl_pembelian`
--
ALTER TABLE `tbl_pembelian`
  ADD PRIMARY KEY (`id_pembelian`),
  ADD KEY `id_pengiriman` (`id_pengiriman`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indeks untuk tabel `tbl_pengadaan_produk`
--
ALTER TABLE `tbl_pengadaan_produk`
  ADD PRIMARY KEY (`id_pengadaan`);

--
-- Indeks untuk tabel `tbl_pengadaan_produk_detail`
--
ALTER TABLE `tbl_pengadaan_produk_detail`
  ADD PRIMARY KEY (`id_pengadaan_detail`),
  ADD KEY `id_pengadaan` (`id_pengadaan`);

--
-- Indeks untuk tabel `tbl_produk`
--
ALTER TABLE `tbl_produk`
  ADD PRIMARY KEY (`id_produk`),
  ADD KEY `id_kategori` (`id_kategori`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `tbl_promo`
--
ALTER TABLE `tbl_promo`
  ADD PRIMARY KEY (`id_promo`);

--
-- Indeks untuk tabel `tbl_return`
--
ALTER TABLE `tbl_return`
  ADD PRIMARY KEY (`id_retur`);

--
-- Indeks untuk tabel `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  ADD PRIMARY KEY (`id_supplier`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `tbl_testimoni`
--
ALTER TABLE `tbl_testimoni`
  ADD PRIMARY KEY (`id_testimoni`),
  ADD KEY `id_pengiriman` (`id_pengiriman`),
  ADD KEY `id_pelanggan` (`id_pelanggan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_bank`
--
ALTER TABLE `tbl_bank`
  MODIFY `id_bank` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_banner`
--
ALTER TABLE `tbl_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_data_pengiriman`
--
ALTER TABLE `tbl_data_pengiriman`
  MODIFY `id_pengiriman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `tbl_gambar`
--
ALTER TABLE `tbl_gambar`
  MODIFY `id_gambar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_instansi`
--
ALTER TABLE `tbl_instansi`
  MODIFY `id_instansi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `tbl_logo`
--
ALTER TABLE `tbl_logo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_notifikasi`
--
ALTER TABLE `tbl_notifikasi`
  MODIFY `id_notifikasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tbl_pembayaran`
--
ALTER TABLE `tbl_pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `tbl_pembelian`
--
ALTER TABLE `tbl_pembelian`
  MODIFY `id_pembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengadaan_produk`
--
ALTER TABLE `tbl_pengadaan_produk`
  MODIFY `id_pengadaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengadaan_produk_detail`
--
ALTER TABLE `tbl_pengadaan_produk_detail`
  MODIFY `id_pengadaan_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tbl_produk`
--
ALTER TABLE `tbl_produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `tbl_promo`
--
ALTER TABLE `tbl_promo`
  MODIFY `id_promo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_return`
--
ALTER TABLE `tbl_return`
  MODIFY `id_retur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tbl_testimoni`
--
ALTER TABLE `tbl_testimoni`
  MODIFY `id_testimoni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
