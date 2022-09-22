import 'package:estados/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UsuarioService with ChangeNotifier {
  Usuario? _usuario;

  Usuario? get usuario => _usuario;
  bool get existeUsuario => (_usuario != null) ? true : false;

  set usuario(Usuario? user) {
    _usuario = user;
    notifyListeners();
  }

  void cambiarEdad(int edad) {
    _usuario?.edad = edad;
    notifyListeners();
  }

  void removerUsuario() {
    _usuario = null;
    notifyListeners();
  }

  void agregarProfesion() {
    _usuario!.profesiones!
        .add('Profesion: ${usuario!.profesiones!.length + 1}');
    notifyListeners();
  }
}
