//  import 'package:flutter/material.dart';

import '../../models/models.dart';
// import '../Pages/home_screen.dart';

// class MatchesScreen extends StatelessWidget {
//   static const String routeName = '/matches';

//   static Route route() {
//     return MaterialPageRoute(
//       settings: RouteSettings(name: routeName),
//       builder: (context) => MatchesScreen(),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     final inactiveMatches = UserMatch.matches
//         .where((match) => match.userId == 1 && match.chat!.isEmpty)
//         .toList();
//     final activeMatches = UserMatch.matches
//         .where((match) => match.userId == 1 && match.chat!.isNotEmpty)
//         .toList();

//     return Scaffold(
//       appBar: CustomAppBar(title: 'MATCHES'),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text('Your Likes', style: Theme.of(context).textTheme.headline4),
//               SizedBox(
//                 height: 100,
//                 child: ListView.builder(
//                     scrollDirection: Axis.horizontal,
//                     shrinkWrap: true,
//                     itemCount: inactiveMatches.length,
//                     itemBuilder: (context, index) {
//                       return Column(
//                         children: [
//                           UserImageSmall(
//                             margin: const EdgeInsets.only(top: 10, right: 10),
//                             height: 70,
//                             width: 70,
//                             url:
//                                 inactiveMatches[index].matchedUser.imageUrls[0],
//                           ),
//                           Text(
//                             inactiveMatches[index].matchedUser.name,
//                             style: Theme.of(context).textTheme.headline5,
//                           ),
//                         ],
//                       );
//                     }),
//               ),
//               SizedBox(height: 10),
//               Text(
//                 'Your Chats',
//                 style: Theme.of(context).textTheme.headline4,
//               ),
//               ListView.builder(
//                   shrinkWrap: true,
//                   itemCount: activeMatches.length,
//                   itemBuilder: (context, index) {
//                     return InkWell(
//                       onTap: () {
//                         Navigator.pushNamed(context, '/chat',
//                             arguments: activeMatches[index]);
//                       },
//                       child: Row(
//                         children: [
//                           UserImageSmall(
//                             margin: const EdgeInsets.only(top: 10, right: 10),
//                             height: 70,
//                             width: 70,
//                             url: activeMatches[index].matchedUser.imageUrls[0],
//                           ),
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 activeMatches[index].matchedUser.name,
//                                 style: Theme.of(context).textTheme.headline5,
//                               ),
//                               SizedBox(height: 5),
//                               Text(
//                                 activeMatches[index]
//                                     .chat![0]
//                                     .messages[0]
//                                     .message,
//                                 style: Theme.of(context).textTheme.headline6,
//                               ),
//                               SizedBox(height: 5),
//                               Text(
//                                 activeMatches[index]
//                                     .chat![0]
//                                     .messages[0]
//                                     .timeString,
//                                 style: Theme.of(context).textTheme.bodyText1,
//                               ),
//                             ],
//                           )
//                         ],
//                       ),
//                     );
//                   })
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class UserImageSmall extends StatelessWidget {
//   final String url;
//   final double height;
//   final double width;

//   const UserImageSmall({
//     Key? key,
//     required this.url,
//     this.height = 60,
//     this.width = 60,
//     required EdgeInsets margin,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.only(top: 8, right: 8),
//       width: width,
//       height: height,
//       decoration: BoxDecoration(
//         image: DecorationImage(
//           fit: BoxFit.cover,
//           image: NetworkImage(url),
//         ),
//         borderRadius: BorderRadius.all(Radius.circular(8.0)),
//         border: Border.all(width: 5),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class MatchedScreen extends StatelessWidget {
  final String person1Image;
  final String person2Image;

  const MatchedScreen({
    Key? key,
    required this.person1Image,
    required this.person2Image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Finally'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'WOW !',
              style: TextStyle(
                fontSize: 36.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Yes, you are matched',
              style: TextStyle(
                fontSize: 24.0,
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: NetworkImage(person1Image),
                ),
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: NetworkImage(person2Image),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
