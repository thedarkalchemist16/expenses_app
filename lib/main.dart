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
            Column(
              children: [
                ...transactions.map((tx) {
                  return Card(
                      elevation: 10,
                      color: Colors.lime,
                      child: Row(children: [
                        Container(
                          child: Text(
                            tx.amount.toString(),
                            style: TextStyle(fontWeight: FontWeight.w900),
                          ),
                          margin: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 20,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black38, width: 3),
                            color: Colors.purple[600],
                          ),
                          padding: EdgeInsets.all(5),
                        ),
                        Column(
                          children: [Text(tx.title), Text(tx.date.toString())],
                        )
                      ]));
                }).toList(),
              ],
            )
          ]),
    ));
  }
}
