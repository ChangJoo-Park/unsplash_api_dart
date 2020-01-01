import 'package:unsplash_api_dart/models/photo.dart';

class SearchPhotoResult {
  int total;
  int totalPages;
  List<Photo> results;

  SearchPhotoResult({
    this.total,
    this.totalPages,
    this.results,
  });

  factory SearchPhotoResult.fromMap(Map data) {
    if (data == null) {
      return SearchPhotoResult(results: [], total: 0, totalPages: 0);
    }

    return SearchPhotoResult(
      total: data['total'],
      totalPages: data['total_pages'],
      results: List.from(data['results'])
          .map((photo) => Photo.fromMap(photo))
          .toList(),
    );
  }
}
