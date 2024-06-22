SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(15) NOT NULL,
  `kompetensi_keahlian` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`, `kompetensi_keahlian`) VALUES
(1, 'VII-A', 'IPA'),
(2, 'VII-B', 'IPA'),
(3, 'VIII-A', 'IPA'),
(4, 'VIII-B', 'IPA'),
(5, 'IX-A', 'IPA'),
(6, 'IX-B', 'IPA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `id_petugas` int(11) NOT NULL,
  `nisn` varchar(10) NOT NULL,
  `tgl_bayar` date NOT NULL,
  `bulan_dibayar` varchar(10) NOT NULL,
  `tahun_dibayar` varchar(4) NOT NULL,
  `id_spp` int(11) NOT NULL,
  `jumlah_bayar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_petugas`, `nisn`, `tgl_bayar`, `bulan_dibayar`, `tahun_dibayar`, `id_spp`, `jumlah_bayar`) VALUES
(1, 11, '3109228373', '2024-02-02', 'februari', '2024', 1, 800000),
(2, 11, '3109228373', '2024-01-02', 'januari', '2024', 1, 800000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(60) NOT NULL,
  `nama_petugas` varchar(50) NOT NULL,
  `level` enum('admin','petugas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `username`, `password`, `nama_petugas`, `level`) VALUES
(8, 'admin', '$2y$10$fzafzw6hYOCoLrT8z9Ay3eZ85q0GrtcrQQffmqRR/UolP1WWK/Xiu', 'admin', 'admin'),
(11, 'petugas', '$2y$10$Sw3dRzwEaVnDcjt5/.a/TeXt1QKXbCYE3PSAB3btD6y22SQ97gIyO', 'petugas', 'petugas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `nisn` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `id_spp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`nisn`,`nama`, `id_kelas`,`id_spp`) VALUES
('3109228373', 'ABUDZAR ALFAQIH EL SALMAN', 1, 1),
('0092867843', 'ALBAB BAHRUL ULUM', 1, 1),
('0104783624', 'ALI NAHTUFIRZA', 1, 1),
('0109477759', 'ARI PRATAMA', 1, 1),
('0115698406', 'AZKA KHAIRUL AZAM', 1, 1),
('0117419376', 'AZMI AJIALUL HAQ', 1, 1),
('0101062976', 'BAGINDA ABIYASA', 1, 1),
('0118446142', 'DERIFAL MAULANA PUTRA', 1, 1),
('3107846424', 'DIAS ANGGA PUTRA', 1, 1),
('0114730805', 'DZAKWAN KASYFI AS-SHIDQII', 1, 1),

('0116151947', 'ALEXANDRIA SAUZAN M', 2, 1),
('0117650244', 'ALIFATUNNISA NURRIZQIA', 2, 1),
('3105906699', 'ALISHA ZIHNI AL-QISTH', 2, 1),
('0101519833', 'ANGGIA SALAMATUN NISA', 2, 1),
('0117335413', 'ASRI PUTRI NURAFIFAH', 2, 1),
('0102485855', 'AURA SAFA ALZAHRA', 2, 1),
('3110445736', 'AYRA SYAHIDA NURHADIARAHMA', 2, 1),
('0113301713', 'BILQIS ZAHROTU SYIFA', 2, 1),
('0111498517', 'BINTAN NASYIFA RUWAIDA', 2, 1),
('0118263126', 'DEYA PERMATA HAKIKI', 2, 1),

('3105365827', 'ABDU LUTFI', 3, 1),
('3090191586', 'ALGIRA PUTRA PRATAMA', 3, 1),
('0105562032', 'ALWAN FAUZI SOLIHIN', 3, 1),
('0091805480', 'AMRAN RAZIAL MUNAWAR', 3, 1),
('0093682326', 'ARFA ARYA NUR MUBAROK', 3, 1),
('0096743810', 'DAFFA MAHARDIKA RAMADHAN', 3, 1),
('0089216749', 'DZACKY ZAINUL HAK', 3, 1),
('0099302597', 'EBY FARUQ RABBANY', 3, 1),
('0102460030', 'HASBI SIGIT JANUAR', 3, 1),
('0103946727', 'M RAKA BANYU NEGARA', 3, 1),

('0101288093', 'AFIFAH NAILATUL ZAKIYAH', 4, 1),
('0102188307', 'AINI MARHAMAH SHOIMAH', 4, 1),
('0101875477', 'AINUN NUR ARDIANI', 4, 1),
('0098572369', 'ALYA KARIMATUL HAYAH', 4, 1),
('0093745623', 'AQILATUL AULIA KAMIL', 4, 1),
('0104632431', 'AULIA IZZATUNNISA', 4, 1),
('0104632431', 'AZMIA NABILATUNNISA', 4, 1),
('0117236252', 'DILLA ALPADILATUN NAZMI', 4, 1),
('0099468689', 'GHANEA BILQIS PUTRI ADELIA', 4, 1),
('0095695778', 'GINA FAZRIATUL MUNAJAH', 4, 1),

('0099195489', 'ABU KASSYAF AD-DIIN', 5, 1),
('0088406772', 'AJMI PADILAH DARUL MUKOMAH', 5, 1),
('0081469751', 'AKBAR MUHAMMAD NURUL HAJJ', 5, 1),
('0084001643', 'ALLYNE AMALA BRYANA', 5, 1),
('0086854713', 'AZKA MUHAMMAD ABDILLAH PRIATNA', 5, 1),
('0081691900', 'FAISHAL AQILAH SHIDDIQ', 5, 1),
('0091526386', 'GILANG CAHYANA', 5, 1),
('0093280427', 'HISYAM NAUFAL BARKAH', 5, 1),
('0081439479', 'IRSYAD FAHMI LATANSANI', 5, 1),
('0083607261', 'JUNIOR MIFTAH MERDEKA', 5, 1),

('0089853236', 'ALIFA NURUL HASNA', 6, 1),
('3088682760', 'ALYA FITROH MUSLIMAH', 6, 1),
('0089421983', 'ALYA NAZMI ARHAMI', 6, 1),
('0098487998', 'ASSYA AFUZA SOPANI', 6, 1),
('0095340239', 'DESY NURHASANAH', 6, 1),
('2094221048', 'DHIYAA AYU MAISAAN', 6, 1),
('0081111714', 'DZIDNI SABILA ELSALMAN', 6, 1),
('0099520333', 'FAIHA FASHILA', 6, 1),
('0093820525', 'FAIHA SALSABILA', 6, 1),
('0084753584', 'GHADIZA FAZA GHAIDA', 6, 1);
-- --------------------------------------------------------

--
-- Struktur dari tabel `spp`
--

CREATE TABLE `spp` (
  `id_spp` int(11) NOT NULL,
  `tahun` year(4) NOT NULL,
  `nominal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `spp`
--

INSERT INTO `spp` (`id_spp`, `tahun`, `nominal`) VALUES
(1, 2024, 800000),
(2, 2023, 800000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD KEY `id_petugas` (`id_petugas`),
  ADD KEY `nisn` (`nisn`),
  ADD KEY `id_spp` (`id_spp`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nisn`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `id_spp` (`id_spp`);

--
-- Indexes for table `spp`
--
ALTER TABLE `spp`
  ADD PRIMARY KEY (`id_spp`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `spp`
--
ALTER TABLE `spp`
  MODIFY `id_spp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_ibfk_1` FOREIGN KEY (`id_petugas`) REFERENCES `petugas` (`id_petugas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pembayaran_ibfk_3` FOREIGN KEY (`nisn`) REFERENCES `siswa` (`nisn`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`id_spp`) REFERENCES `spp` (`id_spp`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `siswa_ibfk_2` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
