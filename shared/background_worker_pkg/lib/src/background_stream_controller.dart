import 'dart:async';

typedef AddSubscription<T> = FutureOr<void> Function(BackgroundStreamSubscription<T> subs);
typedef RemoveSubscription<T> = FutureOr<void> Function();

typedef OnData<T> = void Function(T data);
typedef Callback = void Function();

class BackgroundStreamController<T> {
  BackgroundStreamController({this.onCancel});

  final FutureOr<void> Function()? onCancel;

  BackgroundStreamSubscription<T>? _subscription;
  bool _isBusy = false;

  bool get isClosed => _subscription == null;

  void add(T event) {
    assert(!isClosed, 'You cannot add event to closed Stream');
    _isBusy = true;
    // ignore: cancel_subscriptions
    final item = _subscription!;
    if (!item.isPaused) {
      item._data?.call(event);
    }
    _isBusy = false;
  }

  void close() {
    if (isClosed) {
      return;
    }
    _isBusy = true;
    // ignore: cancel_subscriptions
    final sub = _subscription!;
    if (!sub.isPaused) {
      sub._onDone?.call();
    }
    _isBusy = false;
    _subscription = null;
  }

  FutureOr<void> _addSubscription(BackgroundStreamSubscription<T> subs) async {
    if (!_isBusy) {
      _subscription = subs;
    } else {
      await Future<void>.delayed(Duration.zero);
      _subscription = subs;
    }
  }

  FutureOr<void> _removeSubscription() async {
    if (!_isBusy) {
      _subscription = null;
    } else {
      await Future<void>.delayed(Duration.zero);
      _subscription = null;
    }
  }

  Stream<T> get stream => BackgroundStreamTransformation<T>(_addSubscription, _removeSubscription);
}

class BackgroundStreamTransformation<T> extends Stream<T> {
  BackgroundStreamTransformation(this._addSubscription, this._removeSubscription);

  final AddSubscription<T> _addSubscription;
  final RemoveSubscription<T> _removeSubscription;

  @override
  BackgroundStreamSubscription<T> listen(
    void Function(T event)? onData, {
    Function? onError,
    void Function()? onDone,
    bool? cancelOnError,
  }) {
    final subs = BackgroundStreamSubscription<T>(_removeSubscription)
      ..onData(onData)
      ..onError(onError)
      ..onDone(onDone);
    _addSubscription(subs);
    return subs;
  }
}

class BackgroundStreamSubscription<T> implements StreamSubscription<T> {
  BackgroundStreamSubscription(
    this._removeSubscription, {
    this.onPause,
    this.onResume,
    this.onCancel,
  });

  final RemoveSubscription<T> _removeSubscription;
  final void Function()? onPause;
  final void Function()? onResume;
  final FutureOr<void> Function()? onCancel;

  bool _isPaused = false;
  OnData<T>? _data;
  Callback? _onDone;

  @override
  Future<E> asFuture<E>([E? futureValue]) => Future<E>.value(futureValue);

  @override
  Future<void> cancel() {
    _removeSubscription();
    onCancel?.call();
    return Future.value();
  }

  @override
  bool get isPaused => _isPaused;

  @override
  void onData(void Function(T data)? handleData) => _data = handleData;

  @override
  void onDone(void Function()? handleDone) => _onDone = handleDone;

  @override
  void onError(Function? handleError) {}

  @override
  void pause([Future<void>? resumeSignal]) {
    _isPaused = true;
    onPause?.call();
  }

  @override
  void resume() {
    _isPaused = false;
    onResume?.call();
  }
}
