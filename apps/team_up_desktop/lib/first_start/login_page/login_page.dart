import 'package:async_builder/init_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:library_pkg/library_pkg.dart';
import 'package:team_up_desktop/enums/first_start_page_enum.dart';
import 'package:team_up_desktop/first_start/first_start_bloc.dart';
import 'package:team_up_desktop/first_start/login_page/login_bloc.dart';

import '../../main_view/main_view.dart';

final _getIt = GetIt.instance;

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return InitBuilder<LoginBloc>(
      getter: _registerBloc,
      builder: (context, bloc) {
        return InitBuilder<Map<String, TextEditingController>>(
          getter: _getTextControllers,
          builder: (context, controllers) {
            return ColoredBox(
              color: const Color(0xff2e6ff2),
              child: SizedBox(
                height: MediaQuery.sizeOf(context).height,
                child: SingleChildScrollView(
                  child: Form(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Zaloguj się',
                          style: TextStyle(color: Colors.white, fontSize: 64),
                        ),
                        CustomTextFormField(controller: controllers!['email']!, label: 'Email'),
                        CustomTextFormField(
                          controller: controllers['password']!,
                          label: 'Hasło',
                          obscureText: true,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 32),
                          child: CustomButton(
                            onPressed: () => _onLoginRequest(
                              bloc!,
                              context,
                              controllers['email']!.text,
                              controllers['password']!.text,
                            ),
                            child: const Text('Zaloguj'),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 64, horizontal: 32),
                          child: Divider(height: 10, thickness: 2, color: Colors.white),
                        ),
                        CustomButton(
                          onPressed: () => context.read<FirstStartBloc>().add(
                                const FirstStartEvent.onNewPageRequest(FirstStartPageEnum.registrationPage),
                              ),
                          child: const Text('Zarejestruj się'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }

  Future<void> _onLoginRequest(LoginBloc bloc, BuildContext context, String email, String password) async {
    if (!bloc.isInternetConnected()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Brak polączenia z internetem'),
          duration: Duration(seconds: 2),
        ),
      );
      return;
    }
    context.read<FirstStartBloc>().add(const FirstStartEvent.onStartLoading(true));
    await bloc.onLoginRequest(email, password).then((result) {
      if (!result) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Logowanie nie powiodło się, spróbuj ponownie'),
          ),
        );
        context.read<FirstStartBloc>().add(const FirstStartEvent.onStartLoading(false));
        return;
      }
      context.read<FirstStartBloc>().add(const FirstStartEvent.onStartLoading(false));
      Navigator.push(context, MaterialPageRoute(builder: (_) => const MainView()));
      return;
    });
  }
}

LoginBloc _registerBloc() {
  if (!_getIt.isRegistered<LoginBloc>()) {
    _getIt.registerLazySingleton(LoginBloc.new);
  }
  return _getIt.get<LoginBloc>();
}

Map<String, TextEditingController> _getTextControllers() => {
      'email': TextEditingController(),
      'password': TextEditingController(),
    };
