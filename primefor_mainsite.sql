-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 01 Okt 2024 pada 10.06
-- Versi server: 10.6.19-MariaDB-cll-lve
-- Versi PHP: 8.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `primefor_mainsite`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `slug` text NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `preface` varchar(255) DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `keyword` varchar(75) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `insert_user` int(11) DEFAULT NULL,
  `insert_date` datetime DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `release_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `article`
--

INSERT INTO `article` (`id`, `slug`, `title`, `preface`, `detail`, `keyword`, `image`, `status`, `insert_user`, `insert_date`, `update_user`, `update_date`, `release_date`) VALUES
(10, 'inovasi-pada-forklift-dan-garpu-forkliftm', 'Inovasi pada Forklift dan garpu Forkliftm', 'Berbagai inovasi Forklift dan garpu Forklift menyesuaikan dengan Kebutuhan', '<p>Berikut adalah beberapa contoh inovasi pada forklift dan garpu forklift:</p>\n<ul>\n<li><strong>Automatic Guided Vehicle (AGV</strong>) adalah sebuah kendaraan yang bergerak secara otomatis dengan mengikuti tanda di lantai, magnet, laser, navigasi tertentu atau sinyal-sinyal nirkabel. AGV dapat membawa berbagai macam barang dari palet hingga bahan-bahan eksplosif serta dapat membawa dan meletakkan barang tersebut di tempat yang sudah ditentukan.</li>\n<li><strong>Garpu dengan kamera yang terintegrasi</strong>adalah sebuah tekhnologi di garpu forklift yang dilengkapi oleh kamera di ujungnya. Dengan kamera ini, operator forklift dimungkinkan untuk membawa barang yang besar tanpa harus takut pandangannya terhalangi oleh barang itu</li>\n<li><strong>Garpu Pelindung Muatan (<em>Cargo Saver</em>).&nbsp;</strong>Apabila garpu forklift salah posisi ketika mengangkat barang dengan menggunakan palet, maka garpu forklift bisa merusak barang yang dibawa dalam palet. Hal ini tentunya akan menjadi masalah yang besar apabila barang yang rusak itu mengandung zat yang berbahaya. Untuk mencegah resiko tadi, garpu dengan pelindung muatan biasa dicoba. Garpu jenis ini memiliki prinsip apabila garpu tersebut berbenturan dengan benda yang keras, maka pelindung di ujung garpu akan terbuka dan menutup sisi tajam dari ujung garpu.</li>\n</ul>\n<p>&nbsp;</p>\n<ul>\n<li><strong>Garpu dengan ekstensi.&nbsp;</strong>Garpu ini memiliki tambahan panjang yang disambung di rangkaian utama garpu. Garpu jenis ini ideal untuk mengangkut barang-barang yang memilki panjang lebih daripada panjang garpu yang asli.</li>\n<li><strong>Garpu dengan lapisan Polyurethane.</strong>Jika Anda takut barang-barang yang dibawa oleh forklift Anda tergores, atau Anda takut barang yang dibawa tergelincir karena terlalu licin, maka garpu dengan lapisan polyurethane adalah jawaban untuk permasalahan Anda. Garpu ini memiliki daya rekat yang lebih kuat daripada garpu biasa dan memiliki kehalusan permukaan sehingga menjamin barang Anda anti gores.</li>\n<li><strong>Garpu yang bisa ditekuk.</strong>Apabila forklift Anda diharuskan berjalan di Jalan Raya, maka pastinya Anda harus memikirkan aspek keselamatan dari forklift Anda dan juga pengguna jalan yang sama dengan forklift Anda. Forklift yang digunakan di jalan raya dapat menimbulkan resiko kecelakaan karena forklift memiliki garpu di depan yang mungkin tidak semua pengguna jalan tahu.</li>\n</ul>\n<p>Untuk mengurangi resiko kecelakaan, Anda bisa untuk menggunakan garpu forklift yang bisa ditekuk ke atas, sehingga tidak ada garpu lagi yang menjorok ke depan ketika forklift anda berjalan di jalan raya.</p>\n<p>&nbsp;</p>\n<ul>\n<li><strong>Garpu Ex-Proof.&nbsp;</strong>Bagi Anda yang bekerja di tempat yang memerlukan pemindahan bahan-bahan mudah meledak, Anda pastinya diharuskan untuk menjamin tidak adanya listrik statis yang meloncat ke bahan itu. Forklift dengan garpu ex-proof adalah jaminan tidak adanya listrik statis yang akan loncat ke bahan mudah meledak Anda</li>\n</ul>', 'inovasi,forklift,garpu,kebutuhan', '151231214621.jpg', 1, 1, NULL, 17, NULL, '2015-12-31 21:47:01'),
(9, 'sejarah-forklift', 'Sejarah Forklift', 'Asal Usul Forklift', '<p>Forklift atau yang juga sering disebut sebagai lift truck adalah salah satu material handling yang paling banyak digunakan di dunia logistic. Tujuan utama dari penggunaan forklift adalah untuk transportasi dan mengangkat. Sejarah forklift pertama kali diawali pada tahun 1906. Pennsylvania Railroad memperkenalkan sebuah batery platform truck untuk memindahkan barang. Perkembangan selanjutnya banyak terjadi pada saat perang dunia I. Konon menurut sejarah, dunia logistik sangat dipengaruhi oleh adanya perang.<br /> Forklift modern sekarang sudah berbeda jauh dengan sejarah awal forklift yang ada. Forklift modern benar-benar difokuskan untuk kedua hal utama, yaitu transportasi dan mengangkat. Bagian-bagian utama dari sebuah forklift adalah: <br /> &bull; Fork<br /> Adalah bagian utama dari sebuah forklift yang berfungsi sebagai penopang untuk membawa dan mengangkat barang. Fork berbentuk dua buah besi lurus dengan panjang rata-rata 2.5 m. Posisi peletakan barang di atas pallet masuk ke dalam fork juga menentukan beban maksimal yang dapat diangkat oleh sebuah forklift <br /> &bull; Carriage<br /> Carriage merupakan bagian dari forklift yang berfungsi sebagai penghubung antara mast dan fork. Ditempat inilah fork melekat. Carriage juga berfungsi sebagai sandaran dan pengaman bagi barang-barang dalam pallet untuk transportasi atau pengangkatan. <br /> &bull; Mast<br /> Mast adalah bagian utama terkait dengan fungsi kerja sebuah fork dalam forklift. Mast adalah satu bagian yang berupa dua buah besi tebal yang terkait dengan hydrolic system dari sebuah forklift. Mast ini berfungsi untuk lifting dan tilting. <br /> &bull; Overhead Guard <br /> Overhead guard merupakan pelindung bagi seorang forklift driver. Fungsi pelindungan ini terkait dengan safety user dari kemungkinan terjadinya barang yang jatuh saat diangkat atau diturunkan, juga sebagai pelindung dari panas dan hujan.<br /> &bull; Counterweight<br /> Counterweight merupakan bagian penyeimbang beban dari sebuah forklift. Letaknya berlawanan dengan posisi fork. <br /> Menurut sumber energi yang digunakan, ada 2 macam jenis forklift yang saat ini populer digunakan.<br /> &bull; Forklift diesel <br /> Forklift ini menggunakan mesin diesel sebagai penggeraknya. Secara otomatis, forklift ini berbahan bakar solar dan biasanya memiliki jenis ban yang terbuat dari karet seperti ban kendaraan pada umumnya.<br /> &bull; Forklift electric <br /> Forklif ini menggunakan tenaga batery sebagai sumber energinya. Batery ini mempunyai lifetime sehingga diperlukan sebuah alat untuk mer-recharge sehingga batery dapat berfungsi kembali. Fungsi perawatan ini sangat penting untuk kelangsungan hidup dari sebuah batery.<br /> Beberapa forklift manufacture yang cukup terkenal di dunia antara lain:<br /> &bull; Toyota<br /> &bull; Jungheinrich<br /> &bull; Komatsu<br /> &bull; Mitsubishi<br /> Beberapa pertimbangan yang biasanya digunakan dalam memilih sebuah forklift antara lain:<br /> &bull; Jenis medan yang ditempuh oleh forklift<br /> &bull; Jenis barang dan berat barang<br /> &bull; Layout gudang<br /> Sampai saat ini, fungsi forklift masih belum dapat tergantikan. Dengan perubahan perkembangan dunia logistik yang begitu cepat, keberadaan sebuah forklfit masing sangat diperlukan. Persaingan kecepatan menjadi salah satu pertimbangan mengapa orang masih memilih menggunakan forklift sebagai satu-satunya material handling yang digunakan.</p>', 'Asal,Forklift,sejarah,garpu', '180117173132.jpg', 1, 1, NULL, 17, NULL, '2015-12-31 01:01:01'),
(11, 'keselamatan-kerja-menggunakan-forklift', 'KESELAMATAN KERJA MENGGUNAKAN FORKLIFT', 'Keselamatan pada saat menggunakan forklift selalu menjadi perhatian. Tingkat kecelakaan yang terjadi akibat dari kecerobohan operator forklift menjadi kerugian banyak pihak. Ini harus di minimalisir dan di jadikan pengalaman agar tidak terjadi lagi di har', '<p>Dalam penggunaan forklift hal yang pertama harus diperhatikan yakni operator, seorang operator forklift wajib mempunyai SIO (Surat Ijin Operator). Meskipun seorang operator yang sudah mahir sekalipun tetap saja operator tersebut telah melanggar ketentuan yang berlaku. Karena operator yang mempunya SIO mengerti betul akan dasar-dasar keselamatan kerja pada Forklift.&nbsp;</p>\n<p>Operator Kerja Forklift.</p>\n<p>Keselamatan kerja menggunakan forklift, operator forklift yang bekerja berdasarkan target dan jam kerja ters menerus, membutuhkan energi pada saat mengendari forklift. Energi yang dibutuhkan dalam mengendarai forklift sangat tinggi, butuh konsentrasi yang tinggi pula agar tidak terjadi kecelakaan. Seorang operator forklift sangat dikhawatirkan mengalami keletihan serta kecapean dan hal ini bisa mengancam keselamatannya, barang yang dimuat, dan orang di sekitarnya. Operator forklift perlu menjaga stamina, dan kesehatannya sehingga dapat memaksimalkan kinerja dalam mengoperasikan forklift.</p>\n<p>Keselamatan jiwa pada saat menggunakan forklift harus ditunjang pula dengan forklift yang memadai dan layak dioperasikan. Kondisi forklift yang layak operasi menjadi salah satu faktor keselamatan kerja bagi operator yang mengoperasikan.&nbsp;</p>', 'keselamatan kerja, forklift, safety forklift', '151231205902.jpg', 1, 15, NULL, 17, NULL, '2017-12-07 01:01:01'),
(12, 'bagaimana-cara-menangani-battery-forklift-dengan-benar', 'Bagaimana Cara Menangani Battery Forklift Dengan Benar?', 'Battery forklift atau aki forklift adalah salah satu spare part yang terpenting untuk dijaga agar forklift tetap produktif. Untuk itu perlu ditangani atau dimantain dengan benar, sehingga investasi Anda memberi hasil maksimal.', '<p>Battery forklift atau aki forklift adalah salah satu spare part yang terpenting untuk dijaga agar forklift tetap produktif. Untuk itu perlu ditangani atau dimantain dengan benar, sehingga investasi Anda memberi hasil maksimal.</p>\n<p>Karena berat dan berbahaya, <a title=\"jual battery forklift\" href=\"../../../../blog/read/19/Jual+Battery+Forklift+Berkualitas+dan+Bergaransi.html\">battery forklift</a> perlu ditangani dengan hati-hati, untuk itu yang menanganinya juga perlu dilakukan orang yang profesional. Berikut adalah beberapa tips yang perlu Anda ketahui seputar penanganan battery forklift:</p>\n<p><strong>1.Gunakan alat yang khusus yang dibutuhkan seperti pallet khusus untuk memindahkan battery.</strong> Karena sangat berat, sangat tidak disarankan untuk diangkat oleh satu orang. Selain itu petugas juga harus menggunakan sepatu pelindung ketika memindahkan battery tersebut.</p>\n<p><strong>2.Tempat cuci tangan dan mata harus di dekat tempat penanganan battery.</strong> Hal ini karena kemungkinan cairan battery terkena pada petugas bisa saja terjadi, jadi jika hal yang tidak diinginkan terjadi, petugas bisa segera dilarikan untuk membersihkan tangan dan mata yang terkena cairan secepat mungkin.</p>\n<p><strong>3.Pakaian dan perlengkapan pelindung harus digunakan saat menangani battery forklift.</strong> Termasuk safety glasses atau kaca mata pelindung dan juga sarung tangan.</p>\n<p><strong>4.Jangan menggunakan perhiasan yang terbuat dari logam</strong>, seperti gelang, kalung atau cicin untuk menghindari sengatan listrik.</p>\n<p>Apakah Anda butuh orang yang profesional untuk menangani battery forklift di perusahaan Anda? Anda bisa mempercayakannya kepada PT Prime Forklift Service, karena kami sudah melayani berbagai perusahaan selama bertahun-tahun. Dengan jaminan layanan yang prima dan profesional, perusahaan kami akan memberikan jaminan kepuasan, hubungi sekarang juga untuk <strong><a title=\"service battery forklift\" href=\"../../../../services.html\" target=\"_blank\">service battery forklift</a></strong> di <strong>Telp 0267 8402 034, Whatsapp di 082210812989 atau melalui email : primeforklift.ind@gmail.com.</strong></p>', 'jual battery forklift, jual accu forklift, jual aki forklift,battery forkli', '180106160950.jpg', 1, 16, NULL, 17, NULL, '2018-01-06 16:01:01'),
(13, 'bagaimana-memilih-forklift-yang-sesuai-dengan-kebutuhan-bisnis-anda', 'Bagaimana Memilih Forklift Yang Sesuai Dengan Kebutuhan Bisnis Anda?', 'Membuat pilihat yang tepat, terutama dalam alat berat seperti forklift sangatlah penting, karena hal ini berdampak terhadap biaya operasional, produktifitas dan manajemen stok barang. Selain itu, untuk forklift sendiri juga ada banyak pilihan, yang didisa', '<p>Membuat pilihat yang tepat, terutama dalam alat berat seperti forklift sangatlah penting, karena hal ini berdampak terhadap biaya operasional, produktifitas dan manajemen stok barang. Selain itu, untuk forklift sendiri juga ada banyak pilihan, yang didisain berdasarkan kebutuhan pekerjaannya yang spesifik.</p>\n<p>Jadi, bagaimana caranya memilih forklift yang tepat untuk usaha Anda? Berikut adalah beberapa tips yang bisa membantu Anda untuk memilih forklift tersebut:</p>\n<p><strong>1. Pertimbangkan lingkungan usaha Anda</strong></p>\n<p>Salah satu yang menjadi pertimbangan adalah lingkungan usaha Anda, karena hal tersebut akan mempengaruhi tipe forklift yang tepat, seperti jenis bannya dan juga jenis mesinnya. Pertimbangkan kondisi lantai dan juga ruangan tempat forklift akan dipergunakan :</p>\n<p>- Lantai yang halus atau kasar?</p>\n<p>- Dalam ruangan, luar ruangan atau dipakai di luar maupun dalam ruangan?</p>\n<p>- Berapa jam sehari forklift itu akan digunakan?</p>\n<p><strong>2. Ukuran barang dan kapasitas</strong></p>\n<p>Akan menjadi pilihan buruk jika Anda memilih forklift yang memiliki kapasitas maksimum dibawah berat atau ukuran barang-barang yang akan diangkat. Jadi penting untuk memperhatikan :</p>\n<p>- Barang apa yang akan diangkat oleh forklift tersebut?</p>\n<p>- Berapa rata-rata berat yang akan diangkat?</p>\n<p>- Berapa maksimum berat yang akan diangkat?</p>\n<p>- Berapa ukuran maksimal besarnya barang?</p>\n<p>Dengan mengetahui dari awal semua itu, maka Anda akan lebih efektif dalam memilih forklift yang tepat.</p>\n<p><strong>3. Tinggi maksimum</strong></p>\n<p>Tinggi maksimum perlu ditentukan dari awal, hal ini berkaitan dengan tinggi gudang dan juga penempatan barang. Hal ini akan berpengaruh karena bisa mengurangi resiko forklift jatuh karena ketidak seimbangan antara tinggi penempatan barang dan berat barang yang dibawa.</p>\n<p><strong>4. Jenis bahan bakar</strong></p>\n<p>Ada beberapa tipe forklift berdasarkan bahan bakarnya, namun yang sering dipakai adalah elektrik dan diesel. Kelebihan forklift elektrik adalah lebih awet, bebas polusi udara dan suara, sehingga cocok untuk bekerja di dalam ruangan yang tertutup sekalipun.</p>\n<p>Sedangkan untuk kelebihan forklift diesel, memiliki kekuatan yang lebih besar dan cepat, dan lebih cocok untuk diluar ruangan.</p>\n<p><strong>5. Memilih berdasarkan ban forklift</strong></p>\n<p>Ada berbagai tipe ban forklift. Yang paling umum adalah jenis solid, namun ada tipe lainnya yang sesuai dengan kebutuhan dan juga lingkungan penggunaan forlift.</p>\n<p><strong>6. Forklift baru atau forklift bekas?</strong></p>\n<p>Apakah Anda mau membeli forklift baru atau forklift bekas? Hal ini bisa disesuaikan dengan buget perusahaan. Bahkan Anda bisa memilih untuk sewa forlift saja, hal ini memudahkan untuk memilih forklift yang dibutuhkan, Anda juga tidak dibebani dalam masalah perawatan dan banyak hal lainnya.</p>\n<p>Bagaimana, apakah Anda sudah bisa membayangkan forklift yang akan Anda gunakan. Jika Anda ingin konsultasi dan info lebih jelas seputar berbagai jenis forklift, <a title=\"sewa forklift\" href=\"../../../../services.html\">sewa forklift,</a> <a title=\"jual spare part forklift\" href=\"../../../../services.html\">jual spare part forklift</a>, dan jual beli forklift, silahkan hubungi kami sekarang juga, <a title=\"PT Prime Forklift Services, sewa dan service forklift\" href=\"../../../../\">PT Prime Forklift Services</a>, rekan terpercaya Anda dalam penanganan barang :&nbsp;<strong> Telp 0267 8402 034, Whatsapp di 082210812989 atau melalui email : primeforklift.ind@gmail.com.</strong></p>', 'forklift,sewa forklift,jual beli forklift,', '180106163751.jpg', 1, 16, NULL, 17, NULL, '2018-01-06 16:30:01'),
(14, 'lebih-untung-mana-pilih-spare-part-asli-atau-kw-untuk-forklift-yang-anda-gunakan', 'Lebih Untung Mana? Pilih Spare Part Asli Atau KW Untuk Forklift Yang Anda Gunakan', 'Apa Anda pikir bahwa genuine spare part atau spare part asli itu mahal? Tunggu dulu, jika melakukan perhitungan lebih detail terbukti bahwa spare part asli menurunkan biaya operasional dan mengoptimalkan produktifitas bisnis', '<p>Salah satu faktor utama untuk menjaga produktifitas forklift dalam sebuah usaha adalah menggunakan sparepart forklift yang asli dan berkualitas. Apa Anda pikir bahwa genuine sparepart atau sparepart asli itu mahal? Tunggu dulu, jika melakukan perhitungan lebih detail terbukti bahwa sparepart asli menurunkan biaya operasional dan mengoptimalkan produktifitas bisnis. <br />Apa alasannya?<br /><strong>1. Spare part forklift yang genuine atau asli memiliki kualitas yang terjamin</strong><br />Setiap spare part asli dibuat dengan kualitas dan presisi yang dijamin oleh perusahaan yang membuatnya. Dengan memilih spare part yang asli, Anda menjaga agar interaksi antar komponen dalam mesin menjadi optimum atau maksimal sehingga akan menghasilkan performa terbaik.<br /><strong>2. Sparepart genuine menjaga garansi forklift Anda</strong><br />Penggunaan sparepart kw atau bukan yang asli bukan hanya membuat Anda rugi karena mesin menjadi cepat rusak, namun juga bisa merusak atau membatalkan garansi dan service suport dari perusahaan forklift tersebut. Jadi, jika Anda tidak mempertimbangkan hal ini, maka Anda akan mengalami kerugian besar. <br /><strong>3. Selalu ada suplai dan kesediaan</strong><br />Ya, salah satu yang bisa diandalkan dari <a title=\"sparepart forklift komatsu\" href=\"http://www.komatsupartsbook.com/\">sparepart asli</a> adalah mereka selalu produksi dan menjamin kesediaan produk untuk mendukung performa forklift merek mereka tetap produktif. Jadi, Anda tidak perlu kuatir akan kelangsungan dari spare part forklift yang Anda gunakan. <br />Setelah mengetahui tiga keuntungan menggunakan genuine spare part untuk forklift Anda, pastikan Anda menghubungi PT Prime Forklift Services yang sudah bertahun-tahun menjadi di menjual spare part asli untuk forklift berbagai merek dan bahkan menyediakan service yang terpercaya dan dapat diandalkan. <br /><strong><a title=\"jual spare part forklift\" href=\"../../../../\" target=\"_blank\">PT Prime Forklift Services</a></strong> sudah lama dipercaya oleh berbagai perusahaan seperti PT. INDOPOLY, PT. MOLTEN ALUMUNIUM PRODUCER INDONESIA, PT. S-IK INDONESIA, PT. H-ONE KOGI PRIMA AUTO TECHNOLOGIES INDONESIA, PT. FURUKAWA, PT. HAGIHARA, dan masih banyak lainnya untuk memaksimalkan usaha mereka dengan mempercayakan <a title=\"service dan jual sparepart forklift\" href=\"../../../../services.html\" target=\"_blank\">perawatan dan pembelian spare part forklift</a> mereka kepada kami. Hubungi kami sekarang juga, dengan Contact person : <strong>Bpk Surya atau Ibu Meni di 082210812989 (WA) atau telp di 02678402034</strong> atau melalui email di primeforklift.ind@gmail.com.</p>', 'sparepart forklift,sparepart forklift asli,forklift genuine spare part,gara', '180117172616.jpg', 1, 16, NULL, 17, NULL, '2018-01-17 17:01:01'),
(15, 'fungsi-dan-kegunaan-forklift-blue-spot-zone-light', 'Fungsi dan Kegunaan Forklift Blue Spot Zone Light', 'Tahukah Anda bahwa hampir 40% kecelakaan yang berhubungan dengan forklift tidak dialami oleh operator forklift, tetapi oleh pekerja yang berjalan di sekitar forklift itu. Itu sebabnya forklift bukan hanya perlu dilengkapi pengaman bagi si operator namun j', '<p>Tahukah Anda bahwa hampir 40% kecelakaan yang berhubungan dengan forklift tidak dialami oleh operator forklift, tetapi oleh pekerja yang berjalan di sekitar forklift itu. Itu sebabnya forklift bukan hanya perlu dilengkapi pengaman bagi si operator namun juga sistem peringatan dan keamanan untuk mereka yang bekerja disekitarnya. Itulah sebabnya diciptakan Forklift Blue Spot Zone Light. <br />Orang yang bekerja di sekitar forklift beroperasi harus tahu kemana forklift itu bergerak, dari mana datangnya dan juga berapa cepat. Dengan adanya Forklift Blue Spot Light, hal itu teratasi. Adanya Forklift Blue Spot Zone Light tidak akan mengganggu konsentrasi operator forklift dan juga menjadi sistem peringatan yang efektif bagi pekerja yang ada disekitarnya sehingga bisa berada di jarak yang aman. <br />Bagaimana cara kerja Forklift Blue Spot Zone Light?<br />Forklift Blue Spot Zone Light akan memancarkan cahaya biru terang ke lantai di depan atau di belakang forklift, ketika forklift itu dioperasikan. Sinar itu membuat operator forklift melihat kemana arah forklift lain yang sedang bekerja di sekitarnya, bahkan diruangan yang sempit atau pojokan dengan jarak pandang yang tidak memungkinkan. Si operator akan bisa memperkirakan berapa jarak forklift lain itu, kemana arahnya, dan berapa cepat, sehingga ia bisa membuat keputusan yang tepat dan aman. <br />Selain itu juga para pekerja yang berjalan kaki dan bahkan yang sedang sibuk dengan pekerjaannya bisa melihat sinar biru yang mendekat ke arahnya dan bisa menghindari kecelakaan terjadi. <br />Jadi pada akhirnya, alat ini akan membuat lingkungan kerja aman, efektif meningkatkan produktifitas dan juga mudah cara pemasangannya. <br />Jika Anda berminat dan ingin membeli alat ini, segera hubungi <strong>PT <a title=\"sewa dan service forklift\" href=\"../../../../\" target=\"_blank\">Prime Forklift Services</a></strong>, <strong>menjual spare part forklift yang lengkap dan terpercaya, kontak : Pak Surya atau Ibu Meni di no Telp 0267 8402 034, Whatsapp di 082210812989 dan juga melalui email : primeforklift.ind@gmail.com.</strong> <br />PT Prime Forklift Services juga : <br /><em><strong>1.<a title=\"jual ban solif forklift\" href=\"../../../../services.html\" target=\"_blank\"> Menjual ban solid forklift</a> </strong></em>berbagai merek seperti Trellborg<em><strong>, </strong></em>Brodgstone<em><strong>, Aichi, Continental, Kumai, Achilles, </strong></em>dll<em><strong>. </strong></em><br /><em><strong>2.<a title=\"jual aki forklift\" href=\"../../../../services.html\"> Menjual </a></strong></em>aki<a title=\"jual aki forklift\" href=\"../../../../services.html\"><em><strong> forklift </strong></em></a>baru merek<em><strong> GS-YUASA</strong></em><br /><em><strong>3. Menerima service </strong></em>aki<em><strong> forklift</strong></em><br /><em><strong>4. Menerima press ban solid forklift dan press on </strong></em><br /><em><strong>5. Menjual rotary lamp, </strong></em>head lamp<em><strong>, safety lamp (blue spot zone dan red light), dan </strong></em>berbagai<a title=\"jual spare part forklift\" href=\"../../../../services.html\" target=\"_blank\"> spare part forklift</a><em><strong>&nbsp;</strong></em>lainnya<em><strong>.</strong></em></p>\n<p><em><strong>&lt;iframe src=\"//www.youtube.com/embed/_dMi0z6dgpw\" width=\"425\" height=\"350\"&gt;&lt;/iframe></strong></em></p>', 'Forklift Blue Spot Zone Light, sistem keamanan forklift,lampu pengaman fork', '180131165241.jpg', 1, 16, NULL, 17, NULL, '2018-01-31 16:01:01'),
(16, 'jasa-service-forklift-wilayah-bekasi-cibitung-cikarang-karawang-cikampek-dan-purwakarta', 'Jasa Service Forklift wilayah BEKASI, CIBITUNG, CIKARANG, KARAWANG, CIKAMPEK DAN PURWAKARTA', 'PT Prime Forklift Services berkomitmen untuk memberikan layanan yang memuaskan pelanggan melalui jasa service forklift untuk wilayah BEKASI, CIBITUNG, CIKARANG, KARAWANG, CIKAMPEK DAN PURWAKARTA.', '<p>PT Prime Forklift Services berkomitmen untuk memberikan layanan yang memuaskan pelanggan melalui <strong>jasa service forklift</strong> untuk wilayah BEKASI, CIBITUNG, CIKARANG, KARAWANG, CIKAMPEK DAN PURWAKARTA. Selain service forklift yang terpercaya, kami juga <strong>penyediaan sparepart forklift</strong> yang terbaik dari distributor resmi dan bergaransi.</p>\n<p><br />Layanan service forklift kami melayani berbagai merek forklift, seperti forklift Toyota, forklift Mitsubishi, Forklitf Nichiyu dan lainnya. Kami juga menangani service forklift diesel maupun elektrik. Selain itu, sudah banyak perusahaan mempercayakan kepada PT Prime Forklift Services untuk menangani service forklift mereka, sehingga kondisi forklift mereka tetap prima dan produktifitas tetap terjaga.</p>\n<p><br />Berikut adalah beberapa perusahaan yang sudah menggunakan jasa kami :</p>\n<p><br />PT. INDOPOLY, PT. MOLTEN ALUMUNIUM PRODUCER INDONESIA, PT. S-IK INDONESIA, PT. H-ONE KOGI PRIMA AUTO TECHNOLOGIES INDONESIA, PT. FURUKAWA, PT. HAGIHARA, PT. EPITERMA MAS KONSTRUKSI, PT. TSURATA, PT. CUNETSU, PT. EHWA, PT. MATSUZAWA PELITA FURNITURE INDONESIA, PT. CRESTEC, PT. GLOBAL SHINSEI INDONESIA, PT. CITRA NUGERAH KARYA, PT. VICTORY BLESSING INDONESIA, dan masih banyak lagi lainnya.</p>\n<p><br />Jika Anda membutuhkan jasa service forklift baik diesel maupun elektrik, ataupun service battery forklift, segera hubungan PT Prime Forklift Services, : <strong>Pak Surya atau Ibu Meni</strong> di no <strong>Telp <a href=\"telp:+622678402034\">0267 8402 034</a></strong>, Whatsapp di <strong><a>082210812989</a></strong> dan juga melalui email : <a href=\"mailto:primeforklift.ind@gmail.com.\"><strong>primeforklift.ind@gmail.com</strong>. </a></p>\n<p>Tag keyword :<a title=\"PT Prime Forklift Services - Jasa Service Forklift\" href=\"../../../../blog/read/16/Jasa+Service+Forklift+wilayah+BEKASI,+CIBITUNG,+CIKARANG,+KARAWANG,+CIKAMPEK+DAN+PURWAKARTA.html\">jasa service forklift</a>,<a title=\"PT Prime Forklift Services-Jasa Service forklift\" href=\"../../../../blog/read/16/Jasa+Service+Forklift+wilayah+BEKASI,+CIBITUNG,+CIKARANG,+KARAWANG,+CIKAMPEK+DAN+PURWAKARTA.html\">service forklift</a>,<a title=\"PT Prime Forklift Services-Jasa Service forklift\" href=\"../../../../blog/read/16/Jasa+Service+Forklift+wilayah+BEKASI,+CIBITUNG,+CIKARANG,+KARAWANG,+CIKAMPEK+DAN+PURWAKARTA.html\">service forklift bekasi</a>,&nbsp;<a title=\"PT Prime Forklift Services-Jasa Service forklift\" href=\"../../../../blog/read/16/Jasa+Service+Forklift+wilayah+BEKASI,+CIBITUNG,+CIKARANG,+KARAWANG,+CIKAMPEK+DAN+PURWAKARTA.html\">service forklift cibitung</a>,<a title=\"PT Prime Forklift Services-Jasa Service forklift\" href=\"../../../../blog/read/16/Jasa+Service+Forklift+wilayah+BEKASI,+CIBITUNG,+CIKARANG,+KARAWANG,+CIKAMPEK+DAN+PURWAKARTA.html\">service forklift cikarang</a>,<a title=\"PT Prime Forklift Services - Jasa Service Forklift\" href=\"../../../../blog/read/16/Jasa+Service+Forklift+wilayah+BEKASI,+CIBITUNG,+CIKARANG,+KARAWANG,+CIKAMPEK+DAN+PURWAKARTA.html\">service forklift karawang</a>,<a title=\"PT Prime Forklift Services - Jasa service forklift cikampek\" href=\"../../../../blog/read/16/Jasa+Service+Forklift+wilayah+BEKASI,+CIBITUNG,+CIKARANG,+KARAWANG,+CIKAMPEK+DAN+PURWAKARTA.html\">service forklift cikampek</a>,<a title=\"jasa service forklift\" href=\"../../../../blog/read/16/Jasa+Service+Forklift+wilayah+BEKASI,+CIBITUNG,+CIKARANG,+KARAWANG,+CIKAMPEK+DAN+PURWAKARTA.html\">service forklift purwakarta</a>,<a title=\"service aki forklift\" href=\"../../../../services.html\">service aki forklift</a>,<a title=\"service battery forklift\" href=\"../../../../blog/read/12/Bagaimana+Cara+Menangani+Battery+Forklift+Dengan+Benar?.html\">service battery forklift</a>,<a title=\"jual sparepart forklift\" href=\"../../../../services.html\">jual sparepart forklift</a></p>', 'jasa service forklift,service forklift,service forklift bekasi,service fork', '180219164216.jpg', 1, 16, NULL, 17, NULL, '2018-02-12 13:57:01'),
(17, 'pt-prime-forklift-services-sedia-spare-part-forklift-berbagai-merek', 'PT Prime Forklift Services Sedia Spare Part Forklift Berbagai Merek', 'PT.Prime Forklift menjual spare part forklift berbagai merek seperti forklift Komatsu, Toyota, Mitsubishi,Nichiyu CAT, TCM, Nissan dll. Tersedia untuk forklift elektrik, forklift diesel maupun forklift gas.', '<p>Kesediaan sparepart forklift sangat penting untuk menjaga produktifitas, untuk itu <strong>PT.Prime Forklift menjual spare part forklift berbagai merek seperti forklift Komatsu, Toyota, Mitsubishi,Nichiyu CAT, TCM, Nissan dll.</strong> Tersedia untuk forklift elektrik, forklift diesel maupun forklift gas.</p>\n<p><br />Suku cadang atau spare part forklift yang dijual meliputi komponen chasis, komponen engine, komponen elektrik hingga perlengkapan keamanan kerja seperti rotary lamp, head lamp, safety lamp (Blue Spot Zone dan Red Light) aki/battery forklift berbagai merek hingga ban forklift berbagai merk.</p>\n<p><br />Anda bisa percayakan kebutuhan spare part forklift untuk perusahaan Anda kepada PT Prime Forklift Services karena perusahaan kami telah dipercaya oleh berbagai perusahaan di wilayah Bekasi, Cibitung, Cikarang, Karawang, Cikampek dan Purwakarta untuk menangani berbagai kebutuhan berkaitan dengan forklift mereka, mulai dari service forklift, penyediaan spare part, penggantian dan press ban solid forklift, hingga service aki.</p>\n<p>Pelanggan kami diantaranya adalah : PT. INDOPOLY, PT. MOLTEN ALUMUNIUM PRODUCER INDONESIA, PT. S-IK INDONESIA, PT. H-ONE KOGI PRIMA AUTO TECHNOLOGIES INDONESIA, PT. FURUKAWA, PT. HAGIHARA, PT. EPITERMA MAS KONSTRUKSI, PT. TSURATA, PT. CUNETSU, PT. EHWA, PT. MATSUZAWA PELITA FURNITURE INDONESIA, PT. CRESTEC, PT. GLOBAL SHINSEI INDONESIA, PT. CITRA NUGERAH KARYA, PT. VICTORY BLESSING INDONESIA, dan masih banyak lagi lainnya.</p>\n<p>Tunggu apa lagi, hubungi kami sekarang juga, PT Prime Forklift Services dengan Pak Surya atau Ibu Meni di no <strong>Telp 0267 8402 034</strong>, <strong>Whatsapp di 082210812989</strong> dan juga melalui <strong>email : <a href=\"mailto:primeforklift.ind@gmail.com\">primeforklift.ind@gmail.com</a>.</strong></p>\n<p>Keyword tag :&nbsp;jual spare part forklift,spare part forklift berbagai merek,spare part forklift toyota,spare part forklift mitsubishi,spare part forklift nichiyu,spare part forklift cat,spare part forklift tcm, spare part forklift nissa,jual battery forklift,jual aki forklift, jual accu forklift, jual ban forklift, press ban forklift solid, press on,</p>', 'jual spare part forklift,spare part forklift berbagai merek,spare part fork', '180219162634.jpg', 1, 16, NULL, 17, NULL, '2018-02-19 16:01:01'),
(18, 'pt-prime-forklift-services-jual-ban-forklift-berbagai-merk-berkualitas', 'PT. Prime Forklift Services Jual Ban Forklift Berbagai Merk Berkualitas', 'Prime Forklift Services, menjual ban forklift solid berbagai merk. Dapatkan ban forklift berkualitas di tempat kami, dengan layanan yang memuaskan akan menjamin performa forklift Anda.', '<p><strong><a title=\"Jual ban forklift solid\" href=\"../../../../blog/read/18/PT.+Prime+Forklift+Services+Jual+Ban+Forklift+Berbagai+Merk+Berkualitas.html\">Jual Ban Forklift Solid</a> Berbagai Merk</strong></p>\n<p>Prime Forklift Services, men<a title=\"jual ban forklift\" href=\"../../../../blog/read/18/PT.+Prime+Forklift+Services+Jual+Ban+Forklift+Berbagai+Merk+Berkualitas.html\">jual ban forklift</a> solid berbagai merk. Dapatkan ban forklift berkualitas di tempat kami, dengan layanan yang memuaskan akan menjamin performa forklift Anda. Hal ini sudah dibuktikan oleh puluhan klien PT Prime Forklift Services.</p>\n<p>Layanan penjualan ban forklift kami meliputi wilayah Bekasi, Cibitung, Cikarang, Karawang, Cikampek dan Purwakarta. Ban forklift yang tersedia dari berbagi merk seperti Trelleborg, Bridgstone, Aichi, Continental, Kumai, Achilles, dan masih banyak lagi lainnya.</p>\n<p><strong>Menyediakan Jasa Pres Ban Solid dan Press On</strong></p>\n<p>Selain menjual ban forklift, PT Prime Forklift Services juga menyediakan jasa Press Ban Solid dan Press On. Dengan workshop dan peralatan yang modern, serta mekanik yang berpengalaman, maka PT Prime Forklift Services berani menjanjikan layanan yang prima dan memuaskan.</p>\n<p>Untuk mendapatkan penawaran harga ban forklift yang terbaik, hubungi kami sekarang juga di nomor telephone &nbsp;<strong>0267-8402034 atau (wa) +6282210812989</strong> dengan Pak Surya atau Ibu Meni&nbsp;. Atau Anda bisa mengunjungi kantor PT.Prime Forklift Services di Ruko Plaza Kosambi, No. 18F, Karawang, Jawa Barat.</p>', 'jual ban forklift,jual ban forklift solid,jual ban forklift solid Trellebor', '180313151853.jpg', 1, 16, NULL, 17, NULL, '2018-03-13 13:07:01'),
(19, 'jual-battery-forklift-berkualitas-dan-bergaransi', 'Jual Battery Forklift Berkualitas dan Bergaransi', 'PT Prime Forklift Services, jual battery forklift berkualitas dan bergaransi. Tersedia berbagai merek yang sudah dikenal di Indonesia maupun internasional. Selain itu, kami juga menyediakan jasa purna jual yaitu service battery forklift yang ditangani ole', '<p>PT Prime Forklift Services, jual battery forklift berkualitas dan bergaransi. Tersedia berbagai merek yang sudah dikenal di Indonesia maupun internasional. Selain itu, kami juga menyediakan jasa purna jual yaitu service battery forklift yang ditangani oleh teknisi yang berpengalaman. Layanan <a title=\"Jual battery forklift\" href=\"../../../../\" target=\"_blank\">PT Prime Forklift Services</a> meliputi wilayah Bekasi, Cibitung, Cikarang, Karawang, Cikampek dan Purwakarta.</p>\n<p>Selain <a title=\"jual battery forklift\" href=\"../../../../blog/read/19/Jual+Battery+Forklift+Berkualitas+dan+Bergaransi.html\">menjual battrery forklift </a>untuk berbagai merk forklift, PT Prime Forklift Services juga menjual berbagai spare part keamanan forklift, ban forklist dan juga menyediakan jasa press ban solid dan press on. Karenanya Anda bisa mempercayakan segala kebutuhan untuk perawatan forklift perusahaan Anda kepada kami.</p>\n<p>Keuntungan membeli battery forklift dan spare part forklift di PT Prime Forklift Services adalah :</p>\n<ul>\n<li>Genuine part</li>\n<li>Jaminan mutu terpercaya</li>\n<li>Layanan prima purna jual</li>\n<li>Ditangani oleh teknisi berpengalaman</li>\n<li>Memiliki workshop sendiri</li>\n<li>Sudah dipercaya oleh banyak perusahaan</li>\n</ul>\n<p>Jadi tunggu apa lagi, untuk kebutuhan <a title=\"battery forklift\" href=\"https://en.wikipedia.org/wiki/Battery_(electricity)\">battery</a> forklift Anda, segera hubungi kami sekarang juga di nomor telephone &nbsp;<strong>0267-8402034 atau (wa) +6282210812989</strong>&nbsp;dengan Pak Surya atau Ibu Meni&nbsp;. Atau Anda bisa mengunjungi kantor PT.Prime Forklift Services di Ruko Plaza Kosambi, No. 18F, Karawang, Jawa Barat.</p>', 'jual battery forklift,jual battery forklift bergaransi,jual battery forklif', '180327094458.jpg', 1, 16, NULL, 17, NULL, '2018-03-27 09:01:01'),
(20, 'rental-forklift-terpercaya-di-wilayah-bekasi-cibitung-cikarang-karawang-cikampek-dan-purwakarta', 'Rental Forklift Terpercaya di Wilayah Bekasi, Cibitung, Cikarang, Karawang, Cikampek dan Purwakarta', 'Sudah banyak perusahaan membuktikan bahwa pilihan mereka untuk rental forklift kepada PT Prime Forklift Services adalah keputusan terbaik mereka. Mengapa? Karena PT Prime Forklift Services memberikan layanan rental kontrak atau sewa forklift tahunan denga', '<p>Sudah banyak perusahaan membuktikan bahwa pilihan mereka untuk <a title=\"rental forklift \" href=\"../../services/read/2.html\" target=\"_blank\">rental forklift</a> kepada PT Prime Forklift Services adalah keputusan terbaik mereka. Mengapa? Karena PT Prime Forklift Services memberikan layanan rental kontrak atau sewa forklift tahunan dengan layanan yang prima dan kualitas terjamin.</p>\n<p>Dengan memberikan perhatian kepada kebutuhan konsumen, memberikan <a title=\"forklift\" href=\"https://en.wikipedia.org/wiki/Forklift\">forklift </a>dengan kualitas dan performa terbaik, serta melakukan maintenance secara regular, membuat perusahaan-perusahaan yang rental forklift kepada kami merasa puas.</p>\n<p>Apa kelebihannya rental forklift disini :</p>\n<ul>\n<li>Memiliki reputasi yang terpercaya dengan berbagai perusahaan besar di wilayah Bekasi, Cibitung, Cikarang, Karawang, Cikampek dan Purwakarta</li>\n<li>Ahli dibidangnya dan memberikan layanan prima</li>\n<li>Melakukan maintenance secara regular</li>\n<li>Memiliki mekanik yang handal dan berpengalaman</li>\n<li>Harga yang kompetitif</li>\n</ul>\n<p>Jadi tunggu apa lagi, percayakan kebutuhan<a title=\"rental forklift\" href=\"../../\"> forklift </a>perusahaan Anda kepada kami. Untuk rental forklift, hubungi kami sekarang juga di nomor telephone &nbsp;<strong>0267-8402034 atau (wa) +6282210812989</strong>&nbsp;dengan Pak Surya atau Ibu Meni&nbsp;. Atau Anda bisa mengunjungi kantor PT.Prime Forklift Services di Ruko Plaza Kosambi, No. 18F, Karawang, Jawa Barat.</p>', 'rental forklift,rental forklift tahunan,rental forklift terpercaya,rental f', '180327103425.jpg', 1, 16, NULL, 17, NULL, '2018-03-27 10:01:01'),
(21, 'ini-perbedaan-forklift-elektrik-forklift-diesel-forklift-bensin-dan-forklift-gas', 'Ini Perbedaan Forklift Elektrik, Forklift Diesel, Forklift Bensin dan Forklift Gas', 'Anda harus tahu tipe-tipe forklift berdasarkan bahan bakarnya, seperti : forklift elektrik, forklift diesel, forklift bensin, dan forklift gas, karena hal ini  bisa berdampak besar terhadap berbagai hal, seperti biaya, operator, mekanik dan kondisi lingku', '<p>Kadang ada banyak perusahaan menganggap enteng mempelajari perbedaan jenis-jenis forklift, seperti apa beda : forklift elektrik, forklift diesel, forklift bensin, dan forklift gas. Pada hal ini bisa berdampak besar terhadap berbagai hal, seperti biaya, operator, mekanik dan kondisi lingkungan. Untuk itu kali ini, PT Prime Forklift Services mengupas tentang jenis-jenis forklift ini.</p>\n<p>Ada dua jenis forklift berdasarkan tenaga penggeraknya atau mesinnya, yaitu :</p>\n<ol>\n<li><strong>Forklift Engine</strong>yang merupakan jenis yang menggunakan mesin konvensional yang bentuknya mirip dengan mesin mobil pada umumnya yaitu menggunakan mesin 4 tak.</li>\n<li><strong><a href=\"https://en.wikipedia.org/wiki/Forklift\">Forklift Elektrik</a></strong>yang merupakan forklift menggunakan motor listrik atau elektrik yang bertenagakan daya battery.</li>\n</ol>\n<p>Namun tidak hanya sampai disitu, forklift yang menggunakan mesin konvensional masih dibedakan lagi berdasarkan jenis bahan bakarnya, yaitu ada yang menggunakan solar, bensin dan menggunakan gas.</p>\n<ol>\n<li><strong> Forklift Diesel</strong></li>\n</ol>\n<p>Forklift jenis ini menggunakan bahan bakar solar, perbedaannya dengan forklift yang jenis bensin dan gas adalah pada metode pengapiannya atau pencampuran antara bahan bakar dan udara. Karena menggunakan mesin diesel, maka mesin ini menggunakan system direct injection, dimana dolar secara langsung dienjeksikan ke ruang bakar yang sudah terisi dengan udara bertekanan tinggi. Hal inilah yang menimbulkan tenaga dan menggerakkan mesin.</p>\n<p>Banyak yang berpendapat bahwa mesin diesel lebih tangguh dan hemat dari pada bensin, namun yang perlu dipertimbangkan adalah tingginya emisi pada forklift jenis ini. Untuk itu forklift diesel lebih cocok untuk menggunaan ruang terbuka.</p>\n<ol start=\"2\">\n<li><strong> Forklift Gasoline atau Bensin</strong></li>\n</ol>\n<p>Forklift ini berbahan bakar bensin, jadi sangat mirip dengan mobil. Mesin forklift menggunakan busi (spark plug) untuk memicu pengapian dan proses pencampuran bahan bakar dan udara berada di karburator.&nbsp; Bensin yang digunakan bisa premium, pertalite dan sejenisnya sesuai dengan kebutuhan.</p>\n<p>Forklift berbahan bakar bensin ini sangat popular digunakan oleh dunia industry, selain emisi lebih rendah dan suaranya yang tidak berisik. Jadi jika digunakan dalam gudang yang tertutup lebih cocok.</p>\n<ol start=\"3\">\n<li><strong> Forklift Gas</strong></li>\n</ol>\n<p>Forklift yang satu ini terbilang ramah lingkungan dan juga hemat biaya karena menggunakan bahan bakar gas atau LPG. Proses pengapian mesin pun mirip dengan yang bensin, yaitu menggunakan busi namun ada sedikit perbedaan pada system karburatornya, yaitu demi keamanan harus sangat rapat sehingga tidak terjadi kebocoran yang bisa membayakan pengguna maupun perangkat forklift.</p>\n<p>Untuk forklift gas, secara keamanan sudah terjamin, jadi layak dijadikan pilihan untuk Anda yang peduli dengan lingkungan dan juga efesiensi.</p>\n<p>Jadi, setelah Anda mengetahui kelebihan masing-masing jenis forklift di atas, apa yang&nbsp;<a href=\"../../blog/read/13/Bagaimana+Memilih+Forklift+Yang+Sesuai+Dengan+Kebutuhan+Bisnis+Anda?.html\">menjadi pilihan Anda?&nbsp;</a>Nah, kalau perusahaan Anda butuh konsultasi lebih lagi untuk kebutuhan forklift Anda, hubungi PT Prime Forklift Services, kami melayani penjualan forklift baru dan bekas,&nbsp;<a href=\"../../services/read/2.html\">menyewakan forklift kontak tahunan</a>&nbsp;dan juga menyediakan&nbsp;<a href=\"../../services/read/1.html\">layanan servis forklift</a>, tunggu apa lagi, hubungi kami sekarang juga di nomor telephone &nbsp;<strong>0267-8402034 atau (wa) +6282210812989</strong>&nbsp;dengan&nbsp;<strong>Pak Surya atau Ibu Meni</strong>&nbsp;. Atau Anda bisa mengunjungi kantor&nbsp;<strong>PT.Prime Forklift Services</strong>&nbsp;di&nbsp;<strong>Ruko Plaza Kosambi, No. 18F, Karawang, Jawa Barat.</strong></p>\n<p><strong>Baca juga :&nbsp;</strong></p>\n<p><strong><a href=\"../../../../blog/read/13/Bagaimana+Memilih+Forklift+Yang+Sesuai+Dengan+Kebutuhan+Bisnis+Anda?.html\">BAGAIMANA MEMILIH FORKLIFT YANG SESUAI DENGAN KEBUTUHAN BISNIS ANDA?</a></strong></p>\n<p><strong><a href=\"../../../../blog/read/15/Fungsi+dan+Kegunaan+Forklift+Blue+Spot+Zone+Light.html\">FUNGSI DAN KEGUNAAN FORKLIFT BLUE SPOT ZONE LIGHT</a></strong></p>\n<p><strong><a href=\"../../../../blog/read/14/Lebih+Untung+Mana?+Pilih+Spare+Part+Asli+Atau+KW+Untuk+Forklift+Yang+Anda+Gunakan.html\">LEBIH UNTUNG MANA? PILIH SPARE PART ASLI ATAU KW UNTUK FORKLIFT YANG ANDA GUNAKAN</a></strong></p>', 'tipe-tipe forklift, bahan bakar forklift, forklift elektrik,forklift diesel', '180416103305.jpg', 1, 16, NULL, 17, NULL, '2018-04-16 01:01:01'),
(22, 'ini-perbedaan-3-jenis-ban-forklift-ban-pneumatic-ban-solid-dan-ban-polyurethane', 'Ini Perbedaan 3 Jenis Ban Forklift : Ban Pneumatic , Ban Solid dan Ban Polyurethane', 'Memilih ban forklift yang tepat sangat penting karena hal itu berkaitan dengan permukaan seperti apa forklift itu digunakan. Contohnya forklift yang digunakan di permukaan lantai yang halus seperti gudang atau lantai pabrik tentu berbeda dengan forklift y', '<p>Memilih <a title=\"jual ban forklift\" href=\"../../../../blog/read/18.html\" target=\"_blank\"><strong>ban forklift</strong></a> yang tepat sangat penting karena hal itu berkaitan dengan permukaan seperti apa forklift itu digunakan. Contohnya forklift yang digunakan di permukaan lantai yang halus seperti gudang atau lantai pabrik tentu berbeda dengan forklift yang digunakan di aspal atau bahkan tanah, dan lain sebagainya.</p>\n<p>Ada <a title=\"tiga jenis ban forklift\" href=\"../../../../blog/read/22/Ini+Perbedaan+3+Jenis+Ban+Forklift+:+Ban+Pneumatic+,+Ban+Solid+dan+Ban+Polyurethane.html\">tiga jenis ban forklift </a>yang perlu Anda ketahui, yaitu : ban pneumatic , ban solid karet forklift dan ban polyurethane forklift.</p>\n<p>Apa yang membedakan ketiga jenis ban di atas? Yuk kita cari tahu lebih lagi.</p>\n<ol>\n<li><strong>Ban Pneumatic Forklift</strong></li>\n</ol>\n<p>Ban jenis ini adalah pilihan yang tepat jika forklift digunakan di permukaan yang kasar dan di luar ruangan. Ban peneumatic forklift adalah mirip dengan ban untuk kendaraan alat berat seperti truk pengangkut. Ban ini diisi dengan udara, dan memiliki lekuk yang lebar dan garis yang dalam menggunakan karet yang keras.</p>\n<ol start=\"2\">\n<li><strong>Ban Solid Forklift</strong></li>\n</ol>\n<p>Jenis ban solid ini dibuat dari karet sama seperti ban jenis pneumatic, tetapi tidak di isi dengan udara, sebaliknya benar-benar menggunakan karet keras yang solid yang menyelubungi sebuah besi baja berbentuk cicin. Kelebihan ban jenis ini lebih awet. Memakai forklift dengan ban jenis ini, bisa digunakan untuk permukaan kasar dan diluar ruangan, namun tidak bisa untuk pekerjaan yang terlalu berat. Untuk pekerjaan berat di luar ruangan, disarankan untuk menggunakan ban pneumatic.</p>\n<ol start=\"3\">\n<li><strong>Ban Polyurethane Forklift</strong></li>\n</ol>\n<p>Jenis ban polyurethane ini biasanya digunakan pada forklift elektrik, dan hanya digunakan untuk forklift dalam ruangan. Ban jenis ini lebih ringan, gesekannya lebih halus dan mudah dikendalikan.</p>\n<p>Ingat ya, bahwa kebanyakan forklift sudah di disain menggunakan ban khusus yang sesuai dengan peruntukannya. Anda ngga bisa begitu saja mengganti ban polyurethane pada forklift Anda dengan ban jenis pneumatic hanya karena ingin menggunakannya di luar ruangan. Anda perlu berkonsultasi dengan <a title=\"service forklift\" href=\"../../../../services.html\">mekanik forklift </a>untuk memastikan bahwa ban pilihan Anda sesuai dengan kebutuhan forklift.</p>\n<p>Untuk itu kalau Anda ingin berkonsultasi&nbsp; dan bahkan membeli ban forklift sesuai kebutuhan perusahaan Anda, segera hubungi&nbsp; <strong><a title=\"primeforklift.co.id\" href=\"../../../../\" target=\"_blank\">PT PRIME FORKLIFT SERVICES</a></strong>, &nbsp;di nomor telephone &nbsp;<strong>0267-8402034 atau (wa) +6282210812989</strong>&nbsp;dengan&nbsp;<strong>Pak Surya atau Ibu Meni</strong>&nbsp;. Atau Anda bisa mengunjungi kantor&nbsp;<strong>PT.Prime Forklift Services</strong>&nbsp;di&nbsp;<strong>Ruko Plaza Kosambi, No. 18F, Karawang, Jawa Barat.</strong></p>\n<p>Baca juga artikel lainnya :&nbsp;</p>\n<p><a title=\"jenis forklift\" href=\"../../../../blog/read/13.html\">BAGAIMANA MEMILIH FORKLIFT YANG SESUAI DENGAN KEBUTUHAN BISNIS ANDA?</a></p>\n<p><a title=\"BAGAIMANA CARA MENANGANI BATTERY FORKLIFT DENGAN BENAR?\" href=\"../../../../blog/read/12.html\">BAGAIMANA CARA MENANGANI BATTERY FORKLIFT DENGAN BENAR?</a></p>\n<p><a title=\"PT. PRIME FORKLIFT SERVICES JUAL BAN FORKLIFT BERBAGAI MERK BERKUALITAS\" href=\"../../../../blog/read/18.html\">PT. PRIME FORKLIFT SERVICES JUAL BAN FORKLIFT BERBAGAI MERK BERKUALITAS</a></p>', 'jual ban forklift,jual ban forklift solid,ban forklift pneumatic,ban forlif', '180424160346.jpg', 1, 16, NULL, 17, NULL, '2018-04-24 01:01:01');
INSERT INTO `article` (`id`, `slug`, `title`, `preface`, `detail`, `keyword`, `image`, `status`, `insert_user`, `insert_date`, `update_user`, `update_date`, `release_date`) VALUES
(23, '7-hal-yang-harus-anda-ketahui-saat-akan-menyewa-forklift', '7 Hal Yang Harus Anda Ketahui Saat Akan Menyewa Forklift', 'Menyewa forklift memiliki berbagai kelebihan tersendiri, salah satunya adalah menghemat  biaya perawatan ataupun penggantian forklift yang mahal. Namun sebelum memutuskan untuk menyewa forklift ataupun mengangkat telephone untuk menghubungi perusahaan jas', '<p>Menyewa forklift memiliki berbagai kelebihan tersendiri, salah satunya adalah menghemat &nbsp;biaya perawatan ataupun penggantian forklift yang mahal. Namun sebelum memutuskan untuk menyewa forklift ataupun mengangkat telephone untuk menghubungi perusahaan penyewaan forklift, Anda harus memastikan memiliki beberapa data yang bisa membantu Anda memutuskan jenis forklift yang perusahaan butuhkan.</p>\n<p>Jadi, cobalah cek apakah Anda memiliki informasi berikut ini :</p>\n<p><strong>1. Berat maksimal barang yang akan diangkat</strong></p>\n<p>Pertanyaan ini sangat penting, karena setiap forklift memiliki kapasitas yang berbeda-beda. Untuk itu cek kembali berapa berat maksimal yang akan diangkat oleh forklift pilihan Anda nanti.</p>\n<p><strong>2. Berapa tinggi maksimal yang harus ditangani oleh forklift</strong></p>\n<p>Anda harus tahu tinggi maksimal yang harus dicapai oleh forklift saat mengangkat barang atau saat menaruh barang di gudang penyimpanan. Jadi jika tempat menaruh barang di rak ketinggian maksimalnya setinggi 8 meter di gudang, maka forklift yang Anda akan sewa harus mampu mengangkat lebih tinggi dari 8 meter, biasanya Anda perlu menambahkan 150 mm dari tinggi maksimal, karena Anda perlu menambah ketinggian palet dalam hitungan tersebut.</p>\n<p><strong>3. Berapa ketinggian maksimum saat forklift mengangkat berat maksimum?</strong></p>\n<p>Mengapa ini penting? Karena forklift berkapasitas 2.5 ton dan mampu mengangkat setinggi 5 meter tidak mampu mengangkat berat maksimal sebesar 2.5 ton setinggi 5 meter. Mengapa demikian? Karena adanya penurunan kemampuan saat forklift mengangkat berat maksimal dalam ketinggian maksimal. Jika dipaksakan bisa berakibat fatal, seperti kerusakan forklift atau bahkan kecelakaan kerja.</p>\n<p><strong>4. Dilingkungan seperti apa forklift akan digunakan?</strong></p>\n<p>Lingkungan penggunaan forklift sangat menentukan jenis forklift yang akan dipilih. Sebagai contoh, jika akan digunakan di dalam ruangan yang tertutup, maka forklift diesel tidak cocok karena&nbsp; akan menimbulkan polusi udara, lebih cocok menggunakan forklift elektrik.</p>\n<p>Apa yang perlu diperhatikan :</p>\n<ul>\n<li><em>Apakah forklift akan digunakan indoor atau outdoor atau bahkan dua-duanya?</em></li>\n<li><em>Seperti apa permukaan lantai yang akan dilalui forklift? Hal ini berpengaruh pada pemilihan jenis bannya.</em></li>\n<li><em>Seperti apa ruang gerak forklift?</em></li>\n</ul>\n<p><strong>5. Apa jenis barang yang akan diangkat?</strong></p>\n<p>Anda perlu tahu jenis barang yang akan diangkat, bentuknya, apakah pakai palet atau tidak, apakah menggunakan bungkusan atau tidak? Dengan mengetahui hal ini, penyedia jasa sewa forklift akan bisa menyediakan secara spesifik kebutuhan forklift Anda.</p>\n<p><strong>6. Berapa lama Anda akan menyewanya?</strong></p>\n<p>Untuk menghemat, biasanya penyedia jasa rental forklift akan memberikan harga khusus untuk perusahaan yang perusahaan yang menyewa dalam jangka waktu lebih lama. Anda harus tanyakan secara rinci biaya apa saja yang akan dibebankan kepada Anda dalam jangka waktu sewa Anda tersebut.</p>\n<p><strong>7. Pastikan perusahaan penyedia sewa forklift tersebut terpercaya dan berkualitas.</strong></p>\n<p>Bagaimana Anda bisa memastikan hal ini?</p>\n<ul>\n<li><em>Cobalah periksa rekam jejak perusahaan tersebut, sudah berapa banyak usaha yang menggunakan jasanya?</em></li>\n<li><em>Seperti apa jasa service dan garansi yang diberikan oleh perusahaan tersebut?</em></li>\n<li><em>Berapa banyak forklift yang tersedia untuk disewakan?</em></li>\n</ul>\n<p>Kesimpulannya, menyewa forklift memiliki banyak keuntungan daripada membeli forklift. Namun Anda harus pastikan bahwa perusahaan Anda mendapatkan forklift terbaik yang Anda butuhkan. Untuk itu, pastikan Anda menghubungi <a title=\"sewa forklift\" href=\"../../../../\"><strong>PT PRIME FORKLIFT SERVICES</strong></a> untuk kebutuhan sewa forklift Anda jika perusahaan Anda berada di sekitar Bekasi, Cibitung, Cikarang, Karawang, Cikampek dan Purwakarta. Segera hubungi kami sekarang juga di nomor telephone &nbsp;<strong>0267-8402034 atau (wa) +6282210812989</strong>&nbsp;dengan <strong>Pak Surya atau Ibu Meni&nbsp;</strong>. Atau Anda bisa mengunjungi kantor PT.Prime Forklift Services di Ruko Plaza Kosambi, No. 18F, Karawang, Jawa Barat.</p>', 'sewa forklift,rental forklift,sewa forklift bekasi,sewa forklift cibitung,s', '180522152828.jpg', 1, 16, NULL, 17, NULL, '2018-05-22 14:01:01'),
(24, 'apa-itu-roda-hand-pallet-dan-bagaimana-cara-pemasangannya-yang-benar', 'APA ITU RODA HAND PALLET DAN BAGAIMANA CARA PEMASANGANNYA YANG BENAR', 'Hand pallet adalah alat angkut yang digunakan untuk memindahkan atau mengangkut, menaik-turunkan barang dalam jumlah banyak dan bobotnya bisa mencapai 1-5 ton. Alat ini biasanya tersedia di tempat jual roda hand pallet', '<p>Tahukah Anda apa itu hand pallet? Hand pallet adalah alat angkut yang digunakan untuk memindahkan atau mengangkut, menaik-turunkan barang dalam jumlah banyak dan bobotnya bisa mencapai 1-5 ton. Alat ini biasanya tersedia di tempat <a title=\"jual roda hand pallet\" href=\"../../services.html\" target=\"_blank\">jual roda hand pallet</a>, alat ini ada beberapa jenis yaitu yang manual ataupun yang elektrik. Agar hand pallet bisa digunakan dengan baik maka roda yang digunakan harus sesuai dengan jalan atau tempat dimana alat tersebut dipergunakan.</p>\n<p>Ada 2 jenis roda hand pallet berdasarkan pada bahannya yaitu:</p>\n<ul>\n<li><strong>Nylon : Jenis roda dari bahan ini cocok untuk digunakan pada hand pallet yang dipergunakan di luar ruangan.</strong></li>\n<li><strong>Polyurethane : Roda dari bahan ini cocok di dalam ruangan dan yang menggunakan keramik atau sejenisnya yang memiliki permukaan halus. Hal tersebut disebabkan karena roda ini tidak sekeras roda dari bahan nylon sehingga tidak merusak lantai serta pergerakan hand pallet juga akan lebih mudah dikendalikan.</strong></li>\n</ul>\n<p>Baik yang terbuat dari nylon atau polyurethan jika digunakan terus menerus roda dan seal oli sering mengalami kerusakan sehingga agar hand pallet bisa terus digunakan, bagian yang rusak seperti roda harus segera diganti. Sebelum Anda mengganti <a title=\"roda hand pallet\" href=\"../../services.html\">roda hand pallet</a> maka Anda harus menyiapkan peralatannya dan roda yang digunakan.</p>\n<p>Ketahui dahulu berapa ukuran dan jenis roda yang akan digunakan. Ada roda hand pallet yang memiliki diameter yang beda namun ukuran sama namun ada yang memiliki ukuran sama dengan diameter yang berbeda. Untuk menghindari salah pilih ban, maka sebaiknya semua dimensinya diukur baik diameter roda ataupun diameter as roda baru kemudian membeli jenis roda yang sesuai.</p>\n<p>Selain roda, siapkan juga tang, kunci pas ring, obeng, ring, grease, dan peralatan khusus yang diperlukan untuk mengganti roda tersebut. selanjutnya lepas semua bagian dari roda yang sudah aus dan tidak bisa digunakan atau tidak bisa digunakan secara maksimal tersebut. Jika sudah, pasang roda baru yang sudah sesuai dengan ukuran dan diameter as roda yang sesuai dengan hand pallet tersebut. Jangan lupa untuk mengencangkan bautnya agar roda nyaman untuk dipergunakan.</p>\n<p>Anda bisa membeli roda di tempat <a title=\"jual roda hand pallet\" href=\"../../services.html\" target=\"_blank\">jual roda hand pallet</a> yaitu di PT.PRIME FORKLIFT SERVICES yang bisa dihubungi di nomor &nbsp;<strong>0267-8402034 atau (wa) +6282210812989</strong>&nbsp;dengan&nbsp;<strong>Pak Surya atau Ibu Meni</strong>&nbsp;<strong>Barat</strong> di jam operasional yaitu senin-jumat pukul 08-17.00 dan sabtu pukul 08.00-12.00. Atau Anda bisa mengunjungi kantor&nbsp;<strong>PT.Prime Forklift Services</strong>&nbsp;di&nbsp;<strong>Ruko Plaza Kosambi, No. 18F, Karawang, Jawa</strong>..</p>\n<p>Di <strong><a title=\"jual sparepart hand pallet\" href=\"../../\" target=\"_blank\">PT.PRIME FORKLIFT SERVICES</a></strong> selain Anda bisa membeli&nbsp;roda hand pallet&nbsp;yang tepat baik dari nylon atau dari polyurethane Anda juga bisa menggunakan jasa service untuk mengganti roda hand pallet sehingga alat pengangkut Anda tersebut bisa digunakan dalam waktu sesegera mungkin. Jadi, jangan ragu untuk kunjungi dan gunakan jasa service dari PT.PRIME FORKLIFT SERVICES yang terpercaya!</p>\n<p>&nbsp;</p>', 'hand pallet,jual roda hand pallet,hand pallet manual,hand pallet elektrik,j', '180629165248.jpg', 1, 16, NULL, 17, NULL, '2018-06-29 10:01:01'),
(25, 'jasa-service-forklift-di-bekasi-yang-terpercaya-dan-profesional', 'Jasa Service Forklift di Bekasi yang Terpercaya dan Profesional', 'Cari jasa service forklift di Bekasi dan sekitarnya? Ini dia rekomendasi tempat service forklift yang terpercaya dan profesional.', '<p>Memilih&nbsp;<strong><a title=\"jasa service forklift\" href=\"../../services.html\">jasa&nbsp;service forklift</a></strong> yang terpercaya dan layanan professional tentu sangat penting untuk operasional sebuah perusahaan. Hal ini menunjang kinerja produksi usaha dan bisa meminimalisir down time. Untuk Anda yang perusahaannya berada di wilayah Bekasi dan sekitarnya, <a title=\"jasa service forklift\" href=\"../../\">PT Prime Forklift Services</a> adalah pilihan yang tepat karena menyediakan jasa service forklift terbaik untuk wilayah Bekasi, Cibitung, Cikarang, Karawang dan Cikampek.&nbsp;</p>\n<p>Selain memberikan layanan service forklift yang terpercaya dan professional, PT Prime Forklift Services memiliki workshop yang lengkap dengan mekanik yang terampil. Kebutuhan komponen forklift pun bisa ditangani dengan baik karena perusahaan kami merupakan distributor resmi sparepart beberapa merek forklift yang sudah terkenal.</p>\n<p>Selain hal itu, apa keuntungan lain mempercayakan service forklift Anda pada kami?</p>\n<ol>\n<li>Anda akan mendapatkan layanan yang prima</li>\n<li>Menyediakan berbagai sparepart forklift asli dari berbagai merek</li>\n<li>Ditangani oleh teknisi yang handal dan professional</li>\n<li>Dilakukan di workshop dengan peralatan yang lengkap</li>\n</ol>\n<p>Dengan berbagai fasilitas dan keuntungan yang ditawarkan oleh <strong>PT Prime Forklift Services</strong>, Anda tidak perlu kuatir lagi akan kondisi forklift Anda. Segera hubungi kami sekarang juga di nomor telephone &nbsp;<strong>0267-8402034 atau (wa) +6282210812989</strong>&nbsp;dengan <strong>Pak Surya atau Ibu Meni</strong>&nbsp;. Atau Anda bisa mengunjungi kantor PT.Prime Forklift Services di Ruko Plaza Kosambi, No. 18F, Karawang, Jawa Barat.</p>', 'tempat service forklift,service forklift,service forklift bekasi,jasa servi', '180803152050.jpg', 1, 16, NULL, 17, NULL, '2018-08-03 12:01:01'),
(26, 'jual-spare-part-forklift-dengan-kualitas-terjamin', 'Jual Spare Part Forklift Dengan Kualitas Terjamin', 'Anda mencari tempat jual spare part forklift dengan kualitas terjamin, maka PT PRIME FORKLIFT SERVICES adalah tempatnya. Sebagai distributor resmi spare part forklift dengan merek terkenal, maka kami memberikan jaminan bahwa spare part forklift yang dijua', '<p>Anda mencari tempat <strong><a title=\"jual spare part forklift\" href=\"../../../../services/read/1.html\" target=\"_blank\">jual spare part forklift</a></strong> dengan kualitas terjamin, maka PT PRIME FORKLIFT SERVICES adalah tempatnya. Sebagai <strong>distributor resmi spare part forklift</strong>&nbsp;dari beberapa merek terkenal, maka kami memberikan jaminan bahwa spare part forklift yang dijual adalah kualitas yang terbaik. <br />Kami menyediakan berbagai spare part forklift untuk berbagai jenis forklift, mulai dari forklift elektrik, forklift diesel, maupul forklift gas. Bahkan kami juga menyediakan spare part untuk hand pallet. <br />Bukan hanya itu, jika Anda mengalami kesulitan untuk menemukan nama atau forklift part numbernya, akan kami bantu sebab kami menyediakan katalog spare part forklift dari berbagai merek. <br />Tidak hanya jual spare part forklift, namun PT PRIME FORKLIFT SERVICES layanan menyeluruh seperti jasa service forklift, jasa press ban, jasa service batterai forklift hingga jasa sewa dan jual beli forklift. <br />Kami sudah dipercaya oleh berbagai perusahaan untuk menjadi solusi berbagai kebutuhan layanan forklift mereka, untuk itu jangan ragu lagi, hubungi kami sekarang juga di nomor <strong>telephone 0267-8402034 atau (wa) +6282210812989 dengan Pak Surya atau Ibu Meni</strong> . Atau Anda bisa mengunjungi kantor PT.Prime Forklift Services di Ruko Plaza Kosambi, No. 18F, Karawang, Jawa Barat.</p>', 'jual spare par forklift,spare part forklift,tempat jual spare part forklift', '180901135251.jpg', 1, 16, NULL, 17, NULL, '2018-08-31 12:01:01'),
(27, 'service-forklift-karawang', 'Service Forklift Karawang', 'Perawatan forklift', '<p>&nbsp;</p>\n<p>Forklift menjadi salah satu peralatan material handling yang kerap digunakan dalam dunia industri, mulai dari supermaket, perusahaan ekspedisi, hingga pabrik. Karawang menjadi salah satu kota industri terbesar di jawa barat, sehingga permintaan <strong>service forklift karawang</strong> pun meningkat. Peralatan material handling berupa kendaraan ini berfungsi memindahkan barang dengan kapasitas besar baik untuk dioperasikan di dalam ruangan maupun di luar ruangan.</p>\n<p>Perawatan dan servis forklift sangat penting untuk menjaga alat berat bekerja dengan benar. Mesin yang dirawat dengan baik akan memberikan layanan yang handal dan aman selama bertahun-tahun. forklift yang perawatan nya tidak di perhatikan&nbsp; akan lebih sering bermasalah kemudian menggangu operational , Pengecekan seacara berkala&nbsp; adalah suatu keharusan. Berikut adalah 6 langkah paling penting yang harus Anda ambil untuk memastikan mesin Anda berjalan dengan baik.</p>\n<ol>\n<li>Periksa mesin setiap hari sebagai bagian dari rencana pemeliharaan forklift yang komprehensif. Pemeriksaan ini akan memastikan bahwa forklift aman digunakan sebelum setiap shift dan menghemat waktu dan budget dari pada menunggu untuk memperbaiki masalah sampai mengganggu operasi mesin. Cara terbaik untuk menerapkan pemeriksaan ini adalah dengan menggunakan daftar periksa standar untuk memastikan bahwa semua bidang yang menjadi perhatian ditangani sebelum forklift digunakan. Beberapa elemen yang direkomendasikan dari daftar periksa ini adalah sebagai berikut: &nbsp;</li>\n</ol>\n<ul>\n<li>Selang &nbsp;&nbsp;</li>\n<li>Tekanan dan kondisi ban &nbsp;</li>\n<li>Fungsi sabuk pengaman &nbsp;&nbsp;</li>\n<li>Tingkat cairan &nbsp;&nbsp;</li>\n<li>Garpu dan pelindung kepala &nbsp;&nbsp;</li>\n<li>Performa rem</li>\n</ul>\n<ol start=\"2\">\n<li>Ikuti jadwal perawatan yang direkomendasikan pabrik.</li>\n</ol>\n<p>Perawatan<strong> forklift</strong> harus mematuhi jadwal yang disediakan oleh pabrikan. Sebagai contoh, sebagian besar pabrikan merekomendasikan inspeksi atau layanan mendalam untuk dilakukan setelah periode waktu tertentu (yaitu penggantian oli setiap 3 bulan) atau jumlah penggunaan tertentu (mis. Setelah penggunaan 250 jam, penggunaan 500 jam, dan 1.000 jam penggunaan). Memastikan bahwa tugas-tugas seperti penggantian oli, perubahan kondisi cairan dan filter ban, penggantian busi, perbaikan rem dan drive train dan lainnya diselesaikan tepat waktu akan membantu menghindari masalah tak terduga yang lebih besar yang dapat menghabiskan waktu, budget, dan keselamatan.</p>\n<ol start=\"3\">\n<li>Periksa <a title=\"ban forklift\" href=\"../../../../blog/read/18.html\" target=\"_blank\">ban forklift</a> Anda secara teratur</li>\n</ol>\n<p>Ban dapat cepat aus pada forklift terutama jika secara teratur melintasi jalur yang sama di sekitar gudang. Gerakan berulang itu dapat menyebabkan ban aus lebih cepat di satu sisi dari pada di sisi lain. Ban juga bisa mengempis bocor tergantung ban nya karena ada beberapa<a title=\" jenis jenis ban forklift\" href=\"../../../../blog/read/22.html\" target=\"_blank\"> jenis jenis ban forklift</a>. Karena ban sangat penting untuk pengoperasian forklift, pengecekan &nbsp;ban secara berkala harus di perhatikan. Pemeriksaan ini harus mencakup pemeriksaan tekanan (untuk ban<a title=\" pneumatik\" href=\"../../../../blog/read/22.html\" target=\"_blank\"> pneumatik</a> )</p>\n<ol start=\"4\">\n<li>Perawatan baterai</li>\n</ol>\n<p>Baterai menjadi salah satu dari dua komponen paling mahal pada forklift electric. Harga <a title=\"baterai forklift\" href=\"../../../../blog/read/19.html\" target=\"_blank\">baterai forklift</a> kurang lebih seperempat hingga seperlima dari harga forklift elektric sendiri. Karena itu, perlu diperhatikan dengan sungguh-sungguh perawatannya.</p>\n<p>Menjaga kualitas baterai forklift bisa dilakukan dengan menjalankan prosedur pengisian baterai dengan benar. Jangan tunggu sampai daya baterai habis total, sebaiknya lakukan pengisian baterai selagi kapasitas daya baterai masih 20%. Selama pengisian baterai, pastikan tutup accu dalam keadaan terbuka. Tujuannya tak lain supaya temperatur tidak panas. Pengisian baterai ini harus dilakukan hingga baterai benar-benar penuh terisi.</p>\n<p>Hindari menghentian proses pengisian sebelum baterai penuh terisi, sebab hal ini akan mempengaruhi usia baterai. Jika proses pengisian baterai sudah selesai dilakukan, biarkan selama 10 menit hingga 15 menit. Barulah setelah itu forklift bisa digunakan kembali. Perlu diketahui, bahwa usia baterai forklift electric adalah 1.500 kali pengisian atau 5 tahun dengan asumsi pengisian baterai satu kali sehari.</p>\n<p>Lakukan pula pemeriksaan secara berkala berkaitan dengan sumber tegangan listrik pada charger. Pastikan sumber tegangan listrik menuju charger sebesar 380 Volt hingga 400 Volt sesuai dengan tapping charger dan output charger saat proses pengisian sebesar 50 Volt sampai 52 Volt dengan arus sebesar 10A sampai 100A.</p>\n<p>Kebersihan baterai juga perlu diperhatikan. Lakukan pemeriksaan kebersihan setidaknya 1 minggu sekali. Pastikan permukaan dan kabel beterai berada dalam kondisi kering dan tidak ada benda-benda asing di sekitar baterai yang bisa mengundang tikus dan akhirnya akan merusak kabel baterai.</p>\n<ol start=\"5\">\n<li>Perawatan controller</li>\n</ol>\n<p>Selain baterai, satu lagi komponen mahal pada forklift elektric adalah controller. Perawatan controller terbilang lebih mudah dibandingkan dengan perawatan baterai. Cukup hindarkan controller dari air agar komponen ini tahan lama dan tetap mampu menjalankan fungsinya.</p>\n<ol start=\"6\">\n<li>Penyimpanan dan Area Kerja</li>\n</ol>\n<p>Jika tidak sedang digunakan, pastikan lokasi parkir forklift terbebas dari hujan dan sinar matahari. Demikian pula saat dioperasikan, sebaiknya forklift electric tidak digunakan di luar ruangan terus menerus terlebih pada kondisi yang kurang baik. Sebab baterai dan komponen listrik pada peralatan ini tidak boleh terpapar unsur yang berbahaya dalam waktu yang lama. Karena itu, forklift electric lebih cocok digunakan pada area kerja yang bebas asap atau polusi. Misalnya saja pabrik makanan, obat-obatan, garment dan industri sejenis lainnya.</p>\n<p>Berikut layanan service forklift di PT. Prime Forklift Services :</p>\n<ul>\n<li>Service rutin</li>\n<li>Service berkala</li>\n<li>Pergantian sparepart forklift</li>\n<li>Perbaikan forklift</li>\n<li>Pengecetan forklift</li>\n<li>Overhaul forklift</li>\n</ul>\n<p>Jadi tunggu apa lagi, percayakan kebutuhan forklift perusahaan anda kepada kami. Untuk service forklift, hubungi kami sekarang juga di nomor telepon 0267-8402034 atau (WA) +6282210812989&nbsp;dengan Pak Surya atau Ibu Meni&nbsp;. Atau Anda bisa mengunjungi kantor<a title=\" PT.Prime Forklift Services\" href=\"../../../../\" target=\"_blank\"> PT.Prime Forklift Services</a> di Ruko Plaza Kosambi, No. 18F, Karawang Jawa Barat.</p>', 'service forklift karawang,sparepart forklift,overhaul forklift', '200131165826.jpg', 1, 1, NULL, 17, NULL, '2019-12-31 17:12:01'),
(28, 'ban-forklift-achilles', 'BAN FORKLIFT ACHILLES', 'Ban Forklift merk Achiles tersebut merupakan salah satu Produk buatan dalam negeri yaitu negara indonesia, Bahkan saat ini Ban Forklift merk Achiles tersebut sudah cukup banyak di gunakan di asia Karena Ban kendaraan Forklift merk Achiles tersebut memilik', '<p>Ban Forklift Merupakan salah satu komponen yang memiliki fungsi sangat penting dalam suatu Rangkaian <a title=\"kendaraan Forklift\" href=\"../../../../blog/read/9.html\" target=\"_blank\">kendaraan Forklift</a>, Karena Jika Sebuah Rangkain kendaraan Forklift tidak menggunakan Ban Forklift tersebut maka sudah dapat di pastikan kendaraan Forklift tersebut tidak akan bisa berjalan dengan Sempurna.<br /> <br /> Ban Forklift merk Achiles tersebut merupakan salah satu Produk buatan dalam negeri yaitu negara indonesia, Bahkan saat ini Ban Forklift merk Achiles tersebut sudah cukup banyak di gunakan di asia Karena Ban kendaraan Forklift merk Achiles tersebut memiliki Spesifikasi Bahan serta kualitas yang cukup baik dan Bahkan Harga Ban Forklift merk Achiles tersebut juga cukup Terjangkau. Dengan adanya Ban kendaraan Forklift merk Achiles tersebut maka pengeluaran biaya untuk melakukan pembelian Ban kendaraan Forklift anda akan lebih ringan serta akan sangat aman saat di gunakan.<br /> <br /> Selain dengan Harga Ban Forklift merk Achiles tersebut cukup terjangkau Ban kendaraan Forklift tersebut juga memiliki kualitas yang cukup baik dan tentunya Pekerjaan anda dalam melakukan pemindahan suatu barang atau material lainnya dengan menggunakan kendaraan alat Forklift &nbsp;tersebut akan lebih aman selama Ban Forklift tersebut di gunakan sesuai dengan Jalurnya dan juga selama pemasangan Ban Forklift tersebut di lakukan dengan benar.<br /> <br /> Jika anda ingin melakukan pembelian Ban kendaraan Forklift merk Achiles tersebut maka sebaiknya anda harus sangat teliti dan hanya melakukan pembelian Ban Forklift tersebut dari Toko atau Penjual Ban kendaraan alat berat yang sudah terpercaya agar mendapatkan Ban Forklift merk Achiles yang sangat Berkualitas Terbaik.</p>\n<p>Prime Forklift Services menyediakan berbagai Ban dan Velg Alat Forklift <a title=\"jenis jenis ban \" href=\"../../../../blog/read/22.html\" target=\"_blank\">berbagai jenis sepeti Ban&nbsp;Pneumatic, Ban Solid Karet, Forklift dan Ban&nbsp;Polyurethane Forklift.</a> Dan tersedia juga berbagai ukuran diantaranya :</p>\n<p>&nbsp;Ban Forklift 500 &ndash; 8</p>\n<p>&nbsp;Ban Forklift 18 x 7 - 8</p>\n<p>&nbsp;Ban Forklift 600 &ndash; 9</p>\n<p>&nbsp;Ban Forklift 21 x 8 - 9</p>\n<p>&nbsp;Ban Forklift 650 &ndash; 10</p>\n<p>&nbsp;Ban Forklift 450 - 12</p>\n<p>&nbsp;Ban Forklift 700 - 12</p>\n<p>&nbsp;Ban Forklift 250 &ndash; 15</p>\n<p>&nbsp;Ban Forklift 300 - 15</p>\n<p>&nbsp;Ban Forklift 550 - 15</p>\n<p>&nbsp;Ban Forklift 600 - 15</p>\n<p>&nbsp;Ban Forklift 700 - 15</p>\n<p>&nbsp;Ban Forklift 750 - 15</p>\n<p>&nbsp;Ban Forklift 825 - 15</p>\n<p>&nbsp;Ban Forklift 900 - 20</p>\n<p>&nbsp;Ban Forklift 1000 - 20</p>\n<p>Untuk pertanyaan dan informasi lebih lanjut mengenai ban forklift dan Velg forklift langsung hubungi kami. Dengan senang hati kami siap membantu anda.</p>\n<p><strong>PT. PRIME FORKLIFT SERVICES</strong></p>\n<p><strong>JL. Raya Kosambi 1 NO.18 F Duren Klari Karawang&nbsp;</strong></p>\n<p><strong>( 0267 ) 8402034&nbsp; |&nbsp; 0822 1081 2989</strong></p>\n<p>&nbsp;</p>', 'BAN FORKLIFT, JUAL BAN FORKLIFT , BAN FORKLIFT KARAWANG', '200203093342.jpg', 1, 1, NULL, 17, NULL, '2020-02-02 09:40:01'),
(29, 'jual-battery-forklift', 'JUAL BATTERY FORKLIFT', 'Jual battery forklift , tuker tambah , service dll', '<p><a title=\"BATTERY FORKLIF\" href=\"../../blog/read/12.html\" target=\"_blank\">Battery forklift</a> merupakan salah satu elemen terpenting agar sebuah forklift dapat beroperasi. Dan berikut adalah hal-hal yang perlu customer perhatikan :</p>\n<p><br />1. Lakukan pengisian battery saat kapasitas battery tinggal 20%.<br />2. Jangan tunggu sampai benar-benar habis atau dibawah 20%.<br />3. Saat pengisian battery, bukalah tutup accu sehingga lebih awet dan tidak panas<br />4. Waktu pengisian battery yang masih dalam kondisi normal (tidak drop) rata-rata 7- 8jam<br />5. Tambahkan air accu pada tiap sell hingga memenuhi batas standar<br />6. Gunakan voltase (tegangan) yang stabil untuk pengisian battery<br />7. Lakukan pengisian sampai kondisi full 100%.<br />8. Pergunakan lebih dari satu battery jika forklift dipergunakan lebih dari 8jam kerja dalam sehari<br />9.Ventilasi ruang charger harus baik (jangan pengap) dan terlindung dari panas serta air/hujan. kami menyediakan berbagai ukuran battery secara umum sesuai jenis forklift.</p>\n<p>Kami menjual battery forklift bebagai merk dan spek untuk kebutuhan forklift electric anda<br />Anda dapat langsung menghubungi kami:</p>\n<p>PT. PRIME FORKLIFT SERVICES</p>\n<p>JL. Raya Kosambi 1 No.18f Duren, Karawang Jawa - Barat</p>\n<p>Telepon : (0267) - 8402034 Wa : 0822 1081 2989</p>', 'jual battery forklift ,service battery forklift,battery forklift', '200615125932.jpg', 1, 1, NULL, 17, NULL, '2020-03-19 10:21:01'),
(30, 'ban-forklift-ascendo', 'Ban Forklift Ascendo', 'Ban forklift solid merk ascendo dengan tekhnologi korea', '<p>Ban forklift ascendo ini produksi indonesia dengan menggunakan tekhnologi korea, ascendo ini memiliki kelebihan dengan istilah 3 layer design yaitu : Base Layer , Center layer dan Thread Layer dengan 3 karakteristik ini menjadikan ban forklift merk ascendo ini menjadi kuat dan tahan lama di kelasnya , Sehingga dapat memenuhi kebutuhan para pelaku industri untuk ban forklift jenis Solid dengan menjadi salah satu tekhnologi yang berbeda dengan merk lainnya ban forklift ascendo ini memiliki tekhnologi korea dan tersedia dalam berbagai jenis ukuran forklift anda dari mulai 2 ton sampai 10 ton dan memiliki kelebihan diantaranya dari segi harga cukup relepan dan terjangkau untuk para pelaku industri dengan kualitas seperti ban forklift ascendo ini&nbsp;</p>', 'ban forklift ascendo,ban forklift murah,ban solid,ban solid forklift murah', '220223135806.jpg', 1, 18, NULL, 17, NULL, '2022-03-09 07:01:01'),
(31, 'forklift-second-berkualitas', 'Forklift second berkualitas', 'harga forklift bekas', '<p>PT.Prime Forklift Services kini telah gencar untuk meningkatkan layanan dan produk untuk kebutuhan industry alat angkut material handling teritama alat angkut Forklift. Memungkinkan untuk memutuhi kebutuhan pelanggan. Berdasarkan pengalaman stabilitas dan serta pengalaman kami dalam pengadaan forklift. Kami PT. Prime forklift services selalu berusahan membantu mencarikan solusi bagi anda pelaku usaha untuk mecapai tujuan nya , dan serta membantu menganai anggaran untuk pengadaan alat angkut forklift. Di karnakan unti baru mengenai harganya cukup tinggi kami tawarkan solusi terbaik &nbsp;untuk anggaran aman yaiitu dengan forklift second, tentunya kami tawarkan juga kwalitas dan tahun forklift second juga. Harga forklift second unttuk saat ini lebih murah tentunya dari harga forklift baru .<br /><br />Selain itu produk forklift second kami memberikan jaminan garansi serta kami mempuyai teknisi yang berpengalaman untuk mengatasi jika terjadi masalah pada forklift. Selain itu kami memberikan free pengiriman untuk beberapa wilayah dan juga memberikan service berkala gratis selama 6 bulan ( 1 kali service ) dan kelebihan kami mengenai forklift second ini kami akan berikan bonus berupa lampu safety untuk melengkapi kebutuhan safety forklift second dan tentunya gratis pemasangan. kami siap melayani permintaan &nbsp;kebutuhan customer mengenai forklift dan kami siapkan semua kebutuhan nya. Selain itu kami menyediakan juga after sales dan bisa kontrak maintenance service forklift.<br /><br />Jika ada kebutuhan forklift second atau rental forklift jangan segan hubungu kami :&nbsp;<br /><br />PT.PRIME FORKLIFT SERVICES<br />JL.Raya Kosambi 1 No. 18F Karawang<br />( 0267 ) - 8402034 | 0822 1081 2989 (WA)</p>', 'forklift bekas,jual forklift,forkliftsecond,rental forklift', '220420103814.jpg', 1, 18, NULL, 17, NULL, '2022-04-20 10:50:05'),
(32, 'jual-sparepart-forklift-mitsubishi', 'Jual sparepart forklift Mitsubishi', 'jual sparepart forklift mitsubishi genuine part terjamin kualitasnya', '<p>Kami salah satu dealer resmi forklift Mitsubishi , kami di percaya untuk menangani service forklift mitsubishi serta menjual <em>sparepart genuine forklift Mitsubishi</em>. Kami menjamin kualitas saprepart yang kami tawarkan original bukan OEM ataupun tiruan. Selain itu kami juga meyediakan jasa pemasangan sparepart dan bergaransi untuk pemasangan , jadi anda di pastikan tidak aka nada kesalahan pembelian sparepart dan kesalahan pemangan jika di percayakan ke kami untuk penanganan forklift Mitsubishi</p>\n<p>Kami berpengalaman pegang brand Mitsubishi forklift dan tentu sudah tau kelemahan dan kelebihan forklift Mitsubishi tersebut dan kami memiliki teknisi bersertifikan dan berpengalaman selain itu kami selalu siap jika ada kendala forklift Mitsubishi anda , tim teknis kami siap menuju lokasi anda</p>\n<p><strong>Biaya pengecekan forklift ?</strong></p>\n<p>Biaya pengecekan nya yaitu 300.000 rupiah , jika terjadi masalah atau kendala dengan forklift Mitsubishi anda , teknisi kami akan melakukan pengecekan terlebih dahulu dan menganalisa kerusakan dan nantinya kami akan berikan penawaran bagian mana saja kah yang perlu di service atau saprepart manakah yang sudah rusak . tentunya dengan biaya tersebut anda akan mendapatkan hasil informasi pengecekan dan rekomendasi pemeliharaan agar forklift mitsubishi anda bertahan lama dan mengurangi biaya perbaikan .</p>', 'sparepart forklift, forklift mitsubishi , service forklift , karawang', '221124095818.jpg', 1, 18, NULL, 17, NULL, '2022-11-24 10:05:01');

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `article_view`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `article_view` (
`id` text
,`slug` text
,`title` varchar(255)
,`preface` varchar(255)
,`detail` text
,`keyword` varchar(75)
,`image` varchar(255)
,`status` tinyint(1)
,`insert_user` int(11)
,`insert_date` datetime
,`update_user` int(11)
,`update_date` datetime
,`release_date` datetime
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `catalogues`
--

CREATE TABLE `catalogues` (
  `id` int(11) NOT NULL,
  `slug` text NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `id_merk` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `type` enum('unit','part','ban','battery') DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `catalogues`
--

INSERT INTO `catalogues` (`id`, `slug`, `name`, `id_merk`, `description`, `image`, `type`, `status`) VALUES
(1, 'mitsubishi-fd50nt-2sp30-sped-forklift-1', 'MITSUBISHI FD50NT-2SP30-SPED Forklift', 1, '<ul>\n<li>\n<p>Nama GRENDiA yang diberikan Mitsubishi untuk forklift ini berarti &ldquo;Green Diamond / Berlian Hijau&rdquo;: Hijau untuk perlindungan terhadap lingkungan; Berlian untuk kualitas tinggi, handal dan bagus untuk investasi. Cepat, stabil dan sangat bertenaga, forklift diesel Mitsubishi ini memberikan kombinasi dari efisiensi tinggi dan rendah emisi. Tidak lupa, Mitsubishi juga memberikan design yang ergonomic untuk meningkatkan kenyamana, kontrol dan presisi saat penggunaan. Memberikan hasil sebuah forklift yang dapat dihandalkan selalu dalam performa terbaik, apapun kondisi dan keadaan saat penggunaan.</p>\n<h4 class=\"ng-binding\">INTEGRATED PRESENCE SYSTEM &#40;IPS2&#41;</h4>\n<p>Meningkatkan keamaan dengan cara mengunci hidrolik dan fungsi roda apabila operator tidak menjalankan forklift lebih dari 2 detik atau lebih, dengan akses PIN sebagai fitur standart untuk mencegah penggunaan oleh operator yang tidak seharusnya.</p>\n<h4 class=\"ng-binding\">VEHICLE CONTROL MODULE</h4>\n<p>Berfungsi sebagai &ldquo;otak&rdquo; bertenaga tinggi yang mengontrol mesin dan fungsi elektronik secara terus &ndash; menerus dan konstan untuk mengoptimalkan performa mesin dan konsumsi bahan bakar.</p>\n<h4 class=\"ng-binding\">SEALED CHASSIS WITH FULL BELLY GUARD AND INNER WHEEL COVERS</h4>\n<p>Perlindungan lengkap untuk mesin dari segala sisi untuk mengurangi resiko terjadi kerusakan dari benda &ndash; benda sekitar yang masuk ke bagian mesin. Juga mengurangi tingkat kebisingan dan menghindari hal &ndash; hal yang berhubungan dengan kesehatan melalui debu &ndash; debu partikel.</p>\n<h4 class=\"ng-binding\">ADVANCED INDUSTRIAL ENGINE</h4>\n<p>Mesin yang di design untuk industri yang mampu memberikan torsi dan tenaga besar tetapi bebas dari kerusakan. Performa kelas dunia dikombinasikan dengan konsumsi bahan bakar terendah pada kelasnya.</p>\n<h4 class=\"ng-binding\">ENGINE PROTECTION SYSTEM</h4>\n<p>Untuk melindungi inti dari mesin, dalam situasi terlalu panas, sistem perlindungan mesin menawarkan dua tahap perlindungan. Pertama memperlambat mesin secara perlahan, lalu mematikan total mesin untuk menghindari terjadinya kerusakan.</p>\n</li>\n</ul>\n<table id=\"footable_1567\" class=\"foo-table ninja_footable foo_table_1567 ninja_table_unique_id_1483304782_1567 ui table nt_type_ajax_table selectable celled striped compact vertical_centered footable-paging-right ninja_table_search_disabled footable footable-1 footable-paging breakpoint-lg\" data-ninja_table_instance=\"ninja_table_instance_0\" data-footable_id=\"1567\" data-filter-delay=\"500\" data-unique_identifier=\"ninja_table_unique_id_1483304782_1567\">\n<thead>\n<tr class=\"footable-header\">\n<th class=\"ninja_column_0 ninja_clmn_nm_model footable-first-visible\" scope=\"col\">Model</th>\n<th class=\"ninja_column_1 ninja_clmn_nm_fd_15_nd_2_sp_30_ps_ps footable-last-visible\" scope=\"col\">FD50NT 2SP30 PS/PS</th>\n</tr>\n</thead>\n<colgroup><col class=\"ninja_column_0 \" /><col class=\"ninja_column_1 \" /></colgroup>\n<tfoot></tfoot>\n<tbody>\n<tr class=\"ninja_table_row_0 nt_row_id_252\">\n<td class=\"ninja_column_0 ninja_clmn_nm_model footable-first-visible\">Kapasitas</td>\n<td class=\"ninja_column_1 ninja_clmn_nm_fd_15_nd_2_sp_30_ps_ps footable-last-visible\">5.000 Kg</td>\n</tr>\n<tr class=\"ninja_table_row_1 nt_row_id_251\">\n<td class=\"ninja_column_0 ninja_clmn_nm_model footable-first-visible\">Lifting Height</td>\n<td class=\"ninja_column_1 ninja_clmn_nm_fd_15_nd_2_sp_30_ps_ps footable-last-visible\">3 - 7 Meter</td>\n</tr>\n<tr class=\"ninja_table_row_2 nt_row_id_250\">\n<td class=\"ninja_column_0 ninja_clmn_nm_model footable-first-visible\">Load Center</td>\n<td class=\"ninja_column_1 ninja_clmn_nm_fd_15_nd_2_sp_30_ps_ps footable-last-visible\">500 mm</td>\n</tr>\n<tr class=\"ninja_table_row_3 nt_row_id_249\">\n<td class=\"ninja_column_0 ninja_clmn_nm_model footable-first-visible\">Transmission</td>\n<td class=\"ninja_column_1 ninja_clmn_nm_fd_15_nd_2_sp_30_ps_ps footable-last-visible\">Matic</td>\n</tr>\n<tr class=\"ninja_table_row_4 nt_row_id_248\">\n<td class=\"ninja_column_0 ninja_clmn_nm_model footable-first-visible\">Engine</td>\n<td class=\"ninja_column_1 ninja_clmn_nm_fd_15_nd_2_sp_30_ps_ps footable-last-visible\">MITSUBISHI Diesel S6S</td>\n</tr>\n<tr class=\"ninja_table_row_5 nt_row_id_253\">\n<td class=\"ninja_column_0 ninja_clmn_nm_model footable-first-visible\">Tyre</td>\n<td class=\"ninja_column_1 ninja_clmn_nm_fd_15_nd_2_sp_30_ps_ps footable-last-visible\">Pneumatic</td>\n</tr>\n</tbody>\n</table>\n<p><br />PT. PRIME FORKLIFT SERVICES<br />Menyediakan berbagai layanan diantaranya<br />- Sales used forklift<br />- Service &amp; sparepart forklift<br />- Ban forklift &amp; aksesories forklift<br />- Battery forklift Dll<br />- Rental forklift</p>', '210119133119.JPG', 'unit', 0),
(2, 'nichiyu-fbr-15-80-300-forkliftb', 'NICHIYU FBR 15-80-300 FORKLIFTb', 2, '<p>Forklift elektrik dari Jepang dengan merek Nichiyu, cocok digunakan untuk membantu pekerjaan di warehouse. Tersedia dalam dua jenis batre Lithium atau Lead Acid, Ramah linkungan karna menggunakan batre yang dapat di charge, mesin dapat otomatis mati jika tidak digunakan selama 15 menit, nyaman untuk digunakan dan memiliki fitur yang canggih.</p>', '210119132319.JPG', 'unit', 1),
(3, 'mitsubishi-forklift-truck-fd50nt-2sp30-spedn', 'MITSUBISHI FORKLIFT TRUCK FD50NT-2SP30-SPEDn', 1, '<table id=\"footable_1567\" class=\"foo-table ninja_footable foo_table_1567 ninja_table_unique_id_1483304782_1567 ui table nt_type_ajax_table selectable celled striped compact vertical_centered footable-paging-right ninja_table_search_disabled footable footable-1 footable-paging breakpoint-lg\" data-ninja_table_instance=\"ninja_table_instance_0\" data-footable_id=\"1567\" data-filter-delay=\"500\" data-unique_identifier=\"ninja_table_unique_id_1483304782_1567\">\n<thead>\n<tr class=\"footable-header\">\n<th class=\"ninja_column_0 ninja_clmn_nm_model footable-first-visible\" scope=\"col\">Model</th>\n<th class=\"ninja_column_1 ninja_clmn_nm_fd_15_nd_2_sp_30_ps_ps footable-last-visible\" scope=\"col\">FD50NT 2SP30 PS/PS</th>\n</tr>\n</thead>\n<colgroup><col class=\"ninja_column_0 \" /><col class=\"ninja_column_1 \" /></colgroup>\n<tfoot></tfoot>\n<tbody>\n<tr class=\"ninja_table_row_0 nt_row_id_252\">\n<td class=\"ninja_column_0 ninja_clmn_nm_model footable-first-visible\">Kapasitas</td>\n<td class=\"ninja_column_1 ninja_clmn_nm_fd_15_nd_2_sp_30_ps_ps footable-last-visible\">5.000 Kg</td>\n</tr>\n<tr class=\"ninja_table_row_1 nt_row_id_251\">\n<td class=\"ninja_column_0 ninja_clmn_nm_model footable-first-visible\">Lifting Height</td>\n<td class=\"ninja_column_1 ninja_clmn_nm_fd_15_nd_2_sp_30_ps_ps footable-last-visible\">3 - 7 Meter</td>\n</tr>\n<tr class=\"ninja_table_row_2 nt_row_id_250\">\n<td class=\"ninja_column_0 ninja_clmn_nm_model footable-first-visible\">Load Center</td>\n<td class=\"ninja_column_1 ninja_clmn_nm_fd_15_nd_2_sp_30_ps_ps footable-last-visible\">500 mm</td>\n</tr>\n<tr class=\"ninja_table_row_3 nt_row_id_249\">\n<td class=\"ninja_column_0 ninja_clmn_nm_model footable-first-visible\">Transmission</td>\n<td class=\"ninja_column_1 ninja_clmn_nm_fd_15_nd_2_sp_30_ps_ps footable-last-visible\">Matic</td>\n</tr>\n<tr class=\"ninja_table_row_4 nt_row_id_248\">\n<td class=\"ninja_column_0 ninja_clmn_nm_model footable-first-visible\">Engine</td>\n<td class=\"ninja_column_1 ninja_clmn_nm_fd_15_nd_2_sp_30_ps_ps footable-last-visible\">MITSUBISHI Diesel S6S</td>\n</tr>\n<tr class=\"ninja_table_row_5 nt_row_id_253\">\n<td class=\"ninja_column_0 ninja_clmn_nm_model footable-first-visible\">Tyre</td>\n<td class=\"ninja_column_1 ninja_clmn_nm_fd_15_nd_2_sp_30_ps_ps footable-last-visible\">Pneumatic</td>\n</tr>\n</tbody>\n</table>\n<p>&nbsp;</p>\n<p>GRATIS PENGIRIMAN DAERAH JABODETABEK DAN JAWA BARAT<br />UNTUK HARGA SILAHKAN CHAT KAMI UNTUK INFORMASI LEBIH LANJUT<br /><br />Mitsubishi FD50NT-2SP30-SPED Forklift merupakan Forklift dari Jepang dengan merek Mitsubishi cocok digunakan untuk membantu pekerjaan di warehouse dalam ruangan ataupun diluar ruangan. Serta tersedia juga forklift dengan bahan bakar gas atau diesel Roda bisa diganti dengan sesuai kebutuhan.<br />Acrylic roof (optional), tiltable steering column, fully hydraulic steering, combination switch dan pwer-train full floating structure.<br /><br />PT. PRIME FORKLIFT SERVICES<br />Menyediakan berbagai layanan diantaranya<br />- Sales used forklift<br />- Service &amp; sparepart forklift<br />- Ban forklift &amp; aksesories forklift<br />- Battery forklift Dll<br />- Rental forklift</p>', '201217153648.JPG', 'unit', 1),
(4, 'mitsubishi-forklift-truck-fd70nh-vm300', 'MITSUBISHI FORKLIFT TRUCK FD70NH-VM300', 1, '<p>GRATIS PENGIRIMAN DAERAH JABODETABEK DAN JAWA BARAT<br /><br />UNTUK HARGA SILAHKAN CHAT KAMI UNTUK INFORMASI LEBIH LANJUT</p>\n<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large XcVN5d tw-ta\" dir=\"ltr\" data-placeholder=\"Translation\"><span lang=\"id\">Tersedia dalam 2 model berbeda dengan kapasitas mulai dari 6 dan 7 ton, truk forklif penyeimbang diesel tugas berat Mitsubishi dibuat untuk menghasilkan kinerja yang kokoh, hemat energi, dan luar biasa untuk memenuhi kebutuhan aplikasi Anda.\n\nTruk forklif seri Grendia MX memberikan kenyamanan pengemudi tingkat tinggi, pengangkatan halus dan jarak pandang yang sangat baik. Ini adalah truk dinamis yang menggabungkan kedua teknologi mutakhir revolusioner dengan cadangan teknik yang sangat baik untuk mengoptimalkan produktivitas Anda, dan memberdayakan Anda kekuatan untuk kinerja.</span></pre>\n<p><br />PT. PRIME FORKLIFT SERVICES<br />Menyediakan berbagai layanan diantaranya<br /><br />- Sales used forklift<br />- Service &amp; sparepart forklift<br />- Ban forklift &amp; aksesories forklift<br />- Battery forklift Dll<br />- Rental forklift</p>', '201217154148.JPG', 'unit', 1),
(5, 'mitsubishi-forklift-truck-fd30nd-2sp30', 'MITSUBISHI FORKLIFT TRUCK FD30ND 2SP30', 1, '<p>GRATIS PENGIRIMAN DAERAH JABODETABEK DAN JAWA BARAT<br /><br />UNTUK HARGA SILAHKAN CHAT KAMI UNTUK INFORMASI LEBIH LANJUT<br />Mitsubishi FD50NT-2SP30-SPED Forklift merupakan Forklift dari Jepang dengan merek Mitsubishi cocok digunakan untuk membantu pekerjaan di warehouse dalam ruangan ataupun diluar ruangan. Serta tersedia juga forklift dengan bahan bakar gas atau diesel Roda bisa diganti dengan sesuai kebutuhan.<br />Acrylic roof (optional), tiltable steering column, fully hydraulic steering, combination switch dan pwer-train full floating structure.<br /><br /></p>\n<table id=\"footable_1520\" class=\"foo-table ninja_footable foo_table_1520 ninja_table_unique_id_1406307309_1520 ui table nt_type_ajax_table selectable celled striped compact vertical_centered footable-paging-right ninja_table_search_disabled footable footable-1 footable-paging breakpoint-lg\" data-ninja_table_instance=\"ninja_table_instance_0\" data-footable_id=\"1520\" data-filter-delay=\"500\" data-unique_identifier=\"ninja_table_unique_id_1406307309_1520\">\n<thead>\n<tr class=\"footable-header\">\n<th class=\"ninja_column_0 ninja_clmn_nm_model footable-first-visible\" scope=\"col\">Model</th>\n<th class=\"ninja_column_1 ninja_clmn_nm_fd_15_nd_2_sp_30_ps_ps footable-last-visible\" scope=\"col\">FD30ND 2SP30 PS/PS</th>\n</tr>\n</thead>\n<colgroup><col class=\"ninja_column_0 \" /><col class=\"ninja_column_1 \" /></colgroup>\n<tfoot></tfoot>\n<tbody>\n<tr class=\"ninja_table_row_0 nt_row_id_206\">\n<td class=\"ninja_column_0 ninja_clmn_nm_model footable-first-visible\">Kapasitas</td>\n<td class=\"ninja_column_1 ninja_clmn_nm_fd_15_nd_2_sp_30_ps_ps footable-last-visible\">3.000 Kg</td>\n</tr>\n<tr class=\"ninja_table_row_1 nt_row_id_207\">\n<td class=\"ninja_column_0 ninja_clmn_nm_model footable-first-visible\">Lifting Height</td>\n<td class=\"ninja_column_1 ninja_clmn_nm_fd_15_nd_2_sp_30_ps_ps footable-last-visible\">3 - 7 Meter</td>\n</tr>\n<tr class=\"ninja_table_row_2 nt_row_id_208\">\n<td class=\"ninja_column_0 ninja_clmn_nm_model footable-first-visible\">Load Center</td>\n<td class=\"ninja_column_1 ninja_clmn_nm_fd_15_nd_2_sp_30_ps_ps footable-last-visible\">500 mm</td>\n</tr>\n<tr class=\"ninja_table_row_3 nt_row_id_209\">\n<td class=\"ninja_column_0 ninja_clmn_nm_model footable-first-visible\">Transmission</td>\n<td class=\"ninja_column_1 ninja_clmn_nm_fd_15_nd_2_sp_30_ps_ps footable-last-visible\">Manual</td>\n</tr>\n<tr class=\"ninja_table_row_4 nt_row_id_210\">\n<td class=\"ninja_column_0 ninja_clmn_nm_model footable-first-visible\">Engine</td>\n<td class=\"ninja_column_1 ninja_clmn_nm_fd_15_nd_2_sp_30_ps_ps footable-last-visible\">MITSUBISHI Diesel S4S</td>\n</tr>\n<tr class=\"ninja_table_row_5 nt_row_id_211\">\n<td class=\"ninja_column_0 ninja_clmn_nm_model footable-first-visible\">Tyre</td>\n<td class=\"ninja_column_1 ninja_clmn_nm_fd_15_nd_2_sp_30_ps_ps footable-last-visible\">Pneumatic</td>\n</tr>\n</tbody>\n</table>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>PT. PRIME FORKLIFT SERVICES<br />Menyediakan berbagai layanan diantaranya<br /><br />- Sales used forklift<br />- Service &amp; sparepart forklift<br />- Ban forklift &amp; aksesories forklift<br />- Battery forklift Dll<br />- Rental forklift</p>', '201217154358.JPG', 'unit', 1),
(6, 'wheel-cylinder-91446-00900', 'WHEEL CYLINDER 91446-00900', 6, '<p>PT. PRIME FORKLIFT SERVICES<br />Menyediakan berbagai layanan diantaranya<br />- Sales used forklift<br />- Service &amp; sparepart forklift<br />- Ban forklift &amp; aksesories forklift<br />- Battery forklift Dll<br />- Rental forklift</p>', '201217155358.jpg', 'part', 1),
(7, 'lamp-rear-nichiyu-forklift-36410-07570', 'LAMP REAR NICHIYU FORKLIFT 36410-07570', 6, '<p>PT. PRIME FORKLIFT SERVICES<br />Menyediakan berbagai layanan diantaranya<br /><br />- Sales used forklift<br />- Service &amp; sparepart forklift<br />- Ban forklift &amp; aksesories forklift<br />- Battery forklift Dll<br />- Rental forklift</p>', '201217154657.jpg', 'part', 1),
(8, 'red-zone-safety-light-forklift', 'RED ZONE SAFETY LIGHT FORKLIFT', 6, '<p>Type:Forklift Safety Warning Light<br />Voltage: 10~80V DC<br />Color: Red or Blue for optional<br />Life Time:&gt;50000 Hours<br />Working Temperature: -45 ~85C<br />Light Resource: HIGH POWER LED<br />The high performance of 100% waterproof,dustproof , quakeproof<br /><br />Application:<br />Work/ Spot/ Day/ Fog lamp, Available in the auxiliary lamp for SUV, fire engine, ambulance and car<br />Indoor &amp; Outdoor uses<br />Back up light<br />Off Road Lighting<br />Truck, Trailer Interior &amp; Exterior Lighting<br />Construction Lighting<br />Garden, Backyard Lighting<br />Boat Lighting<br />day time running light</p>', '201217154535.jpg', 'part', 1),
(9, 'nichiyu-fbt15-80-300-forklift-p-tyre', 'NICHIYU FBT15-80-300 Forklift [P-TYRE]', 2, '<ul>\n<li>Tersedia dengan jenis cold storage dan explosion proof</li>\n<li>Cocok digunakan untuk membantu pekerjaan di warehouse</li>\n<li>Mesin dapat otomatis mati jika tidak digunakan selama 15 menit</li>\n<li>Nyaman untuk digunakan dan memiliki fitur yang canggih</li>\n</ul>\n<p>PT. Prime Forklift Service Kami bergerak di bidang penjualan forklift merk mitsubishi dan nichiyu serta sparepart forklift mitsubishi, nichiyu dan merk lainnya kami menyediakan berbagai sparepart , electric part forklift ,aksesories forklift , lampu safety foklift , ban forklift , battery forklift hingga jasa service dan rental.<br />Jika ada yang di cari mengenai part forklift kami siap di bantu untuk informasi lebih jelasnya bisa terlebih dahulu chat kami.<br />Kenapa harus beli dari kami ? karna kami resmi dealer forklift mitsubishi dan nichiyu dan kami menyediakan berbagai stok kebutuhan sparepartnya dan di jamin original ( Genuine Part ) serta harga yang murah dan bersaing.</p>', '210119132319.JPG', 'unit', 1),
(10, 'nichiyu-fbr10n-80-300-forklif', 'Nichiyu FBR10N-80-300 Forklif', 2, '<ul>\n<li>Tersedia dengan jenis cold storage dan explosion proof</li>\n<li>Cocok digunakan untuk membantu pekerjaan di warehouse</li>\n<li>Mesin dapat otomatis mati jika tidak digunakan selama 15 menit</li>\n<li>Nyaman untuk digunakan dan memiliki fitur yang canggih</li>\n</ul>\n<p>PT. Prime Forklift Service Kami bergerak di bidang penjualan forklift merk mitsubishi dan nichiyu serta sparepart forklift mitsubishi, nichiyu dan merk lainnya kami menyediakan berbagai sparepart , electric part forklift ,aksesories forklift , lampu safety foklift , ban forklift , battery forklift hingga jasa service dan rental.<br /><br />Jika ada yang di cari mengenai part forklift kami siap di bantu untuk informasi lebih jelasnya bisa terlebih dahulu chat kami.<br />Kenapa harus beli dari kami ? karna kami resmi dealer forklift mitsubishi dan nichiyu dan kami menyediakan berbagai stok kebutuhan sparepartnya dan di jamin original ( Genuine Part ) serta harga yang murah dan bersaing.</p>', '210119132223.JPG', 'unit', 1),
(11, 'nichiyu-fbt18-80-300-forklift', 'Nichiyu FBT18-80-300 Forklift', 2, '<p>- Tersedia dengan jenis cold storage dan explosion proof<br />- Cocok digunakan untuk membantu pekerjaan di warehouse<br />- Mesin dapat otomatis mati jika tidak digunakan selama 15 menit<br />- Nyaman untuk digunakan dan memiliki fitur yang canggih<br /><br />PT. Prime Forklift Service Kami bergerak di bidang penjualan forklift merk mitsubishi dan nichiyu serta sparepart forklift mitsubishi, nichiyu dan merk lainnya kami menyediakan berbagai sparepart , electric part forklift ,aksesories forklift , lampu safety foklift , ban forklift , battery forklift hingga jasa service dan rental.<br />Jika ada yang di cari mengenai part forklift kami siap di bantu untuk informasi lebih jelasnya bisa terlebih dahulu chat kami.<br />Kenapa harus beli dari kami ? karna kami resmi dealer forklift mitsubishi dan nichiyu dan kami menyediakan berbagai stok kebutuhan sparepartnya dan di jamin original ( Genuine Part ) serta harga yang murah dan bersaing.</p>', '210119132223.JPG', 'unit', 1),
(12, 'mitsubishi-fg50cnt-2sp30-ps-ps-forklift-m', 'Mitsubishi FG50CNT-2SP30-PS-PS Forklift m', 1, '<ul>\n<li>Cocok digunakan untuk membantu pekerjaan di warehouse dalam ruangan ataupun diluar ruangan</li>\n<li>Tersedia juga forklift dengan bahan bakar gas atau diesel</li>\n<li>Roda bisa diganti dengan sesuai kebutuhan</li>\n</ul>\n<p>PT. Prime Forklift Service Kami bergerak di bidang penjualan forklift merk mitsubishi dan nichiyu serta sparepart forklift mitsubishi, nichiyu dan merk lainnya kami menyediakan berbagai sparepart , electric part forklift ,aksesories forklift , lampu safety foklift , ban forklift , battery forklift hingga jasa service dan rental.<br /><br />Jika ada yang di cari mengenai part forklift kami siap di bantu untuk informasi lebih jelasnya bisa terlebih dahulu chat kami.<br />Kenapa harus beli dari kami ? karna kami resmi dealer forklift mitsubishi dan nichiyu dan kami menyediakan berbagai stok kebutuhan sparepartnya dan di jamin original ( Genuine Part ) serta harga yang murah dan bersaing.</p>', '210119133119.JPG', 'unit', 1),
(13, 'mitsubishi-fd25nd-2sp30-psps-v', 'Mitsubishi FD25ND 2SP30 PS/PS v', 1, '<p>Nama GRENDiA yang diberikan Mitsubishi untuk forklift ini berarti &ldquo;Green Diamond / Berlian Hijau&rdquo;: Hijau untuk perlindungan terhadap lingkungan; Berlian untuk kualitas tinggi, handal dan bagus untuk investasi. Cepat, stabil dan sangat bertenaga, forklift diesel Mitsubishi ini memberikan kombinasi dari efisiensi tinggi dan rendah emisi. Tidak lupa, Mitsubishi juga memberikan design yang ergonomic untuk meningkatkan kenyamana, kontrol dan presisi saat penggunaan. Memberikan hasil sebuah forklift yang dapat dihandalkan selalu dalam performa terbaik, apapun kondisi dan keadaan saat penggunaan.</p>\n<h4 class=\"ng-binding\">Integrated Presence System &#40;IPS2&#41;</h4>\n<p>Meningkatkan keamaan dengan cara mengunci hidrolik dan fungsi roda apabila operator tidak menjalankan forklift lebih dari 2 detik atau lebih, dengan akses PIN sebagai fitur standart untuk mencegah penggunaan oleh operator yang tidak seharusnya.</p>\n<h4 class=\"ng-binding\">Vehicle control module</h4>\n<p>Berfungsi sebagai &ldquo;otak&rdquo; bertenaga tinggi yang mengontrol mesin dan fungsi elektronik secara terus &ndash; menerus dan konstan untuk mengoptimalkan performa mesin dan konsumsi bahan bakar.</p>\n<h4 class=\"ng-binding\">Sealed chassis with full belly guard and inner wheel covers</h4>\n<p>Perlindungan lengkap untuk mesin dari segala sisi untuk mengurangi resiko terjadi kerusakan dari benda &ndash; benda sekitar yang masuk ke bagian mesin. Juga mengurangi tingkat kebisingan dan menghindari hal &ndash; hal yang berhubungan dengan kesehatan melalui debu &ndash; debu partikel.</p>\n<h4 class=\"ng-binding\">Advanced industrial engine</h4>\n<p>Mesin yang di design untuk industri yang mampu memberikan torsi dan tenaga besar tetapi bebas dari kerusakan. Performa kelas dunia dikombinasikan dengan konsumsi bahan bakar terendah pada kelasnya.</p>\n<h4 class=\"ng-binding\">Engine protection system</h4>\n<p>Untuk melindungi inti dari mesin, dalam situasi terlalu panas, sistem perlindungan mesin menawarkan dua tahap perlindungan. Pertama memperlambat mesin secara perlahan, lalu mematikan total mesin untuk menghindari terjadinya kerusakan.</p>\n<p>&nbsp;</p>\n<table id=\"footable_1515\" class=\"foo-table ninja_footable foo_table_1515 ninja_table_unique_id_382318222_1515 ui table nt_type_ajax_table selectable celled striped compact vertical_centered footable-paging-right ninja_table_search_disabled footable footable-1 footable-paging breakpoint-lg\" data-ninja_table_instance=\"ninja_table_instance_0\" data-footable_id=\"1515\" data-filter-delay=\"500\" data-unique_identifier=\"ninja_table_unique_id_382318222_1515\">\n<thead>\n<tr class=\"footable-header\">\n<th class=\"ninja_column_0 ninja_clmn_nm_model footable-first-visible\" scope=\"col\">Model</th>\n<th class=\"ninja_column_1 ninja_clmn_nm_fd_15_nd_2_sp_30_ps_ps footable-last-visible\" scope=\"col\">FD25ND 2SP30 PS/PS</th>\n</tr>\n</thead>\n<colgroup><col class=\"ninja_column_0 \" /><col class=\"ninja_column_1 \" /></colgroup>\n<tfoot></tfoot>\n<tbody>\n<tr class=\"ninja_table_row_0 nt_row_id_194\">\n<td class=\"ninja_column_0 ninja_clmn_nm_model footable-first-visible\">Kapasitas</td>\n<td class=\"ninja_column_1 ninja_clmn_nm_fd_15_nd_2_sp_30_ps_ps footable-last-visible\">2.500 Kg</td>\n</tr>\n<tr class=\"ninja_table_row_1 nt_row_id_195\">\n<td class=\"ninja_column_0 ninja_clmn_nm_model footable-first-visible\">Lifting Height</td>\n<td class=\"ninja_column_1 ninja_clmn_nm_fd_15_nd_2_sp_30_ps_ps footable-last-visible\">3 - 7 Meter</td>\n</tr>\n<tr class=\"ninja_table_row_2 nt_row_id_196\">\n<td class=\"ninja_column_0 ninja_clmn_nm_model footable-first-visible\">Load Center</td>\n<td class=\"ninja_column_1 ninja_clmn_nm_fd_15_nd_2_sp_30_ps_ps footable-last-visible\">500 mm</td>\n</tr>\n<tr class=\"ninja_table_row_3 nt_row_id_197\">\n<td class=\"ninja_column_0 ninja_clmn_nm_model footable-first-visible\">Transmission</td>\n<td class=\"ninja_column_1 ninja_clmn_nm_fd_15_nd_2_sp_30_ps_ps footable-last-visible\">Manual</td>\n</tr>\n<tr class=\"ninja_table_row_4 nt_row_id_198\">\n<td class=\"ninja_column_0 ninja_clmn_nm_model footable-first-visible\">Engine</td>\n<td class=\"ninja_column_1 ninja_clmn_nm_fd_15_nd_2_sp_30_ps_ps footable-last-visible\">MITSUBISHI Diesel S4S</td>\n</tr>\n<tr class=\"ninja_table_row_5 nt_row_id_199\">\n<td class=\"ninja_column_0 ninja_clmn_nm_model footable-first-visible\">Tyre</td>\n<td class=\"ninja_column_1 ninja_clmn_nm_fd_15_nd_2_sp_30_ps_ps footable-last-visible\">Pneumatic</td>\n</tr>\n</tbody>\n</table>\n<p>PT. PRIME FORKLIFT SERVICES<br />Menyediakan berbagai layanan diantaranya<br />- Sales used forklift<br />- Service &amp; sparepart forklift<br />- Ban forklift &amp; aksesories forklift<br />- Battery forklift Dll<br />- Rental forklift</p>', '210119133542.JPG', 'unit', 1),
(14, 'mitsubishi-fd20hs-2sp30-pdps-forklif', 'Mitsubishi FD20HS-2SP30-PD/PS Forklif', 1, '<p>Nama GRENDiA yang diberikan Mitsubishi untuk forklift ini berarti &ldquo;Green Diamond / Berlian Hijau&rdquo;: Hijau untuk perlindungan terhadap lingkungan; Berlian untuk kualitas tinggi, handal dan bagus untuk investasi. Cepat, stabil dan sangat bertenaga, forklift diesel Mitsubishi ini memberikan kombinasi dari efisiensi tinggi dan rendah emisi. Tidak lupa, Mitsubishi juga memberikan design yang ergonomic untuk meningkatkan kenyamana, kontrol dan presisi saat penggunaan. Memberikan hasil sebuah forklift yang dapat dihandalkan selalu dalam performa terbaik, apapun kondisi dan keadaan saat penggunaan.</p>\n<h4 class=\"ng-binding\">INTEGRATED PRESENCE SYSTEM &#40;IPS2&#41;</h4>\n<p>Meningkatkan keamaan dengan cara mengunci hidrolik dan fungsi roda apabila operator tidak menjalankan forklift lebih dari 2 detik atau lebih, dengan akses PIN sebagai fitur standart untuk mencegah penggunaan oleh operator yang tidak seharusnya.</p>\n<h4 class=\"ng-binding\">VEHICLE CONTROL MODULE</h4>\n<p>Berfungsi sebagai &ldquo;otak&rdquo; bertenaga tinggi yang mengontrol mesin dan fungsi elektronik secara terus &ndash; menerus dan konstan untuk mengoptimalkan performa mesin dan konsumsi bahan bakar.</p>\n<h4 class=\"ng-binding\">SEALED CHASSIS WITH FULL BELLY GUARD AND INNER WHEEL COVERS</h4>\n<p>Perlindungan lengkap untuk mesin dari segala sisi untuk mengurangi resiko terjadi kerusakan dari benda &ndash; benda sekitar yang masuk ke bagian mesin. Juga mengurangi tingkat kebisingan dan menghindari hal &ndash; hal yang berhubungan dengan kesehatan melalui debu &ndash; debu partikel.</p>\n<h4 class=\"ng-binding\">ADVANCED INDUSTRIAL ENGINE</h4>\n<p>Mesin yang di design untuk industri yang mampu memberikan torsi dan tenaga besar tetapi bebas dari kerusakan. Performa kelas dunia dikombinasikan dengan konsumsi bahan bakar terendah pada kelasnya.</p>\n<h4 class=\"ng-binding\">ENGINE PROTECTION SYSTEM</h4>\n<p>Untuk melindungi inti dari mesin, dalam situasi terlalu panas, sistem perlindungan mesin menawarkan dua tahap perlindungan. Pertama memperlambat mesin secara perlahan, lalu mematikan total mesin untuk menghindari terjadinya kerusakan.</p>\n<table id=\"footable_1513\" class=\"foo-table ninja_footable foo_table_1513 ninja_table_unique_id_1010808670_1513 ui table nt_type_ajax_table selectable celled striped compact vertical_centered footable-paging-right ninja_table_search_disabled footable footable-1 footable-paging breakpoint-lg\" data-ninja_table_instance=\"ninja_table_instance_0\" data-footable_id=\"1513\" data-filter-delay=\"500\" data-unique_identifier=\"ninja_table_unique_id_1010808670_1513\">\n<thead>\n<tr class=\"footable-header\">\n<th class=\"ninja_column_0 ninja_clmn_nm_model footable-first-visible\" scope=\"col\">Model</th>\n<th class=\"ninja_column_1 ninja_clmn_nm_fd_15_nd_2_sp_30_ps_ps footable-last-visible\" scope=\"col\">FD20NT 2SP30 PS/PS</th>\n</tr>\n</thead>\n<colgroup><col class=\"ninja_column_0 \" /><col class=\"ninja_column_1 \" /></colgroup>\n<tfoot></tfoot>\n<tbody>\n<tr class=\"ninja_table_row_0 nt_row_id_188\">\n<td class=\"ninja_column_0 ninja_clmn_nm_model footable-first-visible\">Kapasitas</td>\n<td class=\"ninja_column_1 ninja_clmn_nm_fd_15_nd_2_sp_30_ps_ps footable-last-visible\">2.000 Kg</td>\n</tr>\n<tr class=\"ninja_table_row_1 nt_row_id_189\">\n<td class=\"ninja_column_0 ninja_clmn_nm_model footable-first-visible\">Lifting Height</td>\n<td class=\"ninja_column_1 ninja_clmn_nm_fd_15_nd_2_sp_30_ps_ps footable-last-visible\">3 - 7 Meter</td>\n</tr>\n<tr class=\"ninja_table_row_2 nt_row_id_190\">\n<td class=\"ninja_column_0 ninja_clmn_nm_model footable-first-visible\">Load Center</td>\n<td class=\"ninja_column_1 ninja_clmn_nm_fd_15_nd_2_sp_30_ps_ps footable-last-visible\">500 mm</td>\n</tr>\n<tr class=\"ninja_table_row_3 nt_row_id_191\">\n<td class=\"ninja_column_0 ninja_clmn_nm_model footable-first-visible\">Transmission</td>\n<td class=\"ninja_column_1 ninja_clmn_nm_fd_15_nd_2_sp_30_ps_ps footable-last-visible\">Matic</td>\n</tr>\n<tr class=\"ninja_table_row_4 nt_row_id_192\">\n<td class=\"ninja_column_0 ninja_clmn_nm_model footable-first-visible\">Engine</td>\n<td class=\"ninja_column_1 ninja_clmn_nm_fd_15_nd_2_sp_30_ps_ps footable-last-visible\">MITSUBISHI Diesel S4S</td>\n</tr>\n<tr class=\"ninja_table_row_5 nt_row_id_193\">\n<td class=\"ninja_column_0 ninja_clmn_nm_model footable-first-visible\">Tyre</td>\n<td class=\"ninja_column_1 ninja_clmn_nm_fd_15_nd_2_sp_30_ps_ps footable-last-visible\">Pneumatic</td>\n</tr>\n</tbody>\n</table>\n<p>PT. PRIME FORKLIFT SERVICES<br />Menyediakan berbagai layanan diantaranya<br />- Sales used forklift<br />- Service &amp; sparepart forklift<br />- Ban forklift &amp; aksesories forklift<br />- Battery forklift Dll<br />- Rental forklift</p>', '210119133542.JPG', 'unit', 1),
(15, 'mlift-sbp18eas-power-stacker-forklift', 'MLift SBP18EAS Power Stacker Forklift', 1, '<ul>\n<li>Cocok digunakan untuk membantu pekerjaan di warehouse</li>\n<li>Didesain ramah lingkungan karna menggunakan baterai yang dapat di charge</li>\n<li>Nyaman untuk digunakan dan memiliki fitur yang canggih</li>\n</ul>\n<ul>\n<li>1800kg capacity stacker, with 24V/280AH battery and 40A</li>\n<li>External charger, Adjustable fork width (200~760mm),</li>\n<li>3000mm lifting height, Hour meter, battery discharge</li>\n<li>Indicator, PU wheel, Pin-Code startup</li>\n</ul>\n<p>PT. Prime Forklift Service Kami bergerak di bidang penjualan forklift merk mitsubishi dan nichiyu serta sparepart forklift mitsubishi, nichiyu dan merk lainnya kami menyediakan berbagai sparepart , electric part forklift ,aksesories forklift , lampu safety foklift , ban forklift , battery forklift hingga jasa service dan rental.<br /><br />Jika ada yang di cari mengenai part forklift kami siap di bantu untuk informasi lebih jelasnya bisa terlebih dahulu chat kami.<br />Kenapa harus beli dari kami ? karna kami resmi dealer forklift mitsubishi dan nichiyu dan kami menyediakan berbagai stok kebutuhan sparepartnya dan di jamin original ( Genuine Part ) serta harga yang murah dan bersaing.</p>', '210119134247.JPG', 'unit', 1),
(16, 'hand-pallet-3-ton-mitsubishi', 'HAND PALLET 3 TON MITSUBISHI', 1, '<p>HAND PALLET 3 TON MITSUBISHI<br />MATERIAL KUAT DENGAN KUALITAS TERBAIK DARI MERK MITSUBISHI&nbsp;<br />Spesifikasi : Lihat Gambar<br />Garansi : 3 bulan hydrolic</p>\n<p>&nbsp;</p>\n<table id=\"footable_914\" class=\"foo-table ninja_footable foo_table_914 ninja_table_unique_id_1545208360_914 ui table nt_type_ajax_table selectable celled striped compact vertical_centered footable-paging-right ninja_table_search_disabled footable footable-1 footable-paging breakpoint-lg\" data-ninja_table_instance=\"ninja_table_instance_0\" data-footable_id=\"914\" data-filter-delay=\"500\" data-unique_identifier=\"ninja_table_unique_id_1545208360_914\">\n<thead>\n<tr class=\"footable-header\">\n<th class=\"ninja_column_0 ninja_clmn_nm_capasity footable-first-visible\" scope=\"col\">Capasity</th>\n<th class=\"ninja_column_1 ninja_clmn_nm_2_5_3_0_ton footable-last-visible\" scope=\"col\">2.5 / 3.0 Ton</th>\n</tr>\n</thead>\n<colgroup><col class=\"ninja_column_0 \" /><col class=\"ninja_column_1 \" /></colgroup>\n<tfoot></tfoot>\n<tbody>\n<tr class=\"ninja_table_row_0 nt_row_id_31\">\n<td class=\"ninja_column_0 ninja_clmn_nm_capasity footable-first-visible\">Lowered Fork Height</td>\n<td class=\"ninja_column_1 ninja_clmn_nm_2_5_3_0_ton footable-last-visible\">85 mm</td>\n</tr>\n<tr class=\"ninja_table_row_1 nt_row_id_32\">\n<td class=\"ninja_column_0 ninja_clmn_nm_capasity footable-first-visible\">Steering Wheel</td>\n<td class=\"ninja_column_1 ninja_clmn_nm_2_5_3_0_ton footable-last-visible\">200 mm</td>\n</tr>\n<tr class=\"ninja_table_row_2 nt_row_id_33\">\n<td class=\"ninja_column_0 ninja_clmn_nm_capasity footable-first-visible\">Fork Wheel Single</td>\n<td class=\"ninja_column_1 ninja_clmn_nm_2_5_3_0_ton footable-last-visible\">80 x 93 mm</td>\n</tr>\n<tr class=\"ninja_table_row_3 nt_row_id_34\">\n<td class=\"ninja_column_0 ninja_clmn_nm_capasity footable-first-visible\">Fork Wheel Tandem</td>\n<td class=\"ninja_column_1 ninja_clmn_nm_2_5_3_0_ton footable-last-visible\">80 x 70 mm</td>\n</tr>\n<tr class=\"ninja_table_row_4 nt_row_id_35\">\n<td class=\"ninja_column_0 ninja_clmn_nm_capasity footable-first-visible\">Max. Lift Height</td>\n<td class=\"ninja_column_1 ninja_clmn_nm_2_5_3_0_ton footable-last-visible\">200 mm</td>\n</tr>\n<tr class=\"ninja_table_row_5 nt_row_id_36\">\n<td class=\"ninja_column_0 ninja_clmn_nm_capasity footable-first-visible\">Total Height</td>\n<td class=\"ninja_column_1 ninja_clmn_nm_2_5_3_0_ton footable-last-visible\">1.224 mm</td>\n</tr>\n<tr class=\"ninja_table_row_6 nt_row_id_37\">\n<td class=\"ninja_column_0 ninja_clmn_nm_capasity footable-first-visible\">Fork Length</td>\n<td class=\"ninja_column_1 ninja_clmn_nm_2_5_3_0_ton footable-last-visible\">1.220 mm</td>\n</tr>\n<tr class=\"ninja_table_row_7 nt_row_id_38\">\n<td class=\"ninja_column_0 ninja_clmn_nm_capasity footable-first-visible\">Width Overall Forks</td>\n<td class=\"ninja_column_1 ninja_clmn_nm_2_5_3_0_ton footable-last-visible\">520 / 685 mm</td>\n</tr>\n<tr class=\"ninja_table_row_8 nt_row_id_39\">\n<td class=\"ninja_column_0 ninja_clmn_nm_capasity footable-first-visible\">Ground Clearence</td>\n<td class=\"ninja_column_1 ninja_clmn_nm_2_5_3_0_ton footable-last-visible\">32 mm</td>\n</tr>\n<tr class=\"ninja_table_row_9 nt_row_id_40\">\n<td class=\"ninja_column_0 ninja_clmn_nm_capasity footable-first-visible\">Turning Radius</td>\n<td class=\"ninja_column_1 ninja_clmn_nm_2_5_3_0_ton footable-last-visible\">1266 / 1336 mm</td>\n</tr>\n<tr class=\"ninja_table_row_10 nt_row_id_41\">\n<td class=\"ninja_column_0 ninja_clmn_nm_capasity footable-first-visible\">Service Weight</td>\n<td class=\"ninja_column_1 ninja_clmn_nm_2_5_3_0_ton footable-last-visible\">63 - 75 Kg</td>\n</tr>\n</tbody>\n</table>\n<p><br /><br />Truk Hand Pallet Mitsubishi (HPT)<br /><br />1. Kualitas<br />Konstruksi Padat<br />Besi cor, pompa one-piece memiliki katup laju penurunan yang terkontrol untuk mengurangi guncangan produk dan piston berlapis krom untuk umur pompa yang lebih lama. Segel poliuretan pada titik bertekanan tinggi membantu memastikan beban Anda turun dengan cepat, mengurangi kelelahan pada operator.<br /><br />2. Tahan lama<br />Bingkai yang Kasar<br />Direkayasa dari baja homogen tebal, rangka ini memiliki pengelasan robotik yang dikontrol suhu untuk mempertahankan kekuatan material dan cat lapisan bubuk untuk perlindungan tambahan dalam aplikasi yang berat.<br /><br />3. Andal<br />Mudah digunakan<br />Braket entri baja dan sistem roller masuk / keluar yang bebas masalah memberikan kemudahan saat masuk palet. Pushrod yang dapat disesuaikan pada garpu saluran-c yang diperkuat menahan puntiran pada beban yang berat, membuat truk palet tangan mudah digunakan dalam berbagai aplikasi.<br /><br />4. Nyaman<br />Pegangan Ergonomis<br />Dirancang untuk mengurangi keletihan operator dan meningkatkan produktivitas, truk<br /><br />PT. Prime Forklift Service Kami bergerak di bidang penjualan forklift merk mitsubishi dan nichiyu serta sparepart forklift mitsubishi, nichiyu dan merk lainnya kami menyediakan berbagai sparepart , electric part forklift ,aksesories forklift , lampu safety foklift , ban forklift , battery forklift hingga jasa service dan rental.<br />Kenapa harus beli dari kami ? karna kami resmi dealer forklift mitsubishi dan nichiyu dan kami menyediakan berbagai stok kebutuhan sparepartnya dan di jamin original ( Genuine Part ) serta harga yang murah dan bersaing.</p>', '210119134525.JPG', 'unit', 1),
(17, 'nichiyu-fbrf14-75-430msf-forklift', 'Nichiyu FBRF14-75-430MSF Forklift', 2, '<ul>\n<li>Tersedia dengan jenis cold storage dan explosion proof</li>\n<li>Cocok digunakan untuk membantu pekerjaan di warehouse</li>\n<li>Mesin dapat otomatis mati jika tidak digunakan selama 15 menit</li>\n<li>Nyaman untuk digunakan dan memiliki fitur yang canggih</li>\n</ul>\n<p>PT. Prime Forklift Service Kami bergerak di bidang penjualan forklift merk mitsubishi dan nichiyu serta sparepart forklift mitsubishi, nichiyu dan merk lainnya kami menyediakan berbagai sparepart , electric part forklift ,aksesories forklift , lampu safety foklift , ban forklift , battery forklift hingga jasa service dan rental.<br /><br />Jika ada yang di cari mengenai part forklift kami siap di bantu untuk informasi lebih jelasnya bisa terlebih dahulu chat kami.<br />Kenapa harus beli dari kami ? karna kami resmi dealer forklift mitsubishi dan nichiyu dan kami menyediakan berbagai stok kebutuhan sparepartnya dan di jamin original ( Genuine Part ) serta harga yang murah dan bersaing.</p>', '210119134817.JPG', 'unit', 1),
(18, 'nichiyu-fb25-77-300-forklift-p-tyre', 'Nichiyu FB25-77-300 Forklift [P-TYRE]', 2, '<ul>\n<li>Forklift elektrik</li>\n<li>dari Jepang dengan merek Nichiyu</li>\n<li>Cocok digunakan untuk membantu pekerjaan di warehouse</li>\n<li>Tersedia dalam dua jenis batre Lithium atau Lead Acid</li>\n<li>Ramah linkungan karna menggunakan batre yang dapat di charge</li>\n</ul>\n<p>PT. Prime Forklift Service Kami bergerak di bidang penjualan forklift merk mitsubishi dan nichiyu serta sparepart forklift mitsubishi, nichiyu dan merk lainnya kami menyediakan berbagai sparepart , electric part forklift ,aksesories forklift , lampu safety foklift , ban forklift , battery forklift hingga jasa service dan rental.<br /><br />Jika ada yang di cari mengenai part forklift kami siap di bantu untuk informasi lebih jelasnya bisa terlebih dahulu chat kami.<br />Kenapa harus beli dari kami ? karna kami resmi dealer forklift mitsubishi dan nichiyu dan kami menyediakan berbagai stok kebutuhan sparepartnya dan di jamin original ( Genuine Part ) serta harga yang murah dan bersaing.</p>', '210119132319.JPG', 'unit', 1),
(19, 'nichiyu-fbd9-70-150-forklif', 'NICHIYU FBD9-70-150 Forklif', 2, '<ul>\n<li>Tersedia dengan jenis cold storage dan explosion proof</li>\n<li>Cocok digunakan untuk membantu pekerjaan di warehouse</li>\n<li>Mesin dapat otomatis mati jika tidak digunakan selama 15 menit</li>\n<li>Nyaman untuk digunakan dan memiliki fitur yang canggih</li>\n</ul>\n<p>PT. Prime Forklift Service Kami bergerak di bidang penjualan forklift merk mitsubishi dan nichiyu serta sparepart forklift mitsubishi, nichiyu dan merk lainnya kami menyediakan berbagai sparepart , electric part forklift ,aksesories forklift , lampu safety foklift , ban forklift , battery forklift hingga jasa service dan rental.<br /><br />Jika ada yang di cari mengenai part forklift kami siap di bantu untuk informasi lebih jelasnya bisa terlebih dahulu chat kami.<br />Kenapa harus beli dari kami ? karna kami resmi dealer forklift mitsubishi dan nichiyu dan kami menyediakan berbagai stok kebutuhan sparepartnya dan di jamin original ( Genuine Part ) serta harga yang murah dan bersaing.</p>', '210119135257.JPG', 'unit', 1),
(20, 'nichiyu-pld15-70-a10-forklif', 'NICHIYU PLD15-70-A10 Forklif', 2, '<ul>\n<li>Tersedia dengan jenis cold storage dan explosion proof</li>\n<li>Cocok digunakan untuk membantu pekerjaan di warehouse</li>\n<li>Mesin dapat otomatis mati jika tidak digunakan selama 15 menit</li>\n<li>Nyaman untuk digunakan dan memiliki fitur yang canggih</li>\n</ul>\n<p>PT. Prime Forklift Service Kami bergerak di bidang penjualan forklift merk mitsubishi dan nichiyu serta sparepart forklift mitsubishi, nichiyu dan merk lainnya kami menyediakan berbagai sparepart , electric part forklift ,aksesories forklift , lampu safety foklift , ban forklift , battery forklift hingga jasa service dan rental.<br /><br />Jika ada yang di cari mengenai part forklift kami siap di bantu untuk informasi lebih jelasnya bisa terlebih dahulu chat kami.<br />Kenapa harus beli dari kami ? karna kami resmi dealer forklift mitsubishi dan nichiyu dan kami menyediakan berbagai stok kebutuhan sparepartnya dan di jamin original ( Genuine Part ) serta harga yang murah dan bersaing.</p>', '210119135445.JPG', 'unit', 1),
(21, 'nichiyu-rb15-70-300-forklif', 'Nichiyu RB15-70-300 Forklif', 2, '<ul>\n<li>Tersedia dengan jenis cold storage dan explosion proof</li>\n<li>Cocok digunakan untuk membantu pekerjaan di warehouse</li>\n<li>Mesin dapat otomatis mati jika tidak digunakan selama 15 menit</li>\n<li>Nyaman untuk digunakan dan memiliki fitur yang canggih</li>\n</ul>\n<p>PT. Prime Forklift Service Kami bergerak di bidang penjualan forklift merk mitsubishi dan nichiyu serta sparepart forklift mitsubishi, nichiyu dan merk lainnya kami menyediakan berbagai sparepart , electric part forklift ,aksesories forklift , lampu safety foklift , ban forklift , battery forklift hingga jasa service dan rental.<br /><br />Jika ada yang di cari mengenai part forklift kami siap di bantu untuk informasi lebih jelasnya bisa terlebih dahulu chat kami.<br />Kenapa harus beli dari kami ? karna kami resmi dealer forklift mitsubishi dan nichiyu dan kami menyediakan berbagai stok kebutuhan sparepartnya dan di jamin original ( Genuine Part ) serta harga yang murah dan bersaing.</p>', '210119135929.JPG', 'unit', 1),
(22, 'ban-solid-ascendo-1', 'BAN SOLID ASCENDO', 9, '<p>Ban Forklift Ascendo dari negara gingseng Korea ini memiliki karakter yang sangat baik dalam hal performa. Kualitas dan Teknologi dari Korea ini memberikan semangat baru dalam menunjang aktifitas Forklift anda di lokasi Industri dan area Proyek. Di Negara Korea Sendiri, Bna Forklift Ascendo menjadi nomer satu untuk pemakaian hampir semua ban Forklift. Soal kualitas lebih unggul dari product yang kami tawarkan, untuk ban forklift dari Korea ini harga sangat terjangkau.<br />Tersedia ukuran :<br /><br />- 500-8<br />- 16x6-8<br />- 18x7-8<br />- 600-9<br />- 21x8-9<br />- 650-10<br />- 23x9-10<br />- 700-12<br />- 28x9-15<br />- 750-16<br />- 825-15<br /><br /></p>', '210125085032.jpg', 'ban', 1),
(23, 'ban-solid-achilles-1', 'BAN SOLID ACHILLES', 9, '<p>Prime Forklift Services menyediakan berbagai Ban dan Velg Alat Forklift berbagai jenis sepeti Ban Pneumatic, Ban Solid Karet, Forklift dan Ban Polyurethane Forklift. Dan tersedia juga berbagai ukuran diantaranya :<br /><br />&nbsp;500 &ndash; 8<br />&nbsp;18 x 7 - 8<br />&nbsp;600 &ndash; 9<br />&nbsp;21 x 8 - 9<br />&nbsp;650 &ndash; 10<br />&nbsp;450 - 12<br />&nbsp;700 - 12<br />&nbsp;250 &ndash; 15<br />&nbsp;300 - 15<br />&nbsp;550 - 15<br />&nbsp;600 - 15<br />&nbsp;700 - 15<br />&nbsp;750 - 15<br />&nbsp;825 - 15<br />&nbsp;900 - 20<br />&nbsp;1000 - 20<br /><br />Untuk pertanyaan dan informasi lebih lanjut mengenai ban forklift dan Velg forklift langsung hubungi kami. Dengan senang hati kami siap membantu anda.</p>', '210125085020.jpg', 'ban', 1),
(24, 'ban-solid-trelleborg', 'BAN SOLID TRELLEBORG', 9, '<p>Prime Forklift Services menyediakan berbagai Ban dan Velg Alat Forklift berbagai jenis sepeti Ban Pneumatic, Ban Solid Karet, Forklift dan Ban Polyurethane Forklift. Dan tersedia juga berbagai ukuran diantaranya :<br /><br />500 &ndash; 8<br />18 x 7 - 8<br />600 &ndash; 9<br />21 x 8 - 9<br />650 &ndash; 10<br />450 - 12<br />700 - 12<br />250 &ndash; 15<br />300 - 15<br />550 - 15<br />600 - 15<br />700 - 15<br />750 - 15<br />825 - 15<br />900 - 20<br />1000 - 20<br /><br />Untuk pertanyaan dan informasi lebih lanjut mengenai ban forklift dan Velg forklift langsung hubungi kami. Dengan senang hati kami siap membantu anda.</p>', '210125085044.jpg', 'ban', 1),
(25, 'rotary-lamp-forklift', 'ROTARY LAMP FORKLIFT', 6, '<p>FORKLIFT WARNING LIGHT 12-110 VOLT EXTRA BRIGHT<br />Size:5\" (95*130mm)<br />Name: THUNDERBOLT<br />6W amber emergency warning safety LED beacon<br />Housing Material:ABS plastic<br />Lens Material:PMMA<br />Operating Voltage:DC 10-110V<br />LED source:high intensity LED 0.2W<br />LED Qtys:60pcs<br />Lumen output:<br />Raw 650lumen<br />Beam patterns:<br />Flood beam<br /><br />Housing color:Black<br />Color temperature:amber<br />Working temperature-40~+85 deg<br />Wire:2 wires connection</p>\n<p>UNTUK LANGSUNG ORDER BISA KLIK LINK DI BAWAH :<br /><br />https://www.tokopedia.com/forkliftservices/lampu-rotary-lamp-led-for-forklift</p>', '210125092320.jpg', 'part', 1),
(26, 'blue-zone-safety-light', 'BLUE ZONE SAFETY LIGHT', 6, '<p>Deskripsi FORKLIFT BLUE SPOT SAFETY LIGHT<br />Brand : Thunderbolt<br />LED Power 10W (2pcs*10W High Intensity LEDs)<br />Operating Voltage 10v-80V DC<br />Beam Spot beam<br />Waterproof IP 68<br />Light Color Blue/Red<br />Body Color Black<br />Lens PC reflector, PC Lens<br />Dimension 160*120*150mm<br />Mounting Bracket Stainless steel bracket<br />Housing material Die-cast aluminum alloy<br />50000 hours above life time</p>', '210125094057.jpg', 'part', 1),
(27, 'contractor-albright-sw280b-86', 'CONTRACTOR ALBRIGHT SW280B-86', 6, '<p>Albright contactor forklift SW280B-86 36/48V CO<br /><br />Merk : Albright<br />Type : SW280B-86<br />Voltage : 36/48V CO</p>', '210125095146.jpg', 'part', 1),
(28, 'garpu-forklift', 'GARPU FORKLIFT', 6, '<div>Sepatu garpu (forklift\'s fork extension) pada umumnya digunakan untuk memberikan keamanan dan kestabilan pada saat forklift mengangkat beban yang lebih panjang dari standar garpu forklift itu sendiri.</div>\n<div>&nbsp;</div>\n<div>Panjang dari sepatu garpu bisa disesuaikan dengan kebutuhan kendaraan industrial Anda.</div>', '210125101728.jpg', 'part', 1),
(29, 'automatic-charger-micon-charger-48v', 'AUTOMATIC CHARGER MICON CHARGER 48V', 6, '<p>AUTOMATIC CHARGER&nbsp;<br /><br />TYPE AMT II-48<br />SOURCE AC200/400V 50/60Hz<br />Batteray DC 48V</p>', '210125104106.jpg', 'part', 1),
(30, 'ac-motor-controller-24-v-389212321', 'AC MOTOR CONTROLLER 24 V 389212321', 6, '<p>Part No: 389212321<br />voltage : 24 volt<br />model : 1232E-2321( curtis )</p>', '210125104604.jpg', 'part', 1),
(31, 'filter-solar-32a6201020m', 'FILTER SOLAR 32A6201020M', 6, '<p>PT. Prime Forklift Service Kami bergerak di bidang penjualan forklift merk mitsubishi dan nichiyu serta sparepart forklift mitsubishi, nichiyu dan merk lainnya kami menyediakan berbagai sparepart , electric part forklift ,aksesories forklift , lampu safety foklift , ban forklift , battery forklift hingga jasa service dan rental.<br />Jika ada yang di cari mengenai part forklift kami siap di bantu untuk informasi lebih jelasnya bisa terlebih dahulu chat kami.</p>\n<p>Kenapa harus beli dari kami ? karna kami resmi dealer forklift mitsubishi dan nichiyu dan kami menyediakan berbagai stok kebutuhan sparepartnya dan di jamin original ( Genuine Part ) serta harga yang murah dan bersaing.</p>', '210125134005.jpg', 'part', 1),
(32, 'filter-oil-32a4000400', 'FILTER OIL 32A4000400', 6, '<p>PT. Prime Forklift Service Kami bergerak di bidang penjualan forklift merk mitsubishi dan nichiyu serta sparepart forklift mitsubishi, nichiyu dan merk lainnya kami menyediakan berbagai sparepart , electric part forklift ,aksesories forklift , lampu safety foklift , ban forklift , battery forklift hingga jasa service dan rental.<br />Jika ada yang di cari mengenai part forklift kami siap di bantu untuk informasi lebih jelasnya bisa terlebih dahulu chat kami.</p>\n<p>Kenapa harus beli dari kami ? karna kami resmi dealer forklift mitsubishi dan nichiyu dan kami menyediakan berbagai stok kebutuhan sparepartnya dan di jamin original ( Genuine Part ) serta harga yang murah dan bersaing.</p>', '210125134527.jpg', 'part', 1),
(33, 'filter-return-assy', 'FILTER RETURN ASSY', 6, '<p>PT. Prime Forklift Service Kami bergerak di bidang penjualan forklift merk mitsubishi dan nichiyu serta sparepart forklift mitsubishi, nichiyu dan merk lainnya kami menyediakan berbagai sparepart , electric part forklift ,aksesories forklift , lampu safety foklift , ban forklift , battery forklift hingga jasa service dan rental.<br />Jika ada yang di cari mengenai part forklift kami siap di bantu untuk informasi lebih jelasnya bisa terlebih dahulu chat kami.</p>\n<p>Kenapa harus beli dari kami ? karna kami resmi dealer forklift mitsubishi dan nichiyu dan kami menyediakan berbagai stok kebutuhan sparepartnya dan di jamin original ( Genuine Part ) serta harga yang murah dan bersaing.</p>', '210125135842.jpg', 'part', 1),
(34, '3-way-electric-pallet-stacker', '3-Way Electric Pallet Stacker', 1, '<p>MC Series 1.0-1.5T 3-way pallet stacker (Stand-on Driving type)</p>\n<p>3-way stacking function: forks can rotate 180&deg; and do left-right side shift without body turning.</p>\n<p>The 3-way pallet stacker is the first choice of intensive storage, which is mainly used in logistics, medicine, food and low-temperature cold storage.</p>\n<p>? Stacking in ultra-narrow roadways and high shelf design;</p>\n<p>? Horizontal handling;</p>\n<p>? Load/unload cargos.</p>\n<ul class=\"ptab-list clearfix\">\n<li>\n<p>Brand:MiMA</p>\n</li>\n<li>\n<p>Item No.:MC</p>\n</li>\n<li>\n<p>Payment:T/T, L/C,</p>\n</li>\n<li>\n<p>Product Origin:china</p>\n</li>\n<li>\n<p>Color:Red (customized is available)</p>\n</li>\n</ul>', '210201093018.jpg', 'unit', 0);
INSERT INTO `catalogues` (`id`, `slug`, `name`, `id_merk`, `description`, `image`, `type`, `status`) VALUES
(35, '15-25-ton-multi-direction-reach-forklift-truck-m', '1.5-2.5 Ton Multi-Direction Reach Forklift Truck M', 1, '<p>Multi direction reach truck MQ series is used in very narrow aisle for long material handling, lift height is 3-8m, it has models of straight travelling, side travelling, oblique travelling and in situ rotating, best choice for metal profiles, rebar, wood, steel pipe and others.</p>\n<ul class=\"ptab-list clearfix\">\n<li>\n<p>Brand:MiMA</p>\n</li>\n<li>\n<p>Item No.:MQ</p>\n</li>\n<li>\n<p>Payment:T/T, L/C, Western Union</p>\n</li>\n<li>\n<p>Product Origin:china</p>\n</li>\n<li>\n<p>Color:Red (customized is available)</p>\n</li>\n</ul>\n<p><strong>Main Features:</strong></p>\n<p>1.All directions travelling, used in very narrow aisle for long material handling;</p>\n<p>2.Full AC system, electric power steering, long service life and low&nbsp;energy consumption;</p>\n<p>3.Imported gear pump, full buffer hydraulic cylinder, stable body and low noise;</p>\n<p>4.Imported controller, high&nbsp;precision control, easy electric control setting, high performance and low fault;</p>\n<p>5.Imported hydraulic hose, durable and long servic life;</p>\n<p>6.Cast steel drive box, High strength PU tyres, driving stable, braking reliable;</p>\n<p>7.High&nbsp;definition drive wheel display;</p>\n<p>8.Big capacity battery.</p>', '210201093654.jpg', 'unit', 0),
(36, 'full-ac-system-3-wheel-16-20-ton-electric-counte', 'Full AC System 3 Wheel 1.6-2.0 Ton Electric Counte', 1, '<p>counterbalance forklift&nbsp; C-type is an AC front double-drive counterbalance forklift with more powerful power and higher working efficiency;<br />Applicable to:<br />? Horizontal handling<br />? Block stacking<br />? loading / unloading goods</p>\n<ul class=\"ptab-list clearfix\">\n<li>\n<p>Brand:MiMA</p>\n</li>\n<li>\n<p>Item No.:TKC16/20</p>\n</li>\n<li>\n<p>Payment:T/T, L/C, Western Union</p>\n</li>\n<li>\n<p>Color: Red (customized is available)</p>\n</li>\n</ul>', '210201115003.jpg', 'unit', 0),
(37, '3-ton-4-ton-muti-direction-reach-forklift-truck-tf', '3 Ton-4 Ton Muti-Direction Reach Forklift Truck TF', 1, '<p>?Multi direction reach truck is special forklift for long material using, with straight travelling, side travelling and in situ rotating functions, capacity is 3000-4000kg<br />?OPS system, hydraulic steering and multiple valve operation<br />?For long material handling, such as metal profiles, wood, curtain wall, steel pipe and others</p>\n<ul class=\"ptab-list clearfix\">\n<li>\n<p>Brand:MiMA</p>\n</li>\n<li>\n<p>Item No.:TFC</p>\n</li>\n<li>\n<p>Payment:T/T, L/C, Western Union</p>\n</li>\n<li>\n<p>Color:Red (customized is available)</p>\n<p><strong>Main Features:</strong></p>\n<p>1.Curtis controller, more safe and stable</p>\n<p>2.Free maintenance AC drive system and full AC system</p>\n<p>3.Semi-enclosed cab and fork positioner</p>\n<p>4.Reasonable layout, low center gravity, small size</p>\n<p>5.Imported proportional valve, handle and display</p>\n</li>\n</ul>', '210202084312.jpg', 'unit', 0),
(38, 'mga-40-60t-seated-tow-tractor', 'MGA 4.0-6.0T Seated Tow Tractor', 1, '<p>MGA Series 4.0-6.0T electric tow tractor<br />The rated load capacity of MGA40/60 is 4000/6000kg.<br />? Simple and elegant overview design;<br />? Big Inner/outer space for storage;<br />? Comfortable operation;<br />? More options.</p>\n<ul class=\"ptab-list clearfix\">\n<li>\n<p>Brand:MiMA</p>\n</li>\n<li>\n<p>Item No.:MGA40</p>\n</li>\n<li>\n<p>Payment:T/T, L/C, Western Union</p>\n</li>\n<li>\n<p>Color:Red (customized is available)</p>\n</li>\n</ul>\n<p>&nbsp;</p>', '210202084611.jpg', 'unit', 0),
(39, '25-ton-4-direction-reach-truck-for-long-material', '2.5 Ton 4 Direction Reach Truck For Long Material', 1, '<p>4 diretion reach truck is used for long material handling in very narrow aisle, lift height is 3m-8m, it can do side travelling without truning, best choice for steel pipe, wood, rebar, metal profiles and others, with the following features:</p>\n<p>1.Very narrow aisle working</p>\n<p>2.Long material handling</p>\n<p>3.Increase warehouse capacity</p>\n<p>4.High cost performance</p>\n<ul class=\"ptab-list clearfix\">\n<li>\n<p>Brand:MiMA</p>\n</li>\n<li>\n<p>Item No.:MQB</p>\n</li>\n<li>Color: Red (customized is available)</li>\n</ul>\n<p><strong>Main Features:</strong></p>\n<p>1.Electric powering steering and one key switch function, with switch shortcut key of straight travelling and side travelling, high stacking efficiency.</p>\n<p>2.Imported gear pump, full buffer hydraulic cylinder, working stable and low noise.</p>\n<p>3.Imported controller, high precisioncontrolling, easy electric controll setting, high performance and low fault.</p>\n<p>4.Impored hydraulic hose, long service life.</p>\n<p>5.Cast steel drive box and high strength polyurethane tires.</p>', '210202084930.jpg', 'unit', 0),
(40, 'socket-battery-175a-anderson-1', 'SOCKET BATTERY 175A ANDERSON', 6, '<p>SOCKET BATTERY FORKLIFT ANDERSON 175A</p>', '210220091655.jpg', 'part', 1),
(41, 'socket-battery-160a-female-rema', 'SOCKET BATTERY 160A FEMALE REMA', 6, '<p>Kami menyediakan berbagai macam soket battery forklift merk Rema original di antaranya :</p>\n<p>80A&nbsp; &nbsp; :Male/Female<br />160A&nbsp; :Male/Female<br />320A&nbsp; : Male/Female</p>', '210220091720.jpg', 'part', 1),
(42, 'socket-battery-sbx350a-anderson', 'SOCKET BATTERY SBX350A ANDERSON', 6, '<p>SOCKET BATTERY SBX350A ANDERSON</p>', '210220091749.jpg', 'part', 1),
(43, 'forklift-bekas-bergaransi-3-ton-mitsubishi', 'FORKLIFT BEKAS BERGARANSI 3 TON MITSUBISHI', 8, '<p>HARGA MURAH DAN BERGARANSI&nbsp;</p>\n<p>PT. Prime Forklift Service Kami bergerak di bidang penjualan forklift merk mitsubishi dan nichiyu serta sparepart forklift mitsubishi, nichiyu dan merk lainnya kami menyediakan berbagai sparepart , electric part forklift ,aksesories forklift , lampu safety foklift , ban forklift , battery forklift hingga jasa service dan rental.<br />Jika ada yang di cari mengenai part forklift kami siap di bantu untuk informasi lebih jelasnya bisa terlebih dahulu chat kami.</p>\n<p>Kenapa harus beli dari kami ? karna kami resmi dealer forklift mitsubishi dan nichiyu dan kami menyediakan berbagai stok kebutuhan sparepartnya dan di jamin original ( Genuine Part ) serta harga yang murah dan bersaing.</p>\n<p>&nbsp;</p>', '210303145014.jpg', 'unit', 0),
(44, 'forklift-bekas-tcm-3-ton-bergaransi-1', 'FORKLIFT BEKAS TCM 3 TON BERGARANSI', 8, '<p>HARGA MURAH DAN BERGARANSI&nbsp;</p>\n<p>PT. Prime Forklift Service Kami bergerak di bidang penjualan forklift merk mitsubishi dan nichiyu dan juga menjual unit forklift bekas bergaransi serta sparepart forklift mitsubishi, nichiyu dan merk lainnya kami menyediakan berbagai sparepart , electric part forklift ,aksesories forklift , lampu safety foklift , ban forklift , battery forklift hingga jasa service dan rental.<br />Jika ada yang di cari mengenai part forklift kami siap di bantu untuk informasi lebih jelasnya bisa terlebih dahulu chat kami.</p>\n<p>Kenapa harus beli dari kami ? karna kami resmi dealer forklift mitsubishi dan nichiyu dan kami menyediakan berbagai stok kebutuhan sparepartnya dan di jamin original ( Genuine Part ) serta harga yang murah dan bersaing.</p>', '210303145106.jpg', 'unit', 0),
(45, 'forklift-bekas-15-ton-mitsubishi', 'FORKLIFT BEKAS 15 TON MITSUBISHI', 8, '<p>HARGA MURAH DAN BERGARANSI&nbsp;</p>\n<p>PT. Prime Forklift Service Kami bergerak di bidang penjualan forklift merk mitsubishi dan nichiyu serta menjual forklift bekas berbagai merk sparepart forklift mitsubishi, nichiyu dan merk lainnya kami menyediakan berbagai sparepart , electric part forklift ,aksesories forklift , lampu safety foklift , ban forklift , battery forklift hingga jasa service dan rental.<br />Jika ada yang di cari mengenai part forklift kami siap di bantu untuk informasi lebih jelasnya bisa terlebih dahulu chat kami.</p>\n<p>Kenapa harus beli dari kami ? karna kami resmi dealer forklift mitsubishi dan nichiyu dan kami menyediakan berbagai stok kebutuhan sparepartnya dan di jamin original ( Genuine Part ) serta harga yang murah dan bersaing.</p>\n<p>&nbsp;</p>', '210303145129.jpg', 'unit', 0),
(46, 'forklift-toyota-25-ton-bekas-bergaransi', 'Forklift Toyota 2,5 ton Bekas Bergaransi', 8, '<p>HARGA MURAH DAN BERGARANSI&nbsp;</p>\n<p>PT. Prime Forklift Service Kami bergerak di bidang penjualan forklift merk mitsubishi dan nichiyu serta menjual forklift bekas berbagai merk sparepart forklift mitsubishi, nichiyu dan merk lainnya kami menyediakan berbagai sparepart , electric part forklift ,aksesories forklift , lampu safety foklift , ban forklift , battery forklift hingga jasa service dan rental.<br />Jika ada yang di cari mengenai part forklift kami siap di bantu untuk informasi lebih jelasnya bisa terlebih dahulu chat kami.</p>\n<p>Kenapa harus beli dari kami ? karna kami resmi dealer forklift mitsubishi dan nichiyu dan kami menyediakan berbagai stok kebutuhan sparepartnya dan di jamin original ( Genuine Part ) serta harga yang murah dan bersaing.</p>', '210304105941.jpg', 'unit', 0),
(47, 'forklift-mitsubishi-3-ton-bekas-bergaransi', 'Forklift Mitsubishi 3 ton  Bekas Bergaransi', 8, '<p>Mitsubishi 3ton <br />Manual transmisi<br />Tiang std 3M<br />Mesin s4s<br /><br /></p>\n<p>HARGA MURAH DAN BERGARANSI&nbsp;</p>\n<p>PT. Prime Forklift Service Kami bergerak di bidang penjualan forklift merk mitsubishi dan nichiyu serta menjual forklift bekas berbagai merk sparepart forklift mitsubishi, nichiyu dan merk lainnya kami menyediakan berbagai sparepart , electric part forklift ,aksesories forklift , lampu safety foklift , ban forklift , battery forklift hingga jasa service dan rental.<br />Jika ada yang di cari mengenai part forklift kami siap di bantu untuk informasi lebih jelasnya bisa terlebih dahulu chat kami.</p>\n<p>Kenapa harus beli dari kami ? karna kami resmi dealer forklift mitsubishi dan nichiyu dan kami menyediakan berbagai stok kebutuhan sparepartnya dan di jamin original ( Genuine Part ) serta harga yang murah dan bersaing.</p>\n<p><br /><br /></p>', '210304110034.jpg', 'unit', 0),
(48, 'forklift-toyota-3-ton-bekas-bergaransi', 'Forklift Toyota 3 ton Bekas Bergaransi', 8, '<p>HARGA MURAH DAN BERGARANSI&nbsp;</p>\n<p>PT. Prime Forklift Service Kami bergerak di bidang penjualan forklift merk mitsubishi dan nichiyu serta menjual forklift bekas berbagai merk sparepart forklift mitsubishi, nichiyu dan merk lainnya kami menyediakan berbagai sparepart , electric part forklift ,aksesories forklift , lampu safety foklift , ban forklift , battery forklift hingga jasa service dan rental.<br />Jika ada yang di cari mengenai part forklift kami siap di bantu untuk informasi lebih jelasnya bisa terlebih dahulu chat kami.</p>\n<p>Kenapa harus beli dari kami ? karna kami resmi dealer forklift mitsubishi dan nichiyu dan kami menyediakan berbagai stok kebutuhan sparepartnya dan di jamin original ( Genuine Part ) serta harga yang murah dan bersaing.</p>', '210304110117.jpg', 'unit', 0),
(49, 'seat-forklift-universal', 'SEAT FORKLIFT UNIVERSAL', 6, '<p>Seat ini cocok untuk semua merk forklift&nbsp;<br />tidak termasuk rel dan safetybelt</p>\n<p>&nbsp;</p>', '210312090235.jpg', 'part', 1),
(50, 'indicator-battery-forklift-curtis', 'INDICATOR BATTERY FORKLIFT CURTIS', 6, '<p>INDICATOR BATTERY&nbsp;&nbsp;FORKLIFT<br />MERK : CURTIS<br /><br />803RB2448BCJ3010<br /><br />24V / 45 mA<br />48V / 50 mA<br /><br />Made In China</p>', '210312091721.jpg', 'part', 1),
(51, 'contractor-48v-300a-forklift-nichiyu', 'CONTRACTOR 48V 300A FORKLIFT NICHIYU', 6, '<p>CONTACTOR FORKLIFT NICYU<br /><br />TYPE : GE304<br />VOLTASE : 48 V<br />P20200407</p>', '210312091744.jpg', 'part', 1),
(52, 'forklift-battery-bekas-toyota-25-ton-bergaransi', 'FORKLIFT BATTERY BEKAS TOYOTA 2,5 TON BERGARANSI', 8, '<p>Forklift toyota&nbsp;<br />Type: 8FBN25&nbsp;<br />Tinggi mast : Standar<br /><br /></p>', '210312144427.jpg', 'unit', 0),
(53, 'fokrlift-bekas-yale-35-ton-berkualitas', 'FOKRLIFT BEKAS YALE 3,5 TON BERKUALITAS', 8, '<p>Forklift Yale&nbsp;</p>\n<p>kapasitas : 3,5 ton&nbsp;</p>\n<p>Tahun : 2013&nbsp;</p>\n<p>&nbsp;</p>', '210312145345.jpg', 'unit', 0),
(54, 'forklift-bekas-toyota-35-ton-bergaransi', 'FORKLIFT BEKAS TOYOTA 3,5 TON BERGARANSI', 8, '<p>Forklift toyota&nbsp;</p>\n<p>Type : 8FDZ35</p>\n<p>Kapasitas : 3,5 Ton&nbsp;</p>\n<p>Tahun : 2015&nbsp;</p>\n<p>Transmisi : Matic&nbsp;</p>\n<p>Tinggi Mast : Standar&nbsp;</p>', '210312145433.jpg', 'unit', 0),
(55, 'toyota-25-ton-bergaransi', 'TOYOTA 2,5 TON BERGARANSI', 8, '<p>Transmisi&nbsp; &nbsp; : Manual&nbsp;<br />Tinggi Mast : 4 meter<br />Engine&nbsp; &nbsp; &nbsp; &nbsp; : 1Z Solar<br />Tahun&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;: 2001<br /><br /></p>\n<p>HARGA MURAH DAN BERGARANSI&nbsp;</p>\n<p>PT. Prime Forklift Service Kami bergerak di bidang penjualan forklift merk mitsubishi dan nichiyu serta menjual forklift bekas berbagai merk sparepart forklift mitsubishi, nichiyu dan merk lainnya kami menyediakan berbagai sparepart , electric part forklift ,aksesories forklift , lampu safety foklift , ban forklift , battery forklift hingga jasa service dan rental.<br />Jika ada yang di cari mengenai part forklift kami siap di bantu untuk informasi lebih jelasnya bisa terlebih dahulu chat kami.</p>\n<p>Kenapa harus beli dari kami ? karna kami resmi dealer forklift mitsubishi dan nichiyu dan kami menyediakan berbagai stok kebutuhan sparepartnya dan di jamin original ( Genuine Part ) serta harga yang murah dan bersaing.</p>', '210320104910.jpg', 'unit', 0),
(56, 'ban-forklift-600-9-bridgestone-1', 'BAN FORKLIFT 600-9 BRIDGESTONE', 9, '<p>Bridgestone</p>', '210614161202.jpg', 'ban', 1),
(57, 'ban-forklift-600-9-ascendo', 'BAN FORKLIFT 600-9 ASCENDO', 9, '<p>ascendo</p>', '210614161231.jpg', 'ban', 1),
(58, 'ban-forklift-600-9-solid-king', 'BAN FORKLIFT 600-9 SOLID KING', 9, '<p>SOLID KING</p>', '210614161301.jpg', 'ban', 1),
(59, 'ban-forklift-650-10-8trelleborg-1', 'BAN FORKLIFT 6.50-10 8TRELLEBORG', 9, '<p>PREMIA</p>', '210614161720.jpg', 'ban', 1),
(60, 'ban-forklift-650-10-eco-solid', 'BAN FORKLIFT 6.50-10 ECO SOLID', 9, '<p>ECO SOLID</p>', '210614161742.jpg', 'ban', 1),
(61, 'ban-forklift-650-10-ascendo', 'BAN FORKLIFT 6.50-10 ASCENDO', 9, '<p>ASCENDO</p>', '210614161800.jpg', 'ban', 1),
(62, 'ban-solid-mati-forklift-merk-ascendo', 'BAN SOLID / MATI FORKLIFT MERK ASCENDO', 9, '<p>ASCENDO</p>', '210614163719.jpg', 'ban', 1),
(63, 'ban-solid-mati-forklift-merk-solid-king', 'BAN SOLID / MATI FORKLIFT MERK SOLID KING', 9, '<p>KING</p>', '210614163735.jpg', 'ban', 1),
(64, 'ban-solid-mati-forklift-merk-eco-solid', 'BAN SOLID / MATI FORKLIFT MERK ECO SOLID', 9, '<p>ECO</p>', '210614163749.jpg', 'ban', 1),
(65, 'ban-forklift-18x7-8-eco-solid-1', 'BAN FORKLIFT 18X7-8 ECO SOLID', 9, '<p>ECO SOLID&nbsp;</p>', '210615111639.jpg', 'ban', 1),
(66, 'ban-forklift-18x7-8-solid-king', 'BAN FORKLIFT 18X7-8 SOLID KING', 9, '<p>SOLID KING</p>', '210615111659.jpg', 'ban', 1),
(67, 'ban-forklift-18x7-8-trelleborg-1', 'BAN FORKLIFT 18X7-8 TRELLEBORG', 9, '<p>TRELLEBORG</p>', '210615111722.jpg', 'ban', 1),
(68, 'forklift-battery-heli-15-ton', 'FORKLIFT BATTERY HELI 1,5 TON', 8, '<p>G SERIES&nbsp;<br />CPD 10/15/18-GD2(P)<br /><br /><br /></p>', '220103143112.jpg', 'unit', 1),
(69, 'forklift-battery-heli-25-ton', 'FORKLIFT BATTERY HELI 2,5 TON', 8, '<p>G SERIES&nbsp;<br />CPD20/25-GD2(P)</p>', '220103143140.jpg', 'unit', 1),
(70, 'forklift-battery-heli-35-ton', 'FORKLIFT BATTERY HELI 3,5 TON', 8, '<p>G SERIES&nbsp;<br />CPD30/35-GD2(P)</p>', '220103143200.jpg', 'unit', 1),
(71, 'forklift-heli-3-ton', 'FORKLIFT HELI 3 TON', 8, '<p>H3 SERIES<br />CPC30/35</p>', '220103144142.jpg', 'unit', 1),
(72, 'forklift-heli-5-ton', 'FORKLIFT HELI 5 TON', 8, '<p>H SERIES&nbsp;<br />CPCD40/50</p>', '220103144312.jpg', 'unit', 1),
(73, 'forklift-heli-7-ton', 'FORKLIFT HELI 7 TON', 8, '<p>G SERIES&nbsp;<br />CPCD50-70</p>', '220103144834.jpg', 'unit', 1),
(74, 'stacker-elektric-heli', 'STACKER ELEKTRIC HELI', 8, '<p>CDD12/14/16</p>', '220104082849.jpg', 'unit', 1),
(75, 'stacker-elektric-heli-2ton', 'STACKER ELEKTRIC HELI 2TON', 8, '<p>CDD20J</p>', '220104083046.jpg', 'unit', 1),
(76, 'stacker-elektric-heli-1', 'STACKER ELEKTRIC HELI', 8, '<p>CQDH14-850</p>', '220104083149.jpg', 'unit', 1),
(77, 'stacker-electric-dc10', 'STACKER ELECTRIC DC10', 8, '<p>STACKER ELECTRIC DC10<br /><br /><br /></p>', '220104105255.jpg', 'unit', 1),
(78, 'electric-tow-tractor', 'ELECTRIC TOW TRACTOR', 8, '<p>ELECTRIC TOW TRACTOR&nbsp;</p>', '220104105408.jpg', 'unit', 1),
(79, 'electric-stacker-heli', 'ELECTRIC STACKER HELI', 8, '<p>ELECTRIC STACKER HELI&nbsp;</p>', '220104105334.jpg', 'unit', 1),
(80, 'battery-forklift-gs-yuasa-475ah', 'BATTERY FORKLIFT GS YUASA 475AH', 10, '<p>BATTERY FORKLIFT GS YUASA 470AH<br /><br />48 VOLT&nbsp;<br />475AH<br /><br />Kami jual battery forklift sesuai permintaan, Jika ada kebutuhan battery forklift silahkan hubungi kami biar kami langsung tindak lanjutin dengan pengecekan untuk memastika type battery dan dimensinya&nbsp;<br /><br />PT. PRIME FORKLIFT SERVICES&nbsp;<br />JL. Raya Kosambi 1 No. 18 F Duren Klari Karawang - Jawa barat&nbsp;<br />( 0267 ) - 8402034 |&nbsp; 0822 1081 2989 (WA)</p>', '220105093614.jpg', 'battery', 1),
(81, 'battery-forklift-remico-24v', 'BATTERY FORKLIFT REMICO 24V', 10, '<p>BATTERY FORKLIFT REMICO 24V<br /><br />Kami jual battery forklift sesuai permintaan, Jika ada kebutuhan battery forklift silahkan hubungi kami biar kami langsung tindak lanjutin dengan pengecekan untuk memastika type battery dan dimensinya&nbsp;<br /><br />PT. PRIME FORKLIFT SERVICES&nbsp;<br />JL. Raya Kosambi 1 No. 18 F Duren Klari Karawang - Jawa barat&nbsp;<br />( 0267 ) - 8402034 |&nbsp; 0822 1081 2989 (WA)<br /><br /></p>', '220105093635.jpg', 'battery', 1),
(82, 'battery-forklift-80v', 'BATTERY FORKLIFT 80V', 10, '<p>BATTERY FORKLIFT GS YUASA 5DCM625A<br />80VOLT<br />626 AH<br /><br />Kami jual battery forklift sesuai permintaan, Jika ada kebutuhan battery forklift silahkan hubungi kami biar kami langsung tindak lanjutin dengan pengecekan untuk memastika type battery dan dimensinya&nbsp;<br /><br />PT. PRIME FORKLIFT SERVICES&nbsp;<br />JL. Raya Kosambi 1 No. 18 F Duren Klari Karawang - Jawa barat&nbsp;<br />( 0267 ) - 8402034 |&nbsp; 0822 1081 2989 (WA)</p>', '220105093651.jpg', 'battery', 1),
(83, 'battery-forklift-gs-yuasa-48v', 'BATTERY FORKLIFT GS YUASA 48V', 10, '<p>GS YUASA VGI1470&nbsp;<br />48 VOLT<br />470AH<br /><br />Kami jual battery forklift sesuai permintaan, Jika ada kebutuhan battery forklift silahkan hubungi kami biar kami langsung tindak lanjutin dengan pengecekan untuk memastika type battery dan dimensinya&nbsp;<br /><br />PT. PRIME FORKLIFT SERVICES&nbsp;<br />JL. Raya Kosambi 1 No. 18 F Duren Klari Karawang - Jawa barat&nbsp;<br />( 0267 ) - 8402034 |&nbsp; 0822 1081 2989 (WA)<br /><br /></p>', '220105093614.jpg', 'battery', 1),
(84, 'battery-forklift-gs-yuasa-24v', 'BATTERY FORKLIFT GS YUASA 24V', 10, '<p>GS YUASA VSF3A<br />24 VOLT&nbsp;<br />210 AH<br /><br />Kami jual battery forklift sesuai permintaan, Jika ada kebutuhan battery forklift silahkan hubungi kami biar kami langsung tindak lanjutin dengan pengecekan untuk memastika type battery dan dimensinya&nbsp;<br /><br />PT. PRIME FORKLIFT SERVICES&nbsp;<br />JL. Raya Kosambi 1 No. 18 F Duren Klari Karawang - Jawa barat&nbsp;<br />( 0267 ) - 8402034 |&nbsp; 0822 1081 2989 (WA)</p>', '220105094903.jpg', 'battery', 1),
(85, 'battery-forklift-gs-yuasa-48-v', 'BATTERY FORKLIFT GS YUASA 48 V', 10, '<p>GS YUASAA VSF5A&nbsp;<br />48VOLT<br />350AH&nbsp;<br /><br />Kami jual battery forklift sesuai permintaan, Jika ada kebutuhan battery forklift silahkan hubungi kami biar kami langsung tindak lanjutin dengan pengecekan untuk memastika type battery dan dimensinya&nbsp;<br /><br />PT. PRIME FORKLIFT SERVICES&nbsp;<br />JL. Raya Kosambi 1 No. 18 F Duren Klari Karawang - Jawa barat&nbsp;<br />( 0267 ) - 8402034 |&nbsp; 0822 1081 2989 (WA)</p>', '220105093614.jpg', 'battery', 1),
(86, 'ban-hidup-forklift-gt-650-10', 'BAN HIDUP FORKLIFT GT 650-10', 9, '<p>Ban hidup Forklift<br /><br />- Merk : GT<br />- Ukuran : 650-10<br />- Pengiriman ke seluruh indonesia<br />- Bisa include bongkar pasang untuk beberapa area<br /><br />PT. Prime Forklift Services<br />Jl. Raya Kosambi 1 No.18 F Karawang<br />( 0267 ) 8502034 | 0822 1081 2989<br /><br /><a class=\" xil3i\" tabindex=\"0\" href=\"https://www.instagram.com/explore/tags/banforklift/\">#banforklift</a><br /><a class=\" xil3i\" tabindex=\"0\" href=\"https://www.instagram.com/explore/tags/jualbanforklift/\">#jualbanforklift</a></p>', '220112094106.jpg', 'ban', 1),
(87, 'ban-hidup-forklift-bridgestone-600-9', 'BAN HIDUP FORKLIFT BRIDGESTONE 600-9', 9, '<p>Ban hidup Forklift<br /><br />- Merk : Bridgestone<br />- Ukuran : 600 - 9<br />- Pengiriman ke seluruh indonesia<br />- Bisa include bongkar pasang untuk beberapa area<br /><br />PT. Prime Forklift Services<br />Jl. Raya Kosambi 1 No.18 F Karawang<br />( 0267 ) 8502034 | 0822 1081 2989<br /><br /><a class=\" xil3i\" tabindex=\"0\" href=\"https://www.instagram.com/explore/tags/banforklift/\">#banforklift</a><br /><a class=\" xil3i\" tabindex=\"0\" href=\"https://www.instagram.com/explore/tags/jualbanforklift/\">#jualbanforklift</a></p>', '220112094200.jpg', 'ban', 1),
(88, 'ban-mati-ascendo-18x7-8', 'BAN MATI ASCENDO 18X7-8', 9, '<p>Ban Mati Forklift<br /><br />- Merk : Ascendo<br />- Ukuran : 18x7-8<br />- Pengiriman ke seluruh indonesia<br />- Bisa include bongkar pasang untuk beberapa area<br /><br />PT. Prime Forklift Services<br />Jl. Raya Kosambi 1 No.18 F Karawang<br />( 0267 ) 8502034 | 0822 1081 2989<br /><br /><a class=\" xil3i\" tabindex=\"0\" href=\"https://www.instagram.com/explore/tags/banforklift/\">#banforklift</a><br /><a class=\" xil3i\" tabindex=\"0\" href=\"https://www.instagram.com/explore/tags/jualbanforklift/\">#jualbanforklift</a></p>', '220112094701.jpg', 'ban', 1),
(89, 'fuse-50a-200a', 'FUSE 50A - 200A', 6, '<p>FUSE READY STOK&nbsp;<br />50A - 300A&nbsp;</p>', '220118145325.jpg', 'part', 0),
(90, 'fuse-50a-200a-1', 'FUSE 50A - 200A', 6, '<p>FUSE READY STOK&nbsp;<br />50A - 300A&nbsp;</p>', '220118145325.jpg', 'part', 1),
(91, 'hose-forklift-mitsubishi', 'HOSE FORKLIFT MITSUBISHI', 6, '<p>Berbagai hose forklift dan part number ready stok&nbsp;</p>', '220118145542.jpg', 'part', 1),
(92, 'kampas-rem-forklift', 'KAMPAS REM FORKLIFT', 6, '<p>KAMPAS REM FORKLIFT BERBAGAI MACAM</p>', '220118145559.jpg', 'part', 1),
(93, 'master-rem-forklift', 'MASTER REM FORKLIFT', 6, '<p>MASTER REM FORKLIFT</p>', '220118145610.jpg', 'part', 1),
(94, 'master-rem-atas', 'MASTER REM ATAS', 6, '<p>MASTER REM ATAS&nbsp;</p>', '220118145622.jpg', 'part', 1),
(95, 'head-cap-forklift', 'HEAD CAP FORKLIFT', 6, '<p>HEAD CAP&nbsp;</p>', '220118145346.jpg', 'part', 1),
(96, 'ban-mati-trlleborg-xp800', 'BAN MATI TRLLEBORG XP800', 9, '<p>Produk baru dari TRELLEBORG dan tentunya dengan kualitas yang sangat baik , di desain khusus untuk alat berat forklift .Dengan desain tapak yang canggih, XP800 baru meningkatkan kinerja dalam dan luar ruangan untuk memastikan produktivitas maksimum. Desain inovatifnya menampilkan tapak ekstra lebar dan profil unik untuk meminimalkan getaran, penanganan yang ditingkatkan, dan stabilitas yang sangat baik dalam aplikasi dalam ruangan, sedangkan desain blok lateral dengan lug yang dalam mengoptimalkan traksi di area luar ruangan. Tapak ekstra dalam meningkatkan umur panjang ban untuk masa pakai maksimal.<br /><br /><br /><br />Dapatkan produknya dan pengiriman keseluruh indnesia<br /><br /><br />PT. PRIME FORKLIFT SERVICES<br />JL. Raya kosambi 1 NO. 18 F -Karawang<br />( 0267 ) - 8402034 | 0822 1081 2989 (WA)</p>', '220623133310.jpg', 'ban', 1),
(97, 'trelleborg-m2-premium', 'TRELLEBORG M2 PREMIUM', 9, '<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" data-placeholder=\"Translation\"><span class=\"Y2IQFc\" lang=\"id\">Trelleborg M&sup2; adalah ban premium, kokoh, dan tangguh yang dirancang untuk\nmenuntut lingkungan penanganan material. Untuk truk forklift\nyang sedang digunakan berat atau secara rutin membawa beban berat, Trelleborg\nDesain dan konstruksi M&sup2; memastikan kinerja maksimal.</span></pre>\n<pre class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" data-placeholder=\"Translation\"><span class=\"Y2IQFc\" lang=\"id\">Ban tangguh Trelleborg M&sup2; menampilkan indikator keausan Pit Stop Line.\nPit Stop Line memastikan bahwa pengguna mendapatkan nilai seumur hidup maksimum\ndari pilihan ban mereka dengan selalu Menggantinya di waktu yang tepat\ndan mampu meminimalkan waktu henti forklift, serta\nselalu mengetahui bahwa ban mereka aman untuk digunakan.</span></pre>\n<p><span class=\"Y2IQFc\" lang=\"id\">Pengiriman keseluruh indonesia :<br /><br />PT. PRIME FORKLIFT SERVICES&nbsp;<br />JL.Raya Kosambi 1 No. 18 F - Karawang<br />( 0267) - 8402034&nbsp; |&nbsp; 0822 1081 2989 (WA)</span></p>', '220623135014.jpg', 'ban', 1),
(98, 'ban-solid-trelleborg-ecosolid', 'BAN SOLID TRELLEBORG ECOSOLID', 9, '<p>Ecosolid adalah pilihan ban solid tingkat pemula yang tersedia di<br />kisaran ukuran pelek 8&rdquo; hingga 15&rdquo;. Ini dirancang untuk digunakan pada<br />forklift dalam aplikasi tugas ringan.<br />Platform manufaktur Ecosolid yang diperbarui dan lebih ketat<br />kontrol produksi sekarang memberikan peningkatan kinerja.<br />SISTEM RODA TRELLEBORG</p>\n<p>BAHAN PENANGANAN BAN<br />&bull; Tersedia dalam kompon hitam standar<br />&bull; Basis yang diperkuat baja<br />&bull; Indikator keausan terpasang pada desain lug<br /><br />Pengiriman keseluruh indonesia&nbsp;<br /><br />PT. PRIME FORKLIFT SERVICES&nbsp;<br />JL.Raya Kosambi 1 NO. 18 F - Karawang<br />( 0267 ) - 8402034 | 0822 1081 2989 (WA)</p>', '220623142117.jpg', 'ban', 1),
(99, 'forklift-second-toyota-35-ton', 'FORKLIFT SECOND TOYOTA 3,5 TON', 11, '<p>- 7FD35 TAHUN 2014<br />- KONDISI MESIN SEHAT<br />- MAST 3 METER<br />- HOUR METER : 9230,4<br />- LOKASI UNIT DI KARAWANG TIMUR<br />- NEGO DAN CEK UNIT SILAHKAN HUBUNGI KAMI<br /><br />UNTUK POTO LENGKAP DAN VIDEO MESIN SILAHKAN HUBUNGI KAMI :&nbsp;<br />0822 1081 2989 ( WA )</p>', '230725133847.jpg', 'unit', 1),
(100, 'forklift-second-35-ton-toyota', 'FORKLIFT SECOND 3,5 TON TOYOTA', 11, '<p>- SERI 8FD35<br />- FORKLIFT DIESEL 3,5 TON<br />- MAST : 4 METER<br />- TAHUN 2015<br />- TRANSMISI MATIC<br />- HOUR METER : 16163,7<br />- MESIN HALUS DAN NORMAL CEK SEPUASNYA<br />- NEGO DAN SURVEI DILAHKAN HUBUNGI KAMI<br /><br />UNTUK POTO LEBIH BANYAK DAN VIDEO SILAHKAN HUBUNGU KAMI :<br />0822 1081 2989 (WA)</p>', '230725133916.jpg', 'unit', 1),
(101, 'forklift-elektrik-second-25-ton', 'FORKLIFT ELEKTRIK SECOND 2,5 TON', 11, '<p>- SERI 8FD25<br />- FORKLIFT DIESEL 2,5 TON<br />- MAST : 3 METER<br />- TAHUN 2013<br />- TRANSMISI MATIC<br />- HOUR METER : 26489,7<br />-&nbsp;BATTERY BARU<br />- NEGO DAN SURVEI SILAHKAN HUBUNGI KAMI<br /><br />UNTUK POTO LENGKAP DAN VIDEO SILAHKAN HUBUNGI KAMI :<br />0822 1081 2989 (WA)</p>', '230725133956.jpg', 'unit', 1),
(102, 'forklift-elektrik-second-25-ton-attachmen-twoway', 'FORKLIFT ELEKTRIK SECOND 2,5 TON ATTACHMEN TWOWAY', 11, '<p>- SERI 7FB25<br />- FORKLIFT BATTERY 2,5 TON<br />- MAST : 3METER<br />- TAHUN 2015<br />- ATTACHMENT TWO WAY<br />- BATTERY BARU<br />- NEGO DAN SURVEI DILAHKAN HUBUNGI KAMI : 0822 1081 2989 (WA)</p>', '230725135530.jpg', 'unit', 1),
(103, 'forklift-elektric-toyota-25-ton', 'FORKLIFT ELEKTRIC TOYOTA 2,5 TON', 11, '<p>&nbsp;SERI 7FB25<br />- FORKLIFT BATTEY 7 FB25<br />- MAST : 3METER<br />- TAHUN 2015<br />- BATTERY BARU<br />- NEGO DAN SURVEI DILAHKAN HUBUNGI KAMI : 0822 1081 2989 (WA)</p>', '230725135611.jpg', 'unit', 1),
(104, 'forklift-battery-25-ton', 'FORKLIFT BATTERY 2,5 TON', 11, '<p>- SERI 7FB25<br />- FORKLIFT BATTERY 2.5 TON<br />- MAST : 3 METER<br />- TAHUN 2015<br />- BATTERY BARU<br />- HOUR METER : 9862<br />- KONDISI UNIT NORMAL CEK SEPUASNYA<br />- NEGO DAN SURVEI DILAHKAN HUBUNGI KAMI :</p>', '230725135634.jpg', 'unit', 1),
(105, 'forklift-toyota-elektrik-15-ton', 'FORKLIFT TOYOTA ELEKTRIK 1,5 TON', 11, '<p>- SERI 8FB15<br />- FORKLIFT BATTERY 1,5TON<br />- MAST : 3 METER<br />- TAHUN 2017<br />- BATTERY BARU<br />- HOUR METER : 16435,5<br />- KONDISI UNIT NORMAL<br />- NEGO DAN SURVEI DILAHKAN HUBUNGI KAMI : 0822 1081 2989(WA)</p>', '230725143611.jpg', 'unit', 1),
(106, 'forklift-elektrik-second-15-ton-toyota', 'FORKLIFT ELEKTRIK SECOND 1,5 TON TOYOTA', 11, '<p>- SERI 8FB15<br />- FORKLIFT BATTERY 1,5 TON<br />- MAST : 3 METER<br />- TAHUN 2018<br />- BATTERY BARU<br />- HOUR METER : 10114,2<br />- KONDISI UNIT NORMAL<br />- NEGO DAN SURVEI DILAHKAN HUBUNGI KAMI :0822 1081 2989(WA)</p>', '230725143628.jpg', 'unit', 1),
(107, 'forklift-elektrik-second-2-ton', 'FORKLIFT ELEKTRIK SECOND 2 TON', 11, '<p>- SERI 7FB20<br />- FORKLIFT BATTERY 2 TON<br />- MAST : 4METER<br />- TAHUN 2015<br />- BATTERY BARU<br />- KONDISI UNIT NORMAL<br />- NEGO DAN SURVEI DILAHKAN HUBUNGI KAMI : 0822 1081 2989(WA)</p>', '230725143648.jpg', 'unit', 1);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `catalogues_view`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `catalogues_view` (
`id` text
,`slug` text
,`name` varchar(50)
,`id_merk` int(11)
,`merk` varchar(50)
,`description` text
,`image` text
,`type` enum('unit','part','ban','battery')
,`status` tinyint(4)
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT 0,
  `name` varchar(20) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `category`
--

INSERT INTO `category` (`id`, `parent_id`, `name`, `status`) VALUES
(1, 0, 'Ekonomi', 1),
(2, 0, 'Budaya', 1),
(3, 0, 'Iptek', 1),
(4, 0, 'Gallery', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `chat_main`
--

CREATE TABLE `chat_main` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `insert_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `locked` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `chat_main`
--

INSERT INTO `chat_main` (`id`, `name`, `email`, `phone`, `insert_date`, `update_date`, `locked`) VALUES
(1, 'test', 'pmilzam14@gmail.com', '087779077685', '2021-01-05 13:28:49', '2021-01-05 13:35:09', 1),
(2, 'PT. PRIME FORKLIFT SERVICES', 'suryadiprime01@gmail.com', '087779077685', '2021-01-05 14:30:35', '2021-01-05 14:30:46', 1),
(3, 'Muhammad Faqih', 'kotarokurosaki@gmail.com', '088218625519', '2021-01-14 13:15:01', '2021-01-14 16:59:11', 1),
(4, 'we', 'we', 'we', '2021-01-16 09:33:40', '2021-01-16 09:34:44', 1),
(5, 'Muhammad Faqih', 'kotarokurosaki@gmail.com', '088218625519', '2021-01-16 14:38:23', '2021-01-16 14:40:56', 1),
(6, 'Suryadi', 'surya_239@yahoo.com', '0811930168', '2021-01-27 13:32:53', '2021-01-27 14:27:39', 0),
(7, 'Ryan', 'ryan.ardi.pradana@gmail.com', '+62857778262', '2021-01-28 15:13:59', '2021-02-23 13:34:10', 0),
(8, '', '', '', '2021-01-29 17:57:05', '2021-01-29 17:57:05', 1),
(9, '', '', '', '2021-02-05 07:40:28', '2021-02-05 07:40:28', 1),
(10, 'Pramuji Akiyat', 'pramuji50@gmail.com', '085692609094', '2021-02-05 16:03:48', '2021-02-05 16:03:57', 1),
(11, 'Aivenne', 'purchasing@hitechink.co.id', '0218973890', '2021-02-24 11:03:36', '2021-02-24 11:03:44', 1),
(12, 'happy rahayu', 'happytmja@gmail.com', '085640362299', '2021-02-25 11:59:08', '2021-02-26 13:11:23', 0),
(13, 'Yudiyana', 'yudiyana@ptsenfu.com', '082260020617', '2021-03-03 12:32:09', '2021-03-03 12:32:09', 1),
(14, 'Irfan', '', '085212526660', '2021-03-03 13:35:59', '2021-03-03 13:35:59', 1),
(15, 'vivi', 'vivi_angel@soule.com.tw', '081364956856', '2021-03-03 14:34:06', '2021-03-03 14:34:06', 1),
(16, 'Dianoktaviani', 'dainahnano@gamailcom', '082231768831', '2021-03-05 07:54:05', '2021-03-05 07:54:40', 0),
(17, 'Dwie Yanti', 'dwieyanti685@gmail.com', '089533814902', '2021-03-07 13:28:37', '2021-03-07 13:28:37', 0),
(18, 'Maulidina', 'marketing@suryasaputragemilang.co.id', '08111184011', '2021-03-09 10:21:43', '2021-03-13 09:56:40', 0),
(19, '', NULL, '', '2021-04-11 23:05:42', '2021-04-11 23:05:42', 0),
(20, '', NULL, '', '2021-04-14 09:44:41', '2021-04-14 09:44:41', 0),
(21, '', NULL, '', '2021-04-28 04:49:49', '2021-04-28 04:49:49', 0),
(22, '', NULL, '', '2021-05-15 08:15:36', '2021-05-15 08:15:36', 0),
(23, '', NULL, '', '2021-05-20 03:31:27', '2021-05-20 03:31:27', 0),
(24, '', NULL, '', '2021-06-06 00:38:17', '2021-06-06 00:38:17', 0),
(25, '', NULL, '', '2021-06-12 08:21:07', '2021-06-12 08:21:07', 0),
(26, '', NULL, '', '2021-07-02 08:33:34', '2021-07-02 08:33:34', 0),
(27, '', NULL, '', '2021-07-06 07:12:43', '2021-07-06 07:12:43', 0),
(28, '', NULL, '', '2021-07-25 06:50:41', '2021-07-25 06:50:41', 0),
(29, '', NULL, '', '2021-08-13 08:23:19', '2021-08-13 08:23:19', 0),
(30, '', NULL, '', '2021-08-14 08:21:20', '2021-08-14 08:21:20', 1),
(31, '', NULL, '', '2021-08-19 19:14:29', '2021-08-19 19:14:29', 0),
(32, '', NULL, '', '2021-09-30 18:36:36', '2021-09-30 18:36:36', 0),
(33, '', NULL, '', '2021-09-30 18:36:51', '2021-09-30 18:36:51', 0),
(34, '', NULL, '', '2021-10-01 07:05:09', '2021-10-01 07:05:09', 0),
(35, '', NULL, '', '2021-10-01 12:00:24', '2021-10-01 12:00:24', 0),
(36, '', NULL, '', '2021-10-02 00:28:52', '2021-10-02 00:28:52', 0),
(37, '', NULL, '', '2021-10-02 00:30:50', '2021-10-02 00:30:50', 0),
(38, '', NULL, '', '2021-10-02 20:11:18', '2021-10-02 20:11:18', 0),
(39, '', NULL, '', '2021-10-02 20:18:51', '2021-10-02 20:18:51', 0),
(40, '', NULL, '', '2021-10-09 23:26:26', '2021-10-09 23:26:26', 0),
(41, '', NULL, '', '2021-10-09 23:26:31', '2021-10-09 23:26:31', 0),
(42, '', NULL, '', '2021-10-17 06:26:11', '2021-10-17 06:26:11', 0),
(43, '', NULL, '', '2021-10-17 06:37:49', '2021-10-17 06:37:49', 0),
(44, '', NULL, '', '2021-10-24 17:52:59', '2021-10-24 17:52:59', 0),
(45, '', NULL, '', '2021-10-24 17:55:01', '2021-10-24 17:55:01', 0),
(46, '', NULL, '', '2021-11-01 03:38:17', '2021-11-01 03:38:17', 0),
(47, '', NULL, '', '2021-11-01 03:38:18', '2021-11-01 03:38:18', 0),
(48, '', NULL, '', '2021-11-09 09:33:15', '2021-11-09 09:33:15', 0),
(49, '', NULL, '', '2021-11-09 09:49:53', '2021-11-09 09:49:53', 0),
(50, '', NULL, '', '2021-11-20 04:10:58', '2021-11-20 04:10:58', 0),
(51, '', NULL, '', '2021-12-09 20:37:33', '2021-12-09 20:37:33', 0),
(52, '', NULL, '', '2022-01-06 05:14:09', '2022-01-06 05:14:09', 0),
(53, '', NULL, '', '2022-01-12 22:06:40', '2022-01-12 22:06:40', 0),
(54, '', NULL, '', '2022-01-12 22:08:37', '2022-01-12 22:08:37', 0),
(55, '', NULL, '', '2022-01-13 20:05:09', '2022-01-13 20:05:09', 0),
(56, '', NULL, '', '2022-01-13 20:20:09', '2022-01-13 20:20:09', 0),
(57, '', NULL, '', '2022-01-14 18:18:38', '2022-01-14 18:18:38', 0),
(58, '', NULL, '', '2022-01-14 18:22:36', '2022-01-14 18:22:36', 0),
(59, '', NULL, '', '2022-01-15 04:00:28', '2022-01-15 04:00:28', 0),
(60, '', NULL, '', '2022-01-15 04:00:29', '2022-01-15 04:00:29', 0),
(61, '', NULL, '', '2022-01-15 07:00:21', '2022-01-15 07:00:21', 0),
(62, '', NULL, '', '2022-01-15 19:44:22', '2022-01-15 19:44:22', 0),
(63, '', NULL, '', '2022-02-22 18:11:10', '2022-02-22 18:11:10', 0),
(64, '', NULL, '', '2022-04-12 18:01:28', '2022-04-12 18:01:28', 0),
(65, '', NULL, '', '2022-05-25 10:01:47', '2022-05-25 10:01:47', 0),
(66, '', NULL, '', '2022-05-31 05:04:31', '2022-05-31 05:04:31', 0),
(67, '', NULL, '', '2022-07-18 04:49:13', '2022-07-18 04:49:13', 0),
(68, '', NULL, '', '2022-09-07 15:54:17', '2022-09-07 15:54:17', 0),
(69, '', NULL, '', '2022-10-21 06:20:58', '2022-10-21 06:20:58', 0),
(70, '', NULL, '', '2022-12-07 06:55:38', '2022-12-07 06:55:38', 0),
(71, '', NULL, '', '2023-01-09 13:28:42', '2023-01-09 13:28:42', 0),
(72, '', NULL, '', '2023-01-17 09:50:45', '2023-01-17 09:50:45', 0),
(73, '', NULL, '', '2023-01-21 18:20:07', '2023-01-21 18:20:07', 0),
(74, '', NULL, '', '2023-02-17 09:49:37', '2023-02-17 09:49:37', 0),
(75, '', NULL, '', '2023-02-20 08:09:50', '2023-02-20 08:09:50', 0),
(76, '', NULL, '', '2023-02-20 08:09:52', '2023-02-20 08:09:52', 0),
(77, '', NULL, '', '2023-02-20 15:41:02', '2023-02-20 15:41:02', 0),
(78, '', NULL, '', '2023-02-27 17:24:13', '2023-02-27 17:24:13', 0),
(79, '', NULL, '', '2023-03-02 07:52:17', '2023-03-02 07:52:17', 0),
(80, '', NULL, '', '2023-03-07 08:19:09', '2023-03-07 08:19:09', 0),
(81, '', NULL, '', '2023-03-07 08:19:10', '2023-03-07 08:19:10', 0),
(82, '', NULL, '', '2023-03-14 08:27:40', '2023-03-14 08:27:40', 0),
(83, '', NULL, '', '2023-03-14 08:27:42', '2023-03-14 08:27:42', 0),
(84, '', NULL, '', '2023-03-21 17:11:32', '2023-03-21 17:11:32', 0),
(85, '', NULL, '', '2023-03-24 18:29:09', '2023-03-24 18:29:09', 0),
(86, '', NULL, '', '2023-03-29 08:11:27', '2023-03-29 08:11:27', 0),
(87, '', NULL, '', '2023-03-29 08:11:30', '2023-03-29 08:11:30', 0),
(88, '', NULL, '', '2023-03-30 00:33:14', '2023-03-30 00:33:14', 0),
(89, '', NULL, '', '2023-04-06 08:03:01', '2023-04-06 08:03:01', 0),
(90, '', NULL, '', '2023-04-13 22:58:45', '2023-04-13 22:58:45', 0),
(91, '', NULL, '', '2023-05-13 08:20:35', '2023-05-13 08:20:35', 0),
(92, '', NULL, '', '2023-06-12 16:43:47', '2023-06-12 16:43:47', 0),
(93, '', NULL, '', '2023-06-12 23:22:54', '2023-06-12 23:22:54', 0),
(94, '', NULL, '', '2023-06-26 04:31:26', '2023-06-26 04:31:26', 0),
(95, '', NULL, '', '2023-06-29 11:29:22', '2023-06-29 11:29:22', 0),
(96, '', NULL, '', '2023-06-29 11:29:23', '2023-06-29 11:29:23', 0),
(97, '', NULL, '', '2023-07-07 06:16:08', '2023-07-07 06:16:08', 0),
(98, '', NULL, '', '2023-07-13 08:44:40', '2023-07-13 08:44:40', 0),
(99, '', NULL, '', '2023-07-13 20:59:44', '2023-07-13 20:59:44', 0),
(100, '', NULL, '', '2023-07-19 18:02:20', '2023-07-19 18:02:20', 0),
(101, '', NULL, '', '2023-07-21 11:52:58', '2023-07-21 11:52:58', 0),
(102, '', NULL, '', '2023-07-21 11:52:59', '2023-07-21 11:52:59', 0),
(103, '', NULL, '', '2023-07-25 16:33:36', '2023-07-25 16:33:36', 0),
(104, '', NULL, '', '2023-08-12 08:28:03', '2023-08-12 08:28:03', 0),
(105, '', NULL, '', '2023-08-12 08:28:04', '2023-08-12 08:28:04', 0),
(106, '', NULL, '', '2023-08-27 11:07:22', '2023-08-27 11:07:22', 0),
(107, '', NULL, '', '2023-08-28 08:44:30', '2023-08-28 08:44:30', 0),
(108, '', NULL, '', '2023-08-31 22:25:04', '2023-08-31 22:25:04', 0),
(109, '', NULL, '', '2023-09-01 05:27:10', '2023-09-01 05:27:10', 0),
(110, '', NULL, '', '2023-09-03 16:06:51', '2023-09-03 16:06:51', 0),
(111, '', NULL, '', '2023-09-06 08:43:37', '2023-09-06 08:43:37', 0),
(112, '', NULL, '', '2023-09-12 10:00:06', '2023-09-12 10:00:06', 0),
(113, '', NULL, '', '2023-10-18 06:03:00', '2023-10-18 06:03:00', 0),
(114, '', NULL, '', '2023-10-31 08:21:19', '2023-10-31 08:21:19', 0),
(115, '', NULL, '', '2023-10-31 08:21:20', '2023-10-31 08:21:20', 0),
(116, '', NULL, '', '2023-11-12 10:01:52', '2023-11-12 10:01:52', 0),
(117, '', NULL, '', '2023-11-14 07:44:26', '2023-11-14 07:44:28', 1),
(118, '', NULL, '', '2023-11-15 23:25:44', '2023-11-15 23:25:44', 0),
(119, '', NULL, '', '2023-11-23 13:10:01', '2023-11-23 13:10:01', 0),
(120, '', NULL, '', '2023-11-28 15:25:30', '2023-11-28 15:25:30', 0),
(121, '', NULL, '', '2023-12-02 09:41:48', '2023-12-02 09:41:48', 0),
(122, '', NULL, '', '2023-12-02 09:41:56', '2023-12-02 09:41:56', 0),
(123, '', NULL, '', '2023-12-05 10:46:04', '2023-12-05 10:46:04', 0),
(124, '', NULL, '', '2023-12-05 10:46:07', '2023-12-05 10:46:07', 0),
(125, '', NULL, '', '2023-12-10 11:32:51', '2023-12-10 11:32:51', 1),
(126, '', NULL, '', '2023-12-11 07:38:11', '2023-12-11 07:38:11', 0),
(127, '', NULL, '', '2023-12-11 07:38:14', '2023-12-11 07:38:14', 0),
(128, '', NULL, '', '2023-12-12 15:49:58', '2023-12-12 15:49:58', 0),
(129, '', NULL, '', '2023-12-12 15:50:00', '2023-12-12 15:50:00', 0),
(130, '', NULL, '', '2023-12-12 21:23:22', '2023-12-12 21:23:22', 0),
(131, '', NULL, '', '2023-12-15 17:31:46', '2023-12-15 17:31:46', 0),
(132, '', NULL, '', '2023-12-18 21:19:14', '2023-12-18 21:19:14', 0),
(133, '', NULL, '', '2024-01-04 02:02:16', '2024-01-04 02:02:16', 0),
(134, '', NULL, '', '2024-01-08 13:14:37', '2024-01-08 13:14:37', 0),
(135, '', NULL, '', '2024-01-11 20:11:07', '2024-01-11 20:11:07', 0),
(136, '', NULL, '', '2024-01-11 20:11:10', '2024-01-11 20:11:10', 0),
(137, '', NULL, '', '2024-01-19 13:14:55', '2024-01-19 13:14:55', 0),
(138, '', NULL, '', '2024-01-19 13:14:57', '2024-01-19 13:14:57', 0),
(139, '', NULL, '', '2024-01-19 19:29:53', '2024-01-19 19:29:53', 0),
(140, '', NULL, '', '2024-01-23 21:40:05', '2024-01-23 21:40:05', 0),
(141, '', NULL, '', '2024-01-29 12:23:48', '2024-01-29 12:23:48', 0),
(142, '', NULL, '', '2024-02-06 01:34:41', '2024-02-06 01:34:41', 0),
(143, '', NULL, '', '2024-02-19 15:09:04', '2024-02-19 15:09:04', 0),
(144, '', NULL, '', '2024-02-19 15:09:05', '2024-02-19 15:09:05', 0),
(145, '', NULL, '', '2024-03-07 14:12:35', '2024-03-07 14:12:35', 0),
(146, '', NULL, '', '2024-03-07 14:12:36', '2024-03-07 14:12:36', 0),
(147, '', NULL, '', '2024-04-09 16:25:41', '2024-04-09 16:25:41', 0),
(148, '', NULL, '', '2024-04-09 16:25:42', '2024-04-09 16:25:42', 0),
(149, '', NULL, '', '2024-07-26 09:10:43', '2024-07-26 09:10:43', 0),
(150, '', NULL, '', '2024-08-31 00:36:39', '2024-08-31 00:36:39', 0),
(151, '', NULL, '', '2024-09-11 17:08:34', '2024-09-11 17:08:34', 0),
(152, '', NULL, '', '2024-09-23 09:27:57', '2024-09-23 09:27:57', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `chat_message`
--

CREATE TABLE `chat_message` (
  `id` int(11) NOT NULL,
  `chat_id` int(11) DEFAULT NULL,
  `message` varchar(150) DEFAULT NULL,
  `admin_id` int(11) DEFAULT 0,
  `datetime` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `chat_message`
--

INSERT INTO `chat_message` (`id`, `chat_id`, `message`, `admin_id`, `datetime`) VALUES
(1, 1, 'selamat pagi , saya mau tanya mengenai', 0, '2021-01-05 13:28:49'),
(2, 1, 'hallo saya dengan panji .. ada yang bisa kami bantu ?', 1, '2021-01-05 13:29:58'),
(3, 1, 'saya mau tanya mengenai hal berikut', 0, '2021-01-05 13:30:30'),
(4, 1, 'oke baik dengan senang hati kami membatu', 1, '2021-01-05 13:31:00'),
(5, 1, 'test ini hanya berlaku', 1, '2021-01-05 13:35:09'),
(6, 2, 'TT', 0, '2021-01-05 14:30:35'),
(7, 2, 'test', 0, '2021-01-05 14:30:46'),
(8, 3, 'TESTING', 0, '2021-01-14 13:15:01'),
(9, 3, 'TESTING', 17, '2021-01-14 13:47:57'),
(10, 3, 'assalamualaikum mas', 0, '2021-01-14 16:59:11'),
(11, 4, 'wed', 0, '2021-01-16 09:33:40'),
(12, 4, 'sdsfsdfs', 0, '2021-01-16 09:33:45'),
(13, 4, 'safsff', 0, '2021-01-16 09:33:49'),
(14, 4, 'asiyap', 1, '2021-01-16 09:34:18'),
(15, 4, 'sgdsfhsdhdshdherhrhyearhyerhyearherhdrgrehregerhgerhyr eh er ery eryhearyearyeary aeryaeryaeryeryheryhrtyhrthdrtuhjdjytjrjt', 1, '2021-01-16 09:34:37'),
(16, 4, 'rher nruyrmtuttyumi7yt,67yumi67yu', 1, '2021-01-16 09:34:44'),
(17, 5, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,', 0, '2021-01-16 14:38:23'),
(18, 5, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,', 17, '2021-01-16 14:38:42'),
(19, 5, 'Loremipsumdolorsitamet,consecteturadipisicingelit,sedoeiusmodtemporincididuntutlaboreetdoloremagnaaliqua.Utenimadminimveniam,quisnostrudexercitationul', 0, '2021-01-16 14:40:56'),
(20, 6, 'tes', 0, '2021-01-27 13:32:53'),
(21, 6, 'panji', 0, '2021-01-27 13:33:01'),
(22, 6, 'test balesan', 1, '2021-01-27 14:27:39'),
(23, 7, 'Dear Prime Forklift\n\napakah menyediakan jasa sewa Electric Pallet Mover?', 0, '2021-01-28 15:13:59'),
(24, 7, '', 0, '2021-01-28 15:20:33'),
(25, 0, '', 0, '2021-01-29 12:30:21'),
(26, 0, '', 0, '2021-01-29 19:20:08'),
(27, 0, '', 0, '2021-01-30 11:06:01'),
(28, 0, '', 0, '2021-01-31 02:40:56'),
(29, 0, '', 0, '2021-01-31 12:11:04'),
(30, 0, '', 0, '2021-02-02 16:44:20'),
(31, 0, '', 0, '2021-02-02 17:46:33'),
(32, 0, '', 0, '2021-02-04 05:26:40'),
(33, 0, '', 0, '2021-02-04 05:26:42'),
(34, 0, '', 0, '2021-02-04 05:26:43'),
(35, 0, '', 0, '2021-02-05 07:40:29'),
(36, 10, 'sore', 0, '2021-02-05 16:03:57'),
(37, 0, '', 0, '2021-02-13 09:52:47'),
(38, 0, '', 0, '2021-02-14 06:53:47'),
(39, 0, '', 0, '2021-02-15 05:27:01'),
(40, 0, '', 0, '2021-02-16 03:38:17'),
(41, 0, '', 0, '2021-02-16 06:21:59'),
(42, 0, '', 0, '2021-02-16 09:58:42'),
(43, 0, '', 0, '2021-02-16 18:41:04'),
(44, 0, '', 0, '2021-02-16 18:41:05'),
(45, 0, '', 0, '2021-02-16 18:41:05'),
(46, 0, '', 0, '2021-02-17 04:24:05'),
(47, 0, '', 0, '2021-02-22 04:26:30'),
(48, 0, '', 0, '2021-02-23 13:08:12'),
(49, 7, 'selamat siang', 1, '2021-02-23 13:33:34'),
(50, 7, 'kebutuhan pallet mover brapa ton pak ?', 1, '2021-02-23 13:33:56'),
(51, 7, 'rencana sewa berapa lama ?', 1, '2021-02-23 13:34:10'),
(52, 0, '', 0, '2021-02-23 21:25:05'),
(53, 11, 'Hi', 0, '2021-02-24 11:03:44'),
(54, 0, '', 0, '2021-02-24 17:45:51'),
(55, 0, '', 0, '2021-02-24 17:45:51'),
(56, 0, '', 0, '2021-02-24 17:45:52'),
(57, 12, 'mencari reach truck bekas kapasitas 3 ton dan baterainya, boleh minta penawaran harga', 0, '2021-02-25 11:59:08'),
(58, 0, '', 0, '2021-02-26 03:39:19'),
(59, 12, 'hallo selamat siang', 1, '2021-02-26 13:10:40'),
(60, 12, 'Ada kontak yang bisa dihubungi ?', 1, '2021-02-26 13:11:23'),
(61, 0, '', 0, '2021-02-26 15:18:17'),
(62, 0, '', 0, '2021-02-26 15:18:17'),
(63, 0, '', 0, '2021-02-26 15:18:18'),
(64, 0, '', 0, '2021-03-01 09:29:14'),
(65, 0, '', 0, '2021-03-01 15:25:43'),
(66, 13, 'Butuh Electric Reach Truck\nDetail please contact di 0822-6002-0617', 0, '2021-03-03 12:32:09'),
(67, 14, 'Siang bapak ibu', 0, '2021-03-03 13:35:59'),
(68, 15, 'saya ingin menanyakan forklift baru dan bekas, mohon infonya', 0, '2021-03-03 14:34:06'),
(69, 0, '', 0, '2021-03-03 21:22:17'),
(70, 0, '', 0, '2021-03-04 02:02:42'),
(71, 16, 'Mau kerj', 0, '2021-03-05 07:54:05'),
(72, 16, '', 0, '2021-03-05 07:54:20'),
(73, 16, '', 0, '2021-03-05 07:54:40'),
(74, 17, 'Ingin melamar pekerjaan', 0, '2021-03-07 13:28:37'),
(75, 0, '', 0, '2021-03-08 07:06:23'),
(76, 0, '', 0, '2021-03-08 23:49:46'),
(77, 18, 'mohon respon email saya dengan mengirimkan penawaran harga untuk sewa forklift bulanan (2.5 ton)', 0, '2021-03-09 10:21:43'),
(78, 0, '', 0, '2021-03-09 21:15:34'),
(79, 0, '', 0, '2021-03-09 21:15:36'),
(80, 0, '', 0, '2021-03-09 21:15:37'),
(81, 0, '', 0, '2021-03-13 01:19:51'),
(82, 18, 'Ada spek yang dibutuhkan ?', 1, '2021-03-13 09:54:13'),
(83, 18, 'untuk lokasi dimna', 1, '2021-03-13 09:56:40'),
(84, 0, '', 0, '2021-03-19 16:23:13'),
(85, 0, '', 0, '2021-03-24 07:18:46'),
(86, 0, '', 0, '2021-03-25 09:35:30'),
(87, 0, '', 0, '2021-03-25 19:48:01'),
(88, 0, '', 0, '2021-03-25 19:48:02'),
(89, 0, '', 0, '2021-03-25 19:48:03'),
(90, 0, '', 0, '2021-03-28 10:18:08'),
(91, 0, '', 0, '2021-03-29 03:12:34'),
(92, 0, '', 0, '2021-03-29 09:12:37'),
(93, 0, '', 0, '2021-03-29 09:12:38'),
(94, 0, '', 0, '2021-03-29 09:12:38'),
(95, 0, '', 0, '2021-03-29 09:14:24'),
(96, 0, '', 0, '2021-03-29 09:14:25'),
(97, 0, '', 0, '2021-03-29 09:14:26'),
(98, 0, '', 0, '2021-03-29 18:41:39'),
(99, 0, '', 0, '2021-04-01 01:07:04'),
(100, 0, '', 0, '2021-04-03 11:15:07'),
(101, 0, '', 0, '2021-04-04 19:08:50'),
(102, 0, '', 0, '2021-04-04 20:38:11'),
(103, 0, '', 0, '2021-04-07 16:40:16'),
(104, 0, '', 0, '2021-04-08 13:59:26'),
(105, 0, '', 0, '2021-04-08 17:10:39'),
(106, 0, '', 0, '2021-04-09 18:59:47'),
(107, 0, '', 0, '2021-04-12 07:43:21'),
(108, 0, '', 0, '2021-04-14 00:33:06'),
(109, 0, '', 0, '2021-04-14 18:18:05'),
(110, 0, '', 0, '2021-04-14 18:18:06'),
(111, 0, '', 0, '2021-04-14 18:18:08'),
(112, 0, '', 0, '2021-04-16 22:52:27'),
(113, 0, '', 0, '2021-04-19 20:07:05'),
(114, 0, '', 0, '2021-04-19 23:43:17'),
(115, 0, '', 0, '2021-04-19 23:43:18'),
(116, 0, '', 0, '2021-04-19 23:43:19'),
(117, 0, '', 0, '2021-04-20 20:27:13'),
(118, 0, '', 0, '2021-04-20 21:39:43'),
(119, 0, '', 0, '2021-04-21 05:53:38'),
(120, 0, '', 0, '2021-04-21 13:26:33'),
(121, 0, '', 0, '2021-04-26 07:49:08'),
(122, 0, '', 0, '2021-04-26 15:04:21'),
(123, 0, '', 0, '2021-04-29 02:41:26'),
(124, 0, '', 0, '2021-04-29 22:02:54'),
(125, 0, '', 0, '2021-04-29 22:02:56'),
(126, 0, '', 0, '2021-05-01 17:09:44'),
(127, 0, '', 0, '2021-05-03 01:07:51'),
(128, 0, '', 0, '2021-05-03 02:42:58'),
(129, 0, '', 0, '2021-05-07 20:27:38'),
(130, 0, '', 0, '2021-05-10 06:29:13'),
(131, 0, '', 0, '2021-05-11 07:29:55'),
(132, 0, '', 0, '2021-05-11 21:09:12'),
(133, 0, '', 0, '2021-05-12 07:53:51'),
(134, 0, '', 0, '2021-05-12 07:53:52'),
(135, 0, '', 0, '2021-05-12 07:53:53'),
(136, 0, '', 0, '2021-05-12 10:49:22'),
(137, 0, '', 0, '2021-05-12 10:49:23'),
(138, 0, '', 0, '2021-05-12 10:49:25'),
(139, 0, '', 0, '2021-05-15 04:12:21'),
(140, 0, '', 0, '2021-05-18 12:17:44'),
(141, 0, '', 0, '2021-05-18 21:28:39'),
(142, 0, '', 0, '2021-05-18 21:28:41'),
(143, 0, '', 0, '2021-05-18 21:28:42'),
(144, 0, '', 0, '2021-05-20 06:08:15'),
(145, 0, '', 0, '2021-05-25 12:17:32'),
(146, 0, '', 0, '2021-05-28 21:40:29'),
(147, 0, '', 0, '2021-05-28 21:40:35'),
(148, 0, '', 0, '2021-05-29 03:52:59'),
(149, 0, '', 0, '2021-05-29 06:36:28'),
(150, 0, '', 0, '2021-05-29 21:39:46'),
(151, 0, '', 0, '2021-05-30 01:02:42'),
(152, 0, '', 0, '2021-06-02 01:39:53'),
(153, 0, '', 0, '2021-06-02 09:40:05'),
(154, 0, '', 0, '2021-06-04 04:57:10'),
(155, 0, '', 0, '2021-06-04 04:57:12'),
(156, 0, '', 0, '2021-06-04 04:57:14'),
(157, 0, '', 0, '2021-06-06 07:18:56'),
(158, 0, '', 0, '2021-06-06 21:29:02'),
(159, 0, '', 0, '2021-06-07 22:59:34'),
(160, 0, '', 0, '2021-06-07 22:59:37'),
(161, 0, '', 0, '2021-06-08 20:04:38'),
(162, 0, '', 0, '2021-06-08 20:04:43'),
(163, 0, '', 0, '2021-06-08 20:04:50'),
(164, 0, '', 0, '2021-06-09 05:42:14'),
(165, 0, '', 0, '2021-06-09 05:42:15'),
(166, 0, '', 0, '2021-06-09 05:42:17'),
(167, 0, '', 0, '2021-06-11 03:08:31'),
(168, 0, '', 0, '2021-06-13 21:57:44'),
(169, 0, '', 0, '2021-06-13 21:57:46'),
(170, 0, '', 0, '2021-06-13 21:57:50'),
(171, 0, '', 0, '2021-06-15 03:15:31'),
(172, 0, '', 0, '2021-06-15 04:30:58'),
(173, 0, '', 0, '2021-06-15 17:28:11'),
(174, 0, '', 0, '2021-06-16 12:04:38'),
(175, 0, '', 0, '2021-06-16 20:23:01'),
(176, 0, '', 0, '2021-06-16 20:23:02'),
(177, 0, '', 0, '2021-06-16 20:23:08'),
(178, 0, '', 0, '2021-06-17 05:06:15'),
(179, 0, '', 0, '2021-06-17 06:00:30'),
(180, 0, '', 0, '2021-06-18 04:16:12'),
(181, 0, '', 0, '2021-06-20 19:46:45'),
(182, 0, '', 0, '2021-06-20 19:46:49'),
(183, 0, '', 0, '2021-06-20 19:46:53'),
(184, 0, '', 0, '2021-06-22 04:50:50'),
(185, 0, '', 0, '2021-06-25 16:39:40'),
(186, 0, '', 0, '2021-06-25 20:51:44'),
(187, 0, '', 0, '2021-06-27 20:45:13'),
(188, 0, '', 0, '2021-06-28 21:27:47'),
(189, 0, '', 0, '2021-06-29 04:32:36'),
(190, 0, '', 0, '2021-06-29 04:32:37'),
(191, 0, '', 0, '2021-06-29 04:32:38'),
(192, 0, '', 0, '2021-06-29 14:16:11'),
(193, 0, '', 0, '2021-06-29 18:38:46'),
(194, 0, '', 0, '2021-06-29 18:38:47'),
(195, 0, '', 0, '2021-06-29 18:38:48'),
(196, 0, '', 0, '2021-06-29 19:53:28'),
(197, 0, '', 0, '2021-06-30 21:06:25'),
(198, 0, '', 0, '2021-07-02 14:38:25'),
(199, 0, '', 0, '2021-07-04 13:37:12'),
(200, 0, '', 0, '2021-07-06 04:37:17'),
(201, 0, '', 0, '2021-07-06 07:12:10'),
(202, 0, '', 0, '2021-07-09 13:30:40'),
(203, 0, '', 0, '2021-07-10 13:03:57'),
(204, 0, '', 0, '2021-07-13 09:59:02'),
(205, 0, '', 0, '2021-07-18 14:04:01'),
(206, 0, '', 0, '2021-07-19 16:50:01'),
(207, 0, '', 0, '2021-07-21 00:42:02'),
(208, 0, '', 0, '2021-08-02 05:54:28'),
(209, 0, '', 0, '2021-08-04 00:56:33'),
(210, 0, '', 0, '2021-08-09 04:52:25'),
(211, 0, '', 0, '2021-08-10 23:31:53'),
(212, 0, '', 0, '2021-08-11 01:42:53'),
(213, 0, '', 0, '2021-08-13 17:35:52'),
(214, 0, '', 0, '2021-08-14 08:21:23'),
(215, 0, '', 0, '2021-08-15 22:10:20'),
(216, 0, '', 0, '2021-08-15 23:59:23'),
(217, 0, '', 0, '2021-08-16 07:59:02'),
(218, 0, '', 0, '2021-08-16 10:01:18'),
(219, 0, '', 0, '2021-08-18 21:55:06'),
(220, 0, '', 0, '2021-08-19 19:14:30'),
(221, 0, '', 0, '2021-08-21 14:07:49'),
(222, 0, '', 0, '2021-08-22 16:38:24'),
(223, 0, '', 0, '2021-08-24 04:28:57'),
(224, 0, '', 0, '2021-08-24 13:15:58'),
(225, 0, '', 0, '2021-08-25 15:22:43'),
(226, 0, '', 0, '2021-08-28 16:38:54'),
(227, 0, '', 0, '2021-08-30 03:20:57'),
(228, 0, '', 0, '2021-09-01 03:07:08'),
(229, 0, '', 0, '2021-09-01 22:21:36'),
(230, 0, '', 0, '2021-09-02 01:59:22'),
(231, 0, '', 0, '2021-09-02 11:33:40'),
(232, 0, '', 0, '2021-09-06 22:07:14'),
(233, 0, '', 0, '2021-09-07 15:47:13'),
(234, 0, '', 0, '2021-09-08 23:41:45'),
(235, 0, '', 0, '2021-09-11 04:29:58'),
(236, 0, '', 0, '2021-09-13 11:28:49'),
(237, 0, '', 0, '2021-09-16 00:47:03'),
(238, 0, '', 0, '2021-09-17 01:05:55'),
(239, 0, '', 0, '2021-09-17 06:43:14'),
(240, 0, '', 0, '2021-09-21 12:13:50'),
(241, 0, '', 0, '2021-09-22 17:20:48'),
(242, 0, '', 0, '2021-09-22 22:48:30'),
(243, 0, '', 0, '2021-09-23 00:50:33'),
(244, 0, '', 0, '2021-09-24 06:43:23'),
(245, 0, '', 0, '2021-09-26 20:13:49'),
(246, 0, '', 0, '2021-09-28 21:44:23'),
(247, 0, '', 0, '2021-09-29 03:29:42'),
(248, 0, '', 0, '2021-09-30 18:35:28'),
(249, 0, '', 0, '2021-09-30 18:35:37'),
(250, 0, '', 0, '2021-10-01 21:56:37'),
(251, 0, '', 0, '2021-10-02 07:08:41'),
(252, 0, '', 0, '2021-10-07 20:17:30'),
(253, 0, '', 0, '2021-10-08 11:47:05'),
(254, 0, '', 0, '2021-10-08 11:48:36'),
(255, 0, '', 0, '2021-10-12 18:01:01'),
(256, 0, '', 0, '2021-10-12 22:15:08'),
(257, 0, '', 0, '2021-10-14 00:21:13'),
(258, 0, '', 0, '2021-10-14 04:09:22'),
(259, 0, '', 0, '2021-10-14 11:53:18'),
(260, 0, '', 0, '2021-10-16 01:59:52'),
(261, 0, '', 0, '2021-10-16 02:00:19'),
(262, 0, '', 0, '2021-10-19 13:58:31'),
(263, 0, '', 0, '2021-10-20 05:06:37'),
(264, 0, '', 0, '2021-10-21 00:14:34'),
(265, 0, '', 0, '2021-10-21 07:51:17'),
(266, 0, '', 0, '2021-10-22 02:19:57'),
(267, 0, '', 0, '2021-10-22 15:25:57'),
(268, 0, '', 0, '2021-10-23 20:30:54'),
(269, 0, '', 0, '2021-10-23 20:31:08'),
(270, 0, '', 0, '2021-10-24 11:33:33'),
(271, 0, '', 0, '2021-10-25 07:21:41'),
(272, 0, '', 0, '2021-10-25 15:44:27'),
(273, 0, '', 0, '2021-10-26 08:04:25'),
(274, 0, '', 0, '2021-10-27 21:06:06'),
(275, 0, '', 0, '2021-10-29 07:33:26'),
(276, 0, '', 0, '2021-10-31 13:30:18'),
(277, 0, '', 0, '2021-10-31 13:45:25'),
(278, 0, '', 0, '2021-11-02 06:10:58'),
(279, 0, '', 0, '2021-11-02 20:56:32'),
(280, 0, '', 0, '2021-11-03 00:28:46'),
(281, 0, '', 0, '2021-11-03 00:28:47'),
(282, 0, '', 0, '2021-11-03 00:28:48'),
(283, 0, '', 0, '2021-11-03 12:28:06'),
(284, 0, '', 0, '2021-11-03 21:09:36'),
(285, 0, '', 0, '2021-11-03 21:09:37'),
(286, 0, '', 0, '2021-11-03 21:09:38'),
(287, 0, '', 0, '2021-11-08 23:27:38'),
(288, 0, '', 0, '2021-11-08 23:31:14'),
(289, 0, '', 0, '2021-11-09 19:04:36'),
(290, 0, '', 0, '2021-11-17 03:50:12'),
(291, 0, '', 0, '2021-11-19 06:59:52'),
(292, 0, '', 0, '2021-11-21 01:53:35'),
(293, 0, '', 0, '2021-11-21 05:37:51'),
(294, 0, '', 0, '2021-11-23 22:18:56'),
(295, 0, '', 0, '2021-11-28 22:39:28'),
(296, 0, '', 0, '2021-11-30 10:53:58'),
(297, 0, '', 0, '2021-12-01 13:34:02'),
(298, 0, '', 0, '2021-12-01 16:54:41'),
(299, 0, '', 0, '2021-12-02 22:03:06'),
(300, 0, '', 0, '2021-12-07 01:14:17'),
(301, 0, '', 0, '2021-12-09 18:50:26'),
(302, 0, '', 0, '2021-12-09 20:37:35'),
(303, 0, '', 0, '2021-12-11 21:40:47'),
(304, 0, '', 0, '2021-12-14 08:46:03'),
(305, 0, '', 0, '2021-12-14 18:32:57'),
(306, 0, '', 0, '2021-12-20 23:44:41'),
(307, 0, '', 0, '2022-01-12 22:07:16'),
(308, 0, '', 0, '2022-01-12 22:10:40'),
(309, 0, '', 0, '2022-01-15 04:00:29'),
(310, 0, '', 0, '2022-01-29 06:04:54'),
(311, 0, '', 0, '2022-02-01 16:23:19'),
(312, 0, '', 0, '2022-02-02 17:16:32'),
(313, 0, '', 0, '2022-02-05 01:18:53'),
(314, 0, '', 0, '2022-02-05 11:36:02'),
(315, 0, '', 0, '2022-02-05 19:45:06'),
(316, 0, '', 0, '2022-02-05 19:45:08'),
(317, 0, '', 0, '2022-02-05 19:45:09'),
(318, 0, '', 0, '2022-02-07 12:27:52'),
(319, 0, '', 0, '2022-02-08 01:42:13'),
(320, 0, '', 0, '2022-02-08 19:26:01'),
(321, 0, '', 0, '2022-02-09 03:36:35'),
(322, 0, '', 0, '2022-02-09 10:22:09'),
(323, 0, '', 0, '2022-02-09 21:41:59'),
(324, 0, '', 0, '2022-02-11 00:27:59'),
(325, 0, '', 0, '2022-02-11 09:41:29'),
(326, 0, '', 0, '2022-02-11 11:57:50'),
(327, 0, '', 0, '2022-02-13 12:55:56'),
(328, 0, '', 0, '2022-02-13 16:27:28'),
(329, 0, '', 0, '2022-02-16 12:15:23'),
(330, 0, '', 0, '2022-02-16 21:54:34'),
(331, 0, '', 0, '2022-02-17 14:58:00'),
(332, 0, '', 0, '2022-02-18 01:59:28'),
(333, 0, '', 0, '2022-02-18 20:16:43'),
(334, 0, '', 0, '2022-02-23 06:30:26'),
(335, 0, '', 0, '2022-02-23 10:44:10'),
(336, 0, '', 0, '2022-02-25 12:34:52'),
(337, 0, '', 0, '2022-02-26 11:47:57'),
(338, 0, '', 0, '2022-03-01 12:55:04'),
(339, 0, '', 0, '2022-03-01 23:03:59'),
(340, 0, '', 0, '2022-03-04 02:10:45'),
(341, 0, '', 0, '2022-03-06 17:36:23'),
(342, 0, '', 0, '2022-03-06 17:36:24'),
(343, 0, '', 0, '2022-03-06 17:36:25'),
(344, 0, '', 0, '2022-03-07 07:12:08'),
(345, 0, '', 0, '2022-03-07 15:19:40'),
(346, 0, '', 0, '2022-03-09 18:36:52'),
(347, 0, '', 0, '2022-03-10 18:54:15'),
(348, 0, '', 0, '2022-03-11 12:21:53'),
(349, 0, '', 0, '2022-03-11 22:55:36'),
(350, 0, '', 0, '2022-03-12 15:46:10'),
(351, 0, '', 0, '2022-03-15 08:39:48'),
(352, 0, '', 0, '2022-03-18 05:18:14'),
(353, 0, '', 0, '2022-03-21 23:35:06'),
(354, 0, '', 0, '2022-03-24 02:59:01'),
(355, 0, '', 0, '2022-03-29 11:50:21'),
(356, 0, '', 0, '2022-03-30 22:51:36'),
(357, 0, '', 0, '2022-03-31 00:05:42'),
(358, 0, '', 0, '2022-03-31 14:29:21'),
(359, 0, '', 0, '2022-04-01 19:50:02'),
(360, 0, '', 0, '2022-04-02 09:45:59'),
(361, 0, '', 0, '2022-04-08 12:27:34'),
(362, 0, '', 0, '2022-04-09 05:49:29'),
(363, 0, '', 0, '2022-04-09 23:10:34'),
(364, 0, '', 0, '2022-04-11 00:30:44'),
(365, 0, '', 0, '2022-04-11 04:36:19'),
(366, 0, '', 0, '2022-04-12 22:56:17'),
(367, 0, '', 0, '2022-04-13 00:18:00'),
(368, 0, '', 0, '2022-04-13 02:32:00'),
(369, 0, '', 0, '2022-04-13 22:19:24'),
(370, 0, '', 0, '2022-04-16 12:45:37'),
(371, 0, '', 0, '2022-04-16 15:14:35'),
(372, 0, '', 0, '2022-04-16 20:32:16'),
(373, 0, '', 0, '2022-04-18 10:59:56'),
(374, 0, '', 0, '2022-04-18 12:33:07'),
(375, 0, '', 0, '2022-04-18 22:37:33'),
(376, 0, '', 0, '2022-04-19 21:53:05'),
(377, 0, '', 0, '2022-04-21 00:37:57'),
(378, 0, '', 0, '2022-04-21 00:38:00'),
(379, 0, '', 0, '2022-04-21 00:38:01'),
(380, 0, '', 0, '2022-04-21 04:51:30'),
(381, 0, '', 0, '2022-04-21 18:45:47'),
(382, 0, '', 0, '2022-04-23 19:12:51'),
(383, 0, '', 0, '2022-04-25 21:16:34'),
(384, 0, '', 0, '2022-04-26 13:34:36'),
(385, 0, '', 0, '2022-04-27 00:53:36'),
(386, 0, '', 0, '2022-04-27 08:32:31'),
(387, 0, '', 0, '2022-04-27 08:46:46'),
(388, 0, '', 0, '2022-04-28 11:46:21'),
(389, 0, '', 0, '2022-04-29 11:35:03'),
(390, 0, '', 0, '2022-04-30 13:47:46'),
(391, 0, '', 0, '2022-04-30 22:07:02'),
(392, 0, '', 0, '2022-05-02 12:10:09'),
(393, 0, '', 0, '2022-05-03 01:04:59'),
(394, 0, '', 0, '2022-05-05 21:37:44'),
(395, 0, '', 0, '2022-05-06 14:10:20'),
(396, 0, '', 0, '2022-05-06 19:47:29'),
(397, 0, '', 0, '2022-05-07 23:14:18'),
(398, 0, '', 0, '2022-05-08 10:30:11'),
(399, 0, '', 0, '2022-05-09 09:25:59'),
(400, 0, '', 0, '2022-05-11 00:09:48'),
(401, 0, '', 0, '2022-05-12 15:14:14'),
(402, 0, '', 0, '2022-05-14 15:07:57'),
(403, 0, '', 0, '2022-05-15 12:22:36'),
(404, 0, '', 0, '2022-05-17 20:26:13'),
(405, 0, '', 0, '2022-05-17 23:24:41'),
(406, 0, '', 0, '2022-05-19 22:03:15'),
(407, 0, '', 0, '2022-05-20 07:51:18'),
(408, 0, '', 0, '2022-05-24 10:58:49'),
(409, 0, '', 0, '2022-05-24 23:01:32'),
(410, 0, '', 0, '2022-05-25 10:01:43'),
(411, 0, '', 0, '2022-05-27 03:02:02'),
(412, 0, '', 0, '2022-05-29 23:49:41'),
(413, 0, '', 0, '2022-05-31 20:55:23'),
(414, 0, '', 0, '2022-06-02 22:23:56'),
(415, 0, '', 0, '2022-06-06 22:01:29'),
(416, 0, '', 0, '2022-06-09 04:20:00'),
(417, 0, '', 0, '2022-06-10 11:42:54'),
(418, 0, '', 0, '2022-06-12 13:04:06'),
(419, 0, '', 0, '2022-06-16 20:45:57'),
(420, 0, '', 0, '2022-06-19 09:42:32'),
(421, 0, '', 0, '2022-06-21 10:56:40'),
(422, 0, '', 0, '2022-06-22 01:49:32'),
(423, 0, '', 0, '2022-06-23 17:17:54'),
(424, 0, '', 0, '2022-06-23 19:54:14'),
(425, 0, '', 0, '2022-06-25 01:36:15'),
(426, 0, '', 0, '2022-07-04 16:11:51'),
(427, 0, '', 0, '2022-07-05 05:19:02'),
(428, 0, '', 0, '2022-07-05 23:55:53'),
(429, 0, '', 0, '2022-07-14 17:06:09'),
(430, 0, '', 0, '2022-07-16 01:38:06'),
(431, 0, '', 0, '2022-07-19 12:59:44'),
(432, 0, '', 0, '2022-07-20 13:46:33'),
(433, 0, '', 0, '2022-07-21 18:00:33'),
(434, 0, '', 0, '2022-07-25 14:28:21'),
(435, 0, '', 0, '2022-07-28 06:58:36'),
(436, 0, '', 0, '2022-07-29 09:23:44'),
(437, 0, '', 0, '2022-08-06 08:11:42'),
(438, 0, '', 0, '2022-08-10 06:02:31'),
(439, 0, '', 0, '2022-08-24 13:30:42'),
(440, 0, '', 0, '2022-08-25 23:35:53'),
(441, 0, '', 0, '2022-08-29 02:08:16'),
(442, 0, '', 0, '2022-09-04 16:16:23'),
(443, 0, '', 0, '2022-09-20 03:21:32'),
(444, 0, '', 0, '2022-09-20 16:31:10'),
(445, 0, '', 0, '2022-09-27 18:35:53'),
(446, 0, '', 0, '2022-09-29 04:58:54'),
(447, 0, '', 0, '2022-10-25 14:03:42'),
(448, 0, '', 0, '2022-10-26 19:51:37'),
(449, 0, '', 0, '2022-11-11 09:47:04'),
(450, 0, '', 0, '2022-11-28 20:20:35'),
(451, 0, '', 0, '2022-11-30 20:10:21'),
(452, 0, '', 0, '2023-01-09 13:28:44'),
(453, 0, '', 0, '2023-01-17 09:50:46'),
(454, 0, '', 0, '2023-01-21 18:20:09'),
(455, 0, '', 0, '2023-02-04 12:48:09'),
(456, 0, '', 0, '2023-02-11 19:48:20'),
(457, 0, '', 0, '2023-02-17 09:49:37'),
(458, 0, '', 0, '2023-02-20 08:09:50'),
(459, 0, '', 0, '2023-02-20 08:09:52'),
(460, 0, '', 0, '2023-02-20 15:41:04'),
(461, 0, '', 0, '2023-02-27 17:24:13'),
(462, 0, '', 0, '2023-03-02 07:52:19'),
(463, 0, '', 0, '2023-03-07 08:19:09'),
(464, 0, '', 0, '2023-03-13 09:45:09'),
(465, 0, '', 0, '2023-03-14 08:27:40'),
(466, 0, '', 0, '2023-03-21 17:11:32'),
(467, 0, '', 0, '2023-03-29 08:11:27'),
(468, 0, '', 0, '2023-03-29 08:11:28'),
(469, 0, '', 0, '2023-04-04 01:18:23'),
(470, 0, '', 0, '2023-04-05 02:28:51'),
(471, 0, '', 0, '2023-04-06 08:03:00'),
(472, 0, '', 0, '2023-04-06 08:03:01'),
(473, 0, '', 0, '2023-04-22 06:26:06'),
(474, 0, '', 0, '2023-05-13 08:20:35'),
(475, 0, '', 0, '2023-05-24 23:55:16'),
(476, 0, '', 0, '2023-05-30 16:09:55'),
(477, 0, '', 0, '2023-06-03 21:30:44'),
(478, 0, '', 0, '2023-06-05 16:36:44'),
(479, 0, '', 0, '2023-06-07 06:51:49'),
(480, 0, '', 0, '2023-06-12 16:43:52'),
(481, 0, '', 0, '2023-06-13 06:47:22'),
(482, 0, '', 0, '2023-06-14 12:43:40'),
(483, 0, '', 0, '2023-06-19 12:30:31'),
(484, 0, '', 0, '2023-06-20 15:58:22'),
(485, 0, '', 0, '2023-06-21 03:12:39'),
(486, 0, '', 0, '2023-06-21 18:15:56'),
(487, 0, '', 0, '2023-06-22 07:18:20'),
(488, 0, '', 0, '2023-06-23 03:01:58'),
(489, 0, '', 0, '2023-06-23 22:00:12'),
(490, 0, '', 0, '2023-06-29 11:29:22'),
(491, 0, '', 0, '2023-06-29 11:29:23'),
(492, 0, '', 0, '2023-07-13 20:59:44'),
(493, 0, '', 0, '2023-07-13 20:59:44'),
(494, 0, '', 0, '2023-07-18 01:54:56'),
(495, 0, '', 0, '2023-07-19 18:02:21'),
(496, 0, '', 0, '2023-07-21 11:52:58'),
(497, 0, '', 0, '2023-07-21 11:52:59'),
(498, 0, '', 0, '2023-07-25 16:33:37'),
(499, 0, '', 0, '2023-08-12 08:28:03'),
(500, 0, '', 0, '2023-08-12 21:02:27'),
(501, 0, '', 0, '2023-08-28 08:44:30'),
(502, 0, '', 0, '2023-08-28 08:44:31'),
(503, 0, '', 0, '2023-08-31 22:25:04'),
(504, 0, '', 0, '2023-09-01 05:27:07'),
(505, 0, '', 0, '2023-09-06 08:43:37'),
(506, 0, '', 0, '2023-09-06 08:43:37'),
(507, 0, '', 0, '2023-09-07 22:41:56'),
(508, 0, '', 0, '2023-09-12 10:00:07'),
(509, 0, '', 0, '2023-09-29 15:16:17'),
(510, 0, '', 0, '2023-10-09 00:34:53'),
(511, 0, '', 0, '2023-10-12 01:44:00'),
(512, 0, '', 0, '2023-10-13 09:14:16'),
(513, 0, '', 0, '2023-10-14 17:05:35'),
(514, 0, '', 0, '2023-10-18 06:03:17'),
(515, 0, '', 0, '2023-10-21 03:59:25'),
(516, 0, '', 0, '2023-10-24 15:39:15'),
(517, 0, '', 0, '2023-10-30 01:21:37'),
(518, 0, '', 0, '2023-10-30 20:15:13'),
(519, 0, '', 0, '2023-10-31 08:21:20'),
(520, 0, '', 0, '2023-10-31 08:21:20'),
(521, 0, '', 0, '2023-11-12 10:01:52'),
(522, 117, '', 0, '2023-11-14 07:44:28'),
(523, 0, '', 0, '2023-11-23 13:10:01'),
(524, 0, '', 0, '2023-11-28 15:25:30'),
(525, 0, '', 0, '2023-12-02 09:41:47'),
(526, 0, '', 0, '2023-12-02 09:41:54'),
(527, 0, '', 0, '2023-12-05 10:46:04'),
(528, 0, '', 0, '2023-12-05 10:46:07'),
(529, 0, '', 0, '2023-12-10 11:32:56'),
(530, 0, '', 0, '2023-12-11 07:38:12'),
(531, 0, '', 0, '2023-12-11 07:38:15'),
(532, 0, '', 0, '2023-12-12 08:21:36'),
(533, 0, '', 0, '2023-12-12 15:49:58'),
(534, 0, '', 0, '2023-12-12 15:50:00'),
(535, 0, '', 0, '2023-12-15 17:31:46'),
(536, 0, '', 0, '2023-12-22 08:48:23'),
(537, 0, '', 0, '2023-12-25 19:28:19'),
(538, 0, '', 0, '2024-01-08 13:14:36'),
(539, 0, '', 0, '2024-01-11 20:11:07'),
(540, 0, '', 0, '2024-01-11 20:11:10'),
(541, 0, '', 0, '2024-01-12 03:04:10'),
(542, 0, '', 0, '2024-01-13 04:00:55'),
(543, 0, '', 0, '2024-01-16 09:10:09'),
(544, 0, '', 0, '2024-01-19 13:14:55'),
(545, 0, '', 0, '2024-01-19 13:14:57'),
(546, 0, '', 0, '2024-01-19 19:30:01'),
(547, 0, '', 0, '2024-01-23 09:24:30'),
(548, 0, '', 0, '2024-01-23 21:41:03'),
(549, 0, '', 0, '2024-01-24 09:37:31'),
(550, 0, '', 0, '2024-01-28 06:50:04'),
(551, 0, '', 0, '2024-01-29 12:23:48'),
(552, 0, '', 0, '2024-02-02 18:59:53'),
(553, 0, '', 0, '2024-02-04 06:05:06'),
(554, 0, '', 0, '2024-02-08 12:06:49'),
(555, 0, '', 0, '2024-02-08 19:20:27'),
(556, 0, '', 0, '2024-02-16 17:26:23'),
(557, 0, '', 0, '2024-02-17 18:04:01'),
(558, 0, '', 0, '2024-02-19 15:09:04'),
(559, 0, '', 0, '2024-02-19 15:09:06'),
(560, 0, '', 0, '2024-02-28 03:30:10'),
(561, 0, '', 0, '2024-02-28 08:54:42'),
(562, 0, '', 0, '2024-02-28 21:18:20'),
(563, 0, '', 0, '2024-03-07 14:12:35'),
(564, 0, '', 0, '2024-03-07 14:12:37'),
(565, 0, '', 0, '2024-04-04 00:25:28'),
(566, 0, '', 0, '2024-04-06 10:57:38'),
(567, 0, '', 0, '2024-04-09 00:06:00'),
(568, 0, '', 0, '2024-04-09 16:25:43'),
(569, 0, '', 0, '2024-04-09 16:25:45'),
(570, 0, '', 0, '2024-06-19 18:33:25'),
(571, 0, '', 0, '2024-06-21 00:29:46'),
(572, 0, '', 0, '2024-07-02 01:32:36'),
(573, 0, '', 0, '2024-07-15 01:31:20'),
(574, 0, '', 0, '2024-07-27 04:09:40'),
(575, 0, '', 0, '2024-07-29 13:36:34'),
(576, 0, '', 0, '2024-08-31 00:38:33'),
(577, 0, '', 0, '2024-09-11 17:08:35'),
(578, 0, '', 0, '2024-09-23 09:27:56'),
(579, 0, '', 0, '2024-09-27 02:19:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('b34e4c057f66a209b4158c7048c0f15d', '202.137.6.91', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', 1443423416, 'a:7:{s:9:\"user_data\";s:0:\"\";s:7:\"sess-id\";s:1:\"1\";s:9:\"sess-user\";s:5:\"admin\";s:9:\"sess-name\";s:13:\"Administrator\";s:9:\"sess-role\";s:1:\"1\";s:13:\"sess-loggedin\";b:1;s:14:\"sess-starttime\";s:19:\"2015-09-28 13:39:15\";}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `link` text DEFAULT NULL,
  `status` int(11) DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `clients`
--

INSERT INTO `clients` (`id`, `name`, `image`, `link`, `status`) VALUES
(11, 'mapi', '210119094724.jpg', '', 0),
(2, 'DDMI', '240821093605.jpg', '', 0),
(3, 'HIC-PATI', '210105134251.png', '', 1),
(4, 'astra', '210119094844.jpg', '', 1),
(5, 'test2', '210119094831.jpg', '', 1),
(6, 'kres', '210118165457.JPG', '', 1),
(7, 'cnk', '210119094854.jpg', '', 1),
(8, 'lotte', '210119094806.jpg', '', 1),
(9, 'igp', '210119094754.jpg', '', 1),
(10, 'hagigara', '210119094745.jpg', '', 1),
(12, 'dnp', '210130081409.jpg', '', 1),
(13, 'indopoli', '210119094734.jpg', '', 1),
(14, 'indofood', '210130082257.jpg', '', 1),
(15, 'aice', '210130085848.jpg', '', 1),
(16, 'abc', '210130085907.jpg', '', 1),
(17, 'elring', '210130085937.jpg', '', 1),
(18, 'etex', '210130085959.jpg', '', 1),
(19, 'test', '240812140503.png', 'test', 0),
(20, 'PT. SINTO KOGYO INDONESIA', '240814101910.jpeg', '', 1),
(21, 'toppan', '240821093727.jpg', '', 1),
(22, 'PT . TOKAI RUBBER INDONESIA', '240821093715.jpg', '', 1),
(23, 'PT DENSO', '240821093658.jpg', '', 1),
(24, 'PT CHROWN', '240821093644.jpg', '', 1),
(25, 'PT. Chemco Harapan Nusantara', '240826113738.jpeg', '', 1),
(26, 'PT. SHINTO PAINT INDONESIA', '240826131417.png', '', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `configs`
--

CREATE TABLE `configs` (
  `config_id` int(10) UNSIGNED NOT NULL,
  `config_name` varchar(100) DEFAULT NULL,
  `config_value` text DEFAULT NULL,
  `config_type` varchar(25) DEFAULT 'text',
  `insert_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `configs`
--

INSERT INTO `configs` (`config_id`, `config_name`, `config_value`, `config_type`, `insert_date`, `update_date`) VALUES
(1, 'app_su', 'Prime Forklift', 'json', '2014-03-13 11:53:30', '2014-03-13 11:53:30'),
(2, 'app_name', 'Prime Forklift', 'text', '2014-03-13 11:53:30', '2014-03-13 11:53:30'),
(3, 'app_meta', '[{\"charset\":\"UTF-8\"},{\"name\":\"author\",\"content\":\"hunter.nainggolan\"},{\"name\":\"title\",\"content\":\"PT Prime Forklift Service, jasa jual beli dan service forklift wilayah Bekasi, Karawang, Cikampek dan Purwakarta\"},{\"name\":\"description\",\"content\":\"Menyediakan jual spare part forklift, ban forklift, battery forklift, safety light, blue spot light, sewa forklift kontrak tahunan, kontrak service forklift, forklift elektrik atau battery, forklift diesel, melayani wilayah bekasi, cibitung, cikarang, karawang, cikampek purwakarta, repair battery forklift\"},{\"name\":\"keywords\",\"content\":\"sewa forklift, forklift rental,jual forklift,Toyota forklift, service forklift,jual forklift bekas, harga forklift baru, forklift battery, ban forklift,harga ban forklift, daftar harga ban forklift, jual ban forklift, spare part forklift, electric forklift\"},{\"name\":\"viewport\",\"content\":\"width=device-width, initial-scale=1.0\"}]', 'json', '2014-03-13 11:53:30', '2014-03-13 11:53:30'),
(4, 'app_base_url', 'https://www.primeforklift.co.id/', 'text', '2014-03-13 11:53:30', '2014-03-13 11:53:30'),
(5, 'app_assets_path', '{app_base_url}assets', 'text', '2014-03-13 11:53:30', '2014-03-13 11:53:30'),
(6, 'app_manual', '{app_base_url}manuals', 'text', '2014-03-13 11:53:30', '2014-03-13 11:53:30'),
(7, 'app_default_timezone', 'Asia/Jakarta', 'text', '2014-03-13 11:53:30', '2014-03-13 11:53:30'),
(8, 'app_title', 'Prime Forklift', 'text', '2014-03-13 11:53:30', '2014-03-13 11:53:30'),
(9, 'app_version', '1.0.0', 'text', NULL, NULL),
(10, 'app_codename', 'development', 'text', NULL, NULL),
(11, 'app_icon', '{app_assets_path}/img/fav.ico', 'text', NULL, NULL),
(12, 'paging_rowlimit', '1', 'text', NULL, NULL),
(13, 'paging_numlinks', '10', 'text', NULL, NULL),
(14, 'app_link', '[{\"rel\":\"shortcut icon\",\"href\":\"{app_icon}\"},{\"rel\":\"stylesheet\",\"type\":\"text\\/css\",\"href\":\"{app_assets_path}\\/css\\/bootstrap.css\"},{\"rel\":\"stylesheet\",\"type\":\"text\\/css\",\"href\":\"{app_assets_path}\\/css\\/icons.css\"},{\"rel\":\"stylesheet\",\"type\":\"text\\/css\",\"href\":\"{app_assets_path}\\/css\\/font-awesome.min.css\"},{\"rel\":\"stylesheet\",\"type\":\"text\\/css\",\"href\":\"{app_assets_path}\\/css\\/responsiveslides.css\"},{\"rel\":\"stylesheet\",\"href\":\"{app_assets_path}\\/css\\/style.css\",\"type\":\"text\\/css\"},{\"rel\":\"stylesheet\",\"type\":\"text\\/css\",\"href\":\"http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,300,600,700,800\"}]', 'json', NULL, NULL),
(15, 'app_script', '[{\"src\":\"{app_assets_path}\\/js\\/jquery.min.js\",\"type\":\"text\\/javascript\"},{\"src\":\"{app_assets_path}\\/js\\/bootstrap.js\",\"type\":\"text\\/javascript\"},{\"src\":\"{app_assets_path}\\/js\\/responsiveslides.min.js\",\"type\":\"text\\/javascript\"},{\"src\":\"{app_assets_path}\\/js\\/response.min.js\",\"type\":\"text\\/javascript\"},{\"src\":\"{app_assets_path}\\/js\\/dataTables.bootstrap.min.js\",\"type\":\"text\\/javascript\"},{\"src\":\"{app_assets_path}\\/js\\/jquery.dataTables.min.js\",\"type\":\"text\\/javascript\"}]', 'json', NULL, NULL),
(48, 'app_admin_link', '[{\"rel\":\"shortcut icon\",\"href\":\"{app_icon}\"},{\"rel\":\"stylesheet\",\"type\":\"text\\/css\",\"href\":\"{app_assets_path}\\/admin\\/css\\/bootstrap.css\"},{\"rel\":\"stylesheet\",\"type\":\"text\\/css\",\"href\":\"{app_assets_path}\\/admin\\/css\\/icons.css\"},{\"rel\":\"stylesheet\",\"href\":\"{app_assets_path}\\/admin\\/css\\/admin-style.css\",\"type\":\"text\\/css\"},{\"rel\":\"stylesheet\",\"href\":\"{app_assets_path}\\/admin\\/css\\/dataTables.bootstrap.css\",\"type\":\"text\\/css\"},{\"rel\":\"stylesheet\",\"href\":\"{app_assets_path}\\/admin\\/css\\/dataTables.responsive.css\",\"type\":\"text\\/css\"},{\"rel\":\"stylesheet\",\"href\":\"{app_assets_path}\\/admin\\/css\\/jquery.Jcrop.css\",\"type\":\"text\\/css\"},{\"rel\":\"stylesheet\",\"href\":\"{app_assets_path}\\/admin\\/css\\/jquery.dataTables.min.css\",\"type\":\"text\\/css\"},{\"rel\":\"stylesheet\",\"type\":\"text\\/css\",\"href\":\"{app_assets_path}\\/css\\/font-awesome.min.css\"},{\"rel\":\"stylesheet\",\"href\":\"{app_assets_path}\\/admin\\/css\\/jquery-ui.css\",\"type\":\"text\\/css\"},{\"rel\":\"stylesheet\",\"type\":\"text\\/css\",\"href\":\"http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,300,600,700,800\"}]', 'json', NULL, NULL),
(49, 'app_admin_script', '[{\"src\":\"{app_assets_path}\\/admin\\/js\\/jquery.min.js\",\"type\":\"text\\/javascript\"},{\"src\":\"{app_assets_path}\\/admin\\/js\\/bootstrap.js\",\"type\":\"text\\/javascript\"},{\"src\":\"{app_assets_path}\\/admin\\/js\\/app.js\",\"type\":\"text\\/javascript\"},{\"src\":\"{app_assets_path}\\/admin\\/js\\/dataTables.bootstrap.min.js\",\"type\":\"text\\/javascript\"},{\"src\":\"{app_assets_path}\\/admin\\/js\\/jquery.dataTables.min.js\",\"type\":\"text\\/javascript\"},{\"src\":\"{app_assets_path}\\/admin\\/js\\/jquery.Jcrop.js\",\"type\":\"text\\/javascript\"},{\"src\":\"{app_assets_path}\\/admin\\/js\\/cropsetup.js\",\"type\":\"text\\/javascript\"},{\"src\":\"{app_assets_path}\\/admin\\/js\\/jquery-ui.js\",\"type\":\"text\\/javascript\"},{\"src\":\"{app_assets_path}\\/admin\\/plugins\\/tinymce\\/js\\/tinymce\\/tinymce.min.js\",\"type\":\"text\\/javascript\"},{\"src\":\"{app_assets_path}\\/admin\\/plugins\\/bootstrap-datepicker\\/js\\/bootstrap-datepicker.js\",\"type\":\"text\\/javascript\"}]', 'json', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `caption` varchar(75) DEFAULT NULL,
  `upload_date` datetime DEFAULT NULL,
  `type` enum('normal','catalogue','logo') DEFAULT 'normal'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `gallery`
--

INSERT INTO `gallery` (`id`, `file`, `caption`, `upload_date`, `type`) VALUES
(30, '151231205902.jpg', 'sejarah forklift2', NULL, 'normal'),
(27, '151231203747.jpg', 'mitsubishi2', NULL, 'normal'),
(28, '151231203957.jpg', 'used forklift', NULL, 'normal'),
(24, '151231203004.jpg', 'Service1', NULL, 'normal'),
(34, '151231214621.jpg', 'camfork', NULL, 'normal'),
(43, '180106160854.jpg', 'battery forklift', NULL, 'normal'),
(44, '180106160950.jpg', 'service battery forklift', NULL, 'normal'),
(45, '180106163751.jpg', 'jual beli dan sewa forklift', NULL, 'normal'),
(48, '180117172616.jpg', 'sparepart forklift', NULL, 'normal'),
(49, '180117173132.jpg', 'jual sparepart forklift', NULL, 'normal'),
(50, '180131165241.jpg', 'jual forklift blue spot zone light', NULL, 'normal'),
(51, '180219134620.jpg', 'PT Prime Forklift Services-Jasa Service Forklift', NULL, 'normal'),
(53, '180219162634.jpg', 'PT Prime Forklift Services-Jual spare part Forklift', NULL, 'normal'),
(55, '180219164216.jpg', 'jasa service forklift PT Prime Forklift Services', NULL, 'normal'),
(56, '180313151853.jpg', 'jual ban forklift solid', NULL, 'normal'),
(58, '180327094458.jpg', 'jual battery forklift', NULL, 'normal'),
(60, '180327103425.jpg', 'rental forklift', NULL, 'normal'),
(61, '180416103305.jpg', 'jenis-jenis forklift', NULL, 'normal'),
(62, '180424160346.jpg', 'jenis-jenis ban forklift', NULL, 'normal'),
(64, '180522152828.jpg', 'sewa forklift bekasi, cikarang, karawang', NULL, 'normal'),
(65, '180629165248.jpg', 'hand pallet', NULL, 'normal'),
(67, '180803152050.jpg', 'teknisi forklift', NULL, 'normal'),
(68, '180901135251.jpg', 'spare part forklift', NULL, 'normal'),
(69, '200131165826.jpg', 'service forklift karawang', NULL, 'normal'),
(70, '200203093342.jpg', 'BAN FORKLIFT ACHILLES', NULL, 'normal'),
(72, '200615125932.jpg', 'jualbatteray', NULL, 'normal'),
(73, '201210085037.jpg', 'NICHIYUFBR15', NULL, 'normal'),
(114, '201217154657.jpg', 'NICYU LAMP', '2020-12-17 15:46:57', 'catalogue'),
(113, '201217154535.jpg', 'BLUE', '2020-12-17 15:45:35', 'catalogue'),
(112, '201217154358.JPG', 'FD30ND', '2020-12-17 15:43:58', 'catalogue'),
(110, '201217153648.JPG', 'fd50nt', '2020-12-17 15:36:48', 'catalogue'),
(111, '201217154148.JPG', 'FD70NH', '2020-12-17 15:41:48', 'catalogue'),
(293, '240814102649.jpeg', 'test', '2024-08-14 10:26:49', 'catalogue'),
(139, '210119094724.jpg', 'mapi', '2021-01-19 09:47:24', 'logo'),
(174, '210130081409.jpg', 'dnp', '2021-01-30 08:14:09', 'logo'),
(141, '210119094745.jpg', 'hagihara', '2021-01-19 09:47:45', 'logo'),
(140, '210119094734.jpg', 'indopoli', '2021-01-19 09:47:34', 'logo'),
(137, '210118165457.JPG', 'kresna', '2021-01-18 16:54:57', 'logo'),
(142, '210119094754.jpg', 'igp', '2021-01-19 09:47:54', 'logo'),
(143, '210119094806.jpg', 'lotte', '2021-01-19 09:48:06', 'logo'),
(144, '210119094823.jpg', 'ehwa', '2021-01-19 09:48:23', 'logo'),
(145, '210119094831.jpg', 'hiruta', '2021-01-19 09:48:31', 'logo'),
(146, '210119094844.jpg', 'astra', '2021-01-19 09:48:44', 'logo'),
(147, '210119094854.jpg', 'cnk', '2021-01-19 09:48:54', 'logo'),
(148, '210119094906.jpg', 'hkpti', '2021-01-19 09:49:06', 'logo'),
(149, '210119132223.JPG', 'HANDSTACKER', '2021-01-19 13:22:23', 'catalogue'),
(151, '210119132319.JPG', 'FB20', '2021-01-19 13:23:19', 'catalogue'),
(152, '210119133119.JPG', 'fg50cnt', '2021-01-19 13:31:19', 'catalogue'),
(153, '210119133542.JPG', 'Mitsubishi FD25HS-2SP30-PD/PS Forklif', '2021-01-19 13:35:42', 'catalogue'),
(154, '210119134247.JPG', 'MLift SBP18EAS Power Stacker Forklift', '2021-01-19 13:42:47', 'catalogue'),
(155, '210119134525.JPG', 'handpallet', '2021-01-19 13:45:25', 'catalogue'),
(156, '210119134817.JPG', 'Nichiyu FBRF14-75-430MSF Forklift', '2021-01-19 13:48:17', 'catalogue'),
(157, '210119135257.JPG', 'NICHIYU FBD9-70-150 Forklif', '2021-01-19 13:52:57', 'catalogue'),
(158, '210119135445.JPG', 'NICHIYU PLD15-70-A10 Forklif', '2021-01-19 13:54:45', 'catalogue'),
(159, '210119135929.JPG', 'Nichiyu RB15-70-300 Forklif', '2021-01-19 13:59:29', 'catalogue'),
(161, '210125085020.jpg', 'achilles', '2021-01-25 08:50:20', 'catalogue'),
(162, '210125085032.jpg', 'ascendo', '2021-01-25 08:50:32', 'catalogue'),
(163, '210125085044.jpg', 'eco solid', '2021-01-25 08:50:44', 'catalogue'),
(164, '210125092320.jpg', 'ROTARY', '2021-01-25 09:23:20', 'catalogue'),
(165, '210125094057.jpg', 'BLUE ZONE', '2021-01-25 09:40:57', 'catalogue'),
(166, '210125095146.jpg', 'ALBRIGHT', '2021-01-25 09:51:46', 'catalogue'),
(168, '210125101728.jpg', 'GARFU', '2021-01-25 10:17:28', 'catalogue'),
(169, '210125104106.jpg', 'micon', '2021-01-25 10:41:06', 'catalogue'),
(170, '210125104604.jpg', 'ac', '2021-01-25 10:46:04', 'catalogue'),
(171, '210125134005.jpg', 'filter solar', '2021-01-25 13:40:05', 'catalogue'),
(172, '210125134527.jpg', 'FILTER OIL', '2021-01-25 13:45:27', 'catalogue'),
(173, '210125135842.jpg', 'RETURN', '2021-01-25 13:58:42', 'catalogue'),
(175, '210130082257.jpg', 'indofood', '2021-01-30 08:22:57', 'logo'),
(176, '210130085848.jpg', 'aice', '2021-01-30 08:58:48', 'logo'),
(177, '210130085907.jpg', 'abc', '2021-01-30 08:59:07', 'logo'),
(178, '210130085937.jpg', 'elring', '2021-01-30 08:59:37', 'logo'),
(179, '210130085959.jpg', 'etex', '2021-01-30 08:59:59', 'logo'),
(180, '210201093018.jpg', '3WAY', '2021-02-01 09:30:18', 'catalogue'),
(181, '210201093654.jpg', '2mima', '2021-02-01 09:36:54', 'catalogue'),
(182, '210201115003.jpg', '122', '2021-02-01 11:50:03', 'catalogue'),
(183, '210202084312.jpg', '1', '2021-02-02 08:43:12', 'catalogue'),
(184, '210202084611.jpg', 'o', '2021-02-02 08:46:11', 'catalogue'),
(185, '210202084930.jpg', 'p', '2021-02-02 08:49:30', 'catalogue'),
(186, '210220091655.jpg', 'anderson 175a', '2021-02-20 09:16:55', 'catalogue'),
(187, '210220091720.jpg', 'soket battery rema female', '2021-02-20 09:17:20', 'catalogue'),
(188, '210220091749.jpg', 'soket anderson sbx350', '2021-02-20 09:17:49', 'catalogue'),
(253, '230725133847.jpg', 'FORKLIFT SESECOND TOYOTA 3,5 TON', '2023-07-25 13:38:47', 'catalogue'),
(254, '230725133916.jpg', 'FORKLIFT SECOND TOYOTA3,5TON', '2023-07-25 13:39:16', 'catalogue'),
(249, '220623133310.jpg', 'ban forklift trelleborg', '2022-06-23 13:33:10', 'catalogue'),
(200, '210312091744.jpg', 'contractor nichiyu', '2021-03-12 09:17:44', 'catalogue'),
(197, '210312090235.jpg', 'seat', '2021-03-12 09:02:35', 'catalogue'),
(199, '210312091721.jpg', 'curtis', '2021-03-12 09:17:21', 'catalogue'),
(201, '210312144427.jpg', 'FBN25', '2021-03-12 14:44:27', 'catalogue'),
(250, '220623135014.jpg', 'Ban trelleborg M2', '2022-06-23 13:50:14', 'catalogue'),
(251, '220623142117.jpg', 'Trelleborg Ecosolid', '2022-06-23 14:21:17', 'catalogue'),
(207, '210614161202.jpg', 'bridgestone 600-9 bridgestone', '2021-06-14 16:12:02', 'catalogue'),
(208, '210614161231.jpg', 'ascendo 600-9', '2021-06-14 16:12:31', 'catalogue'),
(209, '210614161301.jpg', 'solid king 600-9', '2021-06-14 16:13:01', 'catalogue'),
(210, '210614161720.jpg', 'premia', '2021-06-14 16:17:20', 'catalogue'),
(211, '210614161742.jpg', 'eco solid', '2021-06-14 16:17:42', 'catalogue'),
(212, '210614161800.jpg', 'ascendo 650', '2021-06-14 16:18:00', 'catalogue'),
(213, '210614163719.jpg', 'ASCENDO', '2021-06-14 16:37:19', 'catalogue'),
(214, '210614163735.jpg', 'KING', '2021-06-14 16:37:35', 'catalogue'),
(215, '210614163749.jpg', 'eco solid', '2021-06-14 16:37:49', 'catalogue'),
(216, '210615111639.jpg', 'eco 18x7', '2021-06-15 11:16:39', 'catalogue'),
(217, '210615111659.jpg', 'solid king 18x7', '2021-06-15 11:16:59', 'catalogue'),
(218, '210615111722.jpg', 'trelleborg 18x7', '2021-06-15 11:17:22', 'catalogue'),
(220, '220103143112.jpg', 'HELI 1,5 TON ELEKTRIC', '2022-01-03 14:31:12', 'catalogue'),
(221, '220103143140.jpg', 'HELI 2,5 TON', '2022-01-03 14:31:40', 'catalogue'),
(222, '220103143200.jpg', 'HELI 3 TON', '2022-01-03 14:32:00', 'catalogue'),
(223, '220103144142.jpg', 'HELI DIESEL 3 TON', '2022-01-03 14:41:42', 'catalogue'),
(224, '220103144312.jpg', 'HELI DIESEL 5 TON', '2022-01-03 14:43:12', 'catalogue'),
(225, '220103144834.jpg', 'HELI 7 TON', '2022-01-03 14:48:34', 'catalogue'),
(226, '220104082849.jpg', 'stacker 16ac', '2022-01-04 08:28:49', 'catalogue'),
(227, '220104083046.jpg', 'CDD20J', '2022-01-04 08:30:46', 'catalogue'),
(228, '220104083149.jpg', 'STACKERKER 14', '2022-01-04 08:31:49', 'catalogue'),
(229, '220104105255.jpg', 'STACKER 10DC', '2022-01-04 10:52:55', 'catalogue'),
(230, '220104105334.jpg', 'STACKER ELECTRIC DC10', '2022-01-04 10:53:34', 'catalogue'),
(231, '220104105408.jpg', 'ELECTRIC TOWN TRACTOR', '2022-01-04 10:54:08', 'catalogue'),
(232, '220105093614.jpg', 'Battery forklift 1', '2022-01-05 09:36:14', 'catalogue'),
(233, '220105093635.jpg', 'battery stacker', '2022-01-05 09:36:35', 'catalogue'),
(234, '220105093651.jpg', 'battery forklift 3', '2022-01-05 09:36:51', 'catalogue'),
(235, '220105094903.jpg', 'REMICO', '2022-01-05 09:49:03', 'catalogue'),
(236, '220112094106.jpg', 'GT 650-10', '2022-01-12 09:41:06', 'catalogue'),
(237, '220112094200.jpg', 'BS 600-9', '2022-01-12 09:42:00', 'catalogue'),
(238, '220112094701.jpg', 'ascendo ban forklift 18x7-8', '2022-01-12 09:47:01', 'catalogue'),
(239, '220118145325.jpg', 'FUSE', '2022-01-18 14:53:25', 'catalogue'),
(240, '220118145346.jpg', 'HEAD CAP', '2022-01-18 14:53:46', 'catalogue'),
(241, '220118145542.jpg', 'HOSE FORKLIFT', '2022-01-18 14:55:42', 'catalogue'),
(242, '220118145559.jpg', 'KAMPAS REM FORKLIFT', '2022-01-18 14:55:59', 'catalogue'),
(243, '220118145610.jpg', 'MASTER REM ATAS', '2022-01-18 14:56:10', 'catalogue'),
(244, '220118145622.jpg', 'MASTER REM BAWAH', '2022-01-18 14:56:22', 'catalogue'),
(245, '220223135806.jpg', 'ascendo', '2022-02-23 13:58:06', 'normal'),
(248, '220420103814.jpg', 'forklift second', '2022-04-20 10:38:14', 'normal'),
(255, '230725133956.jpg', 'FORKLIFT BATTERY SECOND 2,5 TON', '2023-07-25 13:39:56', 'catalogue'),
(256, '230725135530.jpg', 'forklift elektrik with attachmen twoway', '2023-07-25 13:55:30', 'catalogue'),
(257, '230725135611.jpg', '7fbr25', '2023-07-25 13:56:11', 'catalogue'),
(258, '230725135634.jpg', 'forklift battery 2,5 ton', '2023-07-25 13:56:34', 'catalogue'),
(259, '230725143611.jpg', '8FD15', '2023-07-25 14:36:11', 'catalogue'),
(260, '230725143628.jpg', '8FB15 2', '2023-07-25 14:36:28', 'catalogue'),
(261, '230725143648.jpg', '8 FB20', '2023-07-25 14:36:48', 'catalogue'),
(291, '240814101747.jpeg', 'PT SINTO', '2024-08-14 10:17:47', 'normal'),
(263, '230725155759.jpg', 'fb25', '2023-07-25 15:57:59', 'catalogue'),
(264, '230725155833.jpg', 'fb25', '2023-07-25 15:58:33', 'catalogue'),
(265, '230725155858.jpg', '8fb25', '2023-07-25 15:58:58', 'catalogue'),
(266, '230725155914.jpg', 'fbr25', '2023-07-25 15:59:14', 'catalogue'),
(292, '240814101910.jpeg', 'PT SINTO', '2024-08-14 10:19:10', 'logo'),
(306, '240826131417.png', 'PT. SHINTO PAINT INDONESIA', '2024-08-26 13:14:17', 'logo'),
(305, '240826113738.jpeg', 'chemco', '2024-08-26 11:37:38', 'logo'),
(304, '240821093727.jpg', 'toppan', '2024-08-21 09:37:27', 'logo'),
(303, '240821093715.jpg', 'tokai', '2024-08-21 09:37:15', 'logo'),
(302, '240821093658.jpg', 'denso', '2024-08-21 09:36:58', 'logo'),
(301, '240821093644.jpg', 'chrown', '2024-08-21 09:36:44', 'logo'),
(300, '240821093605.jpg', 'ddmi', '2024-08-21 09:36:05', 'logo');

-- --------------------------------------------------------

--
-- Struktur dari tabel `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `preface` varchar(255) DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `update_date` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `info`
--

INSERT INTO `info` (`id`, `name`, `preface`, `detail`, `update_user`, `update_date`) VALUES
(1, 'About', 'It\'s Prime Services', '<p>&nbsp;IT\'S PRIME SERVICES</p>\n<p>Berbekal pengalaman di pemeliharaan Forklift berbagai merek selama lebih dari 20 tahun, maka kami mendirikan perusahaan<a title=\"PT PRIME FORKLIFT SERVICE, menyediakan jasa service forklift, sewa forklift tahunan dan jual spare part forklift \" href=\"../\" target=\"_blank\"><strong>&nbsp;PT PRIME FORKLIFT SERVICE</strong></a> ini untuk dapat melayani Pelanggan dengan<strong> PRIMA</strong>.</p>\n<p><strong>\"IT\'S PRIME SERVICES\"</strong> menjadi Slogan Kami.</p>\n<p>PT. Prime Forklift Services, berdiri karena<strong> VISI</strong> dari founder yang ingin :</p>\n<p>\"Menjadi rekan <strong>TERPERCAYA</strong> dalam penangan barang\" / \"To be<strong> A TRUSTED</strong> partner in material handling\"</p>\n<p><strong>VISI</strong> perusahaan dituangkan dalam <strong>MISI</strong> sebagai berikut :</p>\n<ul>\n<li>Memberikan pelayanan <strong>PRIMA</strong> kepada pelanggan</li>\n<li>Menjual Genuine Part berbagai merek Forklift</li>\n<li>Menyewakan Forklift baru dan lama yang berkualitas</li>\n</ul>\n<p>Adapun nilai-nilai perusahaan yang dianut adalah :</p>\n<p><strong>\"S\"</strong> : customer <strong>SATISFACTION</strong></p>\n<p><strong>\"M\"</strong> : high skill <strong>MAN POWER</strong></p>\n<p><strong>\"I\"</strong> &nbsp;: high <strong>INTEGRITY</strong></p>\n<p><strong>\"L\"</strong> &nbsp;:&nbsp;<strong>LONGTERM</strong> relationship</p>\n<p><strong>\"E\"</strong> &nbsp;: <strong>EXCELLENT</strong> services</p>\n<p>Kami juga dipercaya sebagai <strong>Authorized Dealer dari Forklift merk Komatsu, Mitsubishi dan Nichiyu</strong>.&nbsp;</p>', 1, '2015-02-02 21:02:41'),
(2, 'Contact', NULL, 'a:11:{s:7:\"address\";s:25:\"JL.Raya Kosambi 1 No.18 F\";s:4:\"city\";s:21:\"Karawang, Jawa Barat,\";s:7:\"country\";s:9:\"Indonesia\";s:5:\"phone\";s:17:\"082210812989 (WA)\";s:5:\"email\";s:27:\"primeforklift.ind@gmail.com\";s:2:\"fb\";s:13:\"primeforklift\";s:5:\"gplus\";s:17:\"primeforklift.ind\";s:3:\"fax\";s:14:\"(0267)-8402034\";s:3:\"sms\";s:12:\"+62811930168\";s:2:\"wa\";s:13:\"6282210812989\";s:6:\"tokped\";s:42:\"https://www.tokopedia.com/forkliftservices\";}', 1, '2015-02-03 07:02:30'),
(3, 'Disclaimer', NULL, '', 1, '2015-02-09 21:02:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lang`
--

CREATE TABLE `lang` (
  `id` varchar(3) NOT NULL,
  `name` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `lang`
--

INSERT INTO `lang` (`id`, `name`) VALUES
('EN', 'EN'),
('ID', 'ID');

-- --------------------------------------------------------

--
-- Struktur dari tabel `merk`
--

CREATE TABLE `merk` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `merk`
--

INSERT INTO `merk` (`id`, `nama`, `status`) VALUES
(1, 'Mitsubishi', 1),
(2, 'Nichiyu', 1),
(3, 'Toyota', 0),
(4, 'AKSESORIES', 0),
(5, 'TESTP', 0),
(6, 'Sparepart', 1),
(7, 'MIMA', 0),
(8, 'HELI', 1),
(9, 'Ban Forklift', 1),
(10, 'Battery', 1),
(11, 'Forklft Second Berkualitas', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `preface` varchar(255) DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `services`
--

INSERT INTO `services` (`id`, `name`, `preface`, `detail`, `image`) VALUES
(1, 'SERVICE AND SPAREPART FORKLIFT', 'Service and Sparepart berbagai merek Forklift. TOYOTA, MITSUBISHI, KOMATSU, CATEPILLAR, TCM, NICHIYU, DLL. \n\nTERSEDIA : \nBAN SOLID MERK TRELLEBORG, BRIDGESTONE, AICHI, CONTINENTAL, KUMAKAI, ACHILLES DLL...\nAKI FORKLIFT GS-YUASA, SERVICE AKI FORKLIFT\nPRESS', '<p >KAMI,&nbsp;<strong><a title=\"PT PRIME FORKLIFT SERVICE, menyediakan jasa service forklift, sewa forklift tahunan dan jual spare part forklift \" href=\"../../../../\" target=\"_blank\">PT PRIME FORKLIFT SERVICE</a></strong> MENANGANI SERVIS BERBAGAI MEREK FORKLIFT SERTA MENJUAL GENUINE PART DARI BERBAGAI MEREK FORKLIFT. DENGAN JAMINAN MEMBERIKAN LAYANAN YANG PRIMA, PERUSAHAAN KAMI MENYEDIAKAN LAYANAN<strong> <a title=\"Service forklift wilayah bekasi, cibitung, cikarang, karawang, cikampek dan purwakarta\" href=\"../../../../services.html\" target=\"_blank\">SERVICE FORKLIFT</a></strong>&nbsp;UNTUK <strong>DAERAH BEKASI, CIBITUNG, CIKARANG, KARAWANG, CIKAMPEK DAN PURWAKARTA.</strong></p>\n<p >SELAIN <strong>SERVICE FORKLIFT</strong>, KAMI JUGA MELAYANI:</p>\n<ol >\n<li><strong>PENJUALAN BAN SOLID BERBAGAI MERK, SEPERTI TRELLEBORG, BRIDGSTONE, AICHI, CONTINENTAL, KUMAKAI, ACHILLES DLL</strong></li>\n<li><strong>PENJUALAN AKI FORKLIFT BARU MERK GS-YUASA</strong></li>\n<li><strong>MENERIMA SERVICE AKI FORKLIFT</strong></li>\n<li><strong>MENERIMA PRESS BAN SOLID DAN PRESS ON</strong></li>\n<li><strong>PENJUALAN ROTARY LAMP, HEAD LAMP, SAFETY LAMP (BLUE SPOT ZONE DAN RED LIGHT), DLL</strong></li>\n</ol>\n<p ><strong>PELANGGAN KAMI : </strong></p>\n<p ><strong>PT. INDOPOLY, PT. MOLTEN ALUMUNIUM PRODUCER INDONESIA, PT. S-IK INDONESIA, PT. H-ONE KOGI PRIMA AUTO TECHNOLOGIES INDONESIA, PT. FURUKAWA, PT. HAGIHARA, PT. EPITERMA MAS KONSTRUKSI, PT. TSURATA, PT. CUNETSU, PT. EHWA, PT. MATSUZAWA PELITA FURNITURE INDONESIA, PT. CRESTEC, PT. GLOBAL SHINSEI INDONESIA, PT. CITRA NUGERAH KARYA, PT. VICTORY BLESSING INDONESIA, DAN LAIN-LAIN .....</strong></p>', '151231203747.jpg'),
(2, 'RENTAL FORKLIFT', 'PT PRIME FORKLIFT SERVICE menyediakan jasa sewa forklift tahunan berbagai merek. Minimum Down Time for Your Line Production', '<p>SEWA FORKLIFT&nbsp;</p>\n<p>Telah mendapatkan banyak kepercayaan dari berbagai perusahaan, <strong><a title=\"PT PRIME FORKLIFT SERVICE, menyediakan jasa service forklift, sewa forklift tahunan dan jual spare part forklift \" href=\"../../../../\" target=\"_blank\">PT PRIME FORKLIFT SERVICE</a>&nbsp;</strong>memberikan layanan Rental Kontrak atau<strong> <a title=\"sewa forklift wilayah bekasi, cibitung,cikarang, kerawang, cikampek dan purwakarta\" href=\"../../../../services.html\" target=\"_blank\">Sewa Forklift</a></strong>&nbsp;kontrak tahunan untuk berbagai merk forklift sesuai kebutuhan usaha Anda.&nbsp;</p>\n<p>Kami melayani pelanggan sewa forklift di wilayah Bekasi, Cibitung, Cikarang, Karawang, Cikampek dan dan Purwakarta. Dipastikan Anda akan mendapatkan unit yang terbaik karena kami selalu melakukan perawanan yang rutin untuk menghasilkan kinerja forklift yang terbaik. <strong>Silahkan hubungi kami sekarang juga di nomer kantor</strong> : <strong>0267-8402034 atau (wa) +6282210812989</strong></p>', '151231203004.jpg'),
(3, 'SALES USED FORKLIFT', 'PT PRIME FORKLIFT SERVICE, Jual Used Forklift Berkualitas', '<h  ><strong>MENJUAL DAN MENERIMA FORKLIFT BEKAS DENGAN HARGA PAS</strong></h2>\n<p >Tidak hanya menyediakan jasa service forklift dan juga menyewakan forklift berbagai merek, &nbsp;<strong><a title=\"PT PRIME FORKLIFT SERVICE, menyediakan jasa service forklift, sewa forklift tahunan dan jual spare part forklift \" href=\"../../../../\" target=\"_blank\">PT PRIME FORKLIFT SERVICE</a>&nbsp;</strong>juga <a title=\"menjual dan  membeli forklift bekas berkualitas dengan harga pas\" href=\"../../../../services.html\" target=\"_blank\">menjual dan menerima forklift bekas</a>&nbsp;berkualitas dengan harga yang pas. Jadi, jangan ragu lagi dengan layanan Prime Forklift, SILAHKAN HUBUNGI KAMI UNTUK PENAWARAN FORKLIFT BEKAS ANDA, KAMI HARGAIN DENGAN HARGA YANG PAS. HUBUNGI KAMI SEKARANG JUGA: NOMER KANTOR 0267 - 8402034 DAN (WA) +6282210812989</p>\n<p >&nbsp;</p>\n<p >&nbsp;</p>', '151231203957.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `insert_date` datetime DEFAULT NULL,
  `insert_by` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `slider`
--

INSERT INTO `slider` (`id`, `title`, `image`, `text`, `link`, `status`, `insert_date`, `insert_by`) VALUES
(1, 'handpallet', 'handpallet.jpg', 'Service & Spare Parts forklift berkualitas dan terpercaya', 'http://www.primeforklift.co.id/services.html', 1, '2015-06-08 10:00:14', 'admin'),
(2, 'Ban trlleborg', 'ban_trelleborg.jpg', 'Sewa Forklift wilayah bekasi, cibitung, cikarang, karawang, cikampek dan purwakarta', 'http://www.primeforklift.co.id/services.html', 1, '2015-06-08 10:00:16', 'admin'),
(3, 'battery', 'BATTERY.jpg', 'Menjual forklift bekas berkualtias', 'http://www.primeforklift.co.id/services/read/3.html', 1, '2015-06-08 10:00:19', 'admin'),
(4, 'BAN FORKLIFT', 'ban.jpg', 'jual spare part forklift, ban forklift, battery forklift, safety light, blue spot light, repair battery forklift, harga ban forklift, daftar harga ban forklift, jual ban forklift, spare part forklift, electric forklift', 'http://www.primeforklift.co.id/services/read/1.html', 1, NULL, NULL),
(5, 'mitsubishi', 'mitsubishi.jpg', 'Sewa dan service forklift merek toyota', 'http://www.primeforklift.co.id/services/read/2.html', 1, NULL, NULL),
(6, 'nichiyu', 'nichiyu.jpg', 'Berbekal pengalaman di pemeliharaan Forklift berbagai merek selama lebih dari 20 tahun,  PT PRIME FORKLIFT SERVICE menyediakan jasa service forklift, jual spare part forklift dan juga sewa forklift', 'https://www.tokopedia.com/forkliftservices', 1, NULL, NULL),
(7, 'tokped prime', 'TOKPED_REV.jpg', 'jual spare part forklift, jual ban forklift, jual baterai forklift, harga ban forklift, daftar harga ban forklift, jual ban forklift, spare part forklift, electric forklift, , forklift elektrik atau battery, forklift diesel, melayani wilayah bekasi, cibit', 'http://www.primeforklift.co.id/services/read/1.html', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `role` varchar(5) DEFAULT '1',
  `status` tinyint(1) DEFAULT 1,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `insert_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `insert_user` int(11) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` enum('male','female') DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`, `role`, `status`, `email`, `phone`, `insert_date`, `insert_user`, `update_date`, `update_user`, `date_of_birth`, `gender`) VALUES
(1, 'admin', '4244723c39a19c43502d5ccd405f14c1', 'admin', '1', 1, 'suryadi.239@gmail.com', '0811930168', '2015-09-23 04:36:41', NULL, '2015-05-29 05:42:18', 1, NULL, NULL),
(13, 'hunter.nainggolan', '7d90bbcd63d2cff0c7967b4f5c73385a', 'Hunter Nainggolan', '1', 1, 'hunter.nainggolan@gmail.com', '084545457741', '2015-09-23 06:40:40', 0, NULL, NULL, '2015-09-03', 'male'),
(15, 'suryadi', 'e697ac8efdc148372a6720f57071a65d', 'Suryadi', '1', 1, 'suryadi.239@gmail.com', '0811930168', '2015-12-17 15:02:31', 1, NULL, 1, NULL, NULL),
(16, 'pujiast', 'bfb3206155832047330e55a331d6734e', 'Puji Astuti', '1', 1, 'pujiast@gmail.com', '-', '2017-12-20 05:39:35', 13, NULL, NULL, NULL, NULL),
(17, 'golianner', '21232f297a57a5a743894a0e4a801fc3', 'Muhammad Faqih', '1', 1, 'kotarokurosaki@gmail.com', '088218625519', '2020-12-08 14:15:15', NULL, NULL, 17, NULL, NULL),
(18, 'panji', '4244723c39a19c43502d5ccd405f14c1', 'Panji Milzam', '2', 1, 'pmilzam14@gmail.com', '087779077685', '2021-06-03 07:10:04', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_article`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_article` (
`id` int(11)
,`slug` text
,`title` varchar(255)
,`preface` varchar(255)
,`detail` text
,`keyword` varchar(75)
,`image` varchar(255)
,`status` tinyint(1)
,`insert_user` int(11)
,`insert_date` datetime
,`update_user` int(11)
,`update_date` datetime
,`release_date` datetime
,`release_age` int(8)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_catalogues`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_catalogues` (
`id` int(11)
,`slug` text
,`name` varchar(50)
,`id_merk` int(11)
,`merk` varchar(50)
,`description` text
,`image` text
,`type` enum('unit','part','ban','battery')
,`status` tinyint(4)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_messages`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_messages` (
`id` int(11)
,`chat_id` int(11)
,`message` varchar(150)
,`admin_id` int(11)
,`name` varchar(50)
,`datetime` datetime
);

-- --------------------------------------------------------

--
-- Struktur untuk view `article_view`
--
DROP TABLE IF EXISTS `article_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `article_view`  AS SELECT if(`article`.`slug` is null or `article`.`slug` = '',`article`.`id`,`article`.`slug`) AS `id`, `article`.`slug` AS `slug`, `article`.`title` AS `title`, `article`.`preface` AS `preface`, `article`.`detail` AS `detail`, `article`.`keyword` AS `keyword`, `article`.`image` AS `image`, `article`.`status` AS `status`, `article`.`insert_user` AS `insert_user`, `article`.`insert_date` AS `insert_date`, `article`.`update_user` AS `update_user`, `article`.`update_date` AS `update_date`, `article`.`release_date` AS `release_date` FROM `article` ;

-- --------------------------------------------------------

--
-- Struktur untuk view `catalogues_view`
--
DROP TABLE IF EXISTS `catalogues_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `catalogues_view`  AS SELECT if(`catalogues`.`slug` is null or `catalogues`.`slug` = '',`catalogues`.`id`,`catalogues`.`slug`) AS `id`, `catalogues`.`slug` AS `slug`, `catalogues`.`name` AS `name`, `catalogues`.`id_merk` AS `id_merk`, `merk`.`nama` AS `merk`, `catalogues`.`description` AS `description`, `catalogues`.`image` AS `image`, `catalogues`.`type` AS `type`, `catalogues`.`status` AS `status` FROM (`catalogues` join `merk` on(`merk`.`id` = `catalogues`.`id_merk`)) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `v_article`
--
DROP TABLE IF EXISTS `v_article`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_article`  AS SELECT `article`.`id` AS `id`, `article`.`slug` AS `slug`, `article`.`title` AS `title`, `article`.`preface` AS `preface`, `article`.`detail` AS `detail`, `article`.`keyword` AS `keyword`, `article`.`image` AS `image`, `article`.`status` AS `status`, `article`.`insert_user` AS `insert_user`, `article`.`insert_date` AS `insert_date`, `article`.`update_user` AS `update_user`, `article`.`update_date` AS `update_date`, `article`.`release_date` AS `release_date`, (select to_days(current_timestamp()) - to_days(`article`.`release_date`)) AS `release_age` FROM `article` ;

-- --------------------------------------------------------

--
-- Struktur untuk view `v_catalogues`
--
DROP TABLE IF EXISTS `v_catalogues`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_catalogues`  AS SELECT `a`.`id` AS `id`, `a`.`slug` AS `slug`, `a`.`name` AS `name`, `a`.`id_merk` AS `id_merk`, `b`.`nama` AS `merk`, `a`.`description` AS `description`, `a`.`image` AS `image`, `a`.`type` AS `type`, `a`.`status` AS `status` FROM (`catalogues` `a` join `merk` `b` on(`a`.`id_merk` = `b`.`id`)) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `v_messages`
--
DROP TABLE IF EXISTS `v_messages`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_messages`  AS SELECT `a`.`id` AS `id`, `a`.`chat_id` AS `chat_id`, `a`.`message` AS `message`, `a`.`admin_id` AS `admin_id`, `b`.`name` AS `name`, `a`.`datetime` AS `datetime` FROM (`chat_message` `a` left join `users` `b` on(`a`.`admin_id` = `b`.`id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `catalogues`
--
ALTER TABLE `catalogues`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `chat_main`
--
ALTER TABLE `chat_main`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `chat_message`
--
ALTER TABLE `chat_message`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indeks untuk tabel `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `configs`
--
ALTER TABLE `configs`
  ADD PRIMARY KEY (`config_id`);

--
-- Indeks untuk tabel `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `lang`
--
ALTER TABLE `lang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `merk`
--
ALTER TABLE `merk`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `catalogues`
--
ALTER TABLE `catalogues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT untuk tabel `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `chat_main`
--
ALTER TABLE `chat_main`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT untuk tabel `chat_message`
--
ALTER TABLE `chat_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=580;

--
-- AUTO_INCREMENT untuk tabel `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `configs`
--
ALTER TABLE `configs`
  MODIFY `config_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT untuk tabel `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=307;

--
-- AUTO_INCREMENT untuk tabel `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `merk`
--
ALTER TABLE `merk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
