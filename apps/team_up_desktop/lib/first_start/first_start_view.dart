import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:team_up_desktop/first_start/login_page/login_page.dart';

class FirstStartView extends StatelessWidget {
  const FirstStartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    padding: EdgeInsets.only(top: 32,bottom: 64, left: 64, right: 32),
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
          const LoginPage(),
        ],
      ),
    );
  }
}
