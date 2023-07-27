import 'package:cbigdtuw04/Pages/LoggIn.dart';
import 'package:cbigdtuw04/Pages/user_screen.dart';

import 'package:cbigdtuw04/screens/match_screen.dart';
import 'package:flutter/material.dart';
import 'package:cbigdtuw04/models/models.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cbigdtuw04/Pages/user_screen.dart';

import '../blocs/bloc/newswipe_bloc.dart';
import '../blocs/swipe_bloc.dart' as s;
import '../onboarding_screens/bio_screen_describe.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => HomeScreen(),
    );
  }

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    context.read<NewswipeBloc>().add(LoadUsersEvent(users: users));

    super.initState();
  }

  Widget build(BuildContext context) {
    return BlocConsumer<NewswipeBloc, NewswipeState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Color.fromARGB(255, 241, 174, 241),
          appBar: AppBar(
              automaticallyImplyLeading: false,
              leading: Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    size: 25,
                    color: Colors.black,
                  ),
                ),
              ),
              title: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 0),
                child: SizedBox(
                  height: 60,
                  child: Image.asset(
                    'assets/logo1.png',
                    height: 270,
                  ),
                ),
              ),
              backgroundColor: Colors.white,
              centerTitle: false,
              leadingWidth: 27,
              actions: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, right: 55),
                  child: Text(
                    'MATCH IT',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Color.fromARGB(255, 104, 11, 73),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MatchedScreen(
                              person1Image:
                                  'https://unsplash.com/photos/vyAGTBYSkqU',
                              person2Image:
                                  'https://unsplash.com/photos/LpZvsGynEho',
                            ),
                          ));
                    },
                    icon: const Icon(
                      Icons.message,
                      size: 25,
                      color: Colors.black,
                    ),
                  ),
                ),
              ]),
          body: BlocBuilder<NewswipeBloc, NewswipeState>(
            builder: (context, state) {
              if (state is SwipeLoading) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is SwipeLoaded) {
                return Column(children: [
                  InkWell(
                    onDoubleTap: () {
                      Navigator.of(
                        context,
                      ).push(MaterialPageRoute(
                        builder: (context) => UsersScreen(user: state.users[0]),
                      ));
                    },
                    child: Draggable(
                        child: UserCard(user: state.users[0]),
                        feedback: UserCard(user: state.users[0]),
                        childWhenDragging: UserCard(user: state.users[1]),
                        onDragEnd: (drag) {
                          if (drag.velocity.pixelsPerSecond.dx < 0) {
                            context
                                .read<NewswipeBloc>()
                                .add(SwipeLeftEvent(user: state.users[0]));
                            print('Swiped left');
                          } else {
                            context
                                .read<NewswipeBloc>()
                                .add(SwipeRightEvent(user: state.users[0]));
                            print('Swiped Right');
                          }
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8.0,
                      horizontal: 60,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            context
                                .read<NewswipeBloc>()
                                .add(SwipeLeftEvent(user: state.users[0]));
                            print('Swiped left');
                          },
                          child: InkWell(
                            onTap: () {
                              context
                                  .read<NewswipeBloc>()
                                  .add(SwipeRightEvent(user: state.users[0]));
                              print('Swiped Right');
                            },
                            child: ChoiceButton(
                              width: 60,
                              height: 60,
                              size: 25,
                              hasGradient: false,
                              color: Color.fromARGB(255, 105, 6, 87),
                              icon: Icons.clear_rounded,
                            ),
                          ),
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyApp()));
                            },
                            child: ChoiceButton(
                              width: 80,
                              height: 80,
                              size: 30,
                              hasGradient: true,
                              color: Colors.red,
                              icon: Icons.favorite,
                            ) // icon: Icons.favorite,
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
                ]);
              } else {
                return Text('Something went wrong');
              }
            },
          ),
        );
      },
    );
  }
}

class ChoiceButton extends StatelessWidget {
  final double width;
  final double height;
  final double size;
  final Color color;
  final bool hasGradient;
  final IconData icon;

  const ChoiceButton(
      {Key? key,
      required this.width,
      required this.height,
      required this.size,
      required this.color,
      required this.hasGradient,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        gradient: hasGradient
            ? LinearGradient(
                colors: [
                  Theme.of(context).primaryColor,
                  Theme.of(context).accentColor,
                ],
              )
            : LinearGradient(
                colors: [
                  Colors.white,
                  Colors.white,
                ],
              ),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withAlpha(50),
              spreadRadius: 4,
              blurRadius: 4,
              offset: Offset(3, 3)),
        ],
      ),
      child: Icon(
        icon,
        color: color,
      ),
    );
  }
}

class UserCard extends StatelessWidget {
  final User user;
  const UserCard({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => UsersScreen(user: user),
        ),
      ),
      child: Hero(
        tag: 'user_image',
        child: Padding(
          padding: const EdgeInsets.only(
            top: 10,
            left: 20,
            right: 20,
          ),
          child: SizedBox(
            height: MediaQuery.of(context).size.height / 1.4,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(user.imageUrls[0]),
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 4,
                          blurRadius: 4,
                          offset: Offset(3, 3),
                        )
                      ]),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(200, 0, 0, 0),
                        Color.fromARGB(0, 0, 0, 0),
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${user.name},${user.age}',
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                              color: Colors.white,
                            ),
                      ),
                      Text(
                        '${user.jobTitle}',
                        style: Theme.of(context).textTheme.headline3!.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    required String title,
  }) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Row(
        children: [
          Image.asset(
            'assets/logo.png',
            height: 30,
          ),
          Text('MATCH IT', style: Theme.of(context).textTheme.headline2),
          IconsButton(
            icon: Icon(Icons.message, color: Colors.black54),
          )
        ],
      ),
    ));
  }

  @override
  Size get preferredSize => Size.fromHeight(56.0);
}

IconsButton({required Icon icon}) {}
