import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_delete/controllers/counter_builder_controller.dart';
import 'controllers/counter_obx_controller.dart';
import 'pages/nested_builder_page.dart';
import 'pages/counter_stateful_builder_page.dart';
import 'pages/counter_stateful_obx_page.dart';
import 'pages/nested_obx_page.dart';
import 'pages/counter_builder_page.dart';
import 'pages/counter_obx_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IntrinsicWidth(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                onPressed: () async {
                  await Get.to(CounterBuilderPage());
                  print('After Get.to');
                  await Get.delete<CounterBuilderController>(force: true);
                },
                child: Text(
                  'Counter Builder',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  await Get.to(CounterObxPage());
                  print('After Get.to');
                  await Get.delete<CounterObxController>(force: true);
                },
                child: Text(
                  'Counter Obx',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.to(CounterStatefulBuilderPage());
                },
                child: Text(
                  'Counter Stateful Builder',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.to(CounterStatefulObxPage());
                },
                child: Text(
                  'Counter Stateful OBX',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  Get.to(NestedBuilderPage());
                },
                child: Text(
                  'Nested Builder Page',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  Get.to(NestedObxPage());
                },
                child: Text(
                  'Nested Obx Page',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
