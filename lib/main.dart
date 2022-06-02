// ignore: unused_import
import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          // ignore: prefer_const_constructors
          title: Center(
            child: const Text(
              "Counter App ",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: Center(
          child: Text(
            counter.toString(),
            style: const TextStyle(color: Colors.black, fontSize: 50),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            counter++;
            setState(() {});
          },
          hoverColor: Colors.red,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
