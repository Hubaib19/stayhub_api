import 'package:flutter/material.dart';

class CocoReserve extends StatelessWidget {
  const CocoReserve({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Container(
          height: 750,
          width: 350,
          decoration: BoxDecoration(
              color: Colors.teal[900], borderRadius: BorderRadius.circular(15)),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 40),
                child: Text(
                  'Coconest langkawi',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 180,
                width: 300,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('asset/Vx1Mgl.webp'))),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 60),
                child: Column(
                  children: [
                    Text(
                      'Checkin:29/02/2024',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Checkin:29/02/2024',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Divider(),
                    SizedBox(
                      height: 25,
                    ),
                     Padding(
                       padding: EdgeInsets.all(8.0),
                       child: Column(
                         children: [
                           Text(
                            'Amount Price:       5025',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w500),
                                               ),
                         ],
                       ),
                     ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
