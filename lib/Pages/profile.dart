import 'package:cbigdtuw04/widgets/appbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:cbigdtuw04/utils/user_preferences.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView(

      )
    );
  }
}

