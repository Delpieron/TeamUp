import 'package:async_builder/init_builder.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:library_pkg/library_pkg.dart';

import 'package:team_up_desktop/enums/first_start_page_enum.dart';
import 'package:team_up_desktop/first_start/first_start_bloc.dart';
import 'package:team_up_desktop/first_start/registration_page/registration_bloc.dart';

class FirstBoardingPage extends StatelessWidget {
  const FirstBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return InitBuilder<Map<String, TextEditingController>>(
      getter: _getTextControllers,
      builder: (context, controllers) {
        return Form(
          child: ColoredBox(
            color: const Color(0xff2e6ff2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Rejestracja',
                  style: TextStyle(color: Colors.white, fontSize: 64),
                ),
                CustomTextFormField(
                  controller: controllers!['age']!,
                  label: 'Wiek',
                  inputFormatter: [FilteringTextInputFormatter.digitsOnly],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Text('Czas aktywności:', style: TextStyle(fontSize: 28, color: Colors.white)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width / 6,
                      child: DateTimePicker(
                        type: DateTimePickerType.time,
                        controller: controllers['activeStartTime'],
                        timeLabelText: 'Od godziny',
                        decoration: getDefaultInputDecoration('Od godziny'),
                      ),
                    ),
                    const Text(
                      '-',
                      style: TextStyle(color: Colors.white, fontSize: 50),
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width / 6,
                      child: DateTimePicker(
                        type: DateTimePickerType.time,
                        controller: controllers['activeEndTime'],
                        timeLabelText: 'Do godziny',
                        decoration: getDefaultInputDecoration('Do godziny'),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 32),
                  child: CustomButton(
                    onPressed: () {
                      context.read<RegistrationBloc>().rememberSecondPageData(
                            int.parse(controllers['age']!.text),
                            int.parse(controllers['activeStartTime']!.text.split(':').first),
                            int.parse(controllers['activeEndTime']!.text.split(':').first),
                          );
                      context.read<FirstStartBloc>().add(
                            const FirstStartEvent.onNewPageRequest(FirstStartPageEnum.onBoardingSecondPage),
                          );
                    },
                    backgroundColor: const Color(0xFF3ACAAB),
                    child: const Text('Dalej'),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 64, horizontal: 32),
                  child: Divider(height: 10, thickness: 2, color: Colors.white),
                ),
                CustomButton(
                  onPressed: () => context.read<FirstStartBloc>().add(
                        const FirstStartEvent.onNewPageRequest(FirstStartPageEnum.loginPage),
                      ),
                  backgroundColor: const Color(0xFF3ACAAB),
                  child: const Text('Zaloguj się'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

Map<String, TextEditingController> _getTextControllers() => {
      'age': TextEditingController(),
      'activeStartTime': TextEditingController(),
      'activeEndTime': TextEditingController(),
    };
