import 'package:account_management/balanceUpdate.dart';
import 'package:account_management/debts.dart';
import 'package:account_management/expense.dart';
import 'package:account_management/income.dart';
import 'package:account_management/main.dart';
import 'package:account_management/records.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Categories extends StatefulWidget {
  static const String id = 'categories';
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFE0B2),
      appBar: AppBar(
        title: Text('Balance: ${totalBalance.balance}'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                child: Text(
                  "Update your monthly income",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15.sp),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, BalanceUpdate.id);}, child: const Text('Update balance')),
              SizedBox(height: 10.h,),
              Container(
                child: Text(
                  "Please select one option",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 17.sp),
                ),
              ),
              Container(
                child: Column(
                    children: <Widget>[
                      ElevatedButton(onPressed: () {
                        Navigator.pushNamed(context, Expense.id);}, child: Text('Expense'),),
                      ElevatedButton(onPressed: () {
                        Navigator.pushNamed(context, Income.id);}, child: Text('Income'),),
                      ElevatedButton(onPressed: () {
                        Navigator.pushNamed(context, Records.id);}, child: Text('Records'),),
                      ElevatedButton(onPressed: () {
                        Navigator.pushNamed(context, Debts.id);}, child: Text('Debts'),),
                      ElevatedButton(onPressed: () {
                        Navigator.pushNamed(context, Records.id);}, child: Text('Accounts'),),
                    ]
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
