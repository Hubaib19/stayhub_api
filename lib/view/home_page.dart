import 'package:flutter/material.dart';
import 'package:stay_hub_api/view/top_rated.dart';
import 'package:stay_hub_api/view/cabins.dart';
import 'package:stay_hub_api/view/design.dart';
import 'package:stay_hub_api/view/island.dart';
import 'package:stay_hub_api/view/tropical.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'stayhub',
            style: TextStyle(
              color: Colors.purple,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
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
        body: const Column(
          children: [
            TabBar(tabs: [
              Tab(
                icon: ImageIcon(AssetImage('asset/aliens.png')),
                text: 'OMG!',
              ),
              Tab(
                icon: ImageIcon(AssetImage('asset/cabin.png')),
                text: 'Cabins',
              ),
              Tab(
                icon: ImageIcon(AssetImage('asset/island.png')),
                text: 'Islands',
              ),
              Tab(
                icon: ImageIcon(AssetImage('asset/modern-house.png')),
                text: 'Designs',
              ),
              Tab(
                icon: ImageIcon(AssetImage('asset/palm-tree.png')),
                text: 'Tropicals',
              ),
            ]),
            Expanded(
              child: TabBarView(children: [
                TopRatedScreen(),
                CabinScreen(),
                IslandScreen(),
                DesignScreen(),
                TropicalScreen()
              ]),
            )
          ],
        ),
      ),
    );
  }
}
