// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:estados/models/usuario.dart';
import 'package:estados/controllers/usuario_controller.dart';

class Pagina2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var usuarioCtrl = Get.find<UsuarioController>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              child: Text(
                'Establecer usuario',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
              onPressed: () {
                usuarioCtrl.cargarUsuario(Usuario(
                    edad: Get.arguments['edad'],
                    nombre: Get.arguments['nombre']));
                Get.snackbar(
                  'usuario establecido',
                  'Andres es el nombre del usuario',
                  boxShadows: [
                    BoxShadow(
                      color: Colors.black38,
                      blurRadius: 10,
                    )
                  ],
                );
              },
            ),
            MaterialButton(
              child: Text(
                'Cambiar Edad',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
              onPressed: () {
                usuarioCtrl.cambiarEdad(25);
              },
            ),
            MaterialButton(
              child: Text(
                'Añadir Profesion',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
              onPressed: () {
                usuarioCtrl.agregarProfesion(
                    'profesion # ${usuarioCtrl.profesionesCount + 1}');
              },
            ),
            MaterialButton(
              child: Text(
                'Cambiar tema',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
              onPressed: () {
                Get.changeTheme(
                  Get.isDarkMode ? ThemeData.light() : ThemeData.dark(),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
