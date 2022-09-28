part of 'user_bloc.dart';

@immutable
abstract class UserEvent {}

class ActivateUser extends UserEvent {
  final Usuario user;

  ActivateUser(this.user);
}

class ChangeUserAge extends UserEvent {
  final int age;
  ChangeUserAge(this.age);
}

class AddProfession extends UserEvent {
  AddProfession();
}

class DeleteUser extends UserEvent {}
