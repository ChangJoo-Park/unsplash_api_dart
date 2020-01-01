import 'package:flutter_test/flutter_test.dart';
import 'package:unsplash_api_dart/http.dart';
import 'package:unsplash_api_dart/models/photo.dart';
import 'package:unsplash_api_dart/models/search_photo_result.dart';

import 'package:unsplash_api_dart/unsplash_api_dart.dart';

const String accessKey = '';
const String secret = '';

void main() {
  test('Make constructor', () {
    final Unsplash unsplash =
        Unsplash(accessKey: accessKey, secret: secret, timeout: 0);
  });

  test('Get Photos', () async {
    List<Photo> data = await getPhotos(
      clientId: accessKey,
    );
    expect(data.length, 10);
  });

  test('Get One Photo', () async {
    Photo photo = await getPhoto(
      id: 'dQ_b1I6xm3Q',
      clientId: accessKey,
    );
    expect(photo.id, 'dQ_b1I6xm3Q');
  });

  test('Search android wallpaper', () async {
    SearchPhotoResult result = await searchResult(
      clientId: accessKey,
      query: 'android',
      page: 1,
    );
  });
}
