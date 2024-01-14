import 'package:flutter/material.dart';
import 'package:shot_roulette/app/core/config.dart';
import 'package:shot_roulette/features/roll_shot/main_menu_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: Config.debugShowCheckedModeBanner,
      title: 'Flutter Demo',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: const Locale('en'),
      theme: ThemeData.dark(
          // primarySwatch: Colors.blue,
          ),
      home: const MainMenuPage(),
    );
  }
}
