import 'package:flutter/material.dart';

class HostScreen extends StatelessWidget {
  const HostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                color: Colors.grey[190],
                width: double.infinity,
                height: 90,
                padding: const EdgeInsets.all(22.0),
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 2),
                      child: Text(
                        'stayhub',
                        style: TextStyle(
                          color: Colors.purple,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 1),
                      child: Column(
                        children: [
                          Text(
                            ' Ready to ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          Text(
                            'Host?',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 15,
                right: 10,
                child: Container(
                  width: 150,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(15)),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.add_home_outlined,
                          color: Colors.white,
                          size: 30,
                        ),
                        SizedBox(width: 40),
                        Column(
                          children: [
                            Text(
                              'Hosting ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.white),
                            ),
                            Text(
                              'Setup',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 150, left: 45),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Stayhub it .',
                      style: TextStyle(
                          color: Colors.purple,
                          fontSize: 45,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text('You could',
                        style: TextStyle(
                            fontSize: 45, fontWeight: FontWeight.bold)),
                    const Text('earn',
                        style: TextStyle(
                            fontSize: 45, fontWeight: FontWeight.bold)),
                    const Text('₹0',
                        style: TextStyle(
                            fontSize: 45, fontWeight: FontWeight.bold)),
                    const Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Row(
                        children: [
                          Text(
                            '0 nights ',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'at an estimated ₹3,580 a n8',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: Container(
                        width: 450,
                        height: 7,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(15)),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 600),
                child: Column(
                  children: [
                    Text(
                      'Stayhub is easily',
                      style:
                          TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      ' with Stayhub Setup',
                      style:
                          TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Image(
                      image: AssetImage('asset/Stayhub2.jpg'),
                      width: double.infinity,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 1090),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    helpcentre(
                      text1: 'Guidance',
                      text2: 'We will match',
                      text3: 'you with a',
                      text4: 'Superhost in ',
                      text5: 'your area from',
                      text6: 'first question',
                      text7: 'to your first guest.',
                    ),
                    helpcentre(
                      text1: 'Experience',
                      text2: 'For your first',
                      text3: 'booking, you can',
                      text4: 'choose to welcome',
                      text5: 'an experienced',
                      text6: 'guest who has at',
                      text7: 'leat three stays.',
                    ),
                    helpcentre(
                      text1: 'Support',
                      text2: 'New hosts get',
                      text3: 'one-tap access',
                      text4: 'to specially trained',
                      text5: 'community support',
                      text6: 'agents who can help',
                      text7: 'issues to billing.',
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 1250),
                child: Divider(
                  thickness: 2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 1290),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    support(
                      text1: 'Support',
                      text2: 'Help centre',
                      text3: 'Air cover',
                      text4: 'Air-discrimination',
                      text5: 'Disability support',
                      text6: 'cancellation options',
                      text7: 'Report',
                    ),
                    support(
                      text1: 'Hosting',
                      text2: 'Stayhub your home',
                      text3: 'Air cover for Hosts',
                      text4: 'Hosting',
                      text5: 'Resources',
                      text6: 'Community',
                      text7: '',
                    ),
                    support(
                      text1: 'Stayhub',
                      text2: 'Newsroom',
                      text3: 'New features',
                      text4: 'Careers',
                      text5: 'Investors',
                      text6: 'Stayhub.org',
                      text7: '',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column support({
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

  Column helpcentre({
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
