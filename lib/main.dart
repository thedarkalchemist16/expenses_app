import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

void main() {
  runApp(MyHomePage());
}

class MyHomePage extends StatelessWidget {
  final titleController = TextEditingController();
  final amoutController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Flutter App"),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.all(10),
              width: 300,
              height: 100,
              color: Colors.cyan,
              child: Card(
                color: Colors.amber.shade600,
                elevation: 10,
                child: Text('List'),
              ),
            ),
            Card(
              elevation: 10,
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                TextField(
                  decoration: InputDecoration(labelText: 'Title'),
                  controller: titleController,
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Amount'),
                  controller: amoutController,
                ),
                ElevatedButton(
                  onPressed: (() {}),
                  child: Text(
                    'Add Transaction',
                  ),
                ),
              ]),
            ),
          ]),
    ));
  }
}
