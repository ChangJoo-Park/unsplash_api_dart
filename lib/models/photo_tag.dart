class PhotoTag {
  String type;
  String title;

  PhotoTag({
    this.type,
    this.title,
  });

  factory PhotoTag.fromMap(Map data) {
    if (data == null) {
      return null;
    }

    return PhotoTag(
      type: data['type'],
      title: data['title'],
    );
  }
}
