import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:dart_openai/dart_openai.dart';

import 'package:shot_roulette/app/app.dart';
import 'package:shot_roulette/app/injection_container.dart';
import 'package:shot_roulette/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  OpenAI.apiKey = dotenv.env['OPEN_AI_API_KEY'] ?? '';
  configureDependencies();
  runApp(const MyApp());
}
