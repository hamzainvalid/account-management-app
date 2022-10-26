import 'package:account_management/categories.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Debts1 extends StatefulWidget {
  static const String id = 'debts1';
  @override
  _Debts1State createState() => _Debts1State();
}

class _Debts1State extends State<Debts1> {
  final textController = TextEditingController();
  final textController2 = TextEditingController();
  List debts_name = [];
  List debts_amount = [];

  void calculate() {
    textController2.dispose();
    super.dispose();
    var amount = double.tryParse(textController.text);
    var name = textController2.text;
    debts_amount.add(amount);
    debts_name.add(name);
    Navigator.pushNamed(context, Debts1.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFE0B2),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ListView(children: [
              for (var i = 0; i < debts_name.length; i++)
                Text('${debts_name[i]}: ${debts_amount[i]}'),
            ]),
            IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                          // Retrieve the text the that user has entered by using the
                          // TextEditingController.
                          content: Container(
                        child: Column(
                          children: <Widget>[
                            TextField(
                              controller: textController,
                              keyboardType:
                                  const TextInputType.numberWithOptions(
                                      decimal: true),
                            ),
                            TextField(
                              controller: textController2,
                            ),
                            ElevatedButton(
                                onPressed: calculate, child: Text('Submit'))
                          ],
                        ),
                      ));
                    },
                  );
                },
                icon: Icon(Icons.add))
          ],
        ),
      ),
    );
  }
}
