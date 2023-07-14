import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:library_pkg/library_pkg.dart';

class UserMainInfo extends StatelessWidget {
  const UserMainInfo(this.user, {super.key, this.userImageHeight, this.manageUserStateWidget});

  final User? user;
  final double? userImageHeight;
  final Widget? manageUserStateWidget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 64),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/images/avatarman.svg',
                semanticsLabel: 'user icon',
                fit: BoxFit.cover,
                height: userImageHeight,
              ),
              Text(
                user?.username ?? '',
                style: const TextStyle(fontSize: 28),
              ),
              Text(
                user?.email ?? '',
                style: const TextStyle(fontSize: 28),
              ),
              if (user != null) UserAvailibityHours(startHour: user!.startHour, endHour: user!.endHour),
            ],
          ),
          if (manageUserStateWidget != null) manageUserStateWidget!,
        ],
      ),
    );
  }
}
