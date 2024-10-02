import 'package:flutter/material.dart';

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

class NewsWidget extends StatelessWidget {
  const NewsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'News',
            style: TextStyle(fontSize: 32),
          ),
          SizedBox(height: 20),
          Icon(
            Icons.newspaper,
            size: 80,
            color: Colors.black, // Corregido
          ),
        ],
      ),
    );
  }
}

class LikesWidget extends StatelessWidget {
  const LikesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Likes",
            style: TextStyle(fontSize: 32),
          ),
          SizedBox(height: 16),
          Text(
            "Hier findest du deine gelikten Nachrichten.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("Profile", style: TextStyle(fontSize: 32)),
          SizedBox(height: 20),
          Icon(
            Icons.person,
            size: 80,
            color: Colors.black,
          ),
          SizedBox(height: 16),
          Text(
            "Max Mustermann",
            style: TextStyle(
                fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
