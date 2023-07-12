import 'dart:async';
import 'package:dependency_interfaces/dependency_interfaces.dart' as dep
    show BackgroundCommand, BackgroundWorker, BackgroundWrapper;
import 'package:local_storage_pkg/src/constants/local_storage_commands.dart';
import 'package:local_storage_pkg/src/instances/local_storage_service.dart';
import 'package:local_storage_pkg/src/models/local_storage_parameters.dart';

class LocalStorageProvider {
  LocalStorageProvider(dep.BackgroundWorker backgroundService)
      : _backgroundService = dep.BackgroundWrapper(backgroundService, dep.BackgroundCommand.localStorage);

  final dep.BackgroundWrapper _backgroundService;

  Future<void> init() async {
    await _backgroundService.registerService(LocalStorageService.new);
  }

  Future<T?> loadData<T>(String key, T Function(dynamic p1) fromJson) {
    return _backgroundService.runForResult<T?, LocalStorageParameters<T>>(
      LocalStorageCommand.loadData,
      LocalStorageParameters<T>(key: key, fromJson: fromJson),
    );
  }

  Future<bool> storeData(String key, Object data) {
    return _backgroundService.runForResult<bool, LocalStorageParameters<void>>(
      LocalStorageCommand.storeData,
      LocalStorageParameters<void>(key: key, data: data),
    );
  }

  Future<bool> deleteData(String key) {
    return _backgroundService.runForResult<bool, LocalStorageParameters<void>>(
      LocalStorageCommand.deleteData,
      LocalStorageParameters<void>(key: key),
    );
  }
}
