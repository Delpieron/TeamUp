import 'dart:async';
import 'dart:convert';

import 'package:dependency_interfaces/dependency_interfaces.dart' as dep
    show BackgroundCommand, BackgroundWorker, BackgroundWrapper, Logger, RestClient;
import 'package:rest_client_pkg/src/constants/rest_client_commands.dart';
import 'package:rest_client_pkg/src/instances/rest_client_service.dart';
import 'package:rest_client_pkg/src/models/rest_parameters.dart';
import 'package:rest_client_pkg/src/models/rest_response.dart';

class RestClientProvider implements dep.RestClient {
  RestClientProvider(dep.BackgroundWorker backgroundService)
      : _backgroundService = dep.BackgroundWrapper(backgroundService, dep.BackgroundCommand.restClient);

  final dep.BackgroundWrapper _backgroundService;

  Future<void> init() async {
    await _backgroundService.registerService(RestClientService.new);
  }

  @override
  Future<RestResponse<T>> get<T>(
    String uri, {
    T Function(dynamic)? fromJson,
    Map<String, String>? headers,
  }) {
    return _backgroundService.runForResult<RestResponse<T>, RestParameters<T>>(
      RestClientCommand.get,
      RestParameters<T>(uri, fromJson: fromJson, headers: headers),
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
    return _backgroundService.runForResult<RestResponse<T>, RestParameters<T>>(
      RestClientCommand.post,
      RestParameters<T>(
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
    // TODO(KD): implement put
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
    return _backgroundService.runForResult<RestResponse<T>, RestParameters<T>>(
      RestClientCommand.delete,
      RestParameters<T>(
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
