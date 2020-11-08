import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/counter_builder_controller.dart';

class CounterBuilderPage extends StatelessWidget {
  final CounterBuilderController cbc = Get.put(CounterBuilderController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Builder'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<CounterBuilderController>(
              builder: (controller) => Text(
                '${controller.count}',
                style: TextStyle(fontSize: 60),
              ),
            ),
            RaisedButton(
              child: Text(
                'Go To Other',
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Get.to(OtherBuilderPage());
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Align(
        alignment: Alignment.bottomRight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () => cbc.increment(),
              heroTag: null,
            ),
            SizedBox(width: 10),
            FloatingActionButton(
              child: Icon(Icons.remove),
              onPressed: () => cbc.decrement(),
              heroTag: null,
            )
          ],
        ),
      ),
    );
  }
}

class OtherBuilderPage extends StatelessWidget {
  final CounterBuilderController c = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Builder'),
      ),
      body: Center(
        child: Text(
          '${c.count}',
          style: TextStyle(fontSize: 60),
        ),
      ),
    );
  }
}
