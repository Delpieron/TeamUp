import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:library_pkg/library_pkg.dart';

import 'package:team_up_desktop/user_details_view/user_details_view.dart';

class FriendsListView extends StatelessWidget {
  const FriendsListView(this.currentUser, {super.key});

  final User currentUser;

  @override
  Widget build(BuildContext context) {
    final friendsList = currentUser.friendsList!;
    return Scaffold(
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
      body: ListView.builder(
        itemCount: friendsList.length,
        itemBuilder: (context, index) {
          return UserTile(
            user: friendsList[index],
            onUserTileTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => UserDetailsView(
                    user: friendsList[index],
                    myUser: currentUser,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
