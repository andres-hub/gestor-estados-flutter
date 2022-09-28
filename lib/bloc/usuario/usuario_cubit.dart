// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import 'package:estados/models/usuario.dart';

part 'usuario_state.dart';

class UsuarioCubit extends Cubit<UsuarioState> {
  UsuarioCubit() : super(UsuarioInitial());

  void seleccionarUsuario(Usuario user) {
    emit(UsuarioActivo(user));
  }

  void cambiarEdad(int edad) {
    final currenState = state;
    if (currenState is UsuarioActivo) {
      final newUser = currenState.usuario.copyWith(edad: edad);
      emit(UsuarioActivo(newUser));
    }
  }

  void agregarProfesion() {
    final currenState = state;
    if (currenState is UsuarioActivo) {
      // List<String> newProfesiones = currenState.usuario.profesiones;
      // newProfesiones.add('Profesión ${newProfesiones.length + 1}');
      List<String> newProfesiones = [
        ...currenState.usuario.profesiones,
        'Profesión ${currenState.usuario.profesiones.length + 1}'
      ];

      final newUser = currenState.usuario.copyWith(profesiones: newProfesiones);
      emit(UsuarioActivo(newUser));
    }
  }

  void borrarusuario() {
    emit(UsuarioInitial());
  }
}
