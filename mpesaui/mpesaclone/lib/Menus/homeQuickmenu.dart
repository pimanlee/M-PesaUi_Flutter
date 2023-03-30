// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class QuickMenu extends StatelessWidget {
  const QuickMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          //Box 1
          child: Container(
            height: 110,
            width: 120,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Icon(
                    Icons.person_outlined,
                    size: 55,
                    color: Colors.black,
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Send money',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
        ),
        // Box 2

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 110,
            width: 120,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Icon(
                    Icons.business_outlined,
                    size: 55,
                    color: Colors.black,
                  ),
                  SizedBox(height: 8),
                  FittedBox(
                    child: Text(
                      'Pay by M-Pesa',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
            //Box 2
          ),
        ),
        // Box 3
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 110,
            width: 120,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Icon(
                    Icons.qr_code_outlined,
                    size: 55,
                    color: Colors.black,
                  ),
                  SizedBox(height: 8),
                  FittedBox(
                    child: Text(
                      'QR code',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
