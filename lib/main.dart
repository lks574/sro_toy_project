import 'package:flutter/material.dart';
import 'package:sro_toy_project/ex/InstaClone/instar_home.dart';

void main() {
  runApp(const InstaCloneApp());
}

class InstaCloneApp extends StatelessWidget {
  const InstaCloneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: const ColorScheme.light(
              primary: Colors.white, secondary: Colors.black),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: Colors.black,
          ),
          useMaterial3: true),
      home: const InstaHome(),
    );
  }
}
