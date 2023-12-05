class Hotel {
  String imageUrl;
  String name;
  String address;
  List<String> desc;
  int price;
  int rating;

  Hotel ({
    required this.imageUrl,
    required this.name,
    required this.address,
    required this.desc,
    required this.price,
    required this.rating,
  });
}

final List<Hotel> hotels = [
  // Hotel(
  //   imageUrl: 'assets/images/kisaran.jpg', 
  //   name: 'Kantor Pos Kisaran', 
  //   address: 'JL. Pahlawan No. 2', 
  //   price: 21200,
  // ),
  // Hotel(
  //   imageUrl: 'assets/images/tanjung.jpg', 
  //   name: 'Kantor Pos Tanjung Balai', 
  //   address: 'JL. Jenderal Sudirman No. 11', 
  //   price: 21311,
  // ),
  // Hotel(
  //   imageUrl: 'assets/images/airbatu.jpg', 
  //   name: 'Kantor Pos Air Batu', 
  //   address: 'JL. Lintas Sumatra No.147', 
  //   price: 21272,
  // ),
  // Hotel(
  //   imageUrl: 'assets/images/airjoman.jpg', 
  //   name: 'Kantor Pos Air Joman', 
  //   address: 'Binjai Serbangan', 
  //   price: 21263,
  // ),
  // Hotel(
  //   imageUrl: 'assets/images/seibejangkar.jpg', 
  //   name: 'Kantor Pos Sei Bejangkar', 
  //   address: 'JL. Stasiun No. 68', 
  //   price: 21252,
  // ),
  Hotel(
    imageUrl: 'assets/images/jakarta.jpg', 
    name: 'Kantor Pos Jakarta Pusat', 
    address: 'JL. Lap. Banteng Utara No.1',
    desc: ['Kantor pos ini melayani pengiriman barang, dokumen, Express Mail Service (EMS) dan paket dalam negeri dan pengiriman paket luar negeri melalui pos indonesia international.', 'Informasi lebih lanjut dapat diperoleh melalui kontak call center atau customer service PT. Pos Indonesia.'], 
    price: 10710,
    rating: 104,
  ),
  Hotel(
    imageUrl: 'assets/images/jakbar.jpg', 
    name: 'Kantor Pos Jakarta Barat', 
    address: 'JL. Raya Daan Mogot No.20', 
    desc: ['Kantor pos ini terletak di daerah Jakarta Barat. Kantor ini melayani pengiriman barang, dokumen, Express Mail Service (EMS) dan paket dalam negeri dan pengiriman paket luar negeri melalui pos indonesia international.','Informasi lebih lanjut dapat diperoleh melalui kontak call center atau customer service PT. Pos Indonesia.'], 
    price: 11460,
    rating: 87,
  ),
  Hotel(
    imageUrl: 'assets/images/cikini.jpg', 
    name: 'Kantor Pos Cikini', 
    address: 'JL. Cikini Raya No.2',
    desc:['Kantor pos ini terletak di daerah Cikini. Kantor ini melayani pengiriman barang, dokumen, Express Mail Service (EMS) dan paket dalam negeri dan pengiriman paket luar negeri melalui pos indonesia international.','Informasi lebih lanjut dapat diperoleh melalui kontak call center atau customer service PT. Pos Indonesia.'],  
    price: 10330,
    rating: 93,
  ),
  Hotel(
    imageUrl: 'assets/images/hankam.jpg', 
    name: 'Kantor Pos Hankam', 
    address: 'JL. Medan Merdeka Barat No.13',
    desc: ['Kantor pos ini terletak di daerah Jakarta Hankam. Kantor ini melayani pengiriman barang, dokumen, Express Mail Service (EMS) dan paket dalam negeri dan pengiriman paket luar negeri melalui pos indonesia international.','Informasi lebih lanjut dapat diperoleh melalui kontak call center atau customer service PT. Pos Indonesia.'], 
    price: 10110,
    rating: 78,
  ),
  Hotel(
    imageUrl: 'assets/images/jakpemb.jpg', 
    name: 'Kantor Pos Pembangunan', 
    address: 'JL. Pembangunan II No.9', 
    desc: ['Kantor pos ini terletak di daerah Jakarta Pembangunan. Kantor ini melayani pengiriman barang, dokumen, Express Mail Service (EMS) dan paket dalam negeri dan pengiriman paket luar negeri melalui pos indonesia international.','Informasi lebih lanjut dapat diperoleh melalui kontak call center atau customer service PT. Pos Indonesia.'], 
    price: 10130,
    rating: 81,
  ),
  Hotel(
    imageUrl: 'assets/images/jaksel.jpg', 
    name: 'Kantor Pos Jakarta Selatan', 
    address: 'JL. H. R. Rasuna Said', 
    desc: ['Kantor pos ini terletak di daerah Jakarta bagian Selatan. Kantor ini melayani pengiriman barang, dokumen, Express Mail Service (EMS) dan paket dalam negeri dan pengiriman paket luar negeri melalui pos indonesia international.' ,'Informasi lebih lanjut dapat diperoleh melalui kontak call center atau customer service PT. Pos Indonesia.'], 
    price: 12920,
    rating: 95,
  ),
  Hotel(
    imageUrl: 'assets/images/tebet.jpg', 
    name: 'Kantor Pos Tebet', 
    address: 'JL. Tebet Barat Dalam Raya No.2',
    desc: ['Kantor pos ini terletak di daerah Tebet. Kantor ini melayani pengiriman barang, dokumen, Express Mail Service (EMS) dan paket dalam negeri dan pengiriman paket luar negeri melalui pos indonesia international. Informasi lebih lanjut dapat diperoleh melalui kontak call center atau customer service PT. Pos Indonesia.','Informasi lebih lanjut dapat diperoleh melalui kontak call center atau customer service PT. Pos Indonesia.'] , 
    price: 12810,
    rating: 65,
  ),
];