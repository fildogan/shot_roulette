import 'package:flutter/material.dart';
import 'package:shot_roulette/features/roll_shot/main_menu_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(
          // primarySwatch: Colors.blue,
          ),
      home: const MainMenuPage(),
    );
  }
}
