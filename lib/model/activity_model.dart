class Activity {
  String imageUrl;
  String name;
  String type;
  List<String> startTimes;
  int rating;
  int price;

  Activity ({
    required this.imageUrl,
    required this.name,
    required this.type,
    required this.startTimes,
    required this.rating,
    required this.price
  });
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/medan.jpg',
    name: 'Kantor Pos Medan',
    type: 'Kantor Cabang',
    startTimes: ['2 hari', '3 hari'],
    rating: 5,
    price: 15000,
  ),
  Activity(
    imageUrl: 'assets/images/kisaran.jpg',
    name: 'Kantor Pos Kisaran',
    type: 'Kantor Cabang',
    startTimes: ['3 hari', '4 hari'],
    rating: 5,
    price: 30000,
  ),
  Activity(
    imageUrl: 'assets/images/tanjung.jpg',
    name: 'Kantor Pos Tj. Balai',
    type: 'Kantor Cabang',
    startTimes: ['4 hari', '5 hari'],
    rating: 4,
    price: 35000,
  ),
  Activity(
    imageUrl: 'assets/images/airbatu.jpg',
    name: 'Kantor Pos Air Batu',
    type: 'Kantor Cabang',
    startTimes: ['2 hari', '3 hari'],
    rating: 3,
    price: 25000,
  ),
  Activity(
    imageUrl: 'assets/images/airjoman.jpg',
    name: 'Kantor Pos Air Joman',
    type: 'Kantor Cabang',
    startTimes: ['3 hari', '3 hari'],
    rating: 4,
    price: 30000,
  ),
  Activity(
    imageUrl: 'assets/images/seibejangkar.jpg',
    name: 'Kantor Pos Sei Bejangkar',
    type: 'Kantor Cabang',
    startTimes: ['2 hari', '3 hari'],
    rating: 5,
    price: 25000,
  ),
];