class PhotoLocationPosition {
  String latitude;
  String longitude;

  PhotoLocationPosition({this.latitude, this.longitude});

  factory PhotoLocationPosition.fromMap(data) {
    if (data == null) {
      return null;
    }

    return PhotoLocationPosition(
      latitude: data['latitude'],
      longitude: data['longitude'],
    );
  }
}
