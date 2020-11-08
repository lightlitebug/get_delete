import '../controllers/my_builder_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NestedBuilderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('== Nested Builder Page ==');
    return Scaffold(
      appBar: AppBar(
        title: Text('Nested Page'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text(
            'Go to Nested One',
            style: TextStyle(fontSize: 20.0),
          ),
          onPressed: () => Get.to(NestedOnePage()),
        ),
      ),
    );
  }
}

class NestedOnePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('== Nested One Page ==');
    return Scaffold(
      appBar: AppBar(
        title: Text('Nested One Page'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text(
            'Go to Nested Two',
            style: TextStyle(fontSize: 20.0),
          ),
          onPressed: () => Get.to(NestedTwoPage()),
        ),
      ),
    );
  }
}

class NestedTwoPage extends StatelessWidget {
  final MyBuilderController c = Get.put(MyBuilderController());

  @override
  Widget build(BuildContext context) {
    print('== Nested Two Page ==');

    return Scaffold(
      appBar: AppBar(
        title: Text('Nested Two Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<MyBuilderController>(
              builder: (controller) {
                return Text(
                  '${controller.myCount}',
                  style: TextStyle(fontSize: 60),
                );
              },
            ),
            RaisedButton(
              onPressed: () => Get.to(NestedThreePage()),
              child: Text(
                'Go to Nested Three',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          // c.count++;
          c.increment();
        },
      ),
    );
  }
}

class NestedThreePage extends StatelessWidget {
  final MyBuilderController c = Get.find();

  @override
  Widget build(BuildContext context) {
    print('== Nested Three Page ==');

    return Scaffold(
      appBar: AppBar(
        title: Text('Nested Three Page'),
      ),
      body: Center(
        child: Text(
          '${c.myCount}',
          style: TextStyle(fontSize: 60),
        ),
      ),
    );
  }
}
