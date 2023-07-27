// import 'package:cbigdtuw04/models/models.dart';
// import 'package:cbigdtuw04/screens/match_screen.dart';
// import 'package:cbigdtuw04/models/user_model.dart';
// import 'package:equatable/equatable.dart';
import 'package:cbigdtuw04/screens/match_screen.dart';
import 'package:flutter/material.dart';
// import 'models.dart';

// class UserMatch extends Equatable {
//   final int id;
//   final int userId;
//   final User matchedUser;
//   final List<Chat>? chat;

//   const UserMatch({
//     required this.id,
//     required this.userId,
//     required this.matchedUser,
//     required this.chat,
//   });

//   @override
//   List<Object?> get props => [id, userId, matchedUser];

//   static List<UserMatch> matches = [
//     UserMatch(
//       id: 1,
//       userId: 1,
//       matchedUser: User.users[1],
//       chat: Chat.chats
//           .where((chat) => chat.userId == 1 && chat.matchedUserId == 2)
//           .toList(),
//     ),
//     UserMatch(
//       id: 2,
//       userId: 1,
//       matchedUser: User.users[2],
//       chat: Chat.chats
//           .where((chat) => chat.userId == 1 && chat.matchedUserId == 3)
//           .toList(),
//     ),
//     UserMatch(
//       id: 3,
//       userId: 1,
//       matchedUser: User.users[3],
//       chat: Chat.chats
//           .where((chat) => chat.userId == 1 && chat.matchedUserId == 4)
//           .toList(),
//     ),
//     UserMatch(
//       id: 4,
//       userId: 1,
//       matchedUser: User.users[4],
//       chat: Chat.chats
//           .where((chat) => chat.userId == 1 && chat.matchedUserId == 5)
//           .toList(),
//     ),
//     UserMatch(
//       id: 5,
//       userId: 1,
//       matchedUser: User.users[5],
//       chat: Chat.chats
//           .where((chat) => chat.userId == 1 && chat.matchedUserId == 6)
//           .toList(),
//     ),
//     UserMatch(
//       id: 6,
//       userId: 1,
//       matchedUser: User.users[6],
//       chat: Chat.chats
//           .where((chat) => chat.userId == 1 && chat.matchedUserId == 7)
//           .toList(),
//     ),
//     UserMatch(
//       id: 7,
//       userId: 1,
//       matchedUser: User.users[7],
//       chat: Chat.chats
//           .where((chat) => chat.userId == 1 && chat.matchedUserId == 8)
//           .toList(),
//     ),
//     UserMatch(
//       id: 8,
//       userId: 1,
//       matchedUser: User.users[8],
//       chat: Chat.chats
//           .where((chat) => chat.userId == 1 && chat.matchedUserId == 9)
//           .toList(),
//     ),
//   ];
// }
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My App',
        home: MatchedScreen(
            person1Image:
                'http://i.pinimg.com/564x/e0/e0/f1/e0e0f16ed3436fb45ea0c5f995085ae2.jpg', //run
            person2Image:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfN7DbYIluvC4kC6nIj6gsf0zsa6CqFvJOJg&usqp=CAU'));
  }
}
