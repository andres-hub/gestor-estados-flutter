// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sort_child_properties_last

import 'package:estados/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:estados/services/usuarios_service.dart';

class Pagina2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final usuarioService = Provider.of<UsuarioService>(context);
    return Scaffold(
      appBar: AppBar(
        title: usuarioService.existeUsuario
            ? Text('Nombre: ${usuarioService.usuario!.nombre}')
            : Text('Pagina1'),
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
                final newUser = Usuario(
                    edad: 34,
                    nombre: 'Andres',
                    profesiones: [
                      'Fullstack Developer',
                      'Video Jugador Experto'
                    ]);
                usuarioService.usuario = newUser;
              },
            ),
            MaterialButton(
              child: Text(
                'Cambiar Edad',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
              onPressed: () {
                usuarioService.cambiarEdad(30);
              },
            ),
            MaterialButton(
              child: Text(
                'Añadir Profesion',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
              onPressed: () {
                usuarioService.agregarProfesion();
              },
            ),
            // IconButton(
            //   icon: Icon(Icons.qr_code_2_outlined),
            //   // color: Colors.blue,
            //   iconSize: 100.0,
            //   onPressed: () {},
            // )
          ],
        ),
      ),
    );
  }
}
