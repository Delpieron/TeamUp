import 'dart:async';
import 'dart:convert';

import 'package:dependency_interfaces/dependency_interfaces.dart' as dep
    show BackgroundCommand, BackgroundWorker, BackgroundWrapper, Logger, RestClient;
import 'package:rest_client_pkg/src/constants/rest_client_commands.dart';
import 'package:rest_client_pkg/src/instances/rest_client_service.dart';
import 'package:rest_client_pkg/src/models/rest_request.dart';
import 'package:rest_client_pkg/src/models/rest_response.dart';

final class RestClientProvider implements dep.RestClient {
  RestClientProvider._(this._backgroundService);

  final dep.BackgroundWrapper _backgroundService;

  static Future<RestClientProvider> createAsync(
    dep.BackgroundWorker backgroundWorker, {
    dep.Logger? logger,
  }) async {
    final backgroundService = dep.BackgroundWrapper(backgroundWorker, dep.BackgroundCommand.restClient);
    await backgroundService.registerService(RestClientService.new);
    final instance = RestClientProvider._(backgroundService);
    logger?.d('Service $instance initialized');
    return instance;
  }

  @override
  Future<RestResponse<T>> get<T>(
    String uri, {
    T Function(dynamic)? fromJson,
    Map<String, String>? headers,
  }) {
    return _backgroundService.runForResult<RestResponse<T>, RestRequest<T>>(
      RestClientCommand.post,
      RestRequest<T>(uri, fromJson: fromJson, headers: headers),
    );
  }

  @override
  Future<RestResponse<T>> post<T>(
    String uri, {
    Object? data,
    T Function(dynamic)? fromJson,
    Map<String, String>? headers,
    Encoding? encoding,
  }) {
    return _backgroundService.runForResult<RestResponse<T>, RestRequest<T>>(
      RestClientCommand.post,
      RestRequest<T>(
        uri,
        data: data,
        fromJson: fromJson,
        headers: headers,
        encoding: encoding,
      ),
    );
  }

  @override
  void put() {
    throw UnimplementedError();
  }

  @override
  Future<RestResponse<T>> delete<T>(
    String uri, {
    Object? data,
    T Function(dynamic)? fromJson,
    Map<String, String>? headers,
    Encoding? encoding,
  }) {
    return _backgroundService.runForResult<RestResponse<T>, RestRequest<T>>(
      RestClientCommand.delete,
      RestRequest<T>(
        uri,
        data: data,
        fromJson: fromJson,
        headers: headers,
        encoding: encoding,
      ),
    );
  }

  @override
  Future<void> dispose() async {
    await _backgroundService.runVoid<void>(RestClientCommand.dispose);
  }
}
