import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_delete/controllers/counter_stateful_builder_controller.dart';

class CounterStatefulBuilderPage extends StatefulWidget {
  @override
  _CounterStatefulBuilderPageState createState() =>
      _CounterStatefulBuilderPageState();
}

class _CounterStatefulBuilderPageState
    extends State<CounterStatefulBuilderPage> {
  final CounterStatefulBuilderController cbc =
      Get.put(CounterStatefulBuilderController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Stateful Builder'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<CounterStatefulBuilderController>(
              builder: (controller) => Text(
                '${controller.count}',
                style: TextStyle(fontSize: 60.0),
              ),
            ),
            RaisedButton(
              child: Text(
                'Go To Other',
                style: TextStyle(fontSize: 20.0),
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
  final CounterStatefulBuilderController c = Get.find();

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
