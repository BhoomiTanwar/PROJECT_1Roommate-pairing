import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Row(
              children: [
                Expanded(
                  child: Image.asset(
                    'assets/logo.png',
                    height: 50,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text('MATCH IT',
                      style: Theme.of(context).textTheme.headline2),
                )
              ],
            ),
            actions: [
          IconsButton(
            icon: Icon(Icons.message, color: Theme.of(context).primaryColor),
          )
        ]));
  }

  @override
  Size get preferredSize => Size.fromHeight(56.0);
}

IconsButton({required Icon icon}) {}
