// This widget is the root of your application.
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shot_roulette/app/core/config.dart';
import 'package:shot_roulette/app/cubit/root_cubit.dart';
import 'package:shot_roulette/app/injection_container.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:shot_roulette/app/auth_gate.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<RootCubit>()..start(),
      child: BlocBuilder<RootCubit, RootState>(
        builder: (context, rootState) {
          return MaterialApp(
            debugShowCheckedModeBanner: Config.debugShowCheckedModeBanner,
            title: 'Cocktail Lounge',
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: const [
              Locale('en'), // English
              Locale('es'), // Spanish
              Locale('de'), // German
              Locale('fr'), // French
              Locale('it'), // Italian
            ],
            locale: rootState.locale,
            theme:
                // ThemeData.light(useMaterial3: true),
                ThemeData(
                    colorScheme: ColorScheme.fromSeed(
                        seedColor: Colors.orange, brightness: Brightness.dark)),
            darkTheme: ThemeData(
                colorScheme: ColorScheme.fromSeed(
                    seedColor: Colors.brown, brightness: Brightness.dark)),
            themeMode: rootState.currentTheme,
            home: AuthGate(rootState: rootState),
          );
        },
      ),
    );
  }
}
