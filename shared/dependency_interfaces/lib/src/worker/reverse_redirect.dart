import 'package:dependency_interfaces/src/worker/message_wrapper.dart';

final class ReverseRedirect {
  const ReverseRedirect._(this._messageWrapper, this._callback);

  final MessageWrapper<Object?, Object?> _messageWrapper;
  final void Function(WrappedResult<Object?>) _callback;

  void redirectStream<T>(Stream<T> stream) {
    final subscription = stream.listen((event) => _callback(_messageWrapper(event)));
    subscription.onDone(() {
      _callback(_messageWrapper.wrapEmpty());
      subscription.cancel();
    });
  }
}

extension RedirectResponse<T, S> on MessageWrapper<T, S> {
  ReverseRedirect bindRedirect(void Function(WrappedResult<Object?>) callback) => ReverseRedirect._(this, callback);
}
