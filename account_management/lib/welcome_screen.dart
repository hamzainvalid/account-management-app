import 'package:account_management/categories.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
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
                child: Text(
                  "Welcome to my application",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25.sp),
                ),
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
                  onPressed: () {
                    Navigator.pushNamed(context, Categories.id);
                  },
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
