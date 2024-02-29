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
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Row(
                children: [
                  const SizedBox(
                    height: 1020,
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
                  Container(
                    width: 150,
                    height: 1020,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20, right: 40),
                          child: Column(
                            children: [
                              const Text(
                                'Check-in:',
                                style: TextStyle(fontSize: 20),
                              ),
                              Container(
                                width: 100,
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Colors.grey,
                                    )),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
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
}
