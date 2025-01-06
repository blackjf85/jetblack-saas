import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkMode = true;

  final ThemeData _darkTheme = ThemeData(
    colorScheme: ColorScheme.dark(
      primary: Colors.black,
      surface: Colors.black,
      background: Colors.black,
      onBackground: Colors.white70,
      onSurface: Colors.white70,
    ),
    useMaterial3: true,
  );

  final ThemeData _lightTheme = ThemeData(
    colorScheme: ColorScheme.light(
      primary: Colors.white,
      surface: Colors.white,
      background: Color(0xFFFAFAFA), // Soft white
      onBackground: Colors.black87,
      onSurface: Colors.black87,
    ),
    useMaterial3: true,
  );

  void _toggleTheme() {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JetBlack SaaS',
      theme: _isDarkMode ? _darkTheme : _lightTheme,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('JetBlack SaaS'),
          actions: [
            IconButton(
              icon: Icon(_isDarkMode ? Icons.light_mode : Icons.dark_mode),
              onPressed: _toggleTheme,
            ),
          ],
        ),
        body: const Center(),
      ),
    );
  }
}
