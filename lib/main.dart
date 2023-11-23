import 'package:flutter/material.dart';
import 'package:maghalito/screens/splash.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('fa'), // Persion
      ],
      theme: ThemeData(
        primarySwatch: Colors.grey,
        textTheme: TextTheme(bodyMedium: TextStyle(color: Colors.black87)),
        fontFamily: 'iranyekan',
      ),
      home: const Splash(),
    );
  }
}
