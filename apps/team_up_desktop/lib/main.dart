import 'dart:ui';

import 'package:background_worker_pkg/background_worker_pkg.dart';
import 'package:connection_checker_pkg/connection_checker_pkg.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:local_storage_pkg/local_storage_pkg.dart';
import 'package:rest_client_pkg/rest_client_pkg.dart';
import 'package:team_up_desktop/first_start/first_start_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  _registerDependencies();
  await GetIt.I.isReady<BackgroundWorkerProvider>();
  await GetIt.I.isReady<LocalStorageProvider>();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TeamUp',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'baloo',
      ),
      debugShowCheckedModeBanner: false,
      home: const FirstStartView(),
    );
  }
}

void _registerDependencies() {
  final getIt = GetIt.instance;
  getIt
    ..registerSingletonAsync<BackgroundWorkerProvider>(
      () => BackgroundWorkerProvider.createAsync(RootIsolateToken.instance!),
      dispose: (bloc) => bloc.dispose(),
    )
    ..registerLazySingleton<ConnectionCheckerProvider>(
      ConnectionCheckerProvider.new,
      dispose: (bloc) => bloc.dispose(),
    )
    ..registerSingletonAsync<LocalStorageProvider>(
      () => LocalStorageProvider.createAsync(getIt.get<BackgroundWorkerProvider>()),
      dependsOn: [BackgroundWorkerProvider],
    )
    ..registerSingletonAsync<RestClientProvider>(
      () => RestClientProvider.createAsync(getIt.get<BackgroundWorkerProvider>()),
      dependsOn: [BackgroundWorkerProvider],
      dispose: (bloc) => bloc.dispose(),
    );
}
