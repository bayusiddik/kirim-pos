import 'activity_model.dart';

class Destination {
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;

  Destination({
    required this.imageUrl,
    required this.city,
    required this.country,
    required this.description,
    required this.activities,
  });
}

List<Destination> destinations = [
  Destination(
    imageUrl: 'assets/images/jakarta_h.jpg', 
    city: 'Jakarta', 
    country: 'DKI Jakarta', 
    description: 'Kirim dari rumah hingga sampai tujuan di Jakarta', 
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/medan_h.jpg', 
    city: 'Medan', 
    country: 'Sumatera Utara', 
    description: 'Kirim dari rumah hingga sampai tujuan di Medan', 
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/aceh_h.jpg', 
    city: 'Aceh', 
    country: 'Nangroe Aceh Darussalam', 
    description: 'Kirim dari rumah hingga sampai tujuan di Aceh', 
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/padang_h.jpg', 
    city: 'Padang', 
    country: 'Sumatera Barat', 
    description: 'Kirim dari rumah hingga sampai tujuan di Padang', 
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/riau_h.jpg', 
    city: 'Pekan Baru', 
    country: 'Riau', 
    description: 'Kirim dari rumah hingga sampai tujuan di Pekan Baru', 
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/tangerang_h.jpg', 
    city: 'Tangerang', 
    country: 'Banten', 
    description: 'Kirim dari rumah hingga sampai tujuan di Tangerang', 
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/bandung_h.jpg', 
    city: 'Bandung', 
    country: 'Jawa Barat', 
    description: 'Kirim dari rumah hingga sampai tujuan di Jawa Barat', 
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/solo_h.jpg', 
    city: 'Solo', 
    country: 'Jawa Tengah', 
    description: 'Kirim dari rumah hingga sampai tujuan di Solo', 
    activities: activities,
  ),
];