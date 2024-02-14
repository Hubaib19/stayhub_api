import 'package:flutter/material.dart';

class TopRatedScreen extends StatelessWidget {
  const TopRatedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(35.0),
          child: Column(
            children: [
              Container(
                color: Colors.amber,
                width: 350,
                height: 350,
              ),
              const SizedBox(height: 150),
              Container(
                color: Colors.amber,
                width: 350,
                height: 350,
              ),
              const SizedBox(height: 150),
              Container(
                color: Colors.amber,
                width: 350,
                height: 350,
              ),
              const SizedBox(height: 150),
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
}
