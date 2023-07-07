import 'package:async_builder/init_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:library_pkg/library_pkg.dart';
import 'package:team_up_desktop/first_start/first_start_bloc.dart';
import 'package:team_up_desktop/first_start/login_page/login_bloc.dart';

final _getIt = GetIt.instance;

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return InitBuilder<LoginBloc>(
      getter: _registerBloc,
      disposer: (_) => ScaffoldMessenger.of(context).clearSnackBars(),
      builder: (context, bloc) {
        return Form(
          child: Expanded(
            flex: 2,
            child: ColoredBox(
              color: const Color(0xff2e6ff2),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Zaloguj się',
                    style: TextStyle(color: Colors.white, fontSize: 64),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(18),
                    child: CustomTextFormField(label: 'Nazwa użytkownika'),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(18),
                    child: CustomTextFormField(label: 'Hasło'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 32),
                    child: CustomButton(
                      onPressed: () => _onLoginRequest(bloc!, context),
                      child: const Text('Zaloguj'),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 64, horizontal: 32),
                    child: Divider(height: 10, thickness: 2, color: Colors.white),
                  ),
                  CustomButton(
                    onPressed: () => context.read<FirstStartBloc>().add(const FirstStartEvent.onNewPageRequest()),
                    child: const Text('Zarejestruj się'),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Future<void> _onLoginRequest(LoginBloc bloc, BuildContext context) async {
    if (!bloc.isInternetConnected()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Brak polączenia z internetem'),
          duration: Duration(seconds: 2),
        ),
      );
      return;
    }
    final token = await bloc.onLoginRequest();
    print(token.token);
  }
}

LoginBloc _registerBloc() {
  if (!_getIt.isRegistered<LoginBloc>()) {
    _getIt.registerLazySingleton(LoginBloc.new);
  }
  return _getIt.get<LoginBloc>();
}
