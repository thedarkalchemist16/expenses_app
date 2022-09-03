import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/widgets/new_transaction.dart';
import 'package:flutter_complete_guide/widgets/transaction_list.dart';
import '../models/transaction.dart';

class UserTransaction extends StatefulWidget {
  const UserTransaction({Key key}) : super(key: key);

  @override
  State<UserTransaction> createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transactions> userTransactions = [
    Transactions(
        amount: 49.99, id: 't1', date: DateTime.now(), title: 'New Clothes'),
    Transactions(
        amount: 35.99, id: 't2', date: DateTime.now(), title: 'New Shoes')
  ];

  void addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transactions(
        amount: txAmount,
        id: DateTime.now().toString(),
        date: DateTime.now(),
        title: txTitle);

    setState(() {
      userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(addNewTransaction),
        TransactionList(userTransactions)
      ],
    );
  }
}
