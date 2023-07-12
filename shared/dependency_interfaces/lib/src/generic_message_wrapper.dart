import 'package:flutter/foundation.dart';

@immutable
class MessageWrapper<T, S> {
  const MessageWrapper(this.serviceCommand, this.serviceName, this.command, this.arg);

  final String serviceCommand;
  final String serviceName;
  final String command;
  final S arg;

  WrappedResult<T> call(T result) => WrappedResult<T>._(serviceCommand, result);

  WrappedEmptyResult wrapEmpty() => WrappedEmptyResult._(serviceCommand);
}

@immutable
class WrappedResult<T> {
  const WrappedResult._(this.commandId, this._result);

  final String commandId;
  final T _result;

  R unwrap<R>() => _result as R;

  R? tryUnwrap<R>() => _result is R ? _result as R : null;
}

@immutable
class WrappedEmptyResult extends WrappedResult<void> {
  const WrappedEmptyResult._(String commandId) : super._(commandId, null);
}
