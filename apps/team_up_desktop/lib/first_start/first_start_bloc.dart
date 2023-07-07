import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:library_pkg/library_pkg.dart';

part 'first_start_event.dart';

part 'first_start_state.dart';

part 'first_start_bloc.freezed.dart';

class FirstStartBloc extends Bloc<FirstStartEvent, FirstStartState> {
  FirstStartBloc() : super(FirstStartState.initial()) {
    on<_OnNewPageRequest>(_loadNewPage);
  }

  Future<void> _loadNewPage(_OnNewPageRequest event, Emitter<FirstStartState> emit) async {
    emit(
      state.copyWith(isLoginView: !state.isLoginView),
    );
  }
}
