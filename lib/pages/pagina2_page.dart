// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sort_child_properties_last, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:estados/bloc/usuario/usuario_cubit.dart';
import 'package:estados/models/usuario.dart';

class Pagina2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final usuarioCubit = context.read<UsuarioCubit>();
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
                final newUser = Usuario(
                  edad: 34,
                  nombre: 'Andres',
                  profesiones: [
                    'FullStack Developer',
                    'Chef',
                  ],
                );
                usuarioCubit.seleccionarUsuario(newUser);
              },
            ),
            MaterialButton(
              child: Text(
                'Cambiar Edad',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
              onPressed: () {
                usuarioCubit.cambiarEdad(30);
              },
            ),
            MaterialButton(
              child: Text(
                'Añadir Profesion',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
              onPressed: () {
                usuarioCubit.agregarProfesion();
              },
            )
          ],
        ),
      ),
    );
  }
}
