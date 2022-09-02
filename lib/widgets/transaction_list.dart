import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/models/transaction.dart';
import 'package:intl/intl.dart';
import 'transaction_list.dart';

class TransactionList extends StatefulWidget {
  const TransactionList({Key key}) : super(key: key);

  @override
  State<TransactionList> createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  final List<Transactions> userTransactions = [
    Transactions(
        amount: 49.99, id: 't1', date: DateTime.now(), title: 'New Clothes'),
    Transactions(
        amount: 35.99, id: 't2', date: DateTime.now(), title: 'New Shoes')
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...userTransactions.map((tx) {
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
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  margin: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.purple[600], width: 3),
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
    );
  }
}
