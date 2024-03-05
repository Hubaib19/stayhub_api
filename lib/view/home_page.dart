import 'package:flutter/material.dart';
import 'package:Airbnb_api/view/host_home.dart';
import 'package:Airbnb_api/view/top_rated_screen/top_rated.dart';
import 'package:Airbnb_api/view/cabins_screen/cabins.dart';
import 'package:Airbnb_api/view/design_screen/design.dart';
import 'package:Airbnb_api/view/island_screen/island.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              const Text(
                'Stayhub',
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
                  value: 4,
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
              // Tab(
              //   icon: ImageIcon(AssetImage('asset/palm-tree.png')),
              //   text: 'Tropicals',
              // ),
            ]),
            Expanded(
              child: TabBarView(children: [
                TopRatedScreen(),
                CabinScreen(),
                IslandScreen(),
                DesignScreen(),
               // TropicalScreen()
              ]),
            )
          ],
        ),
      ),
    );
  }
}
