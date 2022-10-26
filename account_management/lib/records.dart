import 'package:account_management/categories.dart';
import 'package:account_management/main.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/src/rendering/box.dart';

List amounts = ledger.amount;
List names = ledger.name;
List categories = ledger.category;
List date = ledger.date;

class Records extends StatefulWidget {
  static const String id = 'records';
  @override
  _RecordsState createState() => _RecordsState();
}

class _RecordsState extends State<Records> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFFE0B2),
        body: SafeArea(
          child: ListView(
            children: [
              for (var i = 0; i < names.length; i++) Text('${names[i]}: ${amounts[i]} (${categories[i]}) on ${date[i]}'),
            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, Categories.id);
            }, child: Text('Back'))
            ],
          ),
        ));
  }
}
