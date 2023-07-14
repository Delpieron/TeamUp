import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:library_pkg/library_pkg.dart';

import 'package:team_up_desktop/main_view/main_view_bloc.dart';

import 'package:team_up_desktop/models/user/user.dart';

class MainView extends StatelessWidget {
  const MainView({required this.token, super.key});

  final String? token;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MainViewBloc(token: token)
        ..add(const MainViewEvent.onLoadSuggestedFriends())
        ..add(const MainViewEvent.onLoadCurrentUser()),
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Stack(
            fit: StackFit.passthrough,
            alignment: AlignmentDirectional.center,
            children: [
              SvgPicture.asset(
                'assets/images/app_bar_logo.svg',
                semanticsLabel: 'app bar logo',
                fit: BoxFit.fill,
              ),
              Center(
                child: SvgPicture.asset(
                  'assets/images/team_up_logo.svg',
                  semanticsLabel: 'TeamUp logo',
                  fit: BoxFit.cover,
                  height: 50,
                ),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              color: Colors.blue,
              height: 60,
              child: const SingleChildScrollView(
                scrollDirection: Axis.horizontal,primary: true,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _NavigationBarItem('Profil'),
                    _NavigationBarItem('Znajomi'),
                    _NavigationBarItem('Szukaj graczy'),
                    _NavigationBarItem('Ustawienia'),
                    _NavigationBarItem('Kontakt', isLastItem: true),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height - 140,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const _UserProfilePart(),
                  const VerticalDivider(thickness: 2, indent: 32, color: Colors.black),
                  Expanded(
                    child: BlocBuilder<MainViewBloc, MainViewState>(
                      buildWhen: (previous, current) =>
                          previous.suggestedUsers?.length != current.suggestedUsers?.length,
                      builder: (context, state) {
                        if (state.type == StateType.loading || state.suggestedUsers == null) {
                          return const Center(child: CircularProgressIndicator());
                        }
                        return ListView.builder(
                          itemCount: state.suggestedUsers!.length,
                          itemBuilder: (context, index) {
                            return _UserTile(user: state.suggestedUsers![index]);
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _UserTile extends StatelessWidget {
  const _UserTile({required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32, left: 32, right: 32),
      child: SizedBox(
        width: 500,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: SvgPicture.asset(
                    'assets/images/avatarman.svg',
                    semanticsLabel: 'TeamUp logo',
                    fit: BoxFit.fitHeight,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        child: Text(
                          user.username,
                          style: const TextStyle(fontSize: 22),
                        ),
                      ),
                      _UserAvailibityHours(startHour: user.startHour, endHour: user.endHour),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: SizedBox(
                    width: 400,
                    height: 90,
                    child: ListView.builder(
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 18),
                          child: SizedBox(
                            width: 80,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  // image: AssetImage('assets/images/${item.name.replaceAll(':', '')}_logo.png'),
                                  image: AssetImage('assets/images/wiedzmin3_logo.png'),
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                CustomButton(
                  onPressed: () {},
                  backgroundColor: const Color(0xFF2E6FF2),
                  child: SvgPicture.asset(
                    'assets/images/double_arrow_right.svg',
                    semanticsLabel: 'double arrow right',
                    fit: BoxFit.fitHeight,
                    color: Colors.white,
                    width: 40,
                  ),
                ),
              ],
            ),
            const Divider(height: 10, thickness: 2, color: Color(0xFFd7d9d8)),
          ],
        ),
      ),
    );
  }
}

class _UserAvailibityHours extends StatelessWidget {
  const _UserAvailibityHours({required this.startHour, required this.endHour});

  final int startHour;
  final int endHour;

  @override
  Widget build(BuildContext context) {
    final userShouldBeActive = DateTime.now().hour >= startHour && DateTime.now().hour < endHour;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.access_time_filled_rounded,
          color: userShouldBeActive ? Colors.blue : Colors.grey,
        ),
        Text(
          '$startHour - $endHour',
          style: TextStyle(
            fontSize: 22,
            color: userShouldBeActive ? Colors.blue : Colors.grey,
          ),
        ),
      ],
    );
  }
}

class _NavigationBarItem extends StatelessWidget {
  const _NavigationBarItem(this.text, {this.isLastItem = false});

  final String text;
  final bool isLastItem;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Text(text, style: const TextStyle(fontSize: 28, color: Colors.white)),
        ),
        if (!isLastItem) const VerticalDivider(endIndent: 16, indent: 16, thickness: 1.5, color: Colors.white),
      ],
    );
  }
}

class _UserProfilePart extends StatelessWidget {
  const _UserProfilePart();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainViewBloc, MainViewState>(
      buildWhen: (previous, current) => previous.currentUser != current.currentUser,
      builder: (context, state) {
        final user = state.currentUser;
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 64),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/images/avatarman.svg',
                semanticsLabel: 'user icon',
                fit: BoxFit.cover,
              ),
              Text(
                user?.username ?? '',
                style: const TextStyle(fontSize: 28),
              ),
              Text(
                user?.email ?? '',
                style: const TextStyle(fontSize: 28),
              ),
              if (user != null) _UserAvailibityHours(startHour: user.startHour, endHour: user.endHour),
            ],
          ),
        );
      },
    );
  }
}
