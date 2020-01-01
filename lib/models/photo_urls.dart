class PhotoUrls {
  String raw;
  String full;
  String regular;
  String small;
  String thumb;

  PhotoUrls({
    this.raw,
    this.full,
    this.regular,
    this.small,
    this.thumb,
  });

  factory PhotoUrls.fromMap(Map data) {
    if (data == null) {
      return null;
    }

    return PhotoUrls(
      raw: data['raw'],
      full: data['full'],
      regular: data['regular'],
      small: data['small'],
      thumb: data['thumb'],
    );
  }
}
