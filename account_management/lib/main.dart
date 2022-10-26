import 'package:flutter/material.dart';
import 'package:account_management/welcome_screen.dart';
import 'package:account_management/categories.dart';
import 'package:account_management/expense.dart';
import 'package:account_management/income.dart';
import 'package:account_management/balanceUpdate.dart';
import 'package:account_management/records.dart';
import 'package:account_management/debts.dart';
import 'package:account_management/debts1.dart';
import 'package:account_management/debts2.dart';
import 'package:sizer/sizer.dart';


void main() {
  runApp(accountManagement());
}

class accountManagement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          initialRoute: WelcomeScreen.id,
          routes: {
            WelcomeScreen.id: (context) => WelcomeScreen(),
            Categories.id: (context) => Categories(),
            Expense.id: (context) => Expense(),
            Income.id: (context) => Income(),
            BalanceUpdate.id: (context) => BalanceUpdate(),
            Records.id: (context) => Records(),
            Debts.id: (context) => Debts(),
            Debts1.id: (context) => Debts1(),
            Debts2.id: (context) => Debts2(),
          },
        );
      },
    );
  }
}

class totalBalance{
  // Create a text controller  to retrieve the value

  // the function which calculates square

    // textController.text is a string and we have to convert it to double
  static var balance;


}

class ledger {
  static List name = [];
  static List amount = [];
  static List category = [];
  static List date = [];
}

