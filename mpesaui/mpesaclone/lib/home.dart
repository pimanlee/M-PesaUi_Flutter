// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'Menus/discover.dart';
import 'Menus/homeQuickmenu.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isOn = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 243, 39, 24),
          body: Column(
            children: [
              SizedBox(height: 30),
              Text(
                'Hi Piman',
                style: TextStyle(color: Colors.white, fontSize: 19),
              ),
              SizedBox(height: 10),
              Text(
                'Last Login 10 Jan, 8:20am',
                style: TextStyle(
                    fontSize: 14, color: Color.fromARGB(255, 243, 238, 238)),
              ),
              //end top Greetings...
              //Start second card
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'M-Pesa account',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            Switch(
                                value: isOn,
                                onChanged: (isOn) {
                                  setState(() {
                                    isOn = isOn;
                                  });
                                })
                          ],
                        ),
                        Text(
                          '50,000 TZS',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 29,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              //Min Statement Card
              Expanded(
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Container(
                        color: Color(0xFFE9E9E9),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 50,
                            ),
                            //Quick Menus here
                            QuickMenu(),
                            Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  ('Discover'),
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: DiscoverHome(),
                            ),
                            SizedBox(height: 50),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      child: minstatement(),
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
}

class minstatement extends StatelessWidget {
  const minstatement({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(7)),
        // ignore: prefer_const_literals_to_create_immutables
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Icon(
                Icons.receipt_long,
                color: Color.fromARGB(255, 73, 57, 64),
                size: 35,
              ),
              SizedBox(width: 14),
              Text(
                'Mini statement',
                style: TextStyle(
                    color: Color.fromARGB(255, 73, 57, 64), fontSize: 20),
              ),
              SizedBox(width: 120),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.red,
                size: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
