import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cbigdtuw04/utils/user_preferences.dart';
import 'package:cbigdtuw04/utils/notifications.dart';
import 'package:cbigdtuw04/utils/gesture.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    const user = UserPreferences.myUser;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .scaffoldBackgroundColor,
        elevation: 1,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xff1DDF19),
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 16, top: 25, right: 16),
        child: ListView(
          children: <Widget>[
            Flexible(
              child: Row(
                children: <Widget>[
                  Container(
                    width: 161,
                    height: 159,
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 4,
                          color: Theme
                              .of(context)
                              .scaffoldBackgroundColor),
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 10,
                            color: Colors.black.withOpacity(0.1),
                            offset: const Offset(0, 10))
                      ],
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(user.imagePath),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          user.name,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.white,
                            letterSpacing: 2.0,
                            fontSize: 24,
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Flexible(
                          child: Row(
                            children: <Widget>[
                              const Icon(
                                Icons.person,
                                color: Color(0xff494C4E),
                                size: 40,
                              ),
                              ElevatedButton(
                                onPressed: () {},

                                style: ButtonStyle(
                                  padding: MaterialStateProperty.all(
                                    const EdgeInsets.symmetric(horizontal: 15),
                                  ),
                                  backgroundColor: MaterialStateProperty.all<
                                      Color>(Colors.white),
                                  shape: MaterialStateProperty.all(
                                    const StadiumBorder(),
                                  ),
                                ),
                                child: const Text('Edit Profile',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Stack(
              children: <Widget>[
                Container(
                  width: 400,
                  height: 375,
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.all(40),
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(217, 217, 217, 0.1),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:<Widget> [
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              const Icon(
                                Icons.notifications,
                                color: Colors.white,
                                size: 37,
                              ),
                              buildNotificationOptionRow("Notifications", true),
                            ],
                          ),
                        ),
                        const Divider(
                          color: Colors.white,
                          height: 10,
                          thickness: 1,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              const Icon(
                                Icons.location_on_sharp,
                                color: Colors.white,
                                size: 37,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              buildNotificationOptionRow("Location", true),
                            ],
                          ),
                        ),
                        const Divider(
                          color: Colors.white,
                          height: 10,
                          thickness: 1,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              const Icon(
                                Icons.settings,
                                color: Colors.white,
                                size: 37,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              buildAccountOptionRow(context, "Account Setting"),
                            ],
                          ),
                        ),
                        const Divider(
                          color: Colors.white,
                          height: 10,
                          thickness: 1,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              const Icon(
                                Icons.help,
                                color: Colors.white,
                                size: 37,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              buildAccountOptionRow(context, "Help Center"),
                            ],
                          ),
                        ),
                        const Divider(
                          color: Colors.white,
                          height: 10,
                          thickness: 1,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              const Icon(
                                Icons.info_rounded,
                                color: Colors.white,
                                size: 37,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              buildAccountOptionRow(context, "About Us"),
                            ],
                          ),
                        ),
                        const Divider(
                          color: Colors.white,
                          height: 10,
                          thickness: 1,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              const Icon(
                                Icons.logout,
                                color: Colors.white,
                                size: 37,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              buildAccountOptionRow(context, "Logout"),
                            ],
                          ),
                        ),
                        const Divider(
                          color: Colors.white,
                          height: 10,
                          thickness: 1,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}