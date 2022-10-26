import 'package:account_management/categories.dart';
import 'package:account_management/main.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


class Income extends StatefulWidget {
  static const String id = 'income';
  @override
  _IncomeState createState() => _IncomeState();
}

class _IncomeState extends State<Income> {
  @override
  final textController = TextEditingController();
  final textController2 = TextEditingController();
  void calculate() {
    textController2.dispose();
    super.dispose();
    var spent = double.tryParse(textController.text);
    var name = textController2.text;
    totalBalance.balance = totalBalance.balance + spent;
    ledger.amount.add(spent);
    ledger.name.add(name);
    ledger.category.add('Income');
    ledger.date.add(DateTime.now());
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
                  "Write your expense",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25.sp),
                ),
              ),
              TextField(
                controller: textController,
                keyboardType:
                const TextInputType.numberWithOptions(decimal: true),
              ),
              TextField(
                controller: textController2,
              ),
              Container(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xffffb830),
                    onPrimary: Colors.black,
                    padding:
                    EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
                    minimumSize: Size(50.w, 10.h),
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  onPressed: calculate,
                  child: const Text(
                    'START',
                    style: TextStyle(
                        fontSize: 25, fontFamily: 'Poppins-Regular'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
