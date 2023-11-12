import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:library_pkg/library_pkg.dart';
import 'package:team_up_desktop/enums/first_start_page_enum.dart';
import 'package:team_up_desktop/first_start/first_start_bloc.dart';
import 'package:team_up_desktop/first_start/registration_page/registration_bloc.dart';
import 'package:team_up_desktop/main_view/main_view.dart';

class SecondBoardingPage extends StatelessWidget {
  const SecondBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.blue,
      child: Column(
        children: [
          const Text(
            'Rejestracja',
            style: TextStyle(color: Colors.white, fontSize: 64),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 16),
            child: Text(
              'Wybierz swoje ulubione gry!',
              style: TextStyle(color: Colors.white, fontSize: 31),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 128),
              child: BlocBuilder<RegistrationBloc, RegistrationBlocState>(
                builder: (context, state) {
                  return state.type.map(
                    loading: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    loaded: () => GridView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 80),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 30,
                        crossAxisSpacing: 30,
                      ),
                      itemCount: state.availableGames.length,
                      itemBuilder: (context, index) {
                        final item = state.availableGames[index];
                        return MaterialButton(
                          onPressed: () => context.read<RegistrationBloc>().add(
                                RegistrationBlocEvent.onGameItemSelected(item.id),
                              ),
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/${item.name.replaceAll(':', '')}_logo.png'),
                                fit: BoxFit.fill,
                                opacity: state.selectedGamesIds.contains(item.id) ? 1 : .6,
                              ),
                            ),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                item.name,
                                style: const TextStyle(color: Colors.white, fontSize: 16),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  onPressed: () => context.read<FirstStartBloc>().add(
                        const FirstStartEvent.onNewPageRequest(FirstStartPageEnum.loginPage),
                      ),
                  backgroundColor: const Color(0xFF3ACAAB),
                  child: const Text('Zaloguj się'),
                ),
                const SizedBox(width: 100),
                CustomButton(
                  onPressed: () async {
                    if (context.mounted) {
                      await context.read<RegistrationBloc>().onRegisterRequest().then((result) async {
                        if (!result) {
                          onRegistrationFailed(context);
                          return;
                        }
                        final token = await context.read<FirstStartBloc>().getCurrentUserToken();
                        if (context.mounted) {
                          await Navigator.push(context, MaterialPageRoute(builder: (_) => MainView(token: token)));
                        }
                      });
                    }
                  },
                  backgroundColor: const Color(0xFF3ACAAB),
                  child: const Text('Zarejestruj!'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void onRegistrationFailed(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Rejestracja nie powiodła się, spróbuj ponownie'),
      ),
    );
    context.read<FirstStartBloc>().add(const FirstStartEvent.onNewPageRequest(FirstStartPageEnum.registrationPage));
  }
}
