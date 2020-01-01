library unsplash_api_dart;

import 'package:flutter/foundation.dart';

const String API_URL = "https://api.unsplash.com";
const String API_VERSION = "v1";
const String OAUTH_AUTHORIZE_URL = "https://unsplash.com/oauth/authorize";
const String OAUTH_TOKEN_URL = "https://unsplash.com/oauth/token";

/// An Unsplash Client
class Unsplash {
  Unsplash({
    @required this.accessKey,
    @required this.secret,
    this.apiUrl = API_URL,
    this.apiVersion = API_VERSION,
    this.callbackUrl,
    this.bearerToken,
    this.headers = const {},
    this.timeout = 0,
  });

  final String apiUrl;
  final String apiVersion;
  final String accessKey;
  final String secret;
  final String callbackUrl;
  final String bearerToken;
  final Map<String, dynamic> headers;
  final int timeout;

  // TODO:
  // auth: Object;
  // currentUser: Object;
  // users: Object;
  // photos: Object;
  // collections: Object;
  // search: Object;
  // stats: Object;
  // toJson: Function;

  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
}
