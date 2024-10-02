import 'package:flutter/material.dart';

class LikesWidget extends StatelessWidget {
  const LikesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
