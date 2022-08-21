import 'package:flutter/material.dart';
import './transaction.dart';

void main() {
  runApp(MyHomePage());
}

class MyHomePage extends StatelessWidget {
  final List<Transactions> transactions = [
    Transactions(
        amount: 49.99, id: 't1', date: DateTime.now(), title: 'New Clothes'),
    Transactions(
        amount: 35.99, id: 't2', date: DateTime.now(), title: 'New Shoes')
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Flutter App"),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
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
              color: Colors.deepOrangeAccent,
              child: Text('List of Transactions'),
            )
          ]),
    ));
  }
}
