import 'dart:convert';

import 'package:flutter/foundation.dart';

@immutable
class RestParameters<T> {
  const RestParameters(this.uri, {this.data, this.fromJson, this.headers, this.encoding});

  final String uri;
  final Object? data;
  final T Function(dynamic)? fromJson;
  final Map<String, String>? headers;
  final Encoding? encoding;
}
