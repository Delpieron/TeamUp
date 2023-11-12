import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:library_pkg/library_pkg.dart';
import 'package:team_up_desktop/user_details_view/user_details_bloc.dart';

class UserDetailsView extends StatelessWidget {
  const UserDetailsView({required this.user, required this.myUser, super.key});

  final User user;
  final User myUser;

  @override
  Widget build(BuildContext context) {
    final uerFriendStatus = user.id == myUser.id
        ? UserFriendStatus.currentUser
        : myUser.friendsList == null || !myUser.friendsList!.map((e) => e.id).toList(growable: false).contains(user.id)
            ? UserFriendStatus.friendRequestCanBeSend
            : UserFriendStatus.isFriend;
    if (!GetIt.I.isRegistered<UserDetailsBloc>()) {
      GetIt.I.registerSingleton<UserDetailsBloc>(
        UserDetailsBloc(uerFriendStatus)
          ..add(
            const UserDetailsEvent.onUserGameCategoriesLoad(),
          ),
      );
    }
    return WillPopScope(
      onWillPop: () async {
        GetIt.I.unregister<UserDetailsBloc>();
        return true;
      },
      child: BlocProvider(
        create: (_) => UserDetailsBloc(uerFriendStatus)
          ..add(
            const UserDetailsEvent.onUserGameCategoriesLoad(),
          ),
        child: Scaffold(
          appBar: AppBar(
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
              Expanded(
                child: Row(
                  children: [
                    UserMainInfo(
                      user,
                      userImageHeight: MediaQuery.sizeOf(context).height / 5,
                      manageUserStateWidget: BlocBuilder<UserDetailsBloc, UserDetailsState>(
                        buildWhen: (previous, current) =>
                            previous.userFriendActionStatus != current.userFriendActionStatus,
                        builder: (context, state) {
                          final icon = state.userFriendActionStatus == UserFriendStatus.isFriend
                              ? Icons.person_remove_alt_1
                              : Icons.person_add_alt_1;
                          if (state.userFriendActionStatus == UserFriendStatus.currentUser) {
                            return const SizedBox.shrink();
                          }
                          return IconButton(
                            onPressed: () {
                              UserFriendActionStatus action;
                              if (state.userFriendActionStatus == UserFriendStatus.friendRequestCanBeSend) {
                                action = UserFriendActionStatus.sendAddFriendRequest;
                              } else if (state.userFriendActionStatus == UserFriendStatus.isFriend) {
                                action = UserFriendActionStatus.deleteUser;
                              } else {
                                return;
                              }
                              GetIt.I.get<UserDetailsBloc>().add(
                                    UserDetailsEvent.onChangeUserFriendStatus(
                                      action,
                                      user.id,
                                    ),
                                  );
                            },
                            icon: Icon(icon, color: Colors.black, size: 40),
                          );
                        },
                      ),
                    ),
                    const VerticalDivider(thickness: 2, indent: 32, color: Colors.black),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 32, right: 26, left: 26),
                        child: BlocBuilder<UserDetailsBloc, UserDetailsState>(
                          // buildWhen: (previous, current) => previous.gameCategories != current.gameCategories,
                          builder: (context, state) {
                            return GridView.builder(
                              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                mainAxisSpacing: 30,
                                crossAxisSpacing: 30,
                                mainAxisExtent: 80,
                              ),
                              itemCount: state.gameCategories.length,
                              itemBuilder: (context, index) {
                                final item = state.gameCategories[index];
                                return CustomButton(
                                  backgroundColor: Colors.grey,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 6),
                                    child: Text(
                                      item,
                                      style: const TextStyle(fontSize: 22),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Divider(height: 10, thickness: 2, color: Color(0xFFd7d9d8)),
              ),
              Expanded(
                child: user.gamesList.isEmpty
                    ? const Center(
                        child: Text(
                          'Nie wybrano żadnych gier',
                          style: TextStyle(fontSize: 32),
                        ),
                      )
                    : GridView.builder(
                        padding: const EdgeInsets.symmetric(horizontal: 60),
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          mainAxisSpacing: 30,
                          crossAxisSpacing: 30,
                        ),
                        itemCount: user.gamesList.length,
                        itemBuilder: (context, index) {
                          final item = user.gamesList[index];
                          return Column(
                            children: [
                              Image.asset(
                                'assets/images/${item.name.replaceAll(':', '')}_logo.png',
                                fit: BoxFit.fitHeight,
                                height: MediaQuery.sizeOf(context).height / 3.5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 18),
                                child: Text(
                                  item.name,
                                  style: const TextStyle(fontSize: 26),
                                ),
                              ),
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
