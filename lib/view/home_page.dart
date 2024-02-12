// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:stay_hub_api/view/cabins.dart';
import 'package:stay_hub_api/view/design.dart';
import 'package:stay_hub_api/view/island.dart';
import 'package:stay_hub_api/view/tropical.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
        elevation: 1,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  types(
                      imagepath: 'asset/aliens.png',
                      text: 'OMG!',
                      navi: const HomeScreen(),
                      context: context),
                  types(
                      imagepath: 'asset/cabin.png',
                      text: 'Cabins',
                      navi: const CabinScreen(),
                      context: context),
                  types(
                      imagepath: 'asset/island.png',
                      text: 'Islands',
                      navi: const IslandScreen(),
                      context: context),
                  types(
                      imagepath: 'asset/modern-house.png',
                      text: 'Designs',
                      navi: const DesignScreen(),
                      context: context),
                  types(
                      imagepath: 'asset/palm-tree.png',
                      text: 'Tropicals',
                      navi: const TropicalScreen(),
                      context: context),
                ],
              ),
              const SizedBox(
                height: 80,
              ),
              Container(
                color: Colors.amber,
                width: 350,
                height: 350,
              ),
              const SizedBox(
                height: 150,
              ),
              Container(
                color: Colors.amber,
                width: 350,
                height: 350,
              ),
              const SizedBox(
                height: 150,
              ),
              Container(
                color: Colors.amber,
                width: 350,
                height: 350,
              ),
              const SizedBox(height: 150),
              const Divider(
                thickness: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  HelpCentre(
                    text1: 'Support',
                    text2: 'Help centre',
                    text3: 'Air cover',
                    text4: 'Air-discrimination',
                    text5: 'Disability support',
                    text6: 'cancellation options',
                    text7: 'Report',
                  ),
                  HelpCentre(
                    text1: 'Hosting',
                    text2: 'Airbnb your home',
                    text3: 'Air cover for Hosts',
                    text4: 'Hosting',
                    text5: 'Resources',
                    text6: 'Community',
                    text7: '',
                  ),
                  HelpCentre(
                    text1: 'Airbnb',
                    text2: 'Newsroom',
                    text3: 'New features',
                    text4: 'Careers',
                    text5: 'Investors',
                    text6: 'Airbnb.org',
                    text7: '',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column HelpCentre({
    required String text1,
    required String text2,
    required String text3,
    required String text4,
    required String text5,
    required String text6,
    required String text7,
  }) {
    return Column(
      children: [
        Text(
          text1,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          text2,
          style: TextStyle(color: Colors.grey[500]),
        ),
        Text(text3, style: TextStyle(color: Colors.grey[500])),
        Text(text4, style: TextStyle(color: Colors.grey[500])),
        Text(text5, style: TextStyle(color: Colors.grey[500])),
        Text(text6, style: TextStyle(color: Colors.grey[500])),
        Text(text7, style: TextStyle(color: Colors.grey[500])),
        const SizedBox(
          height: 15,
        )
      ],
    );
  }

  Column types(
      {required String imagepath,
      required String text,
      required Widget navi,
      required BuildContext context}) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => navi,
            ));
          },
          child: Image.asset(
            imagepath,
            height: 50,
            width: 50,
          ),
        ),
        Text(text),
      ],
    );
  }
}
