import 'package:unsplash_api_dart/models/photo_sponsor_link.dart';
import 'package:unsplash_api_dart/models/photo_tag.dart';

class PhotoSponsor {
  int id;
  String title;
  String description;
  DateTime publishedAt;
  DateTime updatedAt;
  bool cureated;
  bool featured;
  int totalPhotos;
  bool private;
  String shareKey;
  List<PhotoTag> tags;
  PhotoSponsorLink links;
}
