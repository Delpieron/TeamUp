import 'dart:async';
import 'dart:convert';

import 'package:dependency_interfaces/dependency_interfaces.dart' as dep
    show MessageWrapper, RestClient, Service, WrappedResult;
import 'package:http/http.dart';
import 'package:rest_client_pkg/rest_client_pkg.dart';
import 'package:rest_client_pkg/src/constants/rest_client_commands.dart';
import 'package:rest_client_pkg/src/models/rest_request.dart';

final class RestClientService extends dep.Service implements dep.RestClient {
  RestClientService(super.services);

  final Client _client = Client();

  @override
  Future<RestResponse<T>> get<T>(
    String uri, {
    T Function(dynamic)? fromJson,
    Map<String, String>? headers,
    RestRequest<T>? params, // Generic Type loss workaround
  }) async {
    final response = await _client
        .get(
      Uri.parse(uri),
      headers: headers ?? {'Content-Type': 'application/json'},
    )
        .onError((error, stackTrace) {
      logger?.w('RestClientService get', error: error, stackTrace: stackTrace);
      return Response(error.toString(), 1024);
    });
    return params!.convertResponse(response);
  }

  @override
  Future<RestResponse<T>> post<T>(
    String uri, {
    Object? data,
    T Function(dynamic)? fromJson,
    Map<String, String>? headers,
    Encoding? encoding,
    RestRequest<T>? params, // Generic Type loss workaround
  }) async {
    final json = data == null ? null : jsonEncode(data);
    final response = await _client
        .post(
      Uri.parse(uri),
      headers: headers ?? {'Content-Type': 'application/json'},
      body: json,
      encoding: encoding,
    )
        .onError((error, stackTrace) {
      logger?.w('RestClientService post', error: error, stackTrace: stackTrace);
      return Response(error.toString(), 1024);
    });
    return params!.convertResponse(response);
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
  }) async {
    final json = data == null ? null : jsonEncode(data);
    final response = await _client
        .delete(
      Uri.parse(uri),
      headers: headers ?? {'Content-Type': 'application/json'},
      body: json,
      encoding: encoding,
    )
        .onError((error, stackTrace) {
      logger?.w('RestClientService post', stackTrace: stackTrace);
      return Response(error.toString(), 1024);
    });
    final statusCode = RestStatusCodes.fromNumber(response.statusCode);
    if (statusCode == RestStatusCodes.ok && fromJson != null) {
      return RestResponse<T>(statusCode: statusCode, result: fromJson(jsonDecode(response.body)));
    }
    return RestResponse<T>(statusCode: statusCode);
  }

  @override
  void dispose() {
    _client.close();
    super.dispose();
  }

  @override
  Future<void> handleCommand(
    dep.MessageWrapper<Object?, Object?> messageWrapper,
    void Function(dep.WrappedResult<Object?> p1) callback,
  ) async {
    switch (messageWrapper.command) {
      case RestClientCommand.dispose:
        dispose();
        break;
      case RestClientCommand.get:
        final params = messageWrapper.arg! as RestRequest;
        final result = await get(params.uri, fromJson: params.fromJson, headers: params.headers, params: params);
        callback(messageWrapper(result));
        return;
      case RestClientCommand.post:
        final params = messageWrapper.arg! as RestRequest;
        final result = await post(
          params.uri,
          data: params.data,
          fromJson: params.fromJson,
          headers: params.headers,
          encoding: params.encoding,
          params: params,
        );
        callback(messageWrapper(result));
        return;
      case RestClientCommand.put:
        put();
        break;
      case RestClientCommand.delete:
        final params = messageWrapper.arg! as RestRequest;
        final result = await delete(
          params.uri,
          data: params.data,
          fromJson: params.fromJson,
          headers: params.headers,
          encoding: params.encoding,
        );
        callback(messageWrapper(result));
        return;
    }
    callback(messageWrapper.wrapEmpty());
  }
}
