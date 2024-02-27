import 'package:flutter/material.dart';
import 'package:stayhub_api/view/host_home.dart';

class CoconestScreen extends StatelessWidget {
  const CoconestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Text(
              'stayhub',
              style: TextStyle(
                color: Colors.purple,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HostScreen()),
                );
              },
              child: const Column(
                children: [
                  Text(
                    'Host your',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'home',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )
          ],
        ),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: 1,
                child: Text('Hello'),
              ),
              const PopupMenuItem(
                value: 2,
                child: Text('Account'),
              ),
              const PopupMenuItem(
                value: 3,
                child: Text('Logout'),
              ),
             
            ],
            onSelected: (value) {},
            icon: const Icon(
              Icons.person_2_rounded,
              size: 50,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      body: const Column(
        children: [
          Row(
            
          ),
        ],
      ),
    );
  }
}
