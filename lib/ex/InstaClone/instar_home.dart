import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InstaHome extends StatefulWidget {
  const InstaHome({super.key});

  @override
  State<InstaHome> createState() => _InstaHomeState();
}

class _InstaHomeState extends State<InstaHome> {
  late int index;

  @override
  void initState() {
    super.initState();
    index = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: index == 0
          ? AppBar(
              title: Text(
                "Instagram",
                style:
                    GoogleFonts.lobsterTwo(color: Colors.black, fontSize: 32),
              ),
              centerTitle: false,
              actions: [
                IconButton(
                    onPressed: () {
                      print("Tab favorite");
                    },
                    icon: const Icon(
                      Icons.favorite_outline,
                      size: 32,
                    )),
                IconButton(
                    onPressed: () {
                      print("Tab favorite");
                    },
                    icon: const Icon(
                      CupertinoIcons.paperplane,
                      size: 32,
                    ))
              ],
            )
          : null,
      body: InstaBody(index: index),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (newIndex) => setState(() => index = newIndex),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 28,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  size: 28,
                ),
                label: 'Search'),
          ]),
    );
  }
}
