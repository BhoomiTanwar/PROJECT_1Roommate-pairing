import 'package:equatable/equatable.dart';
import 'user_match_model.dart';

class User extends Equatable {
  final int id;
  final String name;
  final int age;
  final List<String> imageUrls;
  final List<String> Interests;
  final String bio;
  final String jobTitle;

  const User({
    required this.id,
    required this.name,
    required this.age,
    required this.imageUrls,
    required this.Interests,
    required this.bio,
    required this.jobTitle,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        age,
        imageUrls,
        bio,
        jobTitle,
      ];
}

List<User> users = [
  User(
      id: 1,
      name: 'Mary',
      age: 19,
      imageUrls: [
        'https://i.pinimg.com/564x/e0/e0/f1/e0e0f16ed3436fb45ea0c5f995085ae2.jpg'
      ],
      Interests: ['Cycling', 'Playing Guitar', 'Dancing'],
      jobTitle: 'CSE',
      bio:
          'Hey I am Cse undergraduate student currently in second year . I am from banglore and loves reading books and my tech stack is flutter, SQL and web development  and loves to solve problems and quizze.I am also selfieholic'),
  User(
      id: 2,
      name: 'Maripy',
      age: 19,
      imageUrls: [
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfN7DbYIluvC4kC6nIj6gsf0zsa6CqFvJOJg&usqp=CAU'
      ],
      Interests: ['Cycling', 'Playing Guitar', 'Dancing'],
      jobTitle: 'ECE',
      bio: 'sbxgsctvxhhsvxsv'),
  User(
      id: 3,
      name: 'rosy',
      age: 21,
      imageUrls: [
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAyrIVHRubm1st8_lP8JytXnBlQKEb6s3L2w&usqp=CAU'
      ],
      Interests: ['Cycling', 'Playing Guitar', 'Dancing'],
      jobTitle: 'UnderGraduate Student',
      bio: 'phbhbjhjnmlgfxzxg-ppppppp'),
  User(
      id: 4,
      name: 'lary',
      age: 20,
      imageUrls: [
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2hw1QJj_1qgCd4AgHR579fhgZJ8WQxdqx8g&usqp=CAU'
      ],
      Interests: ['Cycling', 'Playing Guitar', 'Dancing'],
      jobTitle: 'Mech',
      bio: 'phbhbjhjnmlgfxzxg-ppppppp'),
];
