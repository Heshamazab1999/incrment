import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(Controller());
    return Scaffold(
      appBar: AppBar(
        title: const Text('State Management'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      controller.decrement();
                    },
                    child: const Text('Minus')),
                Obx(() => Text(
                      '${controller.counter}',
                      style: Theme.of(context).textTheme.headline4,
                    )),
                TextButton(
                    onPressed: () {
                      controller.increment();
                    },
                    child: const Text('Plus')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
