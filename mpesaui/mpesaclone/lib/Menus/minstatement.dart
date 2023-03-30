import 'package:flutter/material.dart';

class Minstatement extends StatelessWidget {
  const Minstatement({
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
