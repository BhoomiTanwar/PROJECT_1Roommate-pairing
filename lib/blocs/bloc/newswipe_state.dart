part of 'newswipe_bloc.dart';

abstract class NewswipeState extends Equatable {
  const NewswipeState();

  @override
  List<Object> get props => [];
}

class NewswipeInitial extends NewswipeState {}

class SwipeLoading extends NewswipeState {}

class SwipeLoaded extends NewswipeState {
  final List<User> users;
  const SwipeLoaded({
    required this.users,
  });

  @override
  List<Object> get props => [users];
}

class SwipeError extends NewswipeState {}
