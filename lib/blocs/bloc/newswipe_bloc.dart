import 'package:bloc/bloc.dart';
import 'package:cbigdtuw04/blocs/swipe_bloc.dart';
import 'package:equatable/equatable.dart';

import '../../models/user_model.dart';

part 'newswipe_event.dart';
part 'newswipe_state.dart';

class NewswipeBloc extends Bloc<NewswipeEvent, NewswipeState> {
  NewswipeBloc() : super(NewswipeInitial()) {
    on<NewswipeEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<LoadUsersEvent>((event, emit) {
      emit(SwipeLoaded(users: event.users));
    });
    on<SwipeLeftEvent>((event, emit) {
      emit(SwipeLoaded(users: List.from(users)..remove(event.user)));
    });
    on<SwipeRightEvent>((event, emit) {
      emit(SwipeLoaded(users: List.from(users)..remove(event.user)));
    });
  }
}
