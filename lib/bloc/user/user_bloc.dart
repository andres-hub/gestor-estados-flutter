// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:estados/models/usuario.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(const UserInitialState()) {
    on<ActivateUser>((event, emit) => emit(UserSetState(event.user)));
    on<DeleteUser>((event, emit) => emit(const UserInitialState()));
    on<ChangeUserAge>((event, emit) {
      if (!state.existUser) return;
      emit(UserSetState(state.user!.copyWith(edad: event.age)));
    });
    on<AddProfession>((event, emit) {
      if (!state.existUser) return;
      final profession = [
        ...state.user!.profesiones,
        'Profession ${state.user!.profesiones.length + 1}'
      ];
      emit(UserSetState(state.user!.copyWith(profesiones: profession)));
    });
  }
}
