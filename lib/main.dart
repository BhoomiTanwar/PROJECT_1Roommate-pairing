import 'package:flutter/material.dart';
import 'Pages/settings.dart';
import 'Pages/slider.dart';

void main() => runApp(const MaterialApp(
  home: MyApp(),
));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xff24293E),
      ),
      title: 'User Profile',
      home: SettingsPage(),
    );
  }
}



