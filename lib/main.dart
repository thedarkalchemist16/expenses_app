import 'package:flutter/material.dart';
import './transaction.dart';
import 'package:intl/intl.dart';

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
              child: Container(
                margin: EdgeInsets.all(10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextField(
                        decoration: InputDecoration(labelText: 'Title'),
                      ),
                      TextField(
                        decoration: InputDecoration(labelText: 'Amount'),
                      ),
                      ElevatedButton(
                        onPressed: (() {}),
                        child: Text(
                          'Add Transaction',
                        ),
                      ),
                    ]),
              ),
            ),
            Column(
              children: [
                ...transactions.map((tx) {
                  return Card(
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.purple[600],
                          ),
                          borderRadius: BorderRadius.circular(20)),
                      elevation: 10,
                      color: Colors.purple[200],
                      child: Row(children: [
                        Container(
                          child: Text(
                            'Rs. ${tx.amount}',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          margin: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 20,
                          ),
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.purple[600], width: 3),
                            color: Colors.purple[100],
                          ),
                          padding: EdgeInsets.all(5),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              tx.title,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              DateFormat().format(tx.date),
                              style: TextStyle(
                                color: Colors.grey[800],
                              ),
                            )
                          ],
                        )
                      ]));
                }).toList(),
              ],
            )
          ]),
    ));
  }
}
