class PhotoLink {
  String self;
  String html;
  String download;
  String downloadLocation;

  PhotoLink({
    this.self,
    this.html,
    this.download,
    this.downloadLocation,
  });

  factory PhotoLink.fromMap(data) {
    if (data == null) {
      return null;
    }
    return PhotoLink(
      self: data['self'],
      html: data['html'],
      download: data['download'],
      downloadLocation: data['download_location'],
    );
  }
}
