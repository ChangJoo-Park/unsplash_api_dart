class PhotoExif {
  String make;
  String model;
  String exposureTime;
  String aperture;
  String focalLength;
  int iso;

  PhotoExif({
    this.make,
    this.model,
    this.exposureTime,
    this.aperture,
    this.focalLength,
    this.iso,
  });

  factory PhotoExif.fromMap(Map data) {
    if (data == null) {
      return null;
    }

    return PhotoExif(
      make: data['make'],
      model: data['model'],
      exposureTime: data['exposure_time'],
      aperture: data['aperture'],
      focalLength: data['focal_length'],
      iso: data['iso'],
    );
  }
}
