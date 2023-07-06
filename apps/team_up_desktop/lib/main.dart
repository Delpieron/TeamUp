import 'package:flutter/material.dart';
import 'package:team_up_desktop/first_start/first_start_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TeamUp',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'baloo',
      ),
      debugShowCheckedModeBanner: false,
      home: const FirstStartView(),
    );
  }
}
