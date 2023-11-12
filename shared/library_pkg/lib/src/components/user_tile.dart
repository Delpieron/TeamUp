import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:library_pkg/library_pkg.dart';

class UserTile extends StatelessWidget {
  const UserTile({required this.user, required this.onUserTileTap, super.key});

  final User user;
  final void Function() onUserTileTap;

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
                      UserAvailibityHours(startHour: user.startHour, endHour: user.endHour),
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
                        if (index >= user.gamesList.length) {
                          return const SizedBox.shrink();
                        }
                        final item = user.gamesList[index];
                        return Tooltip(
                          message: item.name,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18),
                            child: SizedBox(
                              width: 80,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/${item.name.replaceAll(':', '')}_logo.png'),
                                    fit: BoxFit.fitHeight,
                                  ),
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
                  onPressed: onUserTileTap,
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
