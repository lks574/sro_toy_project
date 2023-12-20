import 'package:flutter/material.dart';
import 'package:sro_toy_project/screen/home_screen.dart';
import 'package:sro_toy_project/screen/search_screen.dart';

class InstaBody extends StatelessWidget {
  final int index;

  const InstaBody({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    if (index == 0) {
      return const HomeScreen();
    }
    return const SearchScreen();
  }
}
