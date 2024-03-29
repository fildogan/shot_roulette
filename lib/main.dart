import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shot_roulette/app/app.dart';
import 'package:shot_roulette/app/injection_container.dart';
import 'package:shot_roulette/firebase_options.dart';

void main() async {
  configureDependencies();

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}
