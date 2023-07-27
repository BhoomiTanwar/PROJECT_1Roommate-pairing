part of 'newswipe_bloc.dart';

abstract class NewswipeEvent extends Equatable {
  const NewswipeEvent();

  @override
  List<Object> get props => [];
}

class LoadUsersEvent extends NewswipeEvent {
  final List<User> users;
  LoadUsersEvent({required this.users});

  @override
  List<Object> get props => [users];
}

class SwipeLeftEvent extends NewswipeEvent {
  final User user;

  SwipeLeftEvent({required this.user});

  @override
  List<Object> get props => [user];
}

class SwipeRightEvent extends NewswipeEvent {
  final User user;

  SwipeRightEvent({required this.user});

  @override
  List<Object> get props => [user];
}
