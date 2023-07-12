import 'package:flutter/foundation.dart' show TargetPlatform, defaultTargetPlatform, kIsWeb;

class PlatformIdentifier {
  PlatformIdentifier._();

  static RuntimePlatform get currentPlatform => _platform;

  static final bool isWeb = RuntimePlatform.web == _platform;

  static final bool isWindows = RuntimePlatform.windows == _platform;

  static final bool isMacOS = RuntimePlatform.macOS == _platform;

  static final bool isLinux = RuntimePlatform.linux == _platform;

  static final bool isAndroid = RuntimePlatform.android == _platform;

  static final bool isIOS = RuntimePlatform.iOS == _platform;

  static final bool isFuchsia = RuntimePlatform.fuchsia == _platform;

  static final RuntimePlatform _platform = () {
    if (kIsWeb) {
      return RuntimePlatform.web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.windows:
        return RuntimePlatform.windows;
      case TargetPlatform.macOS:
        return RuntimePlatform.macOS;
      case TargetPlatform.linux:
        return RuntimePlatform.linux;
      case TargetPlatform.android:
        return RuntimePlatform.android;
      case TargetPlatform.iOS:
        return RuntimePlatform.iOS;
      case TargetPlatform.fuchsia:
        return RuntimePlatform.fuchsia;
    }
  }.call();
}

enum RuntimePlatform {
  android,
  fuchsia,
  iOS,
  linux,
  macOS,
  windows,
  web,
}
