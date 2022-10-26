import 'package:account_management/categories.dart';
import 'package:account_management/main.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BalanceUpdate extends StatefulWidget {
  static const String id = 'balanceUpdate';
  @override
  _BalanceUpdateState createState() => _BalanceUpdateState();
}

class _BalanceUpdateState extends State<BalanceUpdate> {
  @override
  final textController = TextEditingController();
  void calculate() {
    var balance1 = double.tryParse(textController.text);
    totalBalance.balance = balance1;
    Navigator.pushNamed(context, Categories.id);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFE0B2),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Text(
                  "Please enter the monthly income",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15.sp),
                ),
              ),
              TextField(
                controller: textController,
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
              ),
              ElevatedButton(onPressed: calculate, child: Text('Update'))
            ],
          ),
        ),
      ),
    );
  }
}
