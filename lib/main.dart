import 'package:flutter/material.dart';
import 'package:panda/screens/language_selection.dart';
import 'package:panda/screens/location_selection.dart';
import 'package:panda/screens/splash_screen.dart';

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
      debugShowCheckedModeBanner: false,
      home: LocationSelectionScreen(),
      routes: {
        '/languageSelection': (context) => const LanguageSelectionScreen(),
      },
     );
  }
}
