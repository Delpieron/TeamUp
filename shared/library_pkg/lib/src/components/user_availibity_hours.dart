import 'package:flutter/material.dart';

class UserAvailibityHours extends StatelessWidget {
  const UserAvailibityHours({required this.startHour, required this.endHour, super.key});

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
