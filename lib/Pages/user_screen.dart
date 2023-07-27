import 'package:cbigdtuw04/Pages/home_screen.dart';
import 'package:cbigdtuw04/models/user_model.dart';
import 'package:flutter/material.dart';

class UsersScreen extends StatelessWidget {
  static const String routeName = '/users';

  static Route route({required User user}) {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => UsersScreen(
        user: user,
      ),
    );
  }

  User user;
  UsersScreen({required this.user});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        extendBodyBehindAppBar: true,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40.0),
                    child: Hero(
                      tag: 'user_image',
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          image: DecorationImage(
                            image: NetworkImage(user.imageUrls[0]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 60.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ChoiceButton(
                            width: 60,
                            height: 60,
                            size: 25,
                            hasGradient: false,
                            color: Color.fromARGB(255, 105, 6, 87),
                            icon: Icons.clear_rounded,
                          ),
                          ChoiceButton(
                            width: 80,
                            height: 80,
                            size: 30,
                            hasGradient: true,
                            color: Colors.red,
                            icon: Icons.favorite,
                          ),
                          ChoiceButton(
                            width: 60,
                            height: 60,
                            size: 25,
                            hasGradient: false,
                            color: Color.fromARGB(255, 103, 8, 103),
                            icon: Icons.watch_later,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${user.name},${user.age}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 45,
                      color: Color.fromARGB(255, 3, 65, 1),
                    ),
                  ),
                  Text(
                    '${user.jobTitle}',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 26,
                      color: Color.fromARGB(255, 3, 65, 1),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'About',
                    style: Theme.of(context).textTheme.headline3!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 43,
                        color: Color.fromARGB(255, 104, 5, 76)),
                  ),
                  Text(
                    '${user.bio}',
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          height: 2,
                        ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Interests',
                    style: Theme.of(context).textTheme.headline3!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 43,
                        color: Color.fromARGB(255, 104, 5, 76)),
                  ),
                  Row(
                    children: user.Interests.map(
                      (Interests) => Container(
                          padding: const EdgeInsets.all(9.0),
                          margin: const EdgeInsets.only(top: 9.0, right: 9.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(255, 238, 241, 89),
                                Color.fromARGB(221, 213, 244, 58),
                              ],
                            ),
                          ),
                          child: Text(Interests,
                              style: Theme.of(context).textTheme.headline6!)),
                    ).toList(),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
