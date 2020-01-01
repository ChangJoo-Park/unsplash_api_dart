import 'package:unsplash_api_dart/models/user_links.dart';
import 'package:unsplash_api_dart/models/user_profile_image.dart';

class User {
  String id;
  String updatedAt;
  String username;
  String name;
  String firstName;
  String lastName;
  String twitterUsername;
  String portfolioUrl;
  String bio;
  String location;
  UserLinks links;
  UserProfileImage profileImage;
  String instagramUsername;
  int totalCollections;
  int totalLikes;
  int totalPhotos;
  bool acceptedTos;

  User({
    this.id,
    this.updatedAt,
    this.username,
    this.name,
    this.firstName,
    this.lastName,
    this.twitterUsername,
    this.portfolioUrl,
    this.bio,
    this.location,
    this.links,
    this.profileImage,
    this.instagramUsername,
    this.totalCollections,
    this.totalLikes,
    this.totalPhotos,
    this.acceptedTos,
  });

  factory User.fromMap(Map data) {
    if (data == null) {
      return null;
    }

    return User(
      id: data['id'],
      updatedAt: data['updated_at'],
      username: data['username'],
      name: data['name'],
      firstName: data['first_name'],
      lastName: data['last_name'],
      twitterUsername: data['twitter_username'],
      portfolioUrl: data['portfolio_url'],
      bio: data['bio'],
      location: data['location'],
      links: UserLinks.fromMap(data['links']),
      profileImage: UserProfileImage.fromMap(data['profile_image']),
      instagramUsername: data['instagram_username'],
      totalCollections: data['total_collections'],
      totalLikes: data['total_likes'],
      totalPhotos: data['total_photos'],
      acceptedTos: data['accepted_tos'],
    );
  }
}
