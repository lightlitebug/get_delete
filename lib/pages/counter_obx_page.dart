import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/counter_obx_controller.dart';

class CounterObxPage extends StatelessWidget {
  final CounterObxController c = Get.put(CounterObxController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Obx'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                '${c.count.value}',
                style: TextStyle(fontSize: 60.0),
              ),
            ),
            RaisedButton(
              child: Text(
                'Go to Other',
                style: TextStyle(fontSize: 20.0),
              ),
              onPressed: () => Get.to(OtherObxPage()),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 20, bottom: 20),
        child: Align(
          alignment: Alignment.bottomRight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                child: Icon(Icons.add),
                onPressed: () {
                  c.count.value++;
                },
                heroTag: null,
              ),
              SizedBox(width: 10.0),
              FloatingActionButton(
                child: Icon(Icons.remove),
                onPressed: () {
                  c.count.value--;
                },
                heroTag: null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OtherObxPage extends StatelessWidget {
  final CounterObxController c = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Obx'),
      ),
      body: Center(
        child: Text(
          '${c.count.value}',
          style: TextStyle(fontSize: 60),
        ),
      ),
    );
  }
}
