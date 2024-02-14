// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:stay_hub_api/view/cabins.dart';
import 'package:stay_hub_api/view/design.dart';
import 'package:stay_hub_api/view/island.dart';
import 'package:stay_hub_api/view/tropical.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            icon: Icon(Icons.person_2_rounded),
            onPressed: () {},
            iconSize: 50,
            color: Colors.grey,
          ),
        ],
        elevation: 1,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.purple,
          tabs: const [
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
              text: 'Island',
            ),
            Tab(
              icon: ImageIcon(AssetImage('asset/modern-house.png')),
              text: 'Design',
            ),
            Tab(
              icon: ImageIcon(AssetImage('asset/palm-tree.png')),
              text: 'Tropicals',
            ),
          ],
        ),
      ),
      body: 
      
      
      
      
      
      
      
      TabBarView(
        controller: _tabController,
        children: const [
          CabinScreen(),
          IslandScreen(),
          DesignScreen(),
          TropicalScreen(),
        ],
      ),
    );
  }
}
