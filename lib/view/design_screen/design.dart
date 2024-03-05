// ignore_for_file: non_constant_identifier_names, must_be_immutable

import 'package:Airbnb_api/service/stayhubService.dart';
import 'package:Airbnb_api/view/design_screen/design_details.dart';
import 'package:flutter/material.dart';
import 'package:Airbnb_api/model/datamodel.dart';

class DesignScreen extends StatelessWidget {
  DesignScreen({super.key});

  ApiService service = ApiService();
  List<DataModel> designlist = [];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(35.0),
          child: Column(
            children: [
              SizedBox(
                height: size.height,
                child: FutureBuilder(
                  future: service.fetchdata(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    } else if (snapshot.hasData) {
                      for (var i = 0; i < snapshot.data!.length; i++) {
                        if (snapshot.data![i].category == "Design") {
                          designlist.add(snapshot.data![i]);
                        }
                      }
                      return ListView.builder(
                        itemCount: designlist.length,
                        itemBuilder: (context, index) {
                          DataModel datas = designlist[index];
                          List<dynamic> images = datas.properties!;
                          return Column(
                            children: [
                              GestureDetector(
                                 onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => DesignDetails(
                                                data: datas,
                                              )));
                                },
                                child: Container(
                                  height: size.height * 0.4,
                                  width: size.width,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                            images[0],
                                          ),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 1),
                                child: Column(
                                  children: [
                                    Text(datas.title!),
                                    Text(datas.location.toString()),
                                    Text("₹${datas.price!}"),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              )
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
                    text2: 'Airbnb home',
                    text3: 'Air cover for ',
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
