import 'package:flutter/material.dart';

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
