class PlanetInfo {
  final int id;
  final String name;
  final String iconImage;
  final String description;
  final List<String> images;

  PlanetInfo({
    required this.id,
    required this.name,
    required this.iconImage,
    required this.description,
    required this.images,
  });
}

// this is our model data for planets
List<PlanetInfo> planets = [
  PlanetInfo(
    id: 1,
    name: 'Merkurius',
    iconImage: 'images/mercury.png',
    description:
        "Merkurius, planet terdekat dengan Matahari, adalah yang terkecil di tata surya dan memiliki permukaan yang sangat berkawah mirip dengan Bulan. Atmosfernya yang tipis menyebabkan fluktuasi suhu yang ekstrem, dengan siang yang terik dan malam yang membeku. Kurangnya atmosfer Merkurius berarti tidak dapat menahan panas, menghasilkan suhu mulai dari -173 ° C di malam hari hingga 427 ° C di siang hari.",
    images: [
      'https://images-assets.nasa.gov/image/PIA11406/PIA11406~orig.jpg?w=720&h=486&fit=clip&crop=faces%2Cfocalpoint',
      'https://images-assets.nasa.gov/image/PIA11351/PIA11351~orig.jpg?w=1018&h=1024&fit=clip&crop=faces%2Cfocalpoint',
      'https://science.nasa.gov/wp-content/uploads/2023/05/pia19285-mercury-jpg.webp?w=2048&format=webp',
    ],
  ),
  PlanetInfo(
    id: 2,
    name: 'Venus',
    iconImage: 'images/venus.png',
    description:
        "Venus, planet kedua dari Matahari, memiliki ukuran dan struktur yang mirip dengan Bumi, membuatnya mendapatkan gelar 'planet saudara' Bumi. Namun, atmosfernya yang tebal, terutama terdiri dari karbon dioksida dengan awan asam sulfat, menciptakan efek rumah kaca yang tak terkendali, menjadikan permukaannya terpanas di tata surya sekitar 465 ° C.  Venus berputar sangat lambat dan berlawanan arah dengan kebanyakan planet, yang berarti harinya lebih panjang dari tahunnya.",
    images: [
      "https://images-assets.nasa.gov/image/PIA00271/PIA00271~large.jpg?w=1920&h=1920&fit=clip&crop=faces%2Cfocalpoint",
      "https://science.nasa.gov/wp-content/uploads/2023/05/1-venus-corona-1041-jpg.webp?w=2048&format=webp",
      "https://science.nasa.gov/wp-content/uploads/2023/05/venus-from-parker-solar-probe.webp?w=2048&format=webp",
    ],
  ),
  PlanetInfo(
      id: 3,
      name: 'Bumi',
      iconImage: 'images/earth.png',
      description:
          "Bumi, planet asal kita, adalah yang ketiga dari Matahari dan satu-satunya planet yang diketahui mendukung kehidupan. Ini memiliki atmosfer seimbang terutama terdiri dari nitrogen dan oksigen, yang menopang berbagai ekosistem. Permukaan bumi adalah 71% air, yang memainkan peran penting dalam mengatur iklimnya. Geologi planet yang beragam termasuk gunung, lembah, dan gunung berapi, dan sistem cuacanya yang dinamis berkontribusi pada keanekaragaman hayati yang kaya.",
      images: [
        "https://cdn.dribbble.com/users/59947/screenshots/17108611/muti_2_4x.jpg",
        "https://eoimages.gsfc.nasa.gov/images/imagerecords/153000/153027/chincoteague_oli_2019153_th.jpg",
        "https://as2.ftcdn.net/v2/jpg/05/58/15/49/1000_F_558154904_0ZTmtNsv37Anz8If5JoyMEcPSdeIhCwN.jpg",
      ]),
  PlanetInfo(
    id: 4,
    name: 'Mars',
    iconImage: 'images/mars.png',
    description:
        "Mars, planet keempat dari Matahari, dikenal sebagai Planet Merah karena oksida besi (karat) yang menutupi permukaannya. Mars menjadi tuan rumah gunung berapi tertinggi di tata surya, Olympus Mons, dan ngarai terdalam, Valles Marineris. Meskipun memiliki atmosfer tipis yang sebagian besar terdiri dari karbon dioksida, bukti menunjukkan bahwa Mars pernah memiliki air cair di permukaannya, menimbulkan pertanyaan tentang kehidupan masa lalu.",
    images: [
      "https://cdn.mos.cms.futurecdn.net/EjjVxJ8DCca2MVc8qBGtXK.jpg",
      "https://idsb.tmgrup.com.tr/ly/uploads/images/2021/12/30/171195.jpg",
      "https://science.nasa.gov/wp-content/uploads/2024/04/mars-perseverance-zl0-0204-0685052630-206ecm-n0071716zcam08228-110085j.jpg?w=2048&format=webp"
    ],
  ),
  PlanetInfo(
    id: 5,
    name: 'Jupiter',
    iconImage: 'images/jupiter.png',
    description:
        "Jupiter, planet kelima dari Matahari, adalah yang terbesar di tata surya kita dan raksasa gas yang sebagian besar terdiri dari hidrogen dan helium. Fitur yang paling menonjol adalah Great Red Spot, badai besar yang lebih besar dari Bumi yang telah berlangsung selama berabad-abad. Jupiter memiliki setidaknya 79 bulan, termasuk Ganymede, bulan terbesar di tata surya, yang bahkan lebih besar dari planet Merkurius. Medan magnet Jupiter yang kuat dan banyak bulan membuatnya menjadi tata surya mini sendiri.",
    images: [
      "https://images-assets.nasa.gov/image/PIA24971/PIA24971~large.jpg?w=1184&h=1920&fit=clip&crop=faces%2Cfocalpoint",
      "https://i.insider.com/609aa91a342837001822cbd6?width=800&format=jpeg&auto=webp",
      "https://images-assets.nasa.gov/image/PIA03155/PIA03155~orig.jpg?w=752&h=417&fit=clip&crop=faces%2Cfocalpoint"
    ],    
  ),
  PlanetInfo(
    id: 6,
    name: 'Saturnus',
    iconImage: 'images/saturn.png',
    description:
        "Saturnus, planet keenam, terkenal dengan sistem cincinnya yang menakjubkan, terdiri dari partikel es dan batuan. Seperti Jupiter, Saturnus adalah raksasa gas yang terutama terbuat dari hidrogen dan helium. Ini memiliki setidaknya 83 bulan, dengan Titan menjadi yang terbesar. Titan unik karena atmosfernya yang tebal dan danau metana cair dan etana, menjadikannya subjek yang sangat menarik bagi para ilmuwan yang mempelajari kimia prebiotik.",
    images: [
      "https://images-assets.nasa.gov/image/PIA03152/PIA03152~orig.jpg?w=849&h=900&fit=clip&crop=faces%2Cfocalpoint",
      "https://cdn.mos.cms.futurecdn.net/p2UBxuRToGRziJFua2EYeF-1200-80.jpg",
      "https://images-assets.nasa.gov/image/PIA07872/PIA07872~large.jpg?w=1920&h=1440&fit=clip&crop=faces%2Cfocalpoint"
    ],
  ),
  PlanetInfo(
    id: 7,
    name: 'Uranus',
    iconImage: 'images/uranus.png',
    description:
        "Uranus, planet ketujuh dari Matahari, diklasifikasikan sebagai raksasa es karena komposisi es air, amonia, dan metana. Ini memiliki warna biru-hijau karena metana di atmosfernya. Uranus unik karena berputar miring, dengan porosnya hampir sejajar dengan orbitnya, mungkin karena tabrakan kolosal di awal sejarahnya. Kemiringan yang tidak biasa ini menyebabkan variasi musiman yang ekstrem. Uranus memiliki setidaknya 27 bulan dan cincin samar.",
    images: [
      "https://www.earth.com/_next/image/?url=https%3A%2F%2Fcff2.earth.com%2Fuploads%2F2024%2F04%2F14082129%2Furanus_more-gassy_less-icy_moon_1-960x640.jpg&w=3840&q=75",
      "https://www.esa.int/var/esa/storage/images/esa_multimedia/images/2023/12/uranus_close-up_view_nircam/25369220-1-eng-GB/Uranus_close-up_view_NIRCam_pillars.jpg",
      "https://images-assets.nasa.gov/image/0301099/0301099~large.jpg?w=1920&h=1772&fit=clip&crop=faces%2Cfocalpoint"
    ],
  ),
  PlanetInfo(
    id: 8,
    name: 'Neptunus',
    iconImage: 'images/neptune.png',
    description:
        "Neptunus, planet kedelapan dan terjauh yang diketahui dari Matahari, mirip dengan Uranus dalam komposisi dan penampilan. Ini adalah raksasa es dengan warna biru tua, juga karena metana atmosfer. Neptunus dikenal karena angin kencang dan badainya, termasuk Great Dark Spot, badai yang sebanding dengan Great Red Spot Jupiter. Neptunus memiliki setidaknya 14 bulan, dengan Triton menjadi yang terbesar. Triton aktif secara geologis, dengan geyser nitrogen, dan mengorbit planet ini dalam arah yang berlawanan dari rotasi Neptunus, menunjukkan bahwa ia mungkin telah ditangkap dari Sabuk Kuiper.",
    images: [
      "https://images-assets.nasa.gov/image/PIA02219/PIA02219~orig.jpg?w=970&h=921&fit=clip&crop=faces%2Cfocalpoint",
      "https://starwalk.space/gallery/images/neptune-at-opposition-2021/1140x641.jpg",
      "https://cdn.mos.cms.futurecdn.net/PezBzd9Fehsq9XWgWMauVV-1200-80.jpg",
    ],
  ),
];
