-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 04 Des 2020 pada 06.47
-- Versi Server: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_elearning`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE IF NOT EXISTS `tb_admin` (
  `id_admin` int(11) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `pass` varchar(40) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `nama_lengkap`, `alamat`, `no_telp`, `email`, `username`, `password`, `pass`) VALUES
(1, 'Syafri Bayu Aji Pamungkas', 'Desa Grobog Wetan RT01/02, Kec. Pangkah, Kab. Tegal', '085200146901', 'syafripamungkas14@gmail.com', 'admin', 'e00cf25ad42683b3df678c61f42c6bda', 'admin1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_berita`
--

CREATE TABLE IF NOT EXISTS `tb_berita` (
  `id_berita` int(11) NOT NULL,
  `judul` text NOT NULL,
  `isi` longtext NOT NULL,
  `tgl_posting` date NOT NULL,
  `penerbit` varchar(10) NOT NULL,
  `status` enum('aktif','tidak aktif') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_berita`
--

INSERT INTO `tb_berita` (`id_berita`, `judul`, `isi`, `tgl_posting`, `penerbit`, `status`) VALUES
(7, 'Perpanjangan lockdown untuk sekolah dasar di Kab. Tegal', 'Pemerintah Kabupaten Tegal menghimbau untuk seluruh civitas akademik khususnya Sekolah Dasar untuk melakukan kegiatan belajar di rumah masing-masing', '2020-04-08', 'admin', 'aktif'),
(8, 'MAKSUD DAN TUJUAN MEMPERINGATI HARI PAHLAWAN NASIONAL', 'Dalam kegiatan pelaksanaan / penyelenggaraan Peringatan Hari Pahlawan adalah untuk mengenang dan memperingati momentum perjuangan bangsa Indonesia dalam merebut dan mempertahankan kemerdekaan.\r\n\r\nSelanjutnya, tujuan dari Peringatan Hari Pahlawan di antaranya adalah sebagai berikut :\r\n\r\na.   Membangun ingatan kolektif dan kesadaran berbangsa berdasarkan Nilai-nilai Kepahlawanan, Keperintisan dan Kesetiakawanan Sosial.\r\n\r\nb.   Mengembangkan Nilai-nilai Kepahlawanan, Keperintisan dan Kesetiakawanan Sosial dalam cipta, rasa dan karsa kehidupan berbangsa dan bernegara.\r\n\r\nc.   Memantapkan kebanggaan sebagai bangsa dan negara Indonesia.\r\n\r\nDemikian maksud dan tujuan dari Peringatan Hari Pahlawan di Indonesia, semoga bermanfaat bagi kita semua.', '2020-05-11', 'admin', 'aktif'),
(9, 'BERBAGI KASIH MENANAM CINTA DALAM KEIMANAN DI BULAN PUASA', 'belum di isi', '2020-05-11', 'admin', 'aktif'),
(10, 'Informasi Kelulusan Siswa Siswi Kelas VI SDN JATIRAWA 02 TA. 2019/2020', 'belum di isi\r\n', '2020-05-11', 'admin', 'aktif'),
(11, 'Selamat Menunaikan Ibadah Puasa Ramadhan 1441 H', 'Assalamualaikum warahmatullahi wabarakatuh\r\n\r\nSegenap keluarga besar SD N JATIRAWA 02  selamat menunaikan ibadah puasa ramadhan 1441 H / 2020 M.\r\n\r\nSemoga Allah SWT meridhoi di setiap langkah kita, beri kita bantuan pada semua cobaan dan anggotaakan kita lihat setiap semoga amal kita mari kita dari tahun sebelumnya.\r\n\r\nAamiin yaaa robbal alamin ðŸ¤²\r\n\r\nWassalamualaikum warahmatullahi wabarakatuh', '2020-05-11', 'admin', 'aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_file_materi`
--

CREATE TABLE IF NOT EXISTS `tb_file_materi` (
  `id_materi` int(11) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `id_kelas` int(4) NOT NULL,
  `id_mapel` int(4) NOT NULL,
  `nama_file` varchar(250) NOT NULL,
  `tgl_posting` date NOT NULL,
  `pembuat` varchar(10) NOT NULL,
  `hits` int(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_file_materi`
--

INSERT INTO `tb_file_materi` (`id_materi`, `judul`, `id_kelas`, `id_mapel`, `nama_file`, `tgl_posting`, `pembuat`, `hits`) VALUES
(5, 'IPA Bab 1 Smt.1', 1, 3, 'IPA SD-MI Kelas 6. Bab 1_SMT1.pdf', '2020-06-08', '1', 4),
(6, 'IPA Bab 2 Smt.1', 1, 3, 'IPA SD-MI Kelas 6. Bab 2_SMT1.pdf', '2020-06-08', '1', 0),
(7, 'IPA Bab 3 Smt.1', 1, 3, 'IPA SD-MI Kelas 6. Bab 3_SMT1.pdf', '2020-06-10', '1', 0),
(8, 'BI Bab 1 SMT.1', 1, 1, 'Bahasa Indonesia SD-MI Kelas 6. Pelajaran 1_SMT1.pdf', '2020-06-10', '1', 2),
(9, 'BI Bab 2 SMT.1', 1, 1, 'Bahasa Indonesia SD-MI Kelas 6. Pelajaran 2_SMT1.pdf', '2020-06-10', '1', 0),
(10, 'MTK Bab 1 SMT.1', 1, 2, 'Matematika SD-MI Kelas 6. Bab 1_SMT1.pdf', '2020-06-10', '1', 1),
(11, 'MTK Bab2 SMT.1', 1, 2, 'Matematika SD-MI Kelas 6. Bab 2_SMT1.pdf', '2020-06-10', '1', 0),
(12, 'IPA Bab 1 Smt.1', 5, 3, 'IPA SD-MI Kelas 4. Bab 1_SMT1.pdf', '2020-06-10', '17', 1),
(13, 'IPA Bab 2 Smt.1', 5, 3, 'IPA SD-MI Kelas 4. Bab 2_SMT1.pdf', '2020-06-10', '17', 0),
(14, 'BI Bab 1 SMT.1', 5, 1, 'Bahasa Indonesia SD-MI Kelas 4. Bab 1_SMT1.pdf', '2020-06-10', '17', 0),
(15, 'BI Bab 2 SMT.1', 5, 1, 'Bahasa Indonesia SD-MI Kelas 4. Bab 3_SMT1.pdf', '2020-06-10', '17', 0),
(16, 'MTK Bab 1 SMT.1', 5, 2, 'MTK SD-MI Kelas 4. Bab 1_SMT1.pdf', '2020-06-10', '17', 0),
(17, 'MTK Bab 2 SMT.1', 5, 2, 'MTK SD-MI Kelas 4. Bab 2_SMT1.pdf', '2020-06-10', '17', 0),
(18, 'BI Bab 1 SMT.1', 3, 1, 'Bahasa Indonesia SD-MI Kelas 5. Bab 1_SMT1.pdf', '2020-06-10', '11', 4),
(19, 'BI Bab 2 SMT.1', 3, 1, 'Bahasa Indonesia SD-MI Kelas 5. Bab 2_SMT1.pdf', '2020-06-10', '11', 2),
(20, 'MTK Bab 1 SMT.1', 3, 2, 'Matematika SD-MI Kelas 5. Bab 1_SMT1.pdf', '2020-06-10', '11', 0),
(21, 'IPA Bab 1 Smt.1', 3, 3, 'IPA SD-MI Kelas 5. Bab 1_SMT1.pdf', '2020-06-10', '11', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_jawaban`
--

CREATE TABLE IF NOT EXISTS `tb_jawaban` (
  `id` int(11) NOT NULL,
  `id_tq` int(4) NOT NULL,
  `id_soal` int(4) NOT NULL,
  `id_siswa` int(4) NOT NULL,
  `jawaban` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_jawaban`
--

INSERT INTO `tb_jawaban` (`id`, `id_tq`, `id_soal`, `id_siswa`, `jawaban`) VALUES
(49, 1, 4, 8, 'Gak tau'),
(50, 1, 2, 8, 'Gak tau'),
(54, 2, 6, 2, 'Bengawan Solo'),
(55, 2, 5, 2, 'Jusuf Kalla'),
(56, 2, 1, 2, 'Semarang'),
(57, 1, 2, 1, 'mejikuhibiniu'),
(58, 1, 4, 1, 'Ir. Soekarno'),
(59, 1, 4, 7, 'Ir. Soekarno'),
(60, 1, 2, 7, 'mejiku'),
(61, 11, 14, 12, '1. Herbivora\r\n2. karnivora\r\n3. omnivora'),
(62, 11, 15, 12, 'omnivora : ayam,bebek,tikus, dan burung unta\r\nherbivora : sapi,kuda,rusa,kambing\r\nkrnivora : harimau,singa,hiu, ikan piranha'),
(63, 11, 17, 12, 'buaya, ular, komodo, biawak, bunglon'),
(64, 11, 16, 12, 'hewan pemakan daging. Ciri-ciri hewan karnivora : Apabila mamalia : berkaki empat, gigi tajam, hidup di darat, vivipar (beranak)'),
(65, 11, 13, 12, 'Benang Sari\r\nTangkai Bunga\r\nDasar Bunga\r\nKelopak Bunga\r\nMahkota Bunga'),
(66, 11, 17, 13, 'buaya, bunglon, ular, '),
(67, 11, 15, 13, 'omnivora:ayam,bebek,tikus, dan burung unta\r\nherbivora:sapi,kuda,rusa,kambing\r\nkrnivora:harimau,singa,hiu, ikan piranha'),
(68, 11, 14, 13, 'herbivora (hewan pemakan tumbuhan), karnivora (hewan pemakan daging), dan omnivora (hewan pemakan segala)'),
(69, 11, 16, 13, 'ewan pemakan daging. Ciri-ciri hewan karnivora : Apabila mamalia : berkaki empat, gigi tajam, hidup di darat, vivipar (beranak)'),
(70, 11, 13, 13, 'Tangkai Bunga. ...\r\nDasar Bunga. ...\r\nKelopak Bunga. ...\r\nMahkota Bunga'),
(71, 1, 4, 16, 'Ir. soekarno'),
(72, 1, 2, 16, 'mejiku');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kelas`
--

CREATE TABLE IF NOT EXISTS `tb_kelas` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(50) NOT NULL,
  `ruang` varchar(20) NOT NULL,
  `wali_kelas` int(5) NOT NULL,
  `ketua_kelas` int(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kelas`
--

INSERT INTO `tb_kelas` (`id_kelas`, `nama_kelas`, `ruang`, `wali_kelas`, `ketua_kelas`) VALUES
(1, 'VI', 'G-3', 1, 17),
(3, 'V', 'G-2', 11, 14),
(5, 'IV', 'G-1', 17, 11);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kelas_ajar`
--

CREATE TABLE IF NOT EXISTS `tb_kelas_ajar` (
  `id` int(11) NOT NULL,
  `id_kelas` int(5) NOT NULL,
  `id_pengajar` int(5) NOT NULL,
  `keterangan` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kelas_ajar`
--

INSERT INTO `tb_kelas_ajar` (`id`, `id_kelas`, `id_pengajar`, `keterangan`) VALUES
(1, 1, 1, 'Jumlah siswa 25'),
(2, 1, 8, 'aaa'),
(4, 3, 8, 'bbb'),
(5, 2, 1, 'Halo'),
(6, 5, 17, 'Jumlah siswa 28'),
(7, 3, 11, 'Jumlah siswa 30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_mapel`
--

CREATE TABLE IF NOT EXISTS `tb_mapel` (
  `id` int(11) NOT NULL,
  `kode_mapel` varchar(10) NOT NULL,
  `mapel` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_mapel`
--

INSERT INTO `tb_mapel` (`id`, `kode_mapel`, `mapel`) VALUES
(1, 'J1', 'Bahasa Indonesia'),
(2, 'J2', 'Matematika'),
(3, 'J3', 'IPA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_mapel_ajar`
--

CREATE TABLE IF NOT EXISTS `tb_mapel_ajar` (
  `id` int(11) NOT NULL,
  `id_mapel` int(5) NOT NULL,
  `id_kelas` int(5) NOT NULL,
  `id_pengajar` int(5) NOT NULL,
  `keterangan` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_mapel_ajar`
--

INSERT INTO `tb_mapel_ajar` (`id`, `id_mapel`, `id_kelas`, `id_pengajar`, `keterangan`) VALUES
(6, 1, 2, 1, 'aaa'),
(7, 1, 1, 1, 'Materi Semester 1'),
(9, 3, 2, 1, ''),
(10, 3, 1, 1, 'Materi Semester 2'),
(11, 2, 1, 1, 'Materi Semester 1'),
(12, 1, 5, 17, 'Materi Semester 1'),
(13, 1, 5, 17, 'Materi Semester 2'),
(14, 2, 5, 17, 'Materi Semester 1'),
(15, 2, 5, 17, 'Materi Semester 2'),
(16, 3, 5, 17, 'Materi Semester 1'),
(17, 3, 5, 17, 'Materi Semester 2'),
(18, 1, 3, 11, 'Materi Semester 1'),
(19, 1, 3, 11, 'Materi Semester 2'),
(20, 2, 3, 11, 'Materi Semester 1'),
(21, 2, 3, 11, 'Materi Semester 2'),
(22, 3, 3, 11, 'Materi Semester 1'),
(23, 3, 3, 11, 'Materi Semester 2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_nilai_essay`
--

CREATE TABLE IF NOT EXISTS `tb_nilai_essay` (
  `id` int(11) NOT NULL,
  `id_tq` int(5) NOT NULL,
  `id_siswa` int(5) NOT NULL,
  `nilai` double NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_nilai_essay`
--

INSERT INTO `tb_nilai_essay` (`id`, `id_tq`, `id_siswa`, `nilai`) VALUES
(4, 2, 2, 90),
(11, 1, 1, 95),
(12, 1, 7, 95),
(13, 11, 12, 132),
(14, 11, 13, 74),
(15, 1, 16, 80);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_nilai_pilgan`
--

CREATE TABLE IF NOT EXISTS `tb_nilai_pilgan` (
  `id` int(11) NOT NULL,
  `id_tq` int(4) NOT NULL,
  `id_siswa` int(4) NOT NULL,
  `benar` int(4) NOT NULL,
  `salah` int(4) NOT NULL,
  `tidak_dikerjakan` int(4) NOT NULL,
  `presentase` int(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_nilai_pilgan`
--

INSERT INTO `tb_nilai_pilgan` (`id`, `id_tq`, `id_siswa`, `benar`, `salah`, `tidak_dikerjakan`, `presentase`) VALUES
(25, 1, 8, 2, 3, 0, 40),
(27, 2, 2, 2, 0, 0, 100),
(31, 1, 1, 5, 0, 0, 100),
(32, 7, 7, 0, 0, 1, 0),
(33, 1, 7, 3, 2, 0, 60),
(34, 7, 3, 1, 0, 0, 100),
(35, 11, 12, 17, 3, 0, 85),
(36, 11, 13, 20, 0, 0, 100),
(37, 1, 16, 5, 0, 0, 100);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pengajar`
--

CREATE TABLE IF NOT EXISTS `tb_pengajar` (
  `id_pengajar` int(11) NOT NULL,
  `nip` varchar(200) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `agama` varchar(20) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `jabatan` varchar(20) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `pass` varchar(40) NOT NULL,
  `status` enum('aktif','tidak aktif') NOT NULL,
  `web` varchar(60) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pengajar`
--

INSERT INTO `tb_pengajar` (`id_pengajar`, `nip`, `nama_lengkap`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `agama`, `no_telp`, `email`, `alamat`, `jabatan`, `foto`, `username`, `password`, `pass`, `status`, `web`) VALUES
(1, '19730606 201406 1 002', 'IMAM FAKHRUDDIN, S.Pd.SD', 'Tegal', '1973-06-06', 'L', 'Islam', '085778536599', 'imam_fakh@gmail.com', 'Jl. Projosumarto 2 RT. 02 RW. 02, Desa Setu, Kec. Tarub, Tegal\r\n', 'Guru SD', 'imam.jpeg', 'imam', 'eaccb8ea6090a40a98aa28c071810371', 'imam', 'aktif', ''),
(11, '19680210 200701 2 026', 'MASLIKHA S.Pd.SD', 'Tegal', '1968-02-10', 'P', 'Islam', '085798808809', 'maslikha10@gmail.com', 'Desa Tegalwangi, RT 07 RW 02, Kec. Talang, Tegal\r\n', 'Guru SD', 'maslikha.jpg', 'likha', 'a1529e9403606f62ce1a5cc3f3ad795a', 'likha', 'aktif', ''),
(17, '19691219 200604 2 008', 'DAROJATUL ALIYAH S.Pd.SD', 'Tegal', '1969-12-19', 'P', 'Islam', '08998080909', 'aliyahdarojatul@gmail.com', 'Jl. Tanjung  RT 001 / RW 001, Desa Purbasana Kec. Tarub, Tegal\r\n', 'Guru SD', 'darojatul_aliyah.jpg', 'aliyah', '22f1dffdbf5d57f369c3fb8d3053128d', 'aliyah', 'aktif', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_siswa`
--

CREATE TABLE IF NOT EXISTS `tb_siswa` (
  `id_siswa` int(11) NOT NULL,
  `nis` varchar(20) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `agama` varchar(20) NOT NULL,
  `nama_ayah` varchar(50) NOT NULL,
  `nama_ibu` varchar(50) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `id_kelas` varchar(5) NOT NULL,
  `thn_masuk` int(5) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `pass` varchar(40) NOT NULL,
  `status` enum('aktif','tidak aktif') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_siswa`
--

INSERT INTO `tb_siswa` (`id_siswa`, `nis`, `nama_lengkap`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `agama`, `nama_ayah`, `nama_ibu`, `no_telp`, `email`, `alamat`, `id_kelas`, `thn_masuk`, `foto`, `username`, `password`, `pass`, `status`) VALUES
(2, '1212', 'Rifaatul Firdaus', 'Pati', '1997-08-20', 'P', 'Islam', 'Rifa''i', 'Basyiroh', '63767343', 'sjdhsjdh@sdjsd.co', 'Pati, Jawa Tengah', '2', 2014, 'lucu2.jpg', 'firda', '5ed291923179b73cbc6ef968b35361ff', 'firda', 'aktif'),
(9, '2402', 'NOER ELLYZA', 'Tegal', '2009-12-22', 'P', 'Islam', 'ALITROS TITO', 'SITI BADRIYAH', '085245674554', 'noeral@gmail.com', 'Desa Jatirawa RT 01/02', '5', 2016, 'anonim.png', 'noer', '17265dfa6d3fe81bd1aedc4d7968fc60', 'noer', 'aktif'),
(10, '2411', 'AZKIA DWI FITRIANI', 'Tegal', '2009-09-24', 'P', 'Islam', 'MARDAN', 'ENDANG SUSILOWATI', '08520348900', 'azkia@gmail.com', 'Desa Jatirawa RT 02 RW 01', '5', 2016, 'anonim.png', 'azkia', 'cb723b8aa118cd4973b6764249a59e83', 'azkia', 'aktif'),
(11, '2413', 'BIMA PRATAMA', 'Tegal', '2010-04-14', 'L', 'Islam', 'HARTO', 'KARMILAH', '085786865968', 'bima@gmail.com', 'Desa Jatirawa RT 01 RW 03', '5', 2016, 'anonim.png', 'bima', '7fcba392d4dcca33791a44cd892b2112', 'bima', 'aktif'),
(12, '2386', 'MOZA WULANSARI', 'Tegal', '2008-11-17', 'P', 'Islam', 'SUDIRMAN', 'EISAH', '0857869870800', 'moza@gmail.com', 'Desa Jatirawa RT 04 RW 01', '3', 2015, 'anonim.png', 'moza', 'e5d6267e9c752c89fea20d7f22fb9bec', 'moza', 'aktif'),
(13, '2391', 'DWI RISKA APRILIANI', 'Tegal', '2009-04-17', 'P', 'Islam', 'MUKHAMAD SAYID', 'ENY MARDIYANAH', '085999009090', 'riska@gmail.com', 'Desa Jatirawa RT 01 RW 01', '3', 2015, 'anonim.png', 'dwi', '7aa2602c588c05a93baf10128861aeb9', 'dwi', 'aktif'),
(14, '2394', 'IQBAL MAULANA', 'Tegal', '2009-01-14', 'L', 'Islam', 'RASMANI', 'SRI RAHAYU', '085787889999', 'iqbal@gmail.com', 'Desa Jatirawa RT 02 RW 02', '3', 2015, 'anonim.png', 'iqbal', 'eedae20fc3c7a6e9c5b1102098771c70', 'iqbal', 'aktif'),
(15, '2364', 'AVINDA HERISTIAN PUTRI', 'Tegal', '2009-01-28', 'P', 'Islam', 'RISMANTO', 'SITI HENI', '089899905567', 'avinda@gmail.com', 'Desa Jatirawa RT 03 RW 02', '1', 2014, 'anonim.png', 'avin', '416a1eb8b39a34e94235f22054ec8cbb', 'avin', 'tidak aktif'),
(16, '2365', 'DIWA MERAVIGLIOSI', 'Tegal', '2008-10-28', 'P', 'Islam', 'NUR WACHIDIN', 'DIROYAH', '0877923749290', 'diwa@gmail.com', 'Desa Jatirawa RT 05 RW 03', '1', 2014, 'anonim.png', 'diwa', '69057d313a5c95af5094fdbc3eb52b86', 'diwa', 'aktif'),
(17, '2366', 'FAJAR FADLI PANGESTU', 'Tegal', '2008-04-07', 'L', 'Islam', 'MOH. AGUNG T.', 'NURHIDAYAH', '0852113441415', 'fajar@gmail.com', 'Desa Jatirawa RT 02 RW 03', '1', 2014, 'anonim.png', 'fajar', '24bc50d85ad8fa9cda686145cf1f8aca', 'fajar', 'aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_soal_essay`
--

CREATE TABLE IF NOT EXISTS `tb_soal_essay` (
  `id_essay` int(11) NOT NULL,
  `id_tq` int(5) NOT NULL,
  `pertanyaan` text NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `tgl_buat` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_soal_essay`
--

INSERT INTO `tb_soal_essay` (`id_essay`, `id_tq`, `pertanyaan`, `gambar`, `tgl_buat`) VALUES
(1, 2, 'Apa nama ibukota Provinsi Jawa Tengah ?', '11330004_917546658327011_8090069200033803302_n.jpg', '2015-08-05'),
(2, 1, 'Apa warna pelangi ?', '11330004_917546658327011_8090069200033803302_n.jpg', '2015-08-09'),
(4, 1, 'Siapa presiden pertama Indonesia ?', '', '2015-08-09'),
(5, 2, 'Siapa wakil presiden Indonesia ?', '', '2015-08-11'),
(6, 2, 'Apa sungai terpanjang di jawa ?', '', '2015-08-11'),
(8, 10, 'Gaya adalah ?', '', '2020-05-06'),
(9, 10, 'Penggaris yang digosokkan pada rambut bisa menarik kertas kecil-kecil karena memiliki gaya ?', '', '2020-05-06'),
(10, 10, 'Air hujan yang jatuh dari atas ke bawah karena mendapatkan gaya?', '', '2020-05-06'),
(11, 10, 'Alat yang digunakan untuk mengubah energi angin menjadi energi listrik adalah ?', '', '2020-05-06'),
(12, 10, 'Sumber energi Terbesar Adalah?', '', '2020-05-06'),
(13, 11, 'Sebutkan bagian yang terkandung dalam bunga.', '', '2020-06-11'),
(14, 11, 'Jelaskan 3 grup hewan tentang jenis pakan.', '', '2020-06-11'),
(15, 11, 'Berikan contoh karnivora, herbivora, dan omnivora! 3 masing-masing.', '', '2020-06-11'),
(16, 11, 'Sebutkan karakteristik karnivora.', '', '2020-06-11'),
(17, 11, 'Sebutkan 5 contoh karnivora dari reptil.\r\n\r\n', '', '2020-06-11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_soal_pilgan`
--

CREATE TABLE IF NOT EXISTS `tb_soal_pilgan` (
  `id_pilgan` int(11) NOT NULL,
  `id_tq` int(5) NOT NULL,
  `pertanyaan` text NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `pil_a` text NOT NULL,
  `pil_b` text NOT NULL,
  `pil_c` text NOT NULL,
  `pil_d` text NOT NULL,
  `pil_e` text NOT NULL,
  `kunci` varchar(2) NOT NULL,
  `tgl_buat` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_soal_pilgan`
--

INSERT INTO `tb_soal_pilgan` (`id_pilgan`, `id_tq`, `pertanyaan`, `gambar`, `pil_a`, `pil_b`, `pil_c`, `pil_d`, `pil_e`, `kunci`, `tgl_buat`) VALUES
(2, 1, 'Apa huruf pertama dalam alphabet ?', 'lucu.jpg', 'H', 'I', 'O', 'Z', 'A', 'E', '2015-08-05'),
(3, 1, 'Apa nama ibukota negara Indonesia ?', '', 'Pati', 'Semarang', 'Surabaya', 'Jakarta', 'Medan', 'D', '2015-08-05'),
(4, 1, 'Apa arti sinomin ?', '', 'Perlawanan', 'Persamaan', 'Perbedaan', 'Pertengkaran', 'Persatuan', 'B', '2015-08-06'),
(5, 2, 'Tanggal berapa Indonesia merdeka ?', '', '17 Agustus 1965', '17 September 1945', '18 Agustus 1945', '17 Agustus 1995', '17 Agustus 1945', 'E', '2015-08-09'),
(8, 1, 'Apa arti antonim ?', '', 'Perlawanan', 'Persamaan', 'Kemiripan', 'Pertengkaran', 'Kesejahteraan', 'A', '2015-08-09'),
(9, 1, 'Siapa presiden ke-7 Negara Indonesia ?', '', 'Susiso Bambang Yudhoyono', 'Soekarno', 'Soeharto', 'Megawati Soekarno Putri', 'Joko Widodo', 'E', '2015-08-09'),
(10, 2, 'Apa ibukota Provinsi Jawa Timur ?', '', 'Surabaya', 'Semarang', 'Bandung', 'Pati', 'Rembang', 'A', '2015-08-11'),
(15, 7, 'Budi mempunyai uang Rp. 10.000, Andi Mempunyai uang Rp.6.500.  Mereka ingin membeli layangan yang harga satuannya Rp. 3.000. Budi membeli layangan sebnyak 3, sedangkan Andi sebanyak 2. Berapakah sisa uang mereka sekarang?', '', 'Budi mempunyai sisa uang Rp. 4000 dan Andi habis', 'Budi mempunyai sisa uang Rp. 500 dan Andi Rp. 1000', 'Budi mempunyai sisa uang Rp. 1000 dan Andi Rp.1000', 'Budi mempunyai sisa uang Rp. 1000 dan Andi Rp.500', 'Budi mempunyai sisa uang  habis  dan Andi Rp. 5000', 'D', '2020-03-30'),
(16, 10, 'Dalam Ilmu Pengetahuan Alam, tarikan atau dorongan disebut ....', '', 'Usaha', 'Energi', 'Gaya', 'Tenaga', 'Mekanik', 'C', '2020-05-06'),
(17, 10, 'Gaya yang digunakan oleh burung kompilasi terbang adalah gaya ...', '', 'dorong sayap', 'tarik sayap', 'dorong ekor', ' tarik ekor', 'tarik ukur', 'B', '2020-05-06'),
(18, 10, 'Alat pengukur gaya adalah ....', '', 'barometer', 'dinamometer', 'termometer', 'amperemeter', 'spedometer', 'B', '2020-05-06'),
(19, 10, 'Besarnya gaya dinyatakan dalam satuan ....', '', 'watt', 'newton', 'joule', 'kalori', 'kilogram', 'B', '2020-05-06'),
(20, 10, 'Gaya yang mengubah bentuk benda yang bisa kita temukan pada ...', '', 'kaleng dimasukkan tas', 'kaleng yang dilindas mobil', 'kaca yang terpasang', 'bola yang ditendang', 'bola yang dilempar', 'B', '2020-05-06'),
(21, 10, 'Berikut ini merupakan penyebabnya gaya gesek, kecuali ....', '', 'Permukaan benda yang kasar', 'Permukaan lantai yang kasar', 'benda mendesak lebih kuat', 'benda ditarik dengan tali', 'Permukaan lantai yang kasar', 'D', '2020-05-06'),
(22, 10, 'Berikut ini merupakan peristiwa yang terjadi karena gaya terjadi bumi, kecuali ....', '', 'batu yang dilempar ke atas jatuh ke tanah', 'bola menggelinding', 'buah mangga jatuh dari pohonnya', 'batu terasa berat jika diangkat', 'bola menggelinding', 'D', '2020-05-06'),
(23, 10, 'Anak panah melesat dari busurnya karena ....', '', 'gaya pegas', 'gaya penyelesaian', 'gaya gesek', 'gaya listrik', 'gaya dorong', 'A', '2020-05-06'),
(24, 10, 'Kegiatan berikut ini merupakan gaya yang didukung oleh ....', '', 'mengepel', 'menjinjing tas', 'becak yang menarik', 'ditutup laci', 'menyapu', 'D', '2020-05-06'),
(25, 10, 'Panas dapat terjadi karena adanya ....', '', 'sumber panas', 'radiasi', 'perubahan panas', 'perubahan wujud', 'suhu', 'A', '2020-05-06'),
(26, 11, 'Ventilator tempat perpindahan oksigen dan karbon dioksida..', '', 'paru-paru', 'hati', 'hidung', 'tenggorokan', 'kerongkongan', 'A', '2020-06-11'),
(27, 11, 'Gelembung halus di paru-paru, tempat perpindahan oksigen dan karbon dioksida, disebut.', '', 'bronchia', 'bronkiolus', 'alveoli', 'spiral', 'alveolus', 'C', '2020-06-11'),
(28, 11, 'Alat pencernaan makanan yang menghasilkan enzim untuk membantu proses pencernaan kimia makanan disebut.', '', 'memakan pencernaan', 'saluran pencernaan', 'usus kecil', 'perut', 'usus besar', 'D', '2020-06-11'),
(29, 11, 'Gerakan meremas yang dilakukan oleh dinding faring disebut gerakan.', '', 'ekstrentik', 'mengubah', 'hanya', 'kinetis', 'gerak peristaltik', 'E', '2020-06-11'),
(30, 11, 'Proses pencernaan dalam perut yang didukung oleh enzim.', '', 'pepsin', 'amilaze', 'perjalanan', 'lipase', 'amino', 'A', '2020-06-11'),
(31, 11, 'Hewan berikutnya yang bernafas dengan paru-paru adalah.', '', 'Lumba-lumba dan kuda', 'Ikan dan paus', 'Berudu dan ikan', 'Ikan dan lumba-lumba', 'katak', 'A', '2020-06-11'),
(32, 11, 'Di bawah ini adalah urutan yang benar untuk pencernaan manusia.', '', 'Rongga mulut - kerongkongan - lambung - usus besar - usus kecil', 'Rongga mulut - kerongkongan - lambung - usus kecil - usus besar', 'Rongga mulut - kerongkongan - usus kecil - lambung - usus besar', 'Rongga mulut - lambung - kerongkongan - usus kecil - usus besar', 'Rongga mulut - lambung - kerongkongan - usus kecil - anus', 'B', '2020-06-11'),
(33, 11, 'Penyerapan jus makanan terjadi di.', '', 'perut', 'kerongkongan', 'usus besar', 'usus kecil', 'usus 12 jari', 'D', '2020-06-11'),
(34, 11, 'Vitamin yang tidak larut dalam air adalah.', '', 'A dan B', 'D dan K', 'A dan C', 'B dan C', 'D dan A', 'B', '2020-06-11'),
(35, 11, 'Enzim yang mencerna lemak adalah.', '', 'amilase', 'renin', 'lipase', 'pepsin', 'renin', 'C', '2020-06-11'),
(36, 11, 'Perangkat pernapasan yang bertindak sebagai pompa darah.', '', 'kerongkongan', 'paru-paru', 'arteri', 'vena', 'hati', 'E', '2020-06-11'),
(37, 11, 'Aliran darah dari jantung ke paru-paru dan kembali ke jantung disebut sebagai.', '', 'sirkulasi darah tertutup', 'sirkulasi yang bagus', 'sirkulasi darah terbuka', 'sirkulasi darah kecil', 'aliran darah lancar', 'D', '2020-06-11'),
(38, 11, 'Lapisan paru-paru disebut.', '', 'papilla', 'selaput lendir', 'selaput paru-paru', 'selaput jala', 'endoterm', 'C', '2020-06-11'),
(39, 11, 'Penyakit pernapasan adalah.', '', 'rakhitis', 'bronkitis', 'penyakit tipus', 'Tekanan darah tinggi', 'gondok', 'B', '2020-06-11'),
(40, 11, 'Lubang di mana udara bisa masuk serangga disebut.', '', 'aib', 'spiral', 'tangki septik', 'hidung', 'alveoli', 'A', '2020-06-11'),
(41, 11, 'Penyimpanan tanaman tebu dan sagu.', '', 'akar', 'daunnya', 'batangnya', 'buah', 'ranting', 'C', '2020-06-11'),
(42, 11, 'Adaptasi morfologis pada hewan misalnya.', '', 'Bentuk gigi pada mamalia', 'kerbau berkubang', 'Anjing itu mengibaskan ekornya', 'Penyu selalu berjemur', 'burung bertengger', 'A', '2020-06-11'),
(43, 11, 'Bagian sel tanaman yang mengandung bahan daun hijau disebut.', '', 'kloroplas', 'zat hijau', 'khloroform', 'klorin', 'klorofil', 'C', '2020-06-11'),
(44, 11, 'Berikut adalah tanaman yang tunasnya digunakan sebagai sayuran', '', 'bambu', 'kubis', 'kaktus', 'mustard Hijau', 'pepaya', 'E', '2020-06-11'),
(45, 11, 'Tanaman yang menyimpan cadangan makanan dalam umbi adalah.', '', 'pisang', 'bawang merah', 'anggur', 'kedelai', 'bawang putih', 'A', '2020-06-11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_topik_quiz`
--

CREATE TABLE IF NOT EXISTS `tb_topik_quiz` (
  `id_tq` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `id_kelas` int(5) NOT NULL,
  `id_mapel` int(5) NOT NULL,
  `tgl_buat` datetime NOT NULL,
  `pembuat` varchar(10) NOT NULL,
  `waktu_soal` int(8) NOT NULL,
  `info` varchar(250) NOT NULL,
  `status` enum('aktif','tidak aktif') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_topik_quiz`
--

INSERT INTO `tb_topik_quiz` (`id_tq`, `judul`, `id_kelas`, `id_mapel`, `tgl_buat`, `pembuat`, `waktu_soal`, `info`, `status`) VALUES
(1, 'Ulangan Harian 1', 1, 1, '2020-11-22 00:00:00', '1', 1800, 'close book', 'aktif'),
(2, 'Ulangan Harian 1', 2, 2, '2015-08-05 00:00:00', 'admin', 1200, 'Ulangan hari Kamis', 'aktif'),
(4, 'Ulangan Tengah Semester 1', 4, 1, '2015-08-07 00:00:00', 'admin', 600, 'Kerjakan dengan teliti', 'aktif'),
(6, '', 0, 2, '2020-03-29 00:00:00', '1', 2700, 'Close Book, Close Kalkulator', 'aktif'),
(7, 'Ulangan Harian 3', 1, 2, '2020-05-07 00:00:00', '1', 2700, 'Close Book', 'tidak aktif'),
(10, 'Tugas IPA 3', 1, 3, '2020-05-06 00:00:00', '1', 2700, 'Open Book', 'aktif'),
(11, 'Ulangan Harian 4', 3, 3, '2020-06-10 00:00:00', '11', 2400, 'Open Catatan', 'aktif');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tb_berita`
--
ALTER TABLE `tb_berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `tb_file_materi`
--
ALTER TABLE `tb_file_materi`
  ADD PRIMARY KEY (`id_materi`);

--
-- Indexes for table `tb_jawaban`
--
ALTER TABLE `tb_jawaban`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `tb_kelas_ajar`
--
ALTER TABLE `tb_kelas_ajar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_mapel`
--
ALTER TABLE `tb_mapel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_mapel_ajar`
--
ALTER TABLE `tb_mapel_ajar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_nilai_essay`
--
ALTER TABLE `tb_nilai_essay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_nilai_pilgan`
--
ALTER TABLE `tb_nilai_pilgan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pengajar`
--
ALTER TABLE `tb_pengajar`
  ADD PRIMARY KEY (`id_pengajar`);

--
-- Indexes for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `tb_soal_essay`
--
ALTER TABLE `tb_soal_essay`
  ADD PRIMARY KEY (`id_essay`);

--
-- Indexes for table `tb_soal_pilgan`
--
ALTER TABLE `tb_soal_pilgan`
  ADD PRIMARY KEY (`id_pilgan`);

--
-- Indexes for table `tb_topik_quiz`
--
ALTER TABLE `tb_topik_quiz`
  ADD PRIMARY KEY (`id_tq`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_berita`
--
ALTER TABLE `tb_berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tb_file_materi`
--
ALTER TABLE `tb_file_materi`
  MODIFY `id_materi` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `tb_jawaban`
--
ALTER TABLE `tb_jawaban`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tb_kelas_ajar`
--
ALTER TABLE `tb_kelas_ajar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tb_mapel`
--
ALTER TABLE `tb_mapel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tb_mapel_ajar`
--
ALTER TABLE `tb_mapel_ajar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `tb_nilai_essay`
--
ALTER TABLE `tb_nilai_essay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `tb_nilai_pilgan`
--
ALTER TABLE `tb_nilai_pilgan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `tb_pengajar`
--
ALTER TABLE `tb_pengajar`
  MODIFY `id_pengajar` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `tb_soal_essay`
--
ALTER TABLE `tb_soal_essay`
  MODIFY `id_essay` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `tb_soal_pilgan`
--
ALTER TABLE `tb_soal_pilgan`
  MODIFY `id_pilgan` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `tb_topik_quiz`
--
ALTER TABLE `tb_topik_quiz`
  MODIFY `id_tq` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
