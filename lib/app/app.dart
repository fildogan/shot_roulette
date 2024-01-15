// This widget is the root of your application.
import 'package:flutter/material.dart';
import 'package:shot_roulette/app/core/config.dart';
import 'package:shot_roulette/features/roll_shot/main_menu_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: Config.debugShowCheckedModeBanner,
      title: 'Flutter Demo',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: const Locale('pl'),
      theme: ThemeData.dark(
          // primarySwatch: Colors.blue,
          ),
      home: const MainMenuPage(),
    );
  }
}
