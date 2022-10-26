import 'package:account_management/categories.dart';
import 'package:account_management/debts1.dart';
import 'package:account_management/debts2.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


class Debts extends StatefulWidget {
  static const String id = 'debts';
  @override
  _DebtsState createState() => _DebtsState();
}

class _DebtsState extends State<Debts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFE0B2),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Debts1.id);
                  },
                  child: Text('Owe others'),
                ),
              ),
              Container(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Debts2.id);
                  },
                  child: Text('Others owe you'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
