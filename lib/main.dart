import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/screens/home/home.dart';
// main.dart

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _light = false;

  final ThemeData _darkTheme = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.black,
      titleTextStyle: GoogleFonts.montserrat().copyWith(color: Colors.white),
      foregroundColor: Colors.white,
    ),
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: const Color.fromARGB(255, 0, 0, 0),
      secondary: Colors.white,
    ),
    textTheme: TextTheme(bodyLarge: GoogleFonts.montserrat()),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  final ThemeData _lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      titleTextStyle: GoogleFonts.montserrat().copyWith(color: Colors.black),
      foregroundColor: Colors.black,
    ),
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: Colors.white,
      secondary: const Color.fromARGB(255, 0, 0, 0),
    ),
    textTheme: TextTheme(bodyLarge: GoogleFonts.openSans()),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Explore',
      debugShowCheckedModeBanner: false,
      theme: _light ? _lightTheme : _darkTheme,
      home: HomePage(
        callback: () {
          setState(
            () {
              _light = !_light;
            },
          );
        },
      ),
    );
  }
}