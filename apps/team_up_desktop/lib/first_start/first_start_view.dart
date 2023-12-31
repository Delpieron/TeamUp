import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:library_pkg/library_pkg.dart';
import 'package:team_up_desktop/enums/first_start_page_enum.dart';
import 'package:team_up_desktop/first_start/first_start_bloc.dart';
import 'package:team_up_desktop/first_start/login_page/login_page.dart';
import 'package:team_up_desktop/first_start/registration_page/first_boarding_page.dart';
import 'package:team_up_desktop/first_start/registration_page/registration_bloc.dart';
import 'package:team_up_desktop/first_start/registration_page/registration_page.dart';
import 'package:team_up_desktop/first_start/registration_page/second_boarding_page.dart';

class FirstStartView extends StatelessWidget {
  const FirstStartView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => FirstStartBloc(),
      child: BlocProvider(
        create: (_) => RegistrationBloc()..add(const RegistrationBlocEvent.onGamesLoadRequest()),
        child: Scaffold(
          body: Row(
            children: [
              Expanded(
                child: ColoredBox(
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: SvgPicture.asset(
                          'assets/images/team_up_logo.svg',
                          semanticsLabel: 'TeamUp logo',
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 32, bottom: 64, left: 64, right: 32),
                        child: Text(
                          'Twórz zgrane drużyny, zdobywaj zwycięstwa: Eksploruj potęgę multiplayera na naszej platformie!',
                          style: TextStyle(fontSize: 31, fontFamily: 'Baloo', overflow: TextOverflow.fade),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: SvgPicture.asset(
                          'assets/images/start_view_image.svg',
                          semanticsLabel: 'TeamUp logo',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: BlocBuilder<FirstStartBloc, FirstStartState>(
                  builder: (context, state) {
                    return Stack(
                      children: [
                        _CurrentPage(state.currentPage),
                        if (state.type == StateType.loading) const LoadingView(),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CurrentPage extends StatelessWidget {
  const _CurrentPage(this.currentPage);

  final FirstStartPageEnum currentPage;

  @override
  Widget build(BuildContext context) {
    switch (currentPage) {
      case FirstStartPageEnum.loginPage:
        return const LoginPage();
      case FirstStartPageEnum.registrationPage:
        return const RegistrationPage();
      case FirstStartPageEnum.onBoardingFirstPage:
        return const FirstBoardingPage();
      case FirstStartPageEnum.onBoardingSecondPage:
        return const SecondBoardingPage();
      default:
        return const SizedBox.shrink();
    }
  }
}
