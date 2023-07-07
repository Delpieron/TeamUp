import 'package:async_builder/init_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:library_pkg/library_pkg.dart';
import 'package:team_up_desktop/first_start/first_start_bloc.dart';
import 'package:team_up_desktop/first_start/registration_page/registration_bloc.dart';

final _getIt = GetIt.instance;

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return InitBuilder<RegistrationBloc>(
      getter: _registerBloc,
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
                    'Rejestracja',
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
                  const Padding(
                    padding: EdgeInsets.all(18),
                    child: CustomTextFormField(label: 'Powtórz hasło'),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(18),
                    child: CustomTextFormField(label: 'Email'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 32),
                    child: CustomButton(
                      onPressed: () => bloc!.onRegisterRequest(),
                      child: const Text('Zarejestruj'),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 64, horizontal: 32),
                    child: Divider(height: 10, thickness: 2, color: Colors.white),
                  ),
                  CustomButton(
                    onPressed: () => context.read<FirstStartBloc>().add(const FirstStartEvent.onNewPageRequest()),
                    child: const Text('Zaloguj się'),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

RegistrationBloc _registerBloc() {
  if (!_getIt.isRegistered<RegistrationBloc>()) {
    _getIt.registerLazySingleton(RegistrationBloc.new);
  }
  return _getIt.get<RegistrationBloc>();
}
