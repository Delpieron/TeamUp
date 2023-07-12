import 'package:flutter/material.dart';

enum StateType {
  loading,
  loaded,
  error;

  T map<T extends Widget>({
    required T Function() loading,
    required T Function() loaded,
    T Function()? error,
  }) {
    switch (this) {
      case StateType.loading:
        return loading();
      case StateType.loaded:
        return loaded();
      case StateType.error:
        return error != null ? error() : const SizedBox.shrink() as T;
    }
  }

  bool get isLoading => this == StateType.loading;

  bool get isLoaded => this == StateType.loaded;

  bool get isError => this == StateType.error;
}
