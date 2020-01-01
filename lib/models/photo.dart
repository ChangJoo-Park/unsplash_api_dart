import 'package:unsplash_api_dart/models/photo_exif.dart';
import 'package:unsplash_api_dart/models/photo_link.dart';
import 'package:unsplash_api_dart/models/photo_location.dart';
import 'package:unsplash_api_dart/models/photo_tag.dart';
import 'package:unsplash_api_dart/models/photo_urls.dart';
import 'package:unsplash_api_dart/models/user.dart';

class Photo {
  String id;
  String createdAt;
  String updatedAt;
  String promotedAt;
  int width;
  int height;
  String color;
  String description;
  String alternativeDescription;
  PhotoUrls urls;
  PhotoLink links;
  List categories;
  int likes;
  bool likedByUser;
  List currentUserCollections;
  User user;
  PhotoExif exif;
  PhotoLocation location;
  List<PhotoTag> tags;
  Map sponsorship;
  Map relatedCollections;
  int views;
  int downloads;

  Photo({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.promotedAt,
    this.width,
    this.height,
    this.color,
    this.description,
    this.alternativeDescription,
    this.urls,
    this.links,
    this.categories,
    this.likes,
    this.likedByUser,
    this.currentUserCollections,
    this.user,
    this.exif,
    this.location,
    this.tags,
    this.sponsorship,
    this.relatedCollections,
    this.views,
    this.downloads,
  });

  factory Photo.fromMap(Map data) {
    return Photo(
      id: data['id'],
      createdAt: data['created_at'],
      updatedAt: data['updated_at'],
      promotedAt: data['promoted_at'],
      width: data['width'],
      height: data['height'],
      color: data['color'],
      description: data['description'],
      alternativeDescription: data['alternative_description'],
      urls: PhotoUrls.fromMap(data['urls']),
      links: PhotoLink.fromMap(data['links']),
      categories: data['categories'],
      likes: data['likes'],
      likedByUser: data['liked_by_user'],
      currentUserCollections: data['current_user_collections'],
      user: User.fromMap(data['user']),
      exif: PhotoExif.fromMap(data['exif']),
      location: PhotoLocation.fromMap(data['location']),
      tags: data['tags'].runtimeType == 'List'
          ? List.from(data['tags']).map((tag) => PhotoTag.fromMap(tag)).toList()
          : null,
      sponsorship: data['sponsorship'],
      relatedCollections: data['related_collections'],
      views: data['views'],
      downloads: data['downloads'],
    );
  }
}
