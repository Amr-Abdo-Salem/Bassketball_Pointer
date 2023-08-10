//import 'package:businesscard/basketball.dart';
import 'dart:io';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ResultScreen extends StatelessWidget {
  int? counterA;
  int? counterB;
  ResultScreen({required this.counterA, required this.counterB});

  String Result() {
    if (counterA! > counterB!) {
      return 'The Owner : Team A';
    } else if (counterA! < counterB!) {
      return 'The Owner : Team B';
    } else {
      return 'Bouth Teams are Equivalent';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        titleSpacing: 3,
        centerTitle: true,
        shadowColor: Colors.orange,
        title: Text(
          'Result',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 32,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'The Result of Team A : $counterA',
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'The Result of Team B : $counterB',
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              Result(),
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 16,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 70,
                    width: 200,
                    child: Card(
                      color: Colors.orange,
                      elevation: 6,
                      child: TextButton(
                        child: const Text(
                          'Done',
                          style: TextStyle(fontSize: 30, color: Colors.black),
                        ),
                        onPressed: () {
                          exit(0);
                          // Navigator.of(context).pushReplacement(
                          //   MaterialPageRoute(
                          //     builder: (context) => BasketballPointsCounter(),
                          //   ),
                          // );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
