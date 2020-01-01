class UserProfileImage {
  String small;
  String medium;
  String large;

  UserProfileImage({
    this.small,
    this.medium,
    this.large,
  });

  factory UserProfileImage.fromMap(data) {
    if (data == null) {
      return null;
    }

    return UserProfileImage(
      small: data['small'],
      medium: data['medium'],
      large: data['large'],
    );
  }
}
