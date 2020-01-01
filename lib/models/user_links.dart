class UserLinks {
  String self;
  String html;
  String photos;
  String likes;
  String portfolio;
  String following;
  String followers;

  UserLinks({
    this.self,
    this.html,
    this.photos,
    this.likes,
    this.portfolio,
    this.following,
    this.followers,
  });

  factory UserLinks.fromMap(Map data) {
    if (data == null) {
      return null;
    }

    return UserLinks(
      self: data['self'],
      html: data['html'],
      photos: data['photos'],
      likes: data['likes'],
      portfolio: data['portfolio'],
      followers: data['followers'],
      following: data['following'],
    );
  }
}
