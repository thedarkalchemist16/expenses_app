import 'package:flutter/foundation.dart';

class Transactions {
  String id;
  String title;
  double amount;
  DateTime date;

  Transactions(
      {@required this.amount,
      @required this.id,
      @required this.date,
      @required this.title});
}
