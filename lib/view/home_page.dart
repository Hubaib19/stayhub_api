import 'package:flutter/material.dart';
import 'package:stayhub_api/view/host_home.dart';
import 'package:stayhub_api/view/top_rated_screen/top_rated.dart';
import 'package:stayhub_api/view/cabins_screen/cabins.dart';
import 'package:stayhub_api/view/design_screen/design.dart';
import 'package:stayhub_api/view/island_screen/island.dart';
import 'package:stayhub_api/view/tropical_screen/tropical.dart';

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
            PopupMenuButton(
              itemBuilder: (context) => [
                const PopupMenuItem(
                  value: 1,
                  child: Text('Sign Up'),
                ),
                const PopupMenuItem(
                  value: 2,
                  child: Text('Login'),
                ),
                PopupMenuItem(
                  value: 3,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HostScreen()));
                  },
                  child: const Text('Host your home'),
                ),
                const PopupMenuItem(
                  value: 3,
                  child: Text('Help Centre'),
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
        body: Column(
          children: [
            const TabBar(tabs: [
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
                const CabinScreen(),
                const IslandScreen(),
                const DesignScreen(),
                const TropicalScreen()
              ]),
            )
          ],
        ),
      ),
    );
  }
}
