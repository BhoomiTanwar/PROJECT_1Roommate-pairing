import 'package:cbigdtuw04/Pages/home_screen.dart';
import 'package:cbigdtuw04/models/user_match_model.dart';
import 'package:cbigdtuw04/models/user_model.dart';

import 'package:cbigdtuw04/screens/match_screen.dart';
import 'package:flutter/material.dart';
import 'package:cbigdtuw04/Pages/user_screen.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('The Route is : ${settings.name}');

    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      case HomeScreen.routeName:
        return HomeScreen.route();
      // case MatchesScreen.routeName:
      //   return MatchesScreen.route();
      case UsersScreen.routeName:
        return UsersScreen.route(user: settings.arguments as User);
      
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(appBar: AppBar(title: Text('error'))),
      settings: RouteSettings(name: '/error'),
    );
  }
}
