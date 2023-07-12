import 'dart:typed_data';

import 'package:dependency_interfaces/src/base/disposable.dart';

abstract class MetrahitHandler implements Disposable {
  void initSocket(Stream<Uint8List> inputStream, void Function(Uint8List bytes) outputWrite);

  void initStored();

  void initSequences();
}
