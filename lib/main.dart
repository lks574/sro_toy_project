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
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeListScreen(),
        '/insta': (context) => const InstaHome(),
      },
    );
  }
}

class HomeListScreen extends StatelessWidget {
  const HomeListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const pageList = ['/insta'];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sro Flutter'),
      ),
      body: ListView.builder(
        itemCount: pageList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('페이지 이동 ${pageList[index]}'),
            onTap: () => Navigator.pushNamed(context, pageList[index]),
          );
        },
      ),
    );
  }
}
