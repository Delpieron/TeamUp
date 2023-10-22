import 'package:flutter/foundation.dart';

@immutable
final class MessageWrapper<T, S> {
  const MessageWrapper(this.commandId, this.serviceName, this.command, this.arg);

  final String commandId;
  final String serviceName;
  final String command;
  final S arg;

  WrappedResult<T> call(T result) => WrappedResult<T>._(commandId, result);

  WrappedEmptyResult wrapEmpty() => WrappedEmptyResult._(commandId);
}

@immutable
final class WrappedResult<T> {
  const WrappedResult._(this.commandId, this._result);

  final String commandId;
  final T _result;

  R unwrap<R>() => _result as R;

  R? tryUnwrap<R>() {
    final result = _result;
    return result is R ? result : null;
  }
}

@immutable
final class WrappedEmptyResult extends WrappedResult<void> {
  const WrappedEmptyResult._(String commandId) : super._(commandId, null);
}
