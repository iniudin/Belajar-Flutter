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
    'Kemiri',
    'Pacet',
    'Bendo',
    'Batu',
    'Malang',
    'Mojosari',
    'Mojokerto',
  ];

  int currentIndex = -1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Random Caffe",
        home: Scaffold(
          appBar: AppBar(
            title: Text("Random Caffe"),
          ),
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Mau ngopi dimana?'),
              if (currentIndex != -1)
                Text(
                  tempatNgopi[currentIndex],
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              Padding(padding: EdgeInsets.only(top: 20)),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue, // background
                  onPrimary: Colors.white, // foreground
                ),
                onPressed: () {
                  updateCurrentIndex();
                },
                child: Text('Acak'),
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
