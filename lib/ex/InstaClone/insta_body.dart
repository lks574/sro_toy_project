import 'package:flutter/material.dart';
import 'package:sro_toy_project/ex/InstaClone/screen/insta_home_screen.dart';
import 'package:sro_toy_project/ex/InstaClone/screen/insta_search_scrren.dart';

class InstaBody extends StatelessWidget {
  final int index;

  const InstaBody({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    if (index == 0) {
      return const InstaHomeScreen();
    }
    return const InstaSearchScreen();
  }
}
