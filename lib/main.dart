import 'package:flutter/material.dart';
import 'news_widget.dart';
import 'likes_widget.dart';
import 'profile_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const _AppHomeState(),
    );
  }
}

class _AppHomeState extends StatefulWidget {
  // ignore: unused_element
  const _AppHomeState({super.key});

  @override
  State<_AppHomeState> createState() => _AppHomeStateState();
}

class _AppHomeStateState extends State<_AppHomeState> {
  int currentIndex = 0;

  final List<Widget> widgets = [
    const NewsWidget(),
    const LikesWidget(),
    const ProfileWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My App - Aufgabe 1'),
        backgroundColor: const Color.fromARGB(255, 163, 207, 227),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentIndex,
        onDestinationSelected: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(icon: Icon(Icons.newspaper), label: "News"),
          NavigationDestination(icon: Icon(Icons.favorite), label: "Likes"),
          NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
      body: widgets[currentIndex],
    );
  }
}
