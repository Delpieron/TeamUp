import 'package:flutter/material.dart';
import 'package:library_pkg/library_pkg.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                  onPressed: () => print(''),
                  child: const Text('Zaloguj'),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 64, horizontal: 32),
                child: Divider(height: 10, thickness: 2, color: Colors.white),
              ),
              CustomButton(
                onPressed: () => print(''),
                child: const Text('Zarejestruj się'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
