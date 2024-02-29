import 'package:flutter/material.dart';
import 'package:stayhub_api/view/host_home.dart';

class CoconestScreen extends StatelessWidget {
  const CoconestScreen({Key? key});

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 40, top: 50),
              child: Row(
                children: [
                  Text(
                    'Coconest Langkawi',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.italic),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Container(
                    height: 200,
                    width: 320,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('asset/Screenshot (68).png'))),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Container(
                    height: 200,
                    width: 320,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('asset/Screenshot (22).png'))),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: Row(
                children: [
                  images(imagepath: 'asset/WIN_20231220_16_53_17_Pro.jpg'),
                  const SizedBox(
                    width: 9,
                  ),
                  images(imagepath: 'asset/Screenshot (67).png'),
                  const SizedBox(
                    width: 9,
                  ),
                  images(imagepath: 'asset/Vx1Mgl.webp'),
                  const SizedBox(
                    width: 9,
                  ),
                ],
              ),
            ),
          const  SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(
                left: 40,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      const SizedBox(
                        height: 900,
                        width: 170,
                        child: Column(
                          children: [
                            Text(
                              'Bedrooms: 3 Bathrooms: 4 Guest Capacity: 6',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'About:Enjoy the sounds of nature when you stay in this unique place.A shuttle will be arranged to a floating platform where the Coconest is attached. Relax on a net overhanging from the water with 360 views of the surrounding landscape including an island and King Kong mountain. Watch boats drive by as you float on the water of Tanjung Rhu in a private space dedicated for Guests looking to get away from it all, tune out and immerse themselves in nature.',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 200),
                        child: Container(
                          width: 170,
                          height: 700,
                          decoration: BoxDecoration(
                              color: Colors.purple[100],
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, right: 40),
                                child: Column(
                                  children: [
                                    reserve(
                                        text1: 'Check-in:',
                                        text2: '28/02/2024'),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    reserve(
                                        text1: 'Check-out:',
                                        text2: '29/02/2024'),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 30),
                                      child: Container(
                                        width: 100,
                                        height: 50,
                                        decoration: BoxDecoration(
                                            color: Colors.purple,
                                            borderRadius:
                                                BorderRadius.circular(8),
                                           ),
                                        child: const Center(
                                          child: Text(
                                            'Reserve',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Text(
                                '₹5025 X ₹5025 1 nights               Tax:              ₹450 ',
                                style: TextStyle(fontSize: 20),
                              ),
                              const Text(
                                'Total Amount:₹5475',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                helpcentre(
                  text1: 'Support',
                  text2: 'Help centre',
                  text3: 'Air cover',
                  text4: 'Air-discrimination',
                  text5: 'Disability support',
                  text6: 'cancellation options',
                  text7: 'Report',
                ),
                helpcentre(
                  text1: 'Hosting',
                  text2: 'Airbnb your home',
                  text3: 'Air cover for Hosts',
                  text4: 'Hosting',
                  text5: 'Resources',
                  text6: 'Community',
                  text7: '',
                ),
                helpcentre(
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
    );
  }

  Row images({required String imagepath}) {
    return Row(
      children: [
        Container(
          height: 150,
          width: 100,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage(imagepath))),
        )
      ],
    );
  }

  Column reserve({required String text1, required String text2}) {
    return Column(
      children: [
        Text(
          text1,
          style: const TextStyle(fontSize: 20),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          width: 100,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              ),
          child: Center(
            child: Text(
              text2,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
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
