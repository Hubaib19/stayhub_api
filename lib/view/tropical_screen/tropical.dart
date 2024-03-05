// ignore_for_file: must_be_immutable

import 'package:Airbnb_api/model/datamodel.dart';
import 'package:Airbnb_api/service/stayhubService.dart';
import 'package:Airbnb_api/view/tropical_screen/tropical_detail.dart';
import 'package:flutter/material.dart';

class TropicalScreen extends StatelessWidget {
  TropicalScreen({super.key});
  ApiService service = ApiService();
  List<DataModel> tropicallist = [];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(35.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              FutureBuilder(
                future: service.fetchdata(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (snapshot.hasData) {
                    for (var i = 0; i < snapshot.data!.length; i++) {
                      if (snapshot.data![i].category == "Tropical") {
                        tropicallist.add(snapshot.data![i]);
                      }
                    }
                    return ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: tropicallist.length,
                      itemBuilder: (context, index) {
                        DataModel datas = tropicallist[index];
                        List<dynamic> images = datas.properties!;
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => TropicalDetails(
                                      data: datas,
                                    ),
                                  ),
                                );
                              },
                              child: Container(
                                height: size.width * 0.6,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image: NetworkImage(images[0]),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(datas.title!),
                                  Text("₹${datas.price!}"),
                                  const SizedBox(height: 10),
                                ],
                              ),
                            ),
                            const SizedBox(height: 20),
                          ],
                        );
                      },
                    );
                  } else {
                    return Center(
                      child: Text(snapshot.error.toString()),
                    );
                  }
                },
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HelpCentre(
                    text1: 'Support',
                    text2: 'Help centre',
                    text3: 'Air cover',
                    text4: 'Air-discrimination',
                    text5: 'Disability support',
                    text6: 'Cancellation options',
                    text7: 'Report',
                  ),
                  HelpCentre(
                    text1: 'Hosting',
                    text2: 'Stayhub home',
                    text3: 'Air cover for ',
                    text4: 'Hosting',
                    text5: 'Resources',
                    text6: 'Community',
                    text7: '',
                  ),
                  HelpCentre(
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
            ],
          ),
        ),
      ),
    );
  }
}

class HelpCentre extends StatelessWidget {
  const HelpCentre({
    Key? key,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
    required this.text5,
    required this.text6,
    required this.text7,
  }) : super(key: key);

  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String text5;
  final String text6;
  final String text7;

  @override
  Widget build(BuildContext context) {
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
