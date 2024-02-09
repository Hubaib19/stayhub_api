import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'stayhub',
                style: TextStyle(
                  color: Colors.purple,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              Text(
                'Host your '
                'home',
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.w700),
              ),
            ],
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.person_2_rounded),
              onPressed: () {},
              iconSize: 50,
              color: Colors.grey,
            ),
          ],
        ),
        body: Column());
  }
}
