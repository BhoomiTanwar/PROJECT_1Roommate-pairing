import 'package:cbigdtuw04/Pages/LoggIn.dart';
import 'package:cbigdtuw04/Pages/OTP_Verification.dart';
import 'package:flutter/material.dart';
import 'package:cbigdtuw04/Pages/SignUpScreen.dart';
import 'package:cbigdtuw04/Pages/MyPhone.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LogInScreen(),
      // routes: {
      //   "/": (context) => LogInScreen(),
      //   "/Address": (context) => AddressScreen(),
      //   "/OTP_Verification": (context) => OTPVerificationScreen(),
      // },
    );
  }
}
