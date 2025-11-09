import 'package:flutter/material.dart';
import 'package:module_12_assignment/pages/calculator_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  ThemeMode _themeMode = ThemeMode.dark;

  void _setThemeMode(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      debugShowCheckedModeBanner: false,
      themeMode: _themeMode,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.lightBlue,
          brightness: Brightness.light,
        ),
        scaffoldBackgroundColor: Colors.white,
      ),
      darkTheme: ThemeData(
       colorScheme: ColorScheme.fromSeed(
         seedColor: Colors.lightBlue,
         brightness: Brightness.dark,
       ),
        scaffoldBackgroundColor: Colors.black
      ),
      home: CalculatorApp( themeMode: _themeMode, onThemeChanged: (value) =>_setThemeMode(value)),
    );
  }
}
