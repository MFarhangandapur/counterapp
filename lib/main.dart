// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:getcounterapp/Controller.dart';
import 'package:get/get.dart';

main() {
  runApp(const Home());
}

final Controller _controller = Get.put(Controller());

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            'Getx Counter App ',
            style: TextStyle(color: Colors.white),
          ),
          leading:  IconButton(
            icon: const Icon(Icons.restore, color: Colors.white),
            onPressed: () {
              _controller.restore();
            },
          ),
        ),
        body: Obx(() => Center(
              child: Text(
                _controller.count.value.toString(),
                style: const TextStyle(color: Colors.white, fontSize: 50),
              ),
            )),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              _controller.increment();
            },
            child: const Icon(
              Icons.add,
              color: Colors.black,
            ),
            backgroundColor: Colors.white),
      ),
    );
  }
}
