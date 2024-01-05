import 'package:flutter/material.dart';

// base class ---- use in runApp()
class MyBaseWidget extends StatefulWidget {
  @override
  _MyBaseWidgetState createState() => _MyBaseWidgetState();
}


// State class associated with the MyBaseWidget
class _MyBaseWidgetState extends State<MyBaseWidget> {
  String parentData = "Base Data";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('StatefulWidget Example'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Base Data: $parentData'),
            MyChildWidget(),
          ],
        ),
      ),
    );
  }
}

class MyChildWidget extends MyParentWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Text('Child Widget'),
    );
  }
}


class MyParentWidget extends StatefulWidget {
  @override
  _MyParentWidgetState createState() => _MyParentWidgetState();
}

// State class associated with the MyParentWidget
class _MyParentWidgetState extends State<MyParentWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Text('Parent Widget'),
    );
  }
}
