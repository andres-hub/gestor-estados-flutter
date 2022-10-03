import 'package:get/get.dart';

import 'package:estados/models/usuario.dart';

class UsuarioController extends GetxController {
  var existeusuario = false.obs;
  var usuario = Usuario().obs;

  int get profesionesCount {
    return usuario.value.profesiones.length;
  }

  void cargarUsuario(Usuario user) {
    existeusuario.value = true;
    usuario.value = user;
  }

  void cambiarEdad(int edad) {
    usuario.update((val) {
      val!.edad = edad;
    });
  }

  void agregarProfesion(String profesion) {
    usuario.update((val) {
      val!.profesiones = [...?val.profesiones, profesion];
    });
  }
}
