import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:library_pkg/library_pkg.dart';
import 'package:team_up_desktop/friends_list_view/friends_list_view.dart';
import 'package:team_up_desktop/main_view/main_view_bloc.dart';
import 'package:team_up_desktop/user_details_view/user_details_view.dart';

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
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                primary: true,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BlocBuilder<MainViewBloc, MainViewState>(
                      builder: (context, state) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => UserDetailsView(
                                  user: state.currentUser!,
                                  myUser: state.currentUser!,
                                ),
                              ),
                            );
                          },
                          child: const _NavigationBarItem('Profil'),
                        );
                      },
                    ),
                    BlocBuilder<MainViewBloc, MainViewState>(
                      builder: (context, state) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => FriendsListView(state.currentUser!),
                              ),
                            );
                          },
                          child: const _NavigationBarItem('Znajomi'),
                        );
                      },
                    ),
                    const _NavigationBarItem('Szukaj graczy'),
                    const _NavigationBarItem('Ustawienia'),
                    const _NavigationBarItem('Kontakt', isLastItem: true),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height - 140,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BlocBuilder<MainViewBloc, MainViewState>(
                    buildWhen: (previous, current) => previous.currentUser != current.currentUser,
                    builder: (context, state) {
                      return UserMainInfo(state.currentUser);
                    },
                  ),
                  const VerticalDivider(thickness: 2, indent: 32, color: Colors.black),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        BlocBuilder<MainViewBloc, MainViewState>(
                          buildWhen: (previous, current) =>
                              previous.selectedValue != current.selectedValue ||
                              previous.availableGames.length != current.availableGames.length,
                          builder: (context, state) {
                            if (state.type == StateType.loading || state.suggestedUsers == null) {
                              return const SizedBox.shrink();
                            }
                            return _FilerDropDown(state.availableGames, state.selectedValue);
                          },
                        ),
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
                                  return UserTile(
                                    user: state.suggestedUsers![index],
                                    onUserTileTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (_) => UserDetailsView(
                                            user: state.suggestedUsers![index],
                                            myUser: state.currentUser!,
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _FilerDropDown extends StatelessWidget {
  const _FilerDropDown(this.games, this.selectedValue);

  final List<Game> games;
  final String selectedValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, right: 32),
      child: CustomDropdownButton<String>(
        value: selectedValue,
        items: games.map<DropdownMenuItem<String>>(
          (Game value) {
            return DropdownMenuItem<String>(
              value: value.name,
              child: Text(
                value.name,
              ),
            );
          },
        ).toList(),
        onChanged: (String? newValue) {
          context.read<MainViewBloc>().add(
                MainViewEvent.onGameChanged(
                  newValue ?? 'Brak',
                  games.firstWhere((element) => element.name == newValue, orElse: () => games.first).id,
                ),
              );
        },
      ),
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
