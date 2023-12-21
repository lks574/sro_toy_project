import 'package:flutter/material.dart';

class InstaSearchScreen extends StatelessWidget {
  const InstaSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            InstaSearchTextBar(),
            InstaSearchGrid(),
          ],
        ),
      ),
    );
  }
}

class InstaSearchTextBar extends StatelessWidget {
  const InstaSearchTextBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 60,
        child: TextField(
          cursorColor: Colors.black,
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.search),
            hintText: '검색',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.grey.shade200, width: 1),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.grey.shade200, width: 1),
            ),
            contentPadding: const EdgeInsets.all(0),
            filled: true,
            fillColor: Colors.grey.shade200,
          ),
        ),
      ),
    );
  }
}

final instaGridItems = List.generate(30, (index) => Colors.green.shade300);

class InstaSearchGrid extends StatelessWidget {
  const InstaSearchGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.zero,
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      crossAxisCount: 3,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: instaGridItems
          .map(
            (color) => Container(
              color: color,
            ),
          )
          .toList(),
    );
  }
}
