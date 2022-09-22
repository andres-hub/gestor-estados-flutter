// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sort_child_properties_last

import 'package:estados/models/usuario.dart';
import 'package:estados/services/usuario_service.dart';
import 'package:flutter/material.dart';

class Pagina2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: StreamBuilder(
        stream: usuarioServiece.usuarioStream,
        builder: (BuildContext context, AsyncSnapshot<Usuario> snapshot) {
          return snapshot.hasData
              ? Text('Nombre: ${snapshot.data!.nombre}')
              : Text('Pagina 2');
        },
      )),
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
                final nuevoUsuario = Usuario(edad: 34, nombre: 'Andres');
                usuarioServiece.cargarusuario(nuevoUsuario);
              },
            ),
            MaterialButton(
              child: Text(
                'Cambiar Edad',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
              onPressed: () {
                usuarioServiece.cambiarEdad(30);
              },
            ),
            MaterialButton(
              child: Text(
                'Añadir Profesion',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
