import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:library_pkg/library_pkg.dart';
import 'package:local_storage_pkg/local_storage_pkg.dart';
import 'package:team_up_desktop/constants.dart';
import 'package:team_up_desktop/enums/first_start_page_enum.dart';

part 'first_start_bloc.freezed.dart';
part 'first_start_event.dart';
part 'first_start_state.dart';

class FirstStartBloc extends Bloc<FirstStartEvent, FirstStartState> {
  FirstStartBloc() : super(FirstStartState.initial()) {
    on<_OnNewPageRequest>(_loadNewPage);
    on<_OnStartLoading>(_startLoading);
  }

  final LocalStorageProvider _localStorage = GetIt.I.get<LocalStorageProvider>()..init();

  Future<void> _loadNewPage(_OnNewPageRequest event, Emitter<FirstStartState> emit) async {
    emit(
      state.copyWith(currentPage: event.firstStartPageEnum, type: StateType.loaded),
    );
  }

  Future<String?> getCurrentUserToken() async => _localStorage.loadData(Constants.authTokenKey, (items) => items as String);

  Future<void> _startLoading(_OnStartLoading event, Emitter<FirstStartState> emit) async {
    emit(
      state.copyWith(type: event.startLoading ? StateType.loading : StateType.loaded),
    );
  }
}
