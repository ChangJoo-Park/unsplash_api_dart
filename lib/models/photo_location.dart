import 'package:unsplash_api_dart/models/photo_location_position.dart';

class PhotoLocation {
  String title;
  String name;
  String city;
  String country;
  PhotoLocationPosition position;

  PhotoLocation({
    this.title,
    this.name,
    this.city,
    this.country,
    this.position,
  });

  factory PhotoLocation.fromMap(data) {
    if (data == null) {
      return null;
    }
    return PhotoLocation(
      title: data['title'],
      name: data['name'],
      city: data['city'],
      country: data['country'],
      position: PhotoLocationPosition.fromMap(data['position']),
    );
  }
}
