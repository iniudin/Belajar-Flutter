import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> tempatNgopi = [
    'Pandan',
    'Pacet',
    'Bendo',
    'Mojosari',
    'Mojokerto',
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Mau ngopi dimana?'),
              Text(
                tempatNgopi[currentIndex],
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
              TextButton(
                style: TextButton.styleFrom(
                    padding: EdgeInsets.all(16.0),
                    primary: Colors.blue,
                    textStyle: TextStyle(fontSize: 20.0)),
                onPressed: () {
                  updateCurrentIndex();
                },
                child: Text("Acak"),
              ),
            ],
          )),
        ),
        debugShowCheckedModeBanner: false);
  }

  void updateCurrentIndex() {
    final random = Random();
    final index = random.nextInt(tempatNgopi.length);
    setState(() {
      currentIndex = index;
    });
  }
}
