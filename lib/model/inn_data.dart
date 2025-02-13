class InnData {
  String deskripsi;
  String title;
  String location;
  String gambar;
  String shortLocation;
  int harga;

  InnData({
    required this.deskripsi,
    required this.title,
    required this.gambar,
    required this.shortLocation,
    required this.harga,
    required this.location
  });
}

List <InnData> dummyInnData = [
  InnData(
    deskripsi: 'The Reiz Suites ARTOTEL Curated Medan adalah serviced apartment modern yang terletak di pusat Kota Medan. Beroperasi sejak Oktober 2020, hotel ini menawarkan kenyamanan layaknya hunian pribadi dengan fasilitas lengkap, seperti dapur, ruang tamu, dan meja makan di setiap unit. Dengan 120 kamar yang tersedia dalam berbagai tipe, termasuk one bedroom, two bedroom, deluxe, dan suite room, penginapan ini cocok untuk wisatawan maupun pebisnis. Fasilitas tambahan seperti kolam renang, area bermain anak, serta lokasi strategis dekat ikon kota Medan menjadikannya pilihan ideal untuk menginap jangka pendek maupun panjang.' , 
    title:'The Reiz Suites Artotel Curated Medan',
    gambar: "https://ak-d.tripcdn.com/images/0582e12000cwju5bgAB86_R_600_400_R5.webp",
    shortLocation: "Jl. Tembakau",
    harga: 604862, 
    location : 'Jl. Tembakau Deli No.1, Kesawan, Kec. Medan Bar., Kota Medan, Sumatera Utara, 20231' 
  ),
  InnData(
    deskripsi:'Cambridge Hotel Medan adalah hotel bintang lima yang terletak di pusat bisnis Kota Medan, tepatnya di Jalan S. Parman No. 217. Hotel ini menawarkan 242 kamar yang luas, mulai dari Deluxe Room hingga Presidential Suites, dengan desain modern dan fasilitas lengkap. Salah satu keunggulannya adalah integrasi langsung dengan pusat perbelanjaan Cambridge City Square, memudahkan tamu untuk mengakses berbagai toko dan fasilitas hiburan.' , 
    title: 'Cambridge Hotel Medan' ,
    gambar: "https://ak-d.tripcdn.com/images/0221g120009sb6fsu57A5_R_600_400_R5.webp",
    shortLocation: "Jl. S. Parman",
    harga: 1132794, 
    location: 'Jl. S. Parman No.217, Petisah Tengah, Medan Petisah, Kota Medan, Sumatera Utara, 20152'
  ),
  InnData(
    deskripsi: 'Grand Inna Medan adalah hotel bersejarah yang terletak di Jalan Balai Kota No. 2, Medan. Dulunya dikenal sebagai Hotel De Boer, bangunan ini didirikan pada masa kolonial Belanda pada tahun 1898. Hotel ini menawarkan berbagai tipe kamar, termasuk Deluxe dan Royal Deluxe, serta beberapa jenis suite seperti Grand Inna Suite, Deluxe Suite, dan Junior Suite. ', 
    title:  'Grand Inna Medan', 
    gambar: "https://ak-d.tripcdn.com/images/0226012000atal65d8B8F_R_600_400_R5.webp",
    shortLocation: "Jl. Balai Kota",
    harga: 421364, 
    location: 'Jl. Balai Kota No.2, Kesawan, Kec. Medan Bar., Kota, Kota Medan, Sumatera Utara, 20110' 
  ),
  InnData(
    deskripsi: 'Swiss-Belinn Medan adalah hotel bintang 3 yang terletak di Jalan Surabaya No. 88, di jantung Kota Medan. Hotel ini menawarkan 180 kamar dengan desain modern minimalis, termasuk tipe Superior, Deluxe, Superior Deluxe, dan Family Suite.', 
    title: 'Swiss-Belinn Medan', 
    gambar: "https://ak-d.tripcdn.com/images/1mc6j12000boe48x43959_R_600_400_R5.webp",
    shortLocation: "Jl. Surabaya",
    harga: 391155, 
    location: 'Jl. Surabaya 88, Kota Medan, Sumatera Utara, 20212'
  ),
  InnData(
    deskripsi: 'Grand Sakura Hotel adalah hotel bintang 3 yang terletak di pusat distrik bisnis Medan, tepatnya di Jalan Prof H.M Yamin SH No. 41. Fasilitas hotel meliputi karaoke, layanan penyewaan mobil, dan parkir gratis. Terdapat dua pilihan bersantap di tempat: Heritage Restaurant yang menyajikan hidangan Indonesia dan internasional, serta Silk Road Restaurant yang menawarkan hidangan Indonesia. ' , 
    title: 'Grand Sakura Hotel', 
    gambar: "https://ak-d.tripcdn.com/images/1mc4c12000dh2jpqiD675_R_600_400_R5.webp",
    shortLocation: "Jl. Prof. H. M. Yamin",
    harga: 388605, 
    location: 'Jl. Prof. H. M. Yamin No.41, Perintis, Kec. Medan Tim., Kota, Kota Medan, Sumatera Utara, 20234'
  ),
  InnData(
    deskripsi: 'Hotel Grandhika Setiabudi Medan adalah hotel bintang 4 yang terletak di pusat kota Medan, menawarkan kenyamanan dan kemewahan dengan fasilitas modern. Dengan desain elegan dan ruang yang luas, hotel ini cocok untuk para pelancong bisnis maupun wisatawan yang mencari akomodasi yang nyaman. Grandhika Setiabudi dilengkapi dengan berbagai fasilitas seperti kolam renang, restoran, ruang pertemuan, dan layanan spa untuk memastikan pengalaman menginap yang menyenangkan. Lokasinya yang strategis memudahkan akses ke berbagai tempat menarik di Medan. ' , 
    title: 'Hotel Grandhika', 
    gambar: "https://ak-d.tripcdn.com/images/0226h120009oboyu3D5CD_R_600_400_R5.webp",
    shortLocation: "Jl. Dr. Mansyur",
    harga: 481981, 
    location: 'Jl. Dr. Mansyur No.169, Tj. Rejo, Kec. Medan Sunggal, Kota Medan, Sumatera Utara, 20122'
  ),
  InnData(
    deskripsi: 'Grand Central Premier Medan adalah sebuah hunian mewah yang menawarkan kenyamanan dan fasilitas lengkap di pusat kota Medan. Dengan desain modern dan elegan, properti ini cocok bagi mereka yang menginginkan tempat tinggal yang strategis dengan akses mudah ke berbagai fasilitas umum seperti pusat perbelanjaan, restoran, dan transportasi. Grand Central Premier Medan memberikan pengalaman hidup yang istimewa dengan kualitas dan pelayanan terbaik.' , 
    title: 'Grand Central Premier', 
    gambar: "https://ak-d.tripcdn.com/images/0224412000as2fmiyB72E_R_600_400_R5.webp",
    shortLocation: "Jl. Putri Merak",
    harga: 812314, 
    location: 'Jl. Putri Merak Jingga No.3A, Kesawan, Kota Medan, Sumatera Utara, 20231'
  ),
  InnData(
    deskripsi: 'Batik Hotel Medan adalah hotel bintang 3 yang terletak di Jl. Iskandar Muda No.15, Medan Baru, Kota Medan. Hotel ini menawarkan 60 kamar yang dirancang dengan sentuhan motif batik khas Indonesia, menciptakan suasana yang unik dan elegan. Setiap kamar dilengkapi dengan fasilitas modern seperti AC, televisi layar datar, akses Wi-Fi gratis, minibar, serta kamar mandi pribadi dengan perlengkapan mandi lengkap.' , 
    title: 'Batik Hotel Medan', 
    gambar: "https://ak-d.tripcdn.com/images/02214120009zv07et748A_R_600_400_R5.webp",
    shortLocation: "Jl. Iskandar Muda",
    harga: 299760, 
    location: 'Jl. Iskandar Muda No.15, Merdeka, Kec. Medan Baru, Kota, Kota Medan, Sumatera Utara, 20154'
  ),
  InnData(
    deskripsi: 'Adimulia Hotel Medan adalah hotel bintang empat yang terletak di pusat kota Medan, tepatnya di Jl. Pangeran Diponegoro No. 8, Medan 20112, Sumatera Utara, Indonesia. Hotel ini menawarkan kemewahan dengan sentuhan elegan, menjadikannya pilihan ideal bagi wisatawan bisnis maupun rekreasi. ' , 
    title: 'Adimulia Hotel Medan', 
    gambar: "https://ak-d.tripcdn.com/images/0204l1200093pt9sz8F7B_R_600_400_R5.webp",
    shortLocation: "Jl. Pangeran Diponegoro",
    harga: 938910, 
    location: 'Jl. Pangeran Diponegoro No.8, Petisah Tengah, Kec. Medan Petisah, Kota Medan, Sumatera Utara, 20112'
  ),
  InnData(
    deskripsi: 'Sishezu Citytel adalah hotel yang terletak di Jl. Pembangunan USU No.69, Medan Baru, Medan, Sumatera Utara. Hotel ini menawarkan akomodasi yang nyaman dengan fasilitas seperti akses Wi-Fi gratis, parkir, dan layanan resepsionis 24 jam. Setiap kamar dilengkapi dengan AC, televisi, dan kamar mandi pribadi dengan shower.' , 
    title: 'Sishezu Citytel', 
    gambar: "https://ak-d.tripcdn.com/images/0580s12000e8t8vhk1AE9_R_600_400_R5.webp",
    shortLocation: "Jalan Pembangunan",
    harga: 258986, 
    location: 'Jalan Pembangunan, 69, Medan Selayang, Kota Medan, Sumatera Utara, 20153'
  ),
];