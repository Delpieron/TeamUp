import 'package:async_builder/init_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:library_pkg/library_pkg.dart';
import 'package:team_up_desktop/enums/first_start_page_enum.dart';
import 'package:team_up_desktop/first_start/first_start_bloc.dart';
import 'package:team_up_desktop/first_start/registration_page/registration_bloc.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return InitBuilder<Map<String, TextEditingController>>(
      getter: _getTextControllers,
      builder: (context, controllers) {
        return Form(
          child: ColoredBox(
            color: const Color(0xff2e6ff2),
            child: SizedBox(
              height: MediaQuery.sizeOf(context).height,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Rejestracja',
                      style: TextStyle(color: Colors.white, fontSize: 64),
                    ),
                    CustomTextFormField(controller: controllers!['userName']!, label: 'Nazwa użytkownika'),
                    CustomTextFormField(controller: controllers['email']!, label: 'Email'),
                    CustomTextFormField(
                      controller: controllers['password']!,
                      label: 'Hasło',
                      obscureText: true,
                    ),
                    CustomTextFormField(
                      controller: controllers['repeatPassword']!,
                      label: 'Powtórz hasło',
                      obscureText: true,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 32),
                      child: CustomButton(
                        onPressed: () {
                          context.read<RegistrationBloc>().rememberFirstPageData(
                                controllers['email']!.text,
                                controllers['userName']!.text,
                                controllers['password']!.text,
                              );
                          context.read<FirstStartBloc>().add(
                                const FirstStartEvent.onNewPageRequest(FirstStartPageEnum.onBoardingFirstPage),
                              );
                        },
                        child: const Text('Dalej'),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 32, horizontal: 32),
                      child: Divider(height: 10, thickness: 2, color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: CustomButton(
                        onPressed: () => context.read<FirstStartBloc>().add(
                              const FirstStartEvent.onNewPageRequest(FirstStartPageEnum.loginPage),
                            ),
                        child: const Text('Zaloguj się'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

Map<String, TextEditingController> _getTextControllers() => {
      'email': TextEditingController(),
      'userName': TextEditingController(),
      'password': TextEditingController(),
      'repeatPassword': TextEditingController(),
    };
